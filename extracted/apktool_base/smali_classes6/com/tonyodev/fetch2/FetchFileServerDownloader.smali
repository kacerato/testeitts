.class public Lcom/tonyodev/fetch2/FetchFileServerDownloader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tonyodev/fetch2core/FileServerDownloader;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFetchFileServerDownloader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchFileServerDownloader.kt\ncom/tonyodev/fetch2/FetchFileServerDownloader\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,258:1\n215#2,2:259\n32#3,2:261\n32#3,2:265\n1855#4,2:263\n*S KotlinDebug\n*F\n+ 1 FetchFileServerDownloader.kt\ncom/tonyodev/fetch2/FetchFileServerDownloader\n*L\n42#1:259,2\n87#1:261,2\n243#1:265,2\n143#1:263,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nFetchFileServerDownloader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchFileServerDownloader.kt\ncom/tonyodev/fetch2/FetchFileServerDownloader\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,258:1\n215#2,2:259\n32#3,2:261\n32#3,2:265\n1855#4,2:263\n*S KotlinDebug\n*F\n+ 1 FetchFileServerDownloader.kt\ncom/tonyodev/fetch2/FetchFileServerDownloader\n*L\n42#1:259,2\n87#1:261,2\n243#1:265,2\n143#1:263,2\n*E\n"
    }
.end annotation


# instance fields
.field private final connections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tonyodev/fetch2core/Downloader$Response;",
            "Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fileDownloaderType:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final timeout:J


# direct methods
.method public constructor <init>()V
    .locals 6
    .annotation build LLf/k;
    .end annotation

    .line 1
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tonyodev/fetch2/FetchFileServerDownloader;-><init>(Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;JILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;)V
    .locals 7
    .param p1    # Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LLf/k;
    .end annotation

    .line 2
    const-string v0, "fileDownloaderType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/tonyodev/fetch2/FetchFileServerDownloader;-><init>(Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;JILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;J)V
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LLf/k;
    .end annotation

    const-string v0, "fileDownloaderType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/tonyodev/fetch2/FetchFileServerDownloader;->fileDownloaderType:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    .line 5
    iput-wide p2, p0, Lcom/tonyodev/fetch2/FetchFileServerDownloader;->timeout:J

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "synchronizedMap(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/FetchFileServerDownloader;->connections:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;JILkotlin/jvm/internal/x;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 7
    sget-object p1, Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;->SEQUENTIAL:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const-wide/16 p2, 0x4e20

    .line 8
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/tonyodev/fetch2/FetchFileServerDownloader;-><init>(Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;J)V

    return-void
.end method

.method private final getExtrasFromCatalogItem(Lorg/json/JSONObject;)Lcom/tonyodev/fetch2core/Extras;
    .locals 5

    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "extras"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    const-string v2, "keys(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/tonyodev/fetch2core/Extras;

    invoke-direct {p1, v0}, Lcom/tonyodev/fetch2core/Extras;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object p1, Lcom/tonyodev/fetch2core/Extras;->CREATOR:Lcom/tonyodev/fetch2core/Extras$CREATOR;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/Extras$CREATOR;->getEmptyExtras()Lcom/tonyodev/fetch2core/Extras;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private final parseFileResourceList(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2core/FileResource;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Lorg/json/JSONArray;

    const-string v1, "catalog"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Lcom/tonyodev/fetch2core/FileResource;

    invoke-direct {v3}, Lcom/tonyodev/fetch2core/FileResource;-><init>()V

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/tonyodev/fetch2core/FileResource;->setId(J)V

    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "getString(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/tonyodev/fetch2core/FileResource;->setName(Ljava/lang/String;)V

    const-string v5, "length"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/tonyodev/fetch2core/FileResource;->setLength(J)V

    invoke-static {v4}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-direct {p0, v4}, Lcom/tonyodev/fetch2/FetchFileServerDownloader;->getExtrasFromCatalogItem(Lorg/json/JSONObject;)Lcom/tonyodev/fetch2core/Extras;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/tonyodev/fetch2core/FileResource;->setExtras(Lcom/tonyodev/fetch2core/Extras;)V

    const-string v5, "md5"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/tonyodev/fetch2core/FileResource;->setMd5(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/tonyodev/fetch2/FetchFileServerDownloader;->connections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;

    invoke-virtual {v1}, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->close()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tonyodev/fetch2/FetchFileServerDownloader;->connections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public disconnect(Lcom/tonyodev/fetch2core/Downloader$Response;)V
    .locals 2
    .param p1    # Lcom/tonyodev/fetch2core/Downloader$Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/FetchFileServerDownloader;->connections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tonyodev/fetch2/FetchFileServerDownloader;->connections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;

    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchFileServerDownloader;->connections:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->close()V

    :cond_0
    return-void
.end method

.method public execute(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Lcom/tonyodev/fetch2core/InterruptMonitor;)Lcom/tonyodev/fetch2core/Downloader$Response;
    .locals 24
    .param p1    # Lcom/tonyodev/fetch2core/Downloader$ServerRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2core/InterruptMonitor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    const-string v1, "request"

    invoke-static {v12, v1}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "interruptMonitor"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v13, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-direct {v13, v1, v3, v1}, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;-><init>(Ljava/net/Socket;ILkotlin/jvm/internal/x;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    invoke-virtual {v0, v13, v12}, Lcom/tonyodev/fetch2/FetchFileServerDownloader;->onPreClientExecute(Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;->getInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-virtual {v13, v5}, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->connect(Ljava/net/SocketAddress;)V

    invoke-virtual {v4}, Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;->getFileRequest()Lcom/tonyodev/fetch2core/server/FileRequest;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->sendFileRequest(Lcom/tonyodev/fetch2core/server/FileRequest;)V

    :cond_0
    invoke-interface/range {p2 .. p2}, Lcom/tonyodev/fetch2core/InterruptMonitor;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v13}, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->receiveFileResponse()Lcom/tonyodev/fetch2core/server/FileResponse;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/tonyodev/fetch2core/server/FileResponse;->getStatus()I

    move-result v14

    invoke-virtual {v4}, Lcom/tonyodev/fetch2core/server/FileResponse;->getConnection()I

    move-result v2

    const/16 v5, 0xce

    const/4 v6, 0x0

    if-ne v2, v3, :cond_1

    invoke-virtual {v4}, Lcom/tonyodev/fetch2core/server/FileResponse;->getType()I

    move-result v2

    if-ne v2, v3, :cond_1

    invoke-virtual {v4}, Lcom/tonyodev/fetch2core/server/FileResponse;->getStatus()I

    move-result v2

    if-ne v2, v5, :cond_1

    move v15, v3

    goto :goto_0

    :cond_1
    move v15, v6

    :goto_0
    invoke-virtual {v4}, Lcom/tonyodev/fetch2core/server/FileResponse;->getContentLength()J

    move-result-wide v16

    invoke-virtual {v13}, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    if-nez v15, :cond_2

    invoke-static {v11, v6}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->copyStreamToString(Ljava/io/InputStream;Z)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v18, v2

    goto :goto_1

    :cond_2
    move-object/from16 v18, v1

    :goto_1
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v4}, Lcom/tonyodev/fetch2core/server/FileResponse;->getToJsonString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    const-string v8, "keys(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lpf/G;->l(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v10, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    :cond_3
    const-string v2, "Content-MD5"

    invoke-interface {v10, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v4}, Lcom/tonyodev/fetch2core/server/FileResponse;->getMd5()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lpf/G;->l(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v10, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v0, v10}, Lcom/tonyodev/fetch2/FetchFileServerDownloader;->getContentHash(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v19

    if-eq v14, v5, :cond_7

    const-string v2, "Accept-Ranges"

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_5

    invoke-static {v2}, Lpf/S;->L2(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_5
    const-string v2, "bytes"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move/from16 v20, v6

    goto :goto_4

    :cond_7
    :goto_3
    move/from16 v20, v3

    :goto_4
    new-instance v9, Lcom/tonyodev/fetch2core/Downloader$Response;

    const/4 v6, 0x0

    move-object v1, v9

    move v2, v14

    move v3, v15

    move-wide/from16 v4, v16

    move-object/from16 v7, p1

    move-object/from16 v8, v19

    move-object/from16 v21, v9

    move-object v9, v10

    move-object/from16 v22, v10

    move/from16 v10, v20

    move-object/from16 v23, v11

    move-object/from16 v11, v18

    invoke-direct/range {v1 .. v11}, Lcom/tonyodev/fetch2core/Downloader$Response;-><init>(IZJLjava/io/InputStream;Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)V

    move-object/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Lcom/tonyodev/fetch2/FetchFileServerDownloader;->onServerResponse(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Lcom/tonyodev/fetch2core/Downloader$Response;)V

    new-instance v11, Lcom/tonyodev/fetch2core/Downloader$Response;

    move-object v1, v11

    move-object/from16 v6, v23

    move-object/from16 v9, v22

    move-object v12, v11

    move-object/from16 v11, v18

    invoke-direct/range {v1 .. v11}, Lcom/tonyodev/fetch2core/Downloader$Response;-><init>(IZJLjava/io/InputStream;Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)V

    iget-object v1, v0, Lcom/tonyodev/fetch2/FetchFileServerDownloader;->connections:Ljava/util/Map;

    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v12

    :cond_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iget-wide v8, v0, Lcom/tonyodev/fetch2/FetchFileServerDownloader;->timeout:J

    move-wide v4, v10

    invoke-static/range {v4 .. v9}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->hasIntervalTimeElapsed(JJJ)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_9
    return-object v1
.end method

.method public final getConnections()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/tonyodev/fetch2core/Downloader$Response;",
            "Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/FetchFileServerDownloader;->connections:Ljava/util/Map;

    return-object v0
.end method

.method public getContentHash(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "responseHeaders"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Content-MD5"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lpf/S;->L2(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1

    :cond_0
    const-string p1, ""

    :cond_1
    return-object p1
.end method

.method public getFetchFileServerCatalog(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Ljava/util/List;
    .locals 9
    .param p1    # Lcom/tonyodev/fetch2core/Downloader$ServerRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2core/Downloader$ServerRequest;",
            ")",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2core/FileResource;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "serverRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/tonyodev/fetch2/FetchFileServerDownloader$getFetchFileServerCatalog$response$1;

    invoke-direct {v0}, Lcom/tonyodev/fetch2/FetchFileServerDownloader$getFetchFileServerCatalog$response$1;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/tonyodev/fetch2/FetchFileServerDownloader;->execute(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Lcom/tonyodev/fetch2core/InterruptMonitor;)Lcom/tonyodev/fetch2core/Downloader$Response;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/Downloader$Response;->getByteStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "empty_response_body"

    if-eqz v0, :cond_6

    :try_start_0
    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/Downloader$Response;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v2, "Type"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    invoke-static {v0}, Lpf/S;->L2(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_1
    move v0, v2

    :goto_1
    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    const/16 v0, 0x400

    new-array v4, v0, [C

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/Downloader$Response;->getByteStream()Ljava/io/InputStream;

    move-result-object v7

    sget-object v8, Lag/g;->b:Ljava/nio/charset/Charset;

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7, v0}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v8

    :goto_2
    if-eq v8, v2, :cond_2

    invoke-virtual {v5, v4, v7, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v7, v0}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v8

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "toString(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_3

    goto :goto_3

    :cond_3
    move v3, v7

    :goto_3
    if-eqz v3, :cond_4

    invoke-direct {p0, v0}, Lcom/tonyodev/fetch2/FetchFileServerDownloader;->parseFileResourceList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/tonyodev/fetch2/FetchFileServerDownloader;->disconnect(Lcom/tonyodev/fetch2core/Downloader$Response;)V

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {p0, p1}, Lcom/tonyodev/fetch2/FetchFileServerDownloader;->disconnect(Lcom/tonyodev/fetch2core/Downloader$Response;)V

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "fetch_file_server_invalid_response_type"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    invoke-virtual {p0, p1}, Lcom/tonyodev/fetch2/FetchFileServerDownloader;->disconnect(Lcom/tonyodev/fetch2core/Downloader$Response;)V

    throw v0

    :cond_6
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFileSlicingCount(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;J)Ljava/lang/Integer;
    .locals 0
    .param p1    # Lcom/tonyodev/fetch2core/Downloader$ServerRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p2, "request"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getHeadRequestMethodSupported(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Z
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2core/Downloader$ServerRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public getRequestBufferSize(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)I
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2core/Downloader$ServerRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x2000

    return p1
.end method

.method public getRequestContentLength(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)J
    .locals 2
    .param p1    # Lcom/tonyodev/fetch2core/Downloader$ServerRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getRequestContentLength(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Lcom/tonyodev/fetch2core/Downloader;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRequestFileDownloaderType(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Ljava/util/Set;)Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2core/Downloader$ServerRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2core/Downloader$ServerRequest;",
            "Ljava/util/Set<",
            "+",
            "Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;",
            ">;)",
            "Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "supportedFileDownloaderTypes"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tonyodev/fetch2/FetchFileServerDownloader;->fileDownloaderType:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    return-object p1
.end method

.method public getRequestSupportedFileDownloaderTypes(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Ljava/util/Set;
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2core/Downloader$ServerRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2core/Downloader$ServerRequest;",
            ")",
            "Ljava/util/Set<",
            "Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1, p0}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getRequestSupportedFileDownloaderTypes(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Lcom/tonyodev/fetch2core/Downloader;)Ljava/util/Set;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/tonyodev/fetch2/FetchFileServerDownloader;->fileDownloaderType:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    filled-new-array {p1}, [Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    move-result-object p1

    invoke-static {p1}, Lpf/z0;->q([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public onPreClientExecute(Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;
    .locals 17
    .param p1    # Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2core/Downloader$ServerRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "client"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual/range {p2 .. p2}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 3
    const-string v2, "Range"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "bytes=0-"

    :cond_0
    invoke-static {v2}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getRangeForFetchFileServerRequest(Ljava/lang/String;)Lnf/Z;

    move-result-object v2

    .line 4
    const-string v3, "Authorization"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    move-object v11, v3

    .line 5
    invoke-virtual/range {p2 .. p2}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getFetchFileServerPort(Ljava/lang/String;)I

    move-result v3

    .line 6
    invoke-virtual/range {p2 .. p2}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getFetchFileServerHostAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual/range {p2 .. p2}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getExtras()Lcom/tonyodev/fetch2core/Extras;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tonyodev/fetch2core/Extras;->toMutableExtras()Lcom/tonyodev/fetch2core/MutableExtras;

    move-result-object v13

    .line 8
    invoke-virtual/range {p2 .. p2}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getHeaders()Ljava/util/Map;

    move-result-object v5

    .line 9
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v13, v7, v6}, Lcom/tonyodev/fetch2core/MutableExtras;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_2
    new-instance v15, Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;

    invoke-direct {v15}, Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;-><init>()V

    .line 12
    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, v4, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v15, v5}, Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;->setInetSocketAddress(Ljava/net/InetSocketAddress;)V

    .line 13
    new-instance v3, Lcom/tonyodev/fetch2core/server/FileRequest;

    .line 14
    invoke-virtual/range {p2 .. p2}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getFileResourceIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 15
    invoke-virtual {v2}, Lnf/Z;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    .line 16
    invoke-virtual {v2}, Lnf/Z;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    .line 17
    const-string v1, "Client"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_3

    .line 18
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    move-object v12, v1

    .line 19
    const-string v1, "Page"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-static {v1}, Lag/J;->r1(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v14, v1

    goto :goto_1

    :cond_4
    move v14, v2

    .line 20
    :goto_1
    const-string v1, "Size"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-static {v0}, Lag/J;->r1(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_5
    move v0, v2

    :goto_2
    const/16 v16, 0x0

    const/4 v5, 0x1

    move-object v4, v3

    move-object v1, v15

    move v15, v0

    .line 21
    invoke-direct/range {v4 .. v16}, Lcom/tonyodev/fetch2core/server/FileRequest;-><init>(ILjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Lcom/tonyodev/fetch2core/Extras;IIZ)V

    invoke-virtual {v1, v3}, Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;->setFileRequest(Lcom/tonyodev/fetch2core/server/FileRequest;)V

    return-object v1
.end method

.method public bridge synthetic onPreClientExecute(Ljava/lang/Object;Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;

    invoke-virtual {p0, p1, p2}, Lcom/tonyodev/fetch2/FetchFileServerDownloader;->onPreClientExecute(Lcom/tonyodev/fetch2core/server/FetchFileResourceTransporter;Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Lcom/tonyodev/fetch2core/FileServerDownloader$TransporterRequest;

    move-result-object p1

    return-object p1
.end method

.method public onServerResponse(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Lcom/tonyodev/fetch2core/Downloader$Response;)V
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2core/Downloader$ServerRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2core/Downloader$Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public verifyContentHash(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Ljava/lang/String;)Z
    .locals 2
    .param p1    # Lcom/tonyodev/fetch2core/Downloader$ServerRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hash"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getFile()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getFileMd5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    :cond_1
    return v1
.end method
