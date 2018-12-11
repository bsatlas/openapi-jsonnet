{
  // Initialize new Tag object.
  new(
    name,
    description,
    externalDocs
  ):: {
    name: name,
    [if description != null then 'description']: description,
    [if externalDocs != null then 'externalDocs']: externalDocs,
  },
}
