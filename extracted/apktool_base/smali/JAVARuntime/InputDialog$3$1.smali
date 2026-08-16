.class LJAVARuntime/InputDialog$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/InputDialog$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:LJAVARuntime/InputDialog$3;


# direct methods
.method public constructor <init>(LJAVARuntime/InputDialog$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/InputDialog$3$1;->this$1:LJAVARuntime/InputDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LJAVARuntime/InputDialog$3$1;->this$1:LJAVARuntime/InputDialog$3;

    iget-object v0, v0, LJAVARuntime/InputDialog$3;->val$listener:LJAVARuntime/InputDialogListener;

    invoke-interface {v0}, LJAVARuntime/InputDialogListener;->onCancel()V

    return-void
.end method
