.class public Llf/l;
.super Lcom/jme3/scene/Mesh;
.source "SourceFile"


# static fields
.field public static final g:I = 0x3

.field public static final h:[I

.field public static final i:I = 0x3

.field public static final j:Ljava/util/logging/Logger;

.field public static final k:[Lcom/jme3/math/Vector3f;

.field public static final synthetic l:Z


# instance fields
.field public final b:F

.field public c:I

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/math/Vector3f;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Map;
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
    .locals 8

    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Llf/l;->h:[I

    const-class v0, Llf/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Llf/l;->j:Ljava/util/logging/Logger;

    new-instance v1, Lcom/jme3/math/Vector3f;

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v3, Lcom/jme3/math/Vector3f;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v2, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v5, Lcom/jme3/math/Vector3f;

    invoke-direct {v5, v2, v0, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v6, Lcom/jme3/math/Vector3f;

    invoke-direct {v6, v2, v4, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v7, Lcom/jme3/math/Vector3f;

    invoke-direct {v7, v2, v2, v0}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v2, v2, v4}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    move-object v2, v3

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v0

    filled-new-array/range {v1 .. v6}, [Lcom/jme3/math/Vector3f;

    move-result-object v0

    sput-object v0, Llf/l;->k:[Lcom/jme3/math/Vector3f;

    return-void

    :array_0
    .array-data 4
        0x6
        0x2
        0x8
        0x1
        0x4
        0x3
        0x0
        0x3
        0x9
        0x1
        0x5
        0x2
        0x6
        0x7
        0x2
        0x1
        0x3
        0x5
        0x0
        0xa
        0x3
        0x1
        0x2
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Llf/l;->c:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x131

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Llf/l;->d:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Llf/l;->e:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x126

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Llf/l;->f:Ljava/util/Map;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    iput v0, p0, Llf/l;->b:F

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 7
    invoke-direct/range {p0 .. p0}, Lcom/jme3/scene/Mesh;-><init>()V

    const/4 v3, 0x0

    .line 8
    iput v3, v0, Llf/l;->c:I

    .line 9
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0x131

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, v0, Llf/l;->d:Ljava/util/List;

    .line 10
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, v0, Llf/l;->e:Ljava/util/List;

    .line 11
    new-instance v4, Ljava/util/HashMap;

    const/16 v5, 0x126

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, v0, Llf/l;->f:Ljava/util/Map;

    .line 12
    const-string v4, "number of refinement steps"

    const/16 v5, 0xd

    invoke-static {v1, v4, v3, v5}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 13
    const-string v4, "radius"

    invoke-static {v2, v4}, Lif/E;->E(FLjava/lang/String;)Z

    .line 14
    iput v2, v0, Llf/l;->b:F

    .line 15
    sget-object v2, Llf/l;->k:[Lcom/jme3/math/Vector3f;

    aget-object v4, v2, v3

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Llf/l;->a(Lcom/jme3/math/Vector3f;Ljava/lang/Float;)I

    const/4 v4, 0x1

    .line 16
    aget-object v4, v2, v4

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Llf/l;->a(Lcom/jme3/math/Vector3f;Ljava/lang/Float;)I

    const/4 v4, 0x2

    .line 17
    aget-object v9, v2, v4

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Llf/l;->a(Lcom/jme3/math/Vector3f;Ljava/lang/Float;)I

    const/4 v9, 0x3

    .line 18
    aget-object v11, v2, v9

    invoke-virtual {v0, v11, v10}, Llf/l;->a(Lcom/jme3/math/Vector3f;Ljava/lang/Float;)I

    const/4 v10, 0x4

    .line 19
    aget-object v11, v2, v10

    invoke-virtual {v0, v11, v8}, Llf/l;->a(Lcom/jme3/math/Vector3f;Ljava/lang/Float;)I

    const/4 v11, 0x5

    .line 20
    aget-object v12, v2, v11

    invoke-virtual {v0, v12, v8}, Llf/l;->a(Lcom/jme3/math/Vector3f;Ljava/lang/Float;)I

    .line 21
    aget-object v8, v2, v3

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v0, v8, v12}, Llf/l;->a(Lcom/jme3/math/Vector3f;Ljava/lang/Float;)I

    .line 22
    aget-object v8, v2, v10

    invoke-virtual {v0, v8, v12}, Llf/l;->a(Lcom/jme3/math/Vector3f;Ljava/lang/Float;)I

    .line 23
    aget-object v8, v2, v11

    invoke-virtual {v0, v8, v12}, Llf/l;->a(Lcom/jme3/math/Vector3f;Ljava/lang/Float;)I

    .line 24
    aget-object v8, v2, v10

    invoke-virtual {v0, v8, v6}, Llf/l;->a(Lcom/jme3/math/Vector3f;Ljava/lang/Float;)I

    .line 25
    aget-object v2, v2, v11

    invoke-virtual {v0, v2, v6}, Llf/l;->a(Lcom/jme3/math/Vector3f;Ljava/lang/Float;)I

    .line 26
    new-instance v2, Ljava/util/ArrayList;

    const/16 v6, 0x18

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    sget-object v6, Llf/l;->h:[I

    array-length v8, v6

    move v11, v3

    :goto_0
    if-ge v11, v8, :cond_0

    aget v12, v6, v11

    .line 28
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    move v6, v3

    :goto_1
    if-ge v6, v1, :cond_2

    .line 29
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    mul-int/2addr v11, v10

    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(I)V

    move v11, v3

    .line 30
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_1

    .line 31
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/lit8 v14, v11, 0x1

    .line 32
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v15

    add-int/lit8 v3, v11, 0x2

    .line 33
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 34
    invoke-direct {v0, v13, v15}, Llf/l;->d(II)I

    move-result v16

    .line 35
    invoke-direct {v0, v15, v10}, Llf/l;->d(II)I

    move-result v15

    .line 36
    invoke-direct {v0, v10, v13}, Llf/l;->d(II)I

    move-result v10

    .line 37
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x3

    const/4 v3, 0x0

    const/4 v10, 0x4

    goto/16 :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    move-object v2, v8

    const/4 v3, 0x0

    const/4 v10, 0x4

    goto/16 :goto_1

    .line 49
    :cond_2
    iget-object v1, v0, Llf/l;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 50
    iget-object v1, v0, Llf/l;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v3, v1, 0x3

    .line 51
    invoke-static {v3}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 52
    iget-object v6, v0, Llf/l;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jme3/math/Vector3f;

    .line 53
    iget v10, v8, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v3, v10}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v10

    iget v11, v8, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v10

    iget v8, v8, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v10, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_3

    .line 54
    :cond_3
    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 55
    sget-object v6, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v6, v9, v3}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    .line 56
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 57
    invoke-static {v1, v3}, Lcom/jme3/scene/mesh/IndexBuffer;->createIndexBuffer(II)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v3

    .line 58
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 59
    invoke-virtual {v3, v6}, Lcom/jme3/scene/mesh/IndexBuffer;->put(I)Lcom/jme3/scene/mesh/IndexBuffer;

    goto :goto_4

    .line 60
    :cond_4
    invoke-virtual {v3}, Lcom/jme3/scene/mesh/IndexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v2

    .line 61
    invoke-virtual {v3}, Lcom/jme3/scene/mesh/IndexBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object v3

    .line 62
    invoke-virtual {v3}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 63
    sget-object v6, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v6, v9, v2, v3}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    mul-int/lit8 v2, v1, 0x2

    .line 64
    invoke-static {v2}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_6

    .line 65
    iget-object v6, v0, Llf/l;->e:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jme3/math/Vector3f;

    .line 66
    invoke-static {v6}, Llf/l;->c(Lcom/jme3/math/Vector3f;)F

    move-result v8

    .line 67
    iget v9, v6, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v9, v9, v5

    if-nez v9, :cond_5

    .line 68
    iget-object v8, v0, Llf/l;->d:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    goto :goto_6

    :cond_5
    const v9, 0x40c90fdb

    div-float/2addr v8, v9

    add-float/2addr v8, v7

    .line 69
    :goto_6
    invoke-static {v6}, Llf/l;->b(Lcom/jme3/math/Vector3f;)F

    move-result v6

    const v9, 0x40490fdb    # (float)Math.PI

    div-float/2addr v6, v9

    add-float/2addr v6, v7

    .line 70
    invoke-virtual {v2, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 71
    :cond_6
    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 72
    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v1, v4, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    .line 73
    iget-object v1, v0, Llf/l;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 74
    iget-object v1, v0, Llf/l;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 75
    invoke-static/range {p0 .. p0}, Lif/p;->b(Lcom/jme3/scene/Mesh;)V

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->setStatic()V

    return-void
.end method

.method public static b(Lcom/jme3/math/Vector3f;)F
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/math/Vector3f;->length()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    iget p0, p0, Lcom/jme3/math/Vector3f;->z:F

    div-float/2addr p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v1, v0

    :cond_0
    return v1
.end method

.method public static c(Lcom/jme3/math/Vector3f;)F
    .locals 3

    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    iget v2, p0, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_1

    :cond_0
    iget p0, p0, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {p0, v0}, Lcom/jme3/math/FastMath;->atan2(FF)F

    move-result p0

    neg-float v1, p0

    :cond_1
    return v1
.end method

.method private d(II)I
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

    iget-object v2, p0, Llf/l;->f:Ljava/util/Map;

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
    iget-object v2, p0, Llf/l;->e:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/math/Vector3f;

    iget-object v3, p0, Llf/l;->e:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    const/4 v3, 0x0

    invoke-static {v2, p2, v3}, Ljf/h;->M(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    iget v2, p2, Lcom/jme3/math/Vector3f;->y:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-nez v2, :cond_4

    iget-object v2, p0, Llf/l;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/Float;

    :cond_4
    invoke-virtual {p0, p2, v3}, Llf/l;->a(Lcom/jme3/math/Vector3f;Ljava/lang/Float;)I

    move-result p1

    iget-object p2, p0, Llf/l;->f:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p1
.end method


# virtual methods
.method public final a(Lcom/jme3/math/Vector3f;Ljava/lang/Float;)I
    .locals 3

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->length()F

    move-result v0

    iget-object v1, p0, Llf/l;->e:Ljava/util/List;

    iget v2, p0, Llf/l;->b:F

    div-float/2addr v2, v0

    invoke-virtual {p1, v2}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Llf/l;->d:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p1, p0, Llf/l;->c:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Llf/l;->c:I

    return p1
.end method
