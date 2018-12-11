{
  // Initialize new License object.
  new():: {

    addName(name):: self {
      name+: name,
    },

    addURL(url):: self {
      url+: url,
    },
  },
}
