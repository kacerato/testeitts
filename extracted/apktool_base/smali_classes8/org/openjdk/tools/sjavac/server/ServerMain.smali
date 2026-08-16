.class public Lorg/openjdk/tools/sjavac/server/ServerMain;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static errorLog:Lorg/openjdk/tools/sjavac/server/log/LazyInitFileLog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/sjavac/server/ServerMain;->lambda$run$0(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static getErrorLog()Lorg/openjdk/tools/sjavac/server/log/LazyInitFileLog;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/sjavac/server/ServerMain;->errorLog:Lorg/openjdk/tools/sjavac/server/log/LazyInitFileLog;

    return-object v0
.end method

.method private static synthetic lambda$run$0(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    sget-object p0, Lorg/openjdk/tools/sjavac/server/ServerMain;->errorLog:Lorg/openjdk/tools/sjavac/server/log/LazyInitFileLog;

    invoke-static {p0}, Lorg/openjdk/tools/sjavac/Log;->setLogForCurrentThread(Lorg/openjdk/tools/sjavac/Log;)V

    invoke-static {p1}, Lorg/openjdk/tools/sjavac/Log;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static run([Ljava/lang/String;)I
    .locals 6

    new-instance v0, Lorg/openjdk/tools/sjavac/server/log/LazyInitFileLog;

    const-string v1, "server.log"

    invoke-direct {v0, v1}, Lorg/openjdk/tools/sjavac/server/log/LazyInitFileLog;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/openjdk/tools/sjavac/server/ServerMain;->errorLog:Lorg/openjdk/tools/sjavac/server/log/LazyInitFileLog;

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Log;->setLogForCurrentThread(Lorg/openjdk/tools/sjavac/Log;)V

    sget-object v0, Lorg/openjdk/tools/sjavac/Log$Level;->ERROR:Lorg/openjdk/tools/sjavac/Log$Level;

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Log;->setLogLevel(Lorg/openjdk/tools/sjavac/Log$Level;)V

    new-instance v1, Lorg/openjdk/tools/sjavac/server/c;

    invoke-direct {v1}, Lorg/openjdk/tools/sjavac/server/c;-><init>()V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    new-instance v1, Ljava/io/PrintStream;

    new-instance v2, Lorg/openjdk/tools/sjavac/server/log/LoggingOutputStream;

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v4, Lorg/openjdk/tools/sjavac/Log$Level;->INFO:Lorg/openjdk/tools/sjavac/Log$Level;

    const-string v5, "[stdout] "

    invoke-direct {v2, v3, v4, v5}, Lorg/openjdk/tools/sjavac/server/log/LoggingOutputStream;-><init>(Ljava/io/OutputStream;Lorg/openjdk/tools/sjavac/Log$Level;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v1}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    new-instance v1, Ljava/io/PrintStream;

    new-instance v2, Lorg/openjdk/tools/sjavac/server/log/LoggingOutputStream;

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "[stderr] "

    invoke-direct {v2, v3, v0, v4}, Lorg/openjdk/tools/sjavac/server/log/LoggingOutputStream;-><init>(Ljava/io/OutputStream;Lorg/openjdk/tools/sjavac/Log$Level;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v1}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const-string p0, "When spawning a background server, only a single --startserver argument is allowed."

    invoke-static {p0}, Lorg/openjdk/tools/sjavac/Log;->error(Ljava/lang/String;)V

    sget-object p0, Lorg/openjdk/tools/javac/main/Main$Result;->CMDERR:Lorg/openjdk/tools/javac/main/Main$Result;

    iget p0, p0, Lorg/openjdk/tools/javac/main/Main$Result;->exitCode:I

    return p0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/openjdk/tools/sjavac/server/SjavacServer;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-direct {v0, p0}, Lorg/openjdk/tools/sjavac/server/SjavacServer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/openjdk/tools/sjavac/server/SjavacServer;->startServer()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object p0, Lorg/openjdk/tools/javac/main/Main$Result;->ERROR:Lorg/openjdk/tools/javac/main/Main$Result;

    iget p0, p0, Lorg/openjdk/tools/javac/main/Main$Result;->exitCode:I

    :goto_1
    return p0
.end method
