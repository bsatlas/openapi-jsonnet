{
  // Initialize new Server object.
  New(
    url=error 'URL not defined for Server object.',
    description=null,
  ):: {
    addVariable(variable):: self {
      variable+: variable,
    },
  },
}
