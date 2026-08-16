package org.google.googlejavaformat.java;

import w2.H;
import w2.y;

final class UsageException extends Exception {
    private static final y NEWLINE_JOINER = y.p(System.lineSeparator());
    private static final String[] DOCS_LINK = {"https://github.com/google/google-java-format"};
    private static final String[] USAGE = {"", "Usage: google-java-format [options] file(s)", "", "Options:", "  -i, -r, -replace, --replace", "    Send formatted output back to files, not stdout.", "  -", "    Format stdin -> stdout", "  --assume-filename, -assume-filename", "    File name to use for diagnostics when formatting standard input (default is <stdin>).", "  --aosp, -aosp, -a", "    Use AOSP style instead of Google Style (4-space indentation).", "  --fix-imports-only", "    Fix import order and remove any unused imports, but do no other formatting.", "  --skip-sorting-imports", "    Do not fix the import order. Unused imports will still be removed.", "  --skip-removing-unused-imports", "    Do not remove unused imports. Imports will still be sorted.", "  --dry-run, -n", "    Prints the paths of the files whose contents would change if the formatter were run normally.", "  --set-exit-if-changed", "    Return exit code 1 if there are any formatting changes.", "  --length, -length", "    Character length to format.", "  --lines, -lines, --line, -line", "    Line range(s) to format, like 5:10 (1-based; default is all).", "  --offset, -offset", "    Character offset to format (0-based; default is all).", "  --help, -help, -h", "    Print this usage statement.", "  --version, -version, -v", "    Print the version.", "  @<filename>", "    Read options and filenames from file.", ""};
    private static final String[] ADDITIONAL_USAGE = {"If -i is given with -, the result is sent to stdout.", "The --lines, --offset, and --length flags may be given more than once.", "The --offset and --length flags must be given an equal number of times.", "If --lines, --offset, or --length are given, only one file (or -) may be given."};

    public UsageException() {
        super(buildMessage(null));
    }

    private static void appendLine(StringBuilder builder, String line) {
        builder.append(line);
        builder.append(System.lineSeparator());
    }

    private static void appendLines(StringBuilder builder, String[] lines) {
        NEWLINE_JOINER.i(builder, lines).append(System.lineSeparator());
    }

    private static String buildMessage(String message) {
        StringBuilder sb2 = new StringBuilder();
        if (message != null) {
            sb2.append(message);
            sb2.append('\n');
        }
        appendLines(sb2, USAGE);
        appendLines(sb2, ADDITIONAL_USAGE);
        appendLines(sb2, new String[]{""});
        appendLine(sb2, Main.versionString());
        appendLines(sb2, DOCS_LINK);
        return sb2.toString();
    }

    public UsageException(String message) {
        super(buildMessage((String) H.E(message)));
    }
}
