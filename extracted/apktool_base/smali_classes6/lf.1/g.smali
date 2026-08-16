.class public Llf/g;
.super Lcom/jme3/scene/Mesh;
.source "SourceFile"


# static fields
.field public static final m:F = 0.5f

.field public static final n:F = 0.5f

.field public static final o:F = 0.44f

.field public static final r:I = 0x3

.field public static final s:I = 0x3

.field public static final t:Ljava/util/logging/Logger;

.field public static final synthetic u:Z


# instance fields
.field public b:Z

.field public c:Z

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:I

.field public j:I

.field public k:I

.field public l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Llf/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Llf/g;->t:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 7

    const v5, 0x3ee147ae    # 0.44f

    const/4 v6, 0x1

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 2
    invoke-direct/range {v0 .. v6}, Llf/g;-><init>(IIFFFZ)V

    return-void
.end method

.method public constructor <init>(IIFFFZ)V
    .locals 3

    .line 3
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    .line 4
    const-string v0, "rim samples"

    const/4 v1, 0x3

    const v2, 0x7fffffff

    invoke-static {p1, v0, v1, v2}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 5
    iput p1, p0, Llf/g;->j:I

    .line 6
    const-string p1, "quadrant samples"

    const/4 v0, 0x2

    invoke-static {p2, p1, v0, v2}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 7
    iput p2, p0, Llf/g;->i:I

    .line 8
    const-string p1, "topU"

    invoke-static {p3, p1}, Lif/E;->f(FLjava/lang/String;)Z

    .line 9
    iput p3, p0, Llf/g;->e:F

    .line 10
    const-string p1, "topV"

    invoke-static {p4, p1}, Lif/E;->f(FLjava/lang/String;)Z

    .line 11
    iput p4, p0, Llf/g;->f:F

    const/4 p1, 0x0

    cmpl-float p1, p5, p1

    if-lez p1, :cond_0

    const/high16 p1, 0x3f000000    # 0.5f

    cmpg-float p1, p5, p1

    if-gez p1, :cond_0

    .line 12
    iput p5, p0, Llf/g;->g:F

    .line 13
    iput-boolean p6, p0, Llf/g;->c:Z

    const p1, 0x40c90fdb

    .line 14
    iput p1, p0, Llf/g;->d:F

    const p1, 0x3fc90fdb

    .line 15
    iput p1, p0, Llf/g;->h:F

    .line 16
    invoke-virtual {p0}, Llf/g;->h()V

    .line 17
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->setStatic()V

    return-void

    .line 18
    :cond_0
    sget-object p1, Llf/g;->t:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string p4, "uvScale={0}"

    invoke-virtual {p1, p2, p4, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "uvScale should be between 0 and 0.5"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private l()V
    .locals 11

    iget v0, p0, Llf/g;->l:I

    new-array v0, v0, [Lcom/jme3/math/Vector3f;

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v2, 0x3

    new-array v3, v2, [F

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    iget v6, p0, Llf/g;->l:I

    if-ge v5, v6, :cond_1

    invoke-virtual {v1, v3, v4, v2}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    new-instance v6, Lcom/jme3/math/Vector3f;

    aget v7, v3, v4

    const/4 v8, 0x1

    aget v8, v3, v8

    const/4 v9, 0x2

    aget v9, v3, v9

    invoke-direct {v6, v7, v8, v9}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iget-boolean v7, p0, Llf/g;->c:Z

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lcom/jme3/math/Vector3f;->negateLocal()Lcom/jme3/math/Vector3f;

    :cond_0
    sget-object v7, Llf/g;->t:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "normal {0}"

    invoke-virtual {v7, v8, v10, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([Lcom/jme3/math/Vector3f;)Ljava/nio/FloatBuffer;

    move-result-object v0

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v1, v2, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector2f;
    .locals 7

    const-string v0, "direction"

    invoke-static {p1, v0}, Lif/E;->A(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->normalize()Lcom/jme3/math/Vector3f;

    move-result-object p1

    iget v0, p1, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {v0}, Lcom/jme3/math/FastMath;->acos(F)F

    move-result v0

    iget v1, p0, Llf/g;->g:F

    mul-float/2addr v1, v0

    const v0, 0x3fc90fdb

    div-float/2addr v1, v0

    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v2, p1, Lcom/jme3/math/Vector3f;->z:F

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v4, 0x1

    aput v2, v3, v4

    invoke-static {v3}, Ljf/f;->r([F)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    const/4 v6, 0x0

    if-nez v5, :cond_1

    iget p1, p1, Lcom/jme3/math/Vector3f;->y:F

    cmpg-float p1, p1, v4

    if-gez p1, :cond_0

    return-object v6

    :cond_0
    new-instance p1, Lcom/jme3/math/Vector2f;

    iget v0, p0, Llf/g;->e:F

    iget v1, p0, Llf/g;->f:F

    invoke-direct {p1, v0, v1}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    return-object p1

    :cond_1
    div-float/2addr v0, v3

    div-float/2addr v2, v3

    iget p1, p0, Llf/g;->e:F

    mul-float/2addr v0, v1

    add-float/2addr p1, v0

    iget v0, p0, Llf/g;->f:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    cmpg-float v1, p1, v4

    if-ltz v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-gtz v2, :cond_3

    cmpg-float v2, v0, v4

    if-ltz v2, :cond_3

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/jme3/math/Vector2f;

    invoke-direct {v1, p1, v0}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    return-object v1

    :cond_3
    :goto_0
    return-object v6
.end method

.method public b(FF)F
    .locals 2

    const-string v0, "u"

    invoke-static {p1, v0}, Lif/E;->f(FLjava/lang/String;)Z

    const-string v0, "v"

    invoke-static {p2, v0}, Lif/E;->f(FLjava/lang/String;)Z

    iget v0, p0, Llf/g;->e:F

    sub-float/2addr p1, v0

    iget v0, p0, Llf/g;->f:F

    sub-float/2addr p2, v0

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Ljf/f;->r([F)F

    move-result p1

    iget p2, p0, Llf/g;->g:F

    div-float/2addr p1, p2

    const p2, 0x3fc90fdb

    mul-float/2addr p1, p2

    sub-float/2addr p2, p1

    return p2
.end method

.method public c()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Llf/g;->g:F

    return v0
.end method

.method public d()F
    .locals 1

    iget v0, p0, Llf/g;->g:F

    return v0
.end method

.method public e()F
    .locals 1

    iget v0, p0, Llf/g;->h:F

    return v0
.end method

.method public f(F)V
    .locals 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const v0, 0x40c90fdb

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iput p1, p0, Llf/g;->d:F

    invoke-virtual {p0}, Llf/g;->h()V

    return-void

    :cond_0
    sget-object v0, Llf/g;->t:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v2, "angle={0}"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "angle should be between 0 and 2*Pi"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(F)V
    .locals 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const v0, 0x40490fdb    # (float)Math.PI

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iput p1, p0, Llf/g;->h:F

    invoke-virtual {p0}, Llf/g;->h()V

    return-void

    :cond_0
    sget-object v0, Llf/g;->t:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v2, "angle={0}"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "angle should be between 0 and Pi"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h()V
    .locals 0

    invoke-virtual {p0}, Llf/g;->j()V

    invoke-virtual {p0}, Llf/g;->i()V

    invoke-virtual {p0}, Llf/g;->k()V

    invoke-direct {p0}, Llf/g;->l()V

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    return-void
.end method

.method public final i()V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Llf/g;->l:I

    new-array v2, v1, [Lcom/jme3/math/Vector3f;

    new-array v1, v1, [Lcom/jme3/math/Vector2f;

    iget v3, v0, Llf/g;->h:F

    iget v4, v0, Llf/g;->i:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-boolean v4, v0, Llf/g;->b:Z

    if-eqz v4, :cond_0

    iget v4, v0, Llf/g;->j:I

    int-to-float v4, v4

    const v5, 0x40c90fdb

    div-float/2addr v5, v4

    goto :goto_0

    :cond_0
    iget v4, v0, Llf/g;->d:F

    iget v5, v0, Llf/g;->j:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    div-float v5, v4, v5

    :goto_0
    const/4 v6, 0x0

    :goto_1
    iget v7, v0, Llf/g;->i:I

    add-int/lit8 v7, v7, -0x1

    const-string v8, "coords {0}"

    if-ge v6, v7, :cond_2

    const v7, 0x3fc90fdb

    iget v9, v0, Llf/g;->h:F

    sub-float/2addr v7, v9

    int-to-float v9, v6

    mul-float/2addr v9, v3

    add-float/2addr v7, v9

    invoke-static {v7}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v9

    invoke-static {v7}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v7

    const/4 v10, 0x0

    :goto_2
    iget v11, v0, Llf/g;->j:I

    if-ge v10, v11, :cond_1

    int-to-float v11, v10

    mul-float/2addr v11, v5

    invoke-static {v11}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v12

    invoke-static {v11}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v11

    mul-float/2addr v11, v7

    mul-float/2addr v12, v7

    iget v13, v0, Llf/g;->j:I

    mul-int/2addr v13, v6

    add-int/2addr v13, v10

    sget-object v14, Llf/g;->t:Ljava/util/logging/Logger;

    sget-object v15, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v15, v8, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v4, Lcom/jme3/math/Vector3f;

    invoke-direct {v4, v11, v9, v12}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    aput-object v4, v2, v13

    invoke-virtual {v0, v4}, Llf/g;->a(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector2f;

    move-result-object v4

    aput-object v4, v1, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    iget v3, v0, Llf/g;->l:I

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Llf/g;->t:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v8, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v4, Lcom/jme3/math/Vector3f;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct {v4, v6, v5, v6}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    aput-object v4, v2, v3

    new-instance v4, Lcom/jme3/math/Vector2f;

    iget v5, v0, Llf/g;->e:F

    iget v6, v0, Llf/g;->f:F

    invoke-direct {v4, v5, v6}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    aput-object v4, v1, v3

    invoke-static {v2}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([Lcom/jme3/math/Vector3f;)Ljava/nio/FloatBuffer;

    move-result-object v2

    sget-object v3, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([Lcom/jme3/math/Vector2f;)Ljava/nio/FloatBuffer;

    move-result-object v1

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    return-void
.end method

.method public final j()V
    .locals 5

    iget v0, p0, Llf/g;->j:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    iget v1, p0, Llf/g;->i:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    iget v3, p0, Llf/g;->d:F

    const v4, 0x40c8f61e

    cmpl-float v3, v3, v4

    const/4 v4, 0x1

    if-lez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Llf/g;->b:Z

    sub-int/2addr v1, v2

    mul-int/2addr v1, v2

    add-int/2addr v1, v4

    mul-int/2addr v1, v0

    iput v1, p0, Llf/g;->k:I

    sget-object v0, Llf/g;->t:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "{0} triangles"

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Llf/g;->i:I

    sub-int/2addr v1, v4

    iget v3, p0, Llf/g;->j:I

    mul-int/2addr v1, v3

    add-int/2addr v1, v4

    iput v1, p0, Llf/g;->l:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "{0} vertices"

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    sget-object v0, Llf/g;->t:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "quadrantSamples={0}"

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "need at least 2 samples per longitudinal quadrant"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v1, Llf/g;->t:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "rimSamples={0}"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "need at least 3 samples on the rim"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final k()V
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Llf/g;->k:I

    const/4 v2, 0x3

    mul-int/2addr v1, v2

    new-array v1, v1, [S

    iget-boolean v3, v0, Llf/g;->b:Z

    if-eqz v3, :cond_0

    iget v3, v0, Llf/g;->j:I

    goto :goto_0

    :cond_0
    iget v3, v0, Llf/g;->j:I

    add-int/lit8 v3, v3, -0x1

    :goto_0
    iget v4, v0, Llf/g;->i:I

    add-int/lit8 v4, v4, -0x2

    const/4 v6, 0x0

    :goto_1
    const-string v7, "index {0}"

    if-ge v6, v4, :cond_4

    add-int/lit8 v8, v6, 0x1

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v3, :cond_3

    add-int/lit8 v10, v9, 0x1

    iget v11, v0, Llf/g;->j:I

    rem-int v12, v10, v11

    mul-int v13, v6, v11

    add-int/2addr v13, v9

    mul-int v14, v6, v11

    add-int/2addr v14, v12

    mul-int v15, v8, v11

    add-int/2addr v15, v9

    mul-int/2addr v11, v8

    add-int/2addr v11, v12

    mul-int/lit8 v9, v13, 0x2

    mul-int/lit8 v12, v13, 0x6

    sget-object v5, Llf/g;->t:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    move/from16 v16, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v2, v7, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    int-to-short v6, v13

    aput-short v6, v1, v12

    iget-boolean v13, v0, Llf/g;->c:Z

    if-eqz v13, :cond_1

    add-int/lit8 v13, v12, 0x1

    int-to-short v14, v14

    aput-short v14, v1, v13

    add-int/lit8 v12, v12, 0x2

    int-to-short v13, v11

    aput-short v13, v1, v12

    move/from16 v17, v8

    goto :goto_3

    :cond_1
    add-int/lit8 v13, v12, 0x1

    move/from16 v17, v8

    int-to-short v8, v11

    aput-short v8, v1, v13

    add-int/lit8 v12, v12, 0x2

    int-to-short v8, v14

    aput-short v8, v1, v12

    :goto_3
    add-int/lit8 v9, v9, 0x1

    mul-int/lit8 v8, v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v2, v7, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    aput-short v6, v1, v8

    iget-boolean v2, v0, Llf/g;->c:Z

    if-eqz v2, :cond_2

    add-int/lit8 v2, v8, 0x1

    int-to-short v5, v11

    aput-short v5, v1, v2

    add-int/lit8 v8, v8, 0x2

    int-to-short v2, v15

    aput-short v2, v1, v8

    goto :goto_4

    :cond_2
    add-int/lit8 v2, v8, 0x1

    int-to-short v5, v15

    aput-short v5, v1, v2

    add-int/lit8 v8, v8, 0x2

    int-to-short v2, v11

    aput-short v2, v1, v8

    :goto_4
    move v9, v10

    move/from16 v6, v16

    move/from16 v8, v17

    const/4 v2, 0x3

    goto :goto_2

    :cond_3
    move/from16 v17, v8

    move/from16 v6, v17

    goto :goto_1

    :cond_4
    iget v2, v0, Llf/g;->l:I

    add-int/lit8 v2, v2, -0x1

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v3, :cond_6

    add-int/lit8 v6, v5, 0x1

    iget v8, v0, Llf/g;->j:I

    rem-int v9, v6, v8

    mul-int v10, v4, v8

    add-int/2addr v10, v5

    mul-int v11, v4, v8

    add-int/2addr v11, v9

    mul-int/lit8 v9, v4, 0x2

    mul-int/2addr v9, v8

    add-int/2addr v9, v5

    mul-int/lit8 v5, v9, 0x3

    sget-object v8, Llf/g;->t:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v12, v7, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    int-to-short v8, v10

    aput-short v8, v1, v5

    iget-boolean v8, v0, Llf/g;->c:Z

    if-eqz v8, :cond_5

    add-int/lit8 v8, v5, 0x1

    int-to-short v9, v11

    aput-short v9, v1, v8

    add-int/lit8 v5, v5, 0x2

    int-to-short v8, v2

    aput-short v8, v1, v5

    goto :goto_6

    :cond_5
    add-int/lit8 v8, v5, 0x1

    int-to-short v9, v2

    aput-short v9, v1, v8

    add-int/lit8 v5, v5, 0x2

    int-to-short v8, v11

    aput-short v8, v1, v5

    :goto_6
    move v5, v6

    goto :goto_5

    :cond_6
    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createShortBuffer([S)Ljava/nio/ShortBuffer;

    move-result-object v1

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/ShortBuffer;)V

    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/Mesh;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "inwardFacing"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Llf/g;->c:Z

    const-string v0, "quadrantSamples"

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Llf/g;->i:I

    const-string v0, "rimSamples"

    const/4 v1, 0x3

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Llf/g;->j:I

    const-string v0, "segmentAngle"

    const v1, 0x40c90fdb

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Llf/g;->d:F

    const-string v0, "topU"

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Llf/g;->e:F

    const-string v0, "topV"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Llf/g;->f:F

    const-string v0, "uvScale"

    const v1, 0x3ee147ae    # 0.44f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Llf/g;->g:F

    const-string v0, "verticalAngle"

    const v1, 0x3fc90fdb

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Llf/g;->h:F

    invoke-virtual {p0}, Llf/g;->j()V

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/Mesh;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-boolean v0, p0, Llf/g;->c:Z

    const-string v1, "inwardFacing"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget v0, p0, Llf/g;->i:I

    const-string v1, "quadrantSamples"

    const/4 v2, 0x2

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Llf/g;->j:I

    const-string v1, "rimSamples"

    const/4 v2, 0x3

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Llf/g;->d:F

    const-string v1, "segmentAngle"

    const v2, 0x40c90fdb

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Llf/g;->e:F

    const-string v1, "topU"

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Llf/g;->f:F

    const-string v1, "topV"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Llf/g;->g:F

    const-string v1, "uvScale"

    const v2, 0x3ee147ae    # 0.44f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Llf/g;->h:F

    const-string v1, "verticalAngle"

    const v2, 0x3fc90fdb

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method
