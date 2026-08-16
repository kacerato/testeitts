.class final Lcom/threed/jpct/Vectors;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field alpha:[F

.field private baseMesh:Lcom/threed/jpct/Mesh;

.field maxVectors:I

.field nuOrg:[F

.field nvOrg:[F

.field uMul:[[F

.field vMul:[[F


# direct methods
.method public constructor <init>(ILcom/threed/jpct/Mesh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/threed/jpct/Vectors;->baseMesh:Lcom/threed/jpct/Mesh;

    iput p1, p0, Lcom/threed/jpct/Vectors;->maxVectors:I

    new-array p2, p1, [F

    iput-object p2, p0, Lcom/threed/jpct/Vectors;->nuOrg:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/threed/jpct/Vectors;->nvOrg:[F

    return-void
.end method


# virtual methods
.method public addVertex(FFF)I
    .locals 3

    iget-object v0, p0, Lcom/threed/jpct/Vectors;->baseMesh:Lcom/threed/jpct/Mesh;

    iget v1, v0, Lcom/threed/jpct/Mesh;->anzCoords:I

    iget-object v2, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    aput p1, v2, v1

    iget-object p1, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    aput p2, p1, v1

    iget-object p1, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    aput p3, p1, v1

    add-int/lit8 p1, v1, 0x1

    iput p1, v0, Lcom/threed/jpct/Mesh;->anzCoords:I

    return v1
.end method

.method public checkCoords(FFF)I
    .locals 5

    iget-object v0, p0, Lcom/threed/jpct/Vectors;->baseMesh:Lcom/threed/jpct/Mesh;

    iget v1, v0, Lcom/threed/jpct/Mesh;->anzCoords:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    iget-object v3, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    :goto_0
    if-gez v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    aget v4, v2, v1

    cmpl-float v4, v4, p1

    if-nez v4, :cond_1

    aget v4, v3, v1

    cmpl-float v4, v4, p2

    if-nez v4, :cond_1

    aget v4, v0, v1

    cmpl-float v4, v4, p3

    if-nez v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public createAlpha()V
    .locals 3

    iget-object v0, p0, Lcom/threed/jpct/Vectors;->alpha:[F

    if-nez v0, :cond_1

    iget v0, p0, Lcom/threed/jpct/Vectors;->maxVectors:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/threed/jpct/Vectors;->alpha:[F

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/threed/jpct/Vectors;->maxVectors:I

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/threed/jpct/Vectors;->alpha:[F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public createMultiCoords()V
    .locals 6

    iget-object v0, p0, Lcom/threed/jpct/Vectors;->uMul:[[F

    if-nez v0, :cond_0

    sget v0, Lcom/threed/jpct/Config;->maxTextureLayers:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v2, p0, Lcom/threed/jpct/Vectors;->maxVectors:I

    const/4 v3, 0x2

    new-array v4, v3, [I

    aput v2, v4, v1

    const/4 v2, 0x0

    aput v0, v4, v2

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[F

    iput-object v4, p0, Lcom/threed/jpct/Vectors;->uMul:[[F

    sget v4, Lcom/threed/jpct/Config;->maxTextureLayers:I

    sub-int/2addr v4, v1

    iget v5, p0, Lcom/threed/jpct/Vectors;->maxVectors:I

    new-array v3, v3, [I

    aput v5, v3, v1

    aput v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/threed/jpct/Vectors;->vMul:[[F

    :cond_0
    return-void
.end method

.method public killMultiCoords()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/Vectors;->uMul:[[F

    iput-object v0, p0, Lcom/threed/jpct/Vectors;->vMul:[[F

    return-void
.end method

.method public setMesh(Lcom/threed/jpct/Mesh;)V
    .locals 0

    iput-object p1, p0, Lcom/threed/jpct/Vectors;->baseMesh:Lcom/threed/jpct/Mesh;

    return-void
.end method

.method public strip()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/Vectors;->nuOrg:[F

    iput-object v0, p0, Lcom/threed/jpct/Vectors;->nvOrg:[F

    iput-object v0, p0, Lcom/threed/jpct/Vectors;->uMul:[[F

    iput-object v0, p0, Lcom/threed/jpct/Vectors;->vMul:[[F

    iput-object v0, p0, Lcom/threed/jpct/Vectors;->alpha:[F

    return-void
.end method
