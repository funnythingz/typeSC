module.exports = (grunt)->
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json')

    uglify: {
      build: {
        src: 'src/<%= pkg.name %>.js'
        dest: 'public/<%= pkg.name %>.min.js'
      }
    }

    compass: {
      dist: {
        options: {
          config: 'src/sass/config.rb'
        }
      }
    }

    cssmin: {
      top: {
        src: ['public/style.css']
        dest: 'public/style.min.css'
      }
    }

    typescript: {
      base: {
        src: ['src/*.ts']
        dest: 'public/hoge.js'
      }
    }

    watch: {
      js: {
        files: ['src/*.ts']
        tasks: ['typescript', 'uglify']
      }
      css: {
        files: ['src/sass/*.scss']
        tasks: ['compass']
      }
    }

  })

  grunt.loadNpmTasks('grunt-contrib-uglify')
  grunt.loadNpmTasks('grunt-contrib-compass')
  grunt.loadNpmTasks('grunt-contrib-mincss')
  grunt.loadNpmTasks('grunt-typescript')
  grunt.loadNpmTasks('grunt-contrib-watch')
  grunt.loadTasks('tasks')

  grunt.registerTask('default', ['watch'])
