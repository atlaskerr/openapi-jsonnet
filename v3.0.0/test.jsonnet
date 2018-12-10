local openapi = import 'openapi.libsonnet';

local contact = openapi.contact.New(
  name='John Doe',
  url='http://localhost',
  email='john.doe@localhost',
);

local license = openapi.license.New(
  name='Apache 2.0',
  url='http://www.apache.org/licenses/LICENSE-2.0.html',
);

local info = openapi.info.New(
  title='Test App',
  version='v1.1.1',
  description='A test app.',
  termsOfService='http://localhost/tos',
  contact=contact,
  license=license,
);

openapi.New(
  info=info,
  paths={}
)
