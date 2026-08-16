.class public Ljpct/ae/wrapper/JMultiTouch$JMotionEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "JpctMotionEvent"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljpct/ae/wrapper/JMultiTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JMotionEvent"
.end annotation


# static fields
.field public static ACTION_CANCEL:I = 0x3

.field public static ACTION_DOWN:I = 0x0

.field public static ACTION_MASK:I = 0xff

.field public static ACTION_MOVE:I = 0x2

.field public static ACTION_POINTER_DOWN:I = 0x5

.field public static ACTION_POINTER_INDEX_MASK:I = 0xff00

.field public static ACTION_POINTER_INDEX_SHIFT:I = 0x8

.field public static ACTION_POINTER_UP:I = 0x6

.field public static ACTION_UP:I = 0x1

.field public static INVALID_POINTER_ID:I = -0x1


# instance fields
.field private event:Landroid/view/MotionEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 9
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Ljpct/ae/wrapper/JMultiTouch$JMotionEvent;->event:Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    sget v5, Ljpct/ae/wrapper/JMultiTouch$JMotionEvent;->INVALID_POINTER_ID:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Ljpct/ae/wrapper/JMultiTouch$JMotionEvent;->event:Landroid/view/MotionEvent;

    :cond_0
    return-void
.end method

.method public static synthetic access$0(Ljpct/ae/wrapper/JMultiTouch$JMotionEvent;Landroid/view/MotionEvent;)V
    .locals 0

    iput-object p1, p0, Ljpct/ae/wrapper/JMultiTouch$JMotionEvent;->event:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public findPointerIndex(I)I
    .locals 1

    iget-object v0, p0, Ljpct/ae/wrapper/JMultiTouch$JMotionEvent;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    return p1
.end method

.method public getAction()I
    .locals 1

    iget-object v0, p0, Ljpct/ae/wrapper/JMultiTouch$JMotionEvent;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    return v0
.end method

.method public getActionIndex()I
    .locals 1

    iget-object v0, p0, Ljpct/ae/wrapper/JMultiTouch$JMotionEvent;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    return v0
.end method

.method public getActionMasked()I
    .locals 1

    iget-object v0, p0, Ljpct/ae/wrapper/JMultiTouch$JMotionEvent;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    return v0
.end method

.method public getDownTime()J
    .locals 2

    iget-object v0, p0, Ljpct/ae/wrapper/JMultiTouch$JMotionEvent;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEventTime()J
    .locals 2

    iget-object v0, p0, Ljpct/ae/wrapper/JMultiTouch$JMotionEvent;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPointerCount()I
    .locals 1

    iget-object v0, p0, Ljpct/ae/wrapper/JMultiTouch$JMotionEvent;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    return v0
.end method

.method public getPointerId(I)I
    .locals 1

    iget-object v0, p0, Ljpct/ae/wrapper/JMultiTouch$JMotionEvent;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    return p1
.end method

.method public getPressure(I)F
    .locals 1

    iget-object v0, p0, Ljpct/ae/wrapper/JMultiTouch$JMotionEvent;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result p1

    return p1
.end method

.method public getRawX()F
    .locals 1

    iget-object v0, p0, Ljpct/ae/wrapper/JMultiTouch$JMotionEvent;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    return v0
.end method

.method public getRawY()F
    .locals 1

    iget-object v0, p0, Ljpct/ae/wrapper/JMultiTouch$JMotionEvent;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    return v0
.end method

.method public getSize(I)F
    .locals 1

    :try_start_0
    iget-object v0, p0, Ljpct/ae/wrapper/JMultiTouch$JMotionEvent;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getSize(I)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    sget p1, Ljpct/ae/wrapper/JMultiTouch$JMotionEvent;->INVALID_POINTER_ID:I

    int-to-float p1, p1

    return p1
.end method

.method public getX()F
    .locals 1

    .line 2
    iget-object v0, p0, Ljpct/ae/wrapper/JMultiTouch$JMotionEvent;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    return v0
.end method

.method public getX(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Ljpct/ae/wrapper/JMultiTouch$JMotionEvent;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    return p1
.end method

.method public getY()F
    .locals 1

    .line 2
    iget-object v0, p0, Ljpct/ae/wrapper/JMultiTouch$JMotionEvent;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    return v0
.end method

.method public getY(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Ljpct/ae/wrapper/JMultiTouch$JMotionEvent;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    return p1
.end method
