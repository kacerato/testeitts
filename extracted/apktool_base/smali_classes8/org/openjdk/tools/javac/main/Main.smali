.class public Lorg/openjdk/tools/javac/main/Main;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/main/Main$Result;
    }
.end annotation


# static fields
.field private static final ENV_OPT_NAME:Ljava/lang/String; = "JDK_JAVAC_OPTIONS"

.field public static final javacBundleName:Ljava/lang/String; = "org.openjdk.tools.javac.resources.javac"


# instance fields
.field apiMode:Z

.field private fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

.field public log:Lorg/openjdk/tools/javac/util/Log;

.field ownName:Ljava/lang/String;

.field stdErr:Ljava/io/PrintWriter;

.field stdOut:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/openjdk/tools/javac/main/Main;->ownName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/openjdk/tools/javac/main/Main;->ownName:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lorg/openjdk/tools/javac/main/Main;->stdErr:Ljava/io/PrintWriter;

    iput-object p2, p0, Lorg/openjdk/tools/javac/main/Main;->stdOut:Ljava/io/PrintWriter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/io/PrintWriter;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lorg/openjdk/tools/javac/main/Main;->ownName:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lorg/openjdk/tools/javac/main/Main;->stdOut:Ljava/io/PrintWriter;

    .line 9
    iput-object p3, p0, Lorg/openjdk/tools/javac/main/Main;->stdErr:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public apMessage(Lorg/openjdk/tools/javac/processing/AnnotationProcessingError;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Main;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v1, Lorg/openjdk/tools/javac/util/Log$PrefixKind;->JAVAC:Lorg/openjdk/tools/javac/util/Log$PrefixKind;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "msg.proc.annotation.uncaught.exception"

    invoke-virtual {v0, v1, v3, v2}, Lorg/openjdk/tools/javac/util/Log;->printLines(Lorg/openjdk/tools/javac/util/Log$PrefixKind;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Main;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v1, Lorg/openjdk/tools/javac/util/Log$WriterKind;->NOTICE:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Log;->getWriter(Lorg/openjdk/tools/javac/util/Log$WriterKind;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public bugMessage(Ljava/lang/Throwable;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Main;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v1, Lorg/openjdk/tools/javac/util/Log$PrefixKind;->JAVAC:Lorg/openjdk/tools/javac/util/Log$PrefixKind;

    invoke-static {}, Lorg/openjdk/tools/javac/main/JavaCompiler;->version()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "msg.bug"

    invoke-virtual {v0, v1, v3, v2}, Lorg/openjdk/tools/javac/util/Log;->printLines(Lorg/openjdk/tools/javac/util/Log$PrefixKind;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Main;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v1, Lorg/openjdk/tools/javac/util/Log$WriterKind;->NOTICE:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Log;->getWriter(Lorg/openjdk/tools/javac/util/Log$WriterKind;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public compile([Ljava/lang/String;)Lorg/openjdk/tools/javac/main/Main$Result;
    .locals 2

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/util/Context;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context;-><init>()V

    .line 2
    invoke-static {v0}, Lorg/openjdk/tools/javac/file/JavacFileManager;->preRegister(Lorg/openjdk/tools/javac/util/Context;)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/main/Main;->compile([Ljava/lang/String;Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/main/Main$Result;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Main;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    instance-of v1, v0, Lorg/openjdk/tools/javac/file/JavacFileManager;

    if-eqz v1, :cond_0

    .line 5
    :try_start_0
    check-cast v0, Lorg/openjdk/tools/javac/file/JavacFileManager;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/file/JavacFileManager;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/main/Main;->bugMessage(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object p1
.end method

.method public compile([Ljava/lang/String;Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/main/Main$Result;
    .locals 5

    .line 7
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Main;->stdOut:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    .line 8
    sget-object v1, Lorg/openjdk/tools/javac/util/Log;->outKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p2, v1, v0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 9
    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Main;->stdErr:Ljava/io/PrintWriter;

    if-eqz v0, :cond_1

    .line 10
    sget-object v1, Lorg/openjdk/tools/javac/util/Log;->errKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p2, v1, v0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 11
    :cond_1
    invoke-static {p2}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/main/Main;->log:Lorg/openjdk/tools/javac/util/Log;

    .line 12
    array-length v1, p1

    if-nez v1, :cond_2

    .line 13
    new-instance p1, Lorg/openjdk/tools/javac/main/Main$1;

    invoke-direct {p1, p0, v0}, Lorg/openjdk/tools/javac/main/Main$1;-><init>(Lorg/openjdk/tools/javac/main/Main;Lorg/openjdk/tools/javac/util/Log;)V

    .line 14
    :try_start_0
    sget-object p2, Lorg/openjdk/tools/javac/main/Option;->HELP:Lorg/openjdk/tools/javac/main/Option;

    const-string v0, "-help"

    invoke-virtual {p2, p1, v0}, Lorg/openjdk/tools/javac/main/Option;->process(Lorg/openjdk/tools/javac/main/OptionHelper;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/main/Option$InvalidValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :catch_0
    sget-object p1, Lorg/openjdk/tools/javac/main/Main$Result;->CMDERR:Lorg/openjdk/tools/javac/main/Main$Result;

    return-object p1

    .line 16
    :cond_2
    :try_start_1
    const-string v0, "JDK_JAVAC_OPTIONS"

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/main/CommandLine;->parse(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lorg/openjdk/tools/javac/main/CommandLine$UnmatchedQuote; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e

    .line 17
    invoke-static {p2}, Lorg/openjdk/tools/javac/main/Arguments;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/main/Arguments;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lorg/openjdk/tools/javac/main/Main;->ownName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/openjdk/tools/javac/main/Arguments;->init(Ljava/lang/String;[Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/Main;->log:Lorg/openjdk/tools/javac/util/Log;

    iget p1, p1, Lorg/openjdk/tools/javac/util/Log;->nerrors:I

    if-lez p1, :cond_3

    .line 20
    sget-object p1, Lorg/openjdk/tools/javac/main/Main$Result;->CMDERR:Lorg/openjdk/tools/javac/main/Main$Result;

    return-object p1

    .line 21
    :cond_3
    invoke-static {p2}, Lorg/openjdk/tools/javac/util/Options;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Options;

    move-result-object p1

    .line 22
    const-string v1, "stdout"

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 23
    iget-object v1, p0, Lorg/openjdk/tools/javac/main/Main;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/Log;->flush()V

    .line 24
    iget-object v1, p0, Lorg/openjdk/tools/javac/main/Main;->log:Lorg/openjdk/tools/javac/util/Log;

    new-instance v3, Ljava/io/PrintWriter;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v3, v4, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/util/Log;->setWriters(Ljava/io/PrintWriter;)V

    .line 25
    :cond_4
    const-string v1, "nonBatchMode"

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/util/Options;->isUnset(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 26
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    .line 27
    invoke-static {p2}, Lorg/openjdk/tools/javac/file/CacheFSInfo;->preRegister(Lorg/openjdk/tools/javac/util/Context;)V

    .line 28
    :cond_5
    const-class v1, Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-virtual {p2, v1}, Lorg/openjdk/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/javax/tools/JavaFileManager;

    iput-object v1, p0, Lorg/openjdk/tools/javac/main/Main;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    .line 29
    instance-of v3, v1, Lorg/openjdk/tools/javac/file/BaseFileManager;

    if-eqz v3, :cond_6

    .line 30
    check-cast v1, Lorg/openjdk/tools/javac/file/BaseFileManager;

    invoke-virtual {v1, p2}, Lorg/openjdk/tools/javac/file/BaseFileManager;->setContext(Lorg/openjdk/tools/javac/util/Context;)V

    .line 31
    iget-object v1, p0, Lorg/openjdk/tools/javac/main/Main;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    check-cast v1, Lorg/openjdk/tools/javac/file/BaseFileManager;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/main/Arguments;->getDeferredFileManagerOptions()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/file/BaseFileManager;->handleOptions(Ljava/util/Map;)Z

    move-result v1

    goto :goto_0

    :cond_6
    move v1, v2

    .line 32
    :goto_0
    const-string v3, "showClass"

    invoke-virtual {p1, v3}, Lorg/openjdk/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 33
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 34
    const-string v4, "org.openjdk.tools.javac.Main"

    .line 35
    :cond_7
    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/main/Main;->showClass(Ljava/lang/String;)V

    .line 36
    :cond_8
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/main/Arguments;->validate()Z

    move-result v3

    and-int/2addr v1, v3

    if-eqz v1, :cond_1b

    .line 37
    iget-object v1, p0, Lorg/openjdk/tools/javac/main/Main;->log:Lorg/openjdk/tools/javac/util/Log;

    iget v1, v1, Lorg/openjdk/tools/javac/util/Log;->nerrors:I

    if-lez v1, :cond_9

    goto/16 :goto_e

    .line 38
    :cond_9
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/main/Arguments;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 39
    sget-object p1, Lorg/openjdk/tools/javac/main/Main$Result;->OK:Lorg/openjdk/tools/javac/main/Main$Result;

    return-object p1

    .line 40
    :cond_a
    const-string v1, "debug.completionDeps"

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 41
    invoke-static {p2}, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;->preRegister(Lorg/openjdk/tools/javac/util/Context;)V

    .line 42
    :cond_b
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/main/Arguments;->getPluginOpts()Ljava/util/Set;

    move-result-object v1

    .line 43
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    const-class v3, Lorg/openjdk/tools/javac/platform/PlatformDescription;

    invoke-virtual {p2, v3}, Lorg/openjdk/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 44
    :cond_c
    invoke-static {p2}, Lorg/openjdk/tools/javac/api/BasicJavacTask;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/source/util/JavacTask;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/api/BasicJavacTask;

    .line 45
    invoke-virtual {v3, v1}, Lorg/openjdk/tools/javac/api/BasicJavacTask;->initPlugins(Ljava/util/Set;)V

    .line 46
    :cond_d
    iget-object v1, p0, Lorg/openjdk/tools/javac/main/Main;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    sget-object v3, Lorg/openjdk/tools/javac/main/Option;->MULTIRELEASE:Lorg/openjdk/tools/javac/main/Option;

    iget-object v4, v3, Lorg/openjdk/tools/javac/main/Option;->primaryName:Ljava/lang/String;

    invoke-interface {v1, v4}, Lorg/openjdk/javax/tools/OptionChecker;->isSupportedOption(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_e

    .line 47
    invoke-static {p2}, Lorg/openjdk/tools/javac/jvm/Target;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/jvm/Target;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/Target;->multiReleaseValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    .line 49
    iget-object v2, p0, Lorg/openjdk/tools/javac/main/Main;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    iget-object v3, v3, Lorg/openjdk/tools/javac/main/Option;->primaryName:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lorg/openjdk/javax/tools/JavaFileManager;->handleOption(Ljava/lang/String;Ljava/util/Iterator;)Z

    .line 50
    :cond_e
    invoke-static {p2}, Lorg/openjdk/tools/javac/main/JavaCompiler;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/main/JavaCompiler;

    move-result-object v1

    .line 51
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/main/Arguments;->getDocLintOpts()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    .line 52
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    .line 53
    invoke-static {p2}, Lorg/openjdk/tools/javac/api/BasicJavacTask;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/source/util/JavacTask;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/api/BasicJavacTask;

    .line 54
    invoke-virtual {p2, v2}, Lorg/openjdk/tools/javac/api/BasicJavacTask;->initDocLint(Lorg/openjdk/tools/javac/util/List;)V

    .line 55
    :cond_f
    sget-object p2, Lorg/openjdk/tools/javac/main/Option;->XSTDOUT:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/Options;->get(Lorg/openjdk/tools/javac/main/Option;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_10

    .line 56
    iget-object p2, v1, Lorg/openjdk/tools/javac/main/JavaCompiler;->closeables:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, p0, Lorg/openjdk/tools/javac/main/Main;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v3, Lorg/openjdk/tools/javac/util/Log$WriterKind;->NOTICE:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/Log;->getWriter(Lorg/openjdk/tools/javac/util/Log$WriterKind;)Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    iput-object p2, v1, Lorg/openjdk/tools/javac/main/JavaCompiler;->closeables:Lorg/openjdk/tools/javac/util/List;

    .line 57
    :cond_10
    :try_start_2
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/main/Arguments;->getFileObjects()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/main/Arguments;->getClassNames()Ljava/util/Set;

    move-result-object v0

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v0, v3, v2}, Lorg/openjdk/tools/javac/main/JavaCompiler;->compile(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 58
    iget-object p2, p0, Lorg/openjdk/tools/javac/main/Main;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object p2, p2, Lorg/openjdk/tools/javac/util/Log;->expectDiagKeys:Ljava/util/Set;

    if-eqz p2, :cond_12

    .line 59
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_11

    .line 60
    iget-object p2, p0, Lorg/openjdk/tools/javac/main/Main;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v0, "all expected diagnostics found"

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/Log;->printRawLines(Ljava/lang/String;)V

    .line 61
    sget-object p1, Lorg/openjdk/tools/javac/main/Main$Result;->OK:Lorg/openjdk/tools/javac/main/Main$Result;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/StackOverflowError; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/openjdk/tools/javac/util/FatalError; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/openjdk/tools/javac/processing/AnnotationProcessingError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/openjdk/tools/javac/util/PropagatedException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    :try_start_3
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->close()V
    :try_end_3
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_3 .. :try_end_3} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 63
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_2
    move-exception p1

    goto/16 :goto_5

    :catch_3
    move-exception p1

    goto/16 :goto_6

    :catch_4
    move-exception p2

    goto/16 :goto_8

    :catch_5
    move-exception p1

    goto/16 :goto_a

    :catch_6
    move-exception p1

    goto/16 :goto_a

    .line 64
    :cond_11
    :try_start_4
    iget-object p2, p0, Lorg/openjdk/tools/javac/main/Main;->log:Lorg/openjdk/tools/javac/util/Log;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected diagnostic keys not found: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/openjdk/tools/javac/main/Main;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Log;->expectDiagKeys:Ljava/util/Set;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/Log;->printRawLines(Ljava/lang/String;)V

    .line 65
    sget-object p1, Lorg/openjdk/tools/javac/main/Main$Result;->ERROR:Lorg/openjdk/tools/javac/main/Main$Result;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/StackOverflowError; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/openjdk/tools/javac/util/FatalError; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/openjdk/tools/javac/processing/AnnotationProcessingError; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/openjdk/tools/javac/util/PropagatedException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 66
    :try_start_5
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->close()V
    :try_end_5
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_5 .. :try_end_5} :catch_7

    return-object p1

    :catch_7
    move-exception p1

    .line 67
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 68
    :cond_12
    :try_start_6
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->errorCount()I

    move-result p2

    if-nez p2, :cond_13

    sget-object p1, Lorg/openjdk/tools/javac/main/Main$Result;->OK:Lorg/openjdk/tools/javac/main/Main$Result;

    goto :goto_1

    :cond_13
    sget-object p1, Lorg/openjdk/tools/javac/main/Main$Result;->ERROR:Lorg/openjdk/tools/javac/main/Main$Result;
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/StackOverflowError; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lorg/openjdk/tools/javac/util/FatalError; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/openjdk/tools/javac/processing/AnnotationProcessingError; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/openjdk/tools/javac/util/PropagatedException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 69
    :goto_1
    :try_start_7
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->close()V
    :try_end_7
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_7 .. :try_end_7} :catch_8

    return-object p1

    :catch_8
    move-exception p1

    .line 70
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_2
    if-eqz v1, :cond_14

    .line 71
    :try_start_8
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->errorCount()I

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "dev"

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_c

    .line 72
    :cond_14
    :goto_3
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/main/Main;->bugMessage(Ljava/lang/Throwable;)V

    .line 73
    :cond_15
    sget-object p1, Lorg/openjdk/tools/javac/main/Main$Result;->ABNORMAL:Lorg/openjdk/tools/javac/main/Main$Result;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v1, :cond_16

    .line 74
    :try_start_9
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->close()V
    :try_end_9
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_4

    :catch_9
    move-exception p1

    .line 75
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_16
    :goto_4
    return-object p1

    .line 76
    :goto_5
    :try_start_a
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/PropagatedException;->getCause()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 77
    :goto_6
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/main/Main;->apMessage(Lorg/openjdk/tools/javac/processing/AnnotationProcessingError;)V

    .line 78
    sget-object p1, Lorg/openjdk/tools/javac/main/Main$Result;->SYSERR:Lorg/openjdk/tools/javac/main/Main$Result;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v1, :cond_17

    .line 79
    :try_start_b
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->close()V
    :try_end_b
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_7

    :catch_a
    move-exception p1

    .line 80
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_17
    :goto_7
    return-object p1

    .line 81
    :goto_8
    :try_start_c
    invoke-virtual {p0, p2, p1}, Lorg/openjdk/tools/javac/main/Main;->feMessage(Ljava/lang/Throwable;Lorg/openjdk/tools/javac/util/Options;)V

    .line 82
    sget-object p1, Lorg/openjdk/tools/javac/main/Main$Result;->SYSERR:Lorg/openjdk/tools/javac/main/Main$Result;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v1, :cond_18

    .line 83
    :try_start_d
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->close()V
    :try_end_d
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_d .. :try_end_d} :catch_b

    goto :goto_9

    :catch_b
    move-exception p1

    .line 84
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_18
    :goto_9
    return-object p1

    .line 85
    :goto_a
    :try_start_e
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/main/Main;->resourceMessage(Ljava/lang/Throwable;)V

    .line 86
    sget-object p1, Lorg/openjdk/tools/javac/main/Main$Result;->SYSERR:Lorg/openjdk/tools/javac/main/Main$Result;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v1, :cond_19

    .line 87
    :try_start_f
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->close()V
    :try_end_f
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_f .. :try_end_f} :catch_c

    goto :goto_b

    :catch_c
    move-exception p1

    .line 88
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_19
    :goto_b
    return-object p1

    :goto_c
    if-eqz v1, :cond_1a

    .line 89
    :try_start_10
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->close()V
    :try_end_10
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_10 .. :try_end_10} :catch_d

    goto :goto_d

    :catch_d
    move-exception p1

    .line 90
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 91
    :cond_1a
    :goto_d
    throw p1

    .line 92
    :cond_1b
    :goto_e
    sget-object p1, Lorg/openjdk/tools/javac/main/Main$Result;->CMDERR:Lorg/openjdk/tools/javac/main/Main$Result;

    return-object p1

    :catch_e
    move-exception p1

    goto :goto_f

    :catch_f
    move-exception p1

    goto :goto_10

    :catch_10
    move-exception p1

    goto :goto_10

    :catch_11
    move-exception p1

    goto :goto_11

    .line 93
    :goto_f
    iget-object p2, p0, Lorg/openjdk/tools/javac/main/Main;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v0, Lorg/openjdk/tools/javac/util/Log$PrefixKind;->JAVAC:Lorg/openjdk/tools/javac/util/Log$PrefixKind;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "msg.io"

    invoke-virtual {p2, v0, v2, v1}, Lorg/openjdk/tools/javac/util/Log;->printLines(Lorg/openjdk/tools/javac/util/Log$PrefixKind;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iget-object p2, p0, Lorg/openjdk/tools/javac/main/Main;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v0, Lorg/openjdk/tools/javac/util/Log$WriterKind;->NOTICE:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/Log;->getWriter(Lorg/openjdk/tools/javac/util/Log$WriterKind;)Ljava/io/PrintWriter;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 95
    sget-object p1, Lorg/openjdk/tools/javac/main/Main$Result;->SYSERR:Lorg/openjdk/tools/javac/main/Main$Result;

    return-object p1

    .line 96
    :goto_10
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "err.file.not.found"

    invoke-virtual {p0, p2, p1}, Lorg/openjdk/tools/javac/main/Main;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    sget-object p1, Lorg/openjdk/tools/javac/main/Main$Result;->SYSERR:Lorg/openjdk/tools/javac/main/Main$Result;

    return-object p1

    .line 98
    :goto_11
    iget-object p1, p1, Lorg/openjdk/tools/javac/main/CommandLine$UnmatchedQuote;->variableName:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "err.unmatched.quote"

    invoke-virtual {p0, p2, p1}, Lorg/openjdk/tools/javac/main/Main;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    sget-object p1, Lorg/openjdk/tools/javac/main/Main$Result;->CMDERR:Lorg/openjdk/tools/javac/main/Main$Result;

    return-object p1
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/main/Main;->apiMode:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/main/Main;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/main/Main;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object p2, Lorg/openjdk/tools/javac/util/Log$PrefixKind;->JAVAC:Lorg/openjdk/tools/javac/util/Log$PrefixKind;

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Main;->ownName:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "msg.usage"

    invoke-virtual {p1, p2, v1, v0}, Lorg/openjdk/tools/javac/util/Log;->printLines(Lorg/openjdk/tools/javac/util/Log$PrefixKind;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Main;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v1, Lorg/openjdk/tools/javac/util/Log$PrefixKind;->JAVAC:Lorg/openjdk/tools/javac/util/Log$PrefixKind;

    invoke-virtual {v0, v1, p1, p2}, Lorg/openjdk/tools/javac/util/Log;->localize(Lorg/openjdk/tools/javac/util/Log$PrefixKind;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lorg/openjdk/tools/javac/util/PropagatedException;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lorg/openjdk/tools/javac/util/PropagatedException;-><init>(Ljava/lang/RuntimeException;)V

    throw p2
.end method

.method public feMessage(Ljava/lang/Throwable;Lorg/openjdk/tools/javac/util/Options;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Main;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Log;->printRawLines(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "dev"

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    iget-object p2, p0, Lorg/openjdk/tools/javac/main/Main;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v0, Lorg/openjdk/tools/javac/util/Log$WriterKind;->NOTICE:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/Log;->getWriter(Lorg/openjdk/tools/javac/util/Log$WriterKind;)Ljava/io/PrintWriter;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public ioMessage(Ljava/lang/Throwable;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Main;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v1, Lorg/openjdk/tools/javac/util/Log$PrefixKind;->JAVAC:Lorg/openjdk/tools/javac/util/Log$PrefixKind;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "msg.io"

    invoke-virtual {v0, v1, v3, v2}, Lorg/openjdk/tools/javac/util/Log;->printLines(Lorg/openjdk/tools/javac/util/Log$PrefixKind;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Main;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v1, Lorg/openjdk/tools/javac/util/Log$WriterKind;->NOTICE:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Log;->getWriter(Lorg/openjdk/tools/javac/util/Log$WriterKind;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public pluginMessage(Ljava/lang/Throwable;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Main;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v1, Lorg/openjdk/tools/javac/util/Log$PrefixKind;->JAVAC:Lorg/openjdk/tools/javac/util/Log$PrefixKind;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "msg.plugin.uncaught.exception"

    invoke-virtual {v0, v1, v3, v2}, Lorg/openjdk/tools/javac/util/Log;->printLines(Lorg/openjdk/tools/javac/util/Log$PrefixKind;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Main;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v1, Lorg/openjdk/tools/javac/util/Log$WriterKind;->NOTICE:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Log;->getWriter(Lorg/openjdk/tools/javac/util/Log$WriterKind;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public resourceMessage(Ljava/lang/Throwable;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Main;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v1, Lorg/openjdk/tools/javac/util/Log$PrefixKind;->JAVAC:Lorg/openjdk/tools/javac/util/Log$PrefixKind;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "msg.resource"

    invoke-virtual {v0, v1, v3, v2}, Lorg/openjdk/tools/javac/util/Log;->printLines(Lorg/openjdk/tools/javac/util/Log$PrefixKind;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Main;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v1, Lorg/openjdk/tools/javac/util/Log$WriterKind;->NOTICE:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Log;->getWriter(Lorg/openjdk/tools/javac/util/Log$WriterKind;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public showClass(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Main;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v1, Lorg/openjdk/tools/javac/util/Log$WriterKind;->NOTICE:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Log;->getWriter(Lorg/openjdk/tools/javac/util/Log$WriterKind;)Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javac: show class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v4, 0x2e

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".class"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    new-instance v2, Ljava/security/DigestInputStream;

    invoke-direct {v2, p1, v1}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v3, 0x2000

    :try_start_2
    new-array v3, v3, [B

    :cond_1
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-byte v5, v1, v4

    const-string v6, "%02x"

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  MD5 checksum: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_4

    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_4

    :catchall_1
    move-exception v1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v2

    :try_start_7
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_2
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v2

    if-eqz p1, :cond_3

    :try_start_9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception p1

    :try_start_a
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw v2
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  cannot compute digest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    :goto_5
    return-void
.end method

.method public varargs warning(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Main;->log:Lorg/openjdk/tools/javac/util/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/openjdk/tools/javac/main/Main;->ownName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/openjdk/tools/javac/main/Main;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v3, Lorg/openjdk/tools/javac/util/Log$PrefixKind;->JAVAC:Lorg/openjdk/tools/javac/util/Log$PrefixKind;

    invoke-virtual {v2, v3, p1, p2}, Lorg/openjdk/tools/javac/util/Log;->localize(Lorg/openjdk/tools/javac/util/Log$PrefixKind;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Log;->printRawLines(Ljava/lang/String;)V

    return-void
.end method
