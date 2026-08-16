.class public Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public appVersionCode:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public appVersionName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public downloadedPackages:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/DownloadedPackage;",
            ">;"
        }
    .end annotation
.end field

.field public guid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public lastOpen:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public storeGitHubRepositoryName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public storeGitHubRepositoryOwner:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public storeGitHubRepositoryUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "appVersionCode",
            "appVersionName"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;->appVersionCode:I

    .line 4
    iput-object p2, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;->appVersionName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/DownloadedPackage;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;->b(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/DownloadedPackage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;->downloadedPackages:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;->downloadedPackages:Ljava/util/List;

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_7

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;->downloadedPackages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    :try_start_1
    iget-object v4, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;->downloadedPackages:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/DownloadedPackage;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    const/4 v4, 0x3

    if-ge p1, v4, :cond_1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;->b(I)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    move-object v4, v0

    :goto_2
    if-eqz v4, :cond_5

    iget-object v5, v4, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/DownloadedPackage;->packID:Ljava/lang/String;

    if-eqz v5, :cond_5

    sget-object v5, LW7/b;->b:Lcom/itsmagic/engine/Core/Components/ProjectController/a;

    invoke-static {v1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/DownloadedPackage;->usefulFiles:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "//"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    :cond_3
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_3

    :cond_4
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;->downloadedPackages:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_7
    iget-object p1, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;->downloadedPackages:Ljava/util/List;

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;->guid:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;->guid:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;->guid:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;->storeGitHubRepositoryUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;->storeGitHubRepositoryOwner:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;->storeGitHubRepositoryName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appVersionCode"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;->appVersionCode:I

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appVersionName"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;->appVersionName:Ljava/lang/String;

    return-void
.end method
