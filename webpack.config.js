'use strict';

var path = require('path');
var webpack = require('webpack');
var config = require('config');
var AssetsPlugin = require('assets-webpack-plugin');

var projectRoot = __dirname;
var srcRoot = path.join(projectRoot, 'client-src');
var scriptRoot = path.join(srcRoot, 'js');

var distStaticRoot = path.join(projectRoot, 'public');
var distJsRoot = path.join(distStaticRoot, 'dist');

var manifestSetting = config.get('app_settings.package_output_manifest_file');
var assertsOutputPath = path.join(projectRoot, manifestSetting.webpack.path);
var assertsOutputFileName = manifestSetting.webpack.name;

module.exports = {
  target: 'web',
  context: scriptRoot,
  entry: {
    index: './entry/index',
    user: './entry/user',
    common: './entry/common',
    courseinfo: './entry/courseinfo',
    experience: './entry/experience'
  },
  output: {
    path: distJsRoot,
    publicPath: 'dist/',
    filename: '[name]-[chunkhash].js',            // 输出文件名
    chunkFilename: 'chunk-[id]-[chunkhash].js',   // 输出chunk文件名
  },
  resolve: {
    root: scriptRoot,
    modulesDirectories: ['.'],
    extensions: ['', '.js'],
    alias: {
      'jquery': 'vendor/jquery',
      'unslider': 'vendor/unslider',
      'jquery-cookie': 'vendor/jquery.cookie'
    }
  },
  module: {
    loaders: [
      {
        test: /\.css$/,
        loader: 'style-loader!css-loader',
      },
      { test: /\.(png|jpg)$/, loader: 'file-loader' }
    ]
  },
  plugins: [
    new webpack.optimize.CommonsChunkPlugin({
      // minChunks: 3,
      name: 'common-lib-chunk',
    }),
    new AssetsPlugin({
      filename: assertsOutputFileName,
      path: assertsOutputPath,
      prettyPrint: true,
    }),
    new webpack.optimize.UglifyJsPlugin({
      // sourceMap: false,
      mangle: {
        screw_ie8: false,
      },
      compressor: {
        properties: false,
      },
      output: {
        keep_quoted_props: true,
        screw_ie8: false,
      }
    })
  ],
};
