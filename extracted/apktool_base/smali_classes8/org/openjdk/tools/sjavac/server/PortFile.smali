.class public Lorg/openjdk/tools/sjavac/server/PortFile;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final magicNr:I = 0x1174


# instance fields
.field private channel:Ljava/nio/channels/FileChannel;

.field private containsPortInfo:Z

.field private file:Ljava/io/File;

.field private filename:Ljava/lang/String;

.field private lock:Ljava/nio/channels/FileLock;

.field private lockSem:Ljava/util/concurrent/Semaphore;

.field private myServerCookie:J

.field private myServerPort:I

.field private rwfile:Ljava/io/RandomAccessFile;

.field private serverCookie:J

.field private serverPort:I

.field private stopFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->lockSem:Ljava/util/concurrent/Semaphore;

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->filename:Ljava/lang/String;

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->filename:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->file:Ljava/io/File;

    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".stop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->stopFile:Ljava/io/File;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->containsPortInfo:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->lock:Ljava/nio/channels/FileLock;

    return-void
.end method

.method private getServerStartupTimeoutSeconds()J
    .locals 2

    const-string v0, "serverStartupTimeout"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    return-wide v0

    :catch_0
    :cond_0
    const-wide/16 v0, 0x3c

    return-wide v0
.end method

.method private initializeChannel()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/sjavac/client/PortFileInaccessibleException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->file:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->rwfile:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->channel:Ljava/nio/channels/FileChannel;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/openjdk/tools/sjavac/client/PortFileInaccessibleException;

    invoke-direct {v1, v0}, Lorg/openjdk/tools/sjavac/client/PortFileInaccessibleException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public containsPortInfo()Z
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->containsPortInfo:Z

    return v0
.end method

.method public delete()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->rwfile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to delete file."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public exists()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public getCookie()J
    .locals 2

    iget-boolean v0, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->containsPortInfo:Z

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-wide v0, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->serverCookie:J

    return-wide v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->containsPortInfo:Z

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget v0, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->serverPort:I

    return v0
.end method

.method public getValues()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->containsPortInfo:Z

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->lock:Ljava/nio/channels/FileLock;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->rwfile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->rwfile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->rwfile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    iget-object v2, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->rwfile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    iput v2, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->serverPort:I

    iget-object v2, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->rwfile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->serverCookie:J

    const/16 v2, 0x1174

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->containsPortInfo:Z

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->containsPortInfo:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-boolean v0, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->containsPortInfo:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public lock()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->channel:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/openjdk/tools/sjavac/server/PortFile;->initializeChannel()V

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->lockSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->lock:Ljava/nio/channels/FileLock;

    return-void
.end method

.method public markedForStop()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->stopFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->stopFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setValues(IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->lock:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->rwfile:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->rwfile:Ljava/io/RandomAccessFile;

    const/16 v1, 0x1174

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->rwfile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->rwfile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->writeLong(J)V

    iput p1, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->myServerPort:I

    iput-wide p2, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->myServerCookie:J

    return-void
.end method

.method public stillMyValues()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    :catch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/openjdk/tools/sjavac/server/PortFile;->lock()V

    invoke-virtual {p0}, Lorg/openjdk/tools/sjavac/server/PortFile;->getValues()V

    invoke-virtual {p0}, Lorg/openjdk/tools/sjavac/server/PortFile;->unlock()V

    iget-boolean v1, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->containsPortInfo:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->serverPort:I

    iget v2, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->myServerPort:I

    if-ne v1, v2, :cond_0

    iget-wide v1, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->serverCookie:J

    iget-wide v3, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->myServerCookie:J
    :try_end_0
    .catch Ljava/nio/channels/FileLockInterruptionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :catch_1
    :cond_0
    return v0
.end method

.method public unlock()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->lock:Ljava/nio/channels/FileLock;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->lock:Ljava/nio/channels/FileLock;

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->lockSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public waitForValidValues()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lorg/openjdk/tools/sjavac/server/PortFile;->getServerStartupTimeoutSeconds()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    :goto_0
    const-string v4, "Looking for valid port file values..."

    invoke-static {v4}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/sjavac/server/PortFile;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/sjavac/server/PortFile;->lock()V

    invoke-virtual {p0}, Lorg/openjdk/tools/sjavac/server/PortFile;->getValues()V

    invoke-virtual {p0}, Lorg/openjdk/tools/sjavac/server/PortFile;->unlock()V

    :cond_0
    iget-boolean v4, p0, Lorg/openjdk/tools/sjavac/server/PortFile;->containsPortInfo:Z

    const-string v5, " ms"

    if-eqz v4, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Valid port file values found after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v6, v2

    if-gtz v4, :cond_2

    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No port file values materialized. Giving up after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
