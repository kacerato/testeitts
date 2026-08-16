.class public Llf/i;
.super Lcom/jme3/scene/Mesh;
.source "SourceFile"


# static fields
.field public static final f:F

.field public static final g:I = 0x3

.field public static final h:I = 0x3

.field public static final i:[I

.field public static final j:Ljava/util/logging/Logger;

.field public static final k:[Lcom/jme3/math/Vector3f;


# instance fields
.field public final b:F

.field public c:I

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/math/Vector3f;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    sget v0, Ljf/f;->b:F

    sput v0, Llf/i;->f:F

    const/16 v1, 0x3c

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Llf/i;->i:[I

    const-class v1, Llf/i;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Llf/i;->j:Ljava/util/logging/Logger;

    new-instance v2, Lcom/jme3/math/Vector3f;

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v4, Lcom/jme3/math/Vector3f;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v0, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v6, Lcom/jme3/math/Vector3f;

    neg-float v7, v0

    invoke-direct {v6, v1, v7, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v7, Lcom/jme3/math/Vector3f;

    neg-float v8, v0

    invoke-direct {v7, v5, v8, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v8, Lcom/jme3/math/Vector3f;

    invoke-direct {v8, v3, v1, v0}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v9, Lcom/jme3/math/Vector3f;

    invoke-direct {v9, v3, v5, v0}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v10, Lcom/jme3/math/Vector3f;

    neg-float v11, v0

    invoke-direct {v10, v3, v1, v11}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v11, Lcom/jme3/math/Vector3f;

    neg-float v12, v0

    invoke-direct {v11, v3, v5, v12}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v12, Lcom/jme3/math/Vector3f;

    invoke-direct {v12, v0, v3, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v13, Lcom/jme3/math/Vector3f;

    invoke-direct {v13, v0, v3, v5}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v14, Lcom/jme3/math/Vector3f;

    neg-float v15, v0

    invoke-direct {v14, v15, v3, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v1, Lcom/jme3/math/Vector3f;

    neg-float v0, v0

    invoke-direct {v1, v0, v3, v5}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    move-object v3, v4

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    move-object v11, v13

    move-object v12, v14

    move-object v13, v1

    filled-new-array/range {v2 .. v13}, [Lcom/jme3/math/Vector3f;

    move-result-object v0

    sput-object v0, Llf/i;->k:[Lcom/jme3/math/Vector3f;

    return-void

    :array_0
    .array-data 4
        0x0
        0xb
        0x5
        0x0
        0x5
        0x1
        0x0
        0x1
        0x7
        0x0
        0x7
        0xa
        0x0
        0xa
        0xb
        0x1
        0x5
        0x9
        0x5
        0xb
        0x4
        0xb
        0xa
        0x2
        0xa
        0x7
        0x6
        0x7
        0x1
        0x8
        0x3
        0x9
        0x4
        0x3
        0x4
        0x2
        0x3
        0x2
        0x6
        0x3
        0x6
        0x8
        0x3
        0x8
        0x9
        0x4
        0x9
        0x5
        0x2
        0x4
        0xb
        0x6
        0x2
        0xa
        0x8
        0x6
        0x7
        0x9
        0x8
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Llf/i;->c:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Llf/i;->d:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1e0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Llf/i;->e:Ljava/util/Map;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    iput v0, p0, Llf/i;->b:F

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 11

    .line 6
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Llf/i;->c:I

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Llf/i;->d:Ljava/util/List;

    .line 9
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x1e0

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Llf/i;->e:Ljava/util/Map;

    .line 10
    const-string v1, "number of refinement steps"

    invoke-static {p1, v1}, Lif/E;->q(ILjava/lang/String;)Z

    .line 11
    const-string v1, "radius"

    invoke-static {p2, v1}, Lif/E;->E(FLjava/lang/String;)Z

    .line 12
    iput p2, p0, Llf/i;->b:F

    .line 13
    sget-object p2, Llf/i;->k:[Lcom/jme3/math/Vector3f;

    array-length v1, p2

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 14
    invoke-direct {p0, v3}, Llf/i;->a(Lcom/jme3/math/Vector3f;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 15
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    const/16 v1, 0x3c

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    sget-object v1, Llf/i;->i:[I

    array-length v2, v1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    .line 17
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_2
    if-ge v1, p1, :cond_3

    .line 18
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v0

    .line 19
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 20
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    .line 21
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v8, v3, 0x2

    .line 22
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 23
    invoke-direct {p0, v5, v7}, Llf/i;->c(II)I

    move-result v10

    .line 24
    invoke-direct {p0, v7, v9}, Llf/i;->c(II)I

    move-result v7

    .line 25
    invoke-direct {p0, v9, v5}, Llf/i;->c(II)I

    move-result v5

    .line 26
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x3

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    move-object p2, v2

    goto/16 :goto_2

    .line 38
    :cond_3
    iget-object p1, p0, Llf/i;->e:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 39
    iget-object p1, p0, Llf/i;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    mul-int/lit8 v0, p1, 0x3

    .line 40
    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 41
    iget-object v1, p0, Llf/i;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/math/Vector3f;

    .line 42
    iget v3, v2, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    iget v4, v2, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    iget v2, v2, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_4

    .line 43
    :cond_4
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 44
    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    .line 45
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 46
    invoke-static {p1, v0}, Lcom/jme3/scene/mesh/IndexBuffer;->createIndexBuffer(II)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v0

    .line 47
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 48
    invoke-virtual {v0, v1}, Lcom/jme3/scene/mesh/IndexBuffer;->put(I)Lcom/jme3/scene/mesh/IndexBuffer;

    goto :goto_5

    .line 49
    :cond_5
    invoke-virtual {v0}, Lcom/jme3/scene/mesh/IndexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object p2

    .line 50
    invoke-virtual {v0}, Lcom/jme3/scene/mesh/IndexBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 52
    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v1, v2, p2, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    const/4 p2, 0x2

    mul-int/2addr p1, p2

    .line 53
    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p1

    .line 54
    iget-object v0, p0, Llf/i;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Vector3f;

    .line 55
    invoke-static {v1}, Llf/i;->b(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector2f;

    move-result-object v1

    .line 56
    iget v2, v1, Lcom/jme3/math/Vector2f;->x:F

    const v3, 0x40c90fdb

    div-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    .line 57
    iget v1, v1, Lcom/jme3/math/Vector2f;->y:F

    const v4, 0x40490fdb    # (float)Math.PI

    div-float/2addr v1, v4

    add-float/2addr v1, v3

    .line 58
    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_6

    .line 59
    :cond_6
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 60
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0, p2, p1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    .line 61
    invoke-static {p0}, Lif/p;->b(Lcom/jme3/scene/Mesh;)V

    .line 62
    iget-object p1, p0, Llf/i;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 63
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    .line 64
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->setStatic()V

    return-void
.end method

.method private a(Lcom/jme3/math/Vector3f;)I
    .locals 3

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->length()F

    move-result v0

    iget-object v1, p0, Llf/i;->d:Ljava/util/List;

    iget v2, p0, Llf/i;->b:F

    div-float/2addr v2, v0

    invoke-virtual {p1, v2}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p1, p0, Llf/i;->c:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Llf/i;->c:I

    return p1
.end method

.method public static b(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector2f;
    .locals 5

    new-instance v0, Lcom/jme3/math/Vector2f;

    invoke-direct {v0}, Lcom/jme3/math/Vector2f;-><init>()V

    invoke-virtual {p0}, Lcom/jme3/math/Vector3f;->length()F

    move-result v1

    iget v2, p0, Lcom/jme3/math/Vector3f;->x:F

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-nez v4, :cond_1

    iget v4, p0, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iput v3, v0, Lcom/jme3/math/Vector2f;->x:F

    goto :goto_1

    :cond_1
    :goto_0
    iget v4, p0, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {v4, v2}, Lcom/jme3/math/FastMath;->atan2(FF)F

    move-result v2

    neg-float v2, v2

    iput v2, v0, Lcom/jme3/math/Vector2f;->x:F

    :goto_1
    cmpl-float v2, v1, v3

    if-lez v2, :cond_2

    iget p0, p0, Lcom/jme3/math/Vector3f;->z:F

    div-float/2addr p0, v1

    invoke-static {p0}, Lcom/jme3/math/FastMath;->asin(F)F

    move-result p0

    iput p0, v0, Lcom/jme3/math/Vector2f;->y:F

    goto :goto_2

    :cond_2
    iput v3, v0, Lcom/jme3/math/Vector2f;->y:F

    :goto_2
    return-object v0
.end method

.method private c(II)I
    .locals 5

    if-ge p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    int-to-long v1, p1

    goto :goto_1

    :cond_1
    int-to-long v1, p2

    :goto_1
    if-eqz v0, :cond_2

    int-to-long v3, p2

    goto :goto_2

    :cond_2
    int-to-long v3, p1

    :goto_2
    const/16 v0, 0x20

    shl-long v0, v1, v0

    add-long/2addr v0, v3

    iget-object v2, p0, Llf/i;->e:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_3
    iget-object v2, p0, Llf/i;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Llf/i;->d:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    const/4 v2, 0x0

    invoke-static {p1, p2, v2}, Ljf/h;->M(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-direct {p0, p1}, Llf/i;->a(Lcom/jme3/math/Vector3f;)I

    move-result p1

    iget-object p2, p0, Llf/i;->e:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p1
.end method
