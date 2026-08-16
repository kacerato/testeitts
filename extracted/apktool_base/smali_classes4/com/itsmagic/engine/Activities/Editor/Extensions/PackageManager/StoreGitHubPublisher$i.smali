.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$k;

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$i;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$i;->b:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$i;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$i;->c:Ljava/lang/String;

    return-object v0

    :cond_1
    const-string v0, "main"

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$i;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$i;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$k;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$k;->a:Ljava/lang/String;

    :goto_0
    return-object v0
.end method
