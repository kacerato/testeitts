.class public Lv4/a$b$a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv4/a$b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lv4/a$b$a;


# direct methods
.method public constructor <init>(Lv4/a$b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lv4/a$b$a$d;->a:Lv4/a$b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    new-instance p1, Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object v0, p0, Lv4/a$b$a$d;->a:Lv4/a$b$a;

    iget-object v0, v0, Lv4/a$b$a;->b:Lv4/a$b;

    iget-object v0, v0, Lv4/a$b;->c:Lv4/a;

    invoke-static {v0}, Lv4/a;->g(Lv4/a;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p1, v0, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    const-string v0, "Delete!"

    invoke-virtual {p1, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "Delete this keyframe?"

    invoke-virtual {p1, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    const-string v0, "Yes"

    invoke-virtual {p1, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    new-instance v0, Lv4/a$b$a$d$a;

    invoke-direct {v0, p0, p1}, Lv4/a$b$a$d$a;-><init>(Lv4/a$b$a$d;Lcn/pedant/SweetAlert/SweetAlertDialog;)V

    invoke-virtual {p1, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    const-string v0, "Cancel"

    invoke-virtual {p1, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setCancelText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    new-instance v0, Lv4/a$b$a$d$b;

    invoke-direct {v0, p0, p1}, Lv4/a$b$a$d$b;-><init>(Lv4/a$b$a$d;Lcn/pedant/SweetAlert/SweetAlertDialog;)V

    invoke-virtual {p1, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setCancelClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
