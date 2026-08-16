.class LJAVARuntime/InputDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/InputDialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LJAVARuntime/InputDialog$Type;LJAVARuntime/InputDialogListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/InputDialog;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$cancelButton:Ljava/lang/String;

.field final synthetic val$defaultText:Ljava/lang/String;

.field final synthetic val$doneButton:Ljava/lang/String;

.field final synthetic val$listener:LJAVARuntime/InputDialogListener;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$type:LJAVARuntime/InputDialog$Type;


# direct methods
.method public constructor <init>(LJAVARuntime/InputDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LJAVARuntime/InputDialogListener;Landroid/app/Activity;LJAVARuntime/InputDialog$Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$title",
            "val$defaultText",
            "val$doneButton",
            "val$cancelButton",
            "val$listener",
            "val$activity",
            "val$type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/InputDialog$1;->this$0:LJAVARuntime/InputDialog;

    iput-object p2, p0, LJAVARuntime/InputDialog$1;->val$title:Ljava/lang/String;

    iput-object p3, p0, LJAVARuntime/InputDialog$1;->val$defaultText:Ljava/lang/String;

    iput-object p4, p0, LJAVARuntime/InputDialog$1;->val$doneButton:Ljava/lang/String;

    iput-object p5, p0, LJAVARuntime/InputDialog$1;->val$cancelButton:Ljava/lang/String;

    iput-object p6, p0, LJAVARuntime/InputDialog$1;->val$listener:LJAVARuntime/InputDialogListener;

    iput-object p7, p0, LJAVARuntime/InputDialog$1;->val$activity:Landroid/app/Activity;

    iput-object p8, p0, LJAVARuntime/InputDialog$1;->val$type:LJAVARuntime/InputDialog$Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, LJAVARuntime/InputDialog$1;->this$0:LJAVARuntime/InputDialog;

    iget-object v1, p0, LJAVARuntime/InputDialog$1;->val$title:Ljava/lang/String;

    iget-object v2, p0, LJAVARuntime/InputDialog$1;->val$defaultText:Ljava/lang/String;

    iget-object v3, p0, LJAVARuntime/InputDialog$1;->val$doneButton:Ljava/lang/String;

    iget-object v4, p0, LJAVARuntime/InputDialog$1;->val$cancelButton:Ljava/lang/String;

    iget-object v5, p0, LJAVARuntime/InputDialog$1;->val$listener:LJAVARuntime/InputDialogListener;

    iget-object v6, p0, LJAVARuntime/InputDialog$1;->val$activity:Landroid/app/Activity;

    iget-object v7, p0, LJAVARuntime/InputDialog$1;->val$type:LJAVARuntime/InputDialog$Type;

    invoke-static/range {v0 .. v7}, LJAVARuntime/InputDialog;->access$000(LJAVARuntime/InputDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LJAVARuntime/InputDialogListener;Landroid/content/Context;LJAVARuntime/InputDialog$Type;)V

    return-void
.end method
