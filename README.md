# pac canvas pack/unpack example

This repo can be used to demonstrate issues with the Microsoft PAC CLI.

For example a NullReferenceException thrown by
`pac canvas pack` when processing a valid `.fx.yaml` gallery definition.

This repo shows how to enforce PAC structural invariants, not
stylistic purity.  Files produced by pac canvas unpack are always
considered valid.  Warnings highlight fragility risks but do not block
commits.

## Environment

- OS: Windows 11
- PAC CLI version: 1.32.8+gf89d946
- Command used:

```bash
pac canvas pack --msapp new.msapp --sources src
```
## Lessons learned

These lessons are encoded in .githooks/precommit.  See that hook for details.

CRLF in .fx.yaml is a hygiene recommendation to reduce PAC parser fragility, not a correctness requirement. Violations produce warnings, not failures.
