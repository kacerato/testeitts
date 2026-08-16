.class public Llf/q;
.super Lcom/jme3/scene/Mesh;
.source "SourceFile"


# static fields
.field public static final b:I = 0x4

.field public static final c:I = 0x3

.field public static final d:I = 0x3

.field public static final e:Ljava/util/logging/Logger;

.field public static final synthetic f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Llf/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Llf/q;->e:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const v5, 0x3dcccccd    # 0.1f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v6}, Llf/q;-><init>(FFFFFF)V

    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p5

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/jme3/scene/Mesh;-><init>()V

    .line 3
    const-string v2, "corner radius"

    invoke-static {v1, v2}, Lif/E;->p(FLjava/lang/String;)Z

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, p6, v2

    if-eqz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p6, v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Llf/q;->e:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static/range {p6 .. p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "zNorm={0}"

    invoke-virtual {v1, v2, v4, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "zNorm must be +1 or -1."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v2, Lcom/jme3/scene/Mesh$Mode;->TriangleFan:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v0, v2}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    const/16 v2, 0x16

    .line 7
    new-array v2, v2, [S

    const/16 v3, 0x3f

    .line 8
    new-array v4, v3, [F

    .line 9
    new-array v3, v3, [F

    const/16 v5, 0x2a

    .line 10
    new-array v5, v5, [F

    add-float v6, p1, p2

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    const/4 v8, 0x0

    .line 11
    aput v6, v3, v8

    add-float v6, p3, p4

    div-float/2addr v6, v7

    const/4 v7, 0x1

    .line 12
    aput v6, v3, v7

    add-float v6, p1, v1

    add-float v9, p3, v1

    move v11, v7

    move v10, v8

    :goto_1
    const/high16 v12, 0x40800000    # 4.0f

    const v13, 0x3fc90fdb

    const/4 v14, 0x4

    if-gt v10, v14, :cond_2

    int-to-float v14, v10

    mul-float/2addr v14, v13

    div-float/2addr v14, v12

    .line 13
    invoke-static {v14}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v12

    .line 14
    invoke-static {v14}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v13

    mul-int/lit8 v14, v11, 0x3

    mul-float/2addr v13, v1

    sub-float v13, v6, v13

    .line 15
    aput v13, v3, v14

    add-int/2addr v14, v7

    mul-float/2addr v12, v1

    sub-float v12, v9, v12

    .line 16
    aput v12, v3, v14

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    sub-float v10, p2, v1

    move v15, v8

    :goto_2
    if-gt v15, v14, :cond_3

    int-to-float v8, v15

    mul-float/2addr v8, v13

    div-float/2addr v8, v12

    .line 17
    invoke-static {v8}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v16

    .line 18
    invoke-static {v8}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v8

    mul-int/lit8 v17, v11, 0x3

    mul-float v16, v16, v1

    add-float v16, v10, v16

    .line 19
    aput v16, v3, v17

    add-int/lit8 v17, v17, 0x1

    mul-float/2addr v8, v1

    sub-float v8, v9, v8

    .line 20
    aput v8, v3, v17

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v15, v15, 0x1

    const/4 v8, 0x0

    goto :goto_2

    :cond_3
    sub-float v8, p4, v1

    const/4 v9, 0x0

    :goto_3
    if-gt v9, v14, :cond_4

    int-to-float v15, v9

    mul-float/2addr v15, v13

    div-float/2addr v15, v12

    .line 21
    invoke-static {v15}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v16

    .line 22
    invoke-static {v15}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v15

    mul-int/lit8 v17, v11, 0x3

    mul-float/2addr v15, v1

    add-float/2addr v15, v10

    .line 23
    aput v15, v3, v17

    add-int/lit8 v17, v17, 0x1

    mul-float v15, v1, v16

    add-float/2addr v15, v8

    .line 24
    aput v15, v3, v17

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    :goto_4
    if-gt v9, v14, :cond_5

    int-to-float v10, v9

    mul-float/2addr v10, v13

    div-float/2addr v10, v12

    .line 25
    invoke-static {v10}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v15

    .line 26
    invoke-static {v10}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v10

    mul-int/lit8 v16, v11, 0x3

    mul-float/2addr v15, v1

    sub-float v15, v6, v15

    .line 27
    aput v15, v3, v16

    add-int/lit8 v16, v16, 0x1

    mul-float/2addr v10, v1

    add-float/2addr v10, v8

    .line 28
    aput v10, v3, v16

    add-int/2addr v11, v7

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_5
    const/4 v8, 0x0

    :goto_5
    const/16 v1, 0x15

    if-ge v8, v1, :cond_6

    int-to-short v1, v8

    .line 29
    aput-short v1, v2, v8

    mul-int/lit8 v1, v8, 0x3

    const/4 v6, 0x0

    .line 30
    aput v6, v4, v1

    add-int/lit8 v9, v1, 0x1

    .line 31
    aput v6, v4, v9

    add-int/lit8 v10, v1, 0x2

    .line 32
    aput p6, v4, v10

    .line 33
    aput v6, v3, v10

    .line 34
    aget v1, v3, v1

    .line 35
    aget v6, v3, v9

    mul-int/lit8 v9, v8, 0x2

    sub-float v1, v1, p1

    sub-float v10, p2, p1

    div-float/2addr v1, v10

    .line 36
    aput v1, v5, v9

    add-int/2addr v9, v7

    sub-float v6, v6, p3

    sub-float v1, p4, p3

    div-float/2addr v6, v1

    .line 37
    aput v6, v5, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 38
    :cond_6
    aput-short v7, v2, v1

    .line 39
    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v6, 0x3

    invoke-virtual {v0, v1, v6, v4}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[F)V

    .line 40
    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v1, v6, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[S)V

    .line 41
    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v1, v6, v3}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[F)V

    .line 42
    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v5}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[F)V

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->setStatic()V

    return-void
.end method
