{
  // Initialize new Path Item object.
  new():: {

    addSummary(summary):: self { summary+: summary },

    addDescription(description):: self { description+: description },

    addOperation(method, operation):: self {
      [
      if method == 'GET' then 'get'
      else if method == 'PUT' then 'put'
      else if method == 'POST' then 'post'
      else if method == 'DELETE' then 'delete'
      else if method == 'OPTIONS' then 'options'
      else if method == 'HEAD' then 'head'
      else if method == 'PATCH' then 'patch'
      else if method == 'TRACE' then 'trace'
      else error 'Invalid HTTP method for operation.'
      ]: operation,
    },

    addServer(server):: self {
      servers+: [server],
    },

    addParameter(parameter):: self {
      parameters+: parameter,
    },
  },
}
