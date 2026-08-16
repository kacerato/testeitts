.class public Lorg/openjdk/tools/sjavac/server/RequestHandler;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final sjavac:Lorg/openjdk/tools/sjavac/server/Sjavac;

.field private final socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;Lorg/openjdk/tools/sjavac/server/Sjavac;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/server/RequestHandler;->socket:Ljava/net/Socket;

    iput-object p2, p0, Lorg/openjdk/tools/sjavac/server/RequestHandler;->sjavac:Lorg/openjdk/tools/sjavac/server/Sjavac;

    return-void
.end method

.method private checkInternalErrorLog()V
    .locals 3

    invoke-static {}, Lorg/openjdk/tools/sjavac/server/ServerMain;->getErrorLog()Lorg/openjdk/tools/sjavac/server/log/LazyInitFileLog;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/sjavac/server/log/LazyInitFileLog;->getLogDestination()Ljava/nio/file/Path;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server has encountered an internal error. See "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for details."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Log;->error(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lorg/openjdk/tools/sjavac/server/RequestHandler;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Ljava/io/PrintWriter;

    iget-object v3, p0, Lorg/openjdk/tools/sjavac/server/RequestHandler;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v3, Lorg/openjdk/tools/sjavac/server/RequestHandler$1;

    invoke-direct {v3, p0, v2, v2}, Lorg/openjdk/tools/sjavac/server/RequestHandler$1;-><init>(Lorg/openjdk/tools/sjavac/server/RequestHandler;Ljava/io/Writer;Ljava/io/Writer;)V

    invoke-static {v3}, Lorg/openjdk/tools/sjavac/Log;->setLogForCurrentThread(Lorg/openjdk/tools/sjavac/Log;)V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_2

    :cond_0
    invoke-direct {p0}, Lorg/openjdk/tools/sjavac/server/RequestHandler;->checkInternalErrorLog()V

    iget-object v3, p0, Lorg/openjdk/tools/sjavac/server/RequestHandler;->sjavac:Lorg/openjdk/tools/sjavac/server/Sjavac;

    invoke-interface {v3, v4}, Lorg/openjdk/tools/sjavac/server/Sjavac;->compile([Ljava/lang/String;)Lorg/openjdk/tools/javac/main/Main$Result;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RC:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/openjdk/tools/sjavac/server/RequestHandler;->checkInternalErrorLog()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_1
    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Log;->setLogForCurrentThread(Lorg/openjdk/tools/sjavac/Log;)V

    goto :goto_7

    :catchall_1
    move-exception v1

    goto :goto_8

    :catch_0
    move-exception v1

    goto :goto_6

    :catchall_2
    move-exception v2

    goto :goto_4

    :goto_2
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v4

    :try_start_6
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v2

    :try_start_7
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_4
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    move-exception v3

    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto :goto_5

    :catchall_6
    move-exception v1

    :try_start_a
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_6
    :try_start_b
    invoke-static {v1}, Lorg/openjdk/tools/sjavac/Log;->error(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_1

    :goto_7
    return-void

    :goto_8
    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Log;->setLogForCurrentThread(Lorg/openjdk/tools/sjavac/Log;)V

    throw v1
.end method
