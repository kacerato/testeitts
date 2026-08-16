.class public abstract Lcom/threed/jpct/GenericVertexController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/threed/jpct/IVertexController;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private initialized:Z

.field private mesh:Lcom/threed/jpct/Mesh;

.field private meshData:[Lcom/threed/jpct/SimpleVector;

.field private meshTarget:[Lcom/threed/jpct/SimpleVector;

.field private meshnxOrg:[F

.field private meshnyOrg:[F

.field private meshnzOrg:[F

.field private meshxOrg:[F

.field private meshyOrg:[F

.field private meshzOrg:[F

.field private normalData:[Lcom/threed/jpct/SimpleVector;

.field private normalTarget:[Lcom/threed/jpct/SimpleVector;

.field private size:I

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/threed/jpct/GenericVertexController;->size:I

    iput-boolean v0, p0, Lcom/threed/jpct/GenericVertexController;->initialized:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/GenericVertexController;->meshxOrg:[F

    iput-object v0, p0, Lcom/threed/jpct/GenericVertexController;->meshyOrg:[F

    iput-object v0, p0, Lcom/threed/jpct/GenericVertexController;->meshzOrg:[F

    iput-object v0, p0, Lcom/threed/jpct/GenericVertexController;->meshnxOrg:[F

    iput-object v0, p0, Lcom/threed/jpct/GenericVertexController;->meshnyOrg:[F

    iput-object v0, p0, Lcom/threed/jpct/GenericVertexController;->meshnzOrg:[F

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    return-void
.end method

.method public final destroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/threed/jpct/GenericVertexController;->cleanup()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/GenericVertexController;->initialized:Z

    return-void
.end method

.method public final getDestinationMesh()[Lcom/threed/jpct/SimpleVector;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/GenericVertexController;->meshTarget:[Lcom/threed/jpct/SimpleVector;

    return-object v0
.end method

.method public final getDestinationNormals()[Lcom/threed/jpct/SimpleVector;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/GenericVertexController;->normalTarget:[Lcom/threed/jpct/SimpleVector;

    return-object v0
.end method

.method public final getMeshSize()I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/GenericVertexController;->size:I

    return v0
.end method

.method public getPolygonIDs(II)[I
    .locals 7

    new-array v0, p2, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/threed/jpct/GenericVertexController;->mesh:Lcom/threed/jpct/Mesh;

    iget v5, v4, Lcom/threed/jpct/Mesh;->anzTri:I

    if-ge v2, v5, :cond_3

    if-lt v3, p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, v4, Lcom/threed/jpct/Mesh;->coords:[I

    iget-object v4, v4, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v4, v4, v2

    aget v6, v4, v1

    aget v6, v5, v6

    if-eq v6, p1, :cond_1

    const/4 v6, 0x1

    aget v6, v4, v6

    aget v6, v5, v6

    if-eq v6, p1, :cond_1

    const/4 v6, 0x2

    aget v4, v4, v6

    aget v4, v5, v4

    if-ne v4, p1, :cond_2

    :cond_1
    aput v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    new-array p1, v3, [I

    invoke-static {v0, v1, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public final getSourceMesh()[Lcom/threed/jpct/SimpleVector;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/GenericVertexController;->meshData:[Lcom/threed/jpct/SimpleVector;

    return-object v0
.end method

.method public final getSourceNormals()[Lcom/threed/jpct/SimpleVector;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/GenericVertexController;->normalData:[Lcom/threed/jpct/SimpleVector;

    return-object v0
.end method

.method public final init(Lcom/threed/jpct/Mesh;Z)Z
    .locals 9

    iget-boolean v0, p0, Lcom/threed/jpct/GenericVertexController;->initialized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iput-object p1, p0, Lcom/threed/jpct/GenericVertexController;->mesh:Lcom/threed/jpct/Mesh;

    iget-object v0, p1, Lcom/threed/jpct/Mesh;->xOrg:[F

    iput-object v0, p0, Lcom/threed/jpct/GenericVertexController;->meshxOrg:[F

    iget-object v0, p1, Lcom/threed/jpct/Mesh;->yOrg:[F

    iput-object v0, p0, Lcom/threed/jpct/GenericVertexController;->meshyOrg:[F

    iget-object v0, p1, Lcom/threed/jpct/Mesh;->zOrg:[F

    iput-object v0, p0, Lcom/threed/jpct/GenericVertexController;->meshzOrg:[F

    iget-object v0, p1, Lcom/threed/jpct/Mesh;->nxOrg:[F

    iput-object v0, p0, Lcom/threed/jpct/GenericVertexController;->meshnxOrg:[F

    iget-object v0, p1, Lcom/threed/jpct/Mesh;->nyOrg:[F

    iput-object v0, p0, Lcom/threed/jpct/GenericVertexController;->meshnyOrg:[F

    iget-object v0, p1, Lcom/threed/jpct/Mesh;->nzOrg:[F

    iput-object v0, p0, Lcom/threed/jpct/GenericVertexController;->meshnzOrg:[F

    iget-boolean v0, p1, Lcom/threed/jpct/Mesh;->normalsCalculated:Z

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string v0, "No normals have been calculated for this mesh yet!"

    invoke-static {v0, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_0
    iget v0, p1, Lcom/threed/jpct/Mesh;->obbStart:I

    if-eqz v0, :cond_1

    iget v3, p1, Lcom/threed/jpct/Mesh;->obbEnd:I

    add-int/2addr v3, v2

    iget v2, p1, Lcom/threed/jpct/Mesh;->anzCoords:I

    if-eq v3, v2, :cond_2

    :cond_1
    iget v0, p1, Lcom/threed/jpct/Mesh;->anzCoords:I

    :cond_2
    iput v0, p0, Lcom/threed/jpct/GenericVertexController;->size:I

    new-array p1, v0, [Lcom/threed/jpct/SimpleVector;

    iput-object p1, p0, Lcom/threed/jpct/GenericVertexController;->meshData:[Lcom/threed/jpct/SimpleVector;

    new-array v2, v0, [Lcom/threed/jpct/SimpleVector;

    iput-object v2, p0, Lcom/threed/jpct/GenericVertexController;->normalData:[Lcom/threed/jpct/SimpleVector;

    if-eqz p2, :cond_3

    iput-object p1, p0, Lcom/threed/jpct/GenericVertexController;->meshTarget:[Lcom/threed/jpct/SimpleVector;

    iput-object v2, p0, Lcom/threed/jpct/GenericVertexController;->normalTarget:[Lcom/threed/jpct/SimpleVector;

    goto :goto_0

    :cond_3
    new-array p1, v0, [Lcom/threed/jpct/SimpleVector;

    iput-object p1, p0, Lcom/threed/jpct/GenericVertexController;->meshTarget:[Lcom/threed/jpct/SimpleVector;

    new-array p1, v0, [Lcom/threed/jpct/SimpleVector;

    iput-object p1, p0, Lcom/threed/jpct/GenericVertexController;->normalTarget:[Lcom/threed/jpct/SimpleVector;

    :goto_0
    if-lt v1, v0, :cond_4

    invoke-virtual {p0}, Lcom/threed/jpct/GenericVertexController;->setup()Z

    move-result v1

    iput-boolean v1, p0, Lcom/threed/jpct/GenericVertexController;->initialized:Z

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/threed/jpct/GenericVertexController;->meshxOrg:[F

    aget p1, p1, v1

    iget-object v2, p0, Lcom/threed/jpct/GenericVertexController;->meshyOrg:[F

    aget v2, v2, v1

    iget-object v3, p0, Lcom/threed/jpct/GenericVertexController;->meshzOrg:[F

    aget v3, v3, v1

    iget-object v4, p0, Lcom/threed/jpct/GenericVertexController;->meshnxOrg:[F

    aget v4, v4, v1

    iget-object v5, p0, Lcom/threed/jpct/GenericVertexController;->meshnyOrg:[F

    aget v5, v5, v1

    iget-object v6, p0, Lcom/threed/jpct/GenericVertexController;->meshnzOrg:[F

    aget v6, v6, v1

    if-nez p2, :cond_5

    iget-object v7, p0, Lcom/threed/jpct/GenericVertexController;->meshTarget:[Lcom/threed/jpct/SimpleVector;

    new-instance v8, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v8, p1, v2, v3}, Lcom/threed/jpct/SimpleVector;-><init>(FFF)V

    aput-object v8, v7, v1

    iget-object v7, p0, Lcom/threed/jpct/GenericVertexController;->normalTarget:[Lcom/threed/jpct/SimpleVector;

    new-instance v8, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v8, v4, v5, v6}, Lcom/threed/jpct/SimpleVector;-><init>(FFF)V

    aput-object v8, v7, v1

    :cond_5
    iget-object v7, p0, Lcom/threed/jpct/GenericVertexController;->meshData:[Lcom/threed/jpct/SimpleVector;

    new-instance v8, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v8, p1, v2, v3}, Lcom/threed/jpct/SimpleVector;-><init>(FFF)V

    aput-object v8, v7, v1

    iget-object p1, p0, Lcom/threed/jpct/GenericVertexController;->normalData:[Lcom/threed/jpct/SimpleVector;

    new-instance v2, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v2, v4, v5, v6}, Lcom/threed/jpct/SimpleVector;-><init>(FFF)V

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    const-string p1, "This instance has already been assigned to another Mesh!"

    invoke-static {p1, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :goto_1
    return v1
.end method

.method public refreshMeshData()V
    .locals 10

    iget-object v0, p0, Lcom/threed/jpct/GenericVertexController;->mesh:Lcom/threed/jpct/Mesh;

    iget-object v1, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    iget-object v2, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    iget-object v3, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    iget-object v4, v0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    iget-object v5, v0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    iget-object v0, v0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    const/4 v6, 0x0

    :goto_0
    iget v7, p0, Lcom/threed/jpct/GenericVertexController;->size:I

    if-lt v6, v7, :cond_0

    return-void

    :cond_0
    iget-object v7, p0, Lcom/threed/jpct/GenericVertexController;->meshTarget:[Lcom/threed/jpct/SimpleVector;

    aget-object v7, v7, v6

    iget-object v8, p0, Lcom/threed/jpct/GenericVertexController;->normalData:[Lcom/threed/jpct/SimpleVector;

    aget-object v8, v8, v6

    aget v9, v1, v6

    iput v9, v7, Lcom/threed/jpct/SimpleVector;->x:F

    aget v9, v2, v6

    iput v9, v7, Lcom/threed/jpct/SimpleVector;->y:F

    aget v9, v3, v6

    iput v9, v7, Lcom/threed/jpct/SimpleVector;->z:F

    aget v7, v4, v6

    iput v7, v8, Lcom/threed/jpct/SimpleVector;->x:F

    aget v7, v5, v6

    iput v7, v8, Lcom/threed/jpct/SimpleVector;->y:F

    aget v7, v0, v6

    iput v7, v8, Lcom/threed/jpct/SimpleVector;->z:F

    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public setup()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final updateMesh()V
    .locals 21

    move-object/from16 v0, p0

    iget v1, v0, Lcom/threed/jpct/GenericVertexController;->size:I

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/threed/jpct/GenericVertexController;->meshTarget:[Lcom/threed/jpct/SimpleVector;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    iget v4, v3, Lcom/threed/jpct/SimpleVector;->x:F

    iput v4, v0, Lcom/threed/jpct/GenericVertexController;->x:F

    iget v5, v3, Lcom/threed/jpct/SimpleVector;->y:F

    iput v5, v0, Lcom/threed/jpct/GenericVertexController;->y:F

    iget v3, v3, Lcom/threed/jpct/SimpleVector;->z:F

    iput v3, v0, Lcom/threed/jpct/GenericVertexController;->z:F

    iget-object v6, v0, Lcom/threed/jpct/GenericVertexController;->normalTarget:[Lcom/threed/jpct/SimpleVector;

    iget-object v7, v0, Lcom/threed/jpct/GenericVertexController;->meshxOrg:[F

    iget-object v8, v0, Lcom/threed/jpct/GenericVertexController;->meshyOrg:[F

    iget-object v9, v0, Lcom/threed/jpct/GenericVertexController;->meshzOrg:[F

    iget-object v10, v0, Lcom/threed/jpct/GenericVertexController;->meshnxOrg:[F

    iget-object v11, v0, Lcom/threed/jpct/GenericVertexController;->meshnyOrg:[F

    iget-object v12, v0, Lcom/threed/jpct/GenericVertexController;->meshnzOrg:[F

    iget-object v13, v0, Lcom/threed/jpct/GenericVertexController;->mesh:Lcom/threed/jpct/Mesh;

    move v14, v4

    move v15, v5

    move/from16 v16, v15

    move-object/from16 v17, v12

    move v4, v3

    move v5, v14

    :goto_0
    iget v12, v0, Lcom/threed/jpct/GenericVertexController;->size:I

    if-lt v2, v12, :cond_2

    iget v1, v13, Lcom/threed/jpct/Mesh;->obbStart:I

    if-nez v1, :cond_1

    iget v1, v13, Lcom/threed/jpct/Mesh;->anzCoords:I

    iput v1, v13, Lcom/threed/jpct/Mesh;->obbStart:I

    add-int/lit8 v12, v12, 0x7

    iput v12, v13, Lcom/threed/jpct/Mesh;->obbEnd:I

    add-int/lit8 v1, v1, 0x8

    iput v1, v13, Lcom/threed/jpct/Mesh;->anzCoords:I

    :cond_1
    iget v1, v13, Lcom/threed/jpct/Mesh;->obbStart:I

    aput v5, v7, v1

    aput v15, v8, v1

    add-int/lit8 v2, v1, 0x1

    aput v3, v9, v1

    aput v5, v7, v2

    aput v15, v8, v2

    add-int/lit8 v6, v1, 0x2

    aput v4, v9, v2

    aput v14, v7, v6

    aput v15, v8, v6

    add-int/lit8 v2, v1, 0x3

    aput v3, v9, v6

    aput v14, v7, v2

    aput v15, v8, v2

    add-int/lit8 v6, v1, 0x4

    aput v4, v9, v2

    aput v14, v7, v6

    aput v16, v8, v6

    add-int/lit8 v2, v1, 0x5

    aput v3, v9, v6

    aput v14, v7, v2

    aput v16, v8, v2

    add-int/lit8 v6, v1, 0x6

    aput v4, v9, v2

    aput v5, v7, v6

    aput v16, v8, v6

    add-int/lit8 v1, v1, 0x7

    aput v3, v9, v6

    aput v5, v7, v1

    aput v16, v8, v1

    aput v4, v9, v1

    return-void

    :cond_2
    aget-object v12, v1, v2

    move-object/from16 v18, v1

    aget-object v1, v6, v2

    move-object/from16 v19, v6

    iget v6, v12, Lcom/threed/jpct/SimpleVector;->x:F

    iput v6, v0, Lcom/threed/jpct/GenericVertexController;->x:F

    move-object/from16 v20, v13

    iget v13, v12, Lcom/threed/jpct/SimpleVector;->y:F

    iput v13, v0, Lcom/threed/jpct/GenericVertexController;->y:F

    iget v12, v12, Lcom/threed/jpct/SimpleVector;->z:F

    iput v12, v0, Lcom/threed/jpct/GenericVertexController;->z:F

    aput v6, v7, v2

    aput v13, v8, v2

    aput v12, v9, v2

    iget v0, v1, Lcom/threed/jpct/SimpleVector;->x:F

    aput v0, v10, v2

    iget v0, v1, Lcom/threed/jpct/SimpleVector;->y:F

    aput v0, v11, v2

    iget v0, v1, Lcom/threed/jpct/SimpleVector;->z:F

    aput v0, v17, v2

    cmpg-float v0, v6, v5

    if-gez v0, :cond_3

    move v5, v6

    goto :goto_1

    :cond_3
    cmpl-float v0, v6, v14

    if-lez v0, :cond_4

    move v14, v6

    :cond_4
    :goto_1
    cmpg-float v0, v13, v15

    if-gez v0, :cond_5

    move v15, v13

    goto :goto_2

    :cond_5
    cmpl-float v0, v13, v16

    if-lez v0, :cond_6

    move/from16 v16, v13

    :cond_6
    :goto_2
    cmpg-float v0, v12, v3

    if-gez v0, :cond_7

    move v3, v12

    goto :goto_3

    :cond_7
    cmpl-float v0, v12, v4

    if-lez v0, :cond_8

    move v4, v12

    :cond_8
    :goto_3
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v6, v19

    move-object/from16 v13, v20

    goto/16 :goto_0
.end method
