# ModelCriticism.jl

Observable-based model evaluation, Pareto optimization, and Bayesian stacking
for scientific model criticism.

## Overview

`ModelCriticism.jl` provides a structured framework for evaluating scientific
simulation models against data via observable-based scoring, multi-objective
Pareto optimization, and Bayesian model stacking.

This is the Julia implementation of the
[model-criticism](https://github.com/jcm-sci/model-criticism) framework (Python).

## Status

**Pre-alpha.** API is being designed.

## Related Packages

| Package | Description |
|---------|-------------|
| [model-criticism](https://github.com/jcm-sci/model-criticism) | Python implementation of this same framework |
| [OpEngine.jl](https://github.com/jcm-sci/OpEngine.jl) | Operator-partitioned solver (planned consumer) |
| [OpSystem.jl](https://github.com/jcm-sci/OpSystem.jl) | System specification compiler (planned consumer) |

## Installation

```julia
using Pkg
Pkg.add("ModelCriticism")
```

## Development

```bash
julia --project=. -e 'using Pkg; Pkg.instantiate()'
just test
```

## License

MIT
