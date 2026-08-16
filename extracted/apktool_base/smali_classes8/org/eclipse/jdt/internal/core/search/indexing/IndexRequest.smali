.class public abstract Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/search/processing/IJob;


# instance fields
.field protected containerPath:Lorg/eclipse/core/runtime/IPath;

.field protected isCancelled:Z

.field protected manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;


# direct methods
.method public constructor <init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->isCancelled:Z

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    return-void
.end method


# virtual methods
.method public belongsTo(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public cancel()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->jobWasCancelled(Lorg/eclipse/core/runtime/IPath;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->isCancelled:Z

    return-void
.end method

.method public ensureReadyToRun()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->updatedIndexState()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->aboutToUpdateIndex(Lorg/eclipse/core/runtime/IPath;Ljava/lang/Integer;)V

    return-void
.end method

.method public getJobFamily()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updatedIndexState()Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->UPDATING_STATE:Ljava/lang/Integer;

    return-object v0
.end method

.method public waitNeeded()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
