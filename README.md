# Mathesis formalization

This repository is a projection of public Mathesis routes. Mathesis, its MongoDB records and independent verifier receipts remain the authority. A clone can read and compile the projected sources independently of trureturing publication. Repository pull requests and CI confer no verification or credit.

Snapshot: `2026-11-27T07:34:02.635803943Z`. API: https://mathesis-omega-research.apps.chrono-ai.fun.

| Category | Count | Scope |
|---|---:|---|
| Papers | 212 | Current eligible public CC-BY-4.0 archive works |
| Statements | 1480 | Current in-scope versioned nodes |
| Covered by existing base | 0 | Matching proved receipt with library_declarations; declarations and library pins retained |
| Newly formalized | 0 | Matching proved receipt with new_lean; this describes sources, not novelty |
| Open targets | 0 | Confirmed exact targets without a verified result |
| No target yet | 1480 | Public statements; reason copied from the API |
| Disproved statements | 0 | Kept separate from proved results |
| Curated targets | 7 | Curator's elaborated propositions; not open for submission |
| Proof bundles | 0 | All public verified proof attempts, including also verified |
| Disproof bundles | 0 | All public verified disproof attempts |

A paper-level Lean source link alone establishes no statement-level coverage. Covered targets follow from the recorded declarations together with the submitted Lean; this is not a semantic-equivalence or coverage certificate. Curated targets are the curator's formalizations, not confirmed by the original posers; elaboration shows well-formedness, not faithfulness or a proof.

## Build exact modules

All targets declare the same root name. There is no aggregate import. `index/modules.json` enumerates every build unit, its toolchain and compatibility with this projection's pins. `lean-toolchain`, Lake files and manifests are generated from the same Mathesis source tree's verifier inputs; `environment/verifier-pins.json` retains those inputs and the pinned upstream locks.

With the pinned toolchain installed, run `cd ci/mathlib && lake exe cache get` once to prepare Mathlib, then return to the repository root. `python3 scripts/build.py targets` compiles every compatible `targets/**/Target.lean` and `curated/**/Target.lean` separately against that Mathlib-only workspace. `python3 scripts/build.py <exact-path-from-index>` compiles one target. No target proves its proposition.

For a proof or disproof bundle, first prepare the root Lake workspace (`lake exe cache get`) and compile the required prepared-library imports from source at the recorded revision; the reference verifier's module list is `environment/verifier/library-modules.txt`. This can take about 87 minutes. Then run `python3 scripts/build.py <bundle-directory-from-index> --workspace .`. It compiles supporting modules in dependency order, Target and Solution in a temporary isolated module root, preserving exact bytes. It does not run the independent Mathesis verifier's restricted-source/axiom/constant checks. For historical pins use `--workspace /path/to/matching/prepared/workspace`; mismatches fail explicitly. See each unchanged `bundle.json` for the real verifier replay instructions.

`python3 scripts/check.py` checks generated hashes, target and solution digests, bundle identity and source layout, and index counts without Lean. CI runs this and compiles compatible targets with cached Mathlib. CI does not pull the GHCR base image, build trureturing, compile proof/disproof bundles, guarantee target faithfulness, or award credit. Anonymous pull access to the reference base image was unavailable in the 2026-11-13 probe; see the Mathesis design document for the recorded HTTP evidence. Incompatible historical targets are listed and reported as skipped by the target build command.

## Take part

Use [Mathesis Contribute](https://mathesis-omega-research.apps.chrono-ai.fun/contribute) and [sdk/contribute](https://github.com/the-omega-institute/mathesis/tree/develop/sdk/contribute). For a confirmed target, the attempt path is `POST /api/v1/papers/{record}/statements/{claim}/attempts` (conjectures also have their documented route). Sign in through Mathesis, submit an attempt and wait for the independent verifier receipt; the public leaderboards determine credit. Curated targets do not accept attempts.

[index/nodes.json](index/nodes.json) and `index/papers/<work>.json` keep the base/new/open/no-target split and exact API reasons. [LEADERBOARD.md](LEADERBOARD.md) and [leaderboard.json](leaderboard.json) preserve both public boards, with separate scopes. Finished work is displayed here and may be written back through the [trureturing request queue](https://github.com/the-omega-institute/trureturing-requests); request URL, state and revision remain null until publicly known. This generator never submits a request or invents write-back state.
