![Project Status][Status Badge]&nbsp;&nbsp;
[![CC0 Badge][CC0 Badge]][LICENSE]&nbsp;&nbsp;
[![Build Status][travis badge]][travis link]


# Lemon Parser Generator for PureBasic

- https://github.com/tajmone/Lemon-PB

An attempt to tweak [Lemon] so that it might generate parsers in [PureBasic].

Project created by [Tristano Ajmone] in 2021/07/14.

-----

**Table of Contents**


<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3,4" -->

- [About](#about)
- [License](#license)
- [Links](#links)

<!-- /MarkdownTOC -->

-----

# About

[Lemon] is a well known [LALR(1)] [parser generator], written in C89 by [Richard Hipp] during the late 1980s, and released into the public domain.

Third parties have already successfully tweaked the Lemon parser to generate parsers in other languages; so I decided to take my chance and attempt to mod Lemon to make it generate parsers in PureBasic.

This project is mostly an excuse to force myself into studying the Lemon source code in detail, improve my C skills, and learn more about the inner workings of parser generators.

> **DISCLAIMER** — There's no ETA, and surely no urgency on my side to complete this project — there's a long road ahead, and lot's of work, and the project might never reach completion, and I'm not even 100% sure it's doable at all.
> But none of this really matters, for I'll be working on it on-and-off, during my spare time, for the fun of it and nothing more.


# License

- [`LICENSE`][LICENSE]

The original [Lemon] parser was created by [Richard Hipp] in the late 1980s, its code and documentation are in the public domain.

As for the Lemon PureBasic code and documents, modified or created by Tristano Ajmone, they are also released into the public domain via the CC0 license:

> To the extent possible under law, [Tristano Ajmone] has waived all copyright and related or neighbouring rights to the __[Lemon PureBasic]__ project.
> This work is published from: Italy.
>
> __[Lemon PureBasic]__ is released into the public domain via the [CC0 1.0 Universal] dedication, so that it might be freely used for any project, without causing licenses conflicts and without imposing any restrictions or obligations (not even crediting or linking back).

This is a human-readable summary of the Legal Code contained in the [`LICENSE`][LICENSE] file:

> ## No Copyright
>
> The person who associated a work with this deed has dedicated the work to the public domain by waiving all of his or her rights to the work worldwide under copyright law, including all related and neighbouring rights, to the extent allowed by law.
>
> You can copy, modify, distribute and perform the work, even for commercial purposes, all without asking permission.
> See __Other Information__ below.
>
> ### Other Information
>
> * In no way are the patent or trademark rights of any person affected by CC0, nor are the rights that other persons may have in the work or in how the work is used, such as [publicity or privacy rights].
> * Unless expressly stated otherwise, the person who associated a work with this deed makes no warranties about the work, and disclaims liability for all uses of the work, to the fullest extent permitted by applicable law.
> * When using or citing the work, you should not imply [endorsement] by the author or the affirmer.

-------------------------------------------------------------------------------

# Links

<!-- MarkdownTOC:excluded -->
## Lemon

- [Lemon on Wikipedia]
- [Lemon homepage]
- [Lemon documentation]
- Upstream Lemon sources on [SQLite] repository ([Fossil]):
    + [`lemon.c`](https://www.sqlite.org/src/file/tool/lemon.c)
    + [`lempar.c`](https://www.sqlite.org/src/file/tool/lempar.c)
    + [`lemon.html`](https://sqlite.org/src/doc/trunk/doc/lemon.html)
- [tajmone/lemon-grove] — The Lemon parser, sibling projects, forks and assets — all in one place.

<!-- MarkdownTOC:excluded -->
## PureBasic

- [PureBasic website]
- [PureBasic Forum English]
- [PureBasic Forum French]
- [PureBasic Forum German]
- [PureBasic Documentation]
- [Fantaisie Software on GitHub]

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[Lemon PureBasic]: https://github.com/tajmone/Lemon-PB "Visit the Lemon PureBasic repository on GitHub"

[de-amalgamated]: https://www.sqlite.org/amalgamation.html "Learn about amalgamation in the SQLite project"

<!-- external references -->

[LALR(1)]: https://en.wikipedia.org/wiki/LALR_parser "See Wikipedia page on LALR parser"
[parser generator]: https://en.wikipedia.org/wiki/Compiler-compiler "See Wikipedia page on Compiler-compiler"

<!-- Lemon -->

[Lemon]: http://www.hwaci.com/sw/lemon/ "Visit the official Lemon homepage"
[Lemon homepage]: http://www.hwaci.com/sw/lemon/ "Visit the official Lemon homepage"
[Lemon documentation]: https://sqlite.org/src/doc/trunk/doc/lemon.html "Read the official Lemon documentation"
[Lemon on Wikipedia]: https://en.wikipedia.org/wiki/Lemon_Parser_Generator "Read the Wikepida page for Lemon Parser Generator"

[tajmone/lemon-grove]: https://github.com/tajmone/lemon-grove "Visit the Lemon Grove repository on GitHub"

<!-- PureBasic -->

[PureBasic]: https://www.purebasic.com "Visit the PureBasic website"
[PureBasic website]: https://www.purebasic.com "Visit the PureBasic website"
[PureBasic Forum English]: https://www.purebasic.fr/english/ "Visit the PureBasic English Forum"
[PureBasic Forum French]: https://www.purebasic.fr/french/ "Visit the PureBasic French Forum"
[PureBasic Forum German]: https://www.purebasic.fr/german/ "Visit the PureBasic German Forum"
[PureBasic Documentation]: https://www.purebasic.com/documentation/index.html "Go to the online PureBasic Documentation"
[Fantaisie Software on GitHub]: https://github.com/fantaisie-software "Fantaisie Software GitHub profile"

<!-- 3rd party tools -->

[Fossil]: https://www.fossil-scm.org/ "Visit Fossil website"
[re2c]: http://re2c.org/ "Visit re2c website"
[SQLite]: https://www.sqlite.org/index.html "Visit SQLite website"

<!-- CC0 -->

[CC0 1.0 Universal]: https://creativecommons.org/publicdomain/zero/1.0/ "Visit the CC0 1.0 Universal homepage at CreativeCommons.org"
[Creative Commons Zero v1.0 Universal]: https://creativecommons.org/publicdomain/zero/1.0/ "Visit the CC0 1.0 Universal homepage at CreativeCommons.org"

[publicity or privacy rights]: https://creativecommons.org/faq/#what-are-publicity-personality-and-privacy-rights
[endorsement]: https://creativecommons.org/faq/#do-i-need-to-be-aware-of-anything-else-when-providing-attribution

<!-- badges -->

[Status Badge]: https://img.shields.io/badge/status-TBD-red "Project Status: To Be Done!"
[CC0 Badge]: https://img.shields.io/badge/license-CC0%201.0-blue "Creative Commons Zero v1.0 Universal (public domain)"
[travis badge]: https://travis-ci.com/tajmone/Lemon-PB.svg?branch=main "EditorConfig code styles validation status"
[travis link]: https://travis-ci.com/tajmone/Lemon-PB

<!-- project files -->

[LICENSE]: ./LICENSE "Full text of the CC0 1.0 Universal"

<!-- people and orgs -->

[Richard Hipp]: http://www.hwaci.com/drh/ "Visit D. Richard Hipp's website"
[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"

<!-- EOF -->
