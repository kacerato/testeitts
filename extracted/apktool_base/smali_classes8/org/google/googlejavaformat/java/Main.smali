.class public final Lorg/google/googlejavaformat/java/Main;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_THREADS:I = 0x14

.field private static final STDIN_FILENAME:Ljava/lang/String; = "<stdin>"


# instance fields
.field private final errWriter:Ljava/io/PrintWriter;

.field private final inStream:Ljava/io/InputStream;

.field private final outWriter:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Ljava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "outWriter",
            "errWriter",
            "inStream"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/google/googlejavaformat/java/Main;->outWriter:Ljava/io/PrintWriter;

    iput-object p2, p0, Lorg/google/googlejavaformat/java/Main;->errWriter:Ljava/io/PrintWriter;

    iput-object p3, p0, Lorg/google/googlejavaformat/java/Main;->inStream:Ljava/io/InputStream;

    return-void
.end method

.method private formatFiles(Lorg/google/googlejavaformat/java/CommandLineOptions;Lorg/google/googlejavaformat/java/JavaFormatterOptions;)I
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parameters",
            "options"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/google/googlejavaformat/java/CommandLineOptions;->files()Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/16 v1, 0x14

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p1}, Lorg/google/googlejavaformat/java/CommandLineOptions;->files()Lcom/google/common/collect/g1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/g1;->i()Lcom/google/common/collect/e3;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v7, ".java"

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v5, p0, Lorg/google/googlejavaformat/java/Main;->errWriter:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping non-Java file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-array v6, v6, [Ljava/lang/String;

    invoke-static {v4, v6}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v6

    :try_start_0
    new-instance v7, Ljava/lang/String;

    invoke-static {v6}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v8

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v8, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lorg/google/googlejavaformat/java/FormatFileCallable;

    invoke-direct {v4, p1, v7, p2}, Lorg/google/googlejavaformat/java/FormatFileCallable;-><init>(Lorg/google/googlejavaformat/java/CommandLineOptions;Ljava/lang/String;Lorg/google/googlejavaformat/java/JavaFormatterOptions;)V

    invoke-interface {v0, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-interface {v2, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lorg/google/googlejavaformat/java/Main;->errWriter:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": could not read file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v0, v5

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/file/Path;

    :try_start_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1}, Lorg/google/googlejavaformat/java/CommandLineOptions;->setExitIfChanged()Z

    move-result v7

    if-eqz v7, :cond_3

    move v0, v6

    :cond_3
    invoke-virtual {p1}, Lorg/google/googlejavaformat/java/CommandLineOptions;->inPlace()Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    :try_start_2
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    new-array v4, v6, [Ljava/nio/file/OpenOption;

    invoke-static {v3, v2, v4}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v2, p0, Lorg/google/googlejavaformat/java/Main;->errWriter:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": could not write file: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    :goto_2
    move v0, v6

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lorg/google/googlejavaformat/java/CommandLineOptions;->dryRun()Z

    move-result v7

    if-eqz v7, :cond_7

    if-nez v4, :cond_2

    iget-object v2, p0, Lorg/google/googlejavaformat/java/Main;->outWriter:Ljava/io/PrintWriter;

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lorg/google/googlejavaformat/java/Main;->outWriter:Ljava/io/PrintWriter;

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_5

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lorg/google/googlejavaformat/java/FormatterException;

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lorg/google/googlejavaformat/java/FormatterException;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/FormatterException;->diagnostics()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/google/googlejavaformat/FormatterDiagnostic;

    iget-object v4, p0, Lorg/google/googlejavaformat/java/Main;->errWriter:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/google/googlejavaformat/FormatterDiagnostic;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lorg/google/googlejavaformat/java/Main;->errWriter:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": error: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    iget-object v2, p0, Lorg/google/googlejavaformat/java/Main;->errWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto/16 :goto_2

    :goto_5
    iget-object v2, p0, Lorg/google/googlejavaformat/java/Main;->errWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    xor-int/lit8 p1, v0, 0x1

    return p1
.end method

.method private formatStdin(Lorg/google/googlejavaformat/java/CommandLineOptions;Lorg/google/googlejavaformat/java/JavaFormatterOptions;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parameters",
            "options"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/google/googlejavaformat/java/Main;->inStream:Ljava/io/InputStream;

    invoke-static {v1}, LD2/g;->u(Ljava/io/InputStream;)[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p1}, Lorg/google/googlejavaformat/java/CommandLineOptions;->assumeFilename()Ljava/util/Optional;

    move-result-object v1

    const-string v2, "<stdin>"

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_1
    new-instance v4, Lorg/google/googlejavaformat/java/FormatFileCallable;

    invoke-direct {v4, p1, v0, p2}, Lorg/google/googlejavaformat/java/FormatFileCallable;-><init>(Lorg/google/googlejavaformat/java/CommandLineOptions;Ljava/lang/String;Lorg/google/googlejavaformat/java/JavaFormatterOptions;)V

    invoke-virtual {v4}, Lorg/google/googlejavaformat/java/FormatFileCallable;->call()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/google/googlejavaformat/java/CommandLineOptions;->setExitIfChanged()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {p1}, Lorg/google/googlejavaformat/java/CommandLineOptions;->dryRun()Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez v0, :cond_2

    iget-object p1, p0, Lorg/google/googlejavaformat/java/Main;->outWriter:Ljava/io/PrintWriter;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/google/googlejavaformat/java/Main;->outWriter:Ljava/io/PrintWriter;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/google/googlejavaformat/java/FormatterException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    move v2, v4

    goto :goto_4

    :goto_2
    invoke-virtual {p1}, Lorg/google/googlejavaformat/java/FormatterException;->diagnostics()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/google/googlejavaformat/FormatterDiagnostic;

    iget-object v0, p0, Lorg/google/googlejavaformat/java/Main;->errWriter:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/FormatterDiagnostic;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    :goto_4
    xor-int/lit8 p1, v2, 0x1

    return p1

    :catch_1
    move-exception p1

    new-instance p2, Ljava/io/IOError;

    invoke-direct {p2, p1}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v2, v4, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    :try_start_0
    new-instance v2, Lorg/google/googlejavaformat/java/Main;

    sget-object v3, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v2, v0, v1, v3}, Lorg/google/googlejavaformat/java/Main;-><init>(Ljava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/io/InputStream;)V

    invoke-virtual {v2, p0}, Lorg/google/googlejavaformat/java/Main;->format([Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lorg/google/googlejavaformat/java/UsageException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void

    :goto_1
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    throw p0
.end method

.method public static varargs processArgs([Ljava/lang/String;)Lorg/google/googlejavaformat/java/CommandLineOptions;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/google/googlejavaformat/java/UsageException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/google/googlejavaformat/java/CommandLineOptionsParser;->parse(Ljava/lang/Iterable;)Lorg/google/googlejavaformat/java/CommandLineOptions;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/CommandLineOptions;->files()Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/CommandLineOptions;->stdin()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/CommandLineOptions;->inPlace()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/CommandLineOptions;->files()Lcom/google/common/collect/g1;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/google/googlejavaformat/java/UsageException;

    const-string v0, "in-place formatting was requested but no files were provided"

    invoke-direct {p0, v0}, Lorg/google/googlejavaformat/java/UsageException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/CommandLineOptions;->isSelection()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Lorg/google/googlejavaformat/java/UsageException;

    const-string v0, "partial formatting is only support for a single file"

    invoke-direct {p0, v0}, Lorg/google/googlejavaformat/java/UsageException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/CommandLineOptions;->offsets()Lcom/google/common/collect/g1;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/CommandLineOptions;->lengths()Lcom/google/common/collect/g1;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ne v1, v2, :cond_d

    if-gtz v0, :cond_6

    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/CommandLineOptions;->version()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/CommandLineOptions;->help()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    new-instance p0, Lorg/google/googlejavaformat/java/UsageException;

    const-string v0, "no files were provided"

    invoke-direct {p0, v0}, Lorg/google/googlejavaformat/java/UsageException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/CommandLineOptions;->stdin()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/CommandLineOptions;->files()Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    new-instance p0, Lorg/google/googlejavaformat/java/UsageException;

    const-string v0, "cannot format from standard input and files simultaneously"

    invoke-direct {p0, v0}, Lorg/google/googlejavaformat/java/UsageException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_3
    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/CommandLineOptions;->assumeFilename()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/CommandLineOptions;->stdin()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    new-instance p0, Lorg/google/googlejavaformat/java/UsageException;

    const-string v0, "--assume-filename is only supported when formatting standard input"

    invoke-direct {p0, v0}, Lorg/google/googlejavaformat/java/UsageException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_4
    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/CommandLineOptions;->dryRun()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/CommandLineOptions;->inPlace()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_5

    :cond_b
    new-instance p0, Lorg/google/googlejavaformat/java/UsageException;

    const-string v0, "cannot use --dry-run and --in-place at the same time"

    invoke-direct {p0, v0}, Lorg/google/googlejavaformat/java/UsageException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_5
    return-object p0

    :cond_d
    new-instance p0, Lorg/google/googlejavaformat/java/UsageException;

    const-string v0, "-offsets and -lengths flags must be provided in matching pairs"

    invoke-direct {p0, v0}, Lorg/google/googlejavaformat/java/UsageException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_6

    :catch_0
    move-exception p0

    goto :goto_7

    :goto_6
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Lorg/google/googlejavaformat/java/UsageException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/google/googlejavaformat/java/UsageException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_7
    new-instance v0, Lorg/google/googlejavaformat/java/UsageException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/google/googlejavaformat/java/UsageException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final versionString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "google-java-format: Version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/google/googlejavaformat/java/GoogleJavaFormatVersion;->version()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public varargs format([Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/google/googlejavaformat/java/UsageException;
        }
    .end annotation

    invoke-static {p1}, Lorg/google/googlejavaformat/java/Main;->processArgs([Ljava/lang/String;)Lorg/google/googlejavaformat/java/CommandLineOptions;

    move-result-object p1

    invoke-virtual {p1}, Lorg/google/googlejavaformat/java/CommandLineOptions;->version()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/google/googlejavaformat/java/Main;->errWriter:Ljava/io/PrintWriter;

    invoke-static {}, Lorg/google/googlejavaformat/java/Main;->versionString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lorg/google/googlejavaformat/java/CommandLineOptions;->help()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lorg/google/googlejavaformat/java/JavaFormatterOptions;->builder()Lorg/google/googlejavaformat/java/JavaFormatterOptions$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/google/googlejavaformat/java/CommandLineOptions;->aosp()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;->AOSP:Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;->GOOGLE:Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;

    :goto_0
    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/java/JavaFormatterOptions$Builder;->style(Lorg/google/googlejavaformat/java/JavaFormatterOptions$Style;)Lorg/google/googlejavaformat/java/JavaFormatterOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/JavaFormatterOptions$Builder;->build()Lorg/google/googlejavaformat/java/JavaFormatterOptions;

    move-result-object v0

    invoke-virtual {p1}, Lorg/google/googlejavaformat/java/CommandLineOptions;->stdin()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, v0}, Lorg/google/googlejavaformat/java/Main;->formatStdin(Lorg/google/googlejavaformat/java/CommandLineOptions;Lorg/google/googlejavaformat/java/JavaFormatterOptions;)I

    move-result p1

    return p1

    :cond_2
    invoke-direct {p0, p1, v0}, Lorg/google/googlejavaformat/java/Main;->formatFiles(Lorg/google/googlejavaformat/java/CommandLineOptions;Lorg/google/googlejavaformat/java/JavaFormatterOptions;)I

    move-result p1

    return p1

    :cond_3
    new-instance p1, Lorg/google/googlejavaformat/java/UsageException;

    invoke-direct {p1}, Lorg/google/googlejavaformat/java/UsageException;-><init>()V

    throw p1
.end method
