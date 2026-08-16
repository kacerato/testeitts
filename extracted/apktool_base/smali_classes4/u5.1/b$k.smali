.class public Lu5/b$k;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu5/b;->D1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lu5/b;


# direct methods
.method public constructor <init>(Lu5/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lu5/b$k;->b:Lu5/b;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
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

    iget-object v0, p0, Lu5/b$k;->b:Lu5/b;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p1, v0, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    const-string v0, "Attention"

    invoke-virtual {p1, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "Are you sure you want to cancel the import?"

    invoke-virtual {p1, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    new-instance v0, Lu5/b$k$a;

    invoke-direct {v0, p0, p1}, Lu5/b$k$a;-><init>(Lu5/b$k;Lcn/pedant/SweetAlert/SweetAlertDialog;)V

    const-string v1, "Yes"

    invoke-virtual {p1, v1, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmButton(Ljava/lang/String;Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    new-instance v0, Lu5/b$k$b;

    invoke-direct {v0, p0, p1}, Lu5/b$k$b;-><init>(Lu5/b$k;Lcn/pedant/SweetAlert/SweetAlertDialog;)V

    const-string v1, "No"

    invoke-virtual {p1, v1, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setCancelButton(Ljava/lang/String;Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
