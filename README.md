# TradeStudy.jl

[![jcm-sci](https://img.shields.io/badge/jcm--sci-jcmacdonald.dev-blue)](https://jcmacdonald.dev/software/)

Multi-objective trade-study orchestration: scoring, Pareto optimization,
and Bayesian stacking for scientific model evaluation.

## Overview

`TradeStudy.jl` provides a structured framework for evaluating scientific
simulation models against data via observable-based scoring, multi-objective
Pareto optimization, and Bayesian model stacking.

This is the Julia implementation of the
[trade-study](https://github.com/jcm-sci/trade-study) framework (Python).

## Status

**Pre-alpha.** API is being designed.

## Related Packages

| Package | Description |
|---------|-------------|
| [trade-study](https://github.com/jcm-sci/trade-study) | Python implementation of this same framework |
| [OpEngine.jl](https://github.com/jcm-sci/OpEngine.jl) | Operator-partitioned solver (planned consumer) |
| [OpSystem.jl](https://github.com/jcm-sci/OpSystem.jl) | System specification compiler (planned consumer) |

## Installation

```julia
using Pkg
Pkg.add("TradeStudy")
```

## Development

```bash
julia --project=. -e 'using Pkg; Pkg.instantiate()'
just test
```

## License

MIT
