.class public Lorg/openjdk/tools/doclint/DocLint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/util/Plugin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/doclint/DocLint$DeclScanner;,
        Lorg/openjdk/tools/doclint/DocLint$BadArgs;
    }
.end annotation


# static fields
.field public static final SEPARATOR:Ljava/lang/String; = ","

.field private static final STATS:Ljava/lang/String; = "-stats"

.field public static final XCHECK_PACKAGE:Ljava/lang/String; = "-XcheckPackage:"

.field public static final XCUSTOM_TAGS_PREFIX:Ljava/lang/String; = "-XcustomTags:"

.field public static final XHTML_VERSION_PREFIX:Ljava/lang/String; = "-XhtmlVersion:"

.field public static final XIMPLICIT_HEADERS:Ljava/lang/String; = "-XimplicitHeaders:"

.field public static final XMSGS_CUSTOM_PREFIX:Ljava/lang/String; = "-Xmsgs:"

.field public static final XMSGS_OPTION:Ljava/lang/String; = "-Xmsgs"


# instance fields
.field checker:Lorg/openjdk/tools/doclint/Checker;

.field env:Lorg/openjdk/tools/doclint/Env;

.field javacBootClassPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field javacClassPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field javacFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field javacOpts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field javacSourcePath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field needHelp:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjdk/tools/doclint/DocLint;->needHelp:Z

    return-void
.end method

.method public static synthetic access$000(Lorg/openjdk/tools/doclint/DocLint;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/doclint/DocLint;->localize(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isValidOption(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "-Xmsgs"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "-Xmsgs:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/openjdk/tools/doclint/Messages$Options;->isValidOptions(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    const-string v0, "-XcheckPackage:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/openjdk/tools/doclint/Env;->validatePackages(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private varargs localize(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/doclint/DocLint;->env:Lorg/openjdk/tools/doclint/Env;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/openjdk/tools/doclint/Messages;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjdk/tools/doclint/Messages;-><init>(Lorg/openjdk/tools/doclint/Env;)V

    :goto_0
    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/doclint/Messages;->localize(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/doclint/DocLint;

    invoke-direct {v0}, Lorg/openjdk/tools/doclint/DocLint;-><init>()V

    :try_start_0
    invoke-virtual {v0, p0}, Lorg/openjdk/tools/doclint/DocLint;->run([Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/openjdk/tools/doclint/DocLint$BadArgs; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "dc.main.ioerror"

    invoke-direct {v0, v2, p0}, Lorg/openjdk/tools/doclint/DocLint;->localize(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x2

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    :catch_1
    move-exception p0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "doclint"

    return-object v0
.end method

.method public varargs init(Lorg/openjdk/source/util/JavacTask;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/openjdk/tools/doclint/DocLint;->init(Lorg/openjdk/source/util/JavacTask;[Ljava/lang/String;Z)V

    return-void
.end method

.method public init(Lorg/openjdk/source/util/JavacTask;[Ljava/lang/String;Z)V
    .locals 5

    .line 2
    new-instance v0, Lorg/openjdk/tools/doclint/Env;

    invoke-direct {v0}, Lorg/openjdk/tools/doclint/Env;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/doclint/DocLint;->env:Lorg/openjdk/tools/doclint/Env;

    .line 3
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_7

    aget-object v2, p2, v1

    .line 4
    const-string v3, "-Xmsgs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    iget-object v2, p0, Lorg/openjdk/tools/doclint/DocLint;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v2, v2, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/doclint/Messages;->setOptions(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6
    :cond_0
    const-string v3, "-Xmsgs:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, ":"

    if-eqz v3, :cond_1

    .line 7
    iget-object v3, p0, Lorg/openjdk/tools/doclint/DocLint;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v3, v3, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/doclint/Messages;->setOptions(Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_1
    const-string v3, "-XimplicitHeaders:[1-6]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 10
    iget-object v3, p0, Lorg/openjdk/tools/doclint/DocLint;->env:Lorg/openjdk/tools/doclint/Env;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/doclint/Env;->setImplicitHeaders(I)V

    goto :goto_1

    .line 11
    :cond_2
    const-string v3, "-XcustomTags:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 12
    iget-object v3, p0, Lorg/openjdk/tools/doclint/DocLint;->env:Lorg/openjdk/tools/doclint/Env;

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/doclint/Env;->setCustomTags(Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_3
    const-string v3, "-XhtmlVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 14
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-static {v2}, Lorg/openjdk/tools/doclint/HtmlVersion;->getHtmlVersion(Ljava/lang/String;)Lorg/openjdk/tools/doclint/HtmlVersion;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 16
    iget-object v2, p0, Lorg/openjdk/tools/doclint/DocLint;->env:Lorg/openjdk/tools/doclint/Env;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/doclint/Env;->setHtmlVersion(Lorg/openjdk/tools/doclint/HtmlVersion;)V

    goto :goto_1

    .line 17
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_5
    const-string v3, "-XcheckPackage:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 19
    iget-object v3, p0, Lorg/openjdk/tools/doclint/DocLint;->env:Lorg/openjdk/tools/doclint/Env;

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/doclint/Env;->setCheckPackages(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 20
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_7
    iget-object p2, p0, Lorg/openjdk/tools/doclint/DocLint;->env:Lorg/openjdk/tools/doclint/Env;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/doclint/Env;->init(Lorg/openjdk/source/util/JavacTask;)V

    .line 22
    new-instance p2, Lorg/openjdk/tools/doclint/Checker;

    iget-object v0, p0, Lorg/openjdk/tools/doclint/DocLint;->env:Lorg/openjdk/tools/doclint/Env;

    invoke-direct {p2, v0}, Lorg/openjdk/tools/doclint/Checker;-><init>(Lorg/openjdk/tools/doclint/Env;)V

    iput-object p2, p0, Lorg/openjdk/tools/doclint/DocLint;->checker:Lorg/openjdk/tools/doclint/Checker;

    if-eqz p3, :cond_8

    .line 23
    new-instance p2, Lorg/openjdk/tools/doclint/DocLint$2;

    iget-object p3, p0, Lorg/openjdk/tools/doclint/DocLint;->env:Lorg/openjdk/tools/doclint/Env;

    invoke-direct {p2, p0, p3}, Lorg/openjdk/tools/doclint/DocLint$2;-><init>(Lorg/openjdk/tools/doclint/DocLint;Lorg/openjdk/tools/doclint/Env;)V

    .line 24
    new-instance p3, Lorg/openjdk/tools/doclint/DocLint$3;

    invoke-direct {p3, p0, p2}, Lorg/openjdk/tools/doclint/DocLint$3;-><init>(Lorg/openjdk/tools/doclint/DocLint;Lorg/openjdk/tools/doclint/DocLint$DeclScanner;)V

    .line 25
    invoke-virtual {p1, p3}, Lorg/openjdk/source/util/JavacTask;->addTaskListener(Lorg/openjdk/source/util/TaskListener;)V

    :cond_8
    return-void
.end method

.method public varargs processArgs([Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/doclint/DocLint$BadArgs;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/doclint/DocLint;->javacOpts:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/doclint/DocLint;->javacFiles:Ljava/util/List;

    array-length v0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lorg/openjdk/tools/doclint/DocLint;->needHelp:Z

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_13

    aget-object v2, p1, v0

    const-string v3, "-Xmax(errs|warns)"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "dc.bad.value.for.option"

    if-eqz v3, :cond_2

    add-int/lit8 v3, v0, 0x1

    array-length v5, p1

    if-ge v3, v5, :cond_2

    aget-object v0, p1, v3

    const-string v5, "[0-9]+"

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/doclint/DocLint;->javacOpts:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/openjdk/tools/doclint/DocLint;->javacOpts:Ljava/util/List;

    aget-object v2, p1, v3

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    move v0, v3

    goto/16 :goto_4

    :cond_1
    new-instance v0, Lorg/openjdk/tools/doclint/DocLint$BadArgs;

    aget-object p1, p1, v3

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p0, v4, p1}, Lorg/openjdk/tools/doclint/DocLint$BadArgs;-><init>(Lorg/openjdk/tools/doclint/DocLint;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_2
    const-string v3, "-target"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "-source"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    add-int/lit8 v3, v0, 0x1

    array-length v5, p1

    if-ge v3, v5, :cond_4

    iget-object v0, p0, Lorg/openjdk/tools/doclint/DocLint;->javacOpts:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/openjdk/tools/doclint/DocLint;->javacOpts:Ljava/util/List;

    aget-object v2, p1, v3

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const-string v3, "-stats"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v2, p0, Lorg/openjdk/tools/doclint/DocLint;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v2, v2, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/doclint/Messages;->setStatsEnabled(Z)V

    goto/16 :goto_4

    :cond_5
    const-string v3, "-bootclasspath"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    add-int/lit8 v3, v0, 0x1

    array-length v5, p1

    if-ge v3, v5, :cond_6

    aget-object v0, p1, v3

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/doclint/DocLint;->splitPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/doclint/DocLint;->javacBootClassPath:Ljava/util/List;

    goto :goto_1

    :cond_6
    const-string v3, "-classpath"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    add-int/lit8 v3, v0, 0x1

    array-length v5, p1

    if-ge v3, v5, :cond_7

    aget-object v0, p1, v3

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/doclint/DocLint;->splitPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/doclint/DocLint;->javacClassPath:Ljava/util/List;

    goto :goto_1

    :cond_7
    const-string v3, "-cp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    add-int/lit8 v3, v0, 0x1

    array-length v5, p1

    if-ge v3, v5, :cond_8

    aget-object v0, p1, v3

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/doclint/DocLint;->splitPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/doclint/DocLint;->javacClassPath:Ljava/util/List;

    goto/16 :goto_1

    :cond_8
    const-string v3, "-sourcepath"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    add-int/lit8 v3, v0, 0x1

    array-length v5, p1

    if-ge v3, v5, :cond_9

    aget-object v0, p1, v3

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/doclint/DocLint;->splitPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/doclint/DocLint;->javacSourcePath:Ljava/util/List;

    goto/16 :goto_1

    :cond_9
    const-string v3, "-Xmsgs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v2, p0, Lorg/openjdk/tools/doclint/DocLint;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v2, v2, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/doclint/Messages;->setOptions(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_a
    const-string v3, "-Xmsgs:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v5, ":"

    if-eqz v3, :cond_b

    iget-object v3, p0, Lorg/openjdk/tools/doclint/DocLint;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v3, v3, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/doclint/Messages;->setOptions(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_b
    const-string v3, "-XcustomTags:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lorg/openjdk/tools/doclint/DocLint;->env:Lorg/openjdk/tools/doclint/Env;

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/doclint/Env;->setCustomTags(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_c
    const-string v3, "-XhtmlVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/openjdk/tools/doclint/HtmlVersion;->getHtmlVersion(Ljava/lang/String;)Lorg/openjdk/tools/doclint/HtmlVersion;

    move-result-object v5

    if-eqz v5, :cond_d

    iget-object v2, p0, Lorg/openjdk/tools/doclint/DocLint;->env:Lorg/openjdk/tools/doclint/Env;

    invoke-virtual {v2, v5}, Lorg/openjdk/tools/doclint/Env;->setHtmlVersion(Lorg/openjdk/tools/doclint/HtmlVersion;)V

    goto :goto_4

    :cond_d
    new-instance p1, Lorg/openjdk/tools/doclint/DocLint$BadArgs;

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, p0, v4, v0}, Lorg/openjdk/tools/doclint/DocLint$BadArgs;-><init>(Lorg/openjdk/tools/doclint/DocLint;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_e
    const-string v3, "-h"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "-help"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "--help"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "-?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "-usage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_3

    :cond_f
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_12

    iget-object v2, p0, Lorg/openjdk/tools/doclint/DocLint;->javacFiles:Ljava/util/List;

    new-instance v3, Ljava/io/File;

    add-int/lit8 v4, v0, 0x1

    aget-object v0, p1, v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v4

    goto :goto_2

    :cond_10
    new-instance p1, Lorg/openjdk/tools/doclint/DocLint$BadArgs;

    const-string v0, "dc.bad.option"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p1, p0, v0, v1}, Lorg/openjdk/tools/doclint/DocLint$BadArgs;-><init>(Lorg/openjdk/tools/doclint/DocLint;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_11
    :goto_3
    iput-boolean v1, p0, Lorg/openjdk/tools/doclint/DocLint;->needHelp:Z

    :cond_12
    :goto_4
    add-int/2addr v0, v1

    goto/16 :goto_0

    :cond_13
    return-void
.end method

.method public reportStats(Ljava/io/PrintWriter;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/doclint/DocLint;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/doclint/Messages;->reportStats(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public varargs run(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/doclint/DocLint$BadArgs;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    new-instance v0, Lorg/openjdk/tools/doclint/Env;

    invoke-direct {v0}, Lorg/openjdk/tools/doclint/Env;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/doclint/DocLint;->env:Lorg/openjdk/tools/doclint/Env;

    .line 6
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/doclint/DocLint;->processArgs([Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lorg/openjdk/tools/doclint/DocLint;->javacFiles:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    .line 8
    iget-boolean v0, p0, Lorg/openjdk/tools/doclint/DocLint;->needHelp:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/doclint/DocLint;->showHelp(Ljava/io/PrintWriter;)V

    if-eqz p2, :cond_1

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 10
    const-string p2, "dc.main.no.files.given"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-direct {p0, p2, v0}, Lorg/openjdk/tools/doclint/DocLint;->localize(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_1
    invoke-static {}, Lorg/openjdk/tools/javac/api/JavacTool;->create()Lorg/openjdk/tools/javac/api/JavacTool;

    move-result-object v0

    .line 12
    new-instance v2, Lorg/openjdk/tools/javac/file/JavacFileManager;

    new-instance p2, Lorg/openjdk/tools/javac/util/Context;

    invoke-direct {p2}, Lorg/openjdk/tools/javac/util/Context;-><init>()V

    const/4 v7, 0x0

    invoke-direct {v2, p2, v1, v7}, Lorg/openjdk/tools/javac/file/JavacFileManager;-><init>(Lorg/openjdk/tools/javac/util/Context;ZLjava/nio/charset/Charset;)V

    .line 13
    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/file/JavacFileManager;->setSymbolFileEnabled(Z)V

    .line 14
    iget-object p2, p0, Lorg/openjdk/tools/doclint/DocLint;->javacBootClassPath:Ljava/util/List;

    if-eqz p2, :cond_2

    .line 15
    sget-object v1, Lorg/openjdk/javax/tools/StandardLocation;->PLATFORM_CLASS_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-virtual {v2, v1, p2}, Lorg/openjdk/tools/javac/file/JavacFileManager;->setLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/Iterable;)V

    .line 16
    :cond_2
    iget-object p2, p0, Lorg/openjdk/tools/doclint/DocLint;->javacClassPath:Ljava/util/List;

    if-eqz p2, :cond_3

    .line 17
    sget-object v1, Lorg/openjdk/javax/tools/StandardLocation;->CLASS_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-virtual {v2, v1, p2}, Lorg/openjdk/tools/javac/file/JavacFileManager;->setLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/Iterable;)V

    .line 18
    :cond_3
    iget-object p2, p0, Lorg/openjdk/tools/doclint/DocLint;->javacSourcePath:Ljava/util/List;

    if-eqz p2, :cond_4

    .line 19
    sget-object v1, Lorg/openjdk/javax/tools/StandardLocation;->SOURCE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-virtual {v2, v1, p2}, Lorg/openjdk/tools/javac/file/JavacFileManager;->setLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/Iterable;)V

    .line 20
    :cond_4
    iget-object v4, p0, Lorg/openjdk/tools/doclint/DocLint;->javacOpts:Ljava/util/List;

    iget-object p2, p0, Lorg/openjdk/tools/doclint/DocLint;->javacFiles:Ljava/util/List;

    .line 21
    invoke-virtual {v2, p2}, Lorg/openjdk/tools/javac/file/JavacFileManager;->getJavaFileObjectsFromFiles(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    .line 22
    invoke-virtual/range {v0 .. v6}, Lorg/openjdk/tools/javac/api/JavacTool;->getTask(Ljava/io/Writer;Lorg/openjdk/javax/tools/JavaFileManager;Lorg/openjdk/javax/tools/DiagnosticListener;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)Lorg/openjdk/source/util/JavacTask;

    move-result-object p2

    .line 23
    invoke-virtual {p2}, Lorg/openjdk/source/util/JavacTask;->parse()Ljava/lang/Iterable;

    move-result-object v0

    .line 24
    move-object v1, p2

    check-cast v1, Lorg/openjdk/tools/javac/api/JavacTaskImpl;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->enter()Ljava/lang/Iterable;

    .line 25
    iget-object v2, p0, Lorg/openjdk/tools/doclint/DocLint;->env:Lorg/openjdk/tools/doclint/Env;

    invoke-virtual {v2, p2}, Lorg/openjdk/tools/doclint/Env;->init(Lorg/openjdk/source/util/JavacTask;)V

    .line 26
    new-instance p2, Lorg/openjdk/tools/doclint/Checker;

    iget-object v2, p0, Lorg/openjdk/tools/doclint/DocLint;->env:Lorg/openjdk/tools/doclint/Env;

    invoke-direct {p2, v2}, Lorg/openjdk/tools/doclint/Checker;-><init>(Lorg/openjdk/tools/doclint/Env;)V

    iput-object p2, p0, Lorg/openjdk/tools/doclint/DocLint;->checker:Lorg/openjdk/tools/doclint/Checker;

    .line 27
    new-instance p2, Lorg/openjdk/tools/doclint/DocLint$1;

    iget-object v2, p0, Lorg/openjdk/tools/doclint/DocLint;->env:Lorg/openjdk/tools/doclint/Env;

    invoke-direct {p2, p0, v2}, Lorg/openjdk/tools/doclint/DocLint$1;-><init>(Lorg/openjdk/tools/doclint/DocLint;Lorg/openjdk/tools/doclint/Env;)V

    .line 28
    invoke-virtual {p2, v0, v7}, Lorg/openjdk/source/util/TreeScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/doclint/DocLint;->reportStats(Ljava/io/PrintWriter;)V

    .line 30
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/api/BasicJavacTask;->getContext()Lorg/openjdk/tools/javac/util/Context;

    move-result-object p1

    .line 31
    invoke-static {p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/main/JavaCompiler;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->errorCount()I

    move-result p2

    const-string v0, "error"

    invoke-virtual {p1, v0, p2}, Lorg/openjdk/tools/javac/main/JavaCompiler;->printCount(Ljava/lang/String;I)V

    .line 33
    const-string p2, "warn"

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->warningCount()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->printCount(Ljava/lang/String;I)V

    return-void
.end method

.method public varargs run([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/doclint/DocLint$BadArgs;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 2
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/doclint/DocLint;->run(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 4
    throw p1
.end method

.method public scan(Lorg/openjdk/source/util/TreePath;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/doclint/DocLint;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->trees:Lorg/openjdk/source/util/DocTrees;

    invoke-virtual {v0, p1}, Lorg/openjdk/source/util/DocTrees;->getDocCommentTree(Lorg/openjdk/source/util/TreePath;)Lorg/openjdk/source/doctree/DocCommentTree;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/doclint/DocLint;->checker:Lorg/openjdk/tools/doclint/Checker;

    invoke-virtual {v1, v0, p1}, Lorg/openjdk/tools/doclint/Checker;->scan(Lorg/openjdk/source/doctree/DocCommentTree;Lorg/openjdk/source/util/TreePath;)Ljava/lang/Void;

    return-void
.end method

.method public shouldCheck(Lorg/openjdk/source/tree/CompilationUnitTree;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/doclint/DocLint;->env:Lorg/openjdk/tools/doclint/Env;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/doclint/Env;->shouldCheck(Lorg/openjdk/source/tree/CompilationUnitTree;)Z

    move-result p1

    return p1
.end method

.method public showHelp(Ljava/io/PrintWriter;)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "dc.main.usage"

    invoke-direct {p0, v2, v1}, Lorg/openjdk/tools/doclint/DocLint;->localize(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public splitPath(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
