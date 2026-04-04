set shell := ["bash", "-uc"]

default: test

# Run tests.
test:
	julia --project=. -e 'using Pkg; Pkg.test()'

# Format source files (requires JuliaFormatter).
format:
	julia --project=. -e 'using JuliaFormatter; format("src"); format("test")'

# Instantiate project dependencies.
setup:
	julia --project=. -e 'using Pkg; Pkg.instantiate()'
