.class public abstract Lcom/ardor3d/scenegraph/controller/ComplexSpatialController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/scenegraph/controller/SpatialController;
.implements Ljava/io/Serializable;
.implements Lcom/ardor3d/util/export/Savable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/scenegraph/controller/ComplexSpatialController$RepeatType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ardor3d/scenegraph/Spatial;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/ardor3d/scenegraph/controller/SpatialController<",
        "TT;>;",
        "Ljava/io/Serializable;",
        "Lcom/ardor3d/util/export/Savable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _active:Z

.field private _maxTime:D

.field private _minTime:D

.field private _repeatType:Lcom/ardor3d/scenegraph/controller/ComplexSpatialController$RepeatType;

.field private _speed:D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController$RepeatType;->CLAMP:Lcom/ardor3d/scenegraph/controller/ComplexSpatialController$RepeatType;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController;->_repeatType:Lcom/ardor3d/scenegraph/controller/ComplexSpatialController$RepeatType;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController;->_speed:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController;->_active:Z

    return-void
.end method


# virtual methods
.method public getClassTag()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ardor3d/scenegraph/controller/ComplexSpatialController;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getControllerValues(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public getMaxTime()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController;->_maxTime:D

    return-wide v0
.end method

.method public getMinTime()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController;->_minTime:D

    return-wide v0
.end method

.method public getRepeatType()Lcom/ardor3d/scenegraph/controller/ComplexSpatialController$RepeatType;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController;->_repeatType:Lcom/ardor3d/scenegraph/controller/ComplexSpatialController$RepeatType;

    return-object v0
.end method

.method public getSpeed()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController;->_speed:D

    return-wide v0
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController;->_active:Z

    return v0
.end method

.method public isRepeatTypeClamp()Z
    .locals 2

    sget-object v0, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController$RepeatType;->CLAMP:Lcom/ardor3d/scenegraph/controller/ComplexSpatialController$RepeatType;

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController;->getRepeatType()Lcom/ardor3d/scenegraph/controller/ComplexSpatialController$RepeatType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isRepeatTypeCycle()Z
    .locals 2

    sget-object v0, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController$RepeatType;->CYCLE:Lcom/ardor3d/scenegraph/controller/ComplexSpatialController$RepeatType;

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController;->getRepeatType()Lcom/ardor3d/scenegraph/controller/ComplexSpatialController$RepeatType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isRepeatTypeWrap()Z
    .locals 2

    sget-object v0, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController$RepeatType;->WRAP:Lcom/ardor3d/scenegraph/controller/ComplexSpatialController$RepeatType;

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController;->getRepeatType()Lcom/ardor3d/scenegraph/controller/ComplexSpatialController$RepeatType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController$RepeatType;

    sget-object v1, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController$RepeatType;->CLAMP:Lcom/ardor3d/scenegraph/controller/ComplexSpatialController$RepeatType;

    const-string v2, "repeatType"

    invoke-interface {p1, v2, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController$RepeatType;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController;->_repeatType:Lcom/ardor3d/scenegraph/controller/ComplexSpatialController$RepeatType;

    const-string v0, "minTime"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController;->_minTime:D

    const-string v0, "maxTime"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController;->_maxTime:D

    const-string v0, "speed"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController;->_speed:D

    const-string v0, "active"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController;->_active:Z

    return-void
.end method

.method public setActive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController;->_active:Z

    return-void
.end method

.method public setControllerValues(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setMaxTime(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController;->_maxTime:D

    return-void
.end method

.method public setMinTime(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController;->_minTime:D

    return-void
.end method

.method public setRepeatType(Lcom/ardor3d/scenegraph/controller/ComplexSpatialController$RepeatType;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController;->_repeatType:Lcom/ardor3d/scenegraph/controller/ComplexSpatialController$RepeatType;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "repeatType can not be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSpeed(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController;->_speed:D

    return-void
.end method

.method public abstract update(DLcom/ardor3d/scenegraph/Spatial;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DTT;)V"
        }
    .end annotation
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController;->_repeatType:Lcom/ardor3d/scenegraph/controller/ComplexSpatialController$RepeatType;

    const-string v1, "repeatType"

    sget-object v2, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController$RepeatType;->CLAMP:Lcom/ardor3d/scenegraph/controller/ComplexSpatialController$RepeatType;

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-wide v1, p0, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController;->_minTime:D

    const-string v3, "minTime"

    const-wide/16 v4, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    iget-wide v1, p0, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController;->_maxTime:D

    const-string v3, "maxTime"

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    iget-wide v1, p0, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController;->_speed:D

    const-string v3, "speed"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    iget-boolean v0, p0, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController;->_active:Z

    const-string v1, "active"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    return-void
.end method
