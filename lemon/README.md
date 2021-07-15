# The Lemon Parser Generator

The Lemon parser generator, created by [D. Richard Hipp], public domain.

- [`lemon.c`][lemon.c] — the parser generator program.
- [`lempar.c`][lempar.c] — the template for the parser generator.
- [`lemon.md`][lemon.md] — Lemon documentation.

These are the original files used for creating the __Lemon-PB__ derivative work.

> **NOTE** — The contents of this folder were taken and readapted from the [Lemon Grove] project.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Meet Lemon](#meet-lemon)
- [Lemon and SQLite](#lemon-and-sqlite)
- [History of Lemon](#history-of-lemon)
- [Files Version and Upstream Sources](#files-version-and-upstream-sources)

<!-- /MarkdownTOC -->

-----

# Meet Lemon

- http://www.hwaci.com/sw/lemon/

The Lemon program is an [LALR(1)]  [parser generator].
It takes a context free grammar and converts it into a subroutine that will parse a file using that grammar.
Lemon is similar to the much more famous programs "[YACC]" and "[BISON]".
But lemon is not compatible with either yacc or bison.
There are several important differences:

* Lemon using a different grammar syntax which is less prone to programming errors.
* The parser generated by Lemon is both re-entrant and thread-safe.
* Lemon includes the concept of a non-terminal destructor, which makes it much easier to write a parser that does not leak memory.

The complete source code to the lemon parser generator is contained in two files.
The file [`lemon.c`][lemon.c] is the parser generator program itself.
A separate file [`lempar.c`][lempar.c] is the template for the parser subroutine that lemon generates.
Documentation on lemon is also available.

Both the source code to lemon itself and the code that lemon generates are in the public domain.

To see an example of how to use lemon, see the source code to the [SQLite] database engine.
Lemon is maintained as part of the SQLite project.


# Lemon and SQLite

- https://www.sqlite.org/lemon.html

One of the advantages of hosting code generator tool as part of the project is that the tools can be optimized to serve specific needs of the overall project.
Lemon has benefited from this effect.
Over the years, the Lemon parser generator has been extended and enhanced to provide new capabilities and improved performance to SQLite. [...]

The parsing of SQL statements is a significant consumer of CPU cycles in any SQL database engine.
On-going efforts to optimize SQLite have caused the developers to spend a lot of time tweaking Lemon to generate faster parsers.
These efforts have benefited all users of the Lemon parser generator, not just SQLite.
But if Lemon had been a separately maintained tool, it would have been more difficulty to make coordinated changes to both SQLite and Lemon, and as a result not as much optimization would have been accomplished.
Hence, the fact that the parser generator tool is included in the source tree for SQLite has turned out to be a net benefit for both the tool itself and for SQLite.


# History of Lemon

Lemon was original written by [D. Richard Hipp]  (also the creator of SQLite) while he was in graduate school at Duke University between 1987 and 1992.
The original creation date of Lemon has been lost, but was probably sometime around 1990.
Lemon generates an LALR(1) parser.
There was companion LL(1) parser generator tool named "Lime", but the source code for Lime has been lost.

The Lemon source code was originally written as separate source files, and only later merged into a single "`lemon.c`" source file.

The author of Lemon and SQLite (Hipp) reports that his C programming skills were greatly enhanced by studying [John Ousterhout]’s original source code to [Tcl].
Hipp discovered and studied Tcl in 1993.
Lemon was written before then, and SQLite afterwards.
There is a clear difference in the coding styles of these two products, with SQLite seeming to be cleaner, more readable, and easier to maintain.


# Files Version and Upstream Sources

This folder contains the original Lemon source files taken from the [SQLite] project on July 14, 2021:

- [`lemon.c`][lemon.c] — Taken from SQLite [`tool/lemon.c`][us lemon.c], check-in [`d1e22e2f`][d1e22e2f]  (2021-01-07)
- [`lempar.c`][lempar.c] — Taken from SQLite [`tool/lempar.c`][us lempar.c], check-in [`203c049c`][203c049c]  (2021-01-02)

And the [official Lemon documentation], ported to markdown by [Tristano Ajmone]:

- [`lemon.md`][lemon.md] — Ported from SQLite [`doc/lemon.html`][us lemon.html], updated to check-in [`36624d37`][36624d37]  (2021-03-28)

> **NOTE** — The C sources are unaltered, except for minor whitespace modifications to pass our [EditorConfig] code-styles validation on Travis CI — i.e., stripping trailing whitespace, and other minor aesthetic tweaks that don't involve actual changes to the code.

For the sake of this project, I won't be updating the C sources to mirror their latest upstream changes, unless very there's a really important updated.
The `lemon.md` document will be updated to mirror its upstream counterpart on the [Lemon Grove] project.

Lemon is a stable software that has been out there for a long time, and usually updates mostly introduce minor tweaks and improvements (nothing that renders previous versions unusable).
Since these are the original reference sources for the code adaptations of __Lemon-PB__, integrating code updates in the modified sources would be a rather tedious manual task of careful diffing and analysing the sources, which in most cases is simply not worth it.

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[de-amalgamated]: https://www.sqlite.org/amalgamation.html "Learn about amalgamation in the SQLite project"
[LALR(1)]: https://en.wikipedia.org/wiki/LALR_parser "See Wikipedia page on LALR parser"
[parser generator]: https://en.wikipedia.org/wiki/Compiler-compiler "See Wikipedia page on Compiler-compiler"

[Lemon Grove]: https://github.com/tajmone/lemon-grove "Visit the Lemon Grove repository on GitHub"

<!-- project files -->

[lemon.c]: ./lemon.c "View source"
[lempar.c]: ./lempar.c "View source"
[lemon.md]: ./lemon.md "View source"

<!-- upstream sources & check-ins (newest on top) -->

[us lemon.c]: https://www.sqlite.org/src/file/tool/lemon.c "View latest upstream source file version"
[d1e22e2f]: https://www.sqlite.org/src/info/d1e22e2f76cce7eb "View upstream check-in"

[us lempar.c]: https://www.sqlite.org/src/file/tool/lempar.c "View latest upstream source file version"
[203c049c]: https://www.sqlite.org/src/info/203c049c66238041 "View upstream check-in"

[us lemon.html]: https://www.sqlite.org/src/file/doc/lemon.html "View latest upstream source file version"
[36624d37]: https://www.sqlite.org/src/info/36624d3740a8d095 "View latest upstream source file version"

[official Lemon documentation]: https://sqlite.org/src/doc/trunk/doc/lemon.html "View original HTML documentation"

<!-- 3rd party tools -->

[SQLite]: http://www.sqlite.org/ "Visit SQLite website"
[Bison]: https://www.gnu.org/software/bison/ "Visit GNU Bison website"
[Yacc]: https://en.wikipedia.org/wiki/Yacc "Wikipedia page on Yacc"
[Tcl]: https://www.tcl.tk/ "Visit Tcl website"
[EditorConfig]: https://editorconfig.org/ "Visit EditorConfig website"

<!-- people -->

[D. Richard Hipp]: http://www.hwaci.com/drh/ "Visit D. Richard Hipp's website"
[John Ousterhout]: https://web.stanford.edu/~ouster/cgi-bin/home.php "Visit John Ousterhout's web page at Stanford University"
[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"

<!-- EOF -->