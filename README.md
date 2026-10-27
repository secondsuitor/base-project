# Project Name

> Describe what this project does, who it is for, and why it exists.

**Status:** Early development

## Start a project from this template

Push this repository to your Git hosting service once. On any system, clone it
to create a project directory:

```bash
git clone <template-repository-url> <project-directory>
cd <project-directory>
```

A clone initially points to the template repository as `origin`. Before pushing
new project work, create a repository for that project on your Git hosting
service and point `origin` to it:

```bash
git remote set-url origin <new-project-repository-url>
git push -u origin main
```

Cloning preserves the template's Git history. If you use GitHub and want each
project to start with its own history, mark this repository as a template in
**Settings > General > Template repository**, then use **Use this template** to
create each project repository.

## First-use checklist

1. Replace `Project Name` and the description above. Keep this README in sync
	with `CLAUDE.md`.
2. Replace the `TODO` targets in the `Makefile` with commands for your stack and
	update `.github/workflows/ci.yml` with its runtime setup.
3. Edit `.env.example` to list only configuration the project actually uses.
	`make setup` creates `.env` from it; keep real values out of Git.
4. Add application code in `src/` and tests in `tests/`, then add the relevant
	dependencies and checks.
5. Remove starter-only items you do not need, such as `TODO.md` and this
	checklist. Add a license before distributing the project.

## Quick start

```bash
cd <project-directory>
make setup
make test
make run
```

The Makefile commands are placeholders until configured for the project stack.
Do not rely on CI results until `setup`, `lint`, and `test` have real commands.

## Common tasks

| Command      | What it does                                   |
|--------------|------------------------------------------------|
| `make setup` | Install dependencies and set up git hooks      |
| `make run`   | Run the project                                |
| `make test`  | Run the test suite                             |
| `make lint`  | Run linters and format checks                  |
| `make fmt`   | Auto-format the code                           |
| `make clean` | Remove build artifacts and caches              |

## Project layout

```
.
├── src/                 # Application code
├── tests/               # Tests
├── docs/
│   └── decisions.md     # Decision log: what was chosen, and why
├── scripts/             # Helper scripts (optional)
├── .env.example         # Config variable names with dummy values
├── Makefile             # One-command tasks
├── CLAUDE.md            # Context for Claude Code
└── TODO.md              # Lightweight task tracking
```

## Configuration

All configuration comes from environment variables. See `.env.example` for the
full list. The real `.env` is never committed.

## Workflow

- `main` always works. Nothing half-broken lands there.
- One branch per change: `feature/...`, `fix/...`, `chore/...`.
- Open a pull request (even solo). CI must pass before merging.
- Squash-merge, then delete the branch.
- Tag meaningful milestones (`v0.1.0`).
- Record non-obvious choices in `docs/decisions.md`.

## Moving between machines

1. Commit and push (a `wip/...` branch is fine for rough work).
2. On the other machine: `git pull`, then `make setup`.
3. Copy secrets into that machine's `.env` by hand. Never sync them through git.

## License

Not yet specified. Add a `LICENSE` file before sharing or distributing this
project.
