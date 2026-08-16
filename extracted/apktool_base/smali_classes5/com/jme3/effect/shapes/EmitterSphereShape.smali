.class public Lcom/jme3/effect/shapes/EmitterSphereShape;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/effect/shapes/EmitterShape;


# instance fields
.field private center:Lcom/jme3/math/Vector3f;

.field private radius:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;F)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    .line 3
    iput-object p1, p0, Lcom/jme3/effect/shapes/EmitterSphereShape;->center:Lcom/jme3/math/Vector3f;

    .line 4
    iput p2, p0, Lcom/jme3/effect/shapes/EmitterSphereShape;->radius:F

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Radius must be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "center cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    iget-object p2, p0, Lcom/jme3/effect/shapes/EmitterSphereShape;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/effect/shapes/EmitterSphereShape;->center:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public deepClone()Lcom/jme3/effect/shapes/EmitterShape;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/effect/shapes/EmitterSphereShape;

    iget-object v1, p0, Lcom/jme3/effect/shapes/EmitterSphereShape;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/effect/shapes/EmitterSphereShape;->center:Lcom/jme3/math/Vector3f;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getCenter()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/effect/shapes/EmitterSphereShape;->center:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Lcom/jme3/effect/shapes/EmitterSphereShape;->radius:F

    return v0
.end method

.method public getRandomPoint(Lcom/jme3/math/Vector3f;)V
    .locals 3

    :cond_0
    invoke-static {}, Lcom/jme3/math/FastMath;->nextRandomFloat()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    iput v0, p1, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {}, Lcom/jme3/math/FastMath;->nextRandomFloat()F

    move-result v0

    mul-float/2addr v0, v1

    sub-float/2addr v0, v2

    iput v0, p1, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {}, Lcom/jme3/math/FastMath;->nextRandomFloat()F

    move-result v0

    mul-float/2addr v0, v1

    sub-float/2addr v0, v2

    iput v0, p1, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->lengthSquared()F

    move-result v0

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/jme3/effect/shapes/EmitterSphereShape;->radius:F

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/effect/shapes/EmitterSphereShape;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public getRandomPointAndNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/jme3/effect/shapes/EmitterSphereShape;->getRandomPoint(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    iget-object p2, p0, Lcom/jme3/effect/shapes/EmitterSphereShape;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public jmeClone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
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

    const-string v0, "center"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/effect/shapes/EmitterSphereShape;->center:Lcom/jme3/math/Vector3f;

    const-string v0, "radius"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/jme3/effect/shapes/EmitterSphereShape;->radius:F

    return-void
.end method

.method public setCenter(Lcom/jme3/math/Vector3f;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/effect/shapes/EmitterSphereShape;->center:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/effect/shapes/EmitterSphereShape;->radius:F

    return-void
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

    iget-object v0, p0, Lcom/jme3/effect/shapes/EmitterSphereShape;->center:Lcom/jme3/math/Vector3f;

    const-string v1, "center"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget v0, p0, Lcom/jme3/effect/shapes/EmitterSphereShape;->radius:F

    const-string v1, "radius"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method
