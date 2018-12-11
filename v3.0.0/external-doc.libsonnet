{
  // Initialize External Documentation object.
  new():: {

    addDescription(description):: self {
      description+: description,
    },

    addURL(url):: self {
      url+: url,
    },
  },
}
