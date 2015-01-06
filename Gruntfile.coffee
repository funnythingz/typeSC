module.exports = (grunt)->

  require('load-grunt-tasks')(grunt)

  grunt.registerTask('build', ['clean', 'typescript', 'uglify', 'copy', 'compass'])
  grunt.registerTask('default', ['build', 'connect', 'watch'])

  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json')

    uglify:
      dist:
        files: 'build/app.min.js': ['build/app.js']

    copy:
      html:
        files: [{
          expand: true
          cwd: 'src/html/'
          src: ['**/*.html']
          dest: 'build/'
        }]

      assets:
        files: [{
          expand: true
          cwd: 'assets/imgs/'
          src: ['**/*.png', '**/*.jpg']
          dest: 'build/imgs/'
        }]

    typescript:
      base:
        src: ['src/ts/**/*.ts']
        dest: 'build/app.js'
        options:
          sourceMap: false

      test:
        src: ['tests/**/*.ts']
        dest: 'tests/test.js'
        options:
          sourceMap: false

    compass:
      dist:
        options:
          config: 'config.rb'

    watch:
      options:
        livereload: true
        atBegin: false

      typescript:
        files: ['src/ts/**/*.ts', 'tests/**/*.ts']
        tasks: ['clean', 'typescript', 'uglify', 'copy']

      css:
        files: ['src/scss/**/*.scss']
        tasks: ['compass']

      html:
        files: ['src/html/**/*.html']
        tasks: ['copy:html']

    clean: ['build/*', 'tests/**/*.js']

    connect:
      server:
        options:
          hostname: '*'
          port: 8000
          base: 'build'
          livereload: true
          open: true

    tsd:
      refresh:
        command: 'reinstall'
        latest: true
        config: 'tsd.json'

  })
