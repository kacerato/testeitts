.class public Ly7/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ly7/a;

.field public c:Lcn/pedant/SweetAlert/SweetAlertDialog;

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ly7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "listener"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly7/b;->a:Landroid/content/Context;

    iput-object p2, p0, Ly7/b;->b:Ly7/a;

    if-nez p2, :cond_0

    new-instance p1, Ly7/b$c;

    invoke-direct {p1, p0}, Ly7/b$c;-><init>(Ly7/b;)V

    iput-object p1, p0, Ly7/b;->b:Ly7/a;

    :cond_0
    return-void
.end method

.method public static synthetic a(Ly7/b;)V
    .locals 0

    invoke-virtual {p0}, Ly7/b;->n()V

    return-void
.end method

.method public static synthetic b(Ly7/b;)V
    .locals 0

    invoke-virtual {p0}, Ly7/b;->m()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "message",
            "confirmText",
            "cancelText"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Ly7/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ly7/a;)V

    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ly7/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "message",
            "confirmText",
            "cancelText",
            "listener"
        }
    .end annotation

    iget-boolean v0, p0, Ly7/b;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ly7/b;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ly7/b;->d:Z

    :cond_0
    iget-object v0, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->changeAlertType(I)V

    iget-object v0, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {v0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p1, p2}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object p1, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p1, p3}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object p1, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    new-instance p2, Ly7/b$i;

    invoke-direct {p2, p0, p5}, Ly7/b$i;-><init>(Ly7/b;Ly7/a;)V

    invoke-virtual {p1, p2}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p1, p4}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setCancelText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object p1, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    new-instance p2, Ly7/b$j;

    invoke-direct {p2, p0, p5}, Ly7/b$j;-><init>(Ly7/b;Ly7/a;)V

    invoke-virtual {p1, p2}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setCancelClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    :cond_1
    iget-object p1, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    new-instance p2, Ly7/b$k;

    invoke-direct {p2, p0, p5}, Ly7/b$k;-><init>(Ly7/b;Ly7/a;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_2
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "message",
            "confirmText"
        }
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Ly7/b;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ly7/b;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ly7/b;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->changeAlertType(I)V

    iget-object v0, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {v0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p1, p2}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object p1, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p1, p3}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object p1, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    iget-object p1, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    new-instance p2, Ly7/b$d;

    invoke-direct {p2, p0}, Ly7/b$d;-><init>(Ly7/b;)V

    invoke-virtual {p1, p2}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object p1, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    new-instance p2, Ly7/b$e;

    invoke-direct {p2, p0}, Ly7/b$e;-><init>(Ly7/b;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_1
    return-void
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "message",
            "confirmText",
            "cancelText"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Ly7/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ly7/a;)V

    return-void
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ly7/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "message",
            "confirmText",
            "cancelText",
            "listener"
        }
    .end annotation

    iget-boolean v0, p0, Ly7/b;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ly7/b;->j()V

    iput-boolean v1, p0, Ly7/b;->d:Z

    :cond_0
    iget-object v0, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->changeAlertType(I)V

    iget-object v0, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {v0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p1, p2}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object p1, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p1, p3}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object p1, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p1, p4}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setCancelText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object p1, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    new-instance p2, Ly7/b$f;

    invoke-direct {p2, p0, p5}, Ly7/b$f;-><init>(Ly7/b;Ly7/a;)V

    invoke-virtual {p1, p2}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object p1, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    new-instance p2, Ly7/b$g;

    invoke-direct {p2, p0, p5}, Ly7/b$g;-><init>(Ly7/b;Ly7/a;)V

    invoke-virtual {p1, p2}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setCancelClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object p1, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    new-instance p2, Ly7/b$h;

    invoke-direct {p2, p0, p5}, Ly7/b$h;-><init>(Ly7/b;Ly7/a;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_1
    return-void
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tittle",
            "message"
        }
    .end annotation

    iget-boolean v0, p0, Ly7/b;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ly7/b;->j()V

    iput-boolean v1, p0, Ly7/b;->d:Z

    :cond_0
    iget-object v0, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    if-eqz v0, :cond_1

    const/4 v2, 0x5

    :try_start_0
    invoke-virtual {v0, v2}, Lcn/pedant/SweetAlert/SweetAlertDialog;->changeAlertType(I)V

    iget-object v0, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {v0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p1, p2}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object p1, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object p1, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "message",
            "confirmText"
        }
    .end annotation

    iget-boolean v0, p0, Ly7/b;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ly7/b;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ly7/b;->d:Z

    :cond_0
    iget-object v0, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->changeAlertType(I)V

    iget-object v0, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {v0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p1, p2}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object p1, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p1, p3}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object p1, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    new-instance p2, Ly7/b$a;

    invoke-direct {p2, p0}, Ly7/b$a;-><init>(Ly7/b;)V

    invoke-virtual {p1, p2}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object p1, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    new-instance p2, Ly7/b$b;

    invoke-direct {p2, p0}, Ly7/b$b;-><init>(Ly7/b;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_1
    return-void
.end method

.method public final j()V
    .locals 3

    :try_start_0
    new-instance v0, Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object v1, p0, Ly7/b;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcn/pedant/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ly7/b;->a:Landroid/content/Context;

    iput-object v0, p0, Ly7/b;->b:Ly7/a;

    iput-object v0, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    return-void
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ly7/b;->d:Z

    iget-object v0, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, Ly7/b;->b:Ly7/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ly7/a;->onCancel()V

    :cond_0
    return-void
.end method

.method public final n()V
    .locals 1

    iget-object v0, p0, Ly7/b;->b:Ly7/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ly7/a;->a()V

    :cond_0
    return-void
.end method

.method public o(Ly7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Ly7/b;->b:Ly7/a;

    return-void
.end method

.method public final p()V
    .locals 1

    iget-object v0, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "message",
            "confirmText"
        }
    .end annotation

    iget-object v0, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    const-string v1, ""

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ly7/b;->j()V

    invoke-virtual {p0, p1, p2, p3, v1}, Ly7/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ly7/b;->p()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, v1}, Ly7/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ly7/b;->p()V

    :goto_0
    return-void
.end method

.method public r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "message",
            "confirmText",
            "cancelText"
        }
    .end annotation

    iget-object v0, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ly7/b;->j()V

    invoke-virtual {p0, p1, p2, p3, p4}, Ly7/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ly7/b;->p()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Ly7/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ly7/b;->p()V

    :goto_0
    return-void
.end method

.method public s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ly7/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "message",
            "confirmText",
            "cancelText",
            "listener"
        }
    .end annotation

    iget-object v0, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ly7/b;->j()V

    invoke-virtual/range {p0 .. p5}, Ly7/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ly7/a;)V

    invoke-virtual {p0}, Ly7/b;->p()V

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p5}, Ly7/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ly7/a;)V

    invoke-virtual {p0}, Ly7/b;->p()V

    :goto_0
    return-void
.end method

.method public t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "message",
            "confirmText"
        }
    .end annotation

    iget-object v0, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ly7/b;->j()V

    invoke-virtual {p0, p1, p2, p3}, Ly7/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ly7/b;->p()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ly7/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ly7/b;->p()V

    :goto_0
    return-void
.end method

.method public u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "message",
            "confirmText",
            "cancelText"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Ly7/b;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ly7/a;)V

    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ly7/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "message",
            "confirmText",
            "cancelText",
            "listener"
        }
    .end annotation

    iget-object v0, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ly7/b;->j()V

    invoke-virtual/range {p0 .. p5}, Ly7/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ly7/a;)V

    invoke-virtual {p0}, Ly7/b;->p()V

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p5}, Ly7/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ly7/a;)V

    invoke-virtual {p0}, Ly7/b;->p()V

    :goto_0
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tittle",
            "message"
        }
    .end annotation

    iget-object v0, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ly7/b;->j()V

    invoke-virtual {p0, p1, p2}, Ly7/b;->h(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ly7/b;->p()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Ly7/b;->h(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ly7/b;->p()V

    :goto_0
    return-void
.end method

.method public x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "message",
            "confirmText"
        }
    .end annotation

    iget-object v0, p0, Ly7/b;->c:Lcn/pedant/SweetAlert/SweetAlertDialog;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ly7/b;->j()V

    invoke-virtual {p0, p1, p2, p3}, Ly7/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ly7/b;->p()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ly7/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ly7/b;->p()V

    :goto_0
    return-void
.end method
