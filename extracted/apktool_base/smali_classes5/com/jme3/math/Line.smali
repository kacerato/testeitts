.class public Lcom/jme3/math/Line;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field private direction:Lcom/jme3/math/Vector3f;

.field private origin:Lcom/jme3/math/Vector3f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/math/Line;->origin:Lcom/jme3/math/Vector3f;

    .line 3
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/math/Line;->direction:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/jme3/math/Line;->origin:Lcom/jme3/math/Vector3f;

    .line 6
    iput-object p2, p0, Lcom/jme3/math/Line;->direction:Lcom/jme3/math/Vector3f;

    return-void
.end method


# virtual methods
.method public clone()Lcom/jme3/math/Line;
    .locals 2

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Line;

    .line 3
    iget-object v1, p0, Lcom/jme3/math/Line;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/math/Line;->direction:Lcom/jme3/math/Vector3f;

    .line 4
    iget-object v1, p0, Lcom/jme3/math/Line;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/math/Line;->origin:Lcom/jme3/math/Vector3f;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 5
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jme3/math/Line;->clone()Lcom/jme3/math/Line;

    move-result-object v0

    return-object v0
.end method

.method public distance(Lcom/jme3/math/Vector3f;)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/jme3/math/Line;->distanceSquared(Lcom/jme3/math/Vector3f;)F

    move-result p1

    invoke-static {p1}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result p1

    return p1
.end method

.method public distanceSquared(Lcom/jme3/math/Vector3f;)F
    .locals 6

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget-object v2, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    iget-object v3, p0, Lcom/jme3/math/Line;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v3, v1}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v3, p0, Lcom/jme3/math/Line;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v3

    iget-object v4, p0, Lcom/jme3/math/Line;->origin:Lcom/jme3/math/Vector3f;

    iget-object v5, p0, Lcom/jme3/math/Line;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v5, v3, v2}, Lcom/jme3/math/Vector3f;->mult(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v4, v3, v2}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, p1, v1}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->lengthSquared()F

    move-result p1

    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return p1
.end method

.method public getDirection()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/math/Line;->direction:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getOrigin()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/math/Line;->origin:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public orthogonalLineFit(Ljava/nio/FloatBuffer;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v2

    iget-object v3, v2, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget-object v4, v2, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    iget-object v5, v2, Lcom/jme3/util/TempVars;->tempMat3:Lcom/jme3/math/Matrix3f;

    iget-object v6, v2, Lcom/jme3/util/TempVars;->eigen:Lcom/jme3/math/Eigen3f;

    invoke-virtual/range {p1 .. p1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->remaining()I

    move-result v7

    div-int/lit8 v7, v7, 0x3

    iget-object v8, v0, Lcom/jme3/math/Line;->origin:Lcom/jme3/math/Vector3f;

    const/4 v9, 0x0

    invoke-static {v8, v1, v9}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    const/4 v8, 0x1

    :goto_0
    if-ge v8, v7, :cond_1

    invoke-static {v3, v1, v8}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    iget-object v10, v0, Lcom/jme3/math/Line;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v10, v3}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    iget-object v8, v0, Lcom/jme3/math/Line;->origin:Lcom/jme3/math/Vector3f;

    const/high16 v10, 0x3f800000    # 1.0f

    int-to-float v11, v7

    div-float/2addr v10, v11

    invoke-virtual {v8, v10}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    invoke-virtual/range {p1 .. p1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v8, 0x0

    move v10, v8

    move v11, v10

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v9

    :goto_1
    if-ge v15, v7, :cond_2

    invoke-static {v3, v1, v15}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    iget-object v9, v0, Lcom/jme3/math/Line;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v9, v4}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget v9, v4, Lcom/jme3/math/Vector3f;->x:F

    mul-float v16, v9, v9

    add-float v13, v13, v16

    iget v1, v4, Lcom/jme3/math/Vector3f;->y:F

    mul-float v16, v9, v1

    add-float v11, v11, v16

    move-object/from16 v16, v3

    iget v3, v4, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v9, v3

    add-float/2addr v12, v9

    mul-float v9, v1, v1

    add-float/2addr v8, v9

    mul-float/2addr v1, v3

    add-float/2addr v14, v1

    mul-float/2addr v3, v3

    add-float/2addr v10, v3

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    move-object/from16 v3, v16

    const/4 v9, 0x0

    goto :goto_1

    :cond_2
    add-float v1, v8, v10

    iput v1, v5, Lcom/jme3/math/Matrix3f;->m00:F

    neg-float v1, v11

    iput v1, v5, Lcom/jme3/math/Matrix3f;->m01:F

    neg-float v3, v12

    iput v3, v5, Lcom/jme3/math/Matrix3f;->m02:F

    iput v1, v5, Lcom/jme3/math/Matrix3f;->m10:F

    add-float/2addr v10, v13

    iput v10, v5, Lcom/jme3/math/Matrix3f;->m11:F

    neg-float v1, v14

    iput v1, v5, Lcom/jme3/math/Matrix3f;->m12:F

    iput v3, v5, Lcom/jme3/math/Matrix3f;->m20:F

    iput v1, v5, Lcom/jme3/math/Matrix3f;->m21:F

    add-float/2addr v13, v8

    iput v13, v5, Lcom/jme3/math/Matrix3f;->m22:F

    invoke-virtual {v6, v5}, Lcom/jme3/math/Eigen3f;->calculateEigen(Lcom/jme3/math/Matrix3f;)V

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Lcom/jme3/math/Eigen3f;->getEigenVector(I)Lcom/jme3/math/Vector3f;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/math/Line;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2}, Lcom/jme3/util/TempVars;->release()V

    return-void
.end method

.method public random()Lcom/jme3/math/Vector3f;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/jme3/math/Line;->random(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public random(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 6

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    .line 4
    iget-object v1, p0, Lcom/jme3/math/Line;->origin:Lcom/jme3/math/Vector3f;

    iget v2, v1, Lcom/jme3/math/Vector3f;->x:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v0

    mul-float/2addr v2, v3

    iget-object v4, p0, Lcom/jme3/math/Line;->direction:Lcom/jme3/math/Vector3f;

    iget v5, v4, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v5, v0

    add-float/2addr v2, v5

    iput v2, p1, Lcom/jme3/math/Vector3f;->x:F

    .line 5
    iget v2, v1, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v2, v3

    iget v5, v4, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v5, v0

    add-float/2addr v2, v5

    iput v2, p1, Lcom/jme3/math/Vector3f;->y:F

    .line 6
    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v1, v3

    iget v2, v4, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p1, Lcom/jme3/math/Vector3f;->z:F

    return-object p1
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    sget-object v0, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    const-string v2, "origin"

    invoke-interface {p1, v2, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Vector3f;

    iput-object v1, p0, Lcom/jme3/math/Line;->origin:Lcom/jme3/math/Vector3f;

    const-string v1, "direction"

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/math/Line;->direction:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public setDirection(Lcom/jme3/math/Vector3f;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/math/Line;->direction:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public setOrigin(Lcom/jme3/math/Vector3f;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/math/Line;->origin:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [Origin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/math/Line;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  Direction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/math/Line;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    iget-object v0, p0, Lcom/jme3/math/Line;->origin:Lcom/jme3/math/Vector3f;

    sget-object v1, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    const-string v2, "origin"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/math/Line;->direction:Lcom/jme3/math/Vector3f;

    const-string v2, "direction"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
