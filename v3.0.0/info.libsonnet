{
  // Initialize new info object.
  // @param title The title of the application.
  // @param version The version of the OpenAPI document.
  // @param description A short description of the application.
  // @param termsOfService A URL to the Terms of Service for the API.
  // @param contact A Contact object.
  // @param license A License object.
  New(
    title=error "Field 'title' requried.",
    version='v1.0.0',
    description=null,
    termsOfService=null,
    contact=null,
    license=null,
  ):: {
    title: title,
    version: version,
    [if description != null then 'description']: description,
    [if termsOfService != null then 'termsOfService']: termsOfService,
    [if contact != null then 'contact']: contact,
    [if license != null then 'license']: license,
  },
}
