.class LJAVARuntime/AButton$6;
.super LJAVARuntime/AOnKeyListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/AButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/AButton;

.field final synthetic val$l:Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>(LJAVARuntime/AButton;Landroid/view/View$OnKeyListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$l"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/AButton$6;->this$0:LJAVARuntime/AButton;

    iput-object p2, p0, LJAVARuntime/AButton$6;->val$l:Landroid/view/View$OnKeyListener;

    invoke-direct {p0}, LJAVARuntime/AOnKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "keyCode",
            "event"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/AButton$6;->val$l:Landroid/view/View$OnKeyListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
