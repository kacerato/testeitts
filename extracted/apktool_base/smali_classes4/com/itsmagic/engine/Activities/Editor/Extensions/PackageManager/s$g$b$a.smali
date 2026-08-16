.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$g$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw3/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$g$b;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$g$b;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$g$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$g$b$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$g$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$g$b$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$g$b;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$g$b;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$g;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$g;->k:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;->N1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageName",
            "imageFile"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$g$b$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$g$b;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$g$b;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$g;

    invoke-virtual {v0}, Ls7/c;->i()Ls7/a;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$i;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$i;->g:Ljava/util/List;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$s;

    invoke-direct {v1, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$s;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$g$b$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$g$b;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$g$b;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$g;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$g;->B(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$g;)V

    return-void
.end method
