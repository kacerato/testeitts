.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$b;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$b;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$b$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$r;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$b$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$b;

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$b;->d:Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$r;->c:Ljava/lang/String;

    iput-object v2, v1, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;->storeGitHubRepositoryUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$r;->a:Ljava/lang/String;

    iput-object v2, v1, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;->storeGitHubRepositoryOwner:Ljava/lang/String;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$r;->b:Ljava/lang/String;

    iput-object p1, v1, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;->storeGitHubRepositoryName:Ljava/lang/String;

    iget-object p1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$b;->b:Ljava/lang/String;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lx8/c;->e(Ljava/lang/String;Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method
