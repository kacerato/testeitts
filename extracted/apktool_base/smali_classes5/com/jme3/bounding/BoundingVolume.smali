.class public abstract Lcom/jme3/bounding/BoundingVolume;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;
.implements Lcom/jme3/collision/Collidable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/bounding/BoundingVolume$Type;
    }
.end annotation


# instance fields
.field protected center:Lcom/jme3/math/Vector3f;

.field protected checkPlane:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/jme3/bounding/BoundingVolume;->checkPlane:I

    .line 3
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/jme3/bounding/BoundingVolume;->checkPlane:I

    .line 6
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    .line 7
    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method


# virtual methods
.method public clone()Lcom/jme3/bounding/BoundingVolume;
    .locals 2

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bounding/BoundingVolume;

    .line 3
    iget-object v1, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public abstract clone(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bounding/BoundingVolume;->clone()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v0

    return-object v0
.end method

.method public collideWith(Lcom/jme3/collision/Collidable;)I
    .locals 2

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/jme3/util/TempVars;->collisionResults:Lcom/jme3/collision/CollisionResults;

    invoke-virtual {v1}, Lcom/jme3/collision/CollisionResults;->clear()V

    invoke-interface {p0, p1, v1}, Lcom/jme3/collision/Collidable;->collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    throw p1
.end method

.method public abstract computeFromPoints(Ljava/nio/FloatBuffer;)V
.end method

.method public abstract contains(Lcom/jme3/math/Vector3f;)Z
.end method

.method public final distanceSquaredTo(Lcom/jme3/math/Vector3f;)F
    .locals 1

    iget-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->distanceSquared(Lcom/jme3/math/Vector3f;)F

    move-result p1

    return p1
.end method

.method public final distanceTo(Lcom/jme3/math/Vector3f;)F
    .locals 1

    iget-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->distance(Lcom/jme3/math/Vector3f;)F

    move-result p1

    return p1
.end method

.method public abstract distanceToEdge(Lcom/jme3/math/Vector3f;)F
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/jme3/bounding/BoundingVolume;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/jme3/bounding/BoundingVolume;

    iget-object v2, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public final getCenter()Lcom/jme3/math/Vector3f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public final getCenter(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-object p1
.end method

.method public getCheckPlane()I
    .locals 1

    iget v0, p0, Lcom/jme3/bounding/BoundingVolume;->checkPlane:I

    return v0
.end method

.method public abstract getType()Lcom/jme3/bounding/BoundingVolume$Type;
.end method

.method public abstract getVolume()F
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public abstract intersects(Lcom/jme3/bounding/BoundingVolume;)Z
.end method

.method public abstract intersects(Lcom/jme3/math/Ray;)Z
.end method

.method public abstract intersects(Lcom/jme3/math/Vector3f;)Z
.end method

.method public abstract intersectsBoundingBox(Lcom/jme3/bounding/BoundingBox;)Z
.end method

.method public abstract intersectsSphere(Lcom/jme3/bounding/BoundingSphere;)Z
.end method

.method public abstract merge(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract mergeLocal(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;
.end method

.method public mergeWith(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jme3/bounding/BoundingVolume;->clone(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/bounding/BoundingVolume;->mergeLocal(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    sget-object v0, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v0

    const-string v1, "center"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public final setCenter(FFF)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public final setCenter(Lcom/jme3/math/Vector3f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public final setCheckPlane(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/bounding/BoundingVolume;->checkPlane:I

    return-void
.end method

.method public abstract transform(Lcom/jme3/math/Matrix4f;Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;
.end method

.method public final transform(Lcom/jme3/math/Transform;)Lcom/jme3/bounding/BoundingVolume;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/jme3/bounding/BoundingVolume;->transform(Lcom/jme3/math/Transform;Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;

    move-result-object p1

    return-object p1
.end method

.method public abstract transform(Lcom/jme3/math/Transform;Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;
.end method

.method public abstract whichSide(Lcom/jme3/math/Plane;)Lcom/jme3/math/Plane$Side;
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/bounding/BoundingVolume;->center:Lcom/jme3/math/Vector3f;

    const-string v1, "center"

    sget-object v2, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
