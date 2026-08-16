.class public Llf/o;
.super Lcom/jme3/scene/Mesh;
.source "SourceFile"


# static fields
.field public static final b:I = 0x3

.field public static final c:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Llf/o;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Llf/o;->c:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v5}, Llf/o;-><init>(FFFFF)V

    return-void
.end method

.method public constructor <init>(FFFFF)V
    .locals 10

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    move-object v0, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    .line 3
    invoke-direct/range {v0 .. v9}, Llf/o;-><init>(FFFFFFFFF)V

    return-void
.end method

.method public constructor <init>(FFFFFFFFF)V
    .locals 17

    move-object/from16 v0, p0

    const/16 v2, 0xa

    const/16 v3, 0x9

    const/16 v4, 0xc

    const/16 v5, 0x8

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 4
    invoke-direct/range {p0 .. p0}, Lcom/jme3/scene/Mesh;-><init>()V

    const/high16 v15, -0x40800000    # -1.0f

    cmpl-float v15, p9, v15

    if-eqz v15, :cond_1

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v15, p9, v15

    if-nez v15, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Llf/o;->c:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static/range {p9 .. p9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "zNorm={0}"

    invoke-virtual {v1, v2, v4, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "zNorm must be +1 or -1."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v15, Lcom/jme3/scene/Mesh$Mode;->TriangleFan:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v0, v15}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    .line 8
    sget-object v15, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    new-array v1, v4, [F

    aput p5, v1, v13

    aput p7, v1, v12

    aput v14, v1, v11

    aput p6, v1, v10

    aput p7, v1, v9

    aput v14, v1, v8

    aput p6, v1, v7

    aput p8, v1, v6

    aput v14, v1, v5

    aput p5, v1, v3

    aput p8, v1, v2

    const/16 v16, 0xb

    aput v14, v1, v16

    invoke-virtual {v0, v15, v10, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[F)V

    .line 9
    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    new-array v15, v5, [F

    aput p1, v15, v13

    aput p3, v15, v12

    aput p2, v15, v11

    aput p3, v15, v10

    aput p2, v15, v9

    aput p4, v15, v8

    aput p1, v15, v7

    aput p4, v15, v6

    invoke-virtual {v0, v1, v11, v15}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[F)V

    .line 10
    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    new-array v4, v4, [F

    aput v14, v4, v13

    aput v14, v4, v12

    aput p9, v4, v11

    aput v14, v4, v10

    aput v14, v4, v9

    aput p9, v4, v8

    aput v14, v4, v7

    aput v14, v4, v6

    aput p9, v4, v5

    aput v14, v4, v3

    aput v14, v4, v2

    const/16 v2, 0xb

    aput p9, v4, v2

    invoke-virtual {v0, v1, v10, v4}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[F)V

    sub-float v1, p6, p5

    sub-float v2, p8, p7

    mul-float/2addr v1, v2

    mul-float v1, v1, p9

    cmpg-float v1, v1, v14

    if-gez v1, :cond_2

    .line 11
    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    new-array v2, v9, [B

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v10, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[B)V

    .line 12
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->setStatic()V

    return-void

    :array_0
    .array-data 1
        0x0t
        0x3t
        0x2t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Lcom/jme3/font/Rectangle;F)V
    .locals 10

    .line 2
    iget v5, p1, Lcom/jme3/font/Rectangle;->x:F

    iget v0, p1, Lcom/jme3/font/Rectangle;->width:F

    add-float v6, v5, v0

    iget v7, p1, Lcom/jme3/font/Rectangle;->y:F

    iget p1, p1, Lcom/jme3/font/Rectangle;->height:F

    add-float v8, v7, p1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p0

    move v9, p2

    invoke-direct/range {v0 .. v9}, Llf/o;-><init>(FFFFFFFFF)V

    return-void
.end method
