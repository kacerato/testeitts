.class public Lcom/threed/jpct/PolygonManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field myObj:Lcom/threed/jpct/Object3D;


# direct methods
.method public constructor <init>(Lcom/threed/jpct/Object3D;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    return-void
.end method

.method private outOfBounds(I)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v1, v1, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v1, v1, Lcom/threed/jpct/Mesh;->anzTri:I

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const-string p1, "No such polygon!"

    invoke-static {p1, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public addTexture(III)V
    .locals 12

    iget-object v0, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-boolean v1, v0, Lcom/threed/jpct/Object3D;->hasBeenStripped:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    const/4 v1, -0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_4

    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "Creating texture arrays of size "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v6, Lcom/threed/jpct/Config;->maxTextureLayers:I

    sub-int/2addr v6, v5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    sget v6, Lcom/threed/jpct/Config;->maxTextureLayers:I

    sub-int/2addr v6, v5

    iget-object v7, v0, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v7, v7

    new-array v8, v3, [I

    aput v7, v8, v5

    aput v6, v8, v4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    iput-object v7, v0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    iget-object v0, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    sget v7, Lcom/threed/jpct/Config;->maxTextureLayers:I

    sub-int/2addr v7, v5

    iget-object v8, v0, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v8, v8

    new-array v9, v3, [I

    aput v8, v9, v5

    aput v7, v9, v4

    invoke-static {v6, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I

    iput-object v6, v0, Lcom/threed/jpct/Object3D;->multiMode:[[I

    move v0, v4

    :goto_0
    iget-object v6, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v7, v6, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v7, v7

    if-lt v0, v7, :cond_2

    iget-object v0, v6, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    invoke-virtual {v0}, Lcom/threed/jpct/Vectors;->createMultiCoords()V

    goto :goto_2

    :cond_2
    move v6, v4

    :goto_1
    sget v7, Lcom/threed/jpct/Config;->maxTextureLayers:I

    sub-int/2addr v7, v5

    if-lt v6, v7, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v7, v7, Lcom/threed/jpct/Object3D;->multiTex:[[I

    aget-object v7, v7, v6

    aput v1, v7, v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    move v0, v4

    :goto_3
    iget-object v6, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v6, v6, Lcom/threed/jpct/Object3D;->multiTex:[[I

    array-length v7, v6

    if-lt v0, v7, :cond_5

    move v0, v4

    goto :goto_4

    :cond_5
    aget-object v6, v6, v0

    aget v6, v6, p1

    if-ne v6, v1, :cond_e

    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Found empty stage at "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_6
    iget-object v2, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v6, v2, Lcom/threed/jpct/Object3D;->multiTex:[[I

    aget-object v6, v6, v0

    aput p2, v6, p1

    iget-object v6, v2, Lcom/threed/jpct/Object3D;->multiMode:[[I

    aget-object v6, v6, v0

    aput p3, v6, p1

    iget v6, v2, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    add-int/2addr v0, v3

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v2, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    move v0, v5

    :goto_4
    if-nez v0, :cond_b

    iget-object v2, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v2, v2, Lcom/threed/jpct/Object3D;->multiTex:[[I

    array-length v2, v2

    sget v6, Lcom/threed/jpct/Config;->maxTextureLayers:I

    sub-int/2addr v6, v5

    if-ge v2, v6, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Expanding texture arrays ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v2, v2, Lcom/threed/jpct/Object3D;->multiTex:[[I

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v2, v2, Lcom/threed/jpct/Object3D;->multiTex:[[I

    array-length v2, v2

    add-int/2addr v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v2, v0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    array-length v2, v2

    add-int/2addr v2, v5

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v0, v0

    new-array v6, v3, [I

    aput v0, v6, v5

    aput v2, v6, v4

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iget-object v6, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v7, v6, Lcom/threed/jpct/Object3D;->multiMode:[[I

    array-length v7, v7

    add-int/2addr v7, v5

    iget-object v6, v6, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v6, v6

    new-array v8, v3, [I

    aput v6, v8, v5

    aput v7, v8, v4

    invoke-static {v0, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [[I

    iget-object v0, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v7, v0, Lcom/threed/jpct/Vectors;->uMul:[[F

    array-length v7, v7

    add-int/2addr v7, v5

    iget v0, v0, Lcom/threed/jpct/Vectors;->maxVectors:I

    new-array v8, v3, [I

    aput v0, v8, v5

    aput v7, v8, v4

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[F

    iget-object v8, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v8, v8, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v9, v8, Lcom/threed/jpct/Vectors;->vMul:[[F

    array-length v9, v9

    add-int/2addr v9, v5

    iget v8, v8, Lcom/threed/jpct/Vectors;->maxVectors:I

    new-array v3, v3, [I

    aput v8, v3, v5

    aput v9, v3, v4

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [[F

    move v0, v4

    :goto_5
    iget-object v8, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v8, v8, Lcom/threed/jpct/Object3D;->multiTex:[[I

    array-length v9, v8

    if-lt v0, v9, :cond_a

    move v0, v4

    :goto_6
    iget-object v8, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v9, v8, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v10, v9, Lcom/threed/jpct/Vectors;->uMul:[[F

    array-length v11, v10

    if-lt v0, v11, :cond_9

    iget-object v0, v8, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v8, v0

    move v0, v4

    :goto_7
    if-lt v0, v8, :cond_8

    iget-object v0, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget v9, v0, Lcom/threed/jpct/Vectors;->maxVectors:I

    :goto_8
    if-lt v4, v9, :cond_7

    iget-object v0, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iput-object v2, v0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    iput-object v6, v0, Lcom/threed/jpct/Object3D;->multiMode:[[I

    iget-object v1, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iput-object v7, v1, Lcom/threed/jpct/Vectors;->uMul:[[F

    iput-object v3, v1, Lcom/threed/jpct/Vectors;->vMul:[[F

    array-length v1, v2

    sub-int/2addr v1, v5

    aget-object v1, v2, v1

    aput p2, v1, p1

    array-length p2, v6

    sub-int/2addr p2, v5

    aget-object p2, v6, p2

    aput p3, p2, p1

    iget p1, v0, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    array-length p2, v2

    add-int/2addr p2, v5

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    move v0, v5

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v1, v0, Lcom/threed/jpct/Vectors;->uMul:[[F

    array-length v1, v1

    aget-object v1, v7, v1

    iget-object v8, v0, Lcom/threed/jpct/Vectors;->nuOrg:[F

    aget v8, v8, v4

    aput v8, v1, v4

    iget-object v1, v0, Lcom/threed/jpct/Vectors;->vMul:[[F

    array-length v1, v1

    aget-object v1, v3, v1

    iget-object v0, v0, Lcom/threed/jpct/Vectors;->nvOrg:[F

    aget v0, v0, v4

    aput v0, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_8
    iget-object v9, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v9, v9, Lcom/threed/jpct/Object3D;->multiTex:[[I

    array-length v9, v9

    aget-object v9, v2, v9

    aput v1, v9, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_9
    aget-object v8, v10, v0

    aget-object v10, v7, v0

    iget v9, v9, Lcom/threed/jpct/Vectors;->maxVectors:I

    invoke-static {v8, v4, v10, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v8, v8, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v9, v8, Lcom/threed/jpct/Vectors;->vMul:[[F

    aget-object v9, v9, v0

    aget-object v10, v3, v0

    iget v8, v8, Lcom/threed/jpct/Vectors;->maxVectors:I

    invoke-static {v9, v4, v10, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    aget-object v8, v8, v0

    aget-object v9, v2, v0

    array-length v10, v9

    invoke-static {v8, v4, v9, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v8, v8, Lcom/threed/jpct/Object3D;->multiMode:[[I

    aget-object v8, v8, v0

    aget-object v9, v6, v0

    array-length v10, v9

    invoke-static {v8, v4, v9, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    :cond_b
    :goto_9
    if-eqz v0, :cond_c

    iget-object p1, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iput-boolean v5, p1, Lcom/threed/jpct/Object3D;->usesMultiTexturing:Z

    iget p2, p1, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    sget p3, Lcom/threed/jpct/Config;->maxTextureLayers:I

    if-le p2, p3, :cond_d

    iput p3, p1, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    goto :goto_a

    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "No further texture stage available ("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget p2, p2, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object p3, p3, Lcom/threed/jpct/Object3D;->multiTex:[[I

    array-length p3, p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/threed/jpct/Config;->maxTextureLayers:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_d
    :goto_a
    return-void

    :cond_e
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_f

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Stage "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " not empty: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v7, v7, Lcom/threed/jpct/Object3D;->multiTex:[[I

    aget-object v7, v7, v0

    aget v7, v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3
.end method

.method public getMaxPolygonID()I
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v0, v0, Lcom/threed/jpct/Mesh;->anzTri:I

    return v0
.end method

.method public getPolygonTexture(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/threed/jpct/PolygonManager;->outOfBounds(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->texture:[I

    aget p1, v0, p1

    return p1
.end method

.method public getPolygonTextures(I)[I
    .locals 4

    invoke-direct {p0, p1}, Lcom/threed/jpct/PolygonManager;->outOfBounds(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v1, v0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    array-length v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [I

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->texture:[I

    aget v0, v0, p1

    aput v0, v3, v2

    if-eqz v1, :cond_3

    :goto_1
    iget-object v0, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    array-length v1, v0

    if-lt v2, v1, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v2, 0x1

    aget-object v0, v0, v2

    aget v0, v0, p1

    aput v0, v3, v1

    move v2, v1

    goto :goto_1

    :cond_3
    :goto_2
    return-object v3
.end method

.method public getTextureUV(II)Lcom/threed/jpct/SimpleVector;
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->hasBeenStripped:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/threed/jpct/PolygonManager;->outOfBounds(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-ltz p2, :cond_1

    const/4 v0, 0x2

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v1, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v1, v1, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object p1, v1, p1

    aget p1, p1, p2

    iget-object p2, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    new-instance v0, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v0}, Lcom/threed/jpct/SimpleVector;-><init>()V

    iget-object v1, p2, Lcom/threed/jpct/Vectors;->nuOrg:[F

    aget v1, v1, p1

    iput v1, v0, Lcom/threed/jpct/SimpleVector;->x:F

    iget-object p2, p2, Lcom/threed/jpct/Vectors;->nvOrg:[F

    aget p1, p2, p1

    iput p1, v0, Lcom/threed/jpct/SimpleVector;->y:F

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTransformedNormal(I)Lcom/threed/jpct/SimpleVector;
    .locals 10

    invoke-direct {p0, p1}, Lcom/threed/jpct/PolygonManager;->outOfBounds(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getWorldTransformation()Lcom/threed/jpct/Matrix;

    move-result-object v0

    new-instance v1, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v1}, Lcom/threed/jpct/SimpleVector;-><init>()V

    iget-object v2, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v2, v2, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v2, Lcom/threed/jpct/Mesh;->coords:[I

    iget-object v4, v2, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object p1, v4, p1

    const/4 v4, 0x0

    aget v4, p1, v4

    aget v4, v3, v4

    const/4 v5, 0x1

    aget v5, p1, v5

    aget v5, v3, v5

    const/4 v6, 0x2

    aget p1, p1, v6

    aget p1, v3, p1

    iget-object v3, v2, Lcom/threed/jpct/Mesh;->xOrg:[F

    aget v3, v3, p1

    iput v3, v1, Lcom/threed/jpct/SimpleVector;->x:F

    iget-object v3, v2, Lcom/threed/jpct/Mesh;->yOrg:[F

    aget v3, v3, p1

    iput v3, v1, Lcom/threed/jpct/SimpleVector;->y:F

    iget-object v3, v2, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget p1, v3, p1

    iput p1, v1, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-virtual {v1, v0}, Lcom/threed/jpct/SimpleVector;->matMul(Lcom/threed/jpct/Matrix;)V

    iget p1, v1, Lcom/threed/jpct/SimpleVector;->x:F

    iget v3, v1, Lcom/threed/jpct/SimpleVector;->y:F

    iget v6, v1, Lcom/threed/jpct/SimpleVector;->z:F

    iget-object v7, v2, Lcom/threed/jpct/Mesh;->xOrg:[F

    aget v7, v7, v5

    iput v7, v1, Lcom/threed/jpct/SimpleVector;->x:F

    iget-object v7, v2, Lcom/threed/jpct/Mesh;->yOrg:[F

    aget v7, v7, v5

    iput v7, v1, Lcom/threed/jpct/SimpleVector;->y:F

    iget-object v7, v2, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget v5, v7, v5

    iput v5, v1, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-virtual {v1, v0}, Lcom/threed/jpct/SimpleVector;->matMul(Lcom/threed/jpct/Matrix;)V

    iget v5, v1, Lcom/threed/jpct/SimpleVector;->x:F

    iget v7, v1, Lcom/threed/jpct/SimpleVector;->y:F

    iget v8, v1, Lcom/threed/jpct/SimpleVector;->z:F

    iget-object v9, v2, Lcom/threed/jpct/Mesh;->xOrg:[F

    aget v9, v9, v4

    iput v9, v1, Lcom/threed/jpct/SimpleVector;->x:F

    iget-object v9, v2, Lcom/threed/jpct/Mesh;->yOrg:[F

    aget v9, v9, v4

    iput v9, v1, Lcom/threed/jpct/SimpleVector;->y:F

    iget-object v2, v2, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget v2, v2, v4

    iput v2, v1, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-virtual {v1, v0}, Lcom/threed/jpct/SimpleVector;->matMul(Lcom/threed/jpct/Matrix;)V

    iget v0, v1, Lcom/threed/jpct/SimpleVector;->x:F

    sub-float/2addr v0, p1

    iget v2, v1, Lcom/threed/jpct/SimpleVector;->y:F

    sub-float/2addr v2, v3

    iget v4, v1, Lcom/threed/jpct/SimpleVector;->z:F

    sub-float/2addr v4, v6

    sub-float/2addr v5, p1

    sub-float/2addr v7, v3

    sub-float/2addr v8, v6

    mul-float p1, v2, v8

    mul-float v3, v4, v7

    sub-float/2addr p1, v3

    iput p1, v1, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v4, v5

    mul-float/2addr v8, v0

    sub-float/2addr v4, v8

    iput v4, v1, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v0, v7

    mul-float/2addr v2, v5

    sub-float/2addr v0, v2

    iput v0, v1, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-virtual {v1}, Lcom/threed/jpct/SimpleVector;->normalize()Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1
.end method

.method public getTransformedVertex(II)Lcom/threed/jpct/SimpleVector;
    .locals 5

    invoke-direct {p0, p1}, Lcom/threed/jpct/PolygonManager;->outOfBounds(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-ltz p2, :cond_1

    const/4 v0, 0x2

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getWorldTransformation()Lcom/threed/jpct/Matrix;

    move-result-object v0

    new-instance v1, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v1}, Lcom/threed/jpct/SimpleVector;-><init>()V

    iget-object v2, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v2, v2, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v2, Lcom/threed/jpct/Mesh;->coords:[I

    iget-object v4, v2, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object p1, v4, p1

    aget p1, p1, p2

    aget p1, v3, p1

    iget-object p2, v2, Lcom/threed/jpct/Mesh;->xOrg:[F

    aget p2, p2, p1

    iput p2, v1, Lcom/threed/jpct/SimpleVector;->x:F

    iget-object p2, v2, Lcom/threed/jpct/Mesh;->yOrg:[F

    aget p2, p2, p1

    iput p2, v1, Lcom/threed/jpct/SimpleVector;->y:F

    iget-object p2, v2, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget p1, p2, p1

    iput p1, v1, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-virtual {v1, v0}, Lcom/threed/jpct/SimpleVector;->matMul(Lcom/threed/jpct/Matrix;)V

    return-object v1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setPolygonTexture(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->hasBeenStripped:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/threed/jpct/PolygonManager;->outOfBounds(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->texture:[I

    aput p2, v0, p1

    return-void
.end method

.method public setPolygonTexture(ILcom/threed/jpct/TextureInfo;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 4
    iget-object v6, v0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-boolean v7, v6, Lcom/threed/jpct/Object3D;->hasBeenStripped:Z

    if-eqz v7, :cond_0

    return-void

    :cond_0
    if-eqz v1, :cond_d

    .line 5
    iget-object v7, v6, Lcom/threed/jpct/Object3D;->multiTex:[[I

    const/4 v8, -0x1

    if-nez v7, :cond_3

    iget v7, v1, Lcom/threed/jpct/TextureInfo;->stageCnt:I

    if-le v7, v5, :cond_3

    .line 6
    sget v7, Lcom/threed/jpct/Config;->maxTextureLayers:I

    sub-int/2addr v7, v5

    iget-object v9, v6, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v9, v9

    new-array v10, v4, [I

    aput v9, v10, v5

    aput v7, v10, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[I

    iput-object v9, v6, Lcom/threed/jpct/Object3D;->multiTex:[[I

    .line 7
    iget-object v6, v0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    sget v9, Lcom/threed/jpct/Config;->maxTextureLayers:I

    sub-int/2addr v9, v5

    iget-object v10, v6, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v10, v10

    new-array v11, v4, [I

    aput v10, v11, v5

    aput v9, v11, v3

    invoke-static {v7, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    iput-object v7, v6, Lcom/threed/jpct/Object3D;->multiMode:[[I

    move v6, v3

    .line 8
    :goto_0
    iget-object v7, v0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v9, v7, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v9, v9

    if-lt v6, v9, :cond_1

    .line 9
    iget-object v6, v7, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    invoke-virtual {v6}, Lcom/threed/jpct/Vectors;->createMultiCoords()V

    .line 10
    iget-object v6, v0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iput-boolean v5, v6, Lcom/threed/jpct/Object3D;->usesMultiTexturing:Z

    goto :goto_2

    :cond_1
    move v7, v3

    .line 11
    :goto_1
    sget v9, Lcom/threed/jpct/Config;->maxTextureLayers:I

    sub-int/2addr v9, v5

    if-lt v7, v9, :cond_2

    add-int/2addr v6, v5

    goto :goto_0

    .line 12
    :cond_2
    iget-object v9, v0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v9, v9, Lcom/threed/jpct/Object3D;->multiTex:[[I

    aget-object v9, v9, v7

    aput v8, v9, v6

    add-int/2addr v7, v5

    goto :goto_1

    .line 13
    :cond_3
    :goto_2
    iget-object v6, v0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v7, v6, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    .line 14
    iget-object v9, v1, Lcom/threed/jpct/TextureInfo;->u0:[F

    aget v9, v9, v3

    iget-object v10, v1, Lcom/threed/jpct/TextureInfo;->u1:[F

    aget v10, v10, v3

    iget-object v11, v1, Lcom/threed/jpct/TextureInfo;->u2:[F

    aget v11, v11, v3

    new-array v12, v2, [F

    aput v9, v12, v3

    aput v10, v12, v5

    aput v11, v12, v4

    .line 15
    iget-object v9, v1, Lcom/threed/jpct/TextureInfo;->v0:[F

    aget v9, v9, v3

    iget-object v10, v1, Lcom/threed/jpct/TextureInfo;->v1:[F

    aget v10, v10, v3

    iget-object v11, v1, Lcom/threed/jpct/TextureInfo;->v2:[F

    aget v11, v11, v3

    new-array v13, v2, [F

    aput v9, v13, v3

    aput v10, v13, v5

    aput v11, v13, v4

    .line 16
    iget-object v9, v1, Lcom/threed/jpct/TextureInfo;->textures:[I

    aget v9, v9, v3

    .line 17
    iget v10, v6, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    iget v11, v1, Lcom/threed/jpct/TextureInfo;->stageCnt:I

    if-ge v10, v11, :cond_4

    .line 18
    iput v11, v6, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    .line 19
    :cond_4
    iget-boolean v10, v6, Lcom/threed/jpct/Object3D;->usesMultiTexturing:Z

    .line 20
    iget-object v6, v6, Lcom/threed/jpct/Object3D;->texture:[I

    aput v9, v6, p1

    if-eqz v10, :cond_7

    move v6, v3

    .line 21
    :goto_3
    iget v9, v1, Lcom/threed/jpct/TextureInfo;->stageCnt:I

    add-int/lit8 v10, v9, -0x1

    if-lt v6, v10, :cond_6

    sub-int/2addr v9, v5

    .line 22
    :goto_4
    sget v6, Lcom/threed/jpct/Config;->maxTextureLayers:I

    sub-int/2addr v6, v5

    if-lt v9, v6, :cond_5

    goto :goto_5

    .line 23
    :cond_5
    iget-object v6, v0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v6, v6, Lcom/threed/jpct/Object3D;->multiTex:[[I

    aget-object v6, v6, v9

    aput v8, v6, p1

    add-int/2addr v9, v5

    goto :goto_4

    .line 24
    :cond_6
    iget-object v9, v0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v10, v9, Lcom/threed/jpct/Object3D;->multiTex:[[I

    aget-object v10, v10, v6

    iget-object v11, v1, Lcom/threed/jpct/TextureInfo;->textures:[I

    add-int/lit8 v14, v6, 0x1

    aget v11, v11, v14

    aput v11, v10, p1

    .line 25
    iget-object v9, v9, Lcom/threed/jpct/Object3D;->multiMode:[[I

    aget-object v6, v9, v6

    iget-object v9, v1, Lcom/threed/jpct/TextureInfo;->mode:[I

    aget v9, v9, v14

    aput v9, v6, p1

    move v6, v14

    goto :goto_3

    :cond_7
    :goto_5
    const/4 v6, 0x0

    move v9, v3

    move-object v8, v6

    :goto_6
    if-lt v9, v2, :cond_8

    goto :goto_9

    .line 26
    :cond_8
    iget-object v10, v0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v10, v10, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v10, v10, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v10, v10, p1

    aget v10, v10, v9

    .line 27
    iget-object v11, v7, Lcom/threed/jpct/Vectors;->nuOrg:[F

    aget v14, v12, v9

    aput v14, v11, v10

    .line 28
    iget-object v11, v7, Lcom/threed/jpct/Vectors;->nvOrg:[F

    aget v14, v13, v9

    aput v14, v11, v10

    if-eqz v9, :cond_b

    if-eq v9, v5, :cond_a

    if-eq v9, v4, :cond_9

    goto :goto_7

    .line 29
    :cond_9
    iget-object v6, v1, Lcom/threed/jpct/TextureInfo;->u2:[F

    .line 30
    iget-object v8, v1, Lcom/threed/jpct/TextureInfo;->v2:[F

    goto :goto_7

    .line 31
    :cond_a
    iget-object v6, v1, Lcom/threed/jpct/TextureInfo;->u1:[F

    .line 32
    iget-object v8, v1, Lcom/threed/jpct/TextureInfo;->v1:[F

    goto :goto_7

    .line 33
    :cond_b
    iget-object v6, v1, Lcom/threed/jpct/TextureInfo;->u0:[F

    .line 34
    iget-object v8, v1, Lcom/threed/jpct/TextureInfo;->v0:[F

    :goto_7
    move v11, v3

    .line 35
    :goto_8
    iget v14, v1, Lcom/threed/jpct/TextureInfo;->stageCnt:I

    sub-int/2addr v14, v5

    if-lt v11, v14, :cond_c

    add-int/2addr v9, v5

    goto :goto_6

    .line 36
    :cond_c
    iget-object v14, v7, Lcom/threed/jpct/Vectors;->uMul:[[F

    aget-object v14, v14, v11

    add-int/lit8 v15, v11, 0x1

    aget v16, v6, v15

    aput v16, v14, v10

    .line 37
    iget-object v14, v7, Lcom/threed/jpct/Vectors;->vMul:[[F

    aget-object v11, v14, v11

    aget v14, v8, v15

    aput v14, v11, v10

    move v11, v15

    goto :goto_8

    :cond_d
    :goto_9
    return-void
.end method

.method public setVertexAlpha(IIF)V
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-boolean v0, v0, Lcom/threed/jpct/Object3D;->hasBeenStripped:Z

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/threed/jpct/PolygonManager;->outOfBounds(I)Z

    move-result v0

    if-nez v0, :cond_3

    if-ltz p2, :cond_3

    const/4 v0, 0x2

    if-le p2, v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/PolygonManager;->myObj:Lcom/threed/jpct/Object3D;

    iget-object v1, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v1, v1, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object p1, v1, p1

    aget p1, p1, p2

    iget-object p2, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    invoke-virtual {p2}, Lcom/threed/jpct/Vectors;->createAlpha()V

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-gez v1, :cond_1

    :goto_0
    move p3, v0

    goto :goto_1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p3, v0

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p2, p2, Lcom/threed/jpct/Vectors;->alpha:[F

    aput p3, p2, p1

    :cond_3
    :goto_2
    return-void
.end method
