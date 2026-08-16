.class LJAVARuntime/InputDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/InputDialog;->show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LJAVARuntime/InputDialogListener;Landroid/content/Context;LJAVARuntime/InputDialog$Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/InputDialog;

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$listener:LJAVARuntime/InputDialogListener;


# direct methods
.method public constructor <init>(LJAVARuntime/InputDialog;LJAVARuntime/InputDialogListener;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$listener",
            "val$input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/InputDialog$2;->this$0:LJAVARuntime/InputDialog;

    iput-object p2, p0, LJAVARuntime/InputDialog$2;->val$listener:LJAVARuntime/InputDialogListener;

    iput-object p3, p0, LJAVARuntime/InputDialog$2;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "which"
        }
    .end annotation

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, LJAVARuntime/InputDialog$2;->this$0:LJAVARuntime/InputDialog;

    invoke-static {p1}, LJAVARuntime/InputDialog;->access$100(LJAVARuntime/InputDialog;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, LJAVARuntime/InputDialog$2$1;

    invoke-direct {p1, p0}, LJAVARuntime/InputDialog$2$1;-><init>(LJAVARuntime/InputDialog$2;)V

    invoke-static {p1}, Ld8/m;->d(Lo8/d;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/InputDialog$2;->this$0:LJAVARuntime/InputDialog;

    new-instance p2, LJAVARuntime/InputDialog$2$2;

    invoke-direct {p2, p0}, LJAVARuntime/InputDialog$2$2;-><init>(LJAVARuntime/InputDialog$2;)V

    invoke-static {p1, p2}, LJAVARuntime/InputDialog;->access$200(LJAVARuntime/InputDialog;LJAVARuntime/Runnable;)V

    :goto_0
    return-void
.end method
