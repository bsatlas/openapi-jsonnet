{
  // Initalize new Contact object.
  // @param name The identifying name of the contact person/organization.
  // @param url The URL pointing to the contact information.
  // @param email The email address of the contact person/organization.
  New(name=null, url=null, email=null):: {
    [if name != null then 'name']: name,
    [if url != null then 'url']: url,
    [if email != null then 'email']: email,
  },
}
