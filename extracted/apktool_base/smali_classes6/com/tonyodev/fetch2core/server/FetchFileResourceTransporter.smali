.class public final Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tonyodev/fetch2core/server/FileResourceTransporter;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFetchFileResourceTransporter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchFileResourceTransporter.kt\ncom/tonyodev/fetch2core/server/FetchFileResourceTransporter\n+ 2 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,211:1\n32#2,2:212\n*E\n*S KotlinDebug\n*F\n+ 1 FetchFileResourceTransporter.kt\ncom/tonyodev/fetch2core/server/FetchFileResourceTransporter\n*L\n55#1,2:212\n*E\n"
.end annotation


# instance fields
.field private final client:Ljava/net/Socket;

.field private volatile closed:Z

.field private dataInput:Ljava/io/DataInputStream;

.field private dataOutput:Ljava/io/DataOutputStream;

.field private final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;-><init>(Ljava/net/Socket;ILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;)V
    .locals 2
    .param p1    # Ljava/net/Socket;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->client:Ljava/net/Socket;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->lock:Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->dataInput:Ljava/io/DataInputStream;

    .line 6
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->dataOutput:Ljava/io/DataOutputStream;

    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->closed:Z

    :cond_1
    return-void
.end method

.method public synthetic constructor <init>(Ljava/net/Socket;ILkotlin/jvm/internal/x;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 9
    new-instance p1, Ljava/net/Socket;

    invoke-direct {p1}, Ljava/net/Socket;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;-><init>(Ljava/net/Socket;)V

    return-void
.end method

.method private final throwExceptionIfClosed()V
    .locals 2

    iget-boolean v0, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->closed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "FetchFileResourceTransporter is already closed."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final throwIfNotConnected()V
    .locals 2

    iget-object v0, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->dataInput:Ljava/io/DataInputStream;

    if-nez v0, :cond_0

    const-string v1, "dataInput"

    invoke-static {v1}, Lkotlin/jvm/internal/M;->S(Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->dataOutput:Ljava/io/DataOutputStream;

    if-nez v0, :cond_1

    const-string v1, "dataOutput"

    invoke-static {v1}, Lkotlin/jvm/internal/M;->S(Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "You forgot to call connect before calling this method."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->closed:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->dataInput:Ljava/io/DataInputStream;

    if-nez v1, :cond_0

    const-string v2, "dataInput"

    invoke-static {v2}, Lkotlin/jvm/internal/M;->S(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    iget-object v1, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->dataOutput:Ljava/io/DataOutputStream;

    if-nez v1, :cond_1

    const-string v2, "dataOutput"

    invoke-static {v2}, Lkotlin/jvm/internal/M;->S(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_1
    :try_start_3
    iget-object v1, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->client:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_2
    :cond_2
    :try_start_4
    sget-object v1, Lnf/P0;->a:Lnf/P0;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .locals 2
    .param p1    # Ljava/net/SocketAddress;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "socketAddress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->throwExceptionIfClosed()V

    iget-object v1, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->client:Ljava/net/Socket;

    invoke-virtual {v1, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    new-instance p1, Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->client:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->dataInput:Ljava/io/DataInputStream;

    new-instance p1, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->client:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->dataOutput:Ljava/io/DataOutputStream;

    sget-object p1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->throwExceptionIfClosed()V

    invoke-direct {p0}, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->throwIfNotConnected()V

    iget-object v1, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->dataInput:Ljava/io/DataInputStream;

    if-nez v1, :cond_0

    const-string v2, "dataInput"

    invoke-static {v2}, Lkotlin/jvm/internal/M;->S(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->throwExceptionIfClosed()V

    invoke-direct {p0}, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->throwIfNotConnected()V

    iget-object v1, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->dataOutput:Ljava/io/DataOutputStream;

    if-nez v1, :cond_0

    const-string v2, "dataOutput"

    invoke-static {v2}, Lkotlin/jvm/internal/M;->S(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public isClosed()Z
    .locals 2

    iget-object v0, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public readRawBytes([BII)I
    .locals 3
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "byteArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->throwExceptionIfClosed()V

    invoke-direct {p0}, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->throwIfNotConnected()V

    iget-object v1, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->dataInput:Ljava/io/DataInputStream;

    if-nez v1, :cond_0

    const-string v2, "dataInput"

    invoke-static {v2}, Lkotlin/jvm/internal/M;->S(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/DataInputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p1

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method public receiveFileRequest()Lcom/tonyodev/fetch2core/server/FileRequest;
    .locals 20
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->throwExceptionIfClosed()V

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->throwIfNotConnected()V

    new-instance v0, Lorg/json/JSONObject;

    iget-object v3, v1, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->dataInput:Ljava/io/DataInputStream;

    if-nez v3, :cond_0

    const-string v4, "dataInput"

    invoke-static {v4}, Lkotlin/jvm/internal/M;->S(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "Type"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v3, "FileResourceId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "Range-Start"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v7, "Range-End"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    const-string v9, "Authorization"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v9, "Client"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v10, Lorg/json/JSONObject;

    const-string v13, "Extras"

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v13

    const-string v14, "jsonObject.keys()"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/M;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string v15, "it"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/M;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v1, "jsonObject.getString(it)"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/M;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p0

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/tonyodev/fetch2core/Extras;

    invoke-direct {v1, v9}, Lcom/tonyodev/fetch2core/Extras;-><init>(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    move-object v13, v1

    goto :goto_3

    :catch_0
    :try_start_2
    sget-object v1, Lcom/tonyodev/fetch2core/Extras;->CREATOR:Lcom/tonyodev/fetch2core/Extras$CREATOR;

    invoke-virtual {v1}, Lcom/tonyodev/fetch2core/Extras$CREATOR;->getEmptyExtras()Lcom/tonyodev/fetch2core/Extras;

    move-result-object v1

    goto :goto_2

    :goto_3
    const-string v1, "Page"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v9, "Size"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    const-wide/16 v14, 0x0

    cmp-long v10, v3, v14

    const/4 v14, -0x1

    if-ltz v10, :cond_2

    cmp-long v10, v3, v7

    if-lez v10, :cond_3

    :cond_2
    move-wide/from16 v18, v3

    goto :goto_4

    :cond_3
    move-wide/from16 v18, v3

    goto :goto_5

    :goto_4
    int-to-long v3, v14

    cmp-long v3, v7, v3

    if-lez v3, :cond_4

    const-wide/16 v3, 0x0

    const-wide/16 v16, 0x0

    goto :goto_6

    :cond_4
    :goto_5
    move-wide/from16 v16, v18

    const-wide/16 v3, 0x0

    :goto_6
    cmp-long v3, v7, v3

    if-ltz v3, :cond_6

    cmp-long v3, v7, v16

    if-gez v3, :cond_5

    goto :goto_7

    :cond_5
    move-wide/from16 v18, v7

    goto :goto_8

    :cond_6
    :goto_7
    const-wide/16 v3, -0x1

    move-wide/from16 v18, v3

    :goto_8
    if-ge v1, v14, :cond_7

    move v1, v14

    :cond_7
    if-ge v9, v14, :cond_8

    move v15, v14

    goto :goto_9

    :cond_8
    move v15, v9

    :goto_9
    const-string v3, "Persist-Connection"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    new-instance v3, Lcom/tonyodev/fetch2core/server/FileRequest;

    const-string v4, "fileResourceId"

    invoke-static {v6, v4}, Lkotlin/jvm/internal/M;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "authorization"

    invoke-static {v11, v4}, Lkotlin/jvm/internal/M;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "client"

    invoke-static {v12, v4}, Lkotlin/jvm/internal/M;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v3

    move-wide/from16 v7, v16

    move-wide/from16 v9, v18

    move v14, v1

    move/from16 v16, v0

    invoke-direct/range {v4 .. v16}, Lcom/tonyodev/fetch2core/server/FileRequest;-><init>(ILjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Lcom/tonyodev/fetch2core/Extras;IIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-object v3

    :goto_a
    monitor-exit v2

    throw v0
.end method

.method public receiveFileResponse()Lcom/tonyodev/fetch2core/server/FileResponse;
    .locals 13
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->throwExceptionIfClosed()V

    invoke-direct {p0}, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->throwIfNotConnected()V

    iget-object v1, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->dataInput:Ljava/io/DataInputStream;

    if-nez v1, :cond_0

    const-string v2, "dataInput"

    invoke-static {v2}, Lkotlin/jvm/internal/M;->S(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dataInput.readUTF()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/M;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).toLowerCase()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/M;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "status"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v1, "type"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v1, "connection"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v1, "date"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    const-string v1, "content-length"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    const-string v1, "md5"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v1, "sessionid"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v1, Lcom/tonyodev/fetch2core/server/FileResponse;

    const-string v2, "md5"

    invoke-static {v11, v2}, Lkotlin/jvm/internal/M;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "sessionId"

    invoke-static {v12, v2}, Lkotlin/jvm/internal/M;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    invoke-direct/range {v3 .. v12}, Lcom/tonyodev/fetch2core/server/FileResponse;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_1
    :try_start_1
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public sendFileRequest(Lcom/tonyodev/fetch2core/server/FileRequest;)V
    .locals 3
    .param p1    # Lcom/tonyodev/fetch2core/server/FileRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fileRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->throwExceptionIfClosed()V

    invoke-direct {p0}, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->throwIfNotConnected()V

    iget-object v1, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->dataOutput:Ljava/io/DataOutputStream;

    if-nez v1, :cond_0

    const-string v2, "dataOutput"

    invoke-static {v2}, Lkotlin/jvm/internal/M;->S(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/server/FileRequest;->getToJsonString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->dataOutput:Ljava/io/DataOutputStream;

    if-nez p1, :cond_1

    const-string v1, "dataOutput"

    invoke-static {v1}, Lkotlin/jvm/internal/M;->S(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    sget-object p1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method public sendFileResponse(Lcom/tonyodev/fetch2core/server/FileResponse;)V
    .locals 3
    .param p1    # Lcom/tonyodev/fetch2core/server/FileResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fileResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->throwExceptionIfClosed()V

    invoke-direct {p0}, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->throwIfNotConnected()V

    iget-object v1, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->dataOutput:Ljava/io/DataOutputStream;

    if-nez v1, :cond_0

    const-string v2, "dataOutput"

    invoke-static {v2}, Lkotlin/jvm/internal/M;->S(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/server/FileResponse;->getToJsonString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->dataOutput:Ljava/io/DataOutputStream;

    if-nez p1, :cond_1

    const-string v1, "dataOutput"

    invoke-static {v1}, Lkotlin/jvm/internal/M;->S(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    sget-object p1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method public sendRawBytes([BII)V
    .locals 3
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "byteArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->throwExceptionIfClosed()V

    invoke-direct {p0}, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->throwIfNotConnected()V

    iget-object v1, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->dataOutput:Ljava/io/DataOutputStream;

    if-nez v1, :cond_0

    const-string v2, "dataOutput"

    invoke-static {v2}, Lkotlin/jvm/internal/M;->S(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/DataOutputStream;->write([BII)V

    iget-object p1, p0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->dataOutput:Ljava/io/DataOutputStream;

    if-nez p1, :cond_1

    const-string p2, "dataOutput"

    invoke-static {p2}, Lkotlin/jvm/internal/M;->S(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    sget-object p1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method
