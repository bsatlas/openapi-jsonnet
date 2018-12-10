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
  // @param info An Info object.
  // @param servers An array of Server objects.
  // @param paths A Paths object.
  // @param components A Components object.
  // @param security An array of Security Requirement objects.
  // @param tags An array of Tag objects.
  // @param externalDocs An External Documentation object.
  New(
    info=error "Field 'info' required.",
    paths=error "Field 'paths' required.",
    servers=null,
    components=null,
    security=null,
    tags=null,
    externalDocs=null
  ):: {
    openapi: '3.0.0',
    info:
      if std.type(info) == 'object'
      then info
      else error "OpenAPI object field 'info' must be an object.",

    paths:
      if std.type(paths) == 'object'
      then paths
      else error "OpenAPI object field 'paths' must be an object.",

    [if servers != null then 'servers']:
      if std.type(servers) == 'array'
      then servers
      else error "OpenAPI object field 'servers' must be an array.",

    [if components != null then 'components']: components,
    [if security != null then 'security']: security,
    [if tags != null then 'tags']: tags,
    [if externalDocs != null then 'externalDocs']: externalDocs,
  },
}
