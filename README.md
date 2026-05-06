# copper-sys-thread-lens

`copper-sys-thread-lens` is a R project for Systems programming. It turns build an R toolkit that studies thread behavior through negative fixtures, with human-readable error snapshots and bounded memory input sets into a small local model with readable fixtures and a direct verification command.

## Reading Copper Sys Thread Lens

Start with the README, then open `metadata/project.json` to check the constants behind the examples. After that, `fixtures/cases.csv` shows the compact path and `examples/extended_cases.csv` gives a wider look at the same rule.

## Purpose

This project keeps the domain idea close to the tests. That makes it useful as a reference implementation, a small experiment, or a starting point for a more specialized tool.

## Files Worth Reading

- `tests`: verification harness
- `fixtures`: compact golden scenarios
- `examples`: expanded scenario set
- `metadata`: project constants and verification metadata
- `docs`: operations and extension notes
- `scripts`: local verification and audit commands

## What It Does

- Includes extended examples for bounds checks, including `surge` and `degraded`.
- Documents low-level invariants tradeoffs in `docs/operations.md`.
- Runs locally with a single verification command and no external credentials.
- Stores project constants and verification metadata in `metadata/project.json`.
- Adds a repository audit script that checks structure before running the language verifier.

## Design Sketch

The project is organized around a compact model rather than a large framework. Inputs are scored, classified, and checked against golden fixtures. The constants live in code and are mirrored in metadata so documentation drift is easy to catch. The R version keeps the model as simple functions over named lists for easy analysis use.

## Setup

The only required setup is the local R toolchain. After cloning, stay in the repo root so fixture paths resolve correctly.

## Fixture Notes

The examples are meant to be readable before they are exhaustive. They cover enough variation to show how latency and risk can pull a decision below the threshold.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

This runs the language-level build or test path against the compact fixture set.

## Verification

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/audit.ps1
```

The audit command checks repository structure and README constraints before it delegates to the verifier.

## Next Directions

- Add malformed input fixtures so the failure path is as visible as the happy path.
- Split the scoring constants into a typed configuration object and validate it before use.
- Add a comparison mode that shows how decisions change when one signal is adjusted.
- Add one more systems programming fixture that focuses on a malformed or borderline input.

## Limits

The repository favors determinism over breadth. It does not pull live data, keep secrets, or depend on network access for verification.
