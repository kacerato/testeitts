.class LJAVARuntime/InputDialog$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/InputDialog$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:LJAVARuntime/InputDialog$2;


# direct methods
.method public constructor <init>(LJAVARuntime/InputDialog$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/InputDialog$2$1;->this$1:LJAVARuntime/InputDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LJAVARuntime/InputDialog$2$1;->this$1:LJAVARuntime/InputDialog$2;

    iget-object v1, v0, LJAVARuntime/InputDialog$2;->val$listener:LJAVARuntime/InputDialogListener;

    iget-object v0, v0, LJAVARuntime/InputDialog$2;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, LJAVARuntime/InputDialogListener;->onFinish(Ljava/lang/String;)V

    return-void
.end method
