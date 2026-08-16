.class public Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$destination"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g;->c:Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g;->b:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g;->c:Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;->l(Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g;->c:Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;->l(Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g;->c:Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g;->b:Ljava/io/File;

    invoke-static {v3, v2, v4}, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;->m(Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;Landroid/net/Uri;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g;->c:Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;->l(Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g;->c:Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;

    new-instance v3, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g$a;

    invoke-direct {v3, p0, v1, v0}, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g$a;-><init>(Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g;II)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
