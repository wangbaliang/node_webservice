'use strict';

import fs from 'fs';
import path from 'path';
import config from 'config';
import chokidar from 'chokidar';
import log4js from 'koa-log4';
import views from 'koa-nunjucks-next';

const logger = log4js.getLogger(__filename);

const projectRoot = path.join(path.dirname(__filename), '../..');

const manifestSetting = config.get('app_settings.package_output_manifest_file');

const webpackManifestFile = path.join(projectRoot,
  manifestSetting.webpack.path, manifestSetting.webpack.name);
const cssManifestFile = path.join(projectRoot,
  manifestSetting.css.path, manifestSetting.css.name);

function readConfigFile(filePath) {
  if (!fs.existsSync(filePath)) {
    logger.warn('static config file not exist!');
    return {};
  }
  let content = fs.readFileSync(filePath, { encoding: 'utf-8' });
  if (!content) {
    logger.warn('static config file content is empty!');
    return {};
  }
  return JSON.parse(content);
}

let webpackManifest = readConfigFile(webpackManifestFile);
let cssManifest = readConfigFile(cssManifestFile);

chokidar.watch(webpackManifestFile).on('change', () => {
  setTimeout(() => {
    webpackManifest = readConfigFile(webpackManifestFile);
  }, 100);
});
chokidar.watch(cssManifestFile).on('change', () => {
  setTimeout(() => {
    cssManifest = readConfigFile(cssManifestFile);
  }, 100);
});

const staticFilePublicPath = config.get('app_settings.static_file_public_path');

function fromWebpackManifest(key) {
  let val = webpackManifest[key];
  return val['js'];
}

function fromCssManifest(key) {
  let val = cssManifest[key];
  return 'css/' + val;
}

const view = views('../../views', {
  extname: 'tpl',
  watch: true,
  filters: {
    packaged: async (staticFile) => {
      let ext = path.extname(staticFile);
      if (ext === '.css') {
        return fromCssManifest(staticFile);
      }
      return fromWebpackManifest(staticFile);
    },
    staticFile: async (staticPath) => {
      return staticFilePublicPath + staticPath;
    }
  }
});

export { view };
