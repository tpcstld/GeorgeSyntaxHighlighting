George Syntax Highlighting
========================

George Syntax Highlighting for vim

Setup
-----
To install this custom syntax highlighting, copy the `syntax/george.vim` file to your `.vim/syntax/` directory.

You can now activate the syntax highlighting via the vim command `set syntax=george`

For automatic file detection, copy the `ftdetect/george.vim` file to your `.vim/ftdetect/` directory. It will mark all files ending in `.grg` as George files.

"Options"
---------
You can uncomment (or comment) various pieces of the syntax to enable (or disable) various pieces of highlighting.

I've already included some unused highlighting for more set keywords, like 'union' and 'inter', among other things. You can uncomment lines 48 and 49 if you want them.

Your milage may vary. :P
