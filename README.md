# A really minimal xlsx validator

- Intended to be used for CI
- There is an [automated build on dockerhub](https://hub.docker.com/r/vindvaki/xlsx-validator/)
- See the `examples` folder for build examples
- All the heavy lifting is done in the [Open XML SDK](https://github.com/OfficeDev/Open-XML-SDK)
- The main routine is adapted from [this blog post](https://blogs.msdn.microsoft.com/ericwhite/2010/03/04/validate-open-xml-documents-using-the-open-xml-sdk-2-0/)

[![Build Status](https://travis-ci.org/vindvaki/xlsx-validator.svg?branch=master)](https://travis-ci.org/vindvaki/xlsx-validator)
