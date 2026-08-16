.class public Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tonyodev/fetch2core/Downloader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tonyodev/fetch2core/Downloader<",
        "Ljava/net/HttpURLConnection;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpUrlConnectionDownloader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpUrlConnectionDownloader.kt\ncom/tonyodev/fetch2/HttpUrlConnectionDownloader\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,219:1\n1855#2,2:220\n1855#2,2:222\n*S KotlinDebug\n*F\n+ 1 HttpUrlConnectionDownloader.kt\ncom/tonyodev/fetch2/HttpUrlConnectionDownloader\n*L\n43#1:220,2\n149#1:222,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nHttpUrlConnectionDownloader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpUrlConnectionDownloader.kt\ncom/tonyodev/fetch2/HttpUrlConnectionDownloader\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,219:1\n1855#2,2:220\n1855#2,2:222\n*S KotlinDebug\n*F\n+ 1 HttpUrlConnectionDownloader.kt\ncom/tonyodev/fetch2/HttpUrlConnectionDownloader\n*L\n43#1:220,2\n149#1:222,2\n*E\n"
    }
.end annotation


# instance fields
.field private final connectionPrefs:Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final connections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tonyodev/fetch2core/Downloader$Response;",
            "Ljava/net/HttpURLConnection;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final cookieManager:Ljava/net/CookieManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fileDownloaderType:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation build LLf/k;
    .end annotation

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;-><init>(Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;ILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;)V
    .locals 2
    .param p1    # Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build LLf/k;
    .end annotation

    .line 2
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;-><init>(Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;ILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;)V
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LLf/k;
    .end annotation

    const-string v0, "fileDownloaderType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->fileDownloaderType:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;

    invoke-direct {p1}, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->connectionPrefs:Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "synchronizedMap(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->connections:Ljava/util/Map;

    .line 7
    invoke-static {}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getDefaultCookieManager()Ljava/net/CookieManager;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->cookieManager:Ljava/net/CookieManager;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;ILkotlin/jvm/internal/x;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 8
    sget-object p2, Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;->SEQUENTIAL:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    .line 9
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;-><init>(Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;)V

    return-void
.end method

.method public constructor <init>(Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;)V
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fileDownloaderType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0, p1}, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;-><init>(Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;)V

    return-void
.end method

.method private final disconnectClient(Ljava/net/HttpURLConnection;)V
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private final getCleanedHeaders(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    invoke-static {}, Lpf/H;->J()Ljava/util/List;

    move-result-object v1

    :cond_1
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->connections:Ljava/util/Map;

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

    check-cast v1, Ljava/net/HttpURLConnection;

    invoke-direct {p0, v1}, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->disconnectClient(Ljava/net/HttpURLConnection;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->connections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

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

    iget-object v0, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->connections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->connections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->connections:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->disconnectClient(Ljava/net/HttpURLConnection;)V

    :cond_0
    return-void
.end method

.method public execute(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Lcom/tonyodev/fetch2core/InterruptMonitor;)Lcom/tonyodev/fetch2core/Downloader$Response;
    .locals 23
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

    iget-object v1, v0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->cookieManager:Ljava/net/CookieManager;

    invoke-static {v1}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    new-instance v1, Ljava/net/URL;

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v1, v12}, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->onPreClientExecute(Ljava/net/HttpURLConnection;Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Ljava/lang/Void;

    const-string v3, "Referer"

    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getRefererFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    const-string v5, "getHeaderFields(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v4}, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->getCleanedHeaders(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v7, 0x12e

    const-string v8, ""

    if-eq v6, v7, :cond_1

    const/16 v7, 0x12d

    if-eq v6, v7, :cond_1

    const/16 v7, 0x12f

    if-ne v6, v7, :cond_4

    :cond_1
    const-string v7, "Location"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getHeaderValue(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    :try_start_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v1, Ljava/net/URL;

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getHeaderValue(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    move-object v4, v8

    :cond_2
    invoke-direct {v1, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v1, v12}, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->onPreClientExecute(Ljava/net/HttpURLConnection;Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Ljava/lang/Void;

    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getRefererFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->getCleanedHeaders(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    move-object v13, v1

    move-object v15, v2

    move v14, v3

    goto :goto_0

    :cond_4
    move-object v13, v1

    move-object v15, v4

    move v14, v6

    :goto_0
    invoke-virtual {v0, v14}, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->isResponseOk(I)Z

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    if-eqz v1, :cond_5

    invoke-static {v15, v3, v4}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getContentLengthFromHeader(Ljava/util/Map;J)J

    move-result-wide v3

    invoke-virtual {v13}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v15}, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->getContentHash(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v19, v1

    move-object/from16 v21, v2

    move-wide/from16 v17, v3

    move-object/from16 v20, v6

    move/from16 v16, v7

    goto :goto_1

    :cond_5
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    const/4 v6, 0x0

    invoke-static {v1, v6}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->copyStreamToString(Ljava/io/InputStream;Z)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v21, v1

    move-object/from16 v19, v2

    move-wide/from16 v17, v3

    move/from16 v16, v6

    move-object/from16 v20, v8

    :goto_1
    invoke-static {v14, v15}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->acceptRanges(ILjava/util/Map;)Z

    move-result v22

    new-instance v11, Lcom/tonyodev/fetch2core/Downloader$Response;

    invoke-virtual {v13}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v9

    invoke-static {v9, v5}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v1, v11

    move v2, v14

    move/from16 v3, v16

    move-wide/from16 v4, v17

    move-object/from16 v7, p1

    move-object/from16 v8, v20

    move/from16 v10, v22

    move-object/from16 p2, v13

    move-object v13, v11

    move-object/from16 v11, v21

    invoke-direct/range {v1 .. v11}, Lcom/tonyodev/fetch2core/Downloader$Response;-><init>(IZJLjava/io/InputStream;Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)V

    invoke-virtual {v0, v12, v13}, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->onServerResponse(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Lcom/tonyodev/fetch2core/Downloader$Response;)V

    new-instance v13, Lcom/tonyodev/fetch2core/Downloader$Response;

    move-object v1, v13

    move-object/from16 v6, v19

    move-object v9, v15

    invoke-direct/range {v1 .. v11}, Lcom/tonyodev/fetch2core/Downloader$Response;-><init>(IZJLjava/io/InputStream;Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)V

    iget-object v1, v0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->connections:Ljava/util/Map;

    move-object/from16 v2, p2

    invoke-interface {v1, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v13
.end method

.method public final getConnectionPrefs()Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->connectionPrefs:Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;

    return-object v0
.end method

.method public final getConnections()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/tonyodev/fetch2core/Downloader$Response;",
            "Ljava/net/HttpURLConnection;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->connections:Ljava/util/Map;

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

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getHeaderValue(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public final getCookieManager()Ljava/net/CookieManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->cookieManager:Ljava/net/CookieManager;

    return-object v0
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

    iget-object p1, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->fileDownloaderType:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    return-object p1
.end method

.method public getRequestSupportedFileDownloaderTypes(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Ljava/util/Set;
    .locals 2
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

    iget-object v0, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->fileDownloaderType:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    sget-object v1, Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;->SEQUENTIAL:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    if-ne v0, v1, :cond_0

    filled-new-array {v0}, [Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    move-result-object p1

    invoke-static {p1}, Lpf/z0;->q([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    invoke-static {p1, p0}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getRequestSupportedFileDownloaderTypes(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Lcom/tonyodev/fetch2core/Downloader;)Ljava/util/Set;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->fileDownloaderType:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    filled-new-array {p1}, [Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    move-result-object p1

    invoke-static {p1}, Lpf/z0;->q([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final isResponseOk(I)Z
    .locals 2

    const/16 v0, 0xc8

    const/4 v1, 0x0

    if-gt v0, p1, :cond_0

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public bridge synthetic onPreClientExecute(Ljava/lang/Object;Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p1, p2}, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->onPreClientExecute(Ljava/net/HttpURLConnection;Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public onPreClientExecute(Ljava/net/HttpURLConnection;Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Ljava/lang/Void;
    .locals 2
    .param p1    # Ljava/net/HttpURLConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2core/Downloader$ServerRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->connectionPrefs:Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;->getReadTimeout()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 4
    iget-object v0, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->connectionPrefs:Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;->getConnectTimeout()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 5
    iget-object v0, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->connectionPrefs:Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;->getUsesCache()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 6
    iget-object v0, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->connectionPrefs:Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;->getUsesDefaultCache()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    .line 7
    iget-object v0, p0, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader;->connectionPrefs:Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/HttpUrlConnectionDownloader$HttpUrlConnectionPreferences;->getFollowsRedirect()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 9
    invoke-virtual {p2}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getHeaders()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 10
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

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
