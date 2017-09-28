[![Build Status](https://travis-ci.org/opspec-pkgs/azure.application.insights.instrumentationkey.get.svg?branch=master)](https://travis-ci.org/opspec-pkgs/azure.application.insights.instrumentationkey.get)

# Problem statement
get the application insights intrumentation key

# Example usage

> note: in examples, VERSION represents a version of the azure.application.insights.instrumentationkey.get pkg

## install

```shell
opctl pkg install github.com/opspec-pkgs/azure.application.insights.instrumentationkey.get#VERSION
```

## run

```
opctl run github.com/opspec-pkgs/azure.application.insights.instrumentationkey.get#VERSION
```

## compose

```yaml
op:
  pkg: { ref: github.com/opspec-pkgs/azure.application.insights.instrumentationkey.get#VERSION }
  inputs:
    subscriptionId:
    loginId:
    loginSecret:
    loginTenantId:
    resourceGroup:
    location:
    name:
    # begin optional args
    loginType:
    # end optional args
  outputs:
    instrumentationKey:
```

# Support

join us on [![Slack](https://opspec-slackin.herokuapp.com/badge.svg)](https://opspec-slackin.herokuapp.com/)
or [open an issue](https://github.com/opspec-pkgs/azure.application.insights.instrumentationkey.get/issues)

# Releases

releases are versioned according to
[![semver 2.0.0](https://img.shields.io/badge/semver-2.0.0-brightgreen.svg)](http://semver.org/spec/v2.0.0.html)
and [tagged](https://git-scm.com/book/en/v2/Git-Basics-Tagging); see
[CHANGELOG.md](CHANGELOG.md) for release notes

# Contributing

see [project/CONTRIBUTING.md](https://github.com/opspec-pkgs/project/blob/master/CONTRIBUTING.md)