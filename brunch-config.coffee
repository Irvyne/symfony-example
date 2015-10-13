'use strict';

exports.config =
  paths:
    'public':  'web'
    'watched': ['app/Resources']

  conventions:
    'assets':  /^app\/Resources\/assets/
#    'ignored': /^(bower_components\/(bootstrap|jquery|modernizr)||(.*?\/)?[_]\w*)/

  files:
    javascripts:
      joinTo:
        'js/app.js':       /^app/
        'js/modernizr.js': /^bower_components\/modernizr/
        'js/vendor.js':    /^bower_components\/(?!modernizr)/
      order:
        before: [
          'bower_components/jquery/jquery.js'
        ]
    stylesheets:
      joinTo:
        'css/style.css': /^app\/Resources\/scss/

  plugins:
    sass:
      options:
        includePaths: [
          'bower_components/bootstrap/scss'
        ]
    cleancss:
      keepSpecialComments: 0
      removeEmpty: true
    uglify:
      mangle: false
      compress:
        global_defs:
          DEBUG: false
