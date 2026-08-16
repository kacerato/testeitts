.class public Llf/a;
.super Lcom/jme3/scene/Mesh;
.source "SourceFile"


# static fields
.field public static final e:I = 0x3

.field public static final f:[I

.field public static final g:I = 0x3

.field public static final h:Ljava/util/logging/Logger;

.field public static final i:[Lcom/jme3/math/Vector3f;

.field public static final synthetic j:Z


# instance fields
.field public b:I

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/math/Vector3f;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
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

    sput-object v0, Llf/a;->f:[I

    const-class v0, Llf/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Llf/a;->h:Ljava/util/logging/Logger;

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

    sput-object v0, Llf/a;->i:[Lcom/jme3/math/Vector3f;

    return-void

    :array_0
    .array-data 4
        0x0
        0x2
        0x5
        0x1
        0x4
        0x3
        0x0
        0x3
        0x4
        0x1
        0x5
        0x2
        0x0
        0x4
        0x2
        0x1
        0x3
        0x5
        0x0
        0x5
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
    iput v0, p0, Llf/a;->b:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x102

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Llf/a;->c:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xfc

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Llf/a;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(IFF)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 5
    invoke-direct/range {p0 .. p0}, Lcom/jme3/scene/Mesh;-><init>()V

    const/4 v4, 0x0

    .line 6
    iput v4, v0, Llf/a;->b:I

    .line 7
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0x102

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v0, Llf/a;->c:Ljava/util/List;

    .line 8
    new-instance v5, Ljava/util/HashMap;

    const/16 v6, 0xfc

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v5, v0, Llf/a;->d:Ljava/util/Map;

    .line 9
    const-string v5, "number of refinement steps"

    const/16 v6, 0xd

    invoke-static {v1, v5, v4, v6}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 10
    const-string v5, "radius"

    invoke-static {v2, v5}, Lif/E;->E(FLjava/lang/String;)Z

    .line 11
    const-string v5, "height"

    invoke-static {v3, v5}, Lif/E;->E(FLjava/lang/String;)Z

    .line 12
    sget-object v5, Llf/a;->i:[Lcom/jme3/math/Vector3f;

    aget-object v6, v5, v4

    invoke-virtual {v0, v6}, Llf/a;->b(Lcom/jme3/math/Vector3f;)I

    const/4 v6, 0x1

    .line 13
    aget-object v7, v5, v6

    invoke-virtual {v0, v7}, Llf/a;->b(Lcom/jme3/math/Vector3f;)I

    const/4 v7, 0x2

    .line 14
    aget-object v8, v5, v7

    invoke-virtual {v0, v8}, Llf/a;->b(Lcom/jme3/math/Vector3f;)I

    const/4 v8, 0x3

    .line 15
    aget-object v9, v5, v8

    invoke-virtual {v0, v9}, Llf/a;->b(Lcom/jme3/math/Vector3f;)I

    const/4 v9, 0x4

    .line 16
    aget-object v10, v5, v9

    invoke-virtual {v0, v10}, Llf/a;->b(Lcom/jme3/math/Vector3f;)I

    const/4 v10, 0x5

    .line 17
    aget-object v5, v5, v10

    invoke-virtual {v0, v5}, Llf/a;->b(Lcom/jme3/math/Vector3f;)I

    .line 18
    new-instance v5, Ljava/util/ArrayList;

    const/16 v10, 0x18

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    sget-object v10, Llf/a;->f:[I

    array-length v11, v10

    move v12, v4

    :goto_0
    if-ge v12, v11, :cond_0

    aget v13, v10, v12

    .line 20
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    move v10, v4

    :goto_1
    if-ge v10, v1, :cond_2

    .line 21
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    mul-int/2addr v12, v9

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    move v12, v4

    .line 22
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_1

    .line 23
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/lit8 v15, v12, 0x1

    .line 24
    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v6, v12, 0x2

    .line 25
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 26
    invoke-virtual {v0, v14, v9}, Llf/a;->c(II)I

    move-result v16

    .line 27
    invoke-virtual {v0, v9, v4}, Llf/a;->c(II)I

    move-result v9

    .line 28
    invoke-virtual {v0, v4, v14}, Llf/a;->c(II)I

    move-result v4

    .line 29
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x3

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x4

    goto/16 :goto_2

    :cond_1
    add-int/lit8 v10, v10, 0x1

    move-object v5, v11

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x4

    goto/16 :goto_1

    .line 41
    :cond_2
    iget-object v1, v0, Llf/a;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 42
    iget-object v1, v0, Llf/a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v9, 0x0

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jme3/math/Vector3f;

    .line 43
    iget v6, v6, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v6, v6, v9

    if-nez v6, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 44
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 45
    iget-object v6, v0, Llf/a;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v6, v4

    mul-int/lit8 v10, v6, 0x3

    .line 46
    invoke-static {v10}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v11

    .line 47
    invoke-static {v10}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v10

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v3, v12

    .line 48
    iget-object v12, v0, Llf/a;->c:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/jme3/math/Vector3f;

    .line 49
    iget v14, v13, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v14, v2

    invoke-virtual {v11, v14}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 50
    iget v14, v13, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v15, v14, v9

    if-ltz v15, :cond_5

    mul-float/2addr v14, v2

    add-float/2addr v14, v3

    .line 51
    invoke-virtual {v11, v14}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_5

    :cond_5
    neg-float v15, v3

    mul-float/2addr v14, v2

    add-float/2addr v15, v14

    .line 52
    invoke-virtual {v11, v15}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 53
    :goto_5
    iget v14, v13, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v14, v2

    invoke-virtual {v11, v14}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 54
    iget v14, v13, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v10, v14}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v14

    iget v15, v13, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v14, v15}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v14

    iget v13, v13, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v14, v13}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_4

    :cond_6
    const/4 v12, 0x0

    .line 55
    :goto_6
    iget-object v13, v0, Llf/a;->c:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_8

    .line 56
    iget-object v13, v0, Llf/a;->c:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/jme3/math/Vector3f;

    .line 57
    iget v14, v13, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v14, v14, v9

    if-nez v14, :cond_7

    .line 58
    invoke-virtual {v11}, Ljava/nio/Buffer;->position()I

    move-result v14

    div-int/2addr v14, v8

    .line 59
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v1, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget v14, v13, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v14, v2

    invoke-virtual {v11, v14}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    neg-float v14, v3

    .line 61
    invoke-virtual {v11, v14}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 62
    iget v14, v13, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v14, v2

    invoke-virtual {v11, v14}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 63
    iget v14, v13, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v10, v14}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 64
    invoke-virtual {v10, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 65
    iget v13, v13, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v10, v13}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 66
    :cond_8
    invoke-virtual {v11}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 67
    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v2, v8, v11}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    .line 68
    invoke-virtual {v10}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 69
    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v2, v8, v10}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    .line 70
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v3, v4, 0x6

    add-int/2addr v2, v3

    .line 71
    invoke-static {v6, v2}, Lcom/jme3/scene/mesh/IndexBuffer;->createIndexBuffer(II)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v2

    .line 72
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    div-int/2addr v3, v8

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v3, :cond_f

    mul-int/lit8 v10, v6, 0x3

    .line 73
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/lit8 v13, v10, 0x1

    .line 74
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/2addr v10, v7

    .line 75
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 76
    iget-object v7, v0, Llf/a;->c:Ljava/util/List;

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jme3/math/Vector3f;

    iget v7, v7, Lcom/jme3/math/Vector3f;->y:F

    .line 77
    iget-object v8, v0, Llf/a;->c:Ljava/util/List;

    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jme3/math/Vector3f;

    iget v8, v8, Lcom/jme3/math/Vector3f;->y:F

    .line 78
    iget-object v9, v0, Llf/a;->c:Ljava/util/List;

    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jme3/math/Vector3f;

    iget v9, v9, Lcom/jme3/math/Vector3f;->y:F

    const/16 v17, 0x0

    cmpl-float v18, v7, v17

    if-eqz v18, :cond_9

    cmpl-float v19, v8, v17

    if-eqz v19, :cond_9

    cmpl-float v19, v9, v17

    if-nez v19, :cond_a

    :cond_9
    cmpg-float v7, v7, v17

    if-ltz v7, :cond_b

    cmpg-float v7, v8, v17

    if-ltz v7, :cond_b

    cmpg-float v7, v9, v17

    if-gez v7, :cond_a

    goto :goto_8

    :cond_a
    const/4 v7, 0x0

    goto :goto_9

    :cond_b
    :goto_8
    if-nez v18, :cond_c

    .line 79
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :cond_c
    const/4 v7, 0x0

    cmpl-float v8, v8, v7

    if-nez v8, :cond_d

    .line 80
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v14

    :cond_d
    cmpl-float v8, v9, v7

    if-nez v8, :cond_e

    .line 81
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 82
    :cond_e
    :goto_9
    invoke-virtual {v2, v12}, Lcom/jme3/scene/mesh/IndexBuffer;->put(I)Lcom/jme3/scene/mesh/IndexBuffer;

    .line 83
    invoke-virtual {v2, v14}, Lcom/jme3/scene/mesh/IndexBuffer;->put(I)Lcom/jme3/scene/mesh/IndexBuffer;

    .line 84
    invoke-virtual {v2, v15}, Lcom/jme3/scene/mesh/IndexBuffer;->put(I)Lcom/jme3/scene/mesh/IndexBuffer;

    add-int/lit8 v6, v6, 0x1

    move v9, v7

    const/4 v7, 0x2

    const/4 v8, 0x3

    goto/16 :goto_7

    .line 85
    :cond_f
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Integer;

    invoke-interface {v3, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Integer;

    .line 86
    new-instance v5, Llf/a$a;

    invoke-direct {v5, v0}, Llf/a$a;-><init>(Llf/a;)V

    invoke-static {v3, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 87
    iget-object v5, v0, Llf/a;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_a
    add-int/lit8 v7, v4, -0x1

    if-ge v5, v7, :cond_10

    .line 88
    aget-object v7, v3, v5

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v5, v5, 0x1

    .line 89
    aget-object v9, v3, v5

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 90
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 91
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 92
    invoke-virtual {v2, v7}, Lcom/jme3/scene/mesh/IndexBuffer;->put(I)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/jme3/scene/mesh/IndexBuffer;->put(I)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v9

    invoke-virtual {v9, v10}, Lcom/jme3/scene/mesh/IndexBuffer;->put(I)Lcom/jme3/scene/mesh/IndexBuffer;

    .line 93
    invoke-virtual {v2, v7}, Lcom/jme3/scene/mesh/IndexBuffer;->put(I)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/jme3/scene/mesh/IndexBuffer;->put(I)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/jme3/scene/mesh/IndexBuffer;->put(I)Lcom/jme3/scene/mesh/IndexBuffer;

    goto :goto_a

    .line 94
    :cond_10
    aget-object v4, v3, v7

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    .line 95
    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 96
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 97
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 98
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 99
    invoke-virtual {v2, v4}, Lcom/jme3/scene/mesh/IndexBuffer;->put(I)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/jme3/scene/mesh/IndexBuffer;->put(I)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/jme3/scene/mesh/IndexBuffer;->put(I)Lcom/jme3/scene/mesh/IndexBuffer;

    .line 100
    invoke-virtual {v2, v4}, Lcom/jme3/scene/mesh/IndexBuffer;->put(I)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/jme3/scene/mesh/IndexBuffer;->put(I)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/jme3/scene/mesh/IndexBuffer;->put(I)Lcom/jme3/scene/mesh/IndexBuffer;

    .line 101
    invoke-virtual {v2}, Lcom/jme3/scene/mesh/IndexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v1

    .line 102
    invoke-virtual {v2}, Lcom/jme3/scene/mesh/IndexBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object v2

    .line 103
    invoke-virtual {v2}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 104
    sget-object v3, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->setStatic()V

    return-void
.end method

.method public static synthetic a(Llf/a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Llf/a;->c:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final b(Lcom/jme3/math/Vector3f;)I
    .locals 3

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->length()F

    move-result v0

    iget-object v1, p0, Llf/a;->c:Ljava/util/List;

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v0

    invoke-virtual {p1, v2}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p1, p0, Llf/a;->b:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Llf/a;->b:I

    return p1
.end method

.method public final c(II)I
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

    iget-object v2, p0, Llf/a;->d:Ljava/util/Map;

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
    iget-object v2, p0, Llf/a;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Llf/a;->c:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    const/4 v2, 0x0

    invoke-static {p1, p2, v2}, Ljf/h;->M(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p0, p1}, Llf/a;->b(Lcom/jme3/math/Vector3f;)I

    move-result p1

    iget-object p2, p0, Llf/a;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p1
.end method
