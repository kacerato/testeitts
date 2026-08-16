.class public Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "JpctGestureEvent"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljpct/ae/wrapper/JMultiTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JGestureEvent"
.end annotation


# instance fields
.field private DoubleTap:Z

.field private DoubleTapEvent:Z

.field private Down:Z

.field private Fling:Z

.field private FlingVelocityX:F

.field private FlingVelocityY:F

.field private LongPress:Z

.field private Scroll:Z

.field private ScrollDistanceX:F

.field private ScrollDistanceY:F

.field private ShowPress:Z

.field private SingleTapConfirmed:Z

.field private SingleTapUp:Z

.field private isInProgress:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->isInProgress:Z

    return-void
.end method

.method public static synthetic access$0(Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;)V
    .locals 0

    invoke-direct {p0}, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->reset()V

    return-void
.end method

.method public static synthetic access$1(Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;Z)V
    .locals 0

    iput-boolean p1, p0, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->isInProgress:Z

    return-void
.end method

.method public static synthetic access$10(Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;Z)V
    .locals 0

    iput-boolean p1, p0, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->ShowPress:Z

    return-void
.end method

.method public static synthetic access$11(Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;Z)V
    .locals 0

    iput-boolean p1, p0, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->SingleTapUp:Z

    return-void
.end method

.method public static synthetic access$12(Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;Z)V
    .locals 0

    iput-boolean p1, p0, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->DoubleTap:Z

    return-void
.end method

.method public static synthetic access$13(Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;Z)V
    .locals 0

    iput-boolean p1, p0, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->DoubleTapEvent:Z

    return-void
.end method

.method public static synthetic access$14(Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;Z)V
    .locals 0

    iput-boolean p1, p0, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->SingleTapConfirmed:Z

    return-void
.end method

.method public static synthetic access$2(Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;Z)V
    .locals 0

    iput-boolean p1, p0, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->Down:Z

    return-void
.end method

.method public static synthetic access$3(Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;Z)V
    .locals 0

    iput-boolean p1, p0, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->Fling:Z

    return-void
.end method

.method public static synthetic access$4(Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;F)V
    .locals 0

    iput p1, p0, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->FlingVelocityX:F

    return-void
.end method

.method public static synthetic access$5(Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;F)V
    .locals 0

    iput p1, p0, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->FlingVelocityY:F

    return-void
.end method

.method public static synthetic access$6(Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;Z)V
    .locals 0

    iput-boolean p1, p0, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->LongPress:Z

    return-void
.end method

.method public static synthetic access$7(Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;Z)V
    .locals 0

    iput-boolean p1, p0, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->Scroll:Z

    return-void
.end method

.method public static synthetic access$8(Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;F)V
    .locals 0

    iput p1, p0, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->ScrollDistanceX:F

    return-void
.end method

.method public static synthetic access$9(Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;F)V
    .locals 0

    iput p1, p0, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->ScrollDistanceY:F

    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->isInProgress:Z

    iput-boolean v0, p0, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->SingleTapConfirmed:Z

    iput-boolean v0, p0, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->DoubleTapEvent:Z

    iput-boolean v0, p0, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->DoubleTap:Z

    iput-boolean v0, p0, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->SingleTapUp:Z

    iput-boolean v0, p0, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->ShowPress:Z

    iput-boolean v0, p0, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->LongPress:Z

    iput-boolean v0, p0, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->Scroll:Z

    iput-boolean v0, p0, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->Fling:Z

    iput-boolean v0, p0, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->Down:Z

    return-void
.end method


# virtual methods
.method public FlingVelocityX()F
    .locals 1

    iget v0, p0, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->FlingVelocityX:F

    return v0
.end method

.method public FlingVelocityY()F
    .locals 1

    iget v0, p0, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->FlingVelocityY:F

    return v0
.end method

.method public ScrollDistanceX()F
    .locals 1

    iget v0, p0, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->ScrollDistanceX:F

    return v0
.end method

.method public ScrollDistanceY()F
    .locals 1

    iget v0, p0, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->ScrollDistanceY:F

    return v0
.end method

.method public isInProgress()Z
    .locals 1

    iget-boolean v0, p0, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->isInProgress:Z

    return v0
.end method

.method public onDoubleTap()Z
    .locals 1

    iget-boolean v0, p0, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->DoubleTap:Z

    return v0
.end method

.method public onDoubleTapEvent()Z
    .locals 1

    iget-boolean v0, p0, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->DoubleTapEvent:Z

    return v0
.end method

.method public onDown()Z
    .locals 1

    iget-boolean v0, p0, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->Down:Z

    return v0
.end method

.method public onFling()Z
    .locals 1

    iget-boolean v0, p0, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->Fling:Z

    return v0
.end method

.method public onLongPress()Z
    .locals 1

    iget-boolean v0, p0, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->LongPress:Z

    return v0
.end method

.method public onScroll()Z
    .locals 1

    iget-boolean v0, p0, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->Scroll:Z

    return v0
.end method

.method public onShowPress()Z
    .locals 1

    iget-boolean v0, p0, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->ShowPress:Z

    return v0
.end method

.method public onSingleTapConfirmed()Z
    .locals 1

    iget-boolean v0, p0, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->SingleTapConfirmed:Z

    return v0
.end method

.method public onSingleTapUp()Z
    .locals 1

    iget-boolean v0, p0, Ljpct/ae/wrapper/JMultiTouch$JGestureEvent;->SingleTapUp:Z

    return v0
.end method
