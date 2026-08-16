.class Lcom/threed/jpct/CompiledInstance;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final ALL_ONES:[F

.field protected static final ALL_ONES_3:[F

.field protected static final ALL_ZEROS:[F

.field protected static final BUFFER_SIZE:I

.field protected static final COORD_SCALE:F = 1.0f

.field protected static final LIGHTS:[I

.field protected static final STATIC_DUMPY:[F

.field protected static final ZEROS_ONE:[F

.field protected static final allOnes3:[F

.field public static chkSum:F = 0.0f

.field public static lastLightCnt:I = 0x0

.field public static lastObj:Lcom/threed/jpct/Object3D; = null

.field public static lastVertexBuffer:Ljava/nio/Buffer; = null

.field protected static final lights4:[F

.field protected static mat:Lcom/threed/jpct/Matrix; = null

.field protected static mo:Lcom/threed/jpct/Matrix; = null

.field protected static final sbPosMT:[I

.field protected static sbPosOne:I = 0x0

.field protected static sbPosThree:I = 0x0

.field protected static sbPosTwo:I = 0x0

.field protected static final serialVersionUID:J = 0x1L

.field protected static final smallBuffer:[I

.field protected static final smallBufferMT:[[I

.field protected static final smallBufferOne:[I

.field protected static final smallBufferThree:[I

.field protected static final smallBufferTwo:[I

.field protected static final stageMap:[I


# instance fields
.field protected buffersCreated:Z

.field protected cnt:I

.field protected colors:Ljava/nio/IntBuffer;

.field protected colorsId:I

.field protected coordMapper:[I

.field protected dumpy:[F

.field protected dynamic:Z

.field protected endStage:I

.field protected filled:Z

.field protected firstCompile:Z

.field protected hasBeenRefilled:Z

.field protected hasBeenVirtualized:Z

.field protected indexCount:I

.field protected indexed:Z

.field protected indices:Ljava/nio/ShortBuffer;

.field protected indicesId:I

.field protected key:Ljava/lang/String;

.field protected lastRenderer:Lcom/threed/jpct/GLRenderer;

.field protected lastTex0:I

.field protected lastTex1:I

.field protected multiTextures:[Ljava/nio/IntBuffer;

.field protected multiTexturesIds:[I

.field protected ncoords:[I

.field protected needsCoordMapper:Z

.field protected normals:Ljava/nio/IntBuffer;

.field protected normalsId:I

.field protected obj:Lcom/threed/jpct/Object3D;

.field protected polyIndex:I

.field protected primitiveType:I

.field protected rendererID:I

.field protected staticUV:Z

.field protected tangents:Ljava/nio/IntBuffer;

.field protected tangentsId:I

.field protected tex0:I

.field protected tex1:I

.field protected treeID:I

.field protected tris:Lcom/threed/jpct/IntList;

.field protected useStrip:I

.field protected vboPossible:Z

.field protected vcoords:[I

.field protected vertex2index:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/threed/jpct/GenericContainer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected vertices:Ljava/nio/IntBuffer;

.field protected verticesId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    sget v0, Lcom/threed/jpct/Config;->vertexBufferSize:I

    sput v0, Lcom/threed/jpct/CompiledInstance;->BUFFER_SIZE:I

    new-array v1, v0, [I

    sput-object v1, Lcom/threed/jpct/CompiledInstance;->smallBufferOne:[I

    new-array v1, v0, [I

    sput-object v1, Lcom/threed/jpct/CompiledInstance;->smallBufferTwo:[I

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x4

    aput v3, v1, v2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    sput-object v1, Lcom/threed/jpct/CompiledInstance;->smallBufferMT:[[I

    new-array v1, v3, [I

    sput-object v1, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    new-array v0, v0, [I

    sput-object v0, Lcom/threed/jpct/CompiledInstance;->smallBufferThree:[I

    new-array v0, v3, [I

    sput-object v0, Lcom/threed/jpct/CompiledInstance;->smallBuffer:[I

    const v0, 0x84c2

    const v1, 0x84c3

    const v4, 0x84c0

    const v5, 0x84c1

    filled-new-array {v4, v5, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/threed/jpct/CompiledInstance;->stageMap:[I

    new-array v0, v3, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/threed/jpct/CompiledInstance;->ALL_ONES:[F

    const/4 v0, 0x0

    new-array v1, v3, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/threed/jpct/CompiledInstance;->ALL_ONES_3:[F

    new-array v1, v3, [F

    fill-array-data v1, :array_2

    sput-object v1, Lcom/threed/jpct/CompiledInstance;->ZEROS_ONE:[F

    new-array v1, v3, [F

    fill-array-data v1, :array_3

    sput-object v1, Lcom/threed/jpct/CompiledInstance;->ALL_ZEROS:[F

    new-array v1, v3, [F

    fill-array-data v1, :array_4

    sput-object v1, Lcom/threed/jpct/CompiledInstance;->allOnes3:[F

    new-array v1, v3, [F

    sput-object v1, Lcom/threed/jpct/CompiledInstance;->lights4:[F

    const/16 v1, 0x10

    new-array v1, v1, [F

    sput-object v1, Lcom/threed/jpct/CompiledInstance;->STATIC_DUMPY:[F

    sput v2, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    sput v2, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    sput v2, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_5

    sput-object v1, Lcom/threed/jpct/CompiledInstance;->LIGHTS:[I

    new-instance v1, Lcom/threed/jpct/Matrix;

    invoke-direct {v1}, Lcom/threed/jpct/Matrix;-><init>()V

    sput-object v1, Lcom/threed/jpct/CompiledInstance;->mat:Lcom/threed/jpct/Matrix;

    new-instance v1, Lcom/threed/jpct/Matrix;

    invoke-direct {v1}, Lcom/threed/jpct/Matrix;-><init>()V

    sput-object v1, Lcom/threed/jpct/CompiledInstance;->mo:Lcom/threed/jpct/Matrix;

    const/4 v1, 0x0

    sput-object v1, Lcom/threed/jpct/CompiledInstance;->lastObj:Lcom/threed/jpct/Object3D;

    sput v0, Lcom/threed/jpct/CompiledInstance;->chkSum:F

    sput v2, Lcom/threed/jpct/CompiledInstance;->lastLightCnt:I

    sput-object v1, Lcom/threed/jpct/CompiledInstance;->lastVertexBuffer:Ljava/nio/Buffer;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x4000
        0x4001
        0x4002
        0x4003
        0x4004
        0x4005
        0x4006
        0x4007
    .end array-data
.end method

.method public constructor <init>(Lcom/threed/jpct/Object3D;II)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/CompiledInstance;->dynamic:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iput-object v1, p0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    iput-object v1, p0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    iput-object v1, p0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    iput-object v1, p0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    iput-object v1, p0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    iput-object v1, p0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    iput v0, p0, Lcom/threed/jpct/CompiledInstance;->normalsId:I

    iput v0, p0, Lcom/threed/jpct/CompiledInstance;->verticesId:I

    iput v0, p0, Lcom/threed/jpct/CompiledInstance;->colorsId:I

    iput v0, p0, Lcom/threed/jpct/CompiledInstance;->indicesId:I

    iput v0, p0, Lcom/threed/jpct/CompiledInstance;->tangentsId:I

    iput-object v1, p0, Lcom/threed/jpct/CompiledInstance;->multiTexturesIds:[I

    new-instance v2, Lcom/threed/jpct/IntList;

    invoke-direct {v2}, Lcom/threed/jpct/IntList;-><init>()V

    iput-object v2, p0, Lcom/threed/jpct/CompiledInstance;->tris:Lcom/threed/jpct/IntList;

    iput v0, p0, Lcom/threed/jpct/CompiledInstance;->cnt:I

    iput v0, p0, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    iput v0, p0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/threed/jpct/CompiledInstance;->indexed:Z

    iput-boolean v2, p0, Lcom/threed/jpct/CompiledInstance;->staticUV:Z

    const/4 v3, -0x1

    iput v3, p0, Lcom/threed/jpct/CompiledInstance;->treeID:I

    iput-object v1, p0, Lcom/threed/jpct/CompiledInstance;->key:Ljava/lang/String;

    iput v3, p0, Lcom/threed/jpct/CompiledInstance;->tex0:I

    iput v3, p0, Lcom/threed/jpct/CompiledInstance;->tex1:I

    const/16 v3, -0x63

    iput v3, p0, Lcom/threed/jpct/CompiledInstance;->lastTex0:I

    iput v3, p0, Lcom/threed/jpct/CompiledInstance;->lastTex1:I

    iput-object v1, p0, Lcom/threed/jpct/CompiledInstance;->vertex2index:Ljava/util/HashMap;

    const v3, -0x3b9ac9ff

    iput v3, p0, Lcom/threed/jpct/CompiledInstance;->rendererID:I

    iput-object v1, p0, Lcom/threed/jpct/CompiledInstance;->lastRenderer:Lcom/threed/jpct/GLRenderer;

    iput-boolean v0, p0, Lcom/threed/jpct/CompiledInstance;->filled:Z

    iput-object v1, p0, Lcom/threed/jpct/CompiledInstance;->dumpy:[F

    iput-boolean v2, p0, Lcom/threed/jpct/CompiledInstance;->needsCoordMapper:Z

    iput-object v1, p0, Lcom/threed/jpct/CompiledInstance;->coordMapper:[I

    iput-object v1, p0, Lcom/threed/jpct/CompiledInstance;->vcoords:[I

    iput-object v1, p0, Lcom/threed/jpct/CompiledInstance;->ncoords:[I

    iput-boolean v0, p0, Lcom/threed/jpct/CompiledInstance;->buffersCreated:Z

    iput-boolean v2, p0, Lcom/threed/jpct/CompiledInstance;->vboPossible:Z

    sget-boolean v1, Lcom/threed/jpct/Config;->glTriangleStrips:Z

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    iput v1, p0, Lcom/threed/jpct/CompiledInstance;->useStrip:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/threed/jpct/CompiledInstance;->primitiveType:I

    iput-boolean v2, p0, Lcom/threed/jpct/CompiledInstance;->firstCompile:Z

    iput-boolean v0, p0, Lcom/threed/jpct/CompiledInstance;->hasBeenRefilled:Z

    iput-boolean v0, p0, Lcom/threed/jpct/CompiledInstance;->hasBeenVirtualized:Z

    iput-object p1, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iput p2, p0, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    iput p3, p0, Lcom/threed/jpct/CompiledInstance;->treeID:I

    iget-boolean p2, p1, Lcom/threed/jpct/Object3D;->dynamic:Z

    iput-boolean p2, p0, Lcom/threed/jpct/CompiledInstance;->dynamic:Z

    iget-boolean p2, p1, Lcom/threed/jpct/Object3D;->indexed:Z

    iput-boolean p2, p0, Lcom/threed/jpct/CompiledInstance;->indexed:Z

    iget-boolean p1, p1, Lcom/threed/jpct/Object3D;->staticUV:Z

    iput-boolean p1, p0, Lcom/threed/jpct/CompiledInstance;->staticUV:Z

    return-void
.end method

.method private compare([F[F)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    aget v2, p1, v1

    aget v3, p2, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public _fill()V
    .locals 40

    move-object/from16 v0, p0

    const/4 v1, 0x0

    sput v1, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    sput v1, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    sput v1, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    iget-object v2, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v2, v2, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget v2, v0, Lcom/threed/jpct/CompiledInstance;->useStrip:I

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/threed/jpct/CompiledInstance;->checkStrips()V

    :cond_1
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    goto :goto_0

    :cond_2
    move-wide v5, v3

    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/threed/jpct/CompiledInstance;->hasBeenRefilled:Z

    iget-object v7, v0, Lcom/threed/jpct/CompiledInstance;->tris:Lcom/threed/jpct/IntList;

    const-string v8, "/"

    if-eqz v7, :cond_5f

    invoke-virtual {v7}, Lcom/threed/jpct/IntList;->size()I

    move-result v7

    iget-object v10, v0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    if-nez v10, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    mul-int/lit8 v3, v7, 0x24

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v4

    iput-object v4, v0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    invoke-virtual {v3}, Lcom/threed/jpct/Object3D;->hasVertexAlpha()Z

    move-result v3

    if-eqz v3, :cond_3

    mul-int/lit8 v3, v7, 0x30

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    :cond_3
    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v3, v3, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->tangentVectors:[[F

    if-eqz v3, :cond_4

    mul-int/lit8 v3, v7, 0x30

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    :cond_4
    iget-boolean v3, v0, Lcom/threed/jpct/CompiledInstance;->indexed:Z

    if-eqz v3, :cond_5

    mul-int/lit8 v3, v7, 0xc

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstance;->vertex2index:Ljava/util/HashMap;

    :cond_5
    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v3, v3, Lcom/threed/jpct/Object3D;->multiTex:[[I

    if-eqz v3, :cond_8

    move v3, v1

    move v4, v2

    :goto_1
    iget-object v12, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v12, v12, Lcom/threed/jpct/Object3D;->multiTex:[[I

    array-length v13, v12

    if-lt v3, v13, :cond_6

    goto :goto_2

    :cond_6
    aget-object v12, v12, v3

    iget v13, v0, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    aget v12, v12, v13

    const/4 v13, -0x1

    if-ne v12, v13, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    move v4, v2

    :goto_2
    iput v4, v0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    sget v3, Lcom/threed/jpct/Config;->glStageCount:I

    if-le v4, v3, :cond_9

    iput v3, v0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    :cond_9
    iget v3, v0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    new-array v3, v3, [Ljava/nio/IntBuffer;

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    move v3, v1

    :goto_3
    iget v4, v0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    if-lt v3, v4, :cond_a

    move v7, v2

    move-wide v3, v10

    goto :goto_4

    :cond_a
    iget-object v4, v0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    mul-int/lit8 v12, v7, 0x18

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v12

    aput-object v12, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_b
    move v7, v1

    :goto_4
    iget-object v10, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v10, v10, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v11, v10, Lcom/threed/jpct/Mesh;->xOrg:[F

    iget-object v12, v10, Lcom/threed/jpct/Mesh;->yOrg:[F

    iget-object v13, v10, Lcom/threed/jpct/Mesh;->zOrg:[F

    iget-object v14, v10, Lcom/threed/jpct/Mesh;->nxOrg:[F

    iget-object v15, v10, Lcom/threed/jpct/Mesh;->nyOrg:[F

    iget-object v2, v10, Lcom/threed/jpct/Mesh;->nzOrg:[F

    if-nez v14, :cond_c

    const-string v2, "Can\'t compile a mesh that has already been stripped!"

    invoke-static {v2, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    return-void

    :cond_c
    iput v1, v0, Lcom/threed/jpct/CompiledInstance;->cnt:I

    iget-object v1, v0, Lcom/threed/jpct/CompiledInstance;->vertex2index:Ljava/util/HashMap;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :cond_d
    iget-object v1, v0, Lcom/threed/jpct/CompiledInstance;->tris:Lcom/threed/jpct/IntList;

    invoke-virtual {v1}, Lcom/threed/jpct/IntList;->size()I

    move-result v1

    iget-boolean v9, v0, Lcom/threed/jpct/CompiledInstance;->dynamic:Z

    move-wide/from16 v18, v5

    if-eqz v9, :cond_e

    if-eqz v7, :cond_e

    iget-object v6, v0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    if-nez v6, :cond_e

    iget-object v6, v0, Lcom/threed/jpct/CompiledInstance;->coordMapper:[I

    if-nez v6, :cond_e

    new-instance v6, Lcom/threed/jpct/IntList;

    invoke-direct {v6}, Lcom/threed/jpct/IntList;-><init>()V

    goto :goto_5

    :cond_e
    const/4 v6, 0x0

    :goto_5
    iget-object v9, v0, Lcom/threed/jpct/CompiledInstance;->coordMapper:[I

    const/high16 v21, 0x47800000    # 65536.0f

    if-eqz v9, :cond_14

    iget-boolean v5, v0, Lcom/threed/jpct/CompiledInstance;->staticUV:Z

    if-eqz v5, :cond_14

    array-length v5, v9

    iget-object v1, v0, Lcom/threed/jpct/CompiledInstance;->vcoords:[I

    if-eqz v1, :cond_12

    iget-object v6, v0, Lcom/threed/jpct/CompiledInstance;->ncoords:[I

    iget-boolean v10, v0, Lcom/threed/jpct/CompiledInstance;->needsCoordMapper:Z

    if-eqz v10, :cond_10

    const/4 v10, 0x0

    const/16 v23, 0x0

    :goto_6
    if-lt v10, v5, :cond_f

    iput v5, v0, Lcom/threed/jpct/CompiledInstance;->cnt:I

    move-wide/from16 v27, v3

    goto :goto_8

    :cond_f
    aget v24, v9, v10

    aget v25, v11, v24

    move-object/from16 v26, v9

    mul-float v9, v25, v21

    float-to-int v9, v9

    aput v9, v1, v23

    add-int/lit8 v9, v23, 0x1

    aget v25, v14, v24

    move-wide/from16 v27, v3

    mul-float v3, v25, v21

    float-to-int v3, v3

    aput v3, v6, v23

    aget v3, v12, v24

    mul-float v3, v3, v21

    float-to-int v3, v3

    aput v3, v1, v9

    add-int/lit8 v3, v23, 0x2

    aget v4, v15, v24

    mul-float v4, v4, v21

    float-to-int v4, v4

    aput v4, v6, v9

    aget v4, v13, v24

    mul-float v4, v4, v21

    float-to-int v4, v4

    aput v4, v1, v3

    const/4 v4, 0x3

    add-int/lit8 v23, v23, 0x3

    aget v4, v2, v24

    mul-float v4, v4, v21

    float-to-int v4, v4

    aput v4, v6, v3

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v9, v26

    move-wide/from16 v3, v27

    goto :goto_6

    :cond_10
    move-wide/from16 v27, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_7
    if-lt v3, v5, :cond_11

    iput v5, v0, Lcom/threed/jpct/CompiledInstance;->cnt:I

    :goto_8
    iget-object v2, v0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    iget-object v1, v0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v6}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    move-object/from16 v24, v8

    goto/16 :goto_10

    :cond_11
    aget v9, v11, v3

    mul-float v9, v9, v21

    float-to-int v9, v9

    aput v9, v1, v4

    add-int/lit8 v9, v4, 0x1

    aget v10, v14, v3

    mul-float v10, v10, v21

    float-to-int v10, v10

    aput v10, v6, v4

    aget v10, v12, v3

    mul-float v10, v10, v21

    float-to-int v10, v10

    aput v10, v1, v9

    add-int/lit8 v10, v4, 0x2

    aget v23, v15, v3

    move-object/from16 v24, v8

    mul-float v8, v23, v21

    float-to-int v8, v8

    aput v8, v6, v9

    aget v8, v13, v3

    mul-float v8, v8, v21

    float-to-int v8, v8

    aput v8, v1, v10

    const/4 v8, 0x3

    add-int/2addr v4, v8

    aget v8, v2, v3

    mul-float v8, v8, v21

    float-to-int v8, v8

    aput v8, v6, v10

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v8, v24

    goto :goto_7

    :cond_12
    move-wide/from16 v27, v3

    move-object/from16 v24, v8

    const/4 v1, 0x0

    :goto_9
    if-lt v1, v5, :cond_13

    iput v5, v0, Lcom/threed/jpct/CompiledInstance;->cnt:I

    goto/16 :goto_10

    :cond_13
    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->coordMapper:[I

    aget v3, v3, v1

    iget-object v4, v0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    aget v6, v11, v3

    mul-float v6, v6, v21

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    iget-object v4, v0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    aget v6, v12, v3

    mul-float v6, v6, v21

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    iget-object v4, v0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    aget v6, v13, v3

    mul-float v6, v6, v21

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    iget-object v4, v0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    aget v6, v14, v3

    mul-float v6, v6, v21

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    iget-object v4, v0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    aget v6, v15, v3

    mul-float v6, v6, v21

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    iget-object v4, v0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    aget v3, v2, v3

    mul-float v3, v3, v21

    float-to-int v3, v3

    invoke-virtual {v4, v3}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_14
    move-wide/from16 v27, v3

    move-object/from16 v24, v8

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v3, v3, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v4, v3, Lcom/threed/jpct/Vectors;->nuOrg:[F

    iget-object v4, v10, Lcom/threed/jpct/Mesh;->points:[[I

    const/4 v5, 0x0

    :goto_a
    const/4 v8, 0x4

    if-lt v5, v8, :cond_5e

    iget-object v5, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v5, v5, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v9, v5, Lcom/threed/jpct/Mesh;->tangentVectors:[[F

    const/4 v5, 0x0

    :goto_b
    if-lt v5, v1, :cond_29

    iget-object v1, v0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    iput v1, v0, Lcom/threed/jpct/CompiledInstance;->indexCount:I

    iget-object v2, v0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    if-eq v1, v2, :cond_15

    iget-object v1, v0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ShortBuffer;

    iput-object v1, v0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    :cond_15
    if-eqz v6, :cond_1d

    invoke-virtual {v6}, Lcom/threed/jpct/IntList;->size()I

    move-result v1

    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_16

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Remapping "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " vertex indices!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    :cond_16
    new-array v2, v1, [I

    iput-object v2, v0, Lcom/threed/jpct/CompiledInstance;->coordMapper:[I

    iget-boolean v2, v0, Lcom/threed/jpct/CompiledInstance;->dynamic:Z

    if-eqz v2, :cond_17

    iget-object v2, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v2, v2, Lcom/threed/jpct/Object3D;->anim:Lcom/threed/jpct/Animation;

    if-eqz v2, :cond_18

    iget-boolean v2, v2, Lcom/threed/jpct/Animation;->cacheIndices:Z

    if-eqz v2, :cond_17

    goto :goto_d

    :cond_17
    :goto_c
    const/4 v1, 0x0

    goto :goto_e

    :cond_18
    :goto_d
    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_19

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Creating vertex cache ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-int/lit8 v3, v1, 0x18

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes)!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    :cond_19
    const/4 v2, 0x3

    mul-int/2addr v1, v2

    new-array v2, v1, [I

    iput-object v2, v0, Lcom/threed/jpct/CompiledInstance;->vcoords:[I

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/threed/jpct/CompiledInstance;->ncoords:[I

    goto :goto_c

    :goto_e
    iput-boolean v1, v0, Lcom/threed/jpct/CompiledInstance;->needsCoordMapper:Z

    invoke-virtual {v6}, Lcom/threed/jpct/IntList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    if-lt v2, v1, :cond_1b

    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1d

    iget-boolean v1, v0, Lcom/threed/jpct/CompiledInstance;->needsCoordMapper:Z

    if-eqz v1, :cond_1a

    const-string v1, "Vertex indices will be mapped!"

    invoke-static {v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    goto :goto_10

    :cond_1a
    const-string v1, "Vertex indices will be accessed directly!"

    invoke-static {v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    goto :goto_10

    :cond_1b
    iget-object v4, v0, Lcom/threed/jpct/CompiledInstance;->coordMapper:[I

    invoke-virtual {v6, v2}, Lcom/threed/jpct/IntList;->get(I)I

    move-result v5

    aput v5, v4, v3

    iget-object v4, v0, Lcom/threed/jpct/CompiledInstance;->coordMapper:[I

    aget v4, v4, v3

    if-eq v4, v3, :cond_1c

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/threed/jpct/CompiledInstance;->needsCoordMapper:Z

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1d
    :goto_10
    iget-object v1, v0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    iget-object v2, v0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v2

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v3

    iget-object v4, v0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    invoke-virtual {v4}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_11

    :cond_1e
    const/4 v3, 0x0

    :goto_11
    iget-object v4, v0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    if-eqz v4, :cond_1f

    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    move-result v4

    iget-object v5, v0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    invoke-virtual {v5}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_12

    :cond_1f
    const/4 v4, 0x0

    :goto_12
    iget-object v5, v0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    invoke-virtual {v5}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v5, v0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    invoke-virtual {v5}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v5, 0x0

    :goto_13
    iget v6, v0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    if-lt v5, v6, :cond_28

    iget-object v5, v0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    if-eqz v5, :cond_20

    invoke-virtual {v5}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    :cond_20
    if-eqz v7, :cond_27

    iget-boolean v5, v0, Lcom/threed/jpct/CompiledInstance;->dynamic:Z

    if-nez v5, :cond_24

    const/4 v6, 0x0

    iput-object v6, v0, Lcom/threed/jpct/CompiledInstance;->tris:Lcom/threed/jpct/IntList;

    iput-object v6, v0, Lcom/threed/jpct/CompiledInstance;->vertex2index:Ljava/util/HashMap;

    iget-boolean v5, v0, Lcom/threed/jpct/CompiledInstance;->indexed:Z

    if-eqz v5, :cond_24

    iget-object v5, v0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v5, v1}, Lcom/threed/jpct/CompiledInstance;->flip(Ljava/nio/Buffer;I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/IntBuffer;

    iput-object v5, v0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    iget-object v5, v0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v5, v1}, Lcom/threed/jpct/CompiledInstance;->flip(Ljava/nio/Buffer;I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/IntBuffer;

    iput-object v1, v0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    iget-object v1, v0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    if-eqz v1, :cond_21

    invoke-virtual {v0, v1, v3}, Lcom/threed/jpct/CompiledInstance;->flip(Ljava/nio/Buffer;I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/IntBuffer;

    iput-object v1, v0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    :cond_21
    iget-object v1, v0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    if-eqz v1, :cond_22

    invoke-virtual {v0, v1, v4}, Lcom/threed/jpct/CompiledInstance;->flip(Ljava/nio/Buffer;I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/IntBuffer;

    iput-object v1, v0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    :cond_22
    const/4 v1, 0x0

    :goto_14
    iget v3, v0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    if-lt v1, v3, :cond_23

    goto :goto_15

    :cond_23
    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    aget-object v4, v3, v1

    invoke-virtual {v0, v4, v2}, Lcom/threed/jpct/CompiledInstance;->flip(Ljava/nio/Buffer;I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/IntBuffer;

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_24
    :goto_15
    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_27

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Subobject of object "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    invoke-virtual {v2}, Lcom/threed/jpct/Object3D;->getID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v8, v24

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    invoke-virtual {v2}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " compiled to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-boolean v2, v2, Lcom/threed/jpct/Object3D;->indexed:Z

    if-eqz v2, :cond_25

    const-string v2, "indexed"

    goto :goto_16

    :cond_25
    const-string v2, "flat"

    :goto_16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " fixed point data using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/threed/jpct/CompiledInstance;->cnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    const/4 v3, 0x3

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " vertices "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/threed/jpct/CompiledInstance;->useStrip:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_26

    const-string v2, "in a strip "

    goto :goto_17

    :cond_26
    const-string v2, ""

    :goto_17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v27

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    :goto_18
    move-object/from16 v29, v8

    goto/16 :goto_31

    :cond_27
    move-object/from16 v29, v24

    goto/16 :goto_31

    :cond_28
    move-object/from16 v8, v24

    const/4 v6, 0x0

    iget-object v9, v0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    aget-object v9, v9, v5

    invoke-virtual {v9}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_13

    :cond_29
    move-object/from16 v29, v24

    const/16 v20, 0x0

    iget-object v8, v0, Lcom/threed/jpct/CompiledInstance;->tris:Lcom/threed/jpct/IntList;

    invoke-virtual {v8, v5}, Lcom/threed/jpct/IntList;->get(I)I

    move-result v8

    if-lez v5, :cond_2a

    move-object/from16 v23, v9

    iget v9, v0, Lcom/threed/jpct/CompiledInstance;->useStrip:I

    move/from16 v24, v7

    const/4 v7, 0x1

    if-ne v9, v7, :cond_2b

    const/4 v7, 0x2

    goto :goto_19

    :cond_2a
    move/from16 v24, v7

    move-object/from16 v23, v9

    :cond_2b
    const/4 v7, 0x0

    :goto_19
    move v9, v7

    move-object/from16 v25, v20

    :goto_1a
    const/4 v7, 0x3

    if-lt v9, v7, :cond_2e

    if-eqz v5, :cond_2d

    iget v8, v0, Lcom/threed/jpct/CompiledInstance;->useStrip:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2c

    goto :goto_1b

    :cond_2c
    iget v8, v0, Lcom/threed/jpct/CompiledInstance;->cnt:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v0, Lcom/threed/jpct/CompiledInstance;->cnt:I

    goto :goto_1c

    :cond_2d
    :goto_1b
    iget v8, v0, Lcom/threed/jpct/CompiledInstance;->cnt:I

    add-int/2addr v8, v7

    iput v8, v0, Lcom/threed/jpct/CompiledInstance;->cnt:I

    :goto_1c
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v9, v23

    move/from16 v7, v24

    move-object/from16 v24, v29

    const/4 v8, 0x4

    goto/16 :goto_b

    :cond_2e
    aget-object v7, v4, v8

    aget v7, v7, v9

    move-object/from16 v26, v4

    iget-object v4, v10, Lcom/threed/jpct/Mesh;->coords:[I

    aget v4, v4, v7

    move/from16 v30, v8

    iget-boolean v8, v0, Lcom/threed/jpct/CompiledInstance;->indexed:Z

    const/high16 v31, 0x10000

    if-nez v8, :cond_40

    sget-object v8, Lcom/threed/jpct/CompiledInstance;->smallBufferOne:[I

    sget v32, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    add-int/lit8 v33, v32, 0x1

    sput v33, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    aget v34, v11, v4

    move-object/from16 v35, v10

    mul-float v10, v34, v21

    float-to-int v10, v10

    aput v10, v8, v32

    add-int/lit8 v10, v32, 0x2

    sput v10, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    aget v34, v12, v4

    move-object/from16 v36, v12

    mul-float v12, v34, v21

    float-to-int v12, v12

    aput v12, v8, v33

    move-object/from16 v33, v11

    const/4 v12, 0x3

    add-int/lit8 v11, v32, 0x3

    sput v11, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    aget v12, v13, v4

    mul-float v12, v12, v21

    float-to-int v12, v12

    aput v12, v8, v10

    add-int/lit8 v10, v1, -0x1

    if-ne v5, v10, :cond_2f

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2f

    const/4 v10, 0x1

    goto :goto_1d

    :cond_2f
    const/4 v10, 0x0

    :goto_1d
    sget v12, Lcom/threed/jpct/CompiledInstance;->BUFFER_SIZE:I

    if-eq v11, v12, :cond_30

    if-eqz v10, :cond_31

    :cond_30
    move/from16 v32, v9

    goto :goto_1e

    :cond_31
    move/from16 v34, v5

    move/from16 v32, v9

    goto :goto_1f

    :goto_1e
    iget-object v9, v0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    move/from16 v34, v5

    const/4 v5, 0x0

    invoke-virtual {v9, v8, v5, v11}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    sput v5, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    :goto_1f
    sget-object v5, Lcom/threed/jpct/CompiledInstance;->smallBufferTwo:[I

    sget v8, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    add-int/lit8 v9, v8, 0x1

    sput v9, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    aget v11, v14, v4

    mul-float v11, v11, v21

    float-to-int v11, v11

    aput v11, v5, v8

    add-int/lit8 v11, v8, 0x2

    sput v11, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    aget v37, v15, v4

    move/from16 v38, v1

    mul-float v1, v37, v21

    float-to-int v1, v1

    aput v1, v5, v9

    const/4 v1, 0x3

    add-int/2addr v8, v1

    sput v8, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    aget v1, v2, v4

    mul-float v1, v1, v21

    float-to-int v1, v1

    aput v1, v5, v11

    if-eq v8, v12, :cond_33

    if-eqz v10, :cond_32

    goto :goto_20

    :cond_32
    const/4 v9, 0x0

    goto :goto_21

    :cond_33
    :goto_20
    iget-object v1, v0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    const/4 v9, 0x0

    invoke-virtual {v1, v5, v9, v8}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    sput v9, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    :goto_21
    if-eqz v6, :cond_34

    invoke-virtual {v6, v4}, Lcom/threed/jpct/IntList;->add(I)V

    :cond_34
    iget-object v1, v0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    if-eqz v1, :cond_35

    sget-object v5, Lcom/threed/jpct/CompiledInstance;->smallBuffer:[I

    aput v31, v5, v9

    const/4 v8, 0x1

    aput v31, v5, v8

    const/4 v8, 0x2

    aput v31, v5, v8

    iget-object v8, v3, Lcom/threed/jpct/Vectors;->alpha:[F

    aget v8, v8, v7

    mul-float v8, v8, v21

    float-to-int v8, v8

    const/4 v9, 0x3

    aput v8, v5, v9

    invoke-virtual {v1, v5}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    :cond_35
    if-eqz v24, :cond_37

    iget-object v1, v0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    if-eqz v1, :cond_37

    aget-object v4, v23, v4

    sget-object v5, Lcom/threed/jpct/CompiledInstance;->smallBufferThree:[I

    sget v8, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    add-int/lit8 v9, v8, 0x1

    sput v9, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    const/4 v11, 0x0

    aget v31, v4, v11

    mul-float v11, v31, v21

    float-to-int v11, v11

    aput v11, v5, v8

    add-int/lit8 v11, v8, 0x2

    sput v11, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    const/16 v16, 0x1

    aget v31, v4, v16

    move-object/from16 v37, v6

    mul-float v6, v31, v21

    float-to-int v6, v6

    aput v6, v5, v9

    add-int/lit8 v6, v8, 0x3

    sput v6, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    const/4 v9, 0x2

    aget v31, v4, v9

    mul-float v9, v31, v21

    float-to-int v9, v9

    aput v9, v5, v11

    const/4 v9, 0x4

    add-int/2addr v8, v9

    sput v8, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    const/4 v9, 0x3

    aget v4, v4, v9

    mul-float v4, v4, v21

    float-to-int v4, v4

    aput v4, v5, v6

    if-eq v8, v12, :cond_36

    if-eqz v10, :cond_38

    :cond_36
    const/4 v4, 0x0

    invoke-virtual {v1, v5, v4, v8}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    sput v4, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    goto :goto_22

    :cond_37
    move-object/from16 v37, v6

    :cond_38
    :goto_22
    if-nez v24, :cond_39

    iget-boolean v1, v0, Lcom/threed/jpct/CompiledInstance;->staticUV:Z

    if-nez v1, :cond_3a

    :cond_39
    const/4 v1, 0x0

    :goto_23
    iget v4, v0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    if-lt v1, v4, :cond_3b

    :cond_3a
    move-object/from16 v1, v25

    move/from16 v8, v32

    move-object/from16 v39, v37

    const/4 v6, 0x4

    move-object/from16 v37, v2

    move-object/from16 v32, v13

    goto/16 :goto_2f

    :cond_3b
    if-nez v1, :cond_3d

    iget-object v4, v3, Lcom/threed/jpct/Vectors;->nuOrg:[F

    iget-object v5, v3, Lcom/threed/jpct/Vectors;->nvOrg:[F

    sget-object v6, Lcom/threed/jpct/CompiledInstance;->smallBufferMT:[[I

    const/4 v8, 0x0

    aget-object v6, v6, v8

    sget-object v9, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    aget v11, v9, v8

    add-int/lit8 v12, v11, 0x1

    aput v12, v9, v8

    aget v4, v4, v7

    mul-float v4, v4, v21

    float-to-int v4, v4

    aput v4, v6, v11

    aget v4, v9, v8

    add-int/lit8 v11, v4, 0x1

    aput v11, v9, v8

    aget v5, v5, v7

    mul-float v5, v5, v21

    float-to-int v5, v5

    aput v5, v6, v4

    aget v4, v9, v8

    sget v5, Lcom/threed/jpct/CompiledInstance;->BUFFER_SIZE:I

    if-eq v4, v5, :cond_3c

    if-eqz v10, :cond_3f

    :cond_3c
    iget-object v5, v0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    aget-object v5, v5, v1

    invoke-virtual {v5, v6, v8, v4}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    aput v8, v9, v8

    goto :goto_24

    :cond_3d
    iget-object v4, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget v4, v4, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_3f

    iget-object v4, v3, Lcom/threed/jpct/Vectors;->uMul:[[F

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    iget-object v6, v3, Lcom/threed/jpct/Vectors;->vMul:[[F

    aget-object v5, v6, v5

    sget-object v6, Lcom/threed/jpct/CompiledInstance;->smallBufferMT:[[I

    aget-object v6, v6, v1

    sget-object v8, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    aget v9, v8, v1

    add-int/lit8 v11, v9, 0x1

    aput v11, v8, v1

    aget v4, v4, v7

    mul-float v4, v4, v21

    float-to-int v4, v4

    aput v4, v6, v9

    aget v4, v8, v1

    add-int/lit8 v9, v4, 0x1

    aput v9, v8, v1

    aget v5, v5, v7

    mul-float v5, v5, v21

    float-to-int v5, v5

    aput v5, v6, v4

    aget v4, v8, v1

    sget v5, Lcom/threed/jpct/CompiledInstance;->BUFFER_SIZE:I

    if-eq v4, v5, :cond_3e

    if-eqz v10, :cond_3f

    :cond_3e
    iget-object v5, v0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    aget-object v5, v5, v1

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v9, v4}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    aput v9, v8, v1

    :cond_3f
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_23

    :cond_40
    move/from16 v38, v1

    move/from16 v34, v5

    move-object/from16 v37, v6

    move/from16 v32, v9

    move-object/from16 v35, v10

    move-object/from16 v33, v11

    move-object/from16 v36, v12

    if-nez v25, :cond_41

    new-instance v1, Lcom/threed/jpct/GenericContainer;

    const/16 v5, 0xb

    invoke-direct {v1, v5}, Lcom/threed/jpct/GenericContainer;-><init>(I)V

    goto :goto_25

    :cond_41
    invoke-virtual/range {v25 .. v25}, Lcom/threed/jpct/GenericContainer;->clear()V

    move-object/from16 v1, v25

    :goto_25
    aget v5, v33, v4

    invoke-virtual {v1, v5}, Lcom/threed/jpct/GenericContainer;->add(F)V

    aget v5, v36, v4

    invoke-virtual {v1, v5}, Lcom/threed/jpct/GenericContainer;->add(F)V

    aget v5, v13, v4

    invoke-virtual {v1, v5}, Lcom/threed/jpct/GenericContainer;->add(F)V

    aget v5, v14, v4

    invoke-virtual {v1, v5}, Lcom/threed/jpct/GenericContainer;->add(F)V

    aget v5, v15, v4

    invoke-virtual {v1, v5}, Lcom/threed/jpct/GenericContainer;->add(F)V

    aget v5, v2, v4

    invoke-virtual {v1, v5}, Lcom/threed/jpct/GenericContainer;->add(F)V

    const/4 v5, 0x0

    :goto_26
    iget v6, v0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    if-lt v5, v6, :cond_5b

    iget-object v5, v0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    if-eqz v5, :cond_42

    iget-object v5, v3, Lcom/threed/jpct/Vectors;->alpha:[F

    aget v5, v5, v7

    invoke-virtual {v1, v5}, Lcom/threed/jpct/GenericContainer;->add(F)V

    :cond_42
    add-int/lit8 v5, v38, -0x1

    move/from16 v6, v34

    move/from16 v8, v32

    if-ne v6, v5, :cond_43

    const/4 v5, 0x2

    if-ne v8, v5, :cond_43

    const/4 v5, 0x1

    goto :goto_27

    :cond_43
    const/4 v5, 0x0

    :goto_27
    iget-object v9, v0, Lcom/threed/jpct/CompiledInstance;->vertex2index:Ljava/util/HashMap;

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-nez v9, :cond_55

    sget-object v9, Lcom/threed/jpct/CompiledInstance;->smallBufferOne:[I

    sget v10, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    add-int/lit8 v11, v10, 0x1

    sput v11, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    aget v12, v33, v4

    mul-float v12, v12, v21

    float-to-int v12, v12

    aput v12, v9, v10

    add-int/lit8 v12, v10, 0x2

    sput v12, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    aget v25, v36, v4

    move/from16 v34, v6

    mul-float v6, v25, v21

    float-to-int v6, v6

    aput v6, v9, v11

    const/4 v6, 0x3

    add-int/2addr v10, v6

    sput v10, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    aget v6, v13, v4

    mul-float v6, v6, v21

    float-to-int v6, v6

    aput v6, v9, v12

    sget v6, Lcom/threed/jpct/CompiledInstance;->BUFFER_SIZE:I

    if-eq v10, v6, :cond_44

    if-eqz v5, :cond_45

    :cond_44
    iget-object v11, v0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    const/4 v12, 0x0

    invoke-virtual {v11, v9, v12, v10}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    sput v12, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    :cond_45
    sget-object v9, Lcom/threed/jpct/CompiledInstance;->smallBufferTwo:[I

    sget v10, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    add-int/lit8 v11, v10, 0x1

    sput v11, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    aget v12, v14, v4

    mul-float v12, v12, v21

    float-to-int v12, v12

    aput v12, v9, v10

    add-int/lit8 v12, v10, 0x2

    sput v12, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    aget v25, v15, v4

    move-object/from16 v32, v13

    mul-float v13, v25, v21

    float-to-int v13, v13

    aput v13, v9, v11

    const/4 v11, 0x3

    add-int/2addr v10, v11

    sput v10, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    aget v11, v2, v4

    mul-float v11, v11, v21

    float-to-int v11, v11

    aput v11, v9, v12

    if-eq v10, v6, :cond_47

    if-eqz v5, :cond_46

    goto :goto_28

    :cond_46
    const/4 v12, 0x0

    goto :goto_29

    :cond_47
    :goto_28
    iget-object v11, v0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    const/4 v12, 0x0

    invoke-virtual {v11, v9, v12, v10}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    sput v12, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    :goto_29
    move-object/from16 v10, v37

    if-eqz v37, :cond_48

    invoke-virtual {v10, v4}, Lcom/threed/jpct/IntList;->add(I)V

    :cond_48
    iget-object v9, v0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    if-eqz v9, :cond_49

    sget-object v11, Lcom/threed/jpct/CompiledInstance;->smallBuffer:[I

    aput v31, v11, v12

    const/4 v12, 0x1

    aput v31, v11, v12

    const/4 v12, 0x2

    aput v31, v11, v12

    iget-object v12, v3, Lcom/threed/jpct/Vectors;->alpha:[F

    aget v12, v12, v7

    mul-float v12, v12, v21

    float-to-int v12, v12

    const/4 v13, 0x3

    aput v12, v11, v13

    invoke-virtual {v9, v11}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    :cond_49
    if-eqz v24, :cond_4b

    iget-object v9, v0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    if-eqz v9, :cond_4b

    aget-object v4, v23, v4

    sget-object v11, Lcom/threed/jpct/CompiledInstance;->smallBufferThree:[I

    sget v12, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    add-int/lit8 v13, v12, 0x1

    sput v13, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    const/16 v17, 0x0

    aget v25, v4, v17

    move-object/from16 v37, v2

    mul-float v2, v25, v21

    float-to-int v2, v2

    aput v2, v11, v12

    add-int/lit8 v2, v12, 0x2

    sput v2, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    const/16 v16, 0x1

    aget v25, v4, v16

    move-object/from16 v39, v10

    mul-float v10, v25, v21

    float-to-int v10, v10

    aput v10, v11, v13

    add-int/lit8 v10, v12, 0x3

    sput v10, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    const/4 v13, 0x2

    aget v22, v4, v13

    mul-float v13, v22, v21

    float-to-int v13, v13

    aput v13, v11, v2

    const/4 v2, 0x4

    add-int/2addr v12, v2

    sput v12, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    const/4 v2, 0x3

    aget v4, v4, v2

    mul-float v4, v4, v21

    float-to-int v2, v4

    aput v2, v11, v10

    if-eq v12, v6, :cond_4a

    if-eqz v5, :cond_4c

    :cond_4a
    const/4 v2, 0x0

    invoke-virtual {v9, v11, v2, v12}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    sput v2, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    goto :goto_2a

    :cond_4b
    move-object/from16 v37, v2

    move-object/from16 v39, v10

    :cond_4c
    :goto_2a
    if-nez v24, :cond_4d

    iget-boolean v2, v0, Lcom/threed/jpct/CompiledInstance;->staticUV:Z

    if-nez v2, :cond_4e

    :cond_4d
    const/4 v2, 0x0

    :goto_2b
    iget v4, v0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    if-lt v2, v4, :cond_50

    :cond_4e
    iget-object v2, v0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v2

    sget v4, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    add-int/2addr v2, v4

    const/4 v4, 0x3

    sub-int/2addr v2, v4

    div-int/2addr v2, v4

    iget-object v4, v0, Lcom/threed/jpct/CompiledInstance;->vertex2index:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    move-object/from16 v1, v20

    :cond_4f
    const/4 v6, 0x4

    goto/16 :goto_2f

    :cond_50
    if-nez v2, :cond_52

    iget-object v4, v3, Lcom/threed/jpct/Vectors;->nuOrg:[F

    iget-object v6, v3, Lcom/threed/jpct/Vectors;->nvOrg:[F

    sget-object v9, Lcom/threed/jpct/CompiledInstance;->smallBufferMT:[[I

    const/4 v10, 0x0

    aget-object v9, v9, v10

    sget-object v11, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    aget v12, v11, v10

    add-int/lit8 v13, v12, 0x1

    aput v13, v11, v10

    aget v4, v4, v7

    mul-float v4, v4, v21

    float-to-int v4, v4

    aput v4, v9, v12

    aget v4, v11, v10

    add-int/lit8 v12, v4, 0x1

    aput v12, v11, v10

    aget v6, v6, v7

    mul-float v6, v6, v21

    float-to-int v6, v6

    aput v6, v9, v4

    aget v4, v11, v10

    sget v6, Lcom/threed/jpct/CompiledInstance;->BUFFER_SIZE:I

    if-eq v4, v6, :cond_51

    if-eqz v5, :cond_54

    :cond_51
    iget-object v6, v0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    aget-object v6, v6, v2

    invoke-virtual {v6, v9, v10, v4}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    aput v10, v11, v10

    goto :goto_2c

    :cond_52
    iget-object v4, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget v4, v4, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    const/4 v6, 0x1

    if-le v4, v6, :cond_54

    iget-object v4, v3, Lcom/threed/jpct/Vectors;->uMul:[[F

    add-int/lit8 v6, v2, -0x1

    aget-object v4, v4, v6

    iget-object v9, v3, Lcom/threed/jpct/Vectors;->vMul:[[F

    aget-object v6, v9, v6

    sget-object v9, Lcom/threed/jpct/CompiledInstance;->smallBufferMT:[[I

    aget-object v9, v9, v2

    sget-object v10, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    aget v11, v10, v2

    add-int/lit8 v12, v11, 0x1

    aput v12, v10, v2

    aget v4, v4, v7

    mul-float v4, v4, v21

    float-to-int v4, v4

    aput v4, v9, v11

    aget v4, v10, v2

    add-int/lit8 v11, v4, 0x1

    aput v11, v10, v2

    aget v6, v6, v7

    mul-float v6, v6, v21

    float-to-int v6, v6

    aput v6, v9, v4

    aget v4, v10, v2

    sget v6, Lcom/threed/jpct/CompiledInstance;->BUFFER_SIZE:I

    if-eq v4, v6, :cond_53

    if-eqz v5, :cond_54

    :cond_53
    iget-object v6, v0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    aget-object v6, v6, v2

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11, v4}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    aput v11, v10, v2

    :cond_54
    :goto_2c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2b

    :cond_55
    move/from16 v34, v6

    move-object/from16 v32, v13

    move-object/from16 v39, v37

    move-object/from16 v37, v2

    iget-object v2, v0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-short v4, v4

    invoke-virtual {v2, v4}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    if-eqz v5, :cond_4f

    sget v2, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    if-eqz v2, :cond_56

    iget-object v4, v0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    sget-object v5, Lcom/threed/jpct/CompiledInstance;->smallBufferOne:[I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    sput v6, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    goto :goto_2d

    :cond_56
    const/4 v6, 0x0

    :goto_2d
    sget v2, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    if-eqz v2, :cond_57

    iget-object v4, v0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    sget-object v5, Lcom/threed/jpct/CompiledInstance;->smallBufferTwo:[I

    invoke-virtual {v4, v5, v6, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    sput v6, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    :cond_57
    sget v2, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    if-eqz v2, :cond_58

    iget-object v4, v0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    sget-object v5, Lcom/threed/jpct/CompiledInstance;->smallBufferThree:[I

    invoke-virtual {v4, v5, v6, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    sput v6, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    :cond_58
    const/4 v2, 0x0

    const/4 v6, 0x4

    :goto_2e
    if-lt v2, v6, :cond_59

    goto :goto_2f

    :cond_59
    sget-object v4, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    aget v5, v4, v2

    if-eqz v5, :cond_5a

    iget-object v7, v0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    aget-object v7, v7, v2

    sget-object v9, Lcom/threed/jpct/CompiledInstance;->smallBufferMT:[[I

    aget-object v9, v9, v2

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10, v5}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    aput v10, v4, v2

    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :goto_2f
    add-int/lit8 v9, v8, 0x1

    move-object/from16 v25, v1

    move-object/from16 v4, v26

    move/from16 v8, v30

    move-object/from16 v13, v32

    move-object/from16 v11, v33

    move/from16 v5, v34

    move-object/from16 v10, v35

    move-object/from16 v12, v36

    move-object/from16 v2, v37

    move/from16 v1, v38

    move-object/from16 v6, v39

    goto/16 :goto_1a

    :cond_5b
    move/from16 v8, v32

    move-object/from16 v39, v37

    const/4 v6, 0x4

    move-object/from16 v37, v2

    move-object/from16 v32, v13

    if-nez v5, :cond_5c

    iget-object v2, v3, Lcom/threed/jpct/Vectors;->nuOrg:[F

    iget-object v9, v3, Lcom/threed/jpct/Vectors;->nvOrg:[F

    aget v2, v2, v7

    invoke-virtual {v1, v2}, Lcom/threed/jpct/GenericContainer;->add(F)V

    aget v2, v9, v7

    invoke-virtual {v1, v2}, Lcom/threed/jpct/GenericContainer;->add(F)V

    goto :goto_30

    :cond_5c
    iget-object v2, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget v2, v2, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    const/4 v9, 0x1

    if-le v2, v9, :cond_5d

    iget-object v2, v3, Lcom/threed/jpct/Vectors;->uMul:[[F

    add-int/lit8 v9, v5, -0x1

    aget-object v2, v2, v9

    iget-object v10, v3, Lcom/threed/jpct/Vectors;->vMul:[[F

    aget-object v9, v10, v9

    aget v2, v2, v7

    invoke-virtual {v1, v2}, Lcom/threed/jpct/GenericContainer;->add(F)V

    aget v2, v9, v7

    invoke-virtual {v1, v2}, Lcom/threed/jpct/GenericContainer;->add(F)V

    :cond_5d
    :goto_30
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v13, v32

    move-object/from16 v2, v37

    move-object/from16 v37, v39

    move/from16 v32, v8

    goto/16 :goto_26

    :cond_5e
    move/from16 v38, v1

    move-object/from16 v37, v2

    move-object/from16 v26, v4

    move-object/from16 v39, v6

    move-object/from16 v35, v10

    move-object/from16 v33, v11

    move-object/from16 v36, v12

    move-object/from16 v32, v13

    move-object/from16 v29, v24

    const/16 v20, 0x0

    move/from16 v24, v7

    sget-object v1, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    const/4 v2, 0x0

    aput v2, v1, v5

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v24, v29

    move-object/from16 v2, v37

    move/from16 v1, v38

    goto/16 :goto_a

    :cond_5f
    move-wide/from16 v18, v5

    goto/16 :goto_18

    :goto_31
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_60

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Processing and uploading vertices of subobject of object "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    invoke-virtual {v2}, Lcom/threed/jpct/Object3D;->getID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    invoke-virtual {v2}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " took "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v18

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_60
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/threed/jpct/CompiledInstance;->filled:Z

    return-void
.end method

.method public add(I)V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/CompiledInstance;->tris:Lcom/threed/jpct/IntList;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/IntList;->add(I)V

    return-void
.end method

.method public bufferError()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/threed/jpct/Config;->useVBO:Z

    const-string v0, "Unable to initialize VBO!"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    return-void
.end method

.method public checkStrips()V
    .locals 24

    move-object/from16 v0, p0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x5

    iget v6, v0, Lcom/threed/jpct/CompiledInstance;->useStrip:I

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    const-string v1, "Triangle strip checker has been called multiple times!"

    invoke-static {v1, v7}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    return-void

    :cond_0
    iget-object v6, v0, Lcom/threed/jpct/CompiledInstance;->tris:Lcom/threed/jpct/IntList;

    invoke-virtual {v6}, Lcom/threed/jpct/IntList;->size()I

    move-result v6

    iget-object v8, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v9, v8, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v8, v8, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v10, v8, Lcom/threed/jpct/Mesh;->points:[[I

    iget-object v11, v8, Lcom/threed/jpct/Mesh;->xOrg:[F

    iget-object v12, v8, Lcom/threed/jpct/Mesh;->yOrg:[F

    iget-object v13, v8, Lcom/threed/jpct/Mesh;->zOrg:[F

    iget-object v14, v9, Lcom/threed/jpct/Vectors;->nuOrg:[F

    iget-object v9, v9, Lcom/threed/jpct/Vectors;->nvOrg:[F

    const-string v15, "Checking for triangle strip..."

    invoke-static {v15, v4}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    new-array v15, v4, [[F

    new-array v1, v4, [[F

    if-lez v6, :cond_c

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->tris:Lcom/threed/jpct/IntList;

    invoke-virtual {v3, v2}, Lcom/threed/jpct/IntList;->get(I)I

    move-result v3

    :goto_0
    if-lt v2, v4, :cond_b

    move-object/from16 v19, v1

    move v1, v7

    move-object/from16 v21, v15

    const/16 v20, 0x0

    :goto_1
    if-lt v1, v6, :cond_2

    iput v7, v0, Lcom/threed/jpct/CompiledInstance;->useStrip:I

    iput v5, v0, Lcom/threed/jpct/CompiledInstance;->primitiveType:I

    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    const-string v1, "Triangle strip found!"

    invoke-static {v1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_1
    return-void

    :cond_2
    iget-object v2, v0, Lcom/threed/jpct/CompiledInstance;->tris:Lcom/threed/jpct/IntList;

    invoke-virtual {v2, v1}, Lcom/threed/jpct/IntList;->get(I)I

    move-result v22

    const/4 v2, 0x0

    :goto_2
    if-lt v2, v4, :cond_a

    const-string v2, "!"

    const-string v3, "Not a triangle strip at position "

    if-nez v20, :cond_6

    aget-object v15, v21, v7

    aget-object v5, v19, v7

    invoke-direct {v0, v15, v5}, Lcom/threed/jpct/CompiledInstance;->compare([F[F)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x2

    aget-object v15, v21, v5

    const/16 v17, 0x0

    aget-object v7, v19, v17

    invoke-direct {v0, v15, v7}, Lcom/threed/jpct/CompiledInstance;->compare([F[F)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v15, 0x1

    const/16 v20, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x2

    :cond_4
    iput v5, v0, Lcom/threed/jpct/CompiledInstance;->useStrip:I

    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_5
    return-void

    :cond_6
    const/4 v5, 0x0

    aget-object v7, v21, v5

    aget-object v15, v19, v5

    invoke-direct {v0, v7, v15}, Lcom/threed/jpct/CompiledInstance;->compare([F[F)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x2

    aget-object v7, v21, v5

    const/4 v15, 0x1

    aget-object v4, v19, v15

    invoke-direct {v0, v7, v4}, Lcom/threed/jpct/CompiledInstance;->compare([F[F)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v20, 0x0

    :goto_3
    add-int/2addr v1, v15

    move v7, v15

    const/4 v4, 0x3

    const/4 v5, 0x5

    move-object/from16 v23, v21

    move-object/from16 v21, v19

    move-object/from16 v19, v23

    goto :goto_1

    :cond_7
    const/4 v5, 0x2

    :cond_8
    iput v5, v0, Lcom/threed/jpct/CompiledInstance;->useStrip:I

    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_9
    return-void

    :cond_a
    aget-object v3, v10, v22

    aget v3, v3, v2

    iget-object v4, v8, Lcom/threed/jpct/Mesh;->coords:[I

    aget v3, v4, v3

    aget-object v4, v19, v2

    aget v5, v11, v3

    const/4 v7, 0x0

    aput v5, v4, v7

    aget v5, v12, v3

    const/4 v7, 0x1

    aput v5, v4, v7

    aget v5, v13, v3

    const/4 v15, 0x2

    aput v5, v4, v15

    aget v5, v14, v3

    const/4 v15, 0x3

    aput v5, v4, v15

    aget v3, v9, v3

    const/4 v5, 0x4

    aput v3, v4, v5

    add-int/2addr v2, v7

    const/4 v4, 0x3

    const/4 v5, 0x5

    goto/16 :goto_2

    :cond_b
    iget-object v4, v8, Lcom/threed/jpct/Mesh;->coords:[I

    aget-object v5, v10, v3

    aget v5, v5, v2

    aget v4, v4, v5

    aget v5, v11, v4

    aget v7, v12, v4

    aget v19, v13, v4

    aget v20, v14, v4

    aget v4, v9, v4

    move/from16 v21, v3

    move/from16 v22, v6

    const/4 v3, 0x5

    new-array v6, v3, [F

    const/16 v18, 0x0

    aput v5, v6, v18

    const/4 v5, 0x1

    aput v7, v6, v5

    const/4 v7, 0x2

    aput v19, v6, v7

    const/16 v17, 0x3

    aput v20, v6, v17

    const/16 v16, 0x4

    aput v4, v6, v16

    aput-object v6, v15, v2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    aput-object v4, v1, v2

    add-int/2addr v2, v5

    move v7, v5

    move/from16 v4, v17

    move/from16 v6, v22

    move v5, v3

    move/from16 v3, v21

    goto/16 :goto_0

    :cond_c
    const/4 v7, 0x2

    iput v7, v0, Lcom/threed/jpct/CompiledInstance;->useStrip:I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public compileToVBO(Ljavax/microedition/khronos/opengles/GL11;Lcom/threed/jpct/GLRenderer;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Lcom/threed/jpct/CompiledInstance;->dynamic:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-object v5, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-boolean v6, v5, Lcom/threed/jpct/Object3D;->sharing:Z

    if-eqz v6, :cond_2

    iget-object v3, v5, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    iget-object v5, v3, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    :goto_0
    if-lt v4, v6, :cond_0

    return-void

    :cond_0
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/threed/jpct/CompiledInstance;

    iget-boolean v7, v3, Lcom/threed/jpct/CompiledInstance;->hasBeenRefilled:Z

    if-eqz v7, :cond_1

    invoke-virtual {v3, v1, v2}, Lcom/threed/jpct/CompiledInstance;->compileToVBO(Ljavax/microedition/khronos/opengles/GL11;Lcom/threed/jpct/GLRenderer;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-nez v3, :cond_4

    iget-boolean v5, v0, Lcom/threed/jpct/CompiledInstance;->buffersCreated:Z

    if-nez v5, :cond_3

    if-eqz v1, :cond_3

    sget-boolean v5, Lcom/threed/jpct/Config;->useVBO:Z

    if-nez v5, :cond_4

    :cond_3
    return-void

    :cond_4
    if-eqz v3, :cond_5

    iget-boolean v5, v0, Lcom/threed/jpct/CompiledInstance;->hasBeenRefilled:Z

    if-nez v5, :cond_5

    return-void

    :cond_5
    const-string v5, "multiTextures"

    const-string v6, "indices"

    const-string v7, "tangents"

    const-string v8, "colors"

    const-string v9, "normals"

    const-string v10, "vertices"

    if-nez v3, :cond_7

    iget-boolean v3, v0, Lcom/threed/jpct/CompiledInstance;->hasBeenVirtualized:Z

    if-eqz v3, :cond_7

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v3, v3, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    if-eqz v3, :cond_7

    const-class v11, Ljava/nio/IntBuffer;

    invoke-virtual {v3, v0, v11, v10}, Lcom/threed/jpct/Virtualizer;->restore(Lcom/threed/jpct/CompiledInstance;Ljava/lang/Class;Ljava/lang/String;)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/IntBuffer;

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v3, v3, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    invoke-virtual {v3, v0, v11, v9}, Lcom/threed/jpct/Virtualizer;->restore(Lcom/threed/jpct/CompiledInstance;Ljava/lang/Class;Ljava/lang/String;)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/IntBuffer;

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v3, v3, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    invoke-virtual {v3, v0, v11, v8}, Lcom/threed/jpct/Virtualizer;->restore(Lcom/threed/jpct/CompiledInstance;Ljava/lang/Class;Ljava/lang/String;)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/IntBuffer;

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v3, v3, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    invoke-virtual {v3, v0, v11, v7}, Lcom/threed/jpct/Virtualizer;->restore(Lcom/threed/jpct/CompiledInstance;Ljava/lang/Class;Ljava/lang/String;)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/IntBuffer;

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v3, v3, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    const-class v12, Ljava/nio/ShortBuffer;

    invoke-virtual {v3, v0, v12, v6}, Lcom/threed/jpct/Virtualizer;->restore(Lcom/threed/jpct/CompiledInstance;Ljava/lang/Class;Ljava/lang/String;)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ShortBuffer;

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    move v3, v4

    :goto_1
    iget v12, v0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    if-lt v3, v12, :cond_6

    goto :goto_2

    :cond_6
    iget-object v12, v0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    iget-object v13, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v13, v13, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v0, v11, v14}, Lcom/threed/jpct/Virtualizer;->restore(Lcom/threed/jpct/CompiledInstance;Ljava/lang/Class;Ljava/lang/String;)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/IntBuffer;

    aput-object v13, v12, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    :cond_8
    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    :cond_9
    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    :cond_a
    move v3, v4

    :goto_3
    iget v11, v0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    if-lt v3, v11, :cond_22

    iput-boolean v4, v0, Lcom/threed/jpct/CompiledInstance;->hasBeenRefilled:Z

    iput-object v2, v0, Lcom/threed/jpct/CompiledInstance;->lastRenderer:Lcom/threed/jpct/GLRenderer;

    iget-boolean v3, v0, Lcom/threed/jpct/CompiledInstance;->dynamic:Z

    if-eqz v3, :cond_b

    const v3, 0x88e8

    :goto_4
    move v11, v3

    goto :goto_5

    :cond_b
    const v3, 0x88e4

    goto :goto_4

    :goto_5
    iget v3, v0, Lcom/threed/jpct/CompiledInstance;->normalsId:I

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v3, :cond_c

    iget-boolean v3, v0, Lcom/threed/jpct/CompiledInstance;->buffersCreated:Z

    if-nez v3, :cond_15

    :cond_c
    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v3

    if-lt v3, v12, :cond_d

    const-string v3, "Creating buffers..."

    invoke-static {v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    :cond_d
    new-array v14, v13, [I

    invoke-interface {v1, v13, v14, v4}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    aget v3, v14, v4

    iput v3, v0, Lcom/threed/jpct/CompiledInstance;->normalsId:I

    invoke-interface {v1, v13, v14, v4}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    aget v3, v14, v4

    iput v3, v0, Lcom/threed/jpct/CompiledInstance;->verticesId:I

    iget v15, v0, Lcom/threed/jpct/CompiledInstance;->normalsId:I

    if-eqz v15, :cond_f

    if-nez v3, :cond_e

    goto :goto_6

    :cond_e
    invoke-virtual {v2, v15}, Lcom/threed/jpct/GLRenderer;->registerVBO(I)V

    iget v3, v0, Lcom/threed/jpct/CompiledInstance;->verticesId:I

    invoke-virtual {v2, v3}, Lcom/threed/jpct/GLRenderer;->registerVBO(I)V

    goto :goto_7

    :cond_f
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/threed/jpct/CompiledInstance;->bufferError()V

    :goto_7
    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    if-eqz v3, :cond_11

    invoke-interface {v1, v13, v14, v4}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    aget v3, v14, v4

    iput v3, v0, Lcom/threed/jpct/CompiledInstance;->colorsId:I

    if-nez v3, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/threed/jpct/CompiledInstance;->bufferError()V

    goto :goto_8

    :cond_10
    invoke-virtual {v2, v3}, Lcom/threed/jpct/GLRenderer;->registerVBO(I)V

    :cond_11
    :goto_8
    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    if-eqz v3, :cond_13

    invoke-interface {v1, v13, v14, v4}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    aget v3, v14, v4

    iput v3, v0, Lcom/threed/jpct/CompiledInstance;->tangentsId:I

    if-nez v3, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/threed/jpct/CompiledInstance;->bufferError()V

    goto :goto_9

    :cond_12
    invoke-virtual {v2, v3}, Lcom/threed/jpct/GLRenderer;->registerVBO(I)V

    :cond_13
    :goto_9
    iget v3, v0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    new-array v3, v3, [I

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstance;->multiTexturesIds:[I

    move v3, v4

    :goto_a
    iget v15, v0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    if-lt v3, v15, :cond_20

    iget-boolean v3, v0, Lcom/threed/jpct/CompiledInstance;->indexed:Z

    if-eqz v3, :cond_15

    invoke-interface {v1, v13, v14, v4}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    aget v3, v14, v4

    iput v3, v0, Lcom/threed/jpct/CompiledInstance;->indicesId:I

    if-nez v3, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/threed/jpct/CompiledInstance;->bufferError()V

    goto :goto_b

    :cond_14
    invoke-virtual {v2, v3}, Lcom/threed/jpct/GLRenderer;->registerVBO(I)V

    :cond_15
    :goto_b
    iput-boolean v13, v0, Lcom/threed/jpct/CompiledInstance;->buffersCreated:Z

    iget v2, v0, Lcom/threed/jpct/CompiledInstance;->normalsId:I

    const v15, 0x8892

    invoke-interface {v1, v15, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v2, v0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    invoke-interface {v1, v15, v2, v3, v11}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    iget v2, v0, Lcom/threed/jpct/CompiledInstance;->verticesId:I

    invoke-interface {v1, v15, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v2, v0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    invoke-interface {v1, v15, v2, v3, v11}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    iget-object v2, v0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    if-eqz v2, :cond_16

    iget v2, v0, Lcom/threed/jpct/CompiledInstance;->colorsId:I

    invoke-interface {v1, v15, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v2, v0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    invoke-interface {v1, v15, v2, v3, v11}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    :cond_16
    iget-object v2, v0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    if-eqz v2, :cond_17

    iget v2, v0, Lcom/threed/jpct/CompiledInstance;->tangentsId:I

    invoke-interface {v1, v15, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v2, v0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    invoke-interface {v1, v15, v2, v3, v11}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    :cond_17
    move v2, v4

    :goto_c
    iget v3, v0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    if-lt v2, v3, :cond_1f

    invoke-interface {v1, v15, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-boolean v2, v0, Lcom/threed/jpct/CompiledInstance;->indexed:Z

    if-eqz v2, :cond_18

    iget v2, v0, Lcom/threed/jpct/CompiledInstance;->indicesId:I

    const v3, 0x8893

    invoke-interface {v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v2, v0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v2, v0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    mul-int/2addr v2, v12

    iget-object v14, v0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    invoke-interface {v1, v3, v2, v14, v11}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    invoke-interface {v1, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    :cond_18
    iget-boolean v1, v0, Lcom/threed/jpct/CompiledInstance;->firstCompile:Z

    if-eqz v1, :cond_1a

    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v1

    if-lt v1, v12, :cond_19

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VBO created for object \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    invoke-virtual {v2}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    :cond_19
    iput-boolean v4, v0, Lcom/threed/jpct/CompiledInstance;->firstCompile:Z

    :cond_1a
    iget-boolean v1, v0, Lcom/threed/jpct/CompiledInstance;->dynamic:Z

    if-nez v1, :cond_1e

    iget-object v1, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v1, v1, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Lcom/threed/jpct/Virtualizer;->isFull()Z

    move-result v1

    if-nez v1, :cond_1e

    iget-boolean v1, v0, Lcom/threed/jpct/CompiledInstance;->hasBeenVirtualized:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    iput-object v2, v0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    iput-object v2, v0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    iput-object v2, v0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    iput-object v2, v0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    :goto_d
    iget v1, v0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    if-lt v4, v1, :cond_1b

    goto :goto_f

    :cond_1b
    iget-object v1, v0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    aput-object v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_1c
    iput-boolean v13, v0, Lcom/threed/jpct/CompiledInstance;->hasBeenVirtualized:Z

    iget-object v1, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v1, v1, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v0, v3, v10}, Lcom/threed/jpct/Virtualizer;->store(Lcom/threed/jpct/CompiledInstance;Ljava/nio/Buffer;Ljava/lang/String;)Z

    iget-object v1, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v1, v1, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v0, v3, v9}, Lcom/threed/jpct/Virtualizer;->store(Lcom/threed/jpct/CompiledInstance;Ljava/nio/Buffer;Ljava/lang/String;)Z

    iput-object v2, v0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    iget-object v1, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v1, v1, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v0, v3, v8}, Lcom/threed/jpct/Virtualizer;->store(Lcom/threed/jpct/CompiledInstance;Ljava/nio/Buffer;Ljava/lang/String;)Z

    iput-object v2, v0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    iget-object v1, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v1, v1, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v0, v3, v7}, Lcom/threed/jpct/Virtualizer;->store(Lcom/threed/jpct/CompiledInstance;Ljava/nio/Buffer;Ljava/lang/String;)Z

    iput-object v2, v0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    iget-object v1, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v1, v1, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v1, v0, v3, v6}, Lcom/threed/jpct/Virtualizer;->store(Lcom/threed/jpct/CompiledInstance;Ljava/nio/Buffer;Ljava/lang/String;)Z

    iput-object v2, v0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    :goto_e
    iget v1, v0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    if-lt v4, v1, :cond_1d

    :goto_f
    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    goto :goto_10

    :cond_1d
    iget-object v1, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v1, v1, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    aget-object v3, v3, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v0, v3, v6}, Lcom/threed/jpct/Virtualizer;->store(Lcom/threed/jpct/CompiledInstance;Ljava/nio/Buffer;Ljava/lang/String;)Z

    iget-object v1, v0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    aput-object v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_1e
    :goto_10
    return-void

    :cond_1f
    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->multiTexturesIds:[I

    aget v3, v3, v2

    invoke-interface {v1, v15, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    iget-object v14, v0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    aget-object v14, v14, v2

    invoke-interface {v1, v15, v3, v14, v11}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_c

    :cond_20
    invoke-interface {v1, v13, v14, v4}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    iget-object v15, v0, Lcom/threed/jpct/CompiledInstance;->multiTexturesIds:[I

    aget v12, v14, v4

    aput v12, v15, v3

    if-nez v12, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/threed/jpct/CompiledInstance;->bufferError()V

    goto :goto_11

    :cond_21
    invoke-virtual {v2, v12}, Lcom/threed/jpct/GLRenderer;->registerVBO(I)V

    :goto_11
    add-int/lit8 v3, v3, 0x1

    const/4 v12, 0x2

    goto/16 :goto_a

    :cond_22
    iget-object v11, v0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    aget-object v11, v11, v3

    if-eqz v11, :cond_23

    invoke-virtual {v11}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3
.end method

.method public copy(Lcom/threed/jpct/CompiledInstance;)V
    .locals 5

    iget-object v0, p1, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    iput-object v0, p0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    iget-object v0, p1, Lcom/threed/jpct/CompiledInstance;->tris:Lcom/threed/jpct/IntList;

    iput-object v0, p0, Lcom/threed/jpct/CompiledInstance;->tris:Lcom/threed/jpct/IntList;

    iget-object v0, p1, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    iput-object v0, p0, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    iget-object v0, p1, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    iput-object v0, p0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    iget-object v0, p1, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    iput-object v0, p0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    iget-object v0, p1, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    iput-object v0, p0, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    iget-object v0, p1, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    iput-object v0, p0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    iget-object v0, p1, Lcom/threed/jpct/CompiledInstance;->vertex2index:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/threed/jpct/CompiledInstance;->vertex2index:Ljava/util/HashMap;

    iget v0, p1, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    iput v0, p0, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    iget v0, p1, Lcom/threed/jpct/CompiledInstance;->endStage:I

    iput v0, p0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    iget-boolean v0, p1, Lcom/threed/jpct/CompiledInstance;->dynamic:Z

    iput-boolean v0, p0, Lcom/threed/jpct/CompiledInstance;->dynamic:Z

    iget v0, p1, Lcom/threed/jpct/CompiledInstance;->cnt:I

    iput v0, p0, Lcom/threed/jpct/CompiledInstance;->cnt:I

    iget-boolean v0, p1, Lcom/threed/jpct/CompiledInstance;->indexed:Z

    iput-boolean v0, p0, Lcom/threed/jpct/CompiledInstance;->indexed:Z

    iget-boolean v0, p1, Lcom/threed/jpct/CompiledInstance;->staticUV:Z

    iput-boolean v0, p0, Lcom/threed/jpct/CompiledInstance;->staticUV:Z

    iget v0, p1, Lcom/threed/jpct/CompiledInstance;->treeID:I

    iput v0, p0, Lcom/threed/jpct/CompiledInstance;->treeID:I

    iget-object v0, p1, Lcom/threed/jpct/CompiledInstance;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/threed/jpct/CompiledInstance;->key:Ljava/lang/String;

    iget v0, p1, Lcom/threed/jpct/CompiledInstance;->indexCount:I

    iput v0, p0, Lcom/threed/jpct/CompiledInstance;->indexCount:I

    iget v0, p1, Lcom/threed/jpct/CompiledInstance;->primitiveType:I

    iput v0, p0, Lcom/threed/jpct/CompiledInstance;->primitiveType:I

    iget-boolean v0, p1, Lcom/threed/jpct/CompiledInstance;->needsCoordMapper:Z

    iput-boolean v0, p0, Lcom/threed/jpct/CompiledInstance;->needsCoordMapper:Z

    iget-object v0, p1, Lcom/threed/jpct/CompiledInstance;->coordMapper:[I

    iput-object v0, p0, Lcom/threed/jpct/CompiledInstance;->coordMapper:[I

    iget-object v0, p1, Lcom/threed/jpct/CompiledInstance;->vcoords:[I

    iput-object v0, p0, Lcom/threed/jpct/CompiledInstance;->vcoords:[I

    iget-object v0, p1, Lcom/threed/jpct/CompiledInstance;->ncoords:[I

    iput-object v0, p0, Lcom/threed/jpct/CompiledInstance;->ncoords:[I

    iget-boolean v0, p1, Lcom/threed/jpct/CompiledInstance;->buffersCreated:Z

    iput-boolean v0, p0, Lcom/threed/jpct/CompiledInstance;->buffersCreated:Z

    iget v0, p1, Lcom/threed/jpct/CompiledInstance;->verticesId:I

    iput v0, p0, Lcom/threed/jpct/CompiledInstance;->verticesId:I

    iget v0, p1, Lcom/threed/jpct/CompiledInstance;->normalsId:I

    iput v0, p0, Lcom/threed/jpct/CompiledInstance;->normalsId:I

    iget v0, p1, Lcom/threed/jpct/CompiledInstance;->indicesId:I

    iput v0, p0, Lcom/threed/jpct/CompiledInstance;->indicesId:I

    iget v0, p1, Lcom/threed/jpct/CompiledInstance;->tangentsId:I

    iput v0, p0, Lcom/threed/jpct/CompiledInstance;->tangentsId:I

    iget v0, p1, Lcom/threed/jpct/CompiledInstance;->colorsId:I

    iput v0, p0, Lcom/threed/jpct/CompiledInstance;->colorsId:I

    iget-boolean v0, p1, Lcom/threed/jpct/CompiledInstance;->vboPossible:Z

    iput-boolean v0, p0, Lcom/threed/jpct/CompiledInstance;->vboPossible:Z

    iget-object v0, p1, Lcom/threed/jpct/CompiledInstance;->multiTexturesIds:[I

    if-eqz v0, :cond_1

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/threed/jpct/CompiledInstance;->multiTexturesIds:[I

    iget-object p1, p1, Lcom/threed/jpct/CompiledInstance;->multiTexturesIds:[I

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    aget v3, p1, v1

    iget-object v4, p0, Lcom/threed/jpct/CompiledInstance;->multiTexturesIds:[I

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-boolean p1, p0, Lcom/threed/jpct/CompiledInstance;->buffersCreated:Z

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Object \'"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' shares VBOs ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/threed/jpct/CompiledInstance;->verticesId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/threed/jpct/CompiledInstance;->normalsId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") with object \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public dispose(Lcom/threed/jpct/GLRenderer;)V
    .locals 2

    iget-boolean v0, p0, Lcom/threed/jpct/CompiledInstance;->buffersCreated:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/threed/jpct/CompiledInstance;->vboPossible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/threed/jpct/CompiledInstance;->lastRenderer:Lcom/threed/jpct/GLRenderer;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/threed/jpct/CompiledInstance;->normalsId:I

    invoke-virtual {p1, v0}, Lcom/threed/jpct/GLRenderer;->deleteBuffer(I)V

    iget v0, p0, Lcom/threed/jpct/CompiledInstance;->verticesId:I

    invoke-virtual {p1, v0}, Lcom/threed/jpct/GLRenderer;->deleteBuffer(I)V

    iget v0, p0, Lcom/threed/jpct/CompiledInstance;->colorsId:I

    invoke-virtual {p1, v0}, Lcom/threed/jpct/GLRenderer;->deleteBuffer(I)V

    iget v0, p0, Lcom/threed/jpct/CompiledInstance;->indicesId:I

    invoke-virtual {p1, v0}, Lcom/threed/jpct/GLRenderer;->deleteBuffer(I)V

    iget v0, p0, Lcom/threed/jpct/CompiledInstance;->tangentsId:I

    invoke-virtual {p1, v0}, Lcom/threed/jpct/GLRenderer;->deleteBuffer(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    if-lt v0, v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "VBO disposed for object \'"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/threed/jpct/CompiledInstance;->multiTexturesIds:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/threed/jpct/GLRenderer;->deleteBuffer(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object p1, p1, Lcom/threed/jpct/Object3D;->renderHook:Lcom/threed/jpct/IRenderHook;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/threed/jpct/IRenderHook;->onDispose()V

    :cond_2
    return-void
.end method

.method public error(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "Error while compiling instance!"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public declared-synchronized fill()V
    .locals 6

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lcom/threed/jpct/CompiledInstance;->_fill()V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "State: "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    const/4 v5, 0x2

    aget v2, v2, v5

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    const/4 v5, 0x3

    aget v2, v2, v5

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public finalize()V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/CompiledInstance;->lastRenderer:Lcom/threed/jpct/GLRenderer;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/threed/jpct/CompiledInstance;->dispose(Lcom/threed/jpct/GLRenderer;)V

    :cond_0
    return-void
.end method

.method public flip(Ljava/nio/Buffer;I)Ljava/nio/Buffer;
    .locals 2

    instance-of v0, p1, Ljava/nio/IntBuffer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/nio/IntBuffer;

    mul-int/lit8 v0, p2, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    new-array p2, p2, [I

    invoke-virtual {p1, p2}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    return-object v0

    :cond_0
    check-cast p1, Ljava/nio/FloatBuffer;

    mul-int/lit8 v0, p2, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    new-array p2, p2, [F

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/CompiledInstance;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getPolyIndex()I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    return v0
.end method

.method public getStageCount()I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    return v0
.end method

.method public getTreeID()I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/CompiledInstance;->treeID:I

    return v0
.end method

.method public declared-synchronized isFilled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/threed/jpct/CompiledInstance;->filled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized render(ILcom/threed/jpct/GLRenderer;[F[FZLcom/threed/jpct/Camera;[[FZ)V
    .locals 28

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    monitor-enter p0

    :try_start_0
    iget-object v6, v3, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v7, v3, Lcom/threed/jpct/GLRenderer;->gl11:Ljavax/microedition/khronos/opengles/GL11;

    sget-object v8, Lcom/threed/jpct/CompiledInstance;->lights4:[F

    iget-object v9, v1, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    invoke-virtual {v9}, Lcom/threed/jpct/Object3D;->getShaderInternal()Lcom/threed/jpct/GLSLShader;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/threed/jpct/GLRenderer;->setShader(Lcom/threed/jpct/GLSLShader;)V

    iget-object v0, v9, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    iget-object v0, v9, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    const v11, -0x3b9ac9ff

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v0, :cond_5

    iget-boolean v15, v9, Lcom/threed/jpct/Object3D;->sharing:Z

    if-nez v15, :cond_5

    iput-boolean v13, v9, Lcom/threed/jpct/Object3D;->sharing:Z

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v10, v0, :cond_0

    const-string v0, "Number of compiled instances don\'t match...can\'t share data!"

    invoke-static {v0, v14}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_32

    :cond_0
    move v0, v14

    :goto_0
    if-lt v0, v10, :cond_1

    :try_start_1
    invoke-virtual {v1, v7, v3}, Lcom/threed/jpct/CompiledInstance;->compileToVBO(Ljavax/microedition/khronos/opengles/GL11;Lcom/threed/jpct/GLRenderer;)V

    iput v2, v1, Lcom/threed/jpct/CompiledInstance;->rendererID:I

    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v0

    if-lt v0, v12, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v15, "Object \'"

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\' shares compiled data with object \'"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v9, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    invoke-virtual {v15}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\'"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v15, v9, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/threed/jpct/CompiledInstance;

    iget-object v13, v9, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    iget-object v13, v13, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/threed/jpct/CompiledInstance;

    sget-boolean v16, Lcom/threed/jpct/Config;->useVBO:Z

    if-eqz v16, :cond_4

    if-eqz v7, :cond_4

    iget-boolean v14, v13, Lcom/threed/jpct/CompiledInstance;->vboPossible:Z

    if-eqz v14, :cond_4

    iget v14, v13, Lcom/threed/jpct/CompiledInstance;->rendererID:I

    if-eq v14, v2, :cond_3

    if-eq v14, v11, :cond_3

    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v14

    if-lt v14, v12, :cond_2

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v12, "OpenGL context has changed(1)...recovering for renderer "

    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/threed/jpct/CompiledInstance;->rendererID:I

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "!"

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    :cond_2
    const/4 v12, 0x0

    iput-boolean v12, v13, Lcom/threed/jpct/CompiledInstance;->buffersCreated:Z

    :cond_3
    invoke-virtual {v13, v7, v3}, Lcom/threed/jpct/CompiledInstance;->compileToVBO(Ljavax/microedition/khronos/opengles/GL11;Lcom/threed/jpct/GLRenderer;)V

    iput v2, v13, Lcom/threed/jpct/CompiledInstance;->rendererID:I

    :cond_4
    invoke-virtual {v15, v13}, Lcom/threed/jpct/CompiledInstance;->copy(Lcom/threed/jpct/CompiledInstance;)V

    const/4 v12, 0x1

    iput-boolean v12, v15, Lcom/threed/jpct/CompiledInstance;->filled:Z

    add-int/lit8 v0, v0, 0x1

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_5
    :goto_1
    iget-boolean v0, v1, Lcom/threed/jpct/CompiledInstance;->filled:Z

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "render() called on an uncompiled object ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_6
    :try_start_2
    iget-object v0, v9, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_3
    iget-object v0, v0, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    iget v12, v0, Lcom/threed/jpct/Lights;->lightCnt:I

    iget-object v0, v1, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    if-nez v0, :cond_8

    iget v0, v1, Lcom/threed/jpct/CompiledInstance;->colorsId:I

    if-nez v0, :cond_8

    const/4 v13, 0x0

    goto :goto_2

    :cond_8
    const/4 v13, 0x1

    :goto_2
    iget-object v0, v1, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    if-nez v0, :cond_9

    iget v0, v1, Lcom/threed/jpct/CompiledInstance;->tangentsId:I

    if-nez v0, :cond_9

    const/4 v14, 0x0

    goto :goto_3

    :cond_9
    const/4 v14, 0x1

    :goto_3
    iget v0, v1, Lcom/threed/jpct/CompiledInstance;->rendererID:I

    if-ne v0, v11, :cond_b

    iput v2, v1, Lcom/threed/jpct/CompiledInstance;->rendererID:I

    :cond_a
    move-object/from16 v19, v8

    move/from16 v18, v14

    goto/16 :goto_a

    :cond_b
    if-eq v0, v2, :cond_a

    iget-boolean v0, v1, Lcom/threed/jpct/CompiledInstance;->buffersCreated:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_11

    :try_start_4
    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v0

    const/4 v11, 0x2

    if-lt v0, v11, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v11, "OpenGL context has changed(2)...recovering for renderer "

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/threed/jpct/CompiledInstance;->rendererID:I

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "!"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    :cond_c
    const/4 v11, 0x0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object/from16 v19, v8

    move/from16 v18, v14

    goto/16 :goto_8

    :goto_4
    iput-boolean v11, v1, Lcom/threed/jpct/CompiledInstance;->buffersCreated:Z

    iget-object v0, v9, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    if-eqz v0, :cond_d

    const/4 v11, 0x1

    iput-boolean v11, v9, Lcom/threed/jpct/Object3D;->sharing:Z

    const/4 v0, 0x0

    :goto_5
    if-lt v0, v10, :cond_e

    :cond_d
    move-object/from16 v19, v8

    move/from16 v18, v14

    goto :goto_7

    :cond_e
    iget-object v11, v9, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/threed/jpct/CompiledInstance;

    iget-object v15, v9, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    iget-object v15, v15, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/threed/jpct/CompiledInstance;

    sget-boolean v18, Lcom/threed/jpct/Config;->useVBO:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v18, :cond_10

    if-eqz v7, :cond_10

    move/from16 v18, v14

    :try_start_5
    iget-boolean v14, v15, Lcom/threed/jpct/CompiledInstance;->vboPossible:Z

    if-eqz v14, :cond_f

    iget v14, v15, Lcom/threed/jpct/CompiledInstance;->rendererID:I

    if-eq v14, v2, :cond_f

    new-instance v14, Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v19, v8

    :try_start_6
    const-string v8, "Uploading data for parent object "

    invoke-direct {v14, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v9, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    invoke-virtual {v8}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "!"

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    const/4 v8, 0x0

    iput-boolean v8, v15, Lcom/threed/jpct/CompiledInstance;->buffersCreated:Z

    invoke-virtual {v15, v7, v3}, Lcom/threed/jpct/CompiledInstance;->compileToVBO(Ljavax/microedition/khronos/opengles/GL11;Lcom/threed/jpct/GLRenderer;)V

    iput v2, v15, Lcom/threed/jpct/CompiledInstance;->rendererID:I

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v19, v8

    goto :goto_8

    :cond_f
    move-object/from16 v19, v8

    goto :goto_6

    :cond_10
    move-object/from16 v19, v8

    move/from16 v18, v14

    :goto_6
    invoke-virtual {v11, v15}, Lcom/threed/jpct/CompiledInstance;->copy(Lcom/threed/jpct/CompiledInstance;)V

    add-int/lit8 v0, v0, 0x1

    move/from16 v14, v18

    move-object/from16 v8, v19

    goto :goto_5

    :goto_7
    invoke-virtual {v1, v7, v3}, Lcom/threed/jpct/CompiledInstance;->compileToVBO(Ljavax/microedition/khronos/opengles/GL11;Lcom/threed/jpct/GLRenderer;)V

    iget-boolean v0, v1, Lcom/threed/jpct/CompiledInstance;->dynamic:Z

    if-eqz v0, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/threed/jpct/CompiledInstance;->fill()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_9

    :goto_8
    :try_start_7
    const-string v8, "Unable to recover to use VBO...using normal vertex arrays instead!"

    const/4 v11, 0x1

    invoke-static {v8, v11}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    :cond_11
    move-object/from16 v19, v8

    move/from16 v18, v14

    :cond_12
    :goto_9
    iput v2, v1, Lcom/threed/jpct/CompiledInstance;->rendererID:I

    :goto_a
    iput-object v3, v1, Lcom/threed/jpct/CompiledInstance;->lastRenderer:Lcom/threed/jpct/GLRenderer;

    const/4 v8, 0x1

    if-le v10, v8, :cond_13

    const/4 v0, 0x1

    goto :goto_b

    :cond_13
    const/4 v0, 0x0

    :goto_b
    iget-object v8, v1, Lcom/threed/jpct/CompiledInstance;->dumpy:[F

    const/16 v11, 0x10

    if-nez v8, :cond_15

    if-eqz v0, :cond_14

    new-array v8, v11, [F

    iput-object v8, v1, Lcom/threed/jpct/CompiledInstance;->dumpy:[F

    goto :goto_c

    :cond_14
    sget-object v8, Lcom/threed/jpct/CompiledInstance;->STATIC_DUMPY:[F

    iput-object v8, v1, Lcom/threed/jpct/CompiledInstance;->dumpy:[F

    :cond_15
    :goto_c
    if-eqz v0, :cond_16

    iget-object v8, v3, Lcom/threed/jpct/GLRenderer;->matrixCache:Ljava/util/HashMap;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    goto :goto_d

    :cond_16
    const/4 v8, 0x0

    :goto_d
    if-nez v8, :cond_17

    sget-object v8, Lcom/threed/jpct/CompiledInstance;->mo:Lcom/threed/jpct/Matrix;

    iget-object v14, v9, Lcom/threed/jpct/Object3D;->transBuffer:Lcom/threed/jpct/Matrix;

    invoke-virtual {v8, v14}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    sget-object v8, Lcom/threed/jpct/CompiledInstance;->mat:Lcom/threed/jpct/Matrix;

    invoke-virtual/range {p6 .. p6}, Lcom/threed/jpct/Camera;->getBack()Lcom/threed/jpct/Matrix;

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    sget-object v8, Lcom/threed/jpct/CompiledInstance;->mat:Lcom/threed/jpct/Matrix;

    invoke-virtual {v8}, Lcom/threed/jpct/Matrix;->transformToGL()V

    sget-object v8, Lcom/threed/jpct/CompiledInstance;->mo:Lcom/threed/jpct/Matrix;

    iget v14, v5, Lcom/threed/jpct/Camera;->backBx:F

    neg-float v14, v14

    iget v15, v5, Lcom/threed/jpct/Camera;->backBy:F

    neg-float v15, v15

    iget v5, v5, Lcom/threed/jpct/Camera;->backBz:F

    neg-float v5, v5

    invoke-virtual {v8, v14, v15, v5}, Lcom/threed/jpct/Matrix;->translate(FFF)V

    sget-object v5, Lcom/threed/jpct/CompiledInstance;->mo:Lcom/threed/jpct/Matrix;

    sget-object v8, Lcom/threed/jpct/CompiledInstance;->mat:Lcom/threed/jpct/Matrix;

    invoke-virtual {v5, v8}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    sget-object v5, Lcom/threed/jpct/CompiledInstance;->mo:Lcom/threed/jpct/Matrix;

    iget-object v8, v1, Lcom/threed/jpct/CompiledInstance;->dumpy:[F

    invoke-virtual {v5, v8}, Lcom/threed/jpct/Matrix;->fillDump([F)[F

    move-result-object v8

    if-eqz v0, :cond_17

    iget-object v0, v3, Lcom/threed/jpct/GLRenderer;->matrixCache:Ljava/util/HashMap;

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    const/16 v0, 0x1700

    invoke-interface {v6, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {v6}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-interface {v6}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    iget-boolean v5, v9, Lcom/threed/jpct/Object3D;->doCulling:Z

    if-eqz v5, :cond_18

    iget-boolean v5, v9, Lcom/threed/jpct/Object3D;->reverseCulling:Z

    if-eqz v5, :cond_19

    const/16 v5, 0x404

    invoke-interface {v6, v5}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    const/4 v5, 0x1

    goto :goto_e

    :cond_18
    const/16 v5, 0xb44

    invoke-interface {v6, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    :cond_19
    const/4 v5, 0x0

    :goto_e
    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v0, 0x4

    const/4 v11, 0x3

    if-nez p8, :cond_2f

    if-eqz v13, :cond_1a

    aput v14, v4, v11

    :cond_1a
    const/16 v14, 0xb53

    move-object/from16 v15, p3

    const/4 v11, 0x0

    invoke-interface {v6, v14, v15, v11}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelfv(I[FI)V

    const/16 v14, 0x1600

    const/16 v15, 0x408

    invoke-interface {v6, v15, v14, v4, v11}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    sget-object v11, Lcom/threed/jpct/CompiledInstance;->allOnes3:[F

    const/4 v14, 0x3

    aget v21, v4, v14

    aput v21, v11, v14

    const/4 v14, 0x5

    const/4 v15, 0x1

    if-le v10, v15, :cond_1d

    const/4 v10, 0x0

    const/4 v15, 0x0

    :goto_f
    if-ge v10, v12, :cond_1e

    const/16 v11, 0x8

    if-lt v10, v11, :cond_1b

    goto :goto_10

    :cond_1b
    int-to-float v11, v10

    aget-object v23, p7, v10

    const/16 v16, 0x0

    aget v24, v23, v16

    const v25, -0x39e3c400    # -9999.0f

    cmpl-float v25, v24, v25

    if-eqz v25, :cond_1c

    const v25, 0x3f37d567    # 0.7181f

    add-float v25, v11, v25

    mul-float v25, v25, v24

    add-float v15, v15, v25

    const v24, 0x3f8ccccd    # 1.1f

    add-float v24, v11, v24

    const/16 v25, 0x1

    aget v26, v23, v25

    mul-float v24, v24, v26

    add-float v15, v15, v24

    const v24, 0x400f5c29    # 2.24f

    add-float v24, v11, v24

    const/16 v17, 0x2

    aget v25, v23, v17

    mul-float v24, v24, v25

    add-float v15, v15, v24

    const v24, 0x406449ba    # 3.567f

    add-float v24, v11, v24

    const/16 v21, 0x3

    aget v25, v23, v21

    mul-float v24, v24, v25

    add-float v15, v15, v24

    const v24, 0x411ba29c

    add-float v11, v11, v24

    aget v24, v23, v0

    aget v25, v23, v14

    const v26, 0x3fb33333    # 1.4f

    mul-float v25, v25, v26

    add-float v24, v24, v25

    const/16 v22, 0x6

    aget v23, v23, v22

    const v25, 0x4091eb85    # 4.56f

    mul-float v23, v23, v25

    add-float v24, v24, v23

    mul-float v11, v11, v24

    add-float/2addr v15, v11

    :cond_1c
    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    :cond_1d
    const/4 v15, 0x0

    :cond_1e
    :goto_10
    if-eqz v13, :cond_1f

    const/16 v10, 0xb57

    invoke-interface {v6, v10}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    :cond_1f
    sget v10, Lcom/threed/jpct/CompiledInstance;->chkSum:F

    cmpl-float v10, v10, v15

    if-nez v10, :cond_21

    sget-object v10, Lcom/threed/jpct/CompiledInstance;->lastObj:Lcom/threed/jpct/Object3D;

    if-eq v10, v9, :cond_20

    goto :goto_11

    :cond_20
    move/from16 v27, v5

    move/from16 v19, v13

    const/high16 v20, 0x3f800000    # 1.0f

    goto/16 :goto_1b

    :cond_21
    :goto_11
    iget-boolean v10, v3, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-nez v10, :cond_22

    sget-object v10, Lcom/threed/jpct/CompiledInstance;->ALL_ONES_3:[F

    const/16 v14, 0x1200

    const/16 v0, 0x408

    const/4 v11, 0x0

    invoke-interface {v6, v0, v14, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    sget-object v10, Lcom/threed/jpct/CompiledInstance;->allOnes3:[F

    const/16 v14, 0x1201

    invoke-interface {v6, v0, v14, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    const/16 v14, 0x1202

    invoke-interface {v6, v0, v14, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    :cond_22
    sget v0, Lcom/threed/jpct/CompiledInstance;->lastLightCnt:I

    if-ge v12, v0, :cond_23

    const/4 v0, 0x0

    :goto_12
    sget v10, Lcom/threed/jpct/CompiledInstance;->lastLightCnt:I

    if-lt v0, v10, :cond_24

    :cond_23
    const/4 v10, 0x0

    goto :goto_13

    :cond_24
    sget-object v10, Lcom/threed/jpct/CompiledInstance;->LIGHTS:[I

    aget v10, v10, v0

    invoke-interface {v6, v10}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :goto_13
    sput v10, Lcom/threed/jpct/CompiledInstance;->lastLightCnt:I

    const/4 v0, 0x0

    :goto_14
    if-ge v0, v12, :cond_25

    const/16 v10, 0x8

    if-lt v0, v10, :cond_26

    :cond_25
    move/from16 v27, v5

    move/from16 v19, v13

    const/high16 v20, 0x3f800000    # 1.0f

    goto/16 :goto_1a

    :cond_26
    aget-object v10, p7, v0

    sget-object v11, Lcom/threed/jpct/CompiledInstance;->LIGHTS:[I

    aget v11, v11, v0

    const/4 v14, 0x0

    aget v26, v10, v14

    const v14, -0x39e3c400    # -9999.0f

    cmpl-float v14, v26, v14

    if-nez v14, :cond_27

    invoke-interface {v6, v11}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    move/from16 v27, v5

    move/from16 v26, v12

    move-object/from16 v5, v19

    const/16 v2, 0x1202

    const/4 v12, 0x6

    const/4 v14, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v19, v13

    const/16 v13, 0x408

    goto/16 :goto_19

    :cond_27
    sget v14, Lcom/threed/jpct/CompiledInstance;->lastLightCnt:I

    const/16 v26, 0x1

    add-int/lit8 v14, v14, 0x1

    sput v14, Lcom/threed/jpct/CompiledInstance;->lastLightCnt:I

    sget v14, Lcom/threed/jpct/CompiledInstance;->chkSum:F

    cmpl-float v14, v14, v15

    if-nez v14, :cond_28

    sget-object v14, Lcom/threed/jpct/CompiledInstance;->lastObj:Lcom/threed/jpct/Object3D;

    if-ne v14, v9, :cond_28

    const/4 v14, 0x0

    goto :goto_15

    :cond_28
    const/4 v14, 0x1

    :goto_15
    if-eqz v14, :cond_2b

    invoke-interface {v6, v11}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const/16 v26, 0x1

    aget v27, v10, v26

    const/16 v16, 0x0

    aput v27, v19, v16

    const/16 v17, 0x2

    aget v27, v10, v17

    aput v27, v19, v26

    const/16 v21, 0x3

    aget v26, v10, v21

    aput v26, v19, v17

    const/high16 v20, 0x3f800000    # 1.0f

    aput v20, v19, v21

    move/from16 v26, v12

    const/16 v12, 0x1203

    move/from16 v27, v5

    move-object/from16 v5, v19

    const/4 v2, 0x0

    invoke-interface {v6, v11, v12, v5, v2}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    const/4 v12, 0x4

    aget v16, v10, v12

    aput v16, v5, v2

    const/4 v2, 0x5

    aget v12, v10, v2

    const/4 v2, 0x1

    aput v12, v5, v2

    const/4 v2, 0x6

    aget v12, v10, v2

    const/4 v2, 0x2

    aput v12, v5, v2

    const/4 v2, 0x3

    const/4 v12, 0x0

    aput v12, v5, v2

    const/16 v2, 0x1201

    const/4 v12, 0x0

    invoke-interface {v6, v11, v2, v5, v12}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    sget-object v2, Lcom/threed/jpct/CompiledInstance;->ALL_ZEROS:[F

    move/from16 v19, v13

    const/16 v13, 0x1200

    invoke-interface {v6, v11, v13, v2, v12}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    aget v2, v10, v12

    const/4 v12, 0x0

    cmpl-float v13, v2, v12

    if-ltz v13, :cond_2a

    cmpl-float v13, v2, v12

    if-nez v13, :cond_29

    const v2, 0x3a83126f    # 0.001f

    :cond_29
    const/high16 v12, 0x40800000    # 4.0f

    div-float/2addr v12, v2

    const/16 v2, 0x1208

    invoke-interface {v6, v11, v2, v12}, Ljavax/microedition/khronos/opengles/GL10;->glLightf(IIF)V

    goto :goto_16

    :cond_2a
    const/16 v2, 0x1208

    const/4 v12, 0x0

    invoke-interface {v6, v11, v2, v12}, Ljavax/microedition/khronos/opengles/GL10;->glLightf(IIF)V

    goto :goto_16

    :cond_2b
    move/from16 v27, v5

    move/from16 v26, v12

    move-object/from16 v5, v19

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v19, v13

    :goto_16
    iget-boolean v2, v9, Lcom/threed/jpct/Object3D;->doSpecularLighting:Z

    if-nez v2, :cond_2c

    sget-object v2, Lcom/threed/jpct/CompiledInstance;->ALL_ZEROS:[F

    const/4 v10, 0x0

    const/16 v12, 0x1202

    invoke-interface {v6, v11, v12, v2, v10}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    const/16 v2, 0x1202

    const/4 v12, 0x6

    const/16 v13, 0x408

    const/4 v14, 0x0

    goto :goto_19

    :cond_2c
    sget v2, Lcom/threed/jpct/Config;->specPow:F

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v2, v12

    const/16 v12, 0x1601

    const/16 v13, 0x408

    invoke-interface {v6, v13, v12, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialf(IIF)V

    if-nez v14, :cond_2d

    const/4 v2, 0x4

    aget v12, v10, v2

    const/4 v2, 0x0

    aput v12, v5, v2

    const/4 v2, 0x5

    aget v12, v10, v2

    const/4 v14, 0x1

    aput v12, v5, v14

    const/4 v12, 0x6

    aget v10, v10, v12

    const/4 v14, 0x2

    aput v10, v5, v14

    const/4 v10, 0x3

    const/4 v14, 0x0

    aput v14, v5, v10

    :goto_17
    const/16 v2, 0x1202

    const/4 v10, 0x0

    goto :goto_18

    :cond_2d
    const/4 v12, 0x6

    const/4 v14, 0x0

    goto :goto_17

    :goto_18
    invoke-interface {v6, v11, v2, v5, v10}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    :goto_19
    add-int/lit8 v0, v0, 0x1

    move/from16 v2, p1

    move/from16 v13, v19

    move/from16 v12, v26

    move-object/from16 v19, v5

    move/from16 v5, v27

    goto/16 :goto_14

    :goto_1a
    sput-object v9, Lcom/threed/jpct/CompiledInstance;->lastObj:Lcom/threed/jpct/Object3D;

    sput v15, Lcom/threed/jpct/CompiledInstance;->chkSum:F

    :goto_1b
    iget-boolean v0, v9, Lcom/threed/jpct/Object3D;->isFlatShaded:Z

    if-eqz v0, :cond_2e

    const/16 v0, 0x1d00

    invoke-interface {v6, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    :cond_2e
    :goto_1c
    const/4 v2, 0x0

    goto :goto_1d

    :cond_2f
    move/from16 v27, v5

    move/from16 v19, v13

    move/from16 v20, v14

    const/16 v0, 0xb50

    invoke-interface {v6, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto :goto_1c

    :goto_1d
    invoke-interface {v6, v8, v2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf([FI)V

    iget-object v0, v9, Lcom/threed/jpct/Object3D;->renderHook:Lcom/threed/jpct/IRenderHook;

    if-eqz v0, :cond_31

    if-eqz v4, :cond_30

    const/4 v2, 0x3

    aget v14, v4, v2

    goto :goto_1e

    :cond_30
    move/from16 v14, v20

    :goto_1e
    invoke-interface {v0, v14}, Lcom/threed/jpct/IRenderHook;->setTransparency(F)V

    invoke-interface {v0, v9}, Lcom/threed/jpct/IRenderHook;->setCurrentObject3D(Lcom/threed/jpct/Object3D;)V

    iget v2, v1, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    invoke-interface {v0, v2}, Lcom/threed/jpct/IRenderHook;->beforeRendering(I)V

    :cond_31
    invoke-virtual/range {p2 .. p2}, Lcom/threed/jpct/GLRenderer;->initShader()Lcom/threed/jpct/GLSLShader;

    move-result-object v2

    if-eqz v2, :cond_32

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/threed/jpct/GLSLShader;->directMode:Z

    :cond_32
    if-eqz v0, :cond_33

    invoke-interface {v0, v2}, Lcom/threed/jpct/IRenderHook;->setCurrentShader(Lcom/threed/jpct/GLSLShader;)V

    :cond_33
    sget-boolean v4, Lcom/threed/jpct/Config;->useVBO:Z

    const/16 v5, 0x1702

    const/4 v10, -0x1

    const/16 v11, 0xc

    const v12, 0x8076

    const/16 v13, 0x140c

    if-eqz v4, :cond_34

    if-eqz v7, :cond_34

    iget-boolean v4, v1, Lcom/threed/jpct/CompiledInstance;->vboPossible:Z

    if-nez v4, :cond_35

    :cond_34
    move/from16 v14, p1

    goto/16 :goto_27

    :cond_35
    invoke-virtual {v1, v7, v3}, Lcom/threed/jpct/CompiledInstance;->compileToVBO(Ljavax/microedition/khronos/opengles/GL11;Lcom/threed/jpct/GLRenderer;)V

    sget-object v4, Lcom/threed/jpct/CompiledInstance;->lastVertexBuffer:Ljava/nio/Buffer;

    iget-object v15, v1, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    const v14, 0x8892

    if-eq v4, v15, :cond_39

    sput-object v15, Lcom/threed/jpct/CompiledInstance;->lastVertexBuffer:Ljava/nio/Buffer;

    const v4, 0x8075

    invoke-interface {v7, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    iget v4, v1, Lcom/threed/jpct/CompiledInstance;->normalsId:I

    invoke-interface {v7, v14, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    const/4 v4, 0x0

    invoke-interface {v7, v13, v11, v4}, Ljavax/microedition/khronos/opengles/GL11;->glNormalPointer(III)V

    const v15, 0x8074

    invoke-interface {v7, v15}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    iget v15, v1, Lcom/threed/jpct/CompiledInstance;->verticesId:I

    invoke-interface {v7, v14, v15}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    const/4 v15, 0x3

    invoke-interface {v7, v15, v13, v11, v4}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    if-nez v19, :cond_36

    invoke-interface {v6, v12}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    goto :goto_1f

    :cond_36
    iget v4, v1, Lcom/threed/jpct/CompiledInstance;->colorsId:I

    invoke-interface {v7, v14, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    invoke-interface {v6, v12}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    const/4 v4, 0x0

    const/16 v11, 0x10

    const/4 v12, 0x4

    invoke-interface {v7, v12, v13, v11, v4}, Ljavax/microedition/khronos/opengles/GL11;->glColorPointer(IIII)V

    :goto_1f
    if-nez v18, :cond_37

    invoke-virtual/range {p2 .. p2}, Lcom/threed/jpct/GLRenderer;->clearTangents()V

    goto :goto_20

    :cond_37
    iget v4, v1, Lcom/threed/jpct/CompiledInstance;->tangentsId:I

    invoke-virtual {v3, v4}, Lcom/threed/jpct/GLRenderer;->setTangents(I)V

    :goto_20
    invoke-virtual/range {p2 .. p2}, Lcom/threed/jpct/GLRenderer;->clearStageFlag()V

    const/4 v4, 0x0

    :goto_21
    iget v11, v1, Lcom/threed/jpct/CompiledInstance;->endStage:I

    if-lt v4, v11, :cond_38

    const/4 v11, 0x0

    invoke-interface {v7, v14, v11}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    goto :goto_23

    :cond_38
    sget-object v11, Lcom/threed/jpct/CompiledInstance;->stageMap:[I

    aget v11, v11, v4

    invoke-interface {v6, v11}, Ljavax/microedition/khronos/opengles/GL10;->glClientActiveTexture(I)V

    const v11, 0x8078

    invoke-interface {v6, v11}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    iget-object v11, v1, Lcom/threed/jpct/CompiledInstance;->multiTexturesIds:[I

    aget v11, v11, v4

    invoke-interface {v7, v14, v11}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/16 v15, 0x8

    invoke-interface {v7, v11, v13, v15, v12}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_39
    if-nez v19, :cond_3a

    invoke-interface {v6, v12}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    goto :goto_22

    :cond_3a
    iget v4, v1, Lcom/threed/jpct/CompiledInstance;->colorsId:I

    invoke-interface {v7, v14, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    invoke-interface {v6, v12}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    const/4 v4, 0x0

    const/16 v11, 0x10

    const/4 v12, 0x4

    invoke-interface {v7, v12, v13, v11, v4}, Ljavax/microedition/khronos/opengles/GL11;->glColorPointer(IIII)V

    invoke-interface {v7, v14, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    :goto_22
    if-nez v18, :cond_3b

    invoke-virtual/range {p2 .. p2}, Lcom/threed/jpct/GLRenderer;->clearTangents()V

    goto :goto_23

    :cond_3b
    iget v4, v1, Lcom/threed/jpct/CompiledInstance;->tangentsId:I

    invoke-virtual {v3, v4}, Lcom/threed/jpct/GLRenderer;->setTangents(I)V

    :goto_23
    if-nez p8, :cond_40

    iget-boolean v4, v9, Lcom/threed/jpct/Object3D;->isEnvmapped:Z

    if-eqz v4, :cond_40

    sget-boolean v4, Lcom/threed/jpct/Config;->glForceEnvMapToSecondStage:Z

    if-eqz v4, :cond_3c

    iget v4, v1, Lcom/threed/jpct/CompiledInstance;->endStage:I

    const/4 v11, 0x1

    if-le v4, v11, :cond_40

    :cond_3c
    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v4

    iget v11, v1, Lcom/threed/jpct/CompiledInstance;->tex0:I

    if-ne v11, v10, :cond_3d

    iget-object v11, v9, Lcom/threed/jpct/Object3D;->texture:[I

    iget v12, v1, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    aget v11, v11, v12

    invoke-virtual {v4, v11}, Lcom/threed/jpct/TextureManager;->getTextureByID(I)Lcom/threed/jpct/Texture;

    move-result-object v11

    move/from16 v14, p1

    invoke-virtual {v11, v14}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v11

    iput v11, v1, Lcom/threed/jpct/CompiledInstance;->tex0:I

    goto :goto_24

    :cond_3d
    move/from16 v14, p1

    :goto_24
    sget-boolean v11, Lcom/threed/jpct/Config;->glForceEnvMapToSecondStage:Z

    if-eqz v11, :cond_3e

    iget v11, v1, Lcom/threed/jpct/CompiledInstance;->tex1:I

    if-ne v11, v10, :cond_3e

    iget v10, v1, Lcom/threed/jpct/CompiledInstance;->endStage:I

    const/4 v11, 0x1

    if-le v10, v11, :cond_3e

    iget-object v10, v9, Lcom/threed/jpct/Object3D;->multiTex:[[I

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iget v11, v1, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    aget v10, v10, v11

    invoke-virtual {v4, v10}, Lcom/threed/jpct/TextureManager;->getTextureByID(I)Lcom/threed/jpct/Texture;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v4

    iput v4, v1, Lcom/threed/jpct/CompiledInstance;->tex1:I

    :cond_3e
    iget v4, v1, Lcom/threed/jpct/CompiledInstance;->tex0:I

    sget-boolean v10, Lcom/threed/jpct/Config;->glForceEnvMapToSecondStage:Z

    if-eqz v10, :cond_3f

    iget v4, v1, Lcom/threed/jpct/CompiledInstance;->tex1:I

    const/4 v13, 0x1

    goto :goto_25

    :cond_3f
    const/4 v13, 0x0

    :goto_25
    invoke-virtual {v3, v13, v4}, Lcom/threed/jpct/GLRenderer;->bindTexture(II)V

    invoke-interface {v6, v5}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {v6}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-interface {v6}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-interface {v6, v4, v4, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    invoke-interface {v6, v4, v4, v4}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    const/4 v4, 0x0

    invoke-interface {v6, v8, v4}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    const/16 v4, 0x1700

    invoke-interface {v6, v4}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    :cond_40
    iget-boolean v4, v1, Lcom/threed/jpct/CompiledInstance;->indexed:Z

    if-eqz v4, :cond_41

    iget v4, v1, Lcom/threed/jpct/CompiledInstance;->indicesId:I

    const v8, 0x8893

    invoke-interface {v7, v8, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget v4, v1, Lcom/threed/jpct/CompiledInstance;->primitiveType:I

    iget v8, v1, Lcom/threed/jpct/CompiledInstance;->indexCount:I

    const/16 v10, 0x1403

    const/4 v11, 0x0

    invoke-interface {v7, v4, v8, v10, v11}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    const v4, 0x8893

    invoke-interface {v7, v4, v11}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    goto :goto_26

    :cond_41
    iget v4, v1, Lcom/threed/jpct/CompiledInstance;->primitiveType:I

    iget v8, v1, Lcom/threed/jpct/CompiledInstance;->cnt:I

    const/4 v10, 0x0

    invoke-interface {v6, v4, v10, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    :goto_26
    if-eqz v0, :cond_42

    invoke-interface {v0}, Lcom/threed/jpct/IRenderHook;->repeatRendering()Z

    move-result v4

    if-nez v4, :cond_40

    :cond_42
    if-eqz v18, :cond_43

    iget v4, v1, Lcom/threed/jpct/CompiledInstance;->tangentsId:I

    invoke-virtual {v3, v4}, Lcom/threed/jpct/GLRenderer;->clearTangents(I)V

    :cond_43
    if-eqz v0, :cond_56

    iget v4, v1, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    invoke-interface {v0, v4}, Lcom/threed/jpct/IRenderHook;->afterRendering(I)V

    goto/16 :goto_31

    :goto_27
    sget-object v4, Lcom/threed/jpct/CompiledInstance;->lastVertexBuffer:Ljava/nio/Buffer;

    iget-object v7, v1, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    if-eq v4, v7, :cond_47

    sput-object v7, Lcom/threed/jpct/CompiledInstance;->lastVertexBuffer:Ljava/nio/Buffer;

    iget-object v4, v1, Lcom/threed/jpct/CompiledInstance;->normals:Ljava/nio/IntBuffer;

    invoke-interface {v6, v13, v11, v4}, Ljavax/microedition/khronos/opengles/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    iget-object v4, v1, Lcom/threed/jpct/CompiledInstance;->vertices:Ljava/nio/IntBuffer;

    const/4 v7, 0x3

    invoke-interface {v6, v7, v13, v11, v4}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    const v4, 0x8075

    invoke-interface {v6, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    const v4, 0x8074

    invoke-interface {v6, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    if-nez v19, :cond_44

    invoke-interface {v6, v12}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    goto :goto_28

    :cond_44
    iget-object v4, v1, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    const/16 v7, 0x10

    const/4 v11, 0x4

    invoke-interface {v6, v11, v13, v7, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    invoke-interface {v6, v12}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    :goto_28
    if-nez v18, :cond_45

    invoke-virtual/range {p2 .. p2}, Lcom/threed/jpct/GLRenderer;->clearTangents()V

    goto :goto_29

    :cond_45
    iget-object v4, v1, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    invoke-virtual {v3, v4}, Lcom/threed/jpct/GLRenderer;->setTangents(Ljava/nio/Buffer;)V

    :goto_29
    invoke-virtual/range {p2 .. p2}, Lcom/threed/jpct/GLRenderer;->clearStageFlag()V

    const/4 v4, 0x0

    :goto_2a
    iget v7, v1, Lcom/threed/jpct/CompiledInstance;->endStage:I

    if-lt v4, v7, :cond_46

    goto :goto_2c

    :cond_46
    sget-object v7, Lcom/threed/jpct/CompiledInstance;->stageMap:[I

    aget v7, v7, v4

    invoke-interface {v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glClientActiveTexture(I)V

    const v7, 0x8078

    invoke-interface {v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    iget-object v7, v1, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    aget-object v7, v7, v4

    const/4 v11, 0x2

    const/16 v12, 0x8

    invoke-interface {v6, v11, v13, v12, v7}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    :cond_47
    if-nez v19, :cond_48

    invoke-interface {v6, v12}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    goto :goto_2b

    :cond_48
    invoke-interface {v6, v12}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    :goto_2b
    if-nez v18, :cond_49

    invoke-virtual/range {p2 .. p2}, Lcom/threed/jpct/GLRenderer;->clearTangents()V

    goto :goto_2c

    :cond_49
    iget-object v4, v1, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    invoke-virtual {v3, v4}, Lcom/threed/jpct/GLRenderer;->setTangents(Ljava/nio/Buffer;)V

    :goto_2c
    if-nez p8, :cond_52

    iget-boolean v4, v9, Lcom/threed/jpct/Object3D;->isEnvmapped:Z

    if-eqz v4, :cond_52

    sget-boolean v4, Lcom/threed/jpct/Config;->glForceEnvMapToSecondStage:Z

    if-eqz v4, :cond_4a

    iget v4, v1, Lcom/threed/jpct/CompiledInstance;->endStage:I

    const/4 v7, 0x1

    if-le v4, v7, :cond_52

    :cond_4a
    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v4

    iget v7, v1, Lcom/threed/jpct/CompiledInstance;->tex0:I

    if-eq v7, v10, :cond_4b

    iget-object v7, v9, Lcom/threed/jpct/Object3D;->texture:[I

    iget v11, v1, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    aget v7, v7, v11

    iget v11, v1, Lcom/threed/jpct/CompiledInstance;->lastTex0:I

    if-eq v7, v11, :cond_4c

    :cond_4b
    iget-object v7, v9, Lcom/threed/jpct/Object3D;->texture:[I

    iget v11, v1, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    aget v7, v7, v11

    iput v7, v1, Lcom/threed/jpct/CompiledInstance;->lastTex0:I

    invoke-virtual {v4, v7}, Lcom/threed/jpct/TextureManager;->getTextureByID(I)Lcom/threed/jpct/Texture;

    move-result-object v7

    invoke-virtual {v7, v14}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v7

    iput v7, v1, Lcom/threed/jpct/CompiledInstance;->tex0:I

    :cond_4c
    sget-boolean v7, Lcom/threed/jpct/Config;->glForceEnvMapToSecondStage:Z

    if-eqz v7, :cond_4d

    iget v7, v1, Lcom/threed/jpct/CompiledInstance;->tex1:I

    if-eq v7, v10, :cond_4e

    iget-object v7, v9, Lcom/threed/jpct/Object3D;->multiTex:[[I

    const/4 v10, 0x0

    aget-object v7, v7, v10

    iget v10, v1, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    aget v7, v7, v10

    iget v10, v1, Lcom/threed/jpct/CompiledInstance;->lastTex1:I

    if-eq v7, v10, :cond_4d

    goto :goto_2d

    :cond_4d
    const/4 v10, 0x1

    goto :goto_2e

    :cond_4e
    :goto_2d
    iget v7, v1, Lcom/threed/jpct/CompiledInstance;->endStage:I

    const/4 v10, 0x1

    if-le v7, v10, :cond_4f

    iget-object v7, v9, Lcom/threed/jpct/Object3D;->multiTex:[[I

    const/4 v11, 0x0

    aget-object v7, v7, v11

    iget v11, v1, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    aget v7, v7, v11

    iput v7, v1, Lcom/threed/jpct/CompiledInstance;->lastTex1:I

    invoke-virtual {v4, v7}, Lcom/threed/jpct/TextureManager;->getTextureByID(I)Lcom/threed/jpct/Texture;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v4

    iput v4, v1, Lcom/threed/jpct/CompiledInstance;->tex1:I

    :cond_4f
    :goto_2e
    iget v4, v1, Lcom/threed/jpct/CompiledInstance;->tex0:I

    sget-boolean v7, Lcom/threed/jpct/Config;->glForceEnvMapToSecondStage:Z

    if-eqz v7, :cond_50

    iget v4, v1, Lcom/threed/jpct/CompiledInstance;->tex1:I

    move v13, v10

    goto :goto_2f

    :cond_50
    const/4 v13, 0x0

    :goto_2f
    iget-object v7, v3, Lcom/threed/jpct/GLRenderer;->lastTextures:[I

    aget v7, v7, v13

    if-eq v7, v4, :cond_51

    invoke-virtual {v3, v13, v4}, Lcom/threed/jpct/GLRenderer;->bindTexture(II)V

    :cond_51
    invoke-interface {v6, v5}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {v6}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-interface {v6}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-interface {v6, v4, v4, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    invoke-interface {v6, v4, v4, v4}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    const/4 v4, 0x0

    invoke-interface {v6, v8, v4}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    const/16 v4, 0x1700

    invoke-interface {v6, v4}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    :cond_52
    iget-boolean v4, v1, Lcom/threed/jpct/CompiledInstance;->indexed:Z

    if-eqz v4, :cond_53

    iget v4, v1, Lcom/threed/jpct/CompiledInstance;->primitiveType:I

    iget v7, v1, Lcom/threed/jpct/CompiledInstance;->indexCount:I

    iget-object v8, v1, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    const/16 v10, 0x1403

    invoke-interface {v6, v4, v7, v10, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    goto :goto_30

    :cond_53
    iget v4, v1, Lcom/threed/jpct/CompiledInstance;->primitiveType:I

    iget v7, v1, Lcom/threed/jpct/CompiledInstance;->cnt:I

    const/4 v8, 0x0

    invoke-interface {v6, v4, v8, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    :goto_30
    if-eqz v0, :cond_54

    invoke-interface {v0}, Lcom/threed/jpct/IRenderHook;->repeatRendering()Z

    move-result v4

    if-nez v4, :cond_52

    :cond_54
    if-eqz v18, :cond_55

    invoke-virtual/range {p2 .. p2}, Lcom/threed/jpct/GLRenderer;->clearTangents()V

    :cond_55
    if-eqz v0, :cond_56

    iget v4, v1, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    invoke-interface {v0, v4}, Lcom/threed/jpct/IRenderHook;->afterRendering(I)V

    :cond_56
    :goto_31
    if-eqz v2, :cond_57

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/threed/jpct/GLSLShader;->directMode:Z

    :cond_57
    iget-boolean v0, v9, Lcom/threed/jpct/Object3D;->isEnvmapped:Z

    if-eqz v0, :cond_58

    invoke-interface {v6, v5}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {v6}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    :cond_58
    const/16 v0, 0x1700

    invoke-interface {v6, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {v6}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    if-eqz v19, :cond_59

    const/16 v0, 0xb57

    invoke-interface {v6, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    :cond_59
    if-eqz v27, :cond_5a

    const/16 v0, 0x405

    invoke-interface {v6, v0}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    :cond_5a
    iget-boolean v0, v9, Lcom/threed/jpct/Object3D;->isFlatShaded:Z

    if-eqz v0, :cond_5b

    const/16 v0, 0x1d01

    invoke-interface {v6, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    :cond_5b
    if-eqz p8, :cond_5c

    const/16 v0, 0xb50

    invoke-interface {v6, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    :cond_5c
    iget-boolean v0, v9, Lcom/threed/jpct/Object3D;->doCulling:Z

    if-nez v0, :cond_5d

    const/16 v0, 0xb44

    invoke-interface {v6, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    :cond_5d
    invoke-virtual/range {p2 .. p2}, Lcom/threed/jpct/GLRenderer;->closeShader()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-void

    :goto_32
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/threed/jpct/CompiledInstance;->key:Ljava/lang/String;

    return-void
.end method
