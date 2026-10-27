# Project context for Claude Code

## What this project is
<!-- One or two sentences. Keep in sync with README.md. -->

## Commands
- `make setup`: install dependencies and git hooks
- `make run`: run the project
- `make test`: run the tests
- `make lint` / `make fmt`: check / auto-format code

## Conventions
- Code lives in `src/`, tests in `tests/`.
- Configuration comes from environment variables; see `.env.example`. Never hard-code secrets.
- Small, focused commits with clear messages. One branch per change; merge through a pull request.
- Add or update tests with each behavior change.
- Record non-obvious design choices in `docs/decisions.md`.

## Boundaries
- Never read, print, or commit the contents of `.env`.
- Ask before adding a new dependency.
- Ask before making changes outside the scope of the current task.

## Current focus
<!-- What is being worked on right now. Update as it changes. -->
