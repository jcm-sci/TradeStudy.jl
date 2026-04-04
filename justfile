set shell := ["bash", "-uc"]

default: test

# Run tests.
test:
	julia --project=. -e 'using Pkg; Pkg.test()'

# Format source files (requires JuliaFormatter).
format:
	julia --project=. -e 'using JuliaFormatter; format("src"); format("test")'

# Check formatting without modifying files.
lint:
	julia --project=. -e 'using JuliaFormatter; exit(format("src", overwrite=false) && format("test", overwrite=false) ? 0 : 1)'

# Instantiate project dependencies.
setup:
	julia --project=. -e 'using Pkg; Pkg.instantiate()'

# Run lint and tests.
ci: lint test
