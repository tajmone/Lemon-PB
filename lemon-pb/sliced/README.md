# De-Amalgamated Lemon Sources

Lemon PB de-amalgamated source files.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3,4" -->

- [Source Files](#source-files)
- [About De-Amalgamation](#about-de-amalgamation)
- [What's Amalgamation?](#whats-amalgamation)
- [External Links](#external-links)

<!-- /MarkdownTOC -->

-----


# Source Files

|            C source            |             header             | description |
|--------------------------------|--------------------------------|-------------|
| [`action.c`][action.c]         | --                             |             |
| [`build.c`][build.c]           | [`build.h`][build.h]           |             |
| [`configlist.c`][configlist.c] | [`configlist.h`][configlist.h] |             |
| [`error.c`][error.c]           | [`error.h`][error.h]           |             |
| [`lemon.c`][lemon.c]           | --                             |             |
| [`main.c`][main.c]             | --                             |             |
| [`msort.c`][msort.c]           | --                             |             |
| [`option.c`][option.c]         | [`option.h`][option.h]         |             |
| [`parse.c`][parse.c]           | [`parse.h`][parse.h]           |             |
| [`plink.c`][plink.c]           | [`plink.h`][plink.h]           |             |
| [`report.c`][report.c]         | [`report.h`][report.h]         |             |
| [`set.c`][set.c]               | [`set.h`][set.h]               |             |
| [`struct.h`][struct.h]         | --                             |             |
| [`table.c`][table.c]           | [`table.h`][table.h]           |             |


# About De-Amalgamation

The files in this folder were created from the same Lemon version found in the [`../../lemon/`][lemon/] folder, but the `lemon.c` file has been split into separate modules via the __[Lemon Slicer]__ tool, to simplify studying and editing its code.

The `lemon.c` file was then manually edited, moving all it's `#include` directives into the [`../lemon-pb.c`][lemon-pb.c] source, and then adding to the latter an `#include` directive for `lemon.c`, in order to have since entry point C source in the parent folder and keep all the sliced Lemon sources in a single subfolder, to avoid cluttering the parent folder.


# What's Amalgamation?

The Lemon source file `lemon.c`, like most tools from the [SQLite] project, was created by merging multiple C sources into a single file via a technique called ["amalgamation"], in order to reduce the number of file dependencies and improve performance (5-10% speed gain).
Except that today only the single source file of Lemon survives in the SQLite project — and code maintenance and updates are done directly in the amalgamated single source file.

To adapt the original C source to the Lemon PB project, I wanted to work on the Lemon source split into modules, to simplify studying and editing its code.
Reversing the amalgamation is not a hard task in itself, for the amalgamator adds some comment lines indicating the name of the original file from which the code was taken:

```c
void Configlist_reset(void);

/********* From the file "error.h" ***************************************/
void ErrorMsg(const char *, int,const char *, ...);

/****** From the file "option.h" ******************************************/
enum option_type { OPT_FLAG=1,  OPT_INT,  OPT_DBL,  OPT_STR,
         OPT_FFLAG, OPT_FINT, OPT_FDBL, OPT_FSTR};
```

For this task, I've created __[Lemon Slicer]__, a small tool to automate the de-amalgamation process, which I use in the [Lemon Grove] project to provide an always up-to-date de-amalgamated version of Lemon.

Besides automating the task of splitting "`lemon.c`" into its original modules, Lemon Slicer also injects at the end of the left-over contents of the "`lemon.c`" file all the required `#include` directives to ensure that the split contents are loaded back in the correct order, so that the Lemon parser remains buildable by compiling "`lemon.c`" — in our case, the [`../lemon-pb.c`][lemon-pb.c] file.

Beware though that the sliced sources produced by the __[Lemon Slicer]__ are not truly de-amalgamated; i.e. it's not possible to entirely reverse the amalgamation process and obtain the original C modules with all their `#include` directives, since the de-amalgamator replaces them with commonly shared directives for the single source.

In other words, in order to be able to compile the split modules individually, and then link them together, one would need to add to each C source the lost `#include` directives — a task which might be hard to achieve, since Lemon has been edited over in amalgamated form for so many decades.

-------------------------------------------------------------------------------

# External Links

- [Lemon Slicer] — GitHub repository.
- [The SQLite Amalgamation] — for more info about amalgamation.


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

["amalgamation"]: https://www.sqlite.org/amalgamation.html "Learn about amalgamation in the SQLite project"
[de-amalgamated]: https://www.sqlite.org/amalgamation.html "Learn about amalgamation in the SQLite project"
[Lemon Grove]: https://github.com/tajmone/lemon-grove "Visit the Lemon Grove repository on GitHub"
[Lemon Slicer]: https://github.com/tajmone/lemon-slicer "Visit the Lemon Slicer repository on GitHub"

<!-- SQLite -->

[SQLite]: http://www.sqlite.org/ "Visit SQLite website"
[SQLite repository]: https://sqlite.org/src/doc/trunk/README.md "Visit the SQLite source repository"
[The SQLite Amalgamation]: https://www.sqlite.org/amalgamation.html "Learn about amalgamation in the SQLite project"

<!-- project files and folders -->

[lemon/]: ../../lemon/ "Navigate to original folder"
[lemon-pb.c]: ../lemon-pb.c "View main Lemon PC source file"


[action.c]: ./action.c "View source file"
[build.c]: ./build.c "View source file"
[build.h]: ./build.h "View source file"
[configlist.c]: ./configlist.c "View source file"
[configlist.h]: ./configlist.h "View source file"
[error.c]: ./error.c "View source file"
[error.h]: ./error.h "View source file"
[lemon.c]: ./lemon.c "View source file"
[main.c]: ./main.c "View source file"
[msort.c]: ./msort.c "View source file"
[option.c]: ./option.c "View source file"
[option.h]: ./option.h "View source file"
[parse.c]: ./parse.c "View source file"
[parse.h]: ./parse.h "View source file"
[plink.c]: ./plink.c "View source file"
[plink.h]: ./plink.h "View source file"
[report.c]: ./report.c "View source file"
[report.h]: ./report.h "View source file"
[set.c]: ./set.c "View source file"
[set.h]: ./set.h "View source file"
[struct.h]: ./struct.h "View source file"
[table.c]: ./table.c "View source file"
[table.h]: ./table.h "View source file"

<!-- EOF -->
