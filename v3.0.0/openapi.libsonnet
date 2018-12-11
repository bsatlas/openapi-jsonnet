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

    // Add an Info Object to the spec.
    // @param info An Info object.
    addInfo(info):: self {
      info+: info,
    },

    // Add a Server object to the spec.
    // @param server A Server object.
    addServer(server):: self {
      servers+: [server],
    },

    // Add a path to the spec.
    // @param path A Path object.
    addPath(path):: self {
      paths+: path,
    },

    // Add a component to the spec.
    // @param component A Components object.
    addComponent(component):: self {
      components+: component,
    },

    // Add a security requirement to the spec.
    // @param requirement A Security Requirement object.
    addSecurityRequirement(requirement):: self {
      security+: [requirement],
    },

    // Add a global tag to the spec.
    // @param tag An Tag object.
    addTag(tag):: self {
      tags+: [tag],
    },

    // Add an External Documentation object to the spec.
    // @param doc An External Documentation object.
    addExternalDoc(doc):: self {
      externalDocs+: doc,
    },
  },
}
