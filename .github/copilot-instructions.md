# jcm-sci Julia standards

## Workflow

Run `just ci` before every commit. CI runs two gates:

1. **Format** — `JuliaFormatter.format("src"); JuliaFormatter.format("test")` with diff check
2. **Test** — `Pkg.test()`

Both must pass with zero errors.

Use `just format` to auto-format before running `just ci`.

## Formatting

All repos use [JuliaFormatter.jl](https://github.com/domluna/JuliaFormatter.jl) with the default style (BlueStyle or SciML as configured in `.JuliaFormatter.toml` if present).

- 4-space indentation
- No trailing whitespace
- Consistent spacing around operators

If a `.JuliaFormatter.toml` exists in the repo root, JuliaFormatter reads it automatically. Otherwise defaults apply.

## Type annotations

Julia is dynamically typed but annotations improve clarity and dispatch:

- Annotate function arguments with concrete or abstract types where it aids dispatch or documentation.
- Use parametric types (`AbstractVector{T}`, `AbstractMatrix{T}`) over concrete types for public API arguments.
- Return type annotations are optional but encouraged for public functions.

## Docstrings

Use Julia docstring conventions:

```julia
"""
    function_name(arg1::Type, arg2::Type) -> ReturnType

Summary line.

# Arguments
- `arg1::Type`: description.
- `arg2::Type`: description.

# Returns
- `ReturnType`: description.

# Throws
- `ArgumentError`: when conditions are violated.
"""
```

Every exported function and type needs a docstring.

## Project structure

```
Project.toml      # package metadata and dependencies
src/
  PackageName.jl  # main module
  submodule.jl    # included files
test/
  runtests.jl     # test entry point
justfile          # task runner
```

## Dependencies

- Declare dependencies in `[deps]` section of `Project.toml`.
- Pin compatibility bounds in `[compat]` for all dependencies.
- Test-only dependencies go in `[extras]` and `[targets]`.
- Use `just setup` (`Pkg.instantiate()`) to resolve dependencies.

## Testing

- Tests live in `test/runtests.jl` (and files it includes).
- Use `Test` stdlib: `@test`, `@testset`, `@test_throws`.
- Run with `just test` or `julia --project=. -e 'using Pkg; Pkg.test()'`.
