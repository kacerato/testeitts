.class LJAVARuntime/AImageView$2;
.super LJAVARuntime/AOnGenericMotionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/AImageView;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/AImageView;

.field final synthetic val$l:Landroid/view/View$OnGenericMotionListener;


# direct methods
.method public constructor <init>(LJAVARuntime/AImageView;Landroid/view/View$OnGenericMotionListener;)V
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

    iput-object p1, p0, LJAVARuntime/AImageView$2;->this$0:LJAVARuntime/AImageView;

    iput-object p2, p0, LJAVARuntime/AImageView$2;->val$l:Landroid/view/View$OnGenericMotionListener;

    invoke-direct {p0}, LJAVARuntime/AOnGenericMotionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenericMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
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

    iget-object v0, p0, LJAVARuntime/AImageView$2;->val$l:Landroid/view/View$OnGenericMotionListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnGenericMotionListener;->onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
