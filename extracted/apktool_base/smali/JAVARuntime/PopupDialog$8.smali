.class LJAVARuntime/PopupDialog$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/PopupDialog;->setConfirmButton(Ljava/lang/String;LJAVARuntime/Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/PopupDialog;

.field final synthetic val$popupDialogListener:LJAVARuntime/Listener;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method public constructor <init>(LJAVARuntime/PopupDialog;Ljava/lang/String;LJAVARuntime/Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$text",
            "val$popupDialogListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/PopupDialog$8;->this$0:LJAVARuntime/PopupDialog;

    iput-object p2, p0, LJAVARuntime/PopupDialog$8;->val$text:Ljava/lang/String;

    iput-object p3, p0, LJAVARuntime/PopupDialog$8;->val$popupDialogListener:LJAVARuntime/Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LJAVARuntime/PopupDialog$8;->this$0:LJAVARuntime/PopupDialog;

    iget-object v0, v0, LJAVARuntime/PopupDialog;->dialog:Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object v1, p0, LJAVARuntime/PopupDialog$8;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object v0, p0, LJAVARuntime/PopupDialog$8;->this$0:LJAVARuntime/PopupDialog;

    iget-object v0, v0, LJAVARuntime/PopupDialog;->dialog:Lcn/pedant/SweetAlert/SweetAlertDialog;

    new-instance v1, LJAVARuntime/PopupDialog$8$1;

    invoke-direct {v1, p0}, LJAVARuntime/PopupDialog$8$1;-><init>(LJAVARuntime/PopupDialog$8;)V

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    return-void
.end method
