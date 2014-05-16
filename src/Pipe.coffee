class Pipe

  constructor: (@stdout,@stderr)->
    @stdout.setEncoding "utf8"
    @stderr.setEncoding "utf8"

    @stdout.on "data", (data)=>
      log.info data

    @stderr.on "data", (data)=>
      log.error data

module.exports = Pipe
