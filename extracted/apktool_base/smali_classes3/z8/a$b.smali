.class public Lz8/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz8/a;->b(Landroid/content/Context;Ljava/lang/String;Lz8/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcn/pedant/SweetAlert/SweetAlertDialog;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/io/File;

.field public final synthetic d:Lz8/b;


# direct methods
.method public constructor <init>(Lcn/pedant/SweetAlert/SweetAlertDialog;Landroid/content/Context;Ljava/io/File;Lz8/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$dialog",
            "val$context",
            "val$file",
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lz8/a$b;->a:Lcn/pedant/SweetAlert/SweetAlertDialog;

    iput-object p2, p0, Lz8/a$b;->b:Landroid/content/Context;

    iput-object p3, p0, Lz8/a$b;->c:Ljava/io/File;

    iput-object p4, p0, Lz8/a$b;->d:Lz8/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcn/pedant/SweetAlert/SweetAlertDialog;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sweetAlertDialog"
        }
    .end annotation

    iget-object p1, p0, Lz8/a$b;->a:Lcn/pedant/SweetAlert/SweetAlertDialog;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->changeAlertType(I)V

    iget-object p1, p0, Lz8/a$b;->a:Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object v0, p0, Lz8/a$b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lz8/a$b;->a:Lcn/pedant/SweetAlert/SweetAlertDialog;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object p1, p0, Lz8/a$b;->a:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p1, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setCancelText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object p1, p0, Lz8/a$b;->a:Lcn/pedant/SweetAlert/SweetAlertDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lz8/a$b$a;

    invoke-direct {v0, p0}, Lz8/a$b$a;-><init>(Lz8/a$b;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
