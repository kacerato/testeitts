.class public Lcom/jsibbold/zoomage/ZoomageView$d;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jsibbold/zoomage/ZoomageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/jsibbold/zoomage/ZoomageView;


# direct methods
.method public constructor <init>(Lcom/jsibbold/zoomage/ZoomageView;)V
    .locals 0

    iput-object p1, p0, Lcom/jsibbold/zoomage/ZoomageView$d;->b:Lcom/jsibbold/zoomage/ZoomageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/jsibbold/zoomage/ZoomageView$d;->b:Lcom/jsibbold/zoomage/ZoomageView;

    invoke-static {p1, v0}, Lcom/jsibbold/zoomage/ZoomageView;->a(Lcom/jsibbold/zoomage/ZoomageView;Z)Z

    :cond_0
    iget-object p1, p0, Lcom/jsibbold/zoomage/ZoomageView$d;->b:Lcom/jsibbold/zoomage/ZoomageView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/jsibbold/zoomage/ZoomageView;->b(Lcom/jsibbold/zoomage/ZoomageView;Z)Z

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p1, p0, Lcom/jsibbold/zoomage/ZoomageView$d;->b:Lcom/jsibbold/zoomage/ZoomageView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/jsibbold/zoomage/ZoomageView;->b(Lcom/jsibbold/zoomage/ZoomageView;Z)Z

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p1, p0, Lcom/jsibbold/zoomage/ZoomageView$d;->b:Lcom/jsibbold/zoomage/ZoomageView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/jsibbold/zoomage/ZoomageView;->b(Lcom/jsibbold/zoomage/ZoomageView;Z)Z

    const/4 p1, 0x0

    return p1
.end method
