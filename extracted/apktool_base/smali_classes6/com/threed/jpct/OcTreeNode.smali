.class final Lcom/threed/jpct/OcTreeNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static nodeID:I = 0x0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field childCnt:I

.field children:[Lcom/threed/jpct/OcTreeNode;

.field id:I

.field pList:[Lcom/threed/jpct/SimpleVector;

.field parent:Lcom/threed/jpct/OcTreeNode;

.field pointCnt:I

.field pointList:[I

.field polyCnt:I

.field polyList:[I

.field xHigh:F

.field xLow:F

.field yHigh:F

.field yLow:F

.field zHigh:F

.field zLow:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/OcTreeNode;->parent:Lcom/threed/jpct/OcTreeNode;

    const/4 v1, -0x1

    iput v1, p0, Lcom/threed/jpct/OcTreeNode;->id:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/threed/jpct/OcTreeNode;->polyCnt:I

    iput v1, p0, Lcom/threed/jpct/OcTreeNode;->pointCnt:I

    iput-object v0, p0, Lcom/threed/jpct/OcTreeNode;->polyList:[I

    iput-object v0, p0, Lcom/threed/jpct/OcTreeNode;->pointList:[I

    iput v1, p0, Lcom/threed/jpct/OcTreeNode;->childCnt:I

    iput-object v0, p0, Lcom/threed/jpct/OcTreeNode;->children:[Lcom/threed/jpct/OcTreeNode;

    const/16 v2, 0x8

    new-array v3, v2, [Lcom/threed/jpct/SimpleVector;

    iput-object v3, p0, Lcom/threed/jpct/OcTreeNode;->pList:[Lcom/threed/jpct/SimpleVector;

    move v3, v1

    :goto_0
    if-lt v3, v2, :cond_0

    iput-object v0, p0, Lcom/threed/jpct/OcTreeNode;->parent:Lcom/threed/jpct/OcTreeNode;

    sget v0, Lcom/threed/jpct/OcTreeNode;->nodeID:I

    iput v0, p0, Lcom/threed/jpct/OcTreeNode;->id:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/threed/jpct/OcTreeNode;->nodeID:I

    iput v1, p0, Lcom/threed/jpct/OcTreeNode;->polyCnt:I

    iput v1, p0, Lcom/threed/jpct/OcTreeNode;->pointCnt:I

    return-void

    :cond_0
    iget-object v4, p0, Lcom/threed/jpct/OcTreeNode;->pList:[Lcom/threed/jpct/SimpleVector;

    const/4 v5, 0x0

    invoke-static {v5, v5, v5}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private notInList([III)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    aget v2, p1, v1

    if-ne p3, v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static resetNodeID()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/threed/jpct/OcTreeNode;->nodeID:I

    return-void
.end method


# virtual methods
.method public addChild(Lcom/threed/jpct/OcTreeNode;)V
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->children:[Lcom/threed/jpct/OcTreeNode;

    const/16 v1, 0x8

    if-nez v0, :cond_0

    new-array v0, v1, [Lcom/threed/jpct/OcTreeNode;

    iput-object v0, p0, Lcom/threed/jpct/OcTreeNode;->children:[Lcom/threed/jpct/OcTreeNode;

    :cond_0
    iget v0, p0, Lcom/threed/jpct/OcTreeNode;->childCnt:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/threed/jpct/OcTreeNode;->children:[Lcom/threed/jpct/OcTreeNode;

    aput-object p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/threed/jpct/OcTreeNode;->childCnt:I

    invoke-virtual {p1, p0}, Lcom/threed/jpct/OcTreeNode;->setParent(Lcom/threed/jpct/OcTreeNode;)V

    :cond_1
    return-void
.end method

.method public addTriangle(IIIII)V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->polyList:[I

    if-nez v0, :cond_0

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/threed/jpct/OcTreeNode;->polyList:[I

    mul-int/lit8 p1, p1, 0x3

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/threed/jpct/OcTreeNode;->pointList:[I

    :cond_0
    iget-object p1, p0, Lcom/threed/jpct/OcTreeNode;->polyList:[I

    iget v0, p0, Lcom/threed/jpct/OcTreeNode;->polyCnt:I

    aput p2, p1, v0

    iget-object p1, p0, Lcom/threed/jpct/OcTreeNode;->pointList:[I

    iget p2, p0, Lcom/threed/jpct/OcTreeNode;->pointCnt:I

    invoke-direct {p0, p1, p2, p3}, Lcom/threed/jpct/OcTreeNode;->notInList([III)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/threed/jpct/OcTreeNode;->pointList:[I

    iget p2, p0, Lcom/threed/jpct/OcTreeNode;->pointCnt:I

    aput p3, p1, p2

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/threed/jpct/OcTreeNode;->pointCnt:I

    :cond_1
    iget-object p1, p0, Lcom/threed/jpct/OcTreeNode;->pointList:[I

    iget p2, p0, Lcom/threed/jpct/OcTreeNode;->pointCnt:I

    invoke-direct {p0, p1, p2, p4}, Lcom/threed/jpct/OcTreeNode;->notInList([III)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/threed/jpct/OcTreeNode;->pointList:[I

    iget p2, p0, Lcom/threed/jpct/OcTreeNode;->pointCnt:I

    aput p4, p1, p2

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/threed/jpct/OcTreeNode;->pointCnt:I

    :cond_2
    iget-object p1, p0, Lcom/threed/jpct/OcTreeNode;->pointList:[I

    iget p2, p0, Lcom/threed/jpct/OcTreeNode;->pointCnt:I

    invoke-direct {p0, p1, p2, p5}, Lcom/threed/jpct/OcTreeNode;->notInList([III)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/threed/jpct/OcTreeNode;->pointList:[I

    iget p2, p0, Lcom/threed/jpct/OcTreeNode;->pointCnt:I

    aput p5, p1, p2

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/threed/jpct/OcTreeNode;->pointCnt:I

    :cond_3
    iget p1, p0, Lcom/threed/jpct/OcTreeNode;->polyCnt:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/threed/jpct/OcTreeNode;->polyCnt:I

    return-void
.end method

.method public completeFit(FFFFFFFFF)Z
    .locals 2

    iget v0, p0, Lcom/threed/jpct/OcTreeNode;->xLow:F

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->xHigh:F

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_0

    cmpl-float p1, p4, v0

    if-ltz p1, :cond_0

    cmpg-float p1, p4, v1

    if-gtz p1, :cond_0

    cmpl-float p1, p7, v0

    if-ltz p1, :cond_0

    cmpg-float p1, p7, v1

    if-gtz p1, :cond_0

    iget p1, p0, Lcom/threed/jpct/OcTreeNode;->yLow:F

    cmpl-float p4, p2, p1

    if-ltz p4, :cond_0

    iget p4, p0, Lcom/threed/jpct/OcTreeNode;->yHigh:F

    cmpg-float p2, p2, p4

    if-gtz p2, :cond_0

    cmpl-float p2, p5, p1

    if-ltz p2, :cond_0

    cmpg-float p2, p5, p4

    if-gtz p2, :cond_0

    cmpl-float p1, p8, p1

    if-ltz p1, :cond_0

    cmpg-float p1, p8, p4

    if-gtz p1, :cond_0

    iget p1, p0, Lcom/threed/jpct/OcTreeNode;->zLow:F

    cmpl-float p2, p3, p1

    if-ltz p2, :cond_0

    iget p2, p0, Lcom/threed/jpct/OcTreeNode;->zHigh:F

    cmpg-float p3, p3, p2

    if-gtz p3, :cond_0

    cmpl-float p3, p6, p1

    if-ltz p3, :cond_0

    cmpg-float p3, p6, p2

    if-gtz p3, :cond_0

    cmpl-float p1, p9, p1

    if-ltz p1, :cond_0

    cmpg-float p1, p9, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public extendDimensions(FFFFFFFFF)V
    .locals 18

    move-object/from16 v7, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p7

    move/from16 v8, p8

    move/from16 v6, p9

    iget v0, v7, Lcom/threed/jpct/OcTreeNode;->xLow:F

    cmpg-float v0, v9, v0

    if-gez v0, :cond_0

    iput v9, v7, Lcom/threed/jpct/OcTreeNode;->xLow:F

    :cond_0
    iget v0, v7, Lcom/threed/jpct/OcTreeNode;->xLow:F

    cmpg-float v0, v12, v0

    if-gez v0, :cond_1

    iput v12, v7, Lcom/threed/jpct/OcTreeNode;->xLow:F

    :cond_1
    iget v0, v7, Lcom/threed/jpct/OcTreeNode;->xLow:F

    cmpg-float v0, v15, v0

    if-gez v0, :cond_2

    iput v15, v7, Lcom/threed/jpct/OcTreeNode;->xLow:F

    :cond_2
    iget v0, v7, Lcom/threed/jpct/OcTreeNode;->yLow:F

    cmpg-float v0, v10, v0

    if-gez v0, :cond_3

    iput v10, v7, Lcom/threed/jpct/OcTreeNode;->yLow:F

    :cond_3
    iget v0, v7, Lcom/threed/jpct/OcTreeNode;->yLow:F

    cmpg-float v0, v13, v0

    if-gez v0, :cond_4

    iput v13, v7, Lcom/threed/jpct/OcTreeNode;->yLow:F

    :cond_4
    iget v0, v7, Lcom/threed/jpct/OcTreeNode;->yLow:F

    cmpg-float v0, v8, v0

    if-gez v0, :cond_5

    iput v8, v7, Lcom/threed/jpct/OcTreeNode;->yLow:F

    :cond_5
    iget v0, v7, Lcom/threed/jpct/OcTreeNode;->zLow:F

    cmpg-float v0, v11, v0

    if-gez v0, :cond_6

    iput v11, v7, Lcom/threed/jpct/OcTreeNode;->zLow:F

    :cond_6
    iget v0, v7, Lcom/threed/jpct/OcTreeNode;->zLow:F

    cmpg-float v0, v14, v0

    if-gez v0, :cond_7

    iput v14, v7, Lcom/threed/jpct/OcTreeNode;->zLow:F

    :cond_7
    iget v0, v7, Lcom/threed/jpct/OcTreeNode;->zLow:F

    cmpg-float v0, v6, v0

    if-gez v0, :cond_8

    iput v6, v7, Lcom/threed/jpct/OcTreeNode;->zLow:F

    :cond_8
    iget v0, v7, Lcom/threed/jpct/OcTreeNode;->xHigh:F

    cmpl-float v0, v9, v0

    if-lez v0, :cond_9

    iput v9, v7, Lcom/threed/jpct/OcTreeNode;->xHigh:F

    :cond_9
    iget v0, v7, Lcom/threed/jpct/OcTreeNode;->xHigh:F

    cmpl-float v0, v12, v0

    if-lez v0, :cond_a

    iput v12, v7, Lcom/threed/jpct/OcTreeNode;->xHigh:F

    :cond_a
    iget v0, v7, Lcom/threed/jpct/OcTreeNode;->xHigh:F

    cmpl-float v0, v15, v0

    if-lez v0, :cond_b

    iput v15, v7, Lcom/threed/jpct/OcTreeNode;->xHigh:F

    :cond_b
    iget v0, v7, Lcom/threed/jpct/OcTreeNode;->yHigh:F

    cmpl-float v0, v10, v0

    if-lez v0, :cond_c

    iput v10, v7, Lcom/threed/jpct/OcTreeNode;->yHigh:F

    :cond_c
    iget v0, v7, Lcom/threed/jpct/OcTreeNode;->yHigh:F

    cmpl-float v0, v13, v0

    if-lez v0, :cond_d

    iput v13, v7, Lcom/threed/jpct/OcTreeNode;->yHigh:F

    :cond_d
    iget v0, v7, Lcom/threed/jpct/OcTreeNode;->yHigh:F

    cmpl-float v0, v8, v0

    if-lez v0, :cond_e

    iput v8, v7, Lcom/threed/jpct/OcTreeNode;->yHigh:F

    :cond_e
    iget v0, v7, Lcom/threed/jpct/OcTreeNode;->zHigh:F

    cmpl-float v0, v11, v0

    if-lez v0, :cond_f

    iput v11, v7, Lcom/threed/jpct/OcTreeNode;->zHigh:F

    :cond_f
    iget v0, v7, Lcom/threed/jpct/OcTreeNode;->zHigh:F

    cmpl-float v0, v14, v0

    if-lez v0, :cond_10

    iput v14, v7, Lcom/threed/jpct/OcTreeNode;->zHigh:F

    :cond_10
    iget v0, v7, Lcom/threed/jpct/OcTreeNode;->zHigh:F

    cmpl-float v0, v6, v0

    if-lez v0, :cond_11

    iput v6, v7, Lcom/threed/jpct/OcTreeNode;->zHigh:F

    :cond_11
    iget v1, v7, Lcom/threed/jpct/OcTreeNode;->xLow:F

    iget v2, v7, Lcom/threed/jpct/OcTreeNode;->yLow:F

    iget v3, v7, Lcom/threed/jpct/OcTreeNode;->zLow:F

    iget v4, v7, Lcom/threed/jpct/OcTreeNode;->xHigh:F

    iget v5, v7, Lcom/threed/jpct/OcTreeNode;->yHigh:F

    iget v0, v7, Lcom/threed/jpct/OcTreeNode;->zHigh:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lcom/threed/jpct/OcTreeNode;->setDimensions(FFFFFF)V

    iget-object v0, v7, Lcom/threed/jpct/OcTreeNode;->parent:Lcom/threed/jpct/OcTreeNode;

    if-eqz v0, :cond_12

    move-object v8, v0

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p7

    move/from16 v16, p8

    move/from16 v17, p9

    invoke-virtual/range {v8 .. v17}, Lcom/threed/jpct/OcTreeNode;->extendDimensions(FFFFFFFFF)V

    :cond_12
    return-void
.end method

.method public getChildCount()I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/OcTreeNode;->childCnt:I

    return v0
.end method

.method public getChildren()[Lcom/threed/jpct/OcTreeNode;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->children:[Lcom/threed/jpct/OcTreeNode;

    return-object v0
.end method

.method public getID()I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/OcTreeNode;->id:I

    return v0
.end method

.method public getParent()Lcom/threed/jpct/OcTreeNode;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->parent:Lcom/threed/jpct/OcTreeNode;

    return-object v0
.end method

.method public getPointCount()I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/OcTreeNode;->pointCnt:I

    return v0
.end method

.method public getPoints()[I
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->pointList:[I

    return-object v0
.end method

.method public getPolyCount()I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/OcTreeNode;->polyCnt:I

    return v0
.end method

.method public getPolygons()[I
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->polyList:[I

    return-object v0
.end method

.method public isLeaf()Z
    .locals 1

    invoke-virtual {p0}, Lcom/threed/jpct/OcTreeNode;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isVisible(Lcom/threed/jpct/Matrix;FF)I
    .locals 29

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 v1, 0x0

    aget-object v2, v0, v1

    aget v3, v2, v1

    const/4 v4, 0x1

    aget-object v5, v0, v4

    aget v6, v5, v1

    aget v7, v5, v4

    const/4 v8, 0x2

    aget-object v9, v0, v8

    aget v10, v9, v4

    aget v11, v9, v8

    aget v5, v5, v8

    aget v9, v9, v1

    aget v12, v2, v8

    aget v2, v2, v4

    const/4 v13, 0x3

    aget-object v0, v0, v13

    aget v13, v0, v1

    aget v14, v0, v4

    aget v0, v0, v8

    move v4, v1

    move v8, v4

    move v15, v8

    move/from16 v19, v15

    move/from16 v20, v19

    move/from16 v21, v2

    move/from16 v18, v7

    move/from16 v17, v10

    move/from16 v16, v14

    move/from16 v7, v20

    move v10, v7

    move v14, v10

    :goto_0
    const/16 v2, 0x8

    if-lt v8, v2, :cond_2

    if-eq v15, v2, :cond_1

    if-eq v4, v2, :cond_1

    if-eq v10, v2, :cond_1

    if-eq v7, v2, :cond_1

    if-eq v1, v2, :cond_1

    if-eq v14, v2, :cond_1

    if-nez v15, :cond_0

    if-nez v4, :cond_0

    if-nez v10, :cond_0

    if-nez v7, :cond_0

    if-nez v1, :cond_0

    if-nez v14, :cond_0

    const/16 v0, 0x3e7

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v2, 0x0

    return v2

    :cond_2
    move-object/from16 v2, p0

    move/from16 v22, v15

    iget-object v15, v2, Lcom/threed/jpct/OcTreeNode;->pList:[Lcom/threed/jpct/SimpleVector;

    aget-object v15, v15, v8

    iget v2, v15, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v23, v8

    iget v8, v15, Lcom/threed/jpct/SimpleVector;->y:F

    iget v15, v15, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v24, v2, v3

    mul-float v25, v8, v6

    add-float v24, v24, v25

    mul-float v25, v15, v9

    add-float v24, v24, v25

    add-float v24, v24, v13

    mul-float v25, v2, v12

    mul-float v26, v8, v5

    add-float v25, v25, v26

    mul-float v26, v15, v11

    add-float v25, v25, v26

    add-float v25, v25, v0

    sget v26, Lcom/threed/jpct/Config;->nearPlane:F

    cmpg-float v26, v25, v26

    if-gez v26, :cond_3

    add-int/lit8 v1, v1, 0x1

    :goto_1
    move/from16 v27, v0

    move/from16 v20, v14

    const/16 v26, 0x1

    move v14, v1

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    sget v26, Lcom/threed/jpct/Config;->farPlane:F

    cmpl-float v26, v25, v26

    if-lez v26, :cond_4

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_4
    move/from16 v27, v0

    move/from16 v26, v20

    move/from16 v20, v14

    move v14, v1

    const/4 v1, 0x1

    :goto_2
    mul-float v0, v25, p2

    move/from16 v28, v3

    neg-float v3, v0

    cmpg-float v3, v24, v3

    if-gez v3, :cond_5

    add-int/lit8 v7, v7, 0x1

    :goto_3
    move/from16 v15, v22

    :goto_4
    const/16 v26, 0x1

    goto :goto_5

    :cond_5
    cmpl-float v0, v24, v0

    if-lez v0, :cond_6

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    mul-float v0, v25, p3

    mul-float v2, v2, v21

    mul-float v8, v8, v18

    add-float/2addr v2, v8

    mul-float v15, v15, v17

    add-float/2addr v2, v15

    add-float v2, v2, v16

    neg-float v3, v0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_7

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_7
    cmpl-float v0, v2, v0

    if-lez v0, :cond_8

    add-int/lit8 v15, v22, 0x1

    goto :goto_4

    :cond_8
    move/from16 v15, v22

    if-eqz v1, :cond_9

    const/16 v19, 0x1

    :cond_9
    :goto_5
    if-eqz v26, :cond_a

    if-eqz v19, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x1

    add-int/lit8 v8, v23, 0x1

    move v1, v14

    move/from16 v14, v20

    move/from16 v20, v26

    move/from16 v0, v27

    move/from16 v3, v28

    goto/16 :goto_0
.end method

.method public packPoints()V
    .locals 4

    iget v0, p0, Lcom/threed/jpct/OcTreeNode;->pointCnt:I

    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->polyCnt:I

    mul-int/lit8 v1, v1, 0x3

    if-eq v0, v1, :cond_0

    new-array v1, v0, [I

    iget-object v2, p0, Lcom/threed/jpct/OcTreeNode;->pointList:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/threed/jpct/OcTreeNode;->pointList:[I

    :cond_0
    return-void
.end method

.method public partialFit(FFFFFFFFF)Z
    .locals 3

    iget v0, p0, Lcom/threed/jpct/OcTreeNode;->xLow:F

    cmpl-float v1, p1, v0

    const/4 v2, 0x1

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->xHigh:F

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_0

    iget p1, p0, Lcom/threed/jpct/OcTreeNode;->yLow:F

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    iget p1, p0, Lcom/threed/jpct/OcTreeNode;->yHigh:F

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_0

    iget p1, p0, Lcom/threed/jpct/OcTreeNode;->zLow:F

    cmpl-float p1, p3, p1

    if-ltz p1, :cond_0

    iget p1, p0, Lcom/threed/jpct/OcTreeNode;->zHigh:F

    cmpg-float p1, p3, p1

    if-gtz p1, :cond_0

    return v2

    :cond_0
    cmpl-float p1, p4, v0

    if-ltz p1, :cond_1

    iget p1, p0, Lcom/threed/jpct/OcTreeNode;->xHigh:F

    cmpg-float p1, p4, p1

    if-gtz p1, :cond_1

    iget p1, p0, Lcom/threed/jpct/OcTreeNode;->yLow:F

    cmpl-float p1, p5, p1

    if-ltz p1, :cond_1

    iget p1, p0, Lcom/threed/jpct/OcTreeNode;->yHigh:F

    cmpg-float p1, p5, p1

    if-gtz p1, :cond_1

    iget p1, p0, Lcom/threed/jpct/OcTreeNode;->zLow:F

    cmpl-float p1, p6, p1

    if-ltz p1, :cond_1

    iget p1, p0, Lcom/threed/jpct/OcTreeNode;->zHigh:F

    cmpg-float p1, p6, p1

    if-gtz p1, :cond_1

    return v2

    :cond_1
    cmpl-float p1, p7, v0

    if-ltz p1, :cond_2

    iget p1, p0, Lcom/threed/jpct/OcTreeNode;->xHigh:F

    cmpg-float p1, p7, p1

    if-gtz p1, :cond_2

    iget p1, p0, Lcom/threed/jpct/OcTreeNode;->yLow:F

    cmpl-float p1, p8, p1

    if-ltz p1, :cond_2

    iget p1, p0, Lcom/threed/jpct/OcTreeNode;->yHigh:F

    cmpg-float p1, p8, p1

    if-gtz p1, :cond_2

    iget p1, p0, Lcom/threed/jpct/OcTreeNode;->zLow:F

    cmpl-float p1, p9, p1

    if-ltz p1, :cond_2

    iget p1, p0, Lcom/threed/jpct/OcTreeNode;->zHigh:F

    cmpg-float p1, p9, p1

    if-gtz p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public removeChild(Lcom/threed/jpct/OcTreeNode;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->childCnt:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/threed/jpct/OcTreeNode;->children:[Lcom/threed/jpct/OcTreeNode;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    if-eq v0, v2, :cond_2

    :goto_2
    iget p1, p0, Lcom/threed/jpct/OcTreeNode;->childCnt:I

    add-int/lit8 v1, p1, -0x1

    if-lt v0, v1, :cond_1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/threed/jpct/OcTreeNode;->childCnt:I

    goto :goto_3

    :cond_1
    iget-object p1, p0, Lcom/threed/jpct/OcTreeNode;->children:[Lcom/threed/jpct/OcTreeNode;

    add-int/lit8 v1, v0, 0x1

    aget-object v2, p1, v1

    aput-object v2, p1, v0

    move v0, v1

    goto :goto_2

    :cond_2
    :goto_3
    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setDimensions(FFFFFF)V
    .locals 2

    iput p1, p0, Lcom/threed/jpct/OcTreeNode;->xLow:F

    iput p2, p0, Lcom/threed/jpct/OcTreeNode;->yLow:F

    iput p3, p0, Lcom/threed/jpct/OcTreeNode;->zLow:F

    iput p4, p0, Lcom/threed/jpct/OcTreeNode;->xHigh:F

    iput p5, p0, Lcom/threed/jpct/OcTreeNode;->yHigh:F

    iput p6, p0, Lcom/threed/jpct/OcTreeNode;->zHigh:F

    iget-object v0, p0, Lcom/threed/jpct/OcTreeNode;->pList:[Lcom/threed/jpct/SimpleVector;

    const/4 v1, 0x4

    aget-object v1, v0, v1

    iput p1, v1, Lcom/threed/jpct/SimpleVector;->x:F

    iput p2, v1, Lcom/threed/jpct/SimpleVector;->y:F

    iput p6, v1, Lcom/threed/jpct/SimpleVector;->z:F

    const/4 v1, 0x5

    aget-object v1, v0, v1

    iput p1, v1, Lcom/threed/jpct/SimpleVector;->x:F

    iput p2, v1, Lcom/threed/jpct/SimpleVector;->y:F

    iput p3, v1, Lcom/threed/jpct/SimpleVector;->z:F

    const/4 v1, 0x6

    aget-object v1, v0, v1

    iput p4, v1, Lcom/threed/jpct/SimpleVector;->x:F

    iput p2, v1, Lcom/threed/jpct/SimpleVector;->y:F

    iput p3, v1, Lcom/threed/jpct/SimpleVector;->z:F

    const/4 v1, 0x7

    aget-object v1, v0, v1

    iput p4, v1, Lcom/threed/jpct/SimpleVector;->x:F

    iput p2, v1, Lcom/threed/jpct/SimpleVector;->y:F

    iput p6, v1, Lcom/threed/jpct/SimpleVector;->z:F

    const/4 p2, 0x0

    aget-object p2, v0, p2

    iput p1, p2, Lcom/threed/jpct/SimpleVector;->x:F

    iput p5, p2, Lcom/threed/jpct/SimpleVector;->y:F

    iput p6, p2, Lcom/threed/jpct/SimpleVector;->z:F

    const/4 p2, 0x1

    aget-object p2, v0, p2

    iput p1, p2, Lcom/threed/jpct/SimpleVector;->x:F

    iput p5, p2, Lcom/threed/jpct/SimpleVector;->y:F

    iput p3, p2, Lcom/threed/jpct/SimpleVector;->z:F

    const/4 p1, 0x2

    aget-object p1, v0, p1

    iput p4, p1, Lcom/threed/jpct/SimpleVector;->x:F

    iput p5, p1, Lcom/threed/jpct/SimpleVector;->y:F

    iput p3, p1, Lcom/threed/jpct/SimpleVector;->z:F

    const/4 p1, 0x3

    aget-object p1, v0, p1

    iput p4, p1, Lcom/threed/jpct/SimpleVector;->x:F

    iput p5, p1, Lcom/threed/jpct/SimpleVector;->y:F

    iput p6, p1, Lcom/threed/jpct/SimpleVector;->z:F

    return-void
.end method

.method public setParent(Lcom/threed/jpct/OcTreeNode;)V
    .locals 0

    iput-object p1, p0, Lcom/threed/jpct/OcTreeNode;->parent:Lcom/threed/jpct/OcTreeNode;

    return-void
.end method

.method public sphereIntersectsNode(FFFF)Z
    .locals 2

    add-float v0, p1, p4

    iget v1, p0, Lcom/threed/jpct/OcTreeNode;->xLow:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    sub-float/2addr p1, p4

    iget v0, p0, Lcom/threed/jpct/OcTreeNode;->xHigh:F

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_1

    add-float p1, p2, p4

    iget v0, p0, Lcom/threed/jpct/OcTreeNode;->yLow:F

    cmpg-float p1, p1, v0

    if-ltz p1, :cond_1

    sub-float/2addr p2, p4

    iget p1, p0, Lcom/threed/jpct/OcTreeNode;->yHigh:F

    cmpl-float p1, p2, p1

    if-gtz p1, :cond_1

    add-float p1, p3, p4

    iget p2, p0, Lcom/threed/jpct/OcTreeNode;->zLow:F

    cmpg-float p1, p1, p2

    if-ltz p1, :cond_1

    sub-float/2addr p3, p4

    iget p1, p0, Lcom/threed/jpct/OcTreeNode;->zHigh:F

    cmpl-float p1, p3, p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
