{
  // Initialize new Server object.
  // @param url A URL to the target host.
  // @param description Describes the host designated by the URL.
  // @param variables A map between a variable name and its value.
  New(
    url=error "Server object missing requried field 'url'.",
    description=null,
    variables=null
  ):: {
    url: url,
    [if description != null then 'description']: description,
    [if variables != null then 'variables']: variables,
  },
}
