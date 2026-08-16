.class LJAVARuntime/PopupDialog$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/PopupDialog;->setMidButton(Ljava/lang/String;LJAVARuntime/PopupDialogListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/PopupDialog;

.field final synthetic val$popupDialogListener:LJAVARuntime/PopupDialogListener;


# direct methods
.method public constructor <init>(LJAVARuntime/PopupDialog;LJAVARuntime/PopupDialogListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$popupDialogListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/PopupDialog$7;->this$0:LJAVARuntime/PopupDialog;

    iput-object p2, p0, LJAVARuntime/PopupDialog$7;->val$popupDialogListener:LJAVARuntime/PopupDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcn/pedant/SweetAlert/SweetAlertDialog;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sweetAlertDialog"
        }
    .end annotation

    iget-object p1, p0, LJAVARuntime/PopupDialog$7;->this$0:LJAVARuntime/PopupDialog;

    invoke-static {p1}, LJAVARuntime/PopupDialog;->access$100(LJAVARuntime/PopupDialog;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, LJAVARuntime/PopupDialog$7;->val$popupDialogListener:LJAVARuntime/PopupDialogListener;

    invoke-interface {p1}, LJAVARuntime/PopupDialogListener;->onClicked()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/PopupDialog$7;->this$0:LJAVARuntime/PopupDialog;

    new-instance v0, LJAVARuntime/PopupDialog$7$1;

    invoke-direct {v0, p0}, LJAVARuntime/PopupDialog$7$1;-><init>(LJAVARuntime/PopupDialog$7;)V

    invoke-static {p1, v0}, LJAVARuntime/PopupDialog;->access$200(LJAVARuntime/PopupDialog;LJAVARuntime/Runnable;)V

    :goto_0
    return-void
.end method
