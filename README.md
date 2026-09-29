# TradeStudy.jl

[![jcm-sci](https://img.shields.io/badge/jcm--sci-jcmacdonald.dev-blue)](https://jcmacdonald.dev/projects/)

> [!IMPORTANT]
> **Inactive design scaffold.** This repository does not currently provide a
> usable Julia package or public API. Its source module and tests are
> placeholders, and the package is not registered in Julia's General registry.

## Current implementation

The maintained implementation is the Python
[trade-study](https://github.com/jcm-sci/trade-study) package. It is released
on [PyPI](https://pypi.org/project/trade-study/) and documented at
[jcm-sci.github.io/trade-study](https://jcm-sci.github.io/trade-study/).

## Repository purpose

This repository is retained as a possible starting point for a future Julia
port. There is no active development timeline. Do not depend on it for
research or production work.

## Development

```bash
julia --project=. -e 'using Pkg; Pkg.instantiate()'
just test
```

## License

MIT
