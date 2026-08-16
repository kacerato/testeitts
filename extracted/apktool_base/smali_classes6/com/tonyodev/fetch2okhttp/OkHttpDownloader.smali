.class public Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tonyodev/fetch2core/Downloader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tonyodev/fetch2core/Downloader<",
        "Lokhttp3/z;",
        "Lokhttp3/C;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOkHttpDownloader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkHttpDownloader.kt\ncom/tonyodev/fetch2okhttp/OkHttpDownloader\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,209:1\n1648#2,2:210\n1648#2,2:212\n*E\n*S KotlinDebug\n*F\n+ 1 OkHttpDownloader.kt\ncom/tonyodev/fetch2okhttp/OkHttpDownloader\n*L\n46#1,2:210\n152#1,2:212\n*E\n"
.end annotation


# instance fields
.field private volatile client:Lokhttp3/z;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final connections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tonyodev/fetch2core/Downloader$Response;",
            "Lokhttp3/E;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fileDownloaderType:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation build LLf/k;
    .end annotation

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;-><init>(Lokhttp3/z;Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;ILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;)V
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fileDownloaderType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0, p1}, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;-><init>(Lokhttp3/z;Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/z;)V
    .locals 2
    .param p1    # Lokhttp3/z;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build LLf/k;
    .end annotation

    .line 2
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;-><init>(Lokhttp3/z;Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;ILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/z;Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;)V
    .locals 2
    .param p1    # Lokhttp3/z;
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

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->fileDownloaderType:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    .line 4
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-static {p2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    const-string v0, "Collections.synchronized\u2026er.Response, Response>())"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->connections:Ljava/util/Map;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Lokhttp3/z$b;

    invoke-direct {p1}, Lokhttp3/z$b;-><init>()V

    .line 6
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x4e20

    invoke-virtual {p1, v0, v1, p2}, Lokhttp3/z$b;->C(JLjava/util/concurrent/TimeUnit;)Lokhttp3/z$b;

    move-result-object p1

    const-wide/16 v0, 0x3a98

    .line 7
    invoke-virtual {p1, v0, v1, p2}, Lokhttp3/z$b;->i(JLjava/util/concurrent/TimeUnit;)Lokhttp3/z$b;

    move-result-object p1

    const/4 p2, 0x0

    .line 8
    invoke-virtual {p1, p2}, Lokhttp3/z$b;->e(Lokhttp3/c;)Lokhttp3/z$b;

    move-result-object p1

    const/4 p2, 0x1

    .line 9
    invoke-virtual {p1, p2}, Lokhttp3/z$b;->r(Z)Lokhttp3/z$b;

    move-result-object p1

    .line 10
    invoke-virtual {p1, p2}, Lokhttp3/z$b;->s(Z)Lokhttp3/z$b;

    move-result-object p1

    const/4 p2, 0x0

    .line 11
    invoke-virtual {p1, p2}, Lokhttp3/z$b;->E(Z)Lokhttp3/z$b;

    move-result-object p1

    .line 12
    invoke-static {}, Lcom/tonyodev/fetch2okhttp/OkHttpUtils;->getDefaultCookieJar()Lokhttp3/n;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/z$b;->m(Lokhttp3/n;)Lokhttp3/z$b;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lokhttp3/z$b;->d()Lokhttp3/z;

    move-result-object p1

    const-string p2, "OkHttpClient.Builder()\n \u2026r())\n            .build()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/M;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iput-object p1, p0, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->client:Lokhttp3/z;

    return-void
.end method

.method public synthetic constructor <init>(Lokhttp3/z;Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;ILkotlin/jvm/internal/x;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 14
    sget-object p2, Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;->SEQUENTIAL:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;-><init>(Lokhttp3/z;Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;)V

    return-void
.end method

.method private final closeResponse(Lokhttp3/E;)V
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lokhttp3/E;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private final getRedirectedServerRequest(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Ljava/lang/String;)Lcom/tonyodev/fetch2core/Downloader$ServerRequest;
    .locals 15

    new-instance v14, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getId()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getFileUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getIdentifier()J

    move-result-wide v7

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getRequestMethod()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getExtras()Lcom/tonyodev/fetch2core/Extras;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getSegment()I

    move-result v13

    move-object v0, v14

    move-object/from16 v12, p2

    invoke-direct/range {v0 .. v13}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;-><init>(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;Lcom/tonyodev/fetch2core/Extras;ZLjava/lang/String;I)V

    return-object v14
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->connections:Ljava/util/Map;

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

    check-cast v1, Lokhttp3/E;

    invoke-direct {p0, v1}, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->closeResponse(Lokhttp3/E;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->connections:Ljava/util/Map;

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

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->connections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->connections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/E;

    iget-object v1, p0, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->connections:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->closeResponse(Lokhttp3/E;)V

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

    invoke-static {v12, v1}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "interruptMonitor"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->client:Lokhttp3/z;

    invoke-virtual {v0, v1, v12}, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->onPreClientExecute(Lokhttp3/z;Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Lokhttp3/C;

    move-result-object v1

    const-string v2, "Referer"

    invoke-virtual {v1, v2}, Lokhttp3/C;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "okHttpRequest.newBuilder\u2026                 .build()"

    if-nez v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getRefererFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lokhttp3/C;->h()Lokhttp3/C$a;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lokhttp3/C$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/C$a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/C$a;->b()Lokhttp3/C;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/M;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v3, v0, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->client:Lokhttp3/z;

    invoke-virtual {v3, v1}, Lokhttp3/z;->a(Lokhttp3/C;)Lokhttp3/e;

    move-result-object v1

    invoke-interface {v1}, Lokhttp3/e;->execute()Lokhttp3/E;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/E;->m()Lokhttp3/u;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/u;->m()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1}, Lokhttp3/E;->g()I

    move-result v5

    const/16 v6, 0x12e

    const-string v7, "responseHeaders"

    if-eq v5, v6, :cond_1

    const/16 v6, 0x12d

    if-eq v5, v6, :cond_1

    const/16 v6, 0x12f

    if-ne v5, v6, :cond_4

    :cond_1
    invoke-static {v3, v7}, Lkotlin/jvm/internal/M;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "Location"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getHeaderValue(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v5, v0, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->client:Lokhttp3/z;

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getHeaderValue(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v3, ""

    :goto_0
    invoke-direct {v0, v12, v3}, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->getRedirectedServerRequest(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Ljava/lang/String;)Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->onPreClientExecute(Lokhttp3/z;Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Lokhttp3/C;

    move-result-object v3

    invoke-virtual {v3, v2}, Lokhttp3/C;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getRefererFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lokhttp3/C;->h()Lokhttp3/C$a;

    move-result-object v3

    invoke-virtual {v3, v2, v5}, Lokhttp3/C$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/C$a;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/C$a;->b()Lokhttp3/C;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/M;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    :try_start_0
    invoke-virtual {v1}, Lokhttp3/E;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v1, v0, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->client:Lokhttp3/z;

    invoke-virtual {v1, v3}, Lokhttp3/z;->a(Lokhttp3/C;)Lokhttp3/e;

    move-result-object v1

    invoke-interface {v1}, Lokhttp3/e;->execute()Lokhttp3/E;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/E;->m()Lokhttp3/u;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/u;->m()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1}, Lokhttp3/E;->g()I

    move-result v3

    move-object v13, v1

    move-object v15, v2

    move v14, v3

    goto :goto_1

    :cond_4
    move-object v13, v1

    move-object v15, v3

    move v14, v5

    :goto_1
    const-string v1, "okHttpResponse"

    invoke-static {v13, v1}, Lkotlin/jvm/internal/M;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13}, Lokhttp3/E;->o()Z

    move-result v16

    invoke-static {v15, v7}, Lkotlin/jvm/internal/M;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, -0x1

    invoke-static {v15, v1, v2}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getContentLengthFromHeader(Ljava/util/Map;J)J

    move-result-wide v17

    invoke-virtual {v13}, Lokhttp3/E;->c()Lokhttp3/F;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lokhttp3/F;->c()Ljava/io/InputStream;

    move-result-object v1

    move-object v11, v1

    goto :goto_2

    :cond_5
    move-object v11, v2

    :goto_2
    if-nez v16, :cond_6

    const/4 v1, 0x0

    invoke-static {v11, v1}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->copyStreamToString(Ljava/io/InputStream;Z)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v19, v1

    goto :goto_3

    :cond_6
    move-object/from16 v19, v2

    :goto_3
    invoke-static {v15}, Lpf/o0;->J0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->getContentHash(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v20

    invoke-static {v14, v15}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->acceptRanges(ILjava/util/Map;)Z

    move-result v21

    new-instance v10, Lcom/tonyodev/fetch2core/Downloader$Response;

    const/4 v6, 0x0

    move-object v1, v10

    move v2, v14

    move/from16 v3, v16

    move-wide/from16 v4, v17

    move-object/from16 v7, p1

    move-object/from16 v8, v20

    move-object v9, v15

    move-object/from16 v22, v10

    move/from16 v10, v21

    move-object/from16 v23, v11

    move-object/from16 v11, v19

    invoke-direct/range {v1 .. v11}, Lcom/tonyodev/fetch2core/Downloader$Response;-><init>(IZJLjava/io/InputStream;Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)V

    move-object/from16 v1, v22

    invoke-virtual {v0, v12, v1}, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->onServerResponse(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Lcom/tonyodev/fetch2core/Downloader$Response;)V

    new-instance v11, Lcom/tonyodev/fetch2core/Downloader$Response;

    move-object v1, v11

    move-object/from16 v6, v23

    move-object v12, v11

    move-object/from16 v11, v19

    invoke-direct/range {v1 .. v11}, Lcom/tonyodev/fetch2core/Downloader$Response;-><init>(IZJLjava/io/InputStream;Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)V

    iget-object v1, v0, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->connections:Ljava/util/Map;

    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v12
.end method

.method public final getClient()Lokhttp3/z;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->client:Lokhttp3/z;

    return-object v0
.end method

.method public final getConnections()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/tonyodev/fetch2core/Downloader$Response;",
            "Lokhttp3/E;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->connections:Ljava/util/Map;

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

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Content-MD5"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getHeaderValue(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
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

    invoke-static {p1, p2}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

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

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

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

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

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

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

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

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "supportedFileDownloaderTypes"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->fileDownloaderType:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

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

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->fileDownloaderType:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

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
    iget-object p1, p0, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->fileDownloaderType:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    filled-new-array {p1}, [Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    move-result-object p1

    invoke-static {p1}, Lpf/z0;->q([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic onPreClientExecute(Ljava/lang/Object;Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lokhttp3/z;

    invoke-virtual {p0, p1, p2}, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->onPreClientExecute(Lokhttp3/z;Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Lokhttp3/C;

    move-result-object p1

    return-object p1
.end method

.method public onPreClientExecute(Lokhttp3/z;Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Lokhttp3/C;
    .locals 2
    .param p1    # Lokhttp3/z;
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

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "request"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lokhttp3/C$a;

    invoke-direct {p1}, Lokhttp3/C$a;-><init>()V

    .line 3
    invoke-virtual {p2}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/C$a;->q(Ljava/lang/String;)Lokhttp3/C$a;

    move-result-object p1

    .line 4
    invoke-virtual {p2}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lokhttp3/C$a;->j(Ljava/lang/String;Lokhttp3/D;)Lokhttp3/C$a;

    move-result-object p1

    .line 5
    invoke-virtual {p2}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getHeaders()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 6
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lokhttp3/C$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/C$a;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lokhttp3/C$a;->b()Lokhttp3/C;

    move-result-object p1

    const-string p2, "okHttpRequestBuilder.build()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/M;->h(Ljava/lang/Object;Ljava/lang/String;)V

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

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final setClient(Lokhttp3/z;)V
    .locals 1
    .param p1    # Lokhttp3/z;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2okhttp/OkHttpDownloader;->client:Lokhttp3/z;

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

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hash"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

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
