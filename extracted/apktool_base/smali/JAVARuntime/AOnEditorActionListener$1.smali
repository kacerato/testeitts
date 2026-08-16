.class LJAVARuntime/AOnEditorActionListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/AOnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/AOnEditorActionListener;

.field final synthetic val$actionId:I

.field final synthetic val$event:Landroid/view/KeyEvent;

.field final synthetic val$r:[Z

.field final synthetic val$v:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(LJAVARuntime/AOnEditorActionListener;[ZLandroid/widget/TextView;ILandroid/view/KeyEvent;)V
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
            "val$r",
            "val$v",
            "val$actionId",
            "val$event"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/AOnEditorActionListener$1;->this$0:LJAVARuntime/AOnEditorActionListener;

    iput-object p2, p0, LJAVARuntime/AOnEditorActionListener$1;->val$r:[Z

    iput-object p3, p0, LJAVARuntime/AOnEditorActionListener$1;->val$v:Landroid/widget/TextView;

    iput p4, p0, LJAVARuntime/AOnEditorActionListener$1;->val$actionId:I

    iput-object p5, p0, LJAVARuntime/AOnEditorActionListener$1;->val$event:Landroid/view/KeyEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, LJAVARuntime/AOnEditorActionListener$1;->val$r:[Z

    iget-object v1, p0, LJAVARuntime/AOnEditorActionListener$1;->this$0:LJAVARuntime/AOnEditorActionListener;

    iget-object v2, p0, LJAVARuntime/AOnEditorActionListener$1;->val$v:Landroid/widget/TextView;

    iget v3, p0, LJAVARuntime/AOnEditorActionListener$1;->val$actionId:I

    iget-object v4, p0, LJAVARuntime/AOnEditorActionListener$1;->val$event:Landroid/view/KeyEvent;

    invoke-virtual {v1, v2, v3, v4}, LJAVARuntime/AOnEditorActionListener;->onEditorActionEvent(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v1, v0, v2

    return-void
.end method
