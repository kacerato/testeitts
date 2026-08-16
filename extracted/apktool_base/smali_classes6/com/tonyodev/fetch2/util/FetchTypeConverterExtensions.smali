.class public final Lcom/tonyodev/fetch2/util/FetchTypeConverterExtensions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LLf/j;
    name = "FetchTypeConverterExtensions"
.end annotation


# direct methods
.method public static final toDownloadInfo(Lcom/tonyodev/fetch2/CompletedDownload;Lcom/tonyodev/fetch2/database/DownloadInfo;)Lcom/tonyodev/fetch2/database/DownloadInfo;
    .locals 2
    .param p0    # Lcom/tonyodev/fetch2/CompletedDownload;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/tonyodev/fetch2/database/DownloadInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/CompletedDownload;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/CompletedDownload;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getUniqueId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setId(I)V

    .line 39
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/CompletedDownload;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setUrl(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/CompletedDownload;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setFile(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/CompletedDownload;->getGroup()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setGroup(I)V

    .line 42
    sget-object v0, Lcom/tonyodev/fetch2/Priority;->NORMAL:Lcom/tonyodev/fetch2/Priority;

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setPriority(Lcom/tonyodev/fetch2/Priority;)V

    .line 43
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/CompletedDownload;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lpf/o0;->F0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setHeaders(Ljava/util/Map;)V

    .line 44
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/CompletedDownload;->getFileByteSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    .line 45
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/CompletedDownload;->getFileByteSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    .line 46
    sget-object v0, Lcom/tonyodev/fetch2/Status;->COMPLETED:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    .line 47
    sget-object v0, Lcom/tonyodev/fetch2/NetworkType;->ALL:Lcom/tonyodev/fetch2/NetworkType;

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNetworkType(Lcom/tonyodev/fetch2/NetworkType;)V

    .line 48
    sget-object v0, Lcom/tonyodev/fetch2/Error;->NONE:Lcom/tonyodev/fetch2/Error;

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    .line 49
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/CompletedDownload;->getCreated()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setCreated(J)V

    .line 50
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/CompletedDownload;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTag(Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/tonyodev/fetch2/EnqueueAction;->REPLACE_EXISTING:Lcom/tonyodev/fetch2/EnqueueAction;

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEnqueueAction(Lcom/tonyodev/fetch2/EnqueueAction;)V

    .line 52
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/CompletedDownload;->getIdentifier()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setIdentifier(J)V

    const/4 v0, 0x1

    .line 53
    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadOnEnqueue(Z)V

    .line 54
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/CompletedDownload;->getExtras()Lcom/tonyodev/fetch2core/Extras;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setExtras(Lcom/tonyodev/fetch2core/Extras;)V

    const/4 p0, 0x0

    .line 55
    invoke-virtual {p1, p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryMaxAttempts(I)V

    .line 56
    invoke-virtual {p1, p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryAttempts(I)V

    return-object p1
.end method

.method public static final toDownloadInfo(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/database/DownloadInfo;)Lcom/tonyodev/fetch2/database/DownloadInfo;
    .locals 2
    .param p0    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/tonyodev/fetch2/database/DownloadInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setId(I)V

    .line 19
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNamespace(Ljava/lang/String;)V

    .line 20
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setUrl(Ljava/lang/String;)V

    .line 21
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setFile(Ljava/lang/String;)V

    .line 22
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getGroup()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setGroup(I)V

    .line 23
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getPriority()Lcom/tonyodev/fetch2/Priority;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setPriority(Lcom/tonyodev/fetch2/Priority;)V

    .line 24
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lpf/o0;->F0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setHeaders(Ljava/util/Map;)V

    .line 25
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getDownloaded()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    .line 26
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getTotal()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    .line 27
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    .line 28
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getNetworkType()Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNetworkType(Lcom/tonyodev/fetch2/NetworkType;)V

    .line 29
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getError()Lcom/tonyodev/fetch2/Error;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    .line 30
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getCreated()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setCreated(J)V

    .line 31
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTag(Ljava/lang/String;)V

    .line 32
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getEnqueueAction()Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEnqueueAction(Lcom/tonyodev/fetch2/EnqueueAction;)V

    .line 33
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getIdentifier()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setIdentifier(J)V

    .line 34
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getDownloadOnEnqueue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadOnEnqueue(Z)V

    .line 35
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getExtras()Lcom/tonyodev/fetch2core/Extras;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setExtras(Lcom/tonyodev/fetch2core/Extras;)V

    .line 36
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getAutoRetryMaxAttempts()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryMaxAttempts(I)V

    .line 37
    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getAutoRetryAttempts()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryAttempts(I)V

    return-object p1
.end method

.method public static final toDownloadInfo(Lcom/tonyodev/fetch2/Request;Lcom/tonyodev/fetch2/database/DownloadInfo;)Lcom/tonyodev/fetch2/database/DownloadInfo;
    .locals 2
    .param p0    # Lcom/tonyodev/fetch2/Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/tonyodev/fetch2/database/DownloadInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/Request;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setId(I)V

    .line 2
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setUrl(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/Request;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setFile(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getPriority()Lcom/tonyodev/fetch2/Priority;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setPriority(Lcom/tonyodev/fetch2/Priority;)V

    .line 5
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lpf/o0;->F0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setHeaders(Ljava/util/Map;)V

    .line 6
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getGroupId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setGroup(I)V

    .line 7
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getNetworkType()Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNetworkType(Lcom/tonyodev/fetch2/NetworkType;)V

    .line 8
    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    .line 9
    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultNoError()Lcom/tonyodev/fetch2/Error;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    const-wide/16 v0, 0x0

    .line 10
    invoke-virtual {p1, v0, v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    .line 11
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTag(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getEnqueueAction()Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEnqueueAction(Lcom/tonyodev/fetch2/EnqueueAction;)V

    .line 13
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getIdentifier()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setIdentifier(J)V

    .line 14
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getDownloadOnEnqueue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadOnEnqueue(Z)V

    .line 15
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getExtras()Lcom/tonyodev/fetch2core/Extras;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setExtras(Lcom/tonyodev/fetch2core/Extras;)V

    .line 16
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getAutoRetryMaxAttempts()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryMaxAttempts(I)V

    const/4 p0, 0x0

    .line 17
    invoke-virtual {p1, p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryAttempts(I)V

    return-object p1
.end method
