.class public Lcom/itsmagic/engine/Activities/Share/BackupImportActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity$a;->b:Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity$a;->b:Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;->g(Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity$a;->b:Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;->g(Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    invoke-static {v3, v4}, LVc/a;->c(Landroid/content/Context;Landroid/net/Uri;)LVc/a$a;

    move-result-object v3

    invoke-virtual {v3}, LVc/a$a;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity$a;->b:Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;

    new-instance v4, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity$a$a;

    invoke-direct {v4, p0, v0}, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity$a$a;-><init>(Lcom/itsmagic/engine/Activities/Share/BackupImportActivity$a;I)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity$a;->b:Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;

    new-instance v3, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity$a$b;

    invoke-direct {v3, p0, v1, v2}, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity$a$b;-><init>(Lcom/itsmagic/engine/Activities/Share/BackupImportActivity$a;II)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
