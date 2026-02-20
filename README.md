# Sample 01 — .NET 6 EOL quality gate

This repo is intentionally **stuck on .NET 6** (EOL) so you can demo:
- PR validation failing on a policy gate
- Upgrading code to .NET 8
- Watching the PR pipeline go from red → green

## What fails (on purpose)

The PR pipeline runs a small script that fails if any `.csproj` targets `net6.0`.

## Local build

- `dotnet restore`
- `dotnet test`

## Fix path (demo)

1. Update `TargetFramework` from `net6.0` → `net8.0`
2. Run tests
3. PR pipeline should pass the EOL gate
