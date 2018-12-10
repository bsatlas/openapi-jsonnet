local openapi = import 'openapi.libsonnet';
local spec = openapi.spec;
local paths = openapi.paths;

local testSpec = spec.New();

local foo = paths.New('/foo');

local bar = paths.New('/bar');

local addBar = spec.AddPath(bar, testSpec);
local addFoo = spec.AddPath(foo, addBar);

addFoo
