.class LJAVARuntime/PopupDialog$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/PopupDialog;->setTitle(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/PopupDialog;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method public constructor <init>(LJAVARuntime/PopupDialog;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/PopupDialog$14;->this$0:LJAVARuntime/PopupDialog;

    iput-object p2, p0, LJAVARuntime/PopupDialog$14;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LJAVARuntime/PopupDialog$14;->this$0:LJAVARuntime/PopupDialog;

    iget-object v0, v0, LJAVARuntime/PopupDialog;->dialog:Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object v1, p0, LJAVARuntime/PopupDialog$14;->val$value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    return-void
.end method
