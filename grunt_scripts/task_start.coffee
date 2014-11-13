###
  start program
###
module.exports = {
  initTask: (grunt, gruntConfig, globalParam) ->
    gruntConfig.shell = {
      start:
        command:"node ./dist/test/index.js"
    }

    grunt.loadNpmTasks('grunt-shell')
}