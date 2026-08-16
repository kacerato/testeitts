.class public Lorg/openjdk/tools/sjavac/client/ClientMain;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static run([Ljava/lang/String;)I
    .locals 4

    .line 1
    new-instance v0, Lorg/openjdk/tools/sjavac/AutoFlushWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lorg/openjdk/tools/sjavac/AutoFlushWriter;-><init>(Ljava/io/Writer;)V

    new-instance v1, Lorg/openjdk/tools/sjavac/AutoFlushWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Lorg/openjdk/tools/sjavac/AutoFlushWriter;-><init>(Ljava/io/Writer;)V

    invoke-static {p0, v0, v1}, Lorg/openjdk/tools/sjavac/client/ClientMain;->run([Ljava/lang/String;Ljava/io/Writer;Ljava/io/Writer;)I

    move-result p0

    return p0
.end method

.method public static run([Ljava/lang/String;Ljava/io/Writer;Ljava/io/Writer;)I
    .locals 2

    .line 2
    new-instance v0, Lorg/openjdk/tools/sjavac/Log;

    invoke-direct {v0, p1, p2}, Lorg/openjdk/tools/sjavac/Log;-><init>(Ljava/io/Writer;Ljava/io/Writer;)V

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Log;->setLogForCurrentThread(Lorg/openjdk/tools/sjavac/Log;)V

    .line 3
    :try_start_0
    invoke-static {p0}, Lorg/openjdk/tools/sjavac/options/Options;->parseArgs([Ljava/lang/String;)Lorg/openjdk/tools/sjavac/options/Options;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    invoke-virtual {p1}, Lorg/openjdk/tools/sjavac/options/Options;->getLogLevel()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/openjdk/tools/sjavac/Log;->setLogLevel(Ljava/lang/String;)V

    .line 5
    const-string p2, "=========================================================="

    invoke-static {p2}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    .line 6
    const-string v0, "Launching sjavac client with the following parameters:"

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/openjdk/tools/sjavac/options/Options;->getStateArgsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    .line 8
    invoke-static {p2}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lorg/openjdk/tools/sjavac/options/Options;->getServerConf()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 10
    new-instance v0, Lorg/openjdk/tools/sjavac/client/SjavacClient;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/sjavac/client/SjavacClient;-><init>(Lorg/openjdk/tools/sjavac/options/Options;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/openjdk/tools/sjavac/comp/SjavacImpl;

    invoke-direct {v0}, Lorg/openjdk/tools/sjavac/comp/SjavacImpl;-><init>()V

    .line 11
    :goto_1
    invoke-interface {v0, p0}, Lorg/openjdk/tools/sjavac/server/Sjavac;->compile([Ljava/lang/String;)Lorg/openjdk/tools/javac/main/Main$Result;

    move-result-object p0

    if-nez p2, :cond_2

    .line 12
    invoke-interface {v0}, Lorg/openjdk/tools/sjavac/server/Sjavac;->shutdown()V

    .line 13
    :cond_2
    iget p0, p0, Lorg/openjdk/tools/javac/main/Main$Result;->exitCode:I

    return p0

    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/openjdk/tools/sjavac/Log;->error(Ljava/lang/String;)V

    .line 15
    sget-object p0, Lorg/openjdk/tools/javac/main/Main$Result;->CMDERR:Lorg/openjdk/tools/javac/main/Main$Result;

    iget p0, p0, Lorg/openjdk/tools/javac/main/Main$Result;->exitCode:I

    return p0
.end method
