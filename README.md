# copper-sys-thread-lens

`copper-sys-thread-lens` is a compact R repository for systems programming, centered on this goal: Build an R toolkit that studies thread behavior through negative fixtures, with human-readable error snapshots and bounded memory input sets.

## Why This Exists

This is intentionally local and self-contained so it can be inspected without credentials, services, or seeded history.

## Copper Sys Thread Lens Review Notes

For a quick review, compare `guard slack` with `dirty state` before reading the middle cases.

## Capabilities

- `fixtures/domain_review.csv` adds cases for allocation pressure and dirty state.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/copper-sys-thread-walkthrough.md` walks through the case spread.
- The R code includes a review path for `guard slack` and `dirty state`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Implementation Shape

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `allocation pressure`, `dirty state`, `guard slack`, and `layout drift`.

The R implementation avoids hidden state so fixture changes are easy to reason about.

## Local Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Verification

The check exercises the source code and the review fixture. `edge` is the high score at 207; `stress` is the low score at 124.

## Roadmap

This remains a local project with deterministic fixtures. It does not depend on credentials, hosted services, or live data. Future work should add richer malformed inputs before widening the public API.
