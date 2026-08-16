.class public final Lcom/tonyodev/fetch2/util/FetchUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LLf/j;
    name = "FetchUtils"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2/util/FetchUtils$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFetchUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchUtils.kt\ncom/tonyodev/fetch2/util/FetchUtils\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,223:1\n3792#2:224\n4307#2,2:225\n1855#3,2:227\n*S KotlinDebug\n*F\n+ 1 FetchUtils.kt\ncom/tonyodev/fetch2/util/FetchUtils\n*L\n148#1:224\n148#1:225,2\n151#1:227,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nFetchUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchUtils.kt\ncom/tonyodev/fetch2/util/FetchUtils\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,223:1\n3792#2:224\n4307#2,2:225\n1855#3,2:227\n*S KotlinDebug\n*F\n+ 1 FetchUtils.kt\ncom/tonyodev/fetch2/util/FetchUtils\n*L\n148#1:224\n148#1:225,2\n151#1:227,2\n*E\n"
    }
.end annotation


# direct methods
.method public static final awaitFinishOrTimeout(JLcom/tonyodev/fetch2/fetch/FetchHandler;)V
    .locals 15
    .param p2    # Lcom/tonyodev/fetch2/fetch/FetchHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fetchHandler"

    move-object/from16 v6, p2

    invoke-static {v6, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-wide/16 v7, 0x0

    cmp-long v0, p0, v7

    const/4 v9, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    move v10, v0

    goto :goto_0

    :cond_0
    move v10, v9

    :goto_0
    if-eqz v10, :cond_2

    const-wide/16 v0, 0x1388

    :cond_1
    move-wide v11, v0

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x3e8

    cmp-long v2, p0, v0

    if-gez v2, :cond_1

    move-wide v11, p0

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-interface/range {p2 .. p2}, Lcom/tonyodev/fetch2/fetch/FetchHandler;->getPendingCount()J

    move-result-wide v0

    move v2, v9

    :goto_2
    if-nez v10, :cond_4

    cmp-long v0, v0, v7

    if-lez v0, :cond_3

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    return-void

    :cond_4
    :goto_3
    :try_start_0
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_5

    move v2, v9

    goto :goto_4

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide v0, v13

    move-wide v4, p0

    invoke-static/range {v0 .. v5}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->hasAllowedTimeExpired(JJJ)Z

    move-result v0

    move v2, v0

    :goto_4
    invoke-interface/range {p2 .. p2}, Lcom/tonyodev/fetch2/fetch/FetchHandler;->getPendingCount()J

    move-result-wide v0

    goto :goto_2

    :cond_6
    new-instance v0, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string v1, "await_call_on_ui_thread"

    invoke-direct {v0, v1}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final canCancelDownload(Lcom/tonyodev/fetch2/Download;)Z
    .locals 1
    .param p0    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "download"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object p0

    sget-object v0, Lcom/tonyodev/fetch2/util/FetchUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final canPauseDownload(Lcom/tonyodev/fetch2/Download;)Z
    .locals 2
    .param p0    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "download"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object p0

    sget-object v0, Lcom/tonyodev/fetch2/util/FetchUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public static final canResumeDownload(Lcom/tonyodev/fetch2/Download;)Z
    .locals 1
    .param p0    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "download"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object p0

    sget-object v0, Lcom/tonyodev/fetch2/util/FetchUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static final canRetryDownload(Lcom/tonyodev/fetch2/Download;)Z
    .locals 1
    .param p0    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "download"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object p0

    sget-object v0, Lcom/tonyodev/fetch2/util/FetchUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static final deleteAllInFolderForId(ILjava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fileTempDir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    invoke-static {v4}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-static {v4}, Lkotlin/io/q;->j0(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v5, v6, v2, v7, v8}, Lag/K;->L2(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_3
    return-void
.end method

.method public static final getCatalogServerRequestFromRequest(Lcom/tonyodev/fetch2/Request;)Lcom/tonyodev/fetch2core/Downloader$ServerRequest;
    .locals 15
    .param p0    # Lcom/tonyodev/fetch2/Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "request"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lpf/o0;->J0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    const-string v0, "Range"

    const-string v1, "bytes=0-"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Page"

    const-string v1, "-1"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Size"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Type"

    const-string v1, "1"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/Request;->getId()I

    move-result v2

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/Request;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getIdentifier()J

    move-result-wide v8

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/Request;->getFile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/Request;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getExtras()Lcom/tonyodev/fetch2core/Extras;

    move-result-object v11

    new-instance p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    const-string v13, ""

    const/4 v14, 0x1

    const-string v10, "GET"

    const/4 v12, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v14}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;-><init>(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;Lcom/tonyodev/fetch2core/Extras;ZLjava/lang/String;I)V

    return-object p0
.end method

.method public static final getDownloadedInfoFilePath(IILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "fileTempDir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".data"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getFileSliceInfo(IJ)Lcom/tonyodev/fetch2core/FileSliceInfo;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, -0x1

    if-ne p0, v0, :cond_2

    long-to-float p0, p1

    const/high16 v0, 0x44800000    # 1024.0f

    div-float v1, p0, v0

    mul-float/2addr v1, v0

    mul-float/2addr v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    const/4 p1, 0x6

    int-to-float p2, p1

    div-float/2addr p0, p2

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float p0, v0

    float-to-long v0, p0

    new-instance p0, Lcom/tonyodev/fetch2core/FileSliceInfo;

    invoke-direct {p0, p1, v0, v1}, Lcom/tonyodev/fetch2core/FileSliceInfo;-><init>(IJ)V

    goto :goto_0

    :cond_0
    cmpl-float v0, v1, v2

    if-ltz v0, :cond_1

    const/4 p1, 0x4

    int-to-float p2, p1

    div-float/2addr p0, p2

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float p0, v0

    float-to-long v0, p0

    new-instance p0, Lcom/tonyodev/fetch2core/FileSliceInfo;

    invoke-direct {p0, p1, v0, v1}, Lcom/tonyodev/fetch2core/FileSliceInfo;-><init>(IJ)V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/tonyodev/fetch2core/FileSliceInfo;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/tonyodev/fetch2core/FileSliceInfo;-><init>(IJ)V

    :goto_0
    return-object p0

    :cond_2
    long-to-float p1, p1

    int-to-float p2, p0

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-float p1, p1

    float-to-long p1, p1

    new-instance v0, Lcom/tonyodev/fetch2core/FileSliceInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/tonyodev/fetch2core/FileSliceInfo;-><init>(IJ)V

    return-object v0
.end method

.method public static final getMetaFilePath(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "fileTempDir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".meta.data"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getPreviousSliceCount(ILjava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fileTempDir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    :try_start_0
    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/util/FetchUtils;->getMetaFilePath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getLongDataFromFile(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v0, p0

    :catch_0
    :cond_0
    return v0
.end method

.method public static final getRequestForDownload(Lcom/tonyodev/fetch2/Download;JJLjava/lang/String;I)Lcom/tonyodev/fetch2core/Downloader$ServerRequest;
    .locals 16
    .param p0    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "download"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestMethod"

    move-object/from16 v10, p5

    invoke-static {v10, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, -0x1

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_0
    move-wide/from16 v4, p1

    :goto_0
    cmp-long v0, p3, v2

    if-nez v0, :cond_1

    .line 2
    const-string v0, ""

    goto :goto_1

    :cond_1
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 3
    :goto_1
    invoke-interface/range {p0 .. p0}, Lcom/tonyodev/fetch2/Download;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lpf/o0;->J0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Range"

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    .line 6
    invoke-interface/range {p0 .. p0}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v2

    .line 7
    invoke-interface/range {p0 .. p0}, Lcom/tonyodev/fetch2/Download;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-interface/range {p0 .. p0}, Lcom/tonyodev/fetch2/Download;->getFile()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-interface/range {p0 .. p0}, Lcom/tonyodev/fetch2/Download;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 10
    invoke-interface/range {p0 .. p0}, Lcom/tonyodev/fetch2/Download;->getTag()Ljava/lang/String;

    move-result-object v8

    .line 11
    invoke-interface/range {p0 .. p0}, Lcom/tonyodev/fetch2/Download;->getIdentifier()J

    move-result-wide v11

    .line 12
    invoke-interface/range {p0 .. p0}, Lcom/tonyodev/fetch2/Download;->getExtras()Lcom/tonyodev/fetch2core/Extras;

    move-result-object v13

    const/4 v14, 0x0

    .line 13
    const-string v15, ""

    move-object v1, v0

    move-object v4, v6

    move-object v6, v7

    move-object v7, v8

    move-wide v8, v11

    move-object/from16 v10, p5

    move-object v11, v13

    move v12, v14

    move-object v13, v15

    move/from16 v14, p6

    .line 14
    invoke-direct/range {v1 .. v14}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;-><init>(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;Lcom/tonyodev/fetch2core/Extras;ZLjava/lang/String;I)V

    return-object v0
.end method

.method public static final getRequestForDownload(Lcom/tonyodev/fetch2/Download;Ljava/lang/String;)Lcom/tonyodev/fetch2core/Downloader$ServerRequest;
    .locals 10
    .param p0    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "download"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestMethod"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x10

    const/4 v9, 0x0

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v6, p1

    .line 1
    invoke-static/range {v1 .. v9}, Lcom/tonyodev/fetch2/util/FetchUtils;->getRequestForDownload$default(Lcom/tonyodev/fetch2/Download;JJLjava/lang/String;IILjava/lang/Object;)Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getRequestForDownload$default(Lcom/tonyodev/fetch2/Download;JJLjava/lang/String;IILjava/lang/Object;)Lcom/tonyodev/fetch2core/Downloader$ServerRequest;
    .locals 2

    and-int/lit8 p8, p7, 0x2

    const-wide/16 v0, -0x1

    if-eqz p8, :cond_0

    move-wide p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_1

    move-wide p3, v0

    :cond_1
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_2

    .line 2
    const-string p5, "GET"

    :cond_2
    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_3

    const/4 p6, 0x1

    .line 3
    :cond_3
    invoke-static/range {p0 .. p6}, Lcom/tonyodev/fetch2/util/FetchUtils;->getRequestForDownload(Lcom/tonyodev/fetch2/Download;JJLjava/lang/String;I)Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getRequestForDownload$default(Lcom/tonyodev/fetch2/Download;Ljava/lang/String;ILjava/lang/Object;)Lcom/tonyodev/fetch2core/Downloader$ServerRequest;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    .line 1
    const-string p1, "GET"

    :cond_0
    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/util/FetchUtils;->getRequestForDownload(Lcom/tonyodev/fetch2/Download;Ljava/lang/String;)Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final getSavedDownloadedInfo(IILjava/lang/String;)J
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fileTempDir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/tonyodev/fetch2/util/FetchUtils;->getDownloadedInfoFilePath(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getLongDataFromFile(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-wide v0
.end method

.method public static final getServerRequestFromRequest(Lcom/tonyodev/fetch2/Request;)Lcom/tonyodev/fetch2core/Downloader$ServerRequest;
    .locals 15
    .param p0    # Lcom/tonyodev/fetch2/Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "request"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/Request;->getId()I

    move-result v2

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/Request;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getIdentifier()J

    move-result-wide v8

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/Request;->getFile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/Request;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getExtras()Lcom/tonyodev/fetch2core/Extras;

    move-result-object v11

    new-instance p0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    const-string v13, ""

    const/4 v14, 0x1

    const-string v10, "GET"

    const/4 v12, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v14}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;-><init>(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;Lcom/tonyodev/fetch2core/Extras;ZLjava/lang/String;I)V

    return-object p0
.end method

.method public static final saveCurrentSliceCount(IILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fileTempDir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0, p2}, Lcom/tonyodev/fetch2/util/FetchUtils;->getMetaFilePath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    int-to-long p1, p1

    invoke-static {p0, p1, p2}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->writeLongToFile(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
