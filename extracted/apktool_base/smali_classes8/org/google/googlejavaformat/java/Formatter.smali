.class public final Lorg/google/googlejavaformat/java/Formatter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LI2/j;
.end annotation


# static fields
.field static final EMPTY_RANGE:Lcom/google/common/collect/j2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/j2<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final options:Lorg/google/googlejavaformat/java/JavaFormatterOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v0}, Lcom/google/common/collect/j2;->g(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/Formatter;->EMPTY_RANGE:Lcom/google/common/collect/j2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/google/googlejavaformat/java/JavaFormatterOptions;->defaultOptions()Lorg/google/googlejavaformat/java/JavaFormatterOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/google/googlejavaformat/java/Formatter;-><init>(Lorg/google/googlejavaformat/java/JavaFormatterOptions;)V

    return-void
.end method

.method public constructor <init>(Lorg/google/googlejavaformat/java/JavaFormatterOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/google/googlejavaformat/java/Formatter;->options:Lorg/google/googlejavaformat/java/JavaFormatterOptions;

    return-void
.end method

.method public static errorDiagnostic(Lorg/openjdk/javax/tools/Diagnostic;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/tools/Diagnostic<",
            "*>;)Z"
        }
    .end annotation

    invoke-interface {p0}, Lorg/openjdk/javax/tools/Diagnostic;->getKind()Lorg/openjdk/javax/tools/Diagnostic$Kind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/javax/tools/Diagnostic$Kind;->ERROR:Lorg/openjdk/javax/tools/Diagnostic$Kind;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-interface {p0}, Lorg/openjdk/javax/tools/Diagnostic;->getCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "compiler.err.invalid.meth.decl.ret.type.req"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method

.method public static format(Lorg/google/googlejavaformat/java/JavaInput;Lorg/google/googlejavaformat/java/JavaOutput;Lorg/google/googlejavaformat/java/JavaFormatterOptions;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "javaInput",
            "javaOutput",
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/Context;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context;-><init>()V

    new-instance v1, Lorg/openjdk/javax/tools/DiagnosticCollector;

    invoke-direct {v1}, Lorg/openjdk/javax/tools/DiagnosticCollector;-><init>()V

    const-class v2, Lorg/openjdk/javax/tools/DiagnosticListener;

    invoke-virtual {v0, v2, v1}, Lorg/openjdk/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Options;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Options;

    move-result-object v2

    const-string v3, "allowStringFolding"

    const-string v4, "false"

    invoke-virtual {v2, v3, v4}, Lorg/openjdk/tools/javac/util/Options;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Options;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Options;

    move-result-object v2

    sget-object v3, Lorg/openjdk/tools/javac/main/Option;->SOURCE:Lorg/openjdk/tools/javac/main/Option;

    const-string v4, "9"

    invoke-virtual {v2, v3, v4}, Lorg/openjdk/tools/javac/util/Options;->put(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)V

    new-instance v2, Lorg/openjdk/tools/javac/file/JavacFileManager;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v4, v3}, Lorg/openjdk/tools/javac/file/JavacFileManager;-><init>(Lorg/openjdk/tools/javac/util/Context;ZLjava/nio/charset/Charset;)V

    :try_start_0
    sget-object v3, Lorg/openjdk/javax/tools/StandardLocation;->PLATFORM_CLASS_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-static {}, Lcom/google/common/collect/g1;->x()Lcom/google/common/collect/g1;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/openjdk/tools/javac/file/JavacFileManager;->setLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/Iterable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Lorg/google/googlejavaformat/java/Formatter$1;

    const-string v3, "source"

    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    sget-object v5, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->SOURCE:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    invoke-direct {v2, v3, v5, p0}, Lorg/google/googlejavaformat/java/Formatter$1;-><init>(Ljava/net/URI;Lorg/openjdk/javax/tools/JavaFileObject$Kind;Lorg/google/googlejavaformat/java/JavaInput;)V

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-static {v0}, Lorg/openjdk/tools/javac/parser/ParserFactory;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/parser/ParserFactory;

    move-result-object v0

    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/JavaInput;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v4, v4, v4}, Lorg/openjdk/tools/javac/parser/ParserFactory;->newParser(Ljava/lang/CharSequence;ZZZ)Lorg/openjdk/tools/javac/parser/JavacParser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseCompilationUnit()Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    move-result-object v0

    iput-object v2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {p0, v0}, Lorg/google/googlejavaformat/java/JavaInput;->setCompilationUnit(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)V

    invoke-virtual {v1}, Lorg/openjdk/javax/tools/DiagnosticCollector;->getDiagnostics()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lorg/google/googlejavaformat/java/a;

    invoke-direct {v2}, Lorg/google/googlejavaformat/java/a;-><init>()V

    invoke-static {v1, v2}, Lcom/google/common/collect/D1;->p(Ljava/lang/Iterable;Lw2/I;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/D1;->C(Ljava/lang/Iterable;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Lorg/google/googlejavaformat/OpsBuilder;

    invoke-direct {v1, p0, p1}, Lorg/google/googlejavaformat/OpsBuilder;-><init>(Lorg/google/googlejavaformat/Input;Lorg/google/googlejavaformat/Output;)V

    new-instance v2, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/java/JavaFormatterOptions;->indentationMultiplier()I

    move-result v3

    invoke-direct {v2, v1, v3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;-><init>(Lorg/google/googlejavaformat/OpsBuilder;I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/JavaInput;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v1, p0}, Lorg/google/googlejavaformat/OpsBuilder;->sync(I)V

    invoke-virtual {v1}, Lorg/google/googlejavaformat/OpsBuilder;->drain()V

    new-instance p0, Lorg/google/googlejavaformat/DocBuilder;

    invoke-direct {p0}, Lorg/google/googlejavaformat/DocBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/google/googlejavaformat/OpsBuilder;->build()Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/google/googlejavaformat/DocBuilder;->withOps(Ljava/util/List;)Lorg/google/googlejavaformat/DocBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/google/googlejavaformat/DocBuilder;->build()Lorg/google/googlejavaformat/Doc;

    move-result-object p0

    invoke-virtual {p1}, Lorg/google/googlejavaformat/java/JavaOutput;->getCommentsHelper()Lorg/google/googlejavaformat/CommentsHelper;

    move-result-object v0

    invoke-virtual {p2}, Lorg/google/googlejavaformat/java/JavaFormatterOptions;->maxLineLength()I

    move-result p2

    new-instance v1, Lorg/google/googlejavaformat/Doc$State;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lorg/google/googlejavaformat/Doc$State;-><init>(II)V

    invoke-virtual {p0, v0, p2, v1}, Lorg/google/googlejavaformat/Doc;->computeBreaks(Lorg/google/googlejavaformat/CommentsHelper;ILorg/google/googlejavaformat/Doc$State;)Lorg/google/googlejavaformat/Doc$State;

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/Doc;->write(Lorg/google/googlejavaformat/Output;)V

    invoke-virtual {p1}, Lorg/google/googlejavaformat/java/JavaOutput;->flush()V

    return-void

    :cond_0
    invoke-static {v1}, Lorg/google/googlejavaformat/java/FormatterException;->fromJavacDiagnostics(Ljava/lang/Iterable;)Lorg/google/googlejavaformat/java/FormatterException;

    move-result-object p0

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOError;

    invoke-direct {p1, p0}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static lineRangesToCharRanges(Ljava/lang/String;Lcom/google/common/collect/m2;)Lcom/google/common/collect/m2;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "lineRanges"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/m2<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/common/collect/m2<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lorg/google/googlejavaformat/Newlines;->lineOffsetIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/E1;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/google/common/collect/c3;->r()Lcom/google/common/collect/c3;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/j2;->g(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/common/collect/m2;->k(Lcom/google/common/collect/j2;)Lcom/google/common/collect/m2;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/collect/m2;->m()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/j2;

    invoke-virtual {v1}, Lcom/google/common/collect/j2;->z()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    invoke-virtual {v1}, Lcom/google/common/collect/j2;->L()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/common/collect/j2;->g(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/google/common/collect/m2;->o(Lcom/google/common/collect/j2;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private scanJavaFileInDirectory(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "directory",
            "filePathList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lw2/P;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".java"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/google/googlejavaformat/java/Formatter;->scanJavaFileInDirectory(Ljava/lang/String;Ljava/util/List;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private writeFile(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "filePath",
            "content",
            "reWrite"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-static {p2}, Lw2/P;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    new-instance p3, Ljava/io/PrintWriter;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p3, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {p3}, Ljava/io/PrintWriter;->close()V

    :cond_0
    return-void
.end method


# virtual methods
.method public formatSource(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/j2;->g(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/g1;->y(Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/google/googlejavaformat/java/Formatter;->formatSource(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatSource(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "characterRanges"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/google/common/collect/j2<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/Formatter;->getFormatReplacements(Ljava/lang/String;Ljava/util/Collection;)Lcom/google/common/collect/g1;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/google/googlejavaformat/java/JavaOutput;->applyReplacements(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatSource(LD2/j;LD2/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/google/googlejavaformat/java/FormatterException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, LD2/j;->n()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/Formatter;->formatSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, LD2/i;->c(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public formatSourceAndFixImports(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    invoke-static {p1}, Lorg/google/googlejavaformat/java/ImportOrderer;->reorderImports(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/google/googlejavaformat/java/RemoveUnusedImports;->removeUnusedImports(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/Formatter;->formatSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFormatReplacements(Ljava/lang/String;Ljava/util/Collection;)Lcom/google/common/collect/g1;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "characterRanges"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/google/common/collect/j2<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Lcom/google/common/collect/g1<",
            "Lorg/google/googlejavaformat/java/Replacement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    new-instance v0, Lorg/google/googlejavaformat/java/JavaInput;

    invoke-direct {v0, p1}, Lorg/google/googlejavaformat/java/JavaInput;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p2}, Lorg/google/googlejavaformat/java/ModifierOrderer;->reorderModifiers(Lorg/google/googlejavaformat/java/JavaInput;Ljava/util/Collection;)Lorg/google/googlejavaformat/java/JavaInput;

    move-result-object v0

    invoke-static {p1}, Lorg/google/googlejavaformat/Newlines;->guessLineSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/google/googlejavaformat/java/JavaOutput;

    new-instance v2, Lorg/google/googlejavaformat/java/JavaCommentsHelper;

    iget-object v3, p0, Lorg/google/googlejavaformat/java/Formatter;->options:Lorg/google/googlejavaformat/java/JavaFormatterOptions;

    invoke-direct {v2, p1, v3}, Lorg/google/googlejavaformat/java/JavaCommentsHelper;-><init>(Ljava/lang/String;Lorg/google/googlejavaformat/java/JavaFormatterOptions;)V

    invoke-direct {v1, p1, v0, v2}, Lorg/google/googlejavaformat/java/JavaOutput;-><init>(Ljava/lang/String;Lorg/google/googlejavaformat/java/JavaInput;Lorg/google/googlejavaformat/CommentsHelper;)V

    :try_start_0
    iget-object p1, p0, Lorg/google/googlejavaformat/java/Formatter;->options:Lorg/google/googlejavaformat/java/JavaFormatterOptions;

    invoke-static {v0, v1, p1}, Lorg/google/googlejavaformat/java/Formatter;->format(Lorg/google/googlejavaformat/java/JavaInput;Lorg/google/googlejavaformat/java/JavaOutput;Lorg/google/googlejavaformat/java/JavaFormatterOptions;)V
    :try_end_0
    .catch Lorg/google/googlejavaformat/FormattingError; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, p2}, Lorg/google/googlejavaformat/java/JavaInput;->characterRangesToTokenRanges(Ljava/util/Collection;)Lcom/google/common/collect/m2;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/google/googlejavaformat/java/JavaOutput;->getFormatReplacements(Lcom/google/common/collect/m2;)Lcom/google/common/collect/g1;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/google/googlejavaformat/java/FormatterException;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/FormattingError;->diagnostics()Lcom/google/common/collect/g1;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/google/googlejavaformat/java/FormatterException;-><init>(Ljava/lang/Iterable;)V

    throw p2
.end method
