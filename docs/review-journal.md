# Review Journal

I treated `copper-sys-thread-lens` as a project where the smallest useful behavior should still be inspectable.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its systems programming focus without claiming live deployment or external usage.

## Cases

- `baseline`: `allocation pressure`, score 170, lane `ship`
- `stress`: `dirty state`, score 124, lane `watch`
- `edge`: `guard slack`, score 207, lane `ship`
- `recovery`: `layout drift`, score 204, lane `ship`
- `stale`: `allocation pressure`, score 139, lane `watch`

## Note

The repository should be understandable without pretending it is larger than it is.
