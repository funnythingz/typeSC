module.exports = (grunt)->
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json')

    uglify: {
      build: {
        files: 'public/typos.min.js': ['public/typos.js']
      }
    }

    compass: {
      dist: {
        options: {
          config: 'config.rb'
        }
      }
    }

    typescript: {
      base: {
        src: ['src/**/*.ts']
        dest: 'public/typos.js'
      }
    }

    watch: {
      ts: {
        files: ['src/**/*.ts']
        tasks: ['typescript', 'uglify']
        options: {
          atBegin: true
        }
      }
      css: {
        files: ['sass/**/*.scss']
        tasks: ['compass']
        options: {
          atBegin: true
        }
      }
    }

  })

  grunt.loadNpmTasks('grunt-contrib-uglify')
  grunt.loadNpmTasks('grunt-contrib-compass')
  grunt.loadNpmTasks('grunt-typescript')
  grunt.loadNpmTasks('grunt-contrib-watch')
  grunt.loadTasks('tasks')

  grunt.registerTask('default', ['watch'])
