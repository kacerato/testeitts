.class LJAVARuntime/PopupDialog$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/PopupDialog$5;->onClick(Lcn/pedant/SweetAlert/SweetAlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:LJAVARuntime/PopupDialog$5;


# direct methods
.method public constructor <init>(LJAVARuntime/PopupDialog$5;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/PopupDialog$5$1;->this$1:LJAVARuntime/PopupDialog$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LJAVARuntime/PopupDialog$5$1;->this$1:LJAVARuntime/PopupDialog$5;

    iget-object v0, v0, LJAVARuntime/PopupDialog$5;->val$popupDialogListener:LJAVARuntime/PopupDialogListener;

    invoke-interface {v0}, LJAVARuntime/PopupDialogListener;->onClicked()V

    return-void
.end method
