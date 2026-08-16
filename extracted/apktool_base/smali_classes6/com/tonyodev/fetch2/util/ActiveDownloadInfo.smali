.class public final Lcom/tonyodev/fetch2/util/ActiveDownloadInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final fetchObserver:Lcom/tonyodev/fetch2core/FetchObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tonyodev/fetch2core/FetchObserver<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final includeAddedDownloads:Z


# direct methods
.method public constructor <init>(Lcom/tonyodev/fetch2core/FetchObserver;Z)V
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2core/FetchObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2core/FetchObserver<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "fetchObserver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/util/ActiveDownloadInfo;->fetchObserver:Lcom/tonyodev/fetch2core/FetchObserver;

    iput-boolean p2, p0, Lcom/tonyodev/fetch2/util/ActiveDownloadInfo;->includeAddedDownloads:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Lcom/tonyodev/fetch2/util/ActiveDownloadInfo;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type com.tonyodev.fetch2.util.ActiveDownloadInfo"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/tonyodev/fetch2/util/ActiveDownloadInfo;

    iget-object v1, p0, Lcom/tonyodev/fetch2/util/ActiveDownloadInfo;->fetchObserver:Lcom/tonyodev/fetch2core/FetchObserver;

    iget-object p1, p1, Lcom/tonyodev/fetch2/util/ActiveDownloadInfo;->fetchObserver:Lcom/tonyodev/fetch2core/FetchObserver;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getFetchObserver()Lcom/tonyodev/fetch2core/FetchObserver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tonyodev/fetch2core/FetchObserver<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/util/ActiveDownloadInfo;->fetchObserver:Lcom/tonyodev/fetch2core/FetchObserver;

    return-object v0
.end method

.method public final getIncludeAddedDownloads()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tonyodev/fetch2/util/ActiveDownloadInfo;->includeAddedDownloads:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/tonyodev/fetch2/util/ActiveDownloadInfo;->fetchObserver:Lcom/tonyodev/fetch2core/FetchObserver;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/util/ActiveDownloadInfo;->fetchObserver:Lcom/tonyodev/fetch2core/FetchObserver;

    iget-boolean v1, p0, Lcom/tonyodev/fetch2/util/ActiveDownloadInfo;->includeAddedDownloads:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActiveDownloadInfo(fetchObserver="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", includeAddedDownloads="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
