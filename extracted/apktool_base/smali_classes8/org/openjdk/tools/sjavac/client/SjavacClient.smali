.class public Lorg/openjdk/tools/sjavac/client/SjavacClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/sjavac/server/Sjavac;


# static fields
.field static CONNECTION_TIMEOUT:I = 0x7d0

.field static MAX_CONNECT_ATTEMPTS:I = 0x3

.field static WAIT_BETWEEN_CONNECT_ATTEMPTS:I = 0x7d0


# instance fields
.field private final id:Ljava/lang/String;

.field private final keepalive:I

.field private final poolsize:I

.field private final portFile:Lorg/openjdk/tools/sjavac/server/PortFile;

.field private final settings:Ljava/lang/String;

.field private final sjavacForkCmd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/sjavac/options/Options;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/openjdk/tools/sjavac/options/Options;->getServerConf()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "id"

    invoke-static {v2, v0}, Lorg/openjdk/tools/sjavac/Util;->extractStringOption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    and-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    iput-object v3, p0, Lorg/openjdk/tools/sjavac/client/SjavacClient;->id:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/openjdk/tools/sjavac/options/Options;->getDestDir()Ljava/nio/file/Path;

    move-result-object p1

    const-string v2, "javac_server"

    invoke-interface {p1, v2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "portfile"

    invoke-static {v2, v0, p1}, Lorg/openjdk/tools/sjavac/Util;->extractStringOption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/sjavac/server/SjavacServer;->getPortFile(Ljava/lang/String;)Lorg/openjdk/tools/sjavac/server/PortFile;

    move-result-object v2

    iput-object v2, p0, Lorg/openjdk/tools/sjavac/client/SjavacClient;->portFile:Lorg/openjdk/tools/sjavac/server/PortFile;

    const-string v2, "sjavac"

    invoke-static {v2, v0, v2}, Lorg/openjdk/tools/sjavac/Util;->extractStringOption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/openjdk/tools/sjavac/client/SjavacClient;->sjavacForkCmd:Ljava/lang/String;

    const-string v2, "poolsize"

    invoke-static {v2, v0}, Lorg/openjdk/tools/sjavac/Util;->extractIntOption(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v4, "keepalive"

    const/16 v5, 0x78

    invoke-static {v4, v0, v5}, Lorg/openjdk/tools/sjavac/Util;->extractIntOption(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lorg/openjdk/tools/sjavac/client/SjavacClient;->keepalive:I

    if-lez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    :goto_2
    iput v2, p0, Lorg/openjdk/tools/sjavac/client/SjavacClient;->poolsize:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",portfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    iput-object v0, p0, Lorg/openjdk/tools/sjavac/client/SjavacClient;->settings:Ljava/lang/String;

    return-void
.end method

.method public static fork(Ljava/lang/String;Lorg/openjdk/tools/sjavac/server/PortFile;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lorg/openjdk/tools/sjavac/options/OptionHelper;->unescapeCmdArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--startserver:portfile="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/openjdk/tools/sjavac/server/PortFile;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",poolsize="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",keepalive="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Starting server. Command: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    :try_start_0
    new-instance p0, Ljava/lang/ProcessBuilder;

    invoke-direct {p0, v0}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {p1}, Lorg/openjdk/tools/sjavac/server/PortFile;->waitForValidValues()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Sjavac server failed to initialize: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/openjdk/tools/sjavac/Log;->error(Ljava/lang/String;)V

    const-string p2, "Process output:"

    invoke-static {p2}, Lorg/openjdk/tools/sjavac/Log;->error(Ljava/lang/String;)V

    new-instance p2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance p3, Ljava/io/BufferedReader;

    invoke-direct {p3, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :try_start_2
    invoke-virtual {p3}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lorg/openjdk/tools/sjavac/f;

    invoke-direct {v0}, Lorg/openjdk/tools/sjavac/f;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p3}, Ljava/io/BufferedReader;->close()V

    const-string p2, "<End of process output>"

    invoke-static {p2}, Lorg/openjdk/tools/sjavac/Log;->error(Ljava/lang/String;)V

    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Process exit code: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/openjdk/tools/sjavac/Log;->error(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Server failed to initialize: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :catchall_0
    move-exception p0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {p3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to create server process: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/sjavac/Log;->error(Ljava/lang/String;)V

    invoke-static {p0}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/Throwable;)V

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private makeConnectionAttempt()Ljava/net/Socket;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lorg/openjdk/tools/sjavac/client/SjavacClient;->portFile:Lorg/openjdk/tools/sjavac/server/PortFile;

    invoke-virtual {v3}, Lorg/openjdk/tools/sjavac/server/PortFile;->getPort()I

    move-result v3

    invoke-direct {v2, v1, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    sget v1, Lorg/openjdk/tools/sjavac/client/SjavacClient;->CONNECTION_TIMEOUT:I

    invoke-virtual {v0, v2, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    const-string v1, "Connected"

    invoke-static {v1}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    return-object v0
.end method

.method private makeSureServerIsRunning(Lorg/openjdk/tools/sjavac/server/PortFile;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/openjdk/tools/sjavac/server/PortFile;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/openjdk/tools/sjavac/server/PortFile;->lock()V

    invoke-virtual {p1}, Lorg/openjdk/tools/sjavac/server/PortFile;->getValues()V

    invoke-virtual {p1}, Lorg/openjdk/tools/sjavac/server/PortFile;->unlock()V

    invoke-virtual {p1}, Lorg/openjdk/tools/sjavac/server/PortFile;->containsPortInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/sjavac/client/SjavacClient;->sjavacForkCmd:Ljava/lang/String;

    iget v1, p0, Lorg/openjdk/tools/sjavac/client/SjavacClient;->poolsize:I

    iget v2, p0, Lorg/openjdk/tools/sjavac/client/SjavacClient;->keepalive:I

    invoke-static {v0, p1, v1, v2}, Lorg/openjdk/tools/sjavac/client/SjavacClient;->fork(Ljava/lang/String;Lorg/openjdk/tools/sjavac/server/PortFile;II)V

    return-void
.end method

.method private tryConnect()Ljava/net/Socket;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/client/SjavacClient;->portFile:Lorg/openjdk/tools/sjavac/server/PortFile;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/sjavac/client/SjavacClient;->makeSureServerIsRunning(Lorg/openjdk/tools/sjavac/server/PortFile;)V

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to connect. Attempt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/openjdk/tools/sjavac/client/SjavacClient;->MAX_CONNECT_ATTEMPTS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lorg/openjdk/tools/sjavac/client/SjavacClient;->makeConnectionAttempt()Ljava/net/Socket;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection attempt failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/openjdk/tools/sjavac/Log;->error(Ljava/lang/String;)V

    sget v2, Lorg/openjdk/tools/sjavac/client/SjavacClient;->MAX_CONNECT_ATTEMPTS:I

    if-ge v0, v2, :cond_0

    sget v1, Lorg/openjdk/tools/sjavac/client/SjavacClient;->WAIT_BETWEEN_CONNECT_ATTEMPTS:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_0
    const-string v0, "Giving up"

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Log;->error(Ljava/lang/String;)V

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Could not connect to server"

    invoke-direct {v0, v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public compile([Ljava/lang/String;)Lorg/openjdk/tools/javac/main/Main$Result;
    .locals 8

    const-string v0, ":"

    :try_start_0
    invoke-direct {p0}, Lorg/openjdk/tools/sjavac/client/SjavacClient;->tryConnect()Ljava/net/Socket;

    move-result-object v1
    :try_end_0
    .catch Lorg/openjdk/tools/sjavac/client/PortFileInaccessibleException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    array-length v4, p1

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(I)V

    array-length v4, p1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_0

    aget-object v7, p1, v6

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    const/4 p1, 0x0

    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    aget-object v4, v2, v5

    const/4 v6, 0x1

    aget-object v2, v2, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lorg/openjdk/tools/sjavac/Log;->isDebugging()Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[sjavac-server] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-static {v4}, Lorg/openjdk/tools/sjavac/Log$Level;->valueOf(Ljava/lang/String;)Lorg/openjdk/tools/sjavac/Log$Level;

    move-result-object v6

    invoke-static {v6, v2}, Lorg/openjdk/tools/sjavac/Log;->log(Lorg/openjdk/tools/sjavac/Log$Level;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v6, "RC"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v2}, Lorg/openjdk/tools/javac/main/Main$Result;->valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/main/Main$Result;

    move-result-object p1

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse protocol line: >>\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"<<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    :try_start_4
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Lorg/openjdk/tools/sjavac/client/PortFileInaccessibleException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    :catch_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    goto :goto_5

    :goto_2
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_5

    :try_start_6
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v1

    :try_start_7
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    throw v0
    :try_end_7
    .catch Lorg/openjdk/tools/sjavac/client/PortFileInaccessibleException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1

    :goto_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const-string v0, "Compilation interrupted."

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Log;->error(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/Throwable;)V

    sget-object p1, Lorg/openjdk/tools/javac/main/Main$Result;->ERROR:Lorg/openjdk/tools/javac/main/Main$Result;

    goto :goto_6

    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IOException caught during compilation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Log;->error(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/Throwable;)V

    sget-object p1, Lorg/openjdk/tools/javac/main/Main$Result;->ERROR:Lorg/openjdk/tools/javac/main/Main$Result;

    goto :goto_6

    :catch_3
    const-string p1, "Port file inaccessible."

    invoke-static {p1}, Lorg/openjdk/tools/sjavac/Log;->error(Ljava/lang/String;)V

    sget-object p1, Lorg/openjdk/tools/javac/main/Main$Result;->ERROR:Lorg/openjdk/tools/javac/main/Main$Result;

    :goto_6
    if-nez p1, :cond_6

    sget-object p1, Lorg/openjdk/tools/javac/main/Main$Result;->ERROR:Lorg/openjdk/tools/javac/main/Main$Result;

    :cond_6
    return-object p1
.end method

.method public serverSettings()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/client/SjavacClient;->settings:Ljava/lang/String;

    return-object v0
.end method

.method public shutdown()V
    .locals 0

    return-void
.end method
