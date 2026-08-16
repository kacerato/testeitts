.class public final Lcom/threed/jpct/OcTree;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final COLLISION_DONT_USE:Z = false

.field public static final COLLISION_USE:Z = true

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_OPTIMIZED:I = 0x1

.field public static final RENDERING_DONT_USE:Z = false

.field public static final RENDERING_USE:Z = true

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private allLeafs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/threed/jpct/OcTreeNode;",
            ">;"
        }
    .end annotation
.end field

.field private curLeafs:I

.field private leafCount:[I

.field private leafList:[Lcom/threed/jpct/OcTreeNode;

.field leafs:I

.field maxDepth:I

.field maxPoly:I

.field mode:I

.field nodes:I

.field private objArray:[Ljava/lang/Object;

.field private objMesh:Lcom/threed/jpct/Mesh;

.field private radiusMul:F

.field root:Lcom/threed/jpct/OcTreeNode;

.field private threadsBuffer:[Lcom/threed/jpct/OcTreeNode;

.field totalPolys:I

.field tris:[I

.field useForCollision:Z

.field useForRendering:Z

.field private used:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private visibleLeafs:[Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/threed/jpct/OcTree;->curLeafs:I

    const/4 v1, 0x0

    .line 83
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->leafList:[Lcom/threed/jpct/OcTreeNode;

    .line 84
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->visibleLeafs:[Z

    .line 85
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    .line 86
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->threadsBuffer:[Lcom/threed/jpct/OcTreeNode;

    .line 87
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->allLeafs:Ljava/util/ArrayList;

    .line 88
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/threed/jpct/OcTree;->used:Ljava/util/HashSet;

    const/4 v2, 0x1

    .line 89
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/threed/jpct/OcTree;->leafCount:[I

    const/4 v3, 0x2

    .line 90
    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, p0, Lcom/threed/jpct/OcTree;->objArray:[Ljava/lang/Object;

    .line 91
    iput v0, p0, Lcom/threed/jpct/OcTree;->leafs:I

    .line 92
    iput v0, p0, Lcom/threed/jpct/OcTree;->nodes:I

    .line 93
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->tris:[I

    .line 94
    iput v0, p0, Lcom/threed/jpct/OcTree;->maxPoly:I

    const/4 v3, -0x1

    .line 95
    iput v3, p0, Lcom/threed/jpct/OcTree;->maxDepth:I

    .line 96
    iput v0, p0, Lcom/threed/jpct/OcTree;->totalPolys:I

    .line 97
    iput-boolean v2, p0, Lcom/threed/jpct/OcTree;->useForCollision:Z

    .line 98
    iput-boolean v2, p0, Lcom/threed/jpct/OcTree;->useForRendering:Z

    .line 99
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->root:Lcom/threed/jpct/OcTreeNode;

    return-void
.end method

.method public constructor <init>(Lcom/threed/jpct/Mesh;II)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/threed/jpct/OcTree;->curLeafs:I

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->leafList:[Lcom/threed/jpct/OcTreeNode;

    .line 4
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->visibleLeafs:[Z

    .line 5
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    .line 6
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->threadsBuffer:[Lcom/threed/jpct/OcTreeNode;

    .line 7
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->allLeafs:Ljava/util/ArrayList;

    .line 8
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/threed/jpct/OcTree;->used:Ljava/util/HashSet;

    const/4 v2, 0x1

    .line 9
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/threed/jpct/OcTree;->leafCount:[I

    const/4 v3, 0x2

    .line 10
    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, p0, Lcom/threed/jpct/OcTree;->objArray:[Ljava/lang/Object;

    .line 11
    iput v0, p0, Lcom/threed/jpct/OcTree;->leafs:I

    .line 12
    iput v0, p0, Lcom/threed/jpct/OcTree;->nodes:I

    .line 13
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->tris:[I

    .line 14
    iput v0, p0, Lcom/threed/jpct/OcTree;->maxPoly:I

    const/4 v3, -0x1

    .line 15
    iput v3, p0, Lcom/threed/jpct/OcTree;->maxDepth:I

    .line 16
    iput v0, p0, Lcom/threed/jpct/OcTree;->totalPolys:I

    .line 17
    iput-boolean v2, p0, Lcom/threed/jpct/OcTree;->useForCollision:Z

    .line 18
    iput-boolean v2, p0, Lcom/threed/jpct/OcTree;->useForRendering:Z

    .line 19
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->root:Lcom/threed/jpct/OcTreeNode;

    .line 20
    invoke-direct {p0, p1, p2, v3, p3}, Lcom/threed/jpct/OcTree;->initOcTree(Lcom/threed/jpct/Mesh;III)V

    return-void
.end method

.method public constructor <init>(Lcom/threed/jpct/Mesh;III)V
    .locals 4

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/threed/jpct/OcTree;->curLeafs:I

    const/4 v1, 0x0

    .line 23
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->leafList:[Lcom/threed/jpct/OcTreeNode;

    .line 24
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->visibleLeafs:[Z

    .line 25
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    .line 26
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->threadsBuffer:[Lcom/threed/jpct/OcTreeNode;

    .line 27
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->allLeafs:Ljava/util/ArrayList;

    .line 28
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/threed/jpct/OcTree;->used:Ljava/util/HashSet;

    const/4 v2, 0x1

    .line 29
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/threed/jpct/OcTree;->leafCount:[I

    const/4 v3, 0x2

    .line 30
    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, p0, Lcom/threed/jpct/OcTree;->objArray:[Ljava/lang/Object;

    .line 31
    iput v0, p0, Lcom/threed/jpct/OcTree;->leafs:I

    .line 32
    iput v0, p0, Lcom/threed/jpct/OcTree;->nodes:I

    .line 33
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->tris:[I

    .line 34
    iput v0, p0, Lcom/threed/jpct/OcTree;->maxPoly:I

    const/4 v3, -0x1

    .line 35
    iput v3, p0, Lcom/threed/jpct/OcTree;->maxDepth:I

    .line 36
    iput v0, p0, Lcom/threed/jpct/OcTree;->totalPolys:I

    .line 37
    iput-boolean v2, p0, Lcom/threed/jpct/OcTree;->useForCollision:Z

    .line 38
    iput-boolean v2, p0, Lcom/threed/jpct/OcTree;->useForRendering:Z

    .line 39
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->root:Lcom/threed/jpct/OcTreeNode;

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/threed/jpct/OcTree;->initOcTree(Lcom/threed/jpct/Mesh;III)V

    return-void
.end method

.method public constructor <init>(Lcom/threed/jpct/Object3D;II)V
    .locals 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/threed/jpct/OcTree;->curLeafs:I

    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->leafList:[Lcom/threed/jpct/OcTreeNode;

    .line 44
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->visibleLeafs:[Z

    .line 45
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    .line 46
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->threadsBuffer:[Lcom/threed/jpct/OcTreeNode;

    .line 47
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->allLeafs:Ljava/util/ArrayList;

    .line 48
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/threed/jpct/OcTree;->used:Ljava/util/HashSet;

    const/4 v2, 0x1

    .line 49
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/threed/jpct/OcTree;->leafCount:[I

    const/4 v3, 0x2

    .line 50
    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, p0, Lcom/threed/jpct/OcTree;->objArray:[Ljava/lang/Object;

    .line 51
    iput v0, p0, Lcom/threed/jpct/OcTree;->leafs:I

    .line 52
    iput v0, p0, Lcom/threed/jpct/OcTree;->nodes:I

    .line 53
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->tris:[I

    .line 54
    iput v0, p0, Lcom/threed/jpct/OcTree;->maxPoly:I

    const/4 v3, -0x1

    .line 55
    iput v3, p0, Lcom/threed/jpct/OcTree;->maxDepth:I

    .line 56
    iput v0, p0, Lcom/threed/jpct/OcTree;->totalPolys:I

    .line 57
    iput-boolean v2, p0, Lcom/threed/jpct/OcTree;->useForCollision:Z

    .line 58
    iput-boolean v2, p0, Lcom/threed/jpct/OcTree;->useForRendering:Z

    .line 59
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->root:Lcom/threed/jpct/OcTreeNode;

    .line 60
    invoke-virtual {p1}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object p1

    invoke-direct {p0, p1, p2, v3, p3}, Lcom/threed/jpct/OcTree;->initOcTree(Lcom/threed/jpct/Mesh;III)V

    return-void
.end method

.method public constructor <init>(Lcom/threed/jpct/Object3D;III)V
    .locals 4

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/threed/jpct/OcTree;->curLeafs:I

    const/4 v1, 0x0

    .line 63
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->leafList:[Lcom/threed/jpct/OcTreeNode;

    .line 64
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->visibleLeafs:[Z

    .line 65
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    .line 66
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->threadsBuffer:[Lcom/threed/jpct/OcTreeNode;

    .line 67
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->allLeafs:Ljava/util/ArrayList;

    .line 68
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/threed/jpct/OcTree;->used:Ljava/util/HashSet;

    const/4 v2, 0x1

    .line 69
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/threed/jpct/OcTree;->leafCount:[I

    const/4 v3, 0x2

    .line 70
    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, p0, Lcom/threed/jpct/OcTree;->objArray:[Ljava/lang/Object;

    .line 71
    iput v0, p0, Lcom/threed/jpct/OcTree;->leafs:I

    .line 72
    iput v0, p0, Lcom/threed/jpct/OcTree;->nodes:I

    .line 73
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->tris:[I

    .line 74
    iput v0, p0, Lcom/threed/jpct/OcTree;->maxPoly:I

    const/4 v3, -0x1

    .line 75
    iput v3, p0, Lcom/threed/jpct/OcTree;->maxDepth:I

    .line 76
    iput v0, p0, Lcom/threed/jpct/OcTree;->totalPolys:I

    .line 77
    iput-boolean v2, p0, Lcom/threed/jpct/OcTree;->useForCollision:Z

    .line 78
    iput-boolean v2, p0, Lcom/threed/jpct/OcTree;->useForRendering:Z

    .line 79
    iput-object v1, p0, Lcom/threed/jpct/OcTree;->root:Lcom/threed/jpct/OcTreeNode;

    .line 80
    invoke-virtual {p1}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/threed/jpct/OcTree;->initOcTree(Lcom/threed/jpct/Mesh;III)V

    return-void
.end method

.method private buildTree()V
    .locals 10

    invoke-static {}, Lcom/threed/jpct/OcTreeNode;->resetNodeID()V

    new-instance v0, Lcom/threed/jpct/OcTreeNode;

    invoke-direct {v0}, Lcom/threed/jpct/OcTreeNode;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/OcTree;->root:Lcom/threed/jpct/OcTreeNode;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Building octree for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget v1, v1, Lcom/threed/jpct/Mesh;->anzTri:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " triangles!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    invoke-virtual {v0}, Lcom/threed/jpct/Mesh;->calcBoundingBox()[F

    move-result-object v0

    iget-object v2, p0, Lcom/threed/jpct/OcTree;->root:Lcom/threed/jpct/OcTreeNode;

    const/4 v9, 0x0

    aget v3, v0, v9

    aget v4, v0, v1

    const/4 v5, 0x4

    aget v5, v0, v5

    const/4 v6, 0x1

    aget v6, v0, v6

    const/4 v7, 0x3

    aget v7, v0, v7

    const/4 v8, 0x5

    aget v8, v0, v8

    invoke-virtual/range {v2 .. v8}, Lcom/threed/jpct/OcTreeNode;->setDimensions(FFFFFF)V

    iget-object v0, p0, Lcom/threed/jpct/OcTree;->root:Lcom/threed/jpct/OcTreeNode;

    invoke-direct {p0, v0, v9}, Lcom/threed/jpct/OcTree;->createChildren(Lcom/threed/jpct/OcTreeNode;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Octree constructed with "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/threed/jpct/OcTree;->nodes:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " nodes / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/threed/jpct/OcTree;->leafs:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " leafs."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    return-void
.end method

.method private createChildren(Lcom/threed/jpct/OcTreeNode;I)Z
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    iget v1, v0, Lcom/threed/jpct/OcTree;->nodes:I

    const/4 v12, 0x1

    add-int/2addr v1, v12

    iput v1, v0, Lcom/threed/jpct/OcTree;->nodes:I

    add-int/lit8 v13, p2, 0x1

    const/4 v14, 0x0

    if-eqz v11, :cond_14

    move v15, v14

    move/from16 v16, v15

    :goto_0
    iget-object v1, v0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget v2, v1, Lcom/threed/jpct/Mesh;->anzTri:I

    const/16 v17, 0x2

    if-lt v15, v2, :cond_0

    move/from16 v15, v16

    goto/16 :goto_3

    :cond_0
    iget-object v2, v1, Lcom/threed/jpct/Mesh;->coords:[I

    iget-object v1, v1, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v1, v1, v15

    aget v1, v1, v14

    aget v2, v2, v1

    iget-object v3, v0, Lcom/threed/jpct/OcTree;->used:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, v0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v1, Lcom/threed/jpct/Mesh;->coords:[I

    iget-object v4, v1, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v4, v4, v15

    aget v5, v4, v12

    aget v5, v3, v5

    aget v4, v4, v17

    aget v3, v3, v4

    iget-object v4, v1, Lcom/threed/jpct/Mesh;->xOrg:[F

    aget v18, v4, v2

    iget-object v6, v1, Lcom/threed/jpct/Mesh;->yOrg:[F

    aget v19, v6, v2

    iget-object v1, v1, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget v20, v1, v2

    aget v21, v4, v5

    aget v22, v6, v5

    aget v23, v1, v5

    aget v24, v4, v3

    aget v25, v6, v3

    aget v26, v1, v3

    iget-object v1, v0, Lcom/threed/jpct/OcTree;->tris:[I

    array-length v2, v1

    add-int/lit8 v10, v16, 0x1

    if-ge v2, v10, :cond_1

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    array-length v3, v1

    invoke-static {v1, v14, v2, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, v0, Lcom/threed/jpct/OcTree;->tris:[I

    :cond_1
    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    move/from16 v5, v21

    move/from16 v6, v22

    move/from16 v7, v23

    move/from16 v8, v24

    move/from16 v9, v25

    move/from16 v27, v10

    move/from16 v10, v26

    invoke-virtual/range {v1 .. v10}, Lcom/threed/jpct/OcTreeNode;->completeFit(FFFFFFFFF)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/threed/jpct/OcTree;->tris:[I

    aput v15, v1, v16

    :goto_1
    move/from16 v1, v27

    goto :goto_2

    :cond_2
    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    move/from16 v5, v21

    move/from16 v6, v22

    move/from16 v7, v23

    move/from16 v8, v24

    move/from16 v9, v25

    move/from16 v10, v26

    invoke-virtual/range {v1 .. v10}, Lcom/threed/jpct/OcTreeNode;->partialFit(FFFFFFFFF)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/threed/jpct/OcTree;->tris:[I

    aput v15, v1, v16

    goto :goto_1

    :cond_3
    move/from16 v1, v16

    :goto_2
    iget v2, v0, Lcom/threed/jpct/OcTree;->maxPoly:I

    if-le v1, v2, :cond_12

    iget v2, v0, Lcom/threed/jpct/OcTree;->maxDepth:I

    add-int/2addr v2, v12

    if-eq v13, v2, :cond_12

    move v15, v1

    :goto_3
    iget v1, v0, Lcom/threed/jpct/OcTree;->maxPoly:I

    if-le v15, v1, :cond_4

    iget v1, v0, Lcom/threed/jpct/OcTree;->maxDepth:I

    add-int/2addr v1, v12

    if-ne v13, v1, :cond_5

    :cond_4
    move v2, v12

    goto/16 :goto_4

    :cond_5
    iget v1, v11, Lcom/threed/jpct/OcTreeNode;->xLow:F

    iget v9, v11, Lcom/threed/jpct/OcTreeNode;->yLow:F

    iget v10, v11, Lcom/threed/jpct/OcTreeNode;->zLow:F

    iget v15, v11, Lcom/threed/jpct/OcTreeNode;->xHigh:F

    iget v8, v11, Lcom/threed/jpct/OcTreeNode;->yHigh:F

    iget v7, v11, Lcom/threed/jpct/OcTreeNode;->zHigh:F

    sub-float v2, v15, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v16, v2, v1

    sub-float v2, v8, v9

    div-float/2addr v2, v3

    add-float v17, v2, v9

    sub-float v2, v7, v10

    div-float/2addr v2, v3

    add-float v18, v2, v10

    new-instance v6, Lcom/threed/jpct/OcTreeNode;

    invoke-direct {v6}, Lcom/threed/jpct/OcTreeNode;-><init>()V

    new-instance v5, Lcom/threed/jpct/OcTreeNode;

    invoke-direct {v5}, Lcom/threed/jpct/OcTreeNode;-><init>()V

    new-instance v4, Lcom/threed/jpct/OcTreeNode;

    invoke-direct {v4}, Lcom/threed/jpct/OcTreeNode;-><init>()V

    new-instance v3, Lcom/threed/jpct/OcTreeNode;

    invoke-direct {v3}, Lcom/threed/jpct/OcTreeNode;-><init>()V

    new-instance v2, Lcom/threed/jpct/OcTreeNode;

    invoke-direct {v2}, Lcom/threed/jpct/OcTreeNode;-><init>()V

    new-instance v14, Lcom/threed/jpct/OcTreeNode;

    invoke-direct {v14}, Lcom/threed/jpct/OcTreeNode;-><init>()V

    new-instance v12, Lcom/threed/jpct/OcTreeNode;

    invoke-direct {v12}, Lcom/threed/jpct/OcTreeNode;-><init>()V

    new-instance v0, Lcom/threed/jpct/OcTreeNode;

    invoke-direct {v0}, Lcom/threed/jpct/OcTreeNode;-><init>()V

    move-object/from16 v20, v2

    move-object v2, v6

    move-object/from16 v21, v3

    move v3, v1

    move-object/from16 v22, v4

    move/from16 v4, v17

    move-object/from16 v23, v5

    move v5, v10

    move/from16 v24, v13

    move-object v13, v6

    move/from16 v6, v16

    move/from16 v25, v7

    move v7, v8

    move/from16 v26, v8

    move/from16 v8, v18

    invoke-virtual/range {v2 .. v8}, Lcom/threed/jpct/OcTreeNode;->setDimensions(FFFFFF)V

    move-object/from16 v2, v23

    move/from16 v5, v18

    move/from16 v7, v26

    move/from16 v8, v25

    invoke-virtual/range {v2 .. v8}, Lcom/threed/jpct/OcTreeNode;->setDimensions(FFFFFF)V

    move-object/from16 v2, v22

    move/from16 v3, v16

    move v5, v10

    move v6, v15

    move/from16 v8, v18

    invoke-virtual/range {v2 .. v8}, Lcom/threed/jpct/OcTreeNode;->setDimensions(FFFFFF)V

    move-object/from16 v2, v21

    move/from16 v5, v18

    move/from16 v8, v25

    invoke-virtual/range {v2 .. v8}, Lcom/threed/jpct/OcTreeNode;->setDimensions(FFFFFF)V

    move-object/from16 v2, v20

    move v3, v1

    move v4, v9

    move v5, v10

    move/from16 v6, v16

    move/from16 v7, v17

    move/from16 v8, v18

    invoke-virtual/range {v2 .. v8}, Lcom/threed/jpct/OcTreeNode;->setDimensions(FFFFFF)V

    move-object v2, v14

    move/from16 v5, v18

    move/from16 v8, v25

    invoke-virtual/range {v2 .. v8}, Lcom/threed/jpct/OcTreeNode;->setDimensions(FFFFFF)V

    move-object v2, v12

    move/from16 v3, v16

    move v5, v10

    move v6, v15

    move/from16 v8, v18

    invoke-virtual/range {v2 .. v8}, Lcom/threed/jpct/OcTreeNode;->setDimensions(FFFFFF)V

    move-object v2, v0

    move/from16 v5, v18

    move/from16 v8, v25

    invoke-virtual/range {v2 .. v8}, Lcom/threed/jpct/OcTreeNode;->setDimensions(FFFFFF)V

    invoke-virtual {v11, v13}, Lcom/threed/jpct/OcTreeNode;->addChild(Lcom/threed/jpct/OcTreeNode;)V

    move-object v1, v0

    move/from16 v2, v24

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2}, Lcom/threed/jpct/OcTree;->createChildren(Lcom/threed/jpct/OcTreeNode;I)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v13}, Lcom/threed/jpct/OcTreeNode;->getChildCount()I

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v11, v13}, Lcom/threed/jpct/OcTreeNode;->removeChild(Lcom/threed/jpct/OcTreeNode;)V

    iget v3, v0, Lcom/threed/jpct/OcTree;->nodes:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/threed/jpct/OcTree;->nodes:I

    :cond_6
    move-object/from16 v3, v22

    invoke-virtual {v11, v3}, Lcom/threed/jpct/OcTreeNode;->addChild(Lcom/threed/jpct/OcTreeNode;)V

    invoke-direct {v0, v3, v2}, Lcom/threed/jpct/OcTree;->createChildren(Lcom/threed/jpct/OcTreeNode;I)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v3}, Lcom/threed/jpct/OcTreeNode;->getChildCount()I

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v11, v3}, Lcom/threed/jpct/OcTreeNode;->removeChild(Lcom/threed/jpct/OcTreeNode;)V

    iget v3, v0, Lcom/threed/jpct/OcTree;->nodes:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/threed/jpct/OcTree;->nodes:I

    :cond_7
    move-object/from16 v3, v23

    invoke-virtual {v11, v3}, Lcom/threed/jpct/OcTreeNode;->addChild(Lcom/threed/jpct/OcTreeNode;)V

    invoke-direct {v0, v3, v2}, Lcom/threed/jpct/OcTree;->createChildren(Lcom/threed/jpct/OcTreeNode;I)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v3}, Lcom/threed/jpct/OcTreeNode;->getChildCount()I

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v11, v3}, Lcom/threed/jpct/OcTreeNode;->removeChild(Lcom/threed/jpct/OcTreeNode;)V

    iget v3, v0, Lcom/threed/jpct/OcTree;->nodes:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/threed/jpct/OcTree;->nodes:I

    :cond_8
    move-object/from16 v3, v21

    invoke-virtual {v11, v3}, Lcom/threed/jpct/OcTreeNode;->addChild(Lcom/threed/jpct/OcTreeNode;)V

    invoke-direct {v0, v3, v2}, Lcom/threed/jpct/OcTree;->createChildren(Lcom/threed/jpct/OcTreeNode;I)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v3}, Lcom/threed/jpct/OcTreeNode;->getChildCount()I

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v11, v3}, Lcom/threed/jpct/OcTreeNode;->removeChild(Lcom/threed/jpct/OcTreeNode;)V

    iget v3, v0, Lcom/threed/jpct/OcTree;->nodes:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/threed/jpct/OcTree;->nodes:I

    :cond_9
    move-object/from16 v3, v20

    invoke-virtual {v11, v3}, Lcom/threed/jpct/OcTreeNode;->addChild(Lcom/threed/jpct/OcTreeNode;)V

    invoke-direct {v0, v3, v2}, Lcom/threed/jpct/OcTree;->createChildren(Lcom/threed/jpct/OcTreeNode;I)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v3}, Lcom/threed/jpct/OcTreeNode;->getChildCount()I

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v11, v3}, Lcom/threed/jpct/OcTreeNode;->removeChild(Lcom/threed/jpct/OcTreeNode;)V

    iget v3, v0, Lcom/threed/jpct/OcTree;->nodes:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/threed/jpct/OcTree;->nodes:I

    :cond_a
    invoke-virtual {v11, v12}, Lcom/threed/jpct/OcTreeNode;->addChild(Lcom/threed/jpct/OcTreeNode;)V

    invoke-direct {v0, v12, v2}, Lcom/threed/jpct/OcTree;->createChildren(Lcom/threed/jpct/OcTreeNode;I)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v12}, Lcom/threed/jpct/OcTreeNode;->getChildCount()I

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v11, v12}, Lcom/threed/jpct/OcTreeNode;->removeChild(Lcom/threed/jpct/OcTreeNode;)V

    iget v3, v0, Lcom/threed/jpct/OcTree;->nodes:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/threed/jpct/OcTree;->nodes:I

    :cond_b
    invoke-virtual {v11, v14}, Lcom/threed/jpct/OcTreeNode;->addChild(Lcom/threed/jpct/OcTreeNode;)V

    invoke-direct {v0, v14, v2}, Lcom/threed/jpct/OcTree;->createChildren(Lcom/threed/jpct/OcTreeNode;I)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v14}, Lcom/threed/jpct/OcTreeNode;->getChildCount()I

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v11, v14}, Lcom/threed/jpct/OcTreeNode;->removeChild(Lcom/threed/jpct/OcTreeNode;)V

    iget v3, v0, Lcom/threed/jpct/OcTree;->nodes:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/threed/jpct/OcTree;->nodes:I

    :cond_c
    invoke-virtual {v11, v1}, Lcom/threed/jpct/OcTreeNode;->addChild(Lcom/threed/jpct/OcTreeNode;)V

    invoke-direct {v0, v1, v2}, Lcom/threed/jpct/OcTree;->createChildren(Lcom/threed/jpct/OcTreeNode;I)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {v1}, Lcom/threed/jpct/OcTreeNode;->getChildCount()I

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {v11, v1}, Lcom/threed/jpct/OcTreeNode;->removeChild(Lcom/threed/jpct/OcTreeNode;)V

    iget v1, v0, Lcom/threed/jpct/OcTree;->nodes:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/threed/jpct/OcTree;->nodes:I

    goto/16 :goto_6

    :goto_4
    if-eqz v15, :cond_10

    const/4 v12, 0x0

    :goto_5
    if-lt v12, v15, :cond_e

    iget v1, v0, Lcom/threed/jpct/OcTree;->mode:I

    if-ne v1, v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/OcTreeNode;->packPoints()V

    :cond_d
    iget v1, v0, Lcom/threed/jpct/OcTree;->totalPolys:I

    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/OcTreeNode;->getPolyCount()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Lcom/threed/jpct/OcTree;->totalPolys:I

    iget v1, v0, Lcom/threed/jpct/OcTree;->leafs:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/threed/jpct/OcTree;->leafs:I

    goto/16 :goto_6

    :cond_e
    iget-object v1, v0, Lcom/threed/jpct/OcTree;->tris:[I

    aget v13, v1, v12

    iget-object v1, v0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v1, Lcom/threed/jpct/Mesh;->coords:[I

    iget-object v4, v1, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v4, v4, v13

    const/4 v5, 0x0

    aget v6, v4, v5

    aget v14, v3, v6

    aget v5, v4, v2

    aget v16, v3, v5

    aget v2, v4, v17

    aget v18, v3, v2

    iget-object v2, v1, Lcom/threed/jpct/Mesh;->xOrg:[F

    aget v20, v2, v14

    iget-object v3, v1, Lcom/threed/jpct/Mesh;->yOrg:[F

    aget v21, v3, v14

    iget-object v1, v1, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget v22, v1, v14

    aget v23, v2, v16

    aget v24, v3, v16

    aget v25, v1, v16

    aget v26, v2, v18

    aget v27, v3, v18

    aget v28, v1, v18

    move-object/from16 v1, p1

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    move/from16 v5, v23

    move/from16 v6, v24

    move/from16 v7, v25

    move/from16 v8, v26

    move/from16 v9, v27

    move/from16 v10, v28

    invoke-virtual/range {v1 .. v10}, Lcom/threed/jpct/OcTreeNode;->partialFit(FFFFFFFFF)Z

    move-result v1

    if-eqz v1, :cond_f

    move-object/from16 v1, p1

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    move/from16 v5, v23

    move/from16 v6, v24

    move/from16 v7, v25

    move/from16 v8, v26

    move/from16 v9, v27

    move/from16 v10, v28

    invoke-virtual/range {v1 .. v10}, Lcom/threed/jpct/OcTreeNode;->extendDimensions(FFFFFFFFF)V

    :cond_f
    move-object/from16 v1, p1

    move v2, v15

    move v3, v13

    move v4, v14

    move/from16 v5, v16

    move/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Lcom/threed/jpct/OcTreeNode;->addTriangle(IIIII)V

    iget-object v1, v0, Lcom/threed/jpct/OcTree;->used:Ljava/util/HashSet;

    iget-object v2, v0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v2, v2, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v2, v2, v13

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/threed/jpct/OcTree;->used:Ljava/util/HashSet;

    iget-object v2, v0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v2, v2, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v2, v2, v13

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/threed/jpct/OcTree;->used:Ljava/util/HashSet;

    iget-object v2, v0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v2, v2, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v2, v2, v13

    aget v2, v2, v17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x1

    goto/16 :goto_5

    :cond_10
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/OcTreeNode;->getPolyCount()I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v3, 0x1

    return v3

    :cond_11
    const/4 v4, 0x0

    return v4

    :cond_12
    move v3, v12

    move v2, v13

    move v4, v14

    move/from16 v16, v1

    goto :goto_7

    :cond_13
    move v3, v12

    move v2, v13

    move v4, v14

    :goto_7
    add-int/lit8 v15, v15, 0x1

    move v13, v2

    move v12, v3

    move v14, v4

    goto/16 :goto_0

    :cond_14
    move v4, v14

    return v4
.end method

.method private fillLeafs(Lcom/threed/jpct/OcTreeNode;)V
    .locals 2

    invoke-virtual {p1}, Lcom/threed/jpct/OcTreeNode;->getPolyCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/OcTree;->allLeafs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/threed/jpct/OcTreeNode;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/threed/jpct/OcTreeNode;->getChildren()[Lcom/threed/jpct/OcTreeNode;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/threed/jpct/OcTree;->fillLeafs(Lcom/threed/jpct/OcTreeNode;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getColliderLeafs(Lcom/threed/jpct/OcTreeNode;FFFF[I[Lcom/threed/jpct/OcTreeNode;)[Ljava/lang/Object;
    .locals 15

    move-object v8, p0

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/OcTreeNode;->getChildCount()I

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/OcTreeNode;->getPolyCount()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v9

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p5}, Lcom/threed/jpct/OcTreeNode;->sphereIntersectsNode(FFFF)Z

    move-result v0

    .line 5
    :goto_1
    sget-object v1, Lcom/threed/jpct/World;->defaultThread:Ljava/lang/Thread;

    if-nez v1, :cond_2

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v1}, Lcom/threed/jpct/World;->setDefaultThread(Ljava/lang/Thread;)V

    .line 7
    sget-object v1, Lcom/threed/jpct/World;->defaultThread:Ljava/lang/Thread;

    :cond_2
    if-eqz v0, :cond_6

    if-nez p7, :cond_6

    if-eqz v1, :cond_4

    .line 8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v2, v1, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_3

    iget-object v2, v8, Lcom/threed/jpct/OcTree;->threadsBuffer:[Lcom/threed/jpct/OcTreeNode;

    if-nez v2, :cond_3

    goto :goto_2

    .line 9
    :cond_3
    iget-object v1, v8, Lcom/threed/jpct/OcTree;->threadsBuffer:[Lcom/threed/jpct/OcTreeNode;

    if-eqz v1, :cond_6

    move-object v10, v1

    goto :goto_3

    .line 10
    :cond_4
    :goto_2
    iget v2, v8, Lcom/threed/jpct/OcTree;->leafs:I

    new-array v2, v2, [Lcom/threed/jpct/OcTreeNode;

    if-eqz v1, :cond_5

    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v1, v3, :cond_5

    .line 12
    iput-object v2, v8, Lcom/threed/jpct/OcTree;->threadsBuffer:[Lcom/threed/jpct/OcTreeNode;

    :cond_5
    move-object v10, v2

    goto :goto_3

    :cond_6
    move-object/from16 v10, p7

    .line 13
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/OcTreeNode;->getPolyCount()I

    move-result v1

    const/4 v11, 0x1

    if-eqz v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/OcTreeNode;->getChildCount()I

    move-result v1

    if-nez v1, :cond_7

    if-eqz v0, :cond_7

    .line 14
    aget v0, p6, v9

    aput-object p1, v10, v0

    add-int/2addr v0, v11

    .line 15
    aput v0, p6, v9

    goto :goto_5

    :cond_7
    if-eqz v0, :cond_9

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/OcTreeNode;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_9

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/OcTreeNode;->getChildCount()I

    move-result v12

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/OcTreeNode;->getChildren()[Lcom/threed/jpct/OcTreeNode;

    move-result-object v13

    move v14, v9

    :goto_4
    if-lt v14, v12, :cond_8

    goto :goto_5

    .line 19
    :cond_8
    aget-object v1, v13, v14

    move-object v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/threed/jpct/OcTree;->getColliderLeafs(Lcom/threed/jpct/OcTreeNode;FFFF[I[Lcom/threed/jpct/OcTreeNode;)[Ljava/lang/Object;

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 20
    :cond_9
    :goto_5
    iget-object v0, v8, Lcom/threed/jpct/OcTree;->objArray:[Ljava/lang/Object;

    aget v1, p6, v9

    invoke-static {v1}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v9

    .line 21
    iget-object v0, v8, Lcom/threed/jpct/OcTree;->objArray:[Ljava/lang/Object;

    aput-object v10, v0, v11

    return-object v0
.end method

.method private getVisibleLeafs(Lcom/threed/jpct/OcTreeNode;Lcom/threed/jpct/Matrix;FF[I)V
    .locals 9

    .line 5
    invoke-virtual {p1}, Lcom/threed/jpct/OcTreeNode;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/threed/jpct/OcTreeNode;->getPolyCount()I

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    move v4, v3

    goto :goto_2

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {p1, p2, p3, p4}, Lcom/threed/jpct/OcTreeNode;->isVisible(Lcom/threed/jpct/Matrix;FF)I

    move-result v3

    const/16 v4, 0x3e7

    if-ne v3, v4, :cond_3

    if-eqz v0, :cond_2

    .line 8
    invoke-direct {p0, p1, p5}, Lcom/threed/jpct/OcTree;->markAllLeafsAsVisible(Lcom/threed/jpct/OcTreeNode;[I)V

    move v4, v1

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    move v4, v3

    goto :goto_1

    :cond_3
    move v4, v2

    :goto_1
    if-ne v3, v1, :cond_4

    move v3, v1

    goto :goto_2

    :cond_4
    move v3, v2

    :goto_2
    if-eqz v3, :cond_5

    .line 9
    invoke-virtual {p1}, Lcom/threed/jpct/OcTreeNode;->getPolyCount()I

    move-result v5

    if-eqz v5, :cond_5

    if-nez v0, :cond_5

    .line 10
    iget-object p2, p0, Lcom/threed/jpct/OcTree;->leafList:[Lcom/threed/jpct/OcTreeNode;

    aget p3, p5, v2

    aput-object p1, p2, p3

    .line 11
    iget-object p1, p0, Lcom/threed/jpct/OcTree;->visibleLeafs:[Z

    aput-boolean v4, p1, p3

    add-int/2addr p3, v1

    .line 12
    aput p3, p5, v2

    goto :goto_4

    :cond_5
    if-eqz v3, :cond_7

    if-eqz v0, :cond_7

    .line 13
    invoke-virtual {p1}, Lcom/threed/jpct/OcTreeNode;->getChildren()[Lcom/threed/jpct/OcTreeNode;

    move-result-object p1

    :goto_3
    if-lt v2, v0, :cond_6

    goto :goto_4

    .line 14
    :cond_6
    aget-object v4, p1, v2

    move-object v3, p0

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/threed/jpct/OcTree;->getVisibleLeafs(Lcom/threed/jpct/OcTreeNode;Lcom/threed/jpct/Matrix;FF[I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    return-void
.end method

.method private initOcTree(Lcom/threed/jpct/Mesh;III)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/threed/jpct/OcTree;->leafs:I

    iput v0, p0, Lcom/threed/jpct/OcTree;->nodes:I

    iput p3, p0, Lcom/threed/jpct/OcTree;->maxDepth:I

    iput p2, p0, Lcom/threed/jpct/OcTree;->maxPoly:I

    add-int/lit8 p2, p2, 0x1

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/threed/jpct/OcTree;->tris:[I

    iput-object p1, p0, Lcom/threed/jpct/OcTree;->objMesh:Lcom/threed/jpct/Mesh;

    invoke-direct {p0}, Lcom/threed/jpct/OcTree;->buildTree()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/threed/jpct/OcTree;->used:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/threed/jpct/OcTree;->tris:[I

    iput p4, p0, Lcom/threed/jpct/OcTree;->mode:I

    iput-boolean v0, p0, Lcom/threed/jpct/OcTree;->useForCollision:Z

    invoke-virtual {p0}, Lcom/threed/jpct/OcTree;->postConstruct()V

    return-void
.end method

.method private markAllLeafsAsVisible(Lcom/threed/jpct/OcTreeNode;[I)V
    .locals 3

    invoke-virtual {p1}, Lcom/threed/jpct/OcTreeNode;->getPolyCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/threed/jpct/OcTreeNode;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/OcTree;->leafList:[Lcom/threed/jpct/OcTreeNode;

    aget v2, p2, v1

    aput-object p1, v0, v2

    iget-object p1, p0, Lcom/threed/jpct/OcTree;->visibleLeafs:[Z

    const/4 v0, 0x1

    aput-boolean v0, p1, v2

    add-int/2addr v2, v0

    aput v2, p2, v1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/threed/jpct/OcTreeNode;->getChildren()[Lcom/threed/jpct/OcTreeNode;

    move-result-object v0

    invoke-virtual {p1}, Lcom/threed/jpct/OcTreeNode;->getChildCount()I

    move-result p1

    :goto_0
    if-lt v1, p1, :cond_1

    :goto_1
    return-void

    :cond_1
    aget-object v2, v0, v1

    invoke-direct {p0, v2, p2}, Lcom/threed/jpct/OcTree;->markAllLeafsAsVisible(Lcom/threed/jpct/OcTreeNode;[I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getAffectedLeafs(FFFF)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)",
            "Ljava/util/List<",
            "Lcom/threed/jpct/OcTreeNode;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/threed/jpct/OcTree;->getColliderLeafs(FFFF)[Ljava/lang/Object;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    const/4 p3, 0x0

    aget-object p4, p1, p3

    check-cast p4, Ljava/lang/Integer;

    :goto_0
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt p3, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, [Lcom/threed/jpct/OcTreeNode;

    aget-object v0, v0, p3

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p2
.end method

.method public getColliderLeafs(FFFF)[Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v6, p0, Lcom/threed/jpct/OcTree;->leafCount:[I

    const/4 v0, 0x0

    aput v0, v6, v0

    .line 2
    iget-object v1, p0, Lcom/threed/jpct/OcTree;->root:Lcom/threed/jpct/OcTreeNode;

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/threed/jpct/OcTree;->getColliderLeafs(Lcom/threed/jpct/OcTreeNode;FFFF[I[Lcom/threed/jpct/OcTreeNode;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getCollisionUse()Z
    .locals 1

    iget-boolean v0, p0, Lcom/threed/jpct/OcTree;->useForCollision:Z

    return v0
.end method

.method public getFilledLeafs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/threed/jpct/OcTreeNode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/threed/jpct/OcTree;->allLeafs:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/OcTree;->allLeafs:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/threed/jpct/OcTree;->root:Lcom/threed/jpct/OcTreeNode;

    invoke-direct {p0, v0}, Lcom/threed/jpct/OcTree;->fillLeafs(Lcom/threed/jpct/OcTreeNode;)V

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/OcTree;->allLeafs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLeafCount()I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/OcTree;->curLeafs:I

    return v0
.end method

.method public getLeafList()[Lcom/threed/jpct/OcTreeNode;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/OcTree;->leafList:[Lcom/threed/jpct/OcTreeNode;

    return-object v0
.end method

.method public getRadiusMultiplier()F
    .locals 1

    iget v0, p0, Lcom/threed/jpct/OcTree;->radiusMul:F

    return v0
.end method

.method public getRenderingUse()Z
    .locals 1

    iget-boolean v0, p0, Lcom/threed/jpct/OcTree;->useForRendering:Z

    return v0
.end method

.method public getTotalLeafs()I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/OcTree;->leafs:I

    return v0
.end method

.method public getTotalPolyCount()I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/OcTree;->totalPolys:I

    return v0
.end method

.method public getVisibleLeafs(Lcom/threed/jpct/Matrix;FF)I
    .locals 7

    .line 1
    iget-object v5, p0, Lcom/threed/jpct/OcTree;->leafCount:[I

    const/4 v6, 0x0

    aput v6, v5, v6

    .line 2
    iput v6, p0, Lcom/threed/jpct/OcTree;->curLeafs:I

    .line 3
    iget-object v1, p0, Lcom/threed/jpct/OcTree;->root:Lcom/threed/jpct/OcTreeNode;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/threed/jpct/OcTree;->getVisibleLeafs(Lcom/threed/jpct/OcTreeNode;Lcom/threed/jpct/Matrix;FF[I)V

    .line 4
    iget-object p1, p0, Lcom/threed/jpct/OcTree;->leafCount:[I

    aget p1, p1, v6

    iput p1, p0, Lcom/threed/jpct/OcTree;->curLeafs:I

    return p1
.end method

.method public isCompletelyVisible(I)Z
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/OcTree;->visibleLeafs:[Z

    aget-boolean p1, v0, p1

    return p1
.end method

.method public isOfOrderZero()Z
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/OcTree;->root:Lcom/threed/jpct/OcTreeNode;

    invoke-virtual {v0}, Lcom/threed/jpct/OcTreeNode;->isLeaf()Z

    move-result v0

    return v0
.end method

.method public postConstruct()V
    .locals 2

    iget v0, p0, Lcom/threed/jpct/OcTree;->leafs:I

    new-array v1, v0, [Lcom/threed/jpct/OcTreeNode;

    iput-object v1, p0, Lcom/threed/jpct/OcTree;->leafList:[Lcom/threed/jpct/OcTreeNode;

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/threed/jpct/OcTree;->visibleLeafs:[Z

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/threed/jpct/OcTree;->radiusMul:F

    return-void
.end method

.method public setCollisionUse(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/threed/jpct/OcTree;->useForCollision:Z

    return-void
.end method

.method public setRadiusMultiplier(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Lcom/threed/jpct/OcTree;->radiusMul:F

    :cond_0
    return-void
.end method

.method public setRenderingUse(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/threed/jpct/OcTree;->useForRendering:Z

    return-void
.end method
