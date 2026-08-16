.class public Ljpct/ae/wrapper/JMultiTouch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation build Lanywheresoftware/b4a/BA$Hide;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;,
        Ljpct/ae/wrapper/JMultiTouch$JMotionEvent;,
        Ljpct/ae/wrapper/JMultiTouch$JScaleEvent;
    }
.end annotation


# instance fields
.field private final JpctGestureEvent:Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;

.field private final JpctMotionEvent:Ljpct/ae/wrapper/JMultiTouch$JMotionEvent;

.field private final JpctScaleEvent:Ljpct/ae/wrapper/JMultiTouch$JScaleEvent;

.field private final ba:Lanywheresoftware/b4a/BA;

.field private final eventName:Ljava/lang/String;

.field private final gDetector:Landroid/view/GestureDetector;

.field private final sDetector:Landroid/view/ScaleGestureDetector;

.field private final sender:Ljpct/ae/wrapper/JGLSurfaceView;


# direct methods
.method public constructor <init>(Lanywheresoftware/b4a/BA;Ljava/lang/String;Ljpct/ae/wrapper/JGLSurfaceView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljpct/ae/wrapper/JMultiTouch;->ba:Lanywheresoftware/b4a/BA;

    iput-object p2, p0, Ljpct/ae/wrapper/JMultiTouch;->eventName:Ljava/lang/String;

    iput-object p3, p0, Ljpct/ae/wrapper/JMultiTouch;->sender:Ljpct/ae/wrapper/JGLSurfaceView;

    new-instance p2, Ljpct/ae/wrapper/JMultiTouch$JMotionEvent;

    invoke-direct {p2}, Ljpct/ae/wrapper/JMultiTouch$JMotionEvent;-><init>()V

    iput-object p2, p0, Ljpct/ae/wrapper/JMultiTouch;->JpctMotionEvent:Ljpct/ae/wrapper/JMultiTouch$JMotionEvent;

    new-instance p2, Ljpct/ae/wrapper/JMultiTouch$JScaleEvent;

    invoke-direct {p2, p1, p0}, Ljpct/ae/wrapper/JMultiTouch$JScaleEvent;-><init>(Lanywheresoftware/b4a/BA;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Ljpct/ae/wrapper/JMultiTouch;->JpctScaleEvent:Ljpct/ae/wrapper/JMultiTouch$JScaleEvent;

    new-instance p2, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;

    invoke-direct {p2}, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;-><init>()V

    iput-object p2, p0, Ljpct/ae/wrapper/JMultiTouch;->JpctGestureEvent:Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;

    new-instance p2, Landroid/view/ScaleGestureDetector;

    iget-object p1, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-direct {p2, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Ljpct/ae/wrapper/JMultiTouch;->sDetector:Landroid/view/ScaleGestureDetector;

    new-instance p1, Landroid/view/GestureDetector;

    invoke-direct {p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Ljpct/ae/wrapper/JMultiTouch;->gDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p1, p0, Ljpct/ae/wrapper/JMultiTouch;->JpctGestureEvent:Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->access$1(Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;Z)V

    iget-object p1, p0, Ljpct/ae/wrapper/JMultiTouch;->JpctGestureEvent:Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;

    invoke-static {p1, v0}, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->access$12(Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;Z)V

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p1, p0, Ljpct/ae/wrapper/JMultiTouch;->JpctGestureEvent:Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->access$1(Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;Z)V

    iget-object p1, p0, Ljpct/ae/wrapper/JMultiTouch;->JpctGestureEvent:Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;

    invoke-static {p1, v0}, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->access$13(Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;Z)V

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p1, p0, Ljpct/ae/wrapper/JMultiTouch;->JpctGestureEvent:Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;

    invoke-static {p1}, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->access$0(Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;)V

    iget-object p1, p0, Ljpct/ae/wrapper/JMultiTouch;->JpctGestureEvent:Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->access$1(Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;Z)V

    iget-object p1, p0, Ljpct/ae/wrapper/JMultiTouch;->JpctGestureEvent:Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;

    invoke-static {p1, v0}, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->access$2(Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;Z)V

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    iget-object p1, p0, Ljpct/ae/wrapper/JMultiTouch;->JpctGestureEvent:Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->access$1(Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;Z)V

    iget-object p1, p0, Ljpct/ae/wrapper/JMultiTouch;->JpctGestureEvent:Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;

    invoke-static {p1, p2}, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->access$3(Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;Z)V

    iget-object p1, p0, Ljpct/ae/wrapper/JMultiTouch;->JpctGestureEvent:Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;

    invoke-static {p1, p3}, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->access$4(Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;F)V

    iget-object p1, p0, Ljpct/ae/wrapper/JMultiTouch;->JpctGestureEvent:Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;

    invoke-static {p1, p4}, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->access$5(Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;F)V

    return p2
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object p1, p0, Ljpct/ae/wrapper/JMultiTouch;->JpctGestureEvent:Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->access$1(Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;Z)V

    iget-object p1, p0, Ljpct/ae/wrapper/JMultiTouch;->JpctGestureEvent:Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;

    invoke-static {p1, v0}, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->access$6(Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;Z)V

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    iget-object v0, p0, Ljpct/ae/wrapper/JMultiTouch;->JpctScaleEvent:Ljpct/ae/wrapper/JMultiTouch$JScaleEvent;

    invoke-static {v0, p1}, Ljpct/ae/wrapper/JMultiTouch$JScaleEvent;->access$0(Ljpct/ae/wrapper/JMultiTouch$JScaleEvent;Landroid/view/ScaleGestureDetector;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    iget-object v0, p0, Ljpct/ae/wrapper/JMultiTouch;->JpctScaleEvent:Ljpct/ae/wrapper/JMultiTouch$JScaleEvent;

    invoke-static {v0, p1}, Ljpct/ae/wrapper/JMultiTouch$JScaleEvent;->access$0(Ljpct/ae/wrapper/JMultiTouch$JScaleEvent;Landroid/view/ScaleGestureDetector;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    iget-object v0, p0, Ljpct/ae/wrapper/JMultiTouch;->JpctScaleEvent:Ljpct/ae/wrapper/JMultiTouch$JScaleEvent;

    invoke-static {v0, p1}, Ljpct/ae/wrapper/JMultiTouch$JScaleEvent;->access$0(Ljpct/ae/wrapper/JMultiTouch$JScaleEvent;Landroid/view/ScaleGestureDetector;)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    iget-object p1, p0, Ljpct/ae/wrapper/JMultiTouch;->JpctGestureEvent:Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->access$1(Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;Z)V

    iget-object p1, p0, Ljpct/ae/wrapper/JMultiTouch;->JpctGestureEvent:Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;

    invoke-static {p1, p2}, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->access$7(Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;Z)V

    iget-object p1, p0, Ljpct/ae/wrapper/JMultiTouch;->JpctGestureEvent:Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;

    invoke-static {p1, p3}, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->access$8(Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;F)V

    iget-object p1, p0, Ljpct/ae/wrapper/JMultiTouch;->JpctGestureEvent:Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;

    invoke-static {p1, p4}, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->access$9(Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;F)V

    return p2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object p1, p0, Ljpct/ae/wrapper/JMultiTouch;->JpctGestureEvent:Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->access$1(Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;Z)V

    iget-object p1, p0, Ljpct/ae/wrapper/JMultiTouch;->JpctGestureEvent:Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;

    invoke-static {p1, v0}, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->access$10(Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;Z)V

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p1, p0, Ljpct/ae/wrapper/JMultiTouch;->JpctGestureEvent:Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->access$1(Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;Z)V

    iget-object p1, p0, Ljpct/ae/wrapper/JMultiTouch;->JpctGestureEvent:Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;

    invoke-static {p1, v0}, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->access$14(Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;Z)V

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p1, p0, Ljpct/ae/wrapper/JMultiTouch;->JpctGestureEvent:Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->access$1(Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;Z)V

    iget-object p1, p0, Ljpct/ae/wrapper/JMultiTouch;->JpctGestureEvent:Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;

    invoke-static {p1, v0}, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->access$11(Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;Z)V

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    :try_start_0
    iget-object p1, p0, Ljpct/ae/wrapper/JMultiTouch;->sDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p1, p0, Ljpct/ae/wrapper/JMultiTouch;->gDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p1, p0, Ljpct/ae/wrapper/JMultiTouch;->JpctMotionEvent:Ljpct/ae/wrapper/JMultiTouch$JMotionEvent;

    invoke-static {p1, p2}, Ljpct/ae/wrapper/JMultiTouch$JMotionEvent;->access$0(Ljpct/ae/wrapper/JMultiTouch$JMotionEvent;Landroid/view/MotionEvent;)V

    iget-object p1, p0, Ljpct/ae/wrapper/JMultiTouch;->ba:Lanywheresoftware/b4a/BA;

    iget-object p2, p0, Ljpct/ae/wrapper/JMultiTouch;->sender:Ljpct/ae/wrapper/JGLSurfaceView;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljpct/ae/wrapper/JMultiTouch;->eventName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_SurfaceTouch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljpct/ae/wrapper/JMultiTouch;->JpctMotionEvent:Ljpct/ae/wrapper/JMultiTouch$JMotionEvent;

    iget-object v2, p0, Ljpct/ae/wrapper/JMultiTouch;->JpctScaleEvent:Ljpct/ae/wrapper/JMultiTouch$JScaleEvent;

    iget-object v3, p0, Ljpct/ae/wrapper/JMultiTouch;->JpctGestureEvent:Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x1

    return p1
.end method
