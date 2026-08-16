.class public Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$finalSuccess",
            "val$total"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g$a;->d:Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g;

    iput p2, p0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g$a;->b:I

    iput p3, p0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g$a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget v0, p0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g$a;->b:I

    iget v1, p0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g$a;->c:I

    const-string v2, " file(s)"

    const-string v3, "Imported "

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g$a;->d:Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g;->c:Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g$a;->d:Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity$g;->c:Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
