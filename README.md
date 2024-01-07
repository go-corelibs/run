[![godoc](https://img.shields.io/badge/godoc-reference-blue.svg)](https://pkg.go.dev/github.com/go-corelibs/run)
[![codecov](https://codecov.io/gh/go-corelibs/run/graph/badge.svg?token=YgsohUQsa2)](https://codecov.io/gh/go-corelibs/run)
[![Go Report Card](https://goreportcard.com/badge/github.com/go-corelibs/run)](https://goreportcard.com/report/github.com/go-corelibs/run)

# run - Go-Curses safe exec.Command wrappers

run is a package for running commands and updating Go-Curses based
user interfaces with the STDOUT and STDERR of the running process.

# Installation

``` shell
> go get github.com/go-corelibs/run@latest
```

# Examples

## Callback

``` go
func main() {
    pid, done, err := run.Callback(Options{
    }, func(line string) {
        // update user interface with normal output
    }, func(line string) {
        // update user interface with error output
    })
    if err != nil {
        panic(err)
    }
    // pid != 0
    <-done // if waiting for command to finish is necessary
}
```

# Go-CoreLibs

[Go-CoreLibs] is a repository of shared code between the [Go-Curses] and
[Go-Enjin] projects.

# License

```
Copyright 2023 The Go-CoreLibs Authors

Licensed under the Apache License, Version 2.0 (the "License");
you may not use file except in compliance with the License.
You may obtain a copy of the license at

 http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```

[Go-CoreLibs]: https://github.com/go-corelibs
[Go-Curses]: https://github.com/go-curses
[Go-Enjin]: https://github.com/go-enjin
