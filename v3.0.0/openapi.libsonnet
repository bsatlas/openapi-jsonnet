{
  info: import 'info.libsonnet',
  contact: import 'contact.libsonnet',
  license: import 'license.libsonnet',
  server: import 'server.libsonnet',
  serverVariable: import 'server-variable.libsonnet',
  paths: import 'paths.libsonnet',
  pathItem: import 'path-item.libsonnet',
  responses: import 'responses.libsonnet',
  response: import 'response.libsonnet',
  operation: import 'operation.libsonnet',

  // Initalize new OpenAPI spec.
  new():: {
    openapi: '3.0.0',

    addInfo(info):: self {
      info+: info,
    },

    addServer(server):: self {
      servers+: [server],
    },

    addPath(path):: self {
      paths+: path,
    },

    addComponent(component):: self {
      components+: component,
    },

    addSecurityRequirement(requirement):: self {
      security+: [requirement],
    },

    addTag(tag):: self {
      tags+: [tag],
    },

    addExternalDoc(doc):: self {
      externalDocs+: doc,
    },
  },
}
