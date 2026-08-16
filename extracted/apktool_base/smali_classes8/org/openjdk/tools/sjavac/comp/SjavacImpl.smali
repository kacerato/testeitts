.class public Lorg/openjdk/tools/sjavac/comp/SjavacImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/sjavac/server/Sjavac;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(I)[Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/sjavac/comp/SjavacImpl;->lambda$compile$1(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/sjavac/comp/SjavacImpl;->lambda$compile$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static createIfMissing(Ljava/nio/file/Path;)Z
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    new-array v1, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is not a directory."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/openjdk/tools/sjavac/Log;->error(Ljava/lang/String;)V

    return v0

    :cond_1
    :try_start_0
    new-array v1, v0, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p0, v1}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/openjdk/tools/sjavac/Log;->error(Ljava/lang/String;)V

    return v0
.end method

.method public static findSourceFiles(Ljava/util/List;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Lorg/openjdk/tools/sjavac/Module;ZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/openjdk/tools/sjavac/options/SourceLocation;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/sjavac/Source;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/sjavac/Module;",
            ">;",
            "Lorg/openjdk/tools/sjavac/Module;",
            "ZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/openjdk/tools/sjavac/options/SourceLocation;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lorg/openjdk/tools/sjavac/options/SourceLocation;->findSourceFiles(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Lorg/openjdk/tools/sjavac/Module;ZZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static isOverlapping(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .locals 1

    invoke-interface {p0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, p0}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$compile$0(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/sjavac/options/Option;->SERVER:Lorg/openjdk/tools/sjavac/options/Option;

    iget-object v0, v0, Lorg/openjdk/tools/sjavac/options/Option;->arg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$compile$1(I)[Ljava/lang/String;
    .locals 0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static printRound(I)V
    .locals 3

    const-string v0, "****************************************"

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "* Round "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "                              *"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    return-void
.end method

.method private static srcDstOverlap(Ljava/util/List;Ljava/nio/file/Path;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/openjdk/tools/sjavac/options/SourceLocation;",
            ">;",
            "Ljava/nio/file/Path;",
            ")Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/sjavac/options/SourceLocation;

    invoke-virtual {v0}, Lorg/openjdk/tools/sjavac/options/SourceLocation;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/openjdk/tools/sjavac/comp/SjavacImpl;->isOverlapping(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Source location "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/openjdk/tools/sjavac/options/SourceLocation;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " overlaps with destination "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/openjdk/tools/sjavac/Log;->error(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static validateOptions(Lorg/openjdk/tools/sjavac/options/Options;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/openjdk/tools/sjavac/options/Options;->getDestDir()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string p0, "Please specify output directory."

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/openjdk/tools/sjavac/options/Options;->isJavaFilesAmongJavacArgs()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Sjavac does not handle explicit compilation of single .java files."

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/openjdk/tools/sjavac/options/Options;->getImplicitPolicy()Ljava/lang/String;

    move-result-object v0

    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "The only allowed setting for sjavac is -implicit:none"

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/openjdk/tools/sjavac/options/Options;->getSources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/openjdk/tools/sjavac/options/Options;->getStateDir()Ljava/nio/file/Path;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string p0, "You have to specify -src when using --state-dir."

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/openjdk/tools/sjavac/options/Options;->getTranslationRules()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-le v0, v1, :cond_4

    invoke-virtual {p0}, Lorg/openjdk/tools/sjavac/options/Options;->getGenSrcDir()Ljava/nio/file/Path;

    move-result-object p0

    if-nez p0, :cond_4

    const-string p0, "You have translators but no gensrc dir (-s) specified!"

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_5

    invoke-static {p0}, Lorg/openjdk/tools/sjavac/Log;->error(Ljava/lang/String;)V

    :cond_5
    if-nez p0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :goto_1
    return v1
.end method


# virtual methods
.method public compile([Ljava/lang/String;)Lorg/openjdk/tools/javac/main/Main$Result;
    .locals 16

    const-string v0, ".java"

    :try_start_0
    invoke-static/range {p1 .. p1}, Lorg/openjdk/tools/sjavac/options/Options;->parseArgs([Ljava/lang/String;)Lorg/openjdk/tools/sjavac/options/Options;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    invoke-static {v1}, Lorg/openjdk/tools/sjavac/comp/SjavacImpl;->validateOptions(Lorg/openjdk/tools/sjavac/options/Options;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v0, Lorg/openjdk/tools/javac/main/Main$Result;->CMDERR:Lorg/openjdk/tools/javac/main/Main$Result;

    return-object v0

    :cond_0
    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/options/Options;->getSources()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/options/Options;->getDestDir()Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/openjdk/tools/sjavac/comp/SjavacImpl;->srcDstOverlap(Ljava/util/List;Ljava/nio/file/Path;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lorg/openjdk/tools/javac/main/Main$Result;->CMDERR:Lorg/openjdk/tools/javac/main/Main$Result;

    return-object v0

    :cond_1
    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/options/Options;->getDestDir()Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v2}, Lorg/openjdk/tools/sjavac/comp/SjavacImpl;->createIfMissing(Ljava/nio/file/Path;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v0, Lorg/openjdk/tools/javac/main/Main$Result;->ERROR:Lorg/openjdk/tools/javac/main/Main$Result;

    return-object v0

    :cond_2
    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/options/Options;->getStateDir()Ljava/nio/file/Path;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/options/Options;->getStateDir()Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {v3}, Lorg/openjdk/tools/sjavac/comp/SjavacImpl;->createIfMissing(Ljava/nio/file/Path;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v0, Lorg/openjdk/tools/javac/main/Main$Result;->ERROR:Lorg/openjdk/tools/javac/main/Main$Result;

    return-object v0

    :cond_3
    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/options/Options;->getGenSrcDir()Ljava/nio/file/Path;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {v3}, Lorg/openjdk/tools/sjavac/comp/SjavacImpl;->createIfMissing(Ljava/nio/file/Path;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v0, Lorg/openjdk/tools/javac/main/Main$Result;->ERROR:Lorg/openjdk/tools/javac/main/Main$Result;

    return-object v0

    :cond_4
    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/options/Options;->getHeaderDir()Ljava/nio/file/Path;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-static {v4}, Lorg/openjdk/tools/sjavac/comp/SjavacImpl;->createIfMissing(Ljava/nio/file/Path;)Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v0, Lorg/openjdk/tools/javac/main/Main$Result;->ERROR:Lorg/openjdk/tools/javac/main/Main$Result;

    return-object v0

    :cond_5
    if-nez v2, :cond_7

    new-instance v0, Lorg/openjdk/tools/javac/util/Context;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context;-><init>()V

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-static {v0, v2}, Lorg/openjdk/tools/javac/util/Log;->preRegister(Lorg/openjdk/tools/javac/util/Context;Ljava/io/PrintWriter;)V

    invoke-static {v0}, Lorg/openjdk/tools/javac/file/JavacFileManager;->preRegister(Lorg/openjdk/tools/javac/util/Context;)V

    invoke-static/range {p1 .. p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/openjdk/tools/sjavac/comp/f;

    invoke-direct {v4}, Lorg/openjdk/tools/sjavac/comp/f;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/openjdk/tools/sjavac/comp/g;

    invoke-direct {v4}, Lorg/openjdk/tools/sjavac/comp/g;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    new-instance v4, Lorg/openjdk/tools/javac/main/Main;

    const-string v5, "javac"

    invoke-direct {v4, v5, v2}, Lorg/openjdk/tools/javac/main/Main;-><init>(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-virtual {v4, v3, v0}, Lorg/openjdk/tools/javac/main/Main;->compile([Ljava/lang/String;Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/main/Main$Result;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/openjdk/tools/sjavac/Util;->getLines(Ljava/lang/String;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/openjdk/tools/sjavac/f;

    invoke-direct {v2}, Lorg/openjdk/tools/sjavac/f;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const-class v1, Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/javax/tools/JavaFileManager;

    instance-of v1, v0, Lorg/openjdk/tools/javac/file/JavacFileManager;

    if-eqz v1, :cond_6

    :try_start_1
    check-cast v0, Lorg/openjdk/tools/javac/file/JavacFileManager;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/file/JavacFileManager;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/UncheckedIOException;

    invoke-direct {v1, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_6
    :goto_0
    return-object v3

    :cond_7
    invoke-static {v1}, Lorg/openjdk/tools/sjavac/JavacState;->load(Lorg/openjdk/tools/sjavac/options/Options;)Lorg/openjdk/tools/sjavac/JavacState;

    move-result-object v2

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2}, Lorg/openjdk/tools/sjavac/JavacState;->getJavaSuffixRule()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/options/Options;->getTranslationRules()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v13, Lorg/openjdk/tools/sjavac/Module;

    const-string v6, ""

    invoke-direct {v13, v6, v6}, Lorg/openjdk/tools/sjavac/Module;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_2
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/options/Options;->getSources()Ljava/util/List;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/options/Options;->isDefaultPackagePermitted()Z

    move-result v11

    const/4 v12, 0x0

    move-object v8, v14

    move-object v9, v5

    move-object v10, v13

    invoke-static/range {v6 .. v12}, Lorg/openjdk/tools/sjavac/comp/SjavacImpl;->findSourceFiles(Ljava/util/List;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Lorg/openjdk/tools/sjavac/Module;ZZ)V

    invoke-interface {v14}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v0, "Found nothing to compile!"

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Log;->error(Ljava/lang/String;)V

    sget-object v0, Lorg/openjdk/tools/javac/main/Main$Result;->ERROR:Lorg/openjdk/tools/javac/main/Main$Result;

    return-object v0

    :catch_1
    move-exception v0

    goto/16 :goto_3

    :catch_2
    move-exception v0

    goto/16 :goto_4

    :cond_8
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/options/Options;->getSources()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/options/Options;->getSourceSearchPaths()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/options/Options;->isDefaultPackagePermitted()Z

    move-result v11

    const/4 v12, 0x1

    move-object v8, v15

    move-object v9, v5

    move-object v10, v13

    invoke-static/range {v6 .. v12}, Lorg/openjdk/tools/sjavac/comp/SjavacImpl;->findSourceFiles(Ljava/util/List;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Lorg/openjdk/tools/sjavac/Module;ZZ)V

    invoke-virtual {v2}, Lorg/openjdk/tools/sjavac/JavacState;->now()Lorg/openjdk/tools/sjavac/BuildState;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/openjdk/tools/sjavac/BuildState;->flattenPackagesSourcesAndArtifacts(Ljava/util/Map;)V

    invoke-virtual {v2}, Lorg/openjdk/tools/sjavac/JavacState;->now()Lorg/openjdk/tools/sjavac/BuildState;

    move-result-object v6

    const-string v7, "checking sources"

    const/4 v12, 0x0

    invoke-virtual {v6, v7, v12, v14}, Lorg/openjdk/tools/sjavac/BuildState;->checkInternalState(Ljava/lang/String;ZLjava/util/Map;)V

    invoke-virtual {v2}, Lorg/openjdk/tools/sjavac/JavacState;->now()Lorg/openjdk/tools/sjavac/BuildState;

    move-result-object v6

    const-string v7, "checking linked sources"

    const/4 v14, 0x1

    invoke-virtual {v6, v7, v14, v15}, Lorg/openjdk/tools/sjavac/BuildState;->checkInternalState(Ljava/lang/String;ZLjava/util/Map;)V

    invoke-virtual {v2, v15}, Lorg/openjdk/tools/sjavac/JavacState;->setVisibleSources(Ljava/util/Map;)V

    invoke-static {v12}, Lorg/openjdk/tools/sjavac/comp/SjavacImpl;->printRound(I)V

    invoke-virtual {v2, v12}, Lorg/openjdk/tools/sjavac/JavacState;->checkSourceStatus(Z)V

    invoke-virtual {v2}, Lorg/openjdk/tools/sjavac/JavacState;->findAllArtifacts()V

    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/options/Options;->areUnidentifiedArtifactsPermitted()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v2}, Lorg/openjdk/tools/sjavac/JavacState;->removeUnidentifiedArtifacts()V

    :cond_9
    invoke-virtual {v2}, Lorg/openjdk/tools/sjavac/JavacState;->taintPackagesThatMissArtifacts()V

    invoke-virtual {v2}, Lorg/openjdk/tools/sjavac/JavacState;->taintPackagesDependingOnChangedClasspathPackages()V

    invoke-virtual {v2}, Lorg/openjdk/tools/sjavac/JavacState;->deleteClassArtifactsInTaintedPackages()V

    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/options/Options;->getDestDir()Ljava/nio/file/Path;

    move-result-object v6

    invoke-static {v6}, Lorg/openjdk/tools/sjavac/Util;->pathToFile(Ljava/nio/file/Path;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v2, v6, v4}, Lorg/openjdk/tools/sjavac/JavacState;->performCopying(Ljava/io/File;Ljava/util/Map;)V

    invoke-static {v3}, Lorg/openjdk/tools/sjavac/Util;->pathToFile(Ljava/nio/file/Path;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lorg/openjdk/tools/sjavac/JavacState;->performTranslation(Ljava/io/File;Ljava/util/Map;)V

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/options/Options;->getGenSrcDir()Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {v3}, Lorg/openjdk/tools/sjavac/Util;->pathToFile(Ljava/nio/file/Path;)Ljava/io/File;

    move-result-object v6

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Util;->set([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    const/4 v0, 0x1

    const/4 v15, 0x0

    const/4 v3, 0x0

    move-object v11, v5

    move v4, v12

    move-object v12, v13

    move v13, v3

    move v3, v14

    move v14, v0

    invoke-static/range {v6 .. v15}, Lorg/openjdk/tools/sjavac/Source;->scanRoot(Ljava/io/File;Ljava/util/Set;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Lorg/openjdk/tools/sjavac/Module;ZZZ)V

    invoke-virtual {v2}, Lorg/openjdk/tools/sjavac/JavacState;->now()Lorg/openjdk/tools/sjavac/BuildState;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/openjdk/tools/sjavac/BuildState;->flattenPackagesSourcesAndArtifacts(Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/sjavac/JavacState;->checkSourceStatus(Z)V

    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/options/Options;->getSourceReferenceList()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Util;->pathToFile(Ljava/nio/file/Path;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/sjavac/JavacState;->compareWithMakefileList(Ljava/io/File;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-array v3, v3, [Z

    new-instance v6, Lorg/openjdk/tools/sjavac/comp/CompilationService;

    invoke-direct {v6}, Lorg/openjdk/tools/sjavac/comp/CompilationService;-><init>()V

    move v12, v4

    :cond_a
    if-lez v12, :cond_b

    invoke-static {v12}, Lorg/openjdk/tools/sjavac/comp/SjavacImpl;->printRound(I)V

    :cond_b
    invoke-virtual {v2}, Lorg/openjdk/tools/sjavac/JavacState;->deleteClassArtifactsInTaintedPackages()V

    invoke-virtual {v2, v6, v1, v0, v3}, Lorg/openjdk/tools/sjavac/JavacState;->performJavaCompilations(Lorg/openjdk/tools/sjavac/comp/CompilationService;Lorg/openjdk/tools/sjavac/options/Options;Ljava/util/Set;[Z)Z

    move-result v7

    aget-boolean v8, v3, v4

    if-nez v8, :cond_c

    const-string v1, "Compilation failed."

    invoke-static {v1}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    if-nez v7, :cond_d

    const-string v8, "Nothing left to do."

    invoke-static {v8}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    :cond_d
    add-int/lit8 v12, v12, 0x1

    if-nez v7, :cond_a

    :goto_1
    const-string v1, "No need to do another round."

    invoke-static {v1}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    aget-boolean v1, v3, v4

    if-eqz v1, :cond_e

    invoke-virtual {v2}, Lorg/openjdk/tools/sjavac/JavacState;->save()V

    invoke-virtual {v2}, Lorg/openjdk/tools/sjavac/JavacState;->now()Lorg/openjdk/tools/sjavac/BuildState;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/openjdk/tools/sjavac/BuildState;->flattenArtifacts(Ljava/util/Map;)V

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/sjavac/JavacState;->removeSuperfluousArtifacts(Ljava/util/Set;)V

    :cond_e
    aget-boolean v0, v3, v4

    if-eqz v0, :cond_f

    sget-object v0, Lorg/openjdk/tools/javac/main/Main$Result;->OK:Lorg/openjdk/tools/javac/main/Main$Result;

    goto :goto_2

    :cond_f
    sget-object v0, Lorg/openjdk/tools/javac/main/Main$Result;->ERROR:Lorg/openjdk/tools/javac/main/Main$Result;
    :try_end_2
    .catch Lorg/openjdk/tools/sjavac/ProblemException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    return-object v0

    :goto_3
    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Log;->error(Ljava/lang/Throwable;)V

    sget-object v0, Lorg/openjdk/tools/javac/main/Main$Result;->ERROR:Lorg/openjdk/tools/javac/main/Main$Result;

    return-object v0

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/openjdk/tools/sjavac/Log;->error(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/Throwable;)V

    sget-object v0, Lorg/openjdk/tools/javac/main/Main$Result;->ERROR:Lorg/openjdk/tools/javac/main/Main$Result;

    return-object v0

    :catch_3
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Log;->error(Ljava/lang/String;)V

    sget-object v0, Lorg/openjdk/tools/javac/main/Main$Result;->CMDERR:Lorg/openjdk/tools/javac/main/Main$Result;

    return-object v0
.end method

.method public shutdown()V
    .locals 0

    return-void
.end method
