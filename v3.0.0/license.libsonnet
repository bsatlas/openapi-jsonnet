{
  // Initialize new License object.
  // @param name The license name used for the API.
  // @param url A URL to the license used for the API.
  New(
    name=error "License object missing required field 'name'.",
    url=null
  ):: {
    name: name,
    [if url != null then 'url']: url,
  },
}
