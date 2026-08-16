.class public Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;
.super Lcom/jme3/bullet/collision/shapes/CollisionShape;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger2:Ljava/util/logging/Logger;

.field private static final scaleIdentity:Lcom/jme3/math/Vector3f;

.field private static final tagFlipQuadEdges:Ljava/lang/String; = "flipQuadEdges"

.field private static final tagFlipTriangleWinding:Ljava/lang/String; = "flipTriangleWinding"

.field private static final tagHeightScale:Ljava/lang/String; = "heightScale"

.field private static final tagHeightStickLength:Ljava/lang/String; = "heightStickLength"

.field private static final tagHeightStickWidth:Ljava/lang/String; = "heightStickWidth"

.field private static final tagHeightfieldData:Ljava/lang/String; = "heightfieldData"

.field private static final tagMaxHeight:Ljava/lang/String; = "maxHeight"

.field private static final tagMinHeight:Ljava/lang/String; = "minHeight"

.field private static final tagUpAxis:Ljava/lang/String; = "upAxis"

.field private static final tagUseDiamond:Ljava/lang/String; = "useDiamond"

.field private static final tagUseZigzag:Ljava/lang/String; = "useZigzag"


# instance fields
.field private directBuffer:Ljava/nio/FloatBuffer;

.field private flipQuadEdges:Z

.field private flipTriangleWinding:Z

.field private heightScale:F

.field private heightStickLength:I

.field private heightStickWidth:I

.field private heightfieldData:[F

.field private maxHeight:F

.field private minHeight:F

.field private upAxis:I

.field private useDiamond:Z

.field private useZigzag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->logger2:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->scaleIdentity:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->flipQuadEdges:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->flipTriangleWinding:Z

    .line 4
    iput-boolean v1, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->useDiamond:Z

    .line 5
    iput-boolean v1, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->useZigzag:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    iput v1, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->heightScale:F

    .line 7
    iput v0, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->upAxis:I

    return-void
.end method

.method public constructor <init>(II[FLcom/jme3/math/Vector3f;IZZZZ)V
    .locals 3

    .line 51
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;-><init>()V

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->flipQuadEdges:Z

    const/4 v1, 0x0

    .line 53
    iput-boolean v1, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->flipTriangleWinding:Z

    .line 54
    iput-boolean v1, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->useDiamond:Z

    .line 55
    iput-boolean v1, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->useZigzag:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 56
    iput v1, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->heightScale:F

    .line 57
    iput v0, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->upAxis:I

    .line 58
    const-string v0, "stick length"

    const/4 v1, 0x2

    const v2, 0x7fffffff

    invoke-static {p1, v0, v1, v2}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 59
    const-string v0, "stick width"

    invoke-static {p2, v0, v1, v2}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 60
    const-string v0, "heightmap"

    invoke-static {p3, v0}, Lif/E;->l([FLjava/lang/String;)Z

    .line 61
    const-string v0, "scale"

    invoke-static {p4, v0}, Lif/E;->s(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 62
    const-string v0, "up axis"

    invoke-static {p5, v0}, Lif/E;->a(ILjava/lang/String;)Z

    .line 63
    iput p1, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->heightStickLength:I

    .line 64
    iput p2, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->heightStickWidth:I

    .line 65
    invoke-virtual {p3}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->heightfieldData:[F

    .line 66
    iget-object p1, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p4}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 67
    iput p5, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->upAxis:I

    .line 68
    iput-boolean p6, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->flipQuadEdges:Z

    .line 69
    iput-boolean p7, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->flipTriangleWinding:Z

    .line 70
    iput-boolean p8, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->useDiamond:Z

    .line 71
    iput-boolean p9, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->useZigzag:Z

    .line 72
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->calculateMinAndMax()V

    .line 73
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->createShape()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/terrain/Terrain;Lcom/jme3/math/Vector3f;)V
    .locals 4

    .line 40
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;-><init>()V

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->flipQuadEdges:Z

    const/4 v1, 0x0

    .line 42
    iput-boolean v1, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->flipTriangleWinding:Z

    .line 43
    iput-boolean v1, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->useDiamond:Z

    .line 44
    iput-boolean v1, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->useZigzag:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 45
    iput v1, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->heightScale:F

    .line 46
    iput v0, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->upAxis:I

    .line 47
    const-string v0, "scale"

    invoke-static {p2, v0}, Lif/E;->s(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 48
    invoke-interface {p1}, Lcom/jme3/terrain/Terrain;->getHeightMap()[F

    move-result-object p1

    .line 49
    array-length v0, p1

    const/4 v1, 0x4

    const v2, 0x7fffffff

    const-string v3, "number of heights"

    invoke-static {v0, v3, v1, v2}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->createCollisionHeightfield([FLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/terrain/heightmap/HeightMap;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->flipQuadEdges:Z

    const/4 v1, 0x0

    .line 20
    iput-boolean v1, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->flipTriangleWinding:Z

    .line 21
    iput-boolean v1, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->useDiamond:Z

    .line 22
    iput-boolean v1, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->useZigzag:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 23
    iput v1, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->heightScale:F

    .line 24
    iput v0, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->upAxis:I

    .line 25
    invoke-interface {p1}, Lcom/jme3/terrain/heightmap/HeightMap;->getHeightMap()[F

    move-result-object v0

    if-nez v0, :cond_0

    .line 26
    invoke-interface {p1}, Lcom/jme3/terrain/heightmap/HeightMap;->load()Z

    .line 27
    invoke-interface {p1}, Lcom/jme3/terrain/heightmap/HeightMap;->getHeightMap()[F

    move-result-object v0

    .line 28
    :cond_0
    sget-object p1, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->scaleIdentity:Lcom/jme3/math/Vector3f;

    invoke-direct {p0, v0, p1}, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->createCollisionHeightfield([FLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 4

    .line 8
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;-><init>()V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->flipQuadEdges:Z

    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->flipTriangleWinding:Z

    .line 11
    iput-boolean v1, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->useDiamond:Z

    .line 12
    iput-boolean v1, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->useZigzag:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 13
    iput v1, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->heightScale:F

    .line 14
    iput v0, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->upAxis:I

    .line 15
    const-string v0, "height array"

    invoke-static {p1, v0}, Lif/E;->l([FLjava/lang/String;)Z

    .line 16
    array-length v0, p1

    const/4 v1, 0x4

    const v2, 0x7fffffff

    const-string v3, "number of heights"

    invoke-static {v0, v3, v1, v2}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 17
    sget-object v0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->scaleIdentity:Lcom/jme3/math/Vector3f;

    invoke-direct {p0, p1, v0}, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->createCollisionHeightfield([FLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public constructor <init>([FLcom/jme3/math/Vector3f;)V
    .locals 4

    .line 29
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;-><init>()V

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->flipQuadEdges:Z

    const/4 v1, 0x0

    .line 31
    iput-boolean v1, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->flipTriangleWinding:Z

    .line 32
    iput-boolean v1, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->useDiamond:Z

    .line 33
    iput-boolean v1, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->useZigzag:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 34
    iput v1, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->heightScale:F

    .line 35
    iput v0, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->upAxis:I

    .line 36
    const-string v0, "height array"

    invoke-static {p1, v0}, Lif/E;->l([FLjava/lang/String;)Z

    .line 37
    array-length v0, p1

    const/4 v1, 0x4

    const v2, 0x7fffffff

    const-string v3, "number of heights"

    invoke-static {v0, v3, v1, v2}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 38
    const-string v0, "scale"

    invoke-static {p2, v0}, Lif/E;->s(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->createCollisionHeightfield([FLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method private calculateMinAndMax()V
    .locals 7

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->heightfieldData:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget v5, v0, v1

    cmpg-float v6, v5, v4

    if-gez v6, :cond_0

    move v4, v5

    :cond_0
    cmpl-float v6, v5, v2

    if-lez v6, :cond_1

    move v2, v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_4

    :cond_3
    neg-float v2, v4

    goto :goto_1

    :cond_4
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    neg-float v4, v2

    :goto_1
    iput v4, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->minHeight:F

    iput v2, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->maxHeight:F

    return-void
.end method

.method private createCollisionHeightfield([FLcom/jme3/math/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->heightfieldData:[F

    array-length p1, p1

    int-to-float p1, p1

    invoke-static {p1}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->heightStickWidth:I

    iput p1, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->heightStickLength:I

    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->calculateMinAndMax()V

    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->createShape()V

    return-void
.end method

.method private createShape()V
    .locals 13

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->heightfieldData:[F

    array-length v0, v0

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->directBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->heightfieldData:[F

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    invoke-static {v3}, Ljava/lang/Float;->isFinite(F)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->directBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v2, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->heightStickWidth:I

    iget v3, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->heightStickLength:I

    iget-object v4, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->directBuffer:Ljava/nio/FloatBuffer;

    iget v5, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->heightScale:F

    iget v6, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->minHeight:F

    iget v7, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->maxHeight:F

    iget v8, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->upAxis:I

    iget-boolean v9, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->flipQuadEdges:Z

    iget-boolean v10, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->flipTriangleWinding:Z

    iget-boolean v11, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->useDiamond:Z

    iget-boolean v12, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->useZigzag:Z

    invoke-static/range {v2 .. v12}, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->createShape2(IILjava/nio/FloatBuffer;FFFIZZZZ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setNativeId(J)V

    iget-boolean v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->enableContactFilter:Z

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setContactFilterEnabled(Z)V

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setScale(Lcom/jme3/math/Vector3f;)V

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->margin:F

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setMargin(F)V

    return-void
.end method

.method private static native createShape2(IILjava/nio/FloatBuffer;FFFIZZZZ)J
.end method

.method private static native finalizeNative(J)V
.end method

.method private static freeNativeObject(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->finalizeNative(J)V

    return-void
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->createShape()V

    check-cast p2, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;

    invoke-virtual {p0, p2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->copyShapeProperties(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    return-void
.end method

.method public countColumns()I
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->heightStickWidth:I

    return v0
.end method

.method public countMeshVertices()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->heightfieldData:[F

    array-length v0, v0

    return v0
.end method

.method public countRows()I
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->heightStickLength:I

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "heightStickWidth"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->heightStickWidth:I

    const-string v0, "heightStickLength"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->heightStickLength:I

    const-string v0, "heightScale"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->heightScale:F

    const-string v0, "minHeight"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->minHeight:F

    const-string v0, "maxHeight"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->maxHeight:F

    const-string v0, "upAxis"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->upAxis:I

    const-string v0, "heightfieldData"

    new-array v3, v1, [F

    invoke-interface {p1, v0, v3}, Lcom/jme3/export/InputCapsule;->readFloatArray(Ljava/lang/String;[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->heightfieldData:[F

    const-string v0, "flipQuadEdges"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->flipQuadEdges:Z

    const-string v0, "flipTriangleWinding"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->flipTriangleWinding:Z

    const-string v0, "useDiamond"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->useDiamond:Z

    const-string v0, "useZigzag"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->useZigzag:Z

    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->createShape()V

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->readShapeProperties(Lcom/jme3/export/InputCapsule;)V

    return-void
.end method

.method public toSplittableShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/jme3/bullet/util/DebugShapeFactory;->getDebugTriangles(Lcom/jme3/bullet/collision/shapes/CollisionShape;I)Ljava/nio/FloatBuffer;

    move-result-object v0

    new-instance v1, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;

    invoke-direct {v1, v0}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;-><init>(Ljava/nio/FloatBuffer;)V

    new-instance v0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;

    const/4 v2, 0x1

    filled-new-array {v1}, [Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;-><init>(Z[Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;)V

    return-object v0
.end method

.method public upAxis()I
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->upAxis:I

    return v0
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->heightStickWidth:I

    const-string v1, "heightStickWidth"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->heightStickLength:I

    const-string v1, "heightStickLength"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->heightScale:F

    const-string v1, "heightScale"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->minHeight:F

    const-string v1, "minHeight"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->maxHeight:F

    const-string v1, "maxHeight"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->upAxis:I

    const-string v1, "upAxis"

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->heightfieldData:[F

    const-string v1, "heightfieldData"

    new-array v4, v2, [F

    invoke-interface {p1, v0, v1, v4}, Lcom/jme3/export/OutputCapsule;->write([FLjava/lang/String;[F)V

    iget-boolean v0, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->flipQuadEdges:Z

    const-string v1, "flipQuadEdges"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->flipTriangleWinding:Z

    const-string v1, "flipTriangleWinding"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->useDiamond:Z

    const-string v1, "useDiamond"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->useZigzag:Z

    const-string v1, "useZigzag"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    return-void
.end method
