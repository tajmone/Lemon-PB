# Lemon PureBasic

The working directory for the Lemon PB project.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Directory Contents](#directory-contents)
- [Status](#status)

<!-- /MarkdownTOC -->

-----

# Directory Contents

- [`/sliced/`][sliced/] — de-amalgamated (split) Lemon sources.
- [`lemonpb.c`][lemonpb.c] — Lemon PB main source.
- [`lempar.c`][lempar.c] — original Lemon template, unchanged.
- [`build.sh`][build.sh] — compiles Lemon PB via `gcc -Wall -O2`.

# Status

Currently the sources in this folder contain the original Lemon code, unchanged, except that the original single-source file `lemon.c` was split into multiple sources, more or less like it used to be before being "amalgamated".

This was done to allow working on a specific source file at the time, instead of a huge single-file, which should make studying and editing the original code easier.

The split files (_slices_) are kept in the [`/sliced/`][sliced/] subfolder.

The [`lemonpb.c`][lemonpb.c] file just `#include`s all the de-amalgamated slices, in their original order.

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

<!-- project files and folders -->

[sliced/]: ./sliced/ "Navigate to de-amalgamated Lemon sources folder"

[lemonpb.c]: ./lemonpb.c "View Lemon PB source"
[lempar.c]: ./lempar.c "View 'lempar.c' source"
[build.sh]: ./build.sh "View script source"


<!-- EOF -->
