.class LJAVARuntime/AOnTouchListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/AOnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/AOnTouchListener;

.field final synthetic val$event:Landroid/view/MotionEvent;

.field final synthetic val$r:[Z

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method public constructor <init>(LJAVARuntime/AOnTouchListener;[ZLandroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$r",
            "val$v",
            "val$event"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/AOnTouchListener$1;->this$0:LJAVARuntime/AOnTouchListener;

    iput-object p2, p0, LJAVARuntime/AOnTouchListener$1;->val$r:[Z

    iput-object p3, p0, LJAVARuntime/AOnTouchListener$1;->val$v:Landroid/view/View;

    iput-object p4, p0, LJAVARuntime/AOnTouchListener$1;->val$event:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LJAVARuntime/AOnTouchListener$1;->val$r:[Z

    iget-object v1, p0, LJAVARuntime/AOnTouchListener$1;->this$0:LJAVARuntime/AOnTouchListener;

    iget-object v2, p0, LJAVARuntime/AOnTouchListener$1;->val$v:Landroid/view/View;

    iget-object v3, p0, LJAVARuntime/AOnTouchListener$1;->val$event:Landroid/view/MotionEvent;

    invoke-virtual {v1, v2, v3}, LJAVARuntime/AOnTouchListener;->onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v1, v0, v2

    return-void
.end method
