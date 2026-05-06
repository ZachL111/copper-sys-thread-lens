# Copper Sys Thread Lens Walkthrough

The fixture is intentionally compact, so the review starts with the cases that pull farthest apart.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | allocation pressure | 170 | ship |
| stress | dirty state | 124 | watch |
| edge | guard slack | 207 | ship |
| recovery | layout drift | 204 | ship |
| stale | allocation pressure | 139 | watch |

Start with `edge` and `stress`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The useful comparison is `guard slack` against `dirty state`, not the raw score alone.
