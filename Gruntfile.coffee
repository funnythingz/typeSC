module.exports = (grunt)->

  require('load-grunt-tasks')(grunt)

  grunt.registerTask('build', ['clean', 'typescript', 'uglify', 'copy', 'compass'])
  grunt.registerTask('default', ['build', 'connect', 'open', 'watch'])

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
      typescript:
        files: ['src/ts/**/*.ts', 'tests/**/*.ts']
        tasks: ['clean', 'typescript', 'uglify', 'copy']
        options:
          atBegin: true

      css:
        files: ['src/scss/**/*.scss']
        tasks: ['compass']
        options:
          atBegin: true

      html:
        files: ['src/html/**/*.html']
        tasks: ['copy:html']
        options:
          atBegin: true

    clean: ['build/*']

    open:
      dist:
        path: 'http://localhost:8000'

    connect:
      livereload:
        options:
          hostname: '*'
          port: 8000
          base: 'build'

  })
