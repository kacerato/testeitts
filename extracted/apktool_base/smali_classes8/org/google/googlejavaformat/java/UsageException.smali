.class final Lorg/google/googlejavaformat/java/UsageException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field private static final ADDITIONAL_USAGE:[Ljava/lang/String;

.field private static final DOCS_LINK:[Ljava/lang/String;

.field private static final NEWLINE_JOINER:Lw2/y;

.field private static final USAGE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 36

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw2/y;->p(Ljava/lang/String;)Lw2/y;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/UsageException;->NEWLINE_JOINER:Lw2/y;

    const-string v0, "https://github.com/google/google-java-format"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/UsageException;->DOCS_LINK:[Ljava/lang/String;

    const-string v34, "    Read options and filenames from file."

    const-string v35, ""

    const-string v1, ""

    const-string v2, "Usage: google-java-format [options] file(s)"

    const-string v3, ""

    const-string v4, "Options:"

    const-string v5, "  -i, -r, -replace, --replace"

    const-string v6, "    Send formatted output back to files, not stdout."

    const-string v7, "  -"

    const-string v8, "    Format stdin -> stdout"

    const-string v9, "  --assume-filename, -assume-filename"

    const-string v10, "    File name to use for diagnostics when formatting standard input (default is <stdin>)."

    const-string v11, "  --aosp, -aosp, -a"

    const-string v12, "    Use AOSP style instead of Google Style (4-space indentation)."

    const-string v13, "  --fix-imports-only"

    const-string v14, "    Fix import order and remove any unused imports, but do no other formatting."

    const-string v15, "  --skip-sorting-imports"

    const-string v16, "    Do not fix the import order. Unused imports will still be removed."

    const-string v17, "  --skip-removing-unused-imports"

    const-string v18, "    Do not remove unused imports. Imports will still be sorted."

    const-string v19, "  --dry-run, -n"

    const-string v20, "    Prints the paths of the files whose contents would change if the formatter were run normally."

    const-string v21, "  --set-exit-if-changed"

    const-string v22, "    Return exit code 1 if there are any formatting changes."

    const-string v23, "  --length, -length"

    const-string v24, "    Character length to format."

    const-string v25, "  --lines, -lines, --line, -line"

    const-string v26, "    Line range(s) to format, like 5:10 (1-based; default is all)."

    const-string v27, "  --offset, -offset"

    const-string v28, "    Character offset to format (0-based; default is all)."

    const-string v29, "  --help, -help, -h"

    const-string v30, "    Print this usage statement."

    const-string v31, "  --version, -version, -v"

    const-string v32, "    Print the version."

    const-string v33, "  @<filename>"

    filled-new-array/range {v1 .. v35}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/UsageException;->USAGE:[Ljava/lang/String;

    const-string v0, "The --offset and --length flags must be given an equal number of times."

    const-string v1, "If --lines, --offset, or --length are given, only one file (or -) may be given."

    const-string v2, "If -i is given with -, the result is sent to stdout."

    const-string v3, "The --lines, --offset, and --length flags may be given more than once."

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/UsageException;->ADDITIONAL_USAGE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lorg/google/googlejavaformat/java/UsageException;->buildMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/google/googlejavaformat/java/UsageException;->buildMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static appendLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "builder",
            "line"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static appendLines(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "builder",
            "lines"
        }
    .end annotation

    sget-object v0, Lorg/google/googlejavaformat/java/UsageException;->NEWLINE_JOINER:Lw2/y;

    invoke-virtual {v0, p0, p1}, Lw2/y;->i(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static buildMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    sget-object p0, Lorg/google/googlejavaformat/java/UsageException;->USAGE:[Ljava/lang/String;

    invoke-static {v0, p0}, Lorg/google/googlejavaformat/java/UsageException;->appendLines(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    sget-object p0, Lorg/google/googlejavaformat/java/UsageException;->ADDITIONAL_USAGE:[Ljava/lang/String;

    invoke-static {v0, p0}, Lorg/google/googlejavaformat/java/UsageException;->appendLines(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    const-string p0, ""

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/google/googlejavaformat/java/UsageException;->appendLines(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    invoke-static {}, Lorg/google/googlejavaformat/java/Main;->versionString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/google/googlejavaformat/java/UsageException;->appendLine(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    sget-object p0, Lorg/google/googlejavaformat/java/UsageException;->DOCS_LINK:[Ljava/lang/String;

    invoke-static {v0, p0}, Lorg/google/googlejavaformat/java/UsageException;->appendLines(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
