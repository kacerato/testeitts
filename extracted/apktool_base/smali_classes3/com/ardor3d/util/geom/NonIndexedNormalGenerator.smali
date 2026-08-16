.class public Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _creaseAngle:D

.field private _faceNormals:[D

.field private _indices:[I

.field private _normalsToSet:[I

.field private final _temp1:Lcom/ardor3d/math/Vector3;

.field private final _temp2:Lcom/ardor3d/math/Vector3;

.field private final _temp3:Lcom/ardor3d/math/Vector3;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_temp1:Lcom/ardor3d/math/Vector3;

    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_temp2:Lcom/ardor3d/math/Vector3;

    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_temp3:Lcom/ardor3d/math/Vector3;

    return-void
.end method

.method private getFacetedVertexNormals()[D
    .locals 12

    iget-object v0, p0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_faceNormals:[D

    array-length v0, v0

    const/4 v1, 0x3

    mul-int/2addr v0, v1

    new-array v0, v0, [D

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    mul-int/lit8 v4, v3, 0x3

    iget-object v5, p0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_faceNormals:[D

    array-length v5, v5

    if-ge v4, v5, :cond_1

    move v5, v2

    :goto_1
    if-ge v5, v1, :cond_0

    mul-int/lit8 v6, v3, 0x9

    add-int/2addr v6, v5

    iget-object v7, p0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_faceNormals:[D

    add-int v8, v4, v5

    aget-wide v9, v7, v8

    aput-wide v9, v0, v6

    add-int/lit8 v9, v6, 0x3

    aget-wide v10, v7, v8

    aput-wide v10, v0, v9

    add-int/lit8 v6, v6, 0x6

    aget-wide v8, v7, v8

    aput-wide v8, v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getVertexNormals()[D
    .locals 8

    iget-object v0, p0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_faceNormals:[D

    array-length v1, v0

    const/4 v2, 0x3

    mul-int/2addr v1, v2

    new-array v1, v1, [D

    array-length v0, v0

    new-array v0, v0, [Z

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    mul-int/lit8 v5, v4, 0x3

    iget-object v6, p0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_faceNormals:[D

    array-length v6, v6

    if-ge v5, v6, :cond_2

    move v6, v3

    :goto_1
    if-ge v6, v2, :cond_1

    add-int v7, v5, v6

    aget-boolean v7, v0, v7

    if-nez v7, :cond_0

    invoke-direct {p0, v1, v0, v4, v6}, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->setInterpolatedNormal([D[ZII)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private initFaceNormals([D)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    div-int/lit8 v2, v2, 0x3

    new-array v2, v2, [D

    iput-object v2, v0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_faceNormals:[D

    const/4 v2, 0x0

    :goto_0
    mul-int/lit8 v3, v2, 0x9

    array-length v4, v1

    if-ge v3, v4, :cond_0

    iget-object v5, v0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_temp1:Lcom/ardor3d/math/Vector3;

    aget-wide v6, v1, v3

    add-int/lit8 v4, v3, 0x1

    aget-wide v8, v1, v4

    add-int/lit8 v4, v3, 0x2

    aget-wide v10, v1, v4

    invoke-virtual/range {v5 .. v11}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    iget-object v12, v0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_temp2:Lcom/ardor3d/math/Vector3;

    add-int/lit8 v4, v3, 0x3

    aget-wide v13, v1, v4

    add-int/lit8 v4, v3, 0x4

    aget-wide v15, v1, v4

    add-int/lit8 v4, v3, 0x5

    aget-wide v17, v1, v4

    invoke-virtual/range {v12 .. v18}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    iget-object v4, v0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_temp3:Lcom/ardor3d/math/Vector3;

    add-int/lit8 v5, v3, 0x6

    aget-wide v5, v1, v5

    add-int/lit8 v7, v3, 0x7

    aget-wide v7, v1, v7

    add-int/lit8 v3, v3, 0x8

    aget-wide v9, v1, v3

    invoke-virtual/range {v4 .. v10}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    iget-object v3, v0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_temp2:Lcom/ardor3d/math/Vector3;

    iget-object v4, v0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_temp1:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v3, v0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_temp3:Lcom/ardor3d/math/Vector3;

    iget-object v4, v0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_temp1:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v3, v0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_temp2:Lcom/ardor3d/math/Vector3;

    iget-object v4, v0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_temp3:Lcom/ardor3d/math/Vector3;

    iget-object v5, v0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_temp1:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3, v4, v5}, Lcom/ardor3d/math/Vector3;->cross(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    iget-object v3, v0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_temp1:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    iget-object v3, v0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_faceNormals:[D

    mul-int/lit8 v4, v2, 0x3

    iget-object v5, v0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_temp1:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v5

    aput-wide v5, v3, v4

    iget-object v3, v0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_faceNormals:[D

    add-int/lit8 v5, v4, 0x1

    iget-object v6, v0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_temp1:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v6

    aput-wide v6, v3, v5

    iget-object v3, v0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_faceNormals:[D

    add-int/lit8 v4, v4, 0x2

    iget-object v5, v0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_temp1:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v5

    aput-wide v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setInterpolatedNormal([D[ZII)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_temp1:Lcom/ardor3d/math/Vector3;

    iget-object v2, v0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_faceNormals:[D

    mul-int/lit8 v8, p3, 0x3

    aget-wide v3, v2, v8

    add-int/lit8 v5, v8, 0x1

    aget-wide v5, v2, v5

    add-int/lit8 v7, v8, 0x2

    aget-wide v9, v2, v7

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v9

    invoke-virtual/range {v1 .. v7}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    iget-object v1, v0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_temp2:Lcom/ardor3d/math/Vector3;

    iget-object v2, v0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_temp1:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v1, v0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_indices:[I

    add-int v8, v8, p4

    aget v1, v1, v8

    iget-object v2, v0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_normalsToSet:[I

    const/4 v3, 0x0

    aput v8, v2, v3

    add-int/lit8 v2, v8, 0x1

    const/4 v4, 0x1

    move v5, v4

    :goto_0
    iget-object v6, v0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_indices:[I

    array-length v7, v6

    if-ge v2, v7, :cond_1

    aget v6, v6, v2

    if-ne v6, v1, :cond_0

    aget-boolean v6, p2, v8

    if-nez v6, :cond_0

    iget-object v9, v0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_temp3:Lcom/ardor3d/math/Vector3;

    iget-object v6, v0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_faceNormals:[D

    div-int/lit8 v7, v2, 0x3

    mul-int/lit8 v7, v7, 0x3

    aget-wide v10, v6, v7

    add-int/lit8 v12, v7, 0x1

    aget-wide v12, v6, v12

    add-int/lit8 v7, v7, 0x2

    aget-wide v14, v6, v7

    invoke-virtual/range {v9 .. v15}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    iget-object v6, v0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_temp1:Lcom/ardor3d/math/Vector3;

    iget-object v7, v0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_temp3:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v6, v7}, Lcom/ardor3d/math/Vector3;->smallestAngleBetween(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v6

    iget-wide v9, v0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_creaseAngle:D

    cmpg-double v6, v6, v9

    if-gez v6, :cond_0

    iget-object v6, v0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_normalsToSet:[I

    invoke-direct {v0, v6, v5, v2}, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->setValue([III)[I

    move-result-object v6

    iput-object v6, v0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_normalsToSet:[I

    add-int/lit8 v5, v5, 0x1

    iget-object v6, v0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_temp2:Lcom/ardor3d/math/Vector3;

    iget-object v7, v0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_temp3:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v6, v7}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_temp2:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    :goto_1
    iget-object v1, v0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_normalsToSet:[I

    array-length v2, v1

    if-ge v3, v2, :cond_2

    aget v1, v1, v3

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    mul-int/lit8 v1, v1, 0x3

    iget-object v5, v0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_temp2:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v5

    aput-wide v5, p1, v1

    iget-object v1, v0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_normalsToSet:[I

    aget v1, v1, v3

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v4

    iget-object v5, v0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_temp2:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v5

    aput-wide v5, p1, v1

    iget-object v1, v0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_normalsToSet:[I

    aget v1, v1, v3

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x2

    iget-object v5, v0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_temp2:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v5

    aput-wide v5, p1, v1

    iget-object v1, v0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_normalsToSet:[I

    aget v5, v1, v3

    aput-boolean v4, p2, v5

    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private setValue([III)[I
    .locals 3

    array-length v0, p1

    if-lt p2, v0, :cond_0

    array-length v0, p1

    add-int/lit8 v0, v0, 0x3

    new-array v0, v0, [I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    :cond_0
    aput p3, p1, p2

    return-object p1
.end method


# virtual methods
.method public generateNormals(Lcom/ardor3d/scenegraph/Mesh;)V
    .locals 0

    .line 1
    return-void
.end method

.method public generateNormals([D[ID)[D
    .locals 2

    .line 2
    iput-object p2, p0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_indices:[I

    .line 3
    iput-wide p3, p0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_creaseAngle:D

    const/16 v0, 0xa

    .line 4
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->_normalsToSet:[I

    const/4 v1, -0x1

    .line 5
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 6
    invoke-direct {p0, p1}, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->initFaceNormals([D)V

    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double p1, p3, v0

    if-ltz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->getVertexNormals()[D

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/ardor3d/util/geom/NonIndexedNormalGenerator;->getFacetedVertexNormals()[D

    move-result-object p1

    return-object p1
.end method
