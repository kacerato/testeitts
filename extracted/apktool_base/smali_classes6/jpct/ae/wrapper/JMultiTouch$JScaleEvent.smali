.class public Ljpct/ae/wrapper/JMultiTouch$JScaleEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "JpctScaleEvent"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljpct/ae/wrapper/JMultiTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JScaleEvent"
.end annotation


# instance fields
.field private detector:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Lanywheresoftware/b4a/BA;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object p1, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-direct {v0, p1, p2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Ljpct/ae/wrapper/JMultiTouch$JScaleEvent;->detector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method public static synthetic access$0(Ljpct/ae/wrapper/JMultiTouch$JScaleEvent;Landroid/view/ScaleGestureDetector;)V
    .locals 0

    iput-object p1, p0, Ljpct/ae/wrapper/JMultiTouch$JScaleEvent;->detector:Landroid/view/ScaleGestureDetector;

    return-void
.end method


# virtual methods
.method public getCurrentSpan()F
    .locals 1

    iget-object v0, p0, Ljpct/ae/wrapper/JMultiTouch$JScaleEvent;->detector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    return v0
.end method

.method public getEventTime()J
    .locals 2

    iget-object v0, p0, Ljpct/ae/wrapper/JMultiTouch$JScaleEvent;->detector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->getEventTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFocusX()F
    .locals 1

    iget-object v0, p0, Ljpct/ae/wrapper/JMultiTouch$JScaleEvent;->detector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    return v0
.end method

.method public getFocusY()F
    .locals 1

    iget-object v0, p0, Ljpct/ae/wrapper/JMultiTouch$JScaleEvent;->detector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v0

    return v0
.end method

.method public getPreviousSpan()F
    .locals 1

    iget-object v0, p0, Ljpct/ae/wrapper/JMultiTouch$JScaleEvent;->detector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v0

    return v0
.end method

.method public getScaleFactor()F
    .locals 1

    iget-object v0, p0, Ljpct/ae/wrapper/JMultiTouch$JScaleEvent;->detector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    return v0
.end method

.method public getTimeDelta()J
    .locals 2

    iget-object v0, p0, Ljpct/ae/wrapper/JMultiTouch$JScaleEvent;->detector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->getTimeDelta()J

    move-result-wide v0

    return-wide v0
.end method

.method public isInProgress()Z
    .locals 1

    iget-object v0, p0, Ljpct/ae/wrapper/JMultiTouch$JScaleEvent;->detector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    return v0
.end method
