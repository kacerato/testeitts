.class LJAVARuntime/AEditText$3;
.super LJAVARuntime/AOnTouchListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/AEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/AEditText;

.field final synthetic val$l:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(LJAVARuntime/AEditText;Landroid/view/View$OnTouchListener;)V
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

    iput-object p1, p0, LJAVARuntime/AEditText$3;->this$0:LJAVARuntime/AEditText;

    iput-object p2, p0, LJAVARuntime/AEditText$3;->val$l:Landroid/view/View$OnTouchListener;

    invoke-direct {p0}, LJAVARuntime/AOnTouchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
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

    iget-object v0, p0, LJAVARuntime/AEditText$3;->val$l:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
