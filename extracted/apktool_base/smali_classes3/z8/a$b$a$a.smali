.class public Lz8/a$b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz8/a$b$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lz8/a$b$a;


# direct methods
.method public constructor <init>(Lz8/a$b$a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$deleted"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lz8/a$b$a$a;->c:Lz8/a$b$a;

    iput-boolean p2, p0, Lz8/a$b$a$a;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-boolean v0, p0, Lz8/a$b$a$a;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lz8/a$b$a$a;->c:Lz8/a$b$a;

    iget-object v0, v0, Lz8/a$b$a;->b:Lz8/a$b;

    iget-object v0, v0, Lz8/a$b;->a:Lcn/pedant/SweetAlert/SweetAlertDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->changeAlertType(I)V

    iget-object v0, p0, Lz8/a$b$a$a;->c:Lz8/a$b$a;

    iget-object v0, v0, Lz8/a$b$a;->b:Lz8/a$b;

    iget-object v1, v0, Lz8/a$b;->a:Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object v0, v0, Lz8/a$b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f110093

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lz8/a$b$a$a;->c:Lz8/a$b$a;

    iget-object v0, v0, Lz8/a$b$a;->b:Lz8/a$b;

    iget-object v1, v0, Lz8/a$b;->a:Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object v0, v0, Lz8/a$b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f110032

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object v0, p0, Lz8/a$b$a$a;->c:Lz8/a$b$a;

    iget-object v0, v0, Lz8/a$b$a;->b:Lz8/a$b;

    iget-object v0, v0, Lz8/a$b;->a:Lcn/pedant/SweetAlert/SweetAlertDialog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setCancelText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object v0, p0, Lz8/a$b$a$a;->c:Lz8/a$b$a;

    iget-object v0, v0, Lz8/a$b$a;->b:Lz8/a$b;

    iget-object v1, v0, Lz8/a$b;->a:Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object v0, v0, Lz8/a$b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f11006d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object v0, p0, Lz8/a$b$a$a;->c:Lz8/a$b$a;

    iget-object v0, v0, Lz8/a$b$a;->b:Lz8/a$b;

    iget-object v0, v0, Lz8/a$b;->a:Lcn/pedant/SweetAlert/SweetAlertDialog;

    new-instance v1, Lz8/a$b$a$a$a;

    invoke-direct {v1, p0}, Lz8/a$b$a$a$a;-><init>(Lz8/a$b$a$a;)V

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz8/a$b$a$a;->c:Lz8/a$b$a;

    iget-object v0, v0, Lz8/a$b$a;->b:Lz8/a$b;

    iget-object v0, v0, Lz8/a$b;->d:Lz8/b;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lz8/b;->b()V

    :cond_1
    iget-object v0, p0, Lz8/a$b$a$a;->c:Lz8/a$b$a;

    iget-object v0, v0, Lz8/a$b$a;->b:Lz8/a$b;

    iget-object v0, v0, Lz8/a$b;->a:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    :goto_0
    return-void
.end method
