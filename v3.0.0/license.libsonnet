{
  New(
    name=error "License object missing required field 'name'.",
    url=null
  ):: {
    name: name,
    [if url != null then 'url']: url,
  },
}
