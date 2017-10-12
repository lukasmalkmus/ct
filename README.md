# lukasmalkmus/ct
> Manage configuration files dynamically. - by **[Lukas Malkmus](https://github.com/lukasmalkmus)**

[![Travis Status][travis_badge]][travis]
[![Coverage Status][coverage_badge]][coverage]
[![Go Report][report_badge]][report]
[![GoDoc][docs_badge]][docs]
[![Latest Release][release_badge]][release]
[![License][license_badge]][license]

---

## Table of Contents
1. [Introduction](#introduction)
2. [Usage](#usage)
3. [Contributing](#contributing)
4. [License](#license)

### Introduction
*ct* provisions configuration files based on templates to allow users to share
common configuration files between multiple systems but add device specific
context to each one (usernames, tokens, etc.).

### Usage
#### Single binary installation
The easiest way to install *ct* is by grabbing the latest release from the
[release page](https://github/lukasmalkmus/ct/releases)

#### Using `go install`
```bash
go install github/lukasmalkmus/ct
```

#### Installation from source
This project uses [dep](https://github.com/golang/dep) for vendoring.
```bash
git clone https://github/lukasmalkmus/ct.git
cd ct
dep ensure # Install dependencies
make # Build application (or `go install .` to install into $GOPATH)
```

#### Usage
```bash
./ct [flags]
```

Help on flags:
```bash
./ct --help
```

### Contributing
Feel free to submit PRs or to fill Issues. Every kind of help is appreciated.

### License
© Lukas Malkmus, 2017

Distributed under MIT License (`The MIT License`).

See [LICENSE](LICENSE) for more information.


[travis]: https://travis-ci.org/lukasmalkmus/ct
[travis_badge]: https://travis-ci.org/lukasmalkmus/ct.svg
[coverage]: https://coveralls.io/github/lukasmalkmus/ct?branch=master
[coverage_badge]: https://coveralls.io/repos/github/lukasmalkmus/ct/badge.svg?branch=master
[report]: https://goreportcard.com/report/github.com/lukasmalkmus/ct
[report_badge]: https://goreportcard.com/badge/github.com/lukasmalkmus/ct
[docs]: https://godoc.org/github.com/lukasmalkmus/ct
[docs_badge]: https://godoc.org/github.com/lukasmalkmus/ct?status.svg
[release]: https://github.com/lukasmalkmus/ct/releases
[release_badge]: https://img.shields.io/github/release/lukasmalkmus/ct.svg
[license]: https://opensource.org/licenses/MIT
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg