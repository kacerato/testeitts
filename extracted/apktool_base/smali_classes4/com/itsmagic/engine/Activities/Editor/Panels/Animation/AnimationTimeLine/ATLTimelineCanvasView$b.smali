.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$b;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
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

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detector"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->p(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;F)F

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->n(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;)F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->o(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;F)F

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->j(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->n(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->q(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;)I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->q(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;)I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->q(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->j(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->o(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;F)F

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->c(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;)I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->c(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;)I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->c(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->j(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->o(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;F)F

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->l(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;)I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result p1

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->l(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;)I

    move-result v3

    invoke-static {v1, p1, v3, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->e(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;FII)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->m(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;I)I

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_2
    return v2
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detector"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->d(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;Z)Z

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->i(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;)Landroid/widget/OverScroller;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->i(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;)Landroid/widget/OverScroller;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->l(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->k(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;I)I

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->o(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;F)F

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detector"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->d(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;Z)Z

    return-void
.end method
