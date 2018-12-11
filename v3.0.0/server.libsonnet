{
  // Initialize new Server object.
  New(
    url=error 'URL not defined for Server object.',
    description=null,
  ):: {
    url: url,
    [if description != null then 'description']: description,

    addVariable(variable):: self {
      variable+: variable,
    },
  },
}
