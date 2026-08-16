.class public Lorg/openjdk/tools/sjavac/server/SjavacServer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/sjavac/server/Terminable;


# static fields
.field public static final LINE_TYPE_RC:Ljava/lang/String; = "RC"

.field private static allPortFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/sjavac/server/PortFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final keepAcceptingRequests:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final keepalive:I

.field private final myCookie:J

.field private final poolsize:I

.field private portFile:Lorg/openjdk/tools/sjavac/server/PortFile;

.field private portFileMonitor:Lorg/openjdk/tools/sjavac/server/PortFileMonitor;

.field private final portfilename:Ljava/lang/String;

.field private serverSocket:Ljava/net/ServerSocket;

.field sjavac:Lorg/openjdk/tools/sjavac/server/Sjavac;

.field private totalBuildTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    const-string v0, "portfile"

    invoke-static {v0, p1}, Lorg/openjdk/tools/sjavac/Util;->extractStringOption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    const-string v2, "poolsize"

    invoke-static {v2, p1, v1}, Lorg/openjdk/tools/sjavac/Util;->extractIntOption(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "keepalive"

    const/16 v3, 0x78

    .line 3
    invoke-static {v2, p1, v3}, Lorg/openjdk/tools/sjavac/Util;->extractIntOption(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 4
    invoke-direct {p0, v0, v1, p1}, Lorg/openjdk/tools/sjavac/server/SjavacServer;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/server/SjavacServer;->keepAcceptingRequests:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    iput-object p1, p0, Lorg/openjdk/tools/sjavac/server/SjavacServer;->portfilename:Ljava/lang/String;

    .line 8
    iput p2, p0, Lorg/openjdk/tools/sjavac/server/SjavacServer;->poolsize:I

    .line 9
    iput p3, p0, Lorg/openjdk/tools/sjavac/server/SjavacServer;->keepalive:I

    .line 10
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/openjdk/tools/sjavac/server/SjavacServer;->myCookie:J

    return-void
.end method

.method public static declared-synchronized getPortFile(Ljava/lang/String;)Lorg/openjdk/tools/sjavac/server/PortFile;
    .locals 3

    const-class v0, Lorg/openjdk/tools/sjavac/server/SjavacServer;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/openjdk/tools/sjavac/server/SjavacServer;->allPortFiles:Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/openjdk/tools/sjavac/server/SjavacServer;->allPortFiles:Ljava/util/Map;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    sget-object v1, Lorg/openjdk/tools/sjavac/server/SjavacServer;->allPortFiles:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/sjavac/server/PortFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/server/PortFile;->exists()Z

    move-result v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    new-instance v1, Lorg/openjdk/tools/sjavac/server/PortFile;

    invoke-direct {v1, p0}, Lorg/openjdk/tools/sjavac/server/PortFile;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/openjdk/tools/sjavac/server/SjavacServer;->allPortFiles:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit v0

    return-object v1

    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method


# virtual methods
.method public addBuildTime(J)V
    .locals 2

    iget-wide v0, p0, Lorg/openjdk/tools/sjavac/server/SjavacServer;->totalBuildTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/openjdk/tools/sjavac/server/SjavacServer;->totalBuildTime:J

    return-void
.end method

.method public getCookie()J
    .locals 2

    iget-wide v0, p0, Lorg/openjdk/tools/sjavac/server/SjavacServer;->myCookie:J

    return-wide v0
.end method

.method public getPort()I
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/SjavacServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public shutdown(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/SjavacServer;->keepAcceptingRequests:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Quitting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/openjdk/tools/sjavac/server/SjavacServer;->portFileMonitor:Lorg/openjdk/tools/sjavac/server/PortFileMonitor;

    invoke-virtual {p1}, Lorg/openjdk/tools/sjavac/server/PortFileMonitor;->shutdown()V

    :try_start_0
    iget-object p1, p0, Lorg/openjdk/tools/sjavac/server/SjavacServer;->portFile:Lorg/openjdk/tools/sjavac/server/PortFile;

    invoke-virtual {p1}, Lorg/openjdk/tools/sjavac/server/PortFile;->delete()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-static {p1}, Lorg/openjdk/tools/sjavac/Log;->error(Ljava/lang/Throwable;)V

    :goto_1
    :try_start_1
    iget-object p1, p0, Lorg/openjdk/tools/sjavac/server/SjavacServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {p1}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-static {p1}, Lorg/openjdk/tools/sjavac/Log;->error(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public startServer()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/openjdk/tools/sjavac/server/SjavacServer;->portfilename:Ljava/lang/String;

    invoke-static {v2}, Lorg/openjdk/tools/sjavac/server/SjavacServer;->getPortFile(Ljava/lang/String;)Lorg/openjdk/tools/sjavac/server/PortFile;

    move-result-object v2

    iput-object v2, p0, Lorg/openjdk/tools/sjavac/server/SjavacServer;->portFile:Lorg/openjdk/tools/sjavac/server/PortFile;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lorg/openjdk/tools/sjavac/server/SjavacServer;->portFile:Lorg/openjdk/tools/sjavac/server/PortFile;

    invoke-virtual {v3}, Lorg/openjdk/tools/sjavac/server/PortFile;->lock()V

    iget-object v3, p0, Lorg/openjdk/tools/sjavac/server/SjavacServer;->portFile:Lorg/openjdk/tools/sjavac/server/PortFile;

    invoke-virtual {v3}, Lorg/openjdk/tools/sjavac/server/PortFile;->getValues()V

    iget-object v3, p0, Lorg/openjdk/tools/sjavac/server/SjavacServer;->portFile:Lorg/openjdk/tools/sjavac/server/PortFile;

    invoke-virtual {v3}, Lorg/openjdk/tools/sjavac/server/PortFile;->containsPortInfo()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "Javac server not started because portfile exists!"

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/SjavacServer;->portFile:Lorg/openjdk/tools/sjavac/server/PortFile;

    invoke-virtual {v0}, Lorg/openjdk/tools/sjavac/server/PortFile;->unlock()V

    sget-object v0, Lorg/openjdk/tools/javac/main/Main$Result;->ERROR:Lorg/openjdk/tools/javac/main/Main$Result;

    iget v0, v0, Lorg/openjdk/tools/javac/main/Main$Result;->exitCode:I

    monitor-exit v2

    return v0

    :catchall_0
    move-exception v0

    goto/16 :goto_0

    :cond_0
    new-instance v3, Lorg/openjdk/tools/sjavac/comp/SjavacImpl;

    invoke-direct {v3}, Lorg/openjdk/tools/sjavac/comp/SjavacImpl;-><init>()V

    iput-object v3, p0, Lorg/openjdk/tools/sjavac/server/SjavacServer;->sjavac:Lorg/openjdk/tools/sjavac/server/Sjavac;

    new-instance v4, Lorg/openjdk/tools/sjavac/comp/PooledSjavac;

    iget v5, p0, Lorg/openjdk/tools/sjavac/server/SjavacServer;->poolsize:I

    invoke-direct {v4, v3, v5}, Lorg/openjdk/tools/sjavac/comp/PooledSjavac;-><init>(Lorg/openjdk/tools/sjavac/server/Sjavac;I)V

    iput-object v4, p0, Lorg/openjdk/tools/sjavac/server/SjavacServer;->sjavac:Lorg/openjdk/tools/sjavac/server/Sjavac;

    new-instance v3, Lorg/openjdk/tools/sjavac/server/IdleResetSjavac;

    iget v5, p0, Lorg/openjdk/tools/sjavac/server/SjavacServer;->keepalive:I

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    invoke-direct {v3, v4, p0, v5, v6}, Lorg/openjdk/tools/sjavac/server/IdleResetSjavac;-><init>(Lorg/openjdk/tools/sjavac/server/Sjavac;Lorg/openjdk/tools/sjavac/server/Terminable;J)V

    iput-object v3, p0, Lorg/openjdk/tools/sjavac/server/SjavacServer;->sjavac:Lorg/openjdk/tools/sjavac/server/Sjavac;

    new-instance v3, Ljava/net/ServerSocket;

    invoke-direct {v3}, Ljava/net/ServerSocket;-><init>()V

    iput-object v3, p0, Lorg/openjdk/tools/sjavac/server/SjavacServer;->serverSocket:Ljava/net/ServerSocket;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/sjavac/server/SjavacServer;->serverSocket:Ljava/net/ServerSocket;

    new-instance v5, Ljava/net/InetSocketAddress;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v4, v5}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    iget-object v3, p0, Lorg/openjdk/tools/sjavac/server/SjavacServer;->portFile:Lorg/openjdk/tools/sjavac/server/PortFile;

    invoke-virtual {p0}, Lorg/openjdk/tools/sjavac/server/SjavacServer;->getPort()I

    move-result v4

    invoke-virtual {p0}, Lorg/openjdk/tools/sjavac/server/SjavacServer;->getCookie()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lorg/openjdk/tools/sjavac/server/PortFile;->setValues(IJ)V

    iget-object v3, p0, Lorg/openjdk/tools/sjavac/server/SjavacServer;->portFile:Lorg/openjdk/tools/sjavac/server/PortFile;

    invoke-virtual {v3}, Lorg/openjdk/tools/sjavac/server/PortFile;->unlock()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v2, Lorg/openjdk/tools/sjavac/server/PortFileMonitor;

    iget-object v3, p0, Lorg/openjdk/tools/sjavac/server/SjavacServer;->portFile:Lorg/openjdk/tools/sjavac/server/PortFile;

    invoke-direct {v2, v3, p0}, Lorg/openjdk/tools/sjavac/server/PortFileMonitor;-><init>(Lorg/openjdk/tools/sjavac/server/PortFile;Lorg/openjdk/tools/sjavac/server/SjavacServer;)V

    iput-object v2, p0, Lorg/openjdk/tools/sjavac/server/SjavacServer;->portFileMonitor:Lorg/openjdk/tools/sjavac/server/PortFileMonitor;

    invoke-virtual {v2}, Lorg/openjdk/tools/sjavac/server/PortFileMonitor;->start()V

    const-string v2, "Sjavac server started. Accepting connections..."

    invoke-static {v2}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    port: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/openjdk/tools/sjavac/server/SjavacServer;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    poolsize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/openjdk/tools/sjavac/server/SjavacServer;->poolsize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/openjdk/tools/sjavac/server/SjavacServer;->keepAcceptingRequests:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/openjdk/tools/sjavac/server/SjavacServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    new-instance v3, Lorg/openjdk/tools/sjavac/server/RequestHandler;

    iget-object v4, p0, Lorg/openjdk/tools/sjavac/server/SjavacServer;->sjavac:Lorg/openjdk/tools/sjavac/server/Sjavac;

    invoke-direct {v3, v2, v4}, Lorg/openjdk/tools/sjavac/server/RequestHandler;-><init>(Ljava/net/Socket;Lorg/openjdk/tools/sjavac/server/Sjavac;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    iget-object v2, p0, Lorg/openjdk/tools/sjavac/server/SjavacServer;->keepAcceptingRequests:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Shutting down."

    invoke-static {v2}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total wall clock time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms build time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/openjdk/tools/sjavac/server/SjavacServer;->totalBuildTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/SjavacServer;->sjavac:Lorg/openjdk/tools/sjavac/server/Sjavac;

    invoke-interface {v0}, Lorg/openjdk/tools/sjavac/server/Sjavac;->shutdown()V

    sget-object v0, Lorg/openjdk/tools/javac/main/Main$Result;->OK:Lorg/openjdk/tools/javac/main/Main$Result;

    iget v0, v0, Lorg/openjdk/tools/javac/main/Main$Result;->exitCode:I

    return v0

    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
