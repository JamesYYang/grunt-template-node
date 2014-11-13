###
  compile coffee
###
module.exports = {
  initTask: (grunt, gruntConfig, globalParam)->
    gruntConfig.coffee = {
      options: {
        bare: true # no js wrapper
      }
      compile: {
        files: [{
          expand: true
          cwd: './'
          src: [
            'test/*.coffee'
            '!Gruntfile.coffee'
          ]
          dest: 'dist'
          ext: '.js'
        }]
      }
    }

    grunt.loadNpmTasks('grunt-contrib-coffee')
}