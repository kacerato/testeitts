.class public final Lorg/openjdk/tools/javac/api/JavacTool;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/tools/JavaCompiler;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lorg/openjdk/tools/javac/api/JavacTool;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/api/JavacTool;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/api/JavacTool;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getSourceVersions()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/SourceVersion;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/openjdk/javax/lang/model/SourceVersion;->RELEASE_3:Lorg/openjdk/javax/lang/model/SourceVersion;

    invoke-static {}, Lorg/openjdk/javax/lang/model/SourceVersion;->latest()Lorg/openjdk/javax/lang/model/SourceVersion;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/EnumSet;->range(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStandardFileManager(Lorg/openjdk/javax/tools/DiagnosticListener;Ljava/util/Locale;Ljava/nio/charset/Charset;)Lorg/openjdk/javax/tools/StandardJavaFileManager;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/api/JavacTool;->getStandardFileManager(Lorg/openjdk/javax/tools/DiagnosticListener;Ljava/util/Locale;Ljava/nio/charset/Charset;)Lorg/openjdk/tools/javac/file/JavacFileManager;

    move-result-object p1

    return-object p1
.end method

.method public getStandardFileManager(Lorg/openjdk/javax/tools/DiagnosticListener;Ljava/util/Locale;Ljava/nio/charset/Charset;)Lorg/openjdk/tools/javac/file/JavacFileManager;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/tools/DiagnosticListener<",
            "-",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;",
            "Ljava/util/Locale;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lorg/openjdk/tools/javac/file/JavacFileManager;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/util/Context;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context;-><init>()V

    .line 3
    const-class v1, Ljava/util/Locale;

    invoke-virtual {v0, v1, p2}, Lorg/openjdk/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 4
    const-class p2, Lorg/openjdk/javax/tools/DiagnosticListener;

    invoke-virtual {v0, p2, p1}, Lorg/openjdk/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    .line 5
    new-instance p2, Ljava/io/PrintWriter;

    if-nez p3, :cond_1

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {p2, v1, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/io/OutputStreamWriter;

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v1, v2, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p2, v1, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 6
    :goto_0
    sget-object v1, Lorg/openjdk/tools/javac/util/Log;->errKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {v0, v1, p2}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 7
    invoke-static {v0}, Lorg/openjdk/tools/javac/file/CacheFSInfo;->preRegister(Lorg/openjdk/tools/javac/util/Context;)V

    .line 8
    new-instance p2, Lorg/openjdk/tools/javac/file/JavacFileManager;

    invoke-direct {p2, v0, p1, p3}, Lorg/openjdk/tools/javac/file/JavacFileManager;-><init>(Lorg/openjdk/tools/javac/util/Context;ZLjava/nio/charset/Charset;)V

    return-object p2
.end method

.method public bridge synthetic getTask(Ljava/io/Writer;Lorg/openjdk/javax/tools/JavaFileManager;Lorg/openjdk/javax/tools/DiagnosticListener;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)Lorg/openjdk/javax/tools/JavaCompiler$CompilationTask;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p6}, Lorg/openjdk/tools/javac/api/JavacTool;->getTask(Ljava/io/Writer;Lorg/openjdk/javax/tools/JavaFileManager;Lorg/openjdk/javax/tools/DiagnosticListener;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)Lorg/openjdk/source/util/JavacTask;

    move-result-object p1

    return-object p1
.end method

.method public getTask(Ljava/io/Writer;Lorg/openjdk/javax/tools/JavaFileManager;Lorg/openjdk/javax/tools/DiagnosticListener;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)Lorg/openjdk/source/util/JavacTask;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "Lorg/openjdk/javax/tools/JavaFileManager;",
            "Lorg/openjdk/javax/tools/DiagnosticListener<",
            "-",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;)",
            "Lorg/openjdk/source/util/JavacTask;"
        }
    .end annotation

    .line 2
    new-instance v7, Lorg/openjdk/tools/javac/util/Context;

    invoke-direct {v7}, Lorg/openjdk/tools/javac/util/Context;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 3
    invoke-virtual/range {v0 .. v7}, Lorg/openjdk/tools/javac/api/JavacTool;->getTask(Ljava/io/Writer;Lorg/openjdk/javax/tools/JavaFileManager;Lorg/openjdk/javax/tools/DiagnosticListener;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/source/util/JavacTask;

    move-result-object p1

    return-object p1
.end method

.method public getTask(Ljava/io/Writer;Lorg/openjdk/javax/tools/JavaFileManager;Lorg/openjdk/javax/tools/DiagnosticListener;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/source/util/JavacTask;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "Lorg/openjdk/javax/tools/JavaFileManager;",
            "Lorg/openjdk/javax/tools/DiagnosticListener<",
            "-",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;",
            "Lorg/openjdk/tools/javac/util/Context;",
            ")",
            "Lorg/openjdk/source/util/JavacTask;"
        }
    .end annotation

    .line 4
    :try_start_0
    invoke-static {p7}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/api/ClientCodeWrapper;

    move-result-object v0

    if-eqz p4, :cond_0

    .line 5
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_5

    :catch_1
    move-exception p1

    goto/16 :goto_6

    :cond_0
    if-eqz p5, :cond_4

    .line 7
    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x2f

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_2

    const/4 v4, 0x0

    .line 9
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-static {v4}, Lorg/openjdk/javax/lang/model/SourceVersion;->isName(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Not a valid module name: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_2
    :goto_2
    invoke-static {v2}, Lorg/openjdk/javax/lang/model/SourceVersion;->isName(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Not a valid class name: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    if-eqz p6, :cond_6

    .line 15
    invoke-virtual {v0, p6}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;->wrapJavaFileObjects(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p6

    .line 16
    invoke-interface {p6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/javax/tools/JavaFileObject;

    .line 17
    invoke-interface {v2}, Lorg/openjdk/javax/tools/JavaFileObject;->getKind()Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    move-result-object v3

    sget-object v4, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->SOURCE:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    if-ne v3, v4, :cond_5

    goto :goto_3

    .line 18
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Compilation unit is not of SOURCE kind: \""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-interface {v2}, Lorg/openjdk/javax/tools/FileObject;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 20
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6
    if-eqz p3, :cond_7

    .line 21
    const-class v1, Lorg/openjdk/javax/tools/DiagnosticListener;

    invoke-virtual {v0, p3}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;->wrap(Lorg/openjdk/javax/tools/DiagnosticListener;)Lorg/openjdk/javax/tools/DiagnosticListener;

    move-result-object v2

    invoke-virtual {p7, v1, v2}, Lorg/openjdk/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_7
    const/4 v1, 0x1

    if-nez p1, :cond_8

    .line 22
    sget-object p1, Lorg/openjdk/tools/javac/util/Log;->errKey:Lorg/openjdk/tools/javac/util/Context$Key;

    new-instance v2, Ljava/io/PrintWriter;

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v2, v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-virtual {p7, p1, v2}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    goto :goto_4

    .line 23
    :cond_8
    sget-object v2, Lorg/openjdk/tools/javac/util/Log;->errKey:Lorg/openjdk/tools/javac/util/Context$Key;

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, p1, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    invoke-virtual {p7, v2, v3}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    :goto_4
    if-nez p2, :cond_9

    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, p3, p1, p1}, Lorg/openjdk/tools/javac/api/JavacTool;->getStandardFileManager(Lorg/openjdk/javax/tools/DiagnosticListener;Ljava/util/Locale;Ljava/nio/charset/Charset;)Lorg/openjdk/tools/javac/file/JavacFileManager;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 25
    iput-boolean v1, p2, Lorg/openjdk/tools/javac/file/BaseFileManager;->autoClose:Z

    .line 26
    :cond_9
    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;->wrap(Lorg/openjdk/javax/tools/JavaFileManager;)Lorg/openjdk/javax/tools/JavaFileManager;

    move-result-object p1

    .line 27
    const-class p2, Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-virtual {p7, p2, p1}, Lorg/openjdk/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 28
    invoke-static {p7}, Lorg/openjdk/tools/javac/main/Arguments;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/main/Arguments;

    move-result-object p2

    .line 29
    const-string p3, "javac"

    invoke-virtual {p2, p3, p4, p5, p6}, Lorg/openjdk/tools/javac/main/Arguments;->init(Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 30
    sget-object p2, Lorg/openjdk/tools/javac/main/Option;->MULTIRELEASE:Lorg/openjdk/tools/javac/main/Option;

    iget-object p3, p2, Lorg/openjdk/tools/javac/main/Option;->primaryName:Ljava/lang/String;

    invoke-interface {p1, p3}, Lorg/openjdk/javax/tools/OptionChecker;->isSupportedOption(Ljava/lang/String;)I

    move-result p3

    if-ne p3, v1, :cond_a

    .line 31
    invoke-static {p7}, Lorg/openjdk/tools/javac/jvm/Target;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/jvm/Target;

    move-result-object p3

    .line 32
    invoke-virtual {p3}, Lorg/openjdk/tools/javac/jvm/Target;->multiReleaseValue()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    .line 33
    iget-object p2, p2, Lorg/openjdk/tools/javac/main/Option;->primaryName:Ljava/lang/String;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lorg/openjdk/javax/tools/JavaFileManager;->handleOption(Ljava/lang/String;Ljava/util/Iterator;)Z

    .line 34
    :cond_a
    new-instance p1, Lorg/openjdk/tools/javac/api/JavacTaskImpl;

    invoke-direct {p1, p7}, Lorg/openjdk/tools/javac/api/JavacTaskImpl;-><init>(Lorg/openjdk/tools/javac/util/Context;)V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/util/PropagatedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 35
    :goto_5
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 36
    :goto_6
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/PropagatedException;->getCause()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public isSupportedOption(Ljava/lang/String;)I
    .locals 3

    invoke-static {}, Lorg/openjdk/tools/javac/main/Option;->getJavacToolOptions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/main/Option;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/main/Option;->hasArg()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public name()Ljava/lang/String;
    .locals 1

    const-string v0, "javac"

    return-object v0
.end method

.method public varargs run(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/OutputStream;[Ljava/lang/String;)I
    .locals 1

    if-nez p3, :cond_0

    sget-object p3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    :cond_0
    array-length p1, p4

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    aget-object v0, p4, p2

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/PrintWriter;

    const/4 p2, 0x1

    invoke-direct {p1, p3, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-static {p4, p1}, Lorg/openjdk/tools/javac/Main;->compile([Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result p1

    return p1
.end method
