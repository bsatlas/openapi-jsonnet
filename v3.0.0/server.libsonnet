{
  // Initialize new Server object.
  New():: {

    addURL(url):: self {
      url+: url,
    },

    addDescription(description):: self {
      description+: description,
    },

    addVariable(variable):: self {
      variable+: variable,
    },
  },

}
