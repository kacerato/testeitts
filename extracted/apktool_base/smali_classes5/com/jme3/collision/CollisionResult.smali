.class public Lcom/jme3/collision/CollisionResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/jme3/collision/CollisionResult;",
        ">;"
    }
.end annotation


# instance fields
.field private contactNormal:Lcom/jme3/math/Vector3f;

.field private contactPoint:Lcom/jme3/math/Vector3f;

.field private distance:F

.field private geometry:Lcom/jme3/scene/Geometry;

.field private triangleIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;F)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/jme3/collision/CollisionResult;->contactPoint:Lcom/jme3/math/Vector3f;

    .line 8
    iput p2, p0, Lcom/jme3/collision/CollisionResult;->distance:F

    return-void
.end method

.method public constructor <init>(Lcom/jme3/scene/Geometry;Lcom/jme3/math/Vector3f;FI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/jme3/collision/CollisionResult;->geometry:Lcom/jme3/scene/Geometry;

    .line 3
    iput-object p2, p0, Lcom/jme3/collision/CollisionResult;->contactPoint:Lcom/jme3/math/Vector3f;

    .line 4
    iput p3, p0, Lcom/jme3/collision/CollisionResult;->distance:F

    .line 5
    iput p4, p0, Lcom/jme3/collision/CollisionResult;->triangleIndex:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/jme3/collision/CollisionResult;)I
    .locals 1

    .line 2
    iget v0, p0, Lcom/jme3/collision/CollisionResult;->distance:F

    iget p1, p1, Lcom/jme3/collision/CollisionResult;->distance:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/jme3/collision/CollisionResult;

    invoke-virtual {p0, p1}, Lcom/jme3/collision/CollisionResult;->compareTo(Lcom/jme3/collision/CollisionResult;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/jme3/collision/CollisionResult;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/jme3/collision/CollisionResult;

    invoke-virtual {p1, p0}, Lcom/jme3/collision/CollisionResult;->compareTo(Lcom/jme3/collision/CollisionResult;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getContactNormal()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/collision/CollisionResult;->contactNormal:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getContactPoint()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/collision/CollisionResult;->contactPoint:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getDistance()F
    .locals 1

    iget v0, p0, Lcom/jme3/collision/CollisionResult;->distance:F

    return v0
.end method

.method public getGeometry()Lcom/jme3/scene/Geometry;
    .locals 1

    iget-object v0, p0, Lcom/jme3/collision/CollisionResult;->geometry:Lcom/jme3/scene/Geometry;

    return-object v0
.end method

.method public getTriangle(Lcom/jme3/math/Triangle;)Lcom/jme3/math/Triangle;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Triangle;

    invoke-direct {p1}, Lcom/jme3/math/Triangle;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/jme3/collision/CollisionResult;->geometry:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    iget v1, p0, Lcom/jme3/collision/CollisionResult;->triangleIndex:I

    invoke-virtual {v0, v1, p1}, Lcom/jme3/scene/Mesh;->getTriangle(ILcom/jme3/math/Triangle;)V

    invoke-virtual {p1}, Lcom/jme3/math/Triangle;->calculateCenter()V

    invoke-virtual {p1}, Lcom/jme3/math/Triangle;->calculateNormal()V

    return-object p1
.end method

.method public getTriangleIndex()I
    .locals 1

    iget v0, p0, Lcom/jme3/collision/CollisionResult;->triangleIndex:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/jme3/collision/CollisionResult;->distance:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

.method public setContactNormal(Lcom/jme3/math/Vector3f;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/collision/CollisionResult;->contactNormal:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public setContactPoint(Lcom/jme3/math/Vector3f;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/collision/CollisionResult;->contactPoint:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public setDistance(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/collision/CollisionResult;->distance:F

    return-void
.end method

.method public setGeometry(Lcom/jme3/scene/Geometry;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/collision/CollisionResult;->geometry:Lcom/jme3/scene/Geometry;

    return-void
.end method

.method public setTriangleIndex(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/collision/CollisionResult;->triangleIndex:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CollisionResult[geometry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/collision/CollisionResult;->geometry:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contactPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/collision/CollisionResult;->contactPoint:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contactNormal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/collision/CollisionResult;->contactNormal:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", distance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/collision/CollisionResult;->distance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", triangleIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/collision/CollisionResult;->triangleIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
