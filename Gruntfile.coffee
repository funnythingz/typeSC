module.exports = (grunt)->
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json')

    uglify: {
      build: {
        src: 'src/<%= pkg.name %>.js'
        dest: 'build/<%= pkg.name %>.js'
      }
    }

    watch: {
      sass: {
        files: ['src/sass/*.scss']
        tasks: ['sass']
      }
    }

    sass: {
      dist: {
        options: {
          style: 'compressed'
          check: true
          compass: false
          lineNumbers: true
        }
        files: {
          './hoge.css': 'src/sass/*.scss'
        }
      }

    }

  });

  grunt.loadNpmTasks('grunt-contrib-uglify')
  grunt.loadNpmTasks('grunt-contrib-watch')
  grunt.loadNpmTasks('grunt-contrib-sass');

  grunt.registerTask('default', ['uglify'])
