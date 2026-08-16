.class public Lcom/jme3/cinematic/events/MotionEvent;
.super Lcom/jme3/cinematic/events/AbstractCinematicEvent;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/scene/control/Control;
.implements Lcom/jme3/util/clone/JmeCloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/cinematic/events/MotionEvent$Direction;
    }
.end annotation


# instance fields
.field protected currentValue:F

.field protected currentWayPoint:I

.field protected direction:Lcom/jme3/math/Vector3f;

.field protected directionType:Lcom/jme3/cinematic/events/MotionEvent$Direction;

.field private isControl:Z

.field protected lookAt:Lcom/jme3/math/Vector3f;

.field protected path:Lcom/jme3/cinematic/MotionPath;

.field protected rotation:Lcom/jme3/math/Quaternion;

.field protected spatial:Lcom/jme3/scene/Spatial;

.field private final tempRotation:Lcom/jme3/math/Quaternion;

.field protected traveledDistance:F

.field protected upVector:Lcom/jme3/math/Vector3f;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;-><init>()V

    .line 2
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->direction:Lcom/jme3/math/Vector3f;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->lookAt:Lcom/jme3/math/Vector3f;

    .line 4
    sget-object v1, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    iput-object v1, p0, Lcom/jme3/cinematic/events/MotionEvent;->upVector:Lcom/jme3/math/Vector3f;

    .line 5
    iput-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->rotation:Lcom/jme3/math/Quaternion;

    .line 6
    sget-object v0, Lcom/jme3/cinematic/events/MotionEvent$Direction;->None:Lcom/jme3/cinematic/events/MotionEvent$Direction;

    iput-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->directionType:Lcom/jme3/cinematic/events/MotionEvent$Direction;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->isControl:Z

    .line 8
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->tempRotation:Lcom/jme3/math/Quaternion;

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->traveledDistance:F

    return-void
.end method

.method public constructor <init>(Lcom/jme3/scene/Spatial;Lcom/jme3/cinematic/MotionPath;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;-><init>()V

    .line 11
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->direction:Lcom/jme3/math/Vector3f;

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->lookAt:Lcom/jme3/math/Vector3f;

    .line 13
    sget-object v1, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    iput-object v1, p0, Lcom/jme3/cinematic/events/MotionEvent;->upVector:Lcom/jme3/math/Vector3f;

    .line 14
    iput-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->rotation:Lcom/jme3/math/Quaternion;

    .line 15
    sget-object v0, Lcom/jme3/cinematic/events/MotionEvent$Direction;->None:Lcom/jme3/cinematic/events/MotionEvent$Direction;

    iput-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->directionType:Lcom/jme3/cinematic/events/MotionEvent$Direction;

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->isControl:Z

    .line 17
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->tempRotation:Lcom/jme3/math/Quaternion;

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->traveledDistance:F

    .line 19
    invoke-virtual {p1, p0}, Lcom/jme3/scene/Spatial;->addControl(Lcom/jme3/scene/control/Control;)V

    .line 20
    iput-object p2, p0, Lcom/jme3/cinematic/events/MotionEvent;->path:Lcom/jme3/cinematic/MotionPath;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/scene/Spatial;Lcom/jme3/cinematic/MotionPath;F)V
    .locals 1

    .line 21
    invoke-direct {p0, p3}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;-><init>(F)V

    .line 22
    new-instance p3, Lcom/jme3/math/Vector3f;

    invoke-direct {p3}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object p3, p0, Lcom/jme3/cinematic/events/MotionEvent;->direction:Lcom/jme3/math/Vector3f;

    const/4 p3, 0x0

    .line 23
    iput-object p3, p0, Lcom/jme3/cinematic/events/MotionEvent;->lookAt:Lcom/jme3/math/Vector3f;

    .line 24
    sget-object v0, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->upVector:Lcom/jme3/math/Vector3f;

    .line 25
    iput-object p3, p0, Lcom/jme3/cinematic/events/MotionEvent;->rotation:Lcom/jme3/math/Quaternion;

    .line 26
    sget-object p3, Lcom/jme3/cinematic/events/MotionEvent$Direction;->None:Lcom/jme3/cinematic/events/MotionEvent$Direction;

    iput-object p3, p0, Lcom/jme3/cinematic/events/MotionEvent;->directionType:Lcom/jme3/cinematic/events/MotionEvent$Direction;

    const/4 p3, 0x1

    .line 27
    iput-boolean p3, p0, Lcom/jme3/cinematic/events/MotionEvent;->isControl:Z

    .line 28
    new-instance p3, Lcom/jme3/math/Quaternion;

    invoke-direct {p3}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object p3, p0, Lcom/jme3/cinematic/events/MotionEvent;->tempRotation:Lcom/jme3/math/Quaternion;

    const/4 p3, 0x0

    .line 29
    iput p3, p0, Lcom/jme3/cinematic/events/MotionEvent;->traveledDistance:F

    .line 30
    invoke-virtual {p1, p0}, Lcom/jme3/scene/Spatial;->addControl(Lcom/jme3/scene/control/Control;)V

    .line 31
    iput-object p2, p0, Lcom/jme3/cinematic/events/MotionEvent;->path:Lcom/jme3/cinematic/MotionPath;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/scene/Spatial;Lcom/jme3/cinematic/MotionPath;FLcom/jme3/animation/LoopMode;)V
    .locals 1

    .line 44
    invoke-direct {p0, p3}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;-><init>(F)V

    .line 45
    new-instance p3, Lcom/jme3/math/Vector3f;

    invoke-direct {p3}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object p3, p0, Lcom/jme3/cinematic/events/MotionEvent;->direction:Lcom/jme3/math/Vector3f;

    const/4 p3, 0x0

    .line 46
    iput-object p3, p0, Lcom/jme3/cinematic/events/MotionEvent;->lookAt:Lcom/jme3/math/Vector3f;

    .line 47
    sget-object v0, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->upVector:Lcom/jme3/math/Vector3f;

    .line 48
    iput-object p3, p0, Lcom/jme3/cinematic/events/MotionEvent;->rotation:Lcom/jme3/math/Quaternion;

    .line 49
    sget-object p3, Lcom/jme3/cinematic/events/MotionEvent$Direction;->None:Lcom/jme3/cinematic/events/MotionEvent$Direction;

    iput-object p3, p0, Lcom/jme3/cinematic/events/MotionEvent;->directionType:Lcom/jme3/cinematic/events/MotionEvent$Direction;

    const/4 p3, 0x1

    .line 50
    iput-boolean p3, p0, Lcom/jme3/cinematic/events/MotionEvent;->isControl:Z

    .line 51
    new-instance p3, Lcom/jme3/math/Quaternion;

    invoke-direct {p3}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object p3, p0, Lcom/jme3/cinematic/events/MotionEvent;->tempRotation:Lcom/jme3/math/Quaternion;

    const/4 p3, 0x0

    .line 52
    iput p3, p0, Lcom/jme3/cinematic/events/MotionEvent;->traveledDistance:F

    .line 53
    invoke-virtual {p1, p0}, Lcom/jme3/scene/Spatial;->addControl(Lcom/jme3/scene/control/Control;)V

    .line 54
    iput-object p2, p0, Lcom/jme3/cinematic/events/MotionEvent;->path:Lcom/jme3/cinematic/MotionPath;

    .line 55
    iput-object p4, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->loopMode:Lcom/jme3/animation/LoopMode;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/scene/Spatial;Lcom/jme3/cinematic/MotionPath;Lcom/jme3/animation/LoopMode;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;-><init>()V

    .line 33
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->direction:Lcom/jme3/math/Vector3f;

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->lookAt:Lcom/jme3/math/Vector3f;

    .line 35
    sget-object v1, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    iput-object v1, p0, Lcom/jme3/cinematic/events/MotionEvent;->upVector:Lcom/jme3/math/Vector3f;

    .line 36
    iput-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->rotation:Lcom/jme3/math/Quaternion;

    .line 37
    sget-object v0, Lcom/jme3/cinematic/events/MotionEvent$Direction;->None:Lcom/jme3/cinematic/events/MotionEvent$Direction;

    iput-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->directionType:Lcom/jme3/cinematic/events/MotionEvent$Direction;

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->isControl:Z

    .line 39
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->tempRotation:Lcom/jme3/math/Quaternion;

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->traveledDistance:F

    .line 41
    invoke-virtual {p1, p0}, Lcom/jme3/scene/Spatial;->addControl(Lcom/jme3/scene/control/Control;)V

    .line 42
    iput-object p2, p0, Lcom/jme3/cinematic/events/MotionEvent;->path:Lcom/jme3/cinematic/MotionPath;

    .line 43
    iput-object p3, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->loopMode:Lcom/jme3/animation/LoopMode;

    return-void
.end method

.method private computeTargetDirection()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->directionType:Lcom/jme3/cinematic/events/MotionEvent$Direction;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->lookAt:Lcom/jme3/math/Vector3f;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/jme3/cinematic/events/MotionEvent;->spatial:Lcom/jme3/scene/Spatial;

    iget-object v2, p0, Lcom/jme3/cinematic/events/MotionEvent;->upVector:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v0, v2}, Lcom/jme3/scene/Spatial;->lookAt(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->rotation:Lcom/jme3/math/Quaternion;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/jme3/cinematic/events/MotionEvent;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->rotation:Lcom/jme3/math/Quaternion;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->tempRotation:Lcom/jme3/math/Quaternion;

    iget-object v1, p0, Lcom/jme3/cinematic/events/MotionEvent;->direction:Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/cinematic/events/MotionEvent;->upVector:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1, v2}, Lcom/jme3/math/Quaternion;->lookAt(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    iget-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->tempRotation:Lcom/jme3/math/Quaternion;

    iget-object v1, p0, Lcom/jme3/cinematic/events/MotionEvent;->rotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Quaternion;->multLocal(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    iget-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->spatial:Lcom/jme3/scene/Spatial;

    iget-object v1, p0, Lcom/jme3/cinematic/events/MotionEvent;->tempRotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->tempRotation:Lcom/jme3/math/Quaternion;

    iget-object v1, p0, Lcom/jme3/cinematic/events/MotionEvent;->direction:Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/cinematic/events/MotionEvent;->upVector:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1, v2}, Lcom/jme3/math/Quaternion;->lookAt(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    iget-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->spatial:Lcom/jme3/scene/Spatial;

    iget-object v1, p0, Lcom/jme3/cinematic/events/MotionEvent;->tempRotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    iget-object p2, p0, Lcom/jme3/cinematic/events/MotionEvent;->lookAt:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    iput-object p2, p0, Lcom/jme3/cinematic/events/MotionEvent;->lookAt:Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/cinematic/events/MotionEvent;->path:Lcom/jme3/cinematic/MotionPath;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/cinematic/MotionPath;

    iput-object p2, p0, Lcom/jme3/cinematic/events/MotionEvent;->path:Lcom/jme3/cinematic/MotionPath;

    iget-object p2, p0, Lcom/jme3/cinematic/events/MotionEvent;->rotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Quaternion;

    iput-object p2, p0, Lcom/jme3/cinematic/events/MotionEvent;->rotation:Lcom/jme3/math/Quaternion;

    iget-object p2, p0, Lcom/jme3/cinematic/events/MotionEvent;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/Spatial;

    iput-object p1, p0, Lcom/jme3/cinematic/events/MotionEvent;->spatial:Lcom/jme3/scene/Spatial;

    return-void
.end method

.method public cloneForSpatial(Lcom/jme3/scene/Spatial;)Lcom/jme3/scene/control/Control;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getCurrentValue()F
    .locals 1

    iget v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->currentValue:F

    return v0
.end method

.method public getCurrentWayPoint()I
    .locals 1

    iget v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->currentWayPoint:I

    return v0
.end method

.method public getDirection()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->direction:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getDirectionType()Lcom/jme3/cinematic/events/MotionEvent$Direction;
    .locals 1

    iget-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->directionType:Lcom/jme3/cinematic/events/MotionEvent$Direction;

    return-object v0
.end method

.method public getPath()Lcom/jme3/cinematic/MotionPath;
    .locals 1

    iget-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->path:Lcom/jme3/cinematic/MotionPath;

    return-object v0
.end method

.method public getRotation()Lcom/jme3/math/Quaternion;
    .locals 1

    iget-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->rotation:Lcom/jme3/math/Quaternion;

    return-object v0
.end method

.method public getSpatial()Lcom/jme3/scene/Spatial;
    .locals 1

    iget-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->spatial:Lcom/jme3/scene/Spatial;

    return-object v0
.end method

.method public getTraveledDistance()F
    .locals 1

    iget v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->traveledDistance:F

    return v0
.end method

.method public initEvent(Lcom/jme3/app/Application;Lcom/jme3/cinematic/Cinematic;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->initEvent(Lcom/jme3/app/Application;Lcom/jme3/cinematic/Cinematic;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/jme3/cinematic/events/MotionEvent;->isControl:Z

    return-void
.end method

.method public internalUpdate(F)V
    .locals 5

    iget-object v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->playState:Lcom/jme3/cinematic/PlayState;

    sget-object v1, Lcom/jme3/cinematic/PlayState;->Playing:Lcom/jme3/cinematic/PlayState;

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->time:F

    iget v1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->speed:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->time:F

    iget-object v1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->loopMode:Lcom/jme3/animation/LoopMode;

    sget-object v2, Lcom/jme3/animation/LoopMode;->Loop:Lcom/jme3/animation/LoopMode;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    iget v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->initialDuration:F

    iput v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->time:F

    :cond_0
    iget v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->time:F

    iget v2, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->initialDuration:F

    cmpl-float v4, v0, v2

    if-gez v4, :cond_1

    cmpg-float v4, v0, v3

    if-gez v4, :cond_3

    :cond_1
    sget-object v4, Lcom/jme3/animation/LoopMode;->DontLoop:Lcom/jme3/animation/LoopMode;

    if-ne v1, v4, :cond_3

    cmpl-float p1, v0, v2

    if-ltz p1, :cond_2

    iget-object p1, p0, Lcom/jme3/cinematic/events/MotionEvent;->path:Lcom/jme3/cinematic/MotionPath;

    invoke-virtual {p1}, Lcom/jme3/cinematic/MotionPath;->getNbWayPoints()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0, p0}, Lcom/jme3/cinematic/MotionPath;->triggerWayPointReach(ILcom/jme3/cinematic/events/MotionEvent;)V

    :cond_2
    invoke-virtual {p0}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->stop()V

    goto :goto_0

    :cond_3
    invoke-static {v0, v2, v1}, Lcom/jme3/animation/AnimationUtils;->clampWrapTime(FFLcom/jme3/animation/LoopMode;)F

    move-result v0

    iput v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->time:F

    cmpg-float v1, v0, v3

    if-gez v1, :cond_4

    iget v1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->speed:F

    neg-float v1, v1

    iput v1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->speed:F

    neg-float v0, v0

    iput v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->time:F

    :cond_4
    invoke-virtual {p0, p1}, Lcom/jme3/cinematic/events/MotionEvent;->onUpdate(F)V

    :cond_5
    :goto_0
    return-void
.end method

.method public isEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->playState:Lcom/jme3/cinematic/PlayState;

    sget-object v1, Lcom/jme3/cinematic/PlayState;->Stopped:Lcom/jme3/cinematic/PlayState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public jmeClone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/jme3/cinematic/events/MotionEvent;

    invoke-direct {v0}, Lcom/jme3/cinematic/events/MotionEvent;-><init>()V

    iget-object v1, p0, Lcom/jme3/cinematic/events/MotionEvent;->path:Lcom/jme3/cinematic/MotionPath;

    iput-object v1, v0, Lcom/jme3/cinematic/events/MotionEvent;->path:Lcom/jme3/cinematic/MotionPath;

    iget-object v1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->playState:Lcom/jme3/cinematic/PlayState;

    iput-object v1, v0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->playState:Lcom/jme3/cinematic/PlayState;

    iget v1, p0, Lcom/jme3/cinematic/events/MotionEvent;->currentWayPoint:I

    iput v1, v0, Lcom/jme3/cinematic/events/MotionEvent;->currentWayPoint:I

    iget v1, p0, Lcom/jme3/cinematic/events/MotionEvent;->currentValue:F

    iput v1, v0, Lcom/jme3/cinematic/events/MotionEvent;->currentValue:F

    iget-object v1, p0, Lcom/jme3/cinematic/events/MotionEvent;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/cinematic/events/MotionEvent;->direction:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/cinematic/events/MotionEvent;->lookAt:Lcom/jme3/math/Vector3f;

    iput-object v1, v0, Lcom/jme3/cinematic/events/MotionEvent;->lookAt:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/cinematic/events/MotionEvent;->upVector:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/cinematic/events/MotionEvent;->upVector:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/cinematic/events/MotionEvent;->rotation:Lcom/jme3/math/Quaternion;

    iput-object v1, v0, Lcom/jme3/cinematic/events/MotionEvent;->rotation:Lcom/jme3/math/Quaternion;

    iget v1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->initialDuration:F

    iput v1, v0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->initialDuration:F

    iget v1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->speed:F

    iput v1, v0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->speed:F

    iget-object v1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->loopMode:Lcom/jme3/animation/LoopMode;

    iput-object v1, v0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->loopMode:Lcom/jme3/animation/LoopMode;

    iget-object v1, p0, Lcom/jme3/cinematic/events/MotionEvent;->directionType:Lcom/jme3/cinematic/events/MotionEvent$Direction;

    iput-object v1, v0, Lcom/jme3/cinematic/events/MotionEvent;->directionType:Lcom/jme3/cinematic/events/MotionEvent$Direction;

    iget-object v1, p0, Lcom/jme3/cinematic/events/MotionEvent;->spatial:Lcom/jme3/scene/Spatial;

    iput-object v1, v0, Lcom/jme3/cinematic/events/MotionEvent;->spatial:Lcom/jme3/scene/Spatial;

    return-object v0
.end method

.method public needsDirection()Z
    .locals 2

    iget-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->directionType:Lcom/jme3/cinematic/events/MotionEvent$Direction;

    sget-object v1, Lcom/jme3/cinematic/events/MotionEvent$Direction;->Path:Lcom/jme3/cinematic/events/MotionEvent$Direction;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/jme3/cinematic/events/MotionEvent$Direction;->PathAndRotation:Lcom/jme3/cinematic/events/MotionEvent$Direction;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onPlay()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->traveledDistance:F

    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->currentWayPoint:I

    return-void
.end method

.method public onUpdate(F)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->path:Lcom/jme3/cinematic/MotionPath;

    iget v1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->time:F

    invoke-virtual {v0, v1, p0, p1}, Lcom/jme3/cinematic/MotionPath;->interpolatePath(FLcom/jme3/cinematic/events/MotionEvent;F)F

    move-result p1

    iput p1, p0, Lcom/jme3/cinematic/events/MotionEvent;->traveledDistance:F

    invoke-direct {p0}, Lcom/jme3/cinematic/events/MotionEvent;->computeTargetDirection()V

    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "lookAt"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->lookAt:Lcom/jme3/math/Vector3f;

    const-string v0, "upVector"

    sget-object v2, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->upVector:Lcom/jme3/math/Vector3f;

    const-string v0, "rotation"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Quaternion;

    iput-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->rotation:Lcom/jme3/math/Quaternion;

    const-class v0, Lcom/jme3/cinematic/events/MotionEvent$Direction;

    sget-object v2, Lcom/jme3/cinematic/events/MotionEvent$Direction;->None:Lcom/jme3/cinematic/events/MotionEvent$Direction;

    const-string v3, "directionType"

    invoke-interface {p1, v3, v0, v2}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/cinematic/events/MotionEvent$Direction;

    iput-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->directionType:Lcom/jme3/cinematic/events/MotionEvent$Direction;

    const-string v0, "path"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/cinematic/MotionPath;

    iput-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->path:Lcom/jme3/cinematic/MotionPath;

    const-string v0, "spatial"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/Spatial;

    iput-object p1, p0, Lcom/jme3/cinematic/events/MotionEvent;->spatial:Lcom/jme3/scene/Spatial;

    return-void
.end method

.method public render(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 0

    return-void
.end method

.method public setCurrentValue(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/cinematic/events/MotionEvent;->currentValue:F

    return-void
.end method

.method public setCurrentWayPoint(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/cinematic/events/MotionEvent;->currentWayPoint:I

    return-void
.end method

.method public setDirection(Lcom/jme3/math/Vector3f;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, p1, v0}, Lcom/jme3/cinematic/events/MotionEvent;->setDirection(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setDirection(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 3
    iget-object p1, p0, Lcom/jme3/cinematic/events/MotionEvent;->upVector:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public setDirectionType(Lcom/jme3/cinematic/events/MotionEvent$Direction;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/cinematic/events/MotionEvent;->directionType:Lcom/jme3/cinematic/events/MotionEvent$Direction;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->play()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->pause()V

    :goto_0
    return-void
.end method

.method public setLookAt(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/cinematic/events/MotionEvent;->lookAt:Lcom/jme3/math/Vector3f;

    iput-object p2, p0, Lcom/jme3/cinematic/events/MotionEvent;->upVector:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public setPath(Lcom/jme3/cinematic/MotionPath;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/cinematic/events/MotionEvent;->path:Lcom/jme3/cinematic/MotionPath;

    return-void
.end method

.method public setRotation(Lcom/jme3/math/Quaternion;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/cinematic/events/MotionEvent;->rotation:Lcom/jme3/math/Quaternion;

    return-void
.end method

.method public setSpatial(Lcom/jme3/scene/Spatial;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/cinematic/events/MotionEvent;->spatial:Lcom/jme3/scene/Spatial;

    return-void
.end method

.method public setTime(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->setTime(F)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/jme3/cinematic/events/MotionEvent;->onUpdate(F)V

    return-void
.end method

.method public update(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->isControl:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/jme3/cinematic/events/MotionEvent;->internalUpdate(F)V

    :cond_0
    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->lookAt:Lcom/jme3/math/Vector3f;

    const-string v1, "lookAt"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->upVector:Lcom/jme3/math/Vector3f;

    const-string v1, "upVector"

    sget-object v3, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->rotation:Lcom/jme3/math/Quaternion;

    const-string v1, "rotation"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->directionType:Lcom/jme3/cinematic/events/MotionEvent$Direction;

    const-string v1, "directionType"

    sget-object v3, Lcom/jme3/cinematic/events/MotionEvent$Direction;->None:Lcom/jme3/cinematic/events/MotionEvent$Direction;

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->path:Lcom/jme3/cinematic/MotionPath;

    const-string v1, "path"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/cinematic/events/MotionEvent;->spatial:Lcom/jme3/scene/Spatial;

    const-string v1, "spatial"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
