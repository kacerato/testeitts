.class public abstract Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController;
.super Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController$UpdateField;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController<",
        "Lcom/ardor3d/math/type/ReadOnlyVector3;",
        "Lcom/ardor3d/scenegraph/Spatial;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _constantSpeed:Z

.field private _updateField:Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController$UpdateField;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;-><init>()V

    sget-object v0, Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController$UpdateField;->LOCAL_TRANSLATION:Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController$UpdateField;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController;->_updateField:Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController$UpdateField;

    return-void
.end method


# virtual methods
.method public getUpdateField()Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController$UpdateField;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController;->_updateField:Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController$UpdateField;

    return-object v0
.end method

.method public interpolate(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;DLcom/ardor3d/scenegraph/Spatial;)V
    .locals 7

    .line 2
    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, v6

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController;->interpolateVectors(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    .line 4
    sget-object p2, Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController$1;->$SwitchMap$com$ardor3d$scenegraph$controller$interpolation$Vector3InterpolationController$UpdateField:[I

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController;->getUpdateField()Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController$UpdateField;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x1

    if-eq p2, p3, :cond_3

    const/4 p3, 0x2

    if-eq p2, p3, :cond_2

    const/4 p3, 0x3

    if-eq p2, p3, :cond_1

    const/4 p3, 0x4

    if-eq p2, p3, :cond_0

    .line 5
    invoke-virtual {p5, p1}, Lcom/ardor3d/scenegraph/Spatial;->setTranslation(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p5, p1}, Lcom/ardor3d/scenegraph/Spatial;->setWorldTranslation(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p5, p1}, Lcom/ardor3d/scenegraph/Spatial;->setWorldScale(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p5, p1}, Lcom/ardor3d/scenegraph/Spatial;->setTranslation(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p5, p1}, Lcom/ardor3d/scenegraph/Spatial;->setScale(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    .line 10
    :goto_0
    invoke-static {v6}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return-void
.end method

.method public bridge synthetic interpolate(Ljava/lang/Object;Ljava/lang/Object;DLcom/ardor3d/scenegraph/Spatial;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/ardor3d/math/type/ReadOnlyVector3;

    check-cast p2, Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-virtual/range {p0 .. p5}, Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController;->interpolate(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;DLcom/ardor3d/scenegraph/Spatial;)V

    return-void
.end method

.method public abstract interpolateVectors(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
.end method

.method public isConstantSpeed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController;->_constantSpeed:Z

    return v0
.end method

.method public setConstantSpeed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController;->_constantSpeed:Z

    return-void
.end method

.method public setUpdateField(Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController$UpdateField;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController;->_updateField:Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController$UpdateField;

    return-void
.end method
