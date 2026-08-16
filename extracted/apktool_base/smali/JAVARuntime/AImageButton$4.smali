.class LJAVARuntime/AImageButton$4;
.super LJAVARuntime/AOnHoverListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/AImageButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/AImageButton;

.field final synthetic val$l:Landroid/view/View$OnHoverListener;


# direct methods
.method public constructor <init>(LJAVARuntime/AImageButton;Landroid/view/View$OnHoverListener;)V
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

    iput-object p1, p0, LJAVARuntime/AImageButton$4;->this$0:LJAVARuntime/AImageButton;

    iput-object p2, p0, LJAVARuntime/AImageButton$4;->val$l:Landroid/view/View$OnHoverListener;

    invoke-direct {p0}, LJAVARuntime/AOnHoverListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "event"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/AImageButton$4;->val$l:Landroid/view/View$OnHoverListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnHoverListener;->onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
