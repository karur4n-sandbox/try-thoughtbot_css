gulp       = require 'gulp'
uglify     = require 'gulp-uglify'
bowerFiles = require 'main-bower-files'
concat     = require 'gulp-concat'
jade       = require 'gulp-jade'
sass       = require 'gulp-sass'

gulp.task 'html', ->
  gulp.src './app/*.jade'
    .pipe jade()
    .pipe gulp.dest('./public')

gulp.task 'sass', ->
  gulp.src './app/stylesheets/*.scss'
    .pipe sass()
    .pipe gulp.dest('./public')

gulp.task 'vendor', ->
  gulp.src bowerFiles()
    .pipe concat('vendor.js')
    .pipe gulp.dest('./public')

gulp.task 'default', ['html', 'sass', 'vendor']
