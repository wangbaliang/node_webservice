'use strict';

var path = require('path');
var config = require('config');
var gulp = require('gulp');
var rev = require('gulp-rev');
var cleanCSS = require('gulp-clean-css');
var sourceMaps = require('gulp-sourcemaps');


var manifestSetting = config.get('app_settings.package_output_manifest_file');
var assertsOutputPath = path.join(__dirname, manifestSetting.css.path);
var assertsOutputFileName = manifestSetting.css.name;

var revCssTask = function () {
  return gulp.src('./client-src/css/*.css')
    .pipe(sourceMaps.init())
    .pipe(cleanCSS({compatibility: 'ie8'}))
    .pipe(rev())
    .pipe(sourceMaps.write())
    .pipe(gulp.dest('./public/css/'))
    .pipe(rev.manifest(assertsOutputFileName))
    .pipe(gulp.dest(assertsOutputPath));
};

gulp.task('build-css', [], revCssTask);
