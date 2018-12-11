{
  // Initialize new Header object.
  new(
    name=error 'Name not defined.',
    schema=error 'Schema not defined.',
    description=null,
    required=true,
    deprecated=false,
    example=null,
    examples=null,
  ):: {
    [name]: {
      [if description != null then 'description']: description,
      required: required,
      deprecated: deprecated,
      schema: schema,
      style: 'simple',
      [if example != null then 'example']: example,
      [if examples != null then 'examples']: examples,
    },
  },
}
