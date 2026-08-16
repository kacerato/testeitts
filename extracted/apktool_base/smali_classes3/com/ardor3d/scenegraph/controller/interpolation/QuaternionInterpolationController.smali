.class public Lcom/ardor3d/scenegraph/controller/interpolation/QuaternionInterpolationController;
.super Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController<",
        "Lcom/ardor3d/math/type/ReadOnlyQuaternion;",
        "Lcom/ardor3d/scenegraph/Spatial;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _localRotation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ardor3d/scenegraph/controller/interpolation/QuaternionInterpolationController;->_localRotation:Z

    return-void
.end method


# virtual methods
.method public interpolate(Lcom/ardor3d/math/type/ReadOnlyQuaternion;Lcom/ardor3d/math/type/ReadOnlyQuaternion;DLcom/ardor3d/scenegraph/Spatial;)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/ardor3d/math/Quaternion;->fetchTempInstance()Lcom/ardor3d/math/Quaternion;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ardor3d/math/Quaternion;->slerpLocal(Lcom/ardor3d/math/type/ReadOnlyQuaternion;Lcom/ardor3d/math/type/ReadOnlyQuaternion;D)Lcom/ardor3d/math/Quaternion;

    .line 4
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/QuaternionInterpolationController;->isLocalRotation()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p5, v0}, Lcom/ardor3d/scenegraph/Spatial;->setRotation(Lcom/ardor3d/math/type/ReadOnlyQuaternion;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p5, v0}, Lcom/ardor3d/scenegraph/Spatial;->setWorldRotation(Lcom/ardor3d/math/type/ReadOnlyQuaternion;)V

    .line 7
    :goto_0
    invoke-static {v0}, Lcom/ardor3d/math/Quaternion;->releaseTempInstance(Lcom/ardor3d/math/Quaternion;)V

    return-void
.end method

.method public bridge synthetic interpolate(Ljava/lang/Object;Ljava/lang/Object;DLcom/ardor3d/scenegraph/Spatial;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/ardor3d/math/type/ReadOnlyQuaternion;

    check-cast p2, Lcom/ardor3d/math/type/ReadOnlyQuaternion;

    invoke-virtual/range {p0 .. p5}, Lcom/ardor3d/scenegraph/controller/interpolation/QuaternionInterpolationController;->interpolate(Lcom/ardor3d/math/type/ReadOnlyQuaternion;Lcom/ardor3d/math/type/ReadOnlyQuaternion;DLcom/ardor3d/scenegraph/Spatial;)V

    return-void
.end method

.method public isLocalRotation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/scenegraph/controller/interpolation/QuaternionInterpolationController;->_localRotation:Z

    return v0
.end method

.method public setLocalRotation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/scenegraph/controller/interpolation/QuaternionInterpolationController;->_localRotation:Z

    return-void
.end method
