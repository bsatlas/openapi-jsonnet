local info = import 'info.libsonnet';
{
  // Initalize new OpenAPI spec.
  // @param info An Info object.
  // @param servers An array of Server objects.
  // @param paths A Paths object.
  // @param components A Components object.
  // @param security An array of Security Requirement objects.
  // @param tags An array of Tag objects.
  // @param externalDocs An External Documentation object.
  New(
    info,
    servers,
    paths,
    components,
    security,
    tags,
    externalDocs
  ):: {
    openapi: '3.0.0',
    info: info,
    servers: servers,
    paths: paths,
    components: components,
    security: security,
    tags: tags,
    externalDocs: externalDocs,
  },
}
