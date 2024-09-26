# Purpose

This project is a kind of sandbox for attempting to bazelify C-like project with rules_cc. Not all platforms are supported for this build description, e.g. windows or mobile. There's probably still a lot to do here, however
at least two elementary binary targets work quite well:
- gui: `nix develop --command bazel run :bin`
- tui: `nix develop --command bazel run :bin --//:tui=true`

For the full README please visit [the original project repo](https://github.com/skyjake/lagrange).
