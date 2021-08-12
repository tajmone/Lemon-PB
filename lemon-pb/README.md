# Lemon PureBasic

The working directory for the Lemon PB project.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Directory Contents](#directory-contents)
- [Status](#status)
    - [Lemon PB](#lemon-pb)
    - [Lempar PB](#lempar-pb)
- [Roadmap](#roadmap)
    - [PoC Work](#poc-work)
    - [Drive Tests](#drive-tests)
- [About LemonPB C Sources](#about-lemonpb-c-sources)

<!-- /MarkdownTOC -->

-----

# Directory Contents

- [`/drivetests/`][drivetests/] — non-working examples to track changes.
- [`/poc/`][poc/] — proof of concept parsers (manually coded).
- [`/sliced/`][sliced/] — de-amalgamated (split) Lemon sources.
- [`lemonpb.c`][lemonpb.c] — Lemon PB main source.
- [`lempar.c`][lempar.c] — original Lemon template, unchanged.
- [`lempar.pb`][lempar.pb] — new Lemon PB template (WIP).
- [`build.sh`][build.sh] — compiles Lemon PB via `gcc -Wall -O2`.

> **IMPORTANT** — Until LemonPB is tweaked to skip the BOM when reading `lempar.pb`, the latter needs to be saved in UTF-8 _without BOM_ (see [Issue #3][#3]).
>
> Beware that editing `lempar.pb` in the PureBasic IDE will add a BOM back at save time, if set to Unicode files.

# Status

This project is not production ready and _does not yet work_!

The ultimate goal is to port the C code in `lempar.pb` until it becomes a fully functional Lemon template in PureBasic, and also tweak the Lemon sources to inject PureBasic code into the template, instead of C.

## Lemon PB

- [`lemonpb.c`][lemonpb.c]

The `lemonpb` sources are being tweaked one step at the time.
This is the current task-list of pending changes:

- [ ] **Lempar Template**:
    + [x] Use the `lempar.pb` template instead of `lempar.c`.
    + [ ] Skip BOM when reading `lempar.pb` so it doesn't leak in generated file ([see #3][#3]).
- [ ] **LemonPB Sources**:
    + [x] Change extension of generated file from `.c` to `.pbi`.
    + [ ] Add a BOM to generated `.pbi` ([see #3][#3]).

## Lempar PB

- [`lempar.pb`][lempar.pb]

This file is a copy of the original [`lempar.c`][lempar.c], which is gradually being converted to PureBasic code.
Right now is a mixture of C and PB, and can't be used except to test how code changed to Lemon sources are affecting generated parser code.

# Roadmap

In order to achieve our goal we need to keep editing both the LemonPB C sources and the `lempar.pb` template, until we finally have a tool capable of generating a PB parser from a Lemon grammar.

But do we decide how to tweak those if we don't have a working example of a PB parser in the first place?
The answer is: _we create one_ by porting to PB the existing C examples, their `main()` code and generated parser, until they work; at that point we have a better idea of how the template should like like and what code LemonPB should inject in it.

This is going to be a long process, with lots of back and forth, trial and error, and fine tuning involved; but one we're able to generate at least a very simple parser from a simple grammar, we're half way there already.

## PoC Work

- [`/poc/`][poc/]

All efforts to manually recreate Proof of Concept parsers are done in the dedicate `poc/` folder.
That's were we take working examples from C and port them to PureBasic, trying to stick to how the parser would be generated from the template.

Once we have a working example, it allows us to decide how to tweak the LemonPB sources and template in order to produce our PoC code.

## Drive Tests

- [`/drivetests/`][drivetests/]

Drive tests are useful for tracking the actual behaviour of LemonPB and its template, and guide us in the tweaking process until we get the results expected from our PoC work.

# About LemonPB C Sources

The Lemon sources in this folder are derived from the original code, except that the original single-source file `lemon.c` was split into multiple sources, more or less like it used to be before being "amalgamated".

This was done to allow working on a specific source file at the time, instead of a huge single-file, which should make studying and editing the original code easier.

The split files (_slices_) are kept in the [`/sliced/`][sliced/] subfolder.

The [`lemonpb.c`][lemonpb.c] file just `#include`s all the de-amalgamated slices, in their original order.

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

<!-- project files and folders -->

[drivetests/]: ./drivetests/ "Navigate to drive tests folder"
[poc/]: ./poc/ "Navigate to the Proof of Concept folder"
[sliced/]: ./sliced/ "Navigate to de-amalgamated Lemon sources folder"

[lemonpb.c]: ./lemonpb.c "View Lemon PB source"
[lempar.c]: ./lempar.c "View 'lempar.c' source"
[lempar.pb]: ./lempar.pb "View 'lempar.pb' source"
[build.sh]: ./build.sh "View script source"

<!-- Issues -->

[#3]: https://github.com/tajmone/Lemon-PB/issues/3 "#3 — Handle BOMs in PB Sources."

<!-- EOF -->
