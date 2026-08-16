.class public Lorg/openjdk/tools/sjavac/PubApiExtractor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final context:Lorg/openjdk/tools/javac/util/Context;

.field final fileManager:Lorg/openjdk/tools/sjavac/comp/SmartFileManager;

.field final task:Lorg/openjdk/javax/tools/JavaCompiler$CompilationTask;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/sjavac/options/Options;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/openjdk/tools/javac/api/JavacTool;->create()Lorg/openjdk/tools/javac/api/JavacTool;

    move-result-object v0

    new-instance v2, Lorg/openjdk/tools/sjavac/comp/SmartFileManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Lorg/openjdk/tools/javac/api/JavacTool;->getStandardFileManager(Lorg/openjdk/javax/tools/DiagnosticListener;Ljava/util/Locale;Ljava/nio/charset/Charset;)Lorg/openjdk/tools/javac/file/JavacFileManager;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/openjdk/tools/sjavac/comp/SmartFileManager;-><init>(Lorg/openjdk/javax/tools/JavaFileManager;)V

    iput-object v2, p0, Lorg/openjdk/tools/sjavac/PubApiExtractor;->fileManager:Lorg/openjdk/tools/sjavac/comp/SmartFileManager;

    new-instance v8, Lorg/openjdk/tools/javac/util/Context;

    invoke-direct {v8}, Lorg/openjdk/tools/javac/util/Context;-><init>()V

    iput-object v8, p0, Lorg/openjdk/tools/sjavac/PubApiExtractor;->context:Lorg/openjdk/tools/javac/util/Context;

    invoke-virtual {p1}, Lorg/openjdk/tools/sjavac/options/Options;->prepJavacArgs()[Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/io/PrintWriter;

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v7, v8

    invoke-virtual/range {v0 .. v7}, Lorg/openjdk/tools/javac/api/JavacTool;->getTask(Ljava/io/Writer;Lorg/openjdk/javax/tools/JavaFileManager;Lorg/openjdk/javax/tools/DiagnosticListener;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/source/util/JavacTask;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/PubApiExtractor;->task:Lorg/openjdk/javax/tools/JavaCompiler$CompilationTask;

    invoke-static {v8}, Lorg/openjdk/tools/javac/main/JavaCompiler;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/main/JavaCompiler;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/PubApiExtractor;->fileManager:Lorg/openjdk/tools/sjavac/comp/SmartFileManager;

    invoke-virtual {v0}, Lorg/openjdk/javax/tools/ForwardingJavaFileManager;->close()V

    return-void
.end method

.method public getPubApi(Ljava/lang/String;)Lorg/openjdk/tools/sjavac/pubapi/PubApi;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/PubApiExtractor;->context:Lorg/openjdk/tools/javac/util/Context;

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/Symtab;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/PubApiExtractor;->context:Lorg/openjdk/tools/javac/util/Context;

    invoke-static {v1}, Lorg/openjdk/tools/javac/code/ClassFinder;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/ClassFinder;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/sjavac/PubApiExtractor;->context:Lorg/openjdk/tools/javac/util/Context;

    invoke-static {v2}, Lorg/openjdk/tools/javac/util/Names;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Convert;->packagePart(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/code/Symtab;->inferModule(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lorg/openjdk/tools/javac/code/ClassFinder;->loadClass(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p1

    new-instance v0, Lorg/openjdk/tools/sjavac/comp/PubapiVisitor;

    invoke-direct {v0}, Lorg/openjdk/tools/sjavac/comp/PubapiVisitor;-><init>()V

    invoke-virtual {v0, p1}, Lorg/openjdk/javax/lang/model/util/AbstractElementVisitor6;->visit(Lorg/openjdk/javax/lang/model/element/Element;)Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/openjdk/tools/sjavac/comp/PubapiVisitor;->getCollectedPubApi()Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    move-result-object p1

    return-object p1
.end method
