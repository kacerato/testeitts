.class public Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# instance fields
.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcn/pedant/SweetAlert/SweetAlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;->b:Ljava/util/List;

    return-void
.end method

.method public static synthetic g(Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;->b:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic h(Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;->o(II)V

    return-void
.end method

.method public static synthetic i(Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;->m(II)V

    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newBase"
        }
    .end annotation

    const-string v0, "ui_config"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "scale_factor"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    invoke-static {p1, v0}, Lw3/k;->a(Landroid/content/Context;F)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final j(II)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imported",
            "failed"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-ne p1, v1, :cond_0

    const-string p1, "Backup imported to Backups"

    goto :goto_0

    :cond_0
    const-string p1, "Failed to import backup"

    :goto_0
    return-object p1

    :cond_1
    const-string v1, "Imported "

    if-ne p1, v0, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " backup(s) to Backups"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    if-lez p1, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " of "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " backup(s)"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    if-ne p2, v0, :cond_4

    const-string p1, "Failed to import backups"

    return-object p1

    :cond_4
    const-string p1, "No backups were imported"

    return-object p1
.end method

.method public final k(II)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "current",
            "total"
        }
    .end annotation

    const/4 v0, 0x1

    if-gt p2, v0, :cond_1

    if-gtz p1, :cond_0

    const-string p1, "Preparing backup import..."

    goto :goto_0

    :cond_0
    const-string p1, "Finalizing backup import..."

    :goto_0
    return-object p1

    :cond_1
    if-gtz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Preparing "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " backups..."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Imported "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " backups"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final l(Landroid/content/Intent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {p1}, LO7/c;->a(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-static {p0, v0}, LVc/a;->e(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final m(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imported",
            "failed"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->changeAlertType(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    const-string v1, "Import complete"

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;->j(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->changeAlertType(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    const-string v1, "Import finished"

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;->j(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    :goto_0
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    const-string p2, "OK"

    invoke-virtual {p1, p2}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    new-instance p2, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity$b;

    invoke-direct {p2, p0}, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity$b;-><init>(Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;)V

    invoke-virtual {p1, p2}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setCancelClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    return-void
.end method

.method public final n()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity$a;-><init>(Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final o(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "current",
            "total"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;->k(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroid/view/View;

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;->l(Landroid/content/Intent;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "No backup files found"

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    new-instance p1, Lcn/pedant/SweetAlert/SweetAlertDialog;

    const/4 v1, 0x5

    invoke-direct {p1, p0, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    const-string v1, "Importing backups"

    invoke-virtual {p1, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;->k(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;->n()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method
