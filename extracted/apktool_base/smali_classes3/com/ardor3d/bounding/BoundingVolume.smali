.class public abstract Lcom/ardor3d/bounding/BoundingVolume;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/ardor3d/util/export/Savable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/bounding/BoundingVolume$Type;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _center:Lcom/ardor3d/math/Vector3;

.field protected _checkPlane:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ardor3d/bounding/BoundingVolume;->_checkPlane:I

    .line 3
    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/math/Vector3;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/ardor3d/bounding/BoundingVolume;->_checkPlane:I

    .line 6
    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    .line 7
    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    return-void
.end method


# virtual methods
.method public abstract clone(Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;
.end method

.method public abstract computeFromPoints(Ljava/nio/FloatBuffer;)V
.end method

.method public abstract computeFromPrimitives(Lcom/ardor3d/scenegraph/MeshData;I[III)V
.end method

.method public abstract contains(Lcom/ardor3d/math/type/ReadOnlyVector3;)Z
.end method

.method public final distanceSquaredTo(Lcom/ardor3d/math/type/ReadOnlyVector3;)D
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->distanceSquared(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v0

    return-wide v0
.end method

.method public final distanceTo(Lcom/ardor3d/math/type/ReadOnlyVector3;)D
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->distance(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v0

    return-wide v0
.end method

.method public abstract distanceToEdge(Lcom/ardor3d/math/type/ReadOnlyVector3;)D
.end method

.method public final getCenter()Lcom/ardor3d/math/type/ReadOnlyVector3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    return-object v0
.end method

.method public getCheckPlane()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/bounding/BoundingVolume;->_checkPlane:I

    return v0
.end method

.method public getClassTag()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ardor3d/bounding/BoundingVolume;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public abstract getType()Lcom/ardor3d/bounding/BoundingVolume$Type;
.end method

.method public abstract getVolume()D
.end method

.method public abstract intersects(Lcom/ardor3d/bounding/BoundingVolume;)Z
.end method

.method public abstract intersects(Lcom/ardor3d/math/type/ReadOnlyRay3;)Z
.end method

.method public abstract intersectsBoundingBox(Lcom/ardor3d/bounding/BoundingBox;)Z
.end method

.method public abstract intersectsOrientedBoundingBox(Lcom/ardor3d/bounding/OrientedBoundingBox;)Z
.end method

.method public abstract intersectsSphere(Lcom/ardor3d/bounding/BoundingSphere;)Z
.end method

.method public abstract intersectsWhere(Lcom/ardor3d/math/type/ReadOnlyRay3;)Lcom/ardor3d/intersection/IntersectionRecord;
.end method

.method public abstract merge(Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;
.end method

.method public abstract mergeLocal(Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "center"

    invoke-interface {p1, v2, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    return-void
.end method

.method public setCenter(DDD)V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    return-void
.end method

.method public final setCenter(Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    return-void
.end method

.method public final setCheckPlane(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/bounding/BoundingVolume;->_checkPlane:I

    return-void
.end method

.method public abstract transform(Lcom/ardor3d/math/type/ReadOnlyTransform;Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;
.end method

.method public abstract whichSide(Lcom/ardor3d/math/type/ReadOnlyPlane;)Lcom/ardor3d/math/type/ReadOnlyPlane$Side;
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/bounding/BoundingVolume;->_center:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "center"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    return-void
.end method
