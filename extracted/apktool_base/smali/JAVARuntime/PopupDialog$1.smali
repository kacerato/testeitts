.class LJAVARuntime/PopupDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/PopupDialog;-><init>(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/PopupDialog;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method public constructor <init>(LJAVARuntime/PopupDialog;ILandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$type",
            "val$activity",
            "val$title",
            "val$message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/PopupDialog$1;->this$0:LJAVARuntime/PopupDialog;

    iput p2, p0, LJAVARuntime/PopupDialog$1;->val$type:I

    iput-object p3, p0, LJAVARuntime/PopupDialog$1;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, LJAVARuntime/PopupDialog$1;->val$title:Ljava/lang/String;

    iput-object p5, p0, LJAVARuntime/PopupDialog$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, LJAVARuntime/PopupDialog$1;->this$0:LJAVARuntime/PopupDialog;

    iget v1, p0, LJAVARuntime/PopupDialog$1;->val$type:I

    iget-object v2, p0, LJAVARuntime/PopupDialog$1;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, LJAVARuntime/PopupDialog$1;->val$title:Ljava/lang/String;

    iget-object v4, p0, LJAVARuntime/PopupDialog$1;->val$message:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, LJAVARuntime/PopupDialog;->access$000(LJAVARuntime/PopupDialog;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
