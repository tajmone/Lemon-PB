# Lemon PureBasic

The working directory for the Lemon PB project.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Directory Contents](#directory-contents)
- [Status](#status)
    - [Lemon PB](#lemon-pb)
    - [Lempar PB](#lempar-pb)
- [About](#about)

<!-- /MarkdownTOC -->

-----

# Directory Contents

- [`/drivetests/`][drivetests/] — non-working examples to track changes.
- [`/sliced/`][sliced/] — de-amalgamated (split) Lemon sources.
- [`lemonpb.c`][lemonpb.c] — Lemon PB main source.
- [`lempar.c`][lempar.c] — original Lemon template, unchanged.
- [`lempar.pb`][lempar.pb] — new Lemon PB template (WIP).
- [`build.sh`][build.sh] — compiles Lemon PB via `gcc -Wall -O2`.

# Status

This project is not production ready and _does not yet work_!

The ultimate goal is to port the C code in `lempar.pb` until it becomes a fully functional Lemon template in PureBasic, and also tweak the Lemon sources to inject PureBasic code into the template, instead of C.

## Lemon PB

- [`lemonpb.c`][lemonpb.c]

The `lemonpb` sources are being tweaked one step at the time.
This is the current task-list of pending changes:

- [x] Use the `lempar.pb` template instead of `lempar.c`.
- [ ] Change extension of generated file from `.c` to `.pbi`.
- [ ] Skip BOM when reading `lempar.pb` so it doesn't end in generated file.

## Lempar PB

- [`lempar.pb`][lempar.pb]

This file is a copy of the original [`lempar.c`][lempar.c], which is gradually being converted to PureBasic code.
Right now is a mixture of C and PB, and can't be used except to test how code changed to Lemon sources are affecting generated parser code.


# About

The Lemon sources in this folder are derived from the original code, except that the original single-source file `lemon.c` was split into multiple sources, more or less like it used to be before being "amalgamated".

This was done to allow working on a specific source file at the time, instead of a huge single-file, which should make studying and editing the original code easier.

The split files (_slices_) are kept in the [`/sliced/`][sliced/] subfolder.

The [`lemonpb.c`][lemonpb.c] file just `#include`s all the de-amalgamated slices, in their original order.

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

<!-- project files and folders -->

[drivetests/]: ./drivetests/ "Navigate to drive tests folder"
[sliced/]: ./sliced/ "Navigate to de-amalgamated Lemon sources folder"

[lemonpb.c]: ./lemonpb.c "View Lemon PB source"
[lempar.c]: ./lempar.c "View 'lempar.c' source"
[lempar.pb]: ./lempar.pb "View 'lempar.pb' source"
[build.sh]: ./build.sh "View script source"


<!-- EOF -->
