.class public abstract Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;
.super Lcom/ardor3d/scenegraph/controller/ComplexSpatialController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "T:",
        "Lcom/ardor3d/scenegraph/Spatial;",
        ">",
        "Lcom/ardor3d/scenegraph/controller/ComplexSpatialController<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DELTA_MAX:D = 1.0

.field public static final DELTA_MIN:D = 0.0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _controls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TC;>;"
        }
    .end annotation
.end field

.field private _cycleForward:Z

.field private _delta:D

.field private _index:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->_controls:Ljava/util/List;

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getMinimumIndex()I

    move-result v0

    iput v0, p0, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->_index:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->_delta:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->_cycleForward:Z

    return-void
.end method

.method private shouldUpdate(DLcom/ardor3d/scenegraph/Spatial;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DTT;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    const-wide/16 v0, 0x0

    cmpl-double p1, p1, v0

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController;->getSpeed()D

    move-result-wide p1

    cmpl-double p1, p1, v0

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->isClamped()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public clampIndex()V
    .locals 3

    sget-object v0, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController$1;->$SwitchMap$com$ardor3d$scenegraph$controller$ComplexSpatialController$RepeatType:[I

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController;->getRepeatType()Lcom/ardor3d/scenegraph/controller/ComplexSpatialController$RepeatType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getMaximumIndex()I

    move-result v1

    if-lt v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getMinimumIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->setIndex(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->isCycleForward()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getMaximumIndex()I

    move-result v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->setCycleForward(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getMinimumIndex()I

    move-result v2

    if-ne v0, v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->setCycleForward(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getMaximumIndex()I

    move-result v1

    if-lt v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getMaximumIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->setIndex(I)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->setDelta(D)V

    :cond_4
    :goto_0
    return-void
.end method

.method public decrementDelta(D)D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->_delta:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->_delta:D

    return-wide v0
.end method

.method public decrementIndex()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->_index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->_index:I

    return v0
.end method

.method public getControlFrom()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    sget-object v0, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController$1;->$SwitchMap$com$ardor3d$scenegraph$controller$ComplexSpatialController$RepeatType:[I

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController;->getRepeatType()Lcom/ardor3d/scenegraph/controller/ComplexSpatialController$RepeatType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getControls()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getControls()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getMaximumIndex()I

    move-result v1

    if-le v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getControls()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getMaximumIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getControls()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getControlTo()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    sget-object v0, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController$1;->$SwitchMap$com$ardor3d$scenegraph$controller$ComplexSpatialController$RepeatType:[I

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController;->getRepeatType()Lcom/ardor3d/scenegraph/controller/ComplexSpatialController$RepeatType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getControls()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getIndex()I

    move-result v2

    add-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->isCycleForward()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getControls()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getIndex()I

    move-result v2

    add-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getControls()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getIndex()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getMaximumIndex()I

    move-result v2

    if-lt v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getControls()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getMaximumIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getControls()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getIndex()I

    move-result v2

    add-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getControls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->_controls:Ljava/util/List;

    return-object v0
.end method

.method public getDelta()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->_delta:D

    return-wide v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->_index:I

    return v0
.end method

.method public getMaximumIndex()I
    .locals 1

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getControls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getMinimumIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public incrementDelta(D)D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->_delta:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->_delta:D

    return-wide v0
.end method

.method public incrementIndex()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->_index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->_index:I

    return v0
.end method

.method public abstract interpolate(Ljava/lang/Object;Ljava/lang/Object;DLcom/ardor3d/scenegraph/Spatial;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TC;DTT;)V"
        }
    .end annotation
.end method

.method public isClamped()Z
    .locals 2

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController;->isRepeatTypeClamp()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getMaximumIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCycleForward()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->_cycleForward:Z

    return v0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->setCycleForward(Z)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->setDelta(D)V

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getMinimumIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->setIndex(I)V

    return-void
.end method

.method public setControls(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TC;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->_controls:Ljava/util/List;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "controls can not be empty!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "controls can not be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setControls([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TC;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 5
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->setControls(Ljava/util/List;)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "controlArray can not be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCycleForward(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->_cycleForward:Z

    return-void
.end method

.method public setDelta(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->_delta:D

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->_index:I

    return-void
.end method

.method public setRepeatType(Lcom/ardor3d/scenegraph/controller/ComplexSpatialController$RepeatType;)V
    .locals 1

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController;->getRepeatType()Lcom/ardor3d/scenegraph/controller/ComplexSpatialController$RepeatType;

    move-result-object v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->reset()V

    :cond_0
    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController;->setRepeatType(Lcom/ardor3d/scenegraph/controller/ComplexSpatialController$RepeatType;)V

    return-void
.end method

.method public update(DLcom/ardor3d/scenegraph/Spatial;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DTT;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->shouldUpdate(DLcom/ardor3d/scenegraph/Spatial;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->updateDeltaAndIndex(D)V

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->clampIndex()V

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getControlFrom()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getControlTo()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getDelta()D

    move-result-wide v4

    move-object v1, p0

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->interpolate(Ljava/lang/Object;Ljava/lang/Object;DLcom/ardor3d/scenegraph/Spatial;)V

    :cond_0
    return-void
.end method

.method public updateDeltaAndIndex(D)V
    .locals 2

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController;->getSpeed()D

    move-result-wide v0

    mul-double/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->incrementDelta(D)D

    :goto_0
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getDelta()D

    move-result-wide p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, p1, v0

    if-ltz p1, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->decrementDelta(D)D

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->isCycleForward()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->incrementIndex()I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->decrementIndex()I

    goto :goto_0

    :cond_1
    return-void
.end method
