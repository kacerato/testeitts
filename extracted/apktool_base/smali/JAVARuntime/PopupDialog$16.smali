.class LJAVARuntime/PopupDialog$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/PopupDialog;->changeType(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/PopupDialog;

.field final synthetic val$type:I


# direct methods
.method public constructor <init>(LJAVARuntime/PopupDialog;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/PopupDialog$16;->this$0:LJAVARuntime/PopupDialog;

    iput p2, p0, LJAVARuntime/PopupDialog$16;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, LJAVARuntime/PopupDialog$16;->val$type:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, LJAVARuntime/PopupDialog$16;->this$0:LJAVARuntime/PopupDialog;

    iget-object v0, v0, LJAVARuntime/PopupDialog;->dialog:Lcn/pedant/SweetAlert/SweetAlertDialog;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->changeAlertType(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, LJAVARuntime/PopupDialog$16;->this$0:LJAVARuntime/PopupDialog;

    iget-object v0, v0, LJAVARuntime/PopupDialog;->dialog:Lcn/pedant/SweetAlert/SweetAlertDialog;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->changeAlertType(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, LJAVARuntime/PopupDialog$16;->this$0:LJAVARuntime/PopupDialog;

    iget-object v0, v0, LJAVARuntime/PopupDialog;->dialog:Lcn/pedant/SweetAlert/SweetAlertDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->changeAlertType(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, LJAVARuntime/PopupDialog$16;->this$0:LJAVARuntime/PopupDialog;

    iget-object v0, v0, LJAVARuntime/PopupDialog;->dialog:Lcn/pedant/SweetAlert/SweetAlertDialog;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->changeAlertType(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
