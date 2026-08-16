.class public Lorg/openjdk/tools/sjavac/server/log/LazyInitFileLog;
.super Lorg/openjdk/tools/sjavac/Log;
.source "SourceFile"


# instance fields
.field baseFilename:Ljava/lang/String;

.field destination:Ljava/nio/file/Path;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/openjdk/tools/sjavac/Log;-><init>(Ljava/io/Writer;Ljava/io/Writer;)V

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/server/log/LazyInitFileLog;->destination:Ljava/nio/file/Path;

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/server/log/LazyInitFileLog;->baseFilename:Ljava/lang/String;

    return-void
.end method

.method private getAvailableDestination()Ljava/nio/file/Path;
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/log/LazyInitFileLog;->baseFilename:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const/4 v2, 0x1

    :goto_0
    new-array v3, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v3}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/openjdk/tools/sjavac/server/log/LazyInitFileLog;->baseFilename:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    move v2, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getLogDestination()Ljava/nio/file/Path;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/log/LazyInitFileLog;->destination:Ljava/nio/file/Path;

    return-object v0
.end method

.method public printLogMsg(Lorg/openjdk/tools/sjavac/Log$Level;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/sjavac/Log;->out:Ljava/io/PrintWriter;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/sjavac/Log;->isLevelLogged(Lorg/openjdk/tools/sjavac/Log$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/openjdk/tools/sjavac/server/log/LazyInitFileLog;->getAvailableDestination()Ljava/nio/file/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/server/log/LazyInitFileLog;->destination:Ljava/nio/file/Path;

    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lorg/openjdk/tools/sjavac/server/log/LazyInitFileLog;->destination:Ljava/nio/file/Path;

    invoke-interface {v2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/Log;->err:Ljava/io/PrintWriter;

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/Log;->out:Ljava/io/PrintWriter;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/sjavac/Log;->printLogMsg(Lorg/openjdk/tools/sjavac/Log$Level;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IO error occurred: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Original message: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_2
    return-void
.end method
