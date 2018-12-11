{
  // Initialize new Encoding object.
  new(
    contentType,
    style,
    explode,
    allowReserved
  ):: {
    contentType: contentType,
    style: style,
    explode: explode,
    allowReserved: allowReserved,

    addHeader(header):: self {
      headers+: header,
    },
  },
}
