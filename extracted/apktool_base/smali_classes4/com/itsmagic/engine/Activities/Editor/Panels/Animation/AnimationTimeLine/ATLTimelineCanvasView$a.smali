.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->a(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->b(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->g(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;F)Lv4/b;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->h(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;)Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$c;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->h(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;)Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$c;->b(Lv4/b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->a(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->b(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->f(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;F)V

    :cond_1
    :goto_0
    return v1
.end method
