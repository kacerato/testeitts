.class public Lcom/threed/jpct/util/LensFlare;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private burst:Lcom/threed/jpct/Texture;

.field private cover:Z

.field private globalScale:F

.field private halo1:Lcom/threed/jpct/Texture;

.field private halo2:Lcom/threed/jpct/Texture;

.field private halo3:Lcom/threed/jpct/Texture;

.field private light2D:Lcom/threed/jpct/SimpleVector;

.field private maxDistance:F

.field private revertDirection:Z

.field private scales:[[F

.field private sunPos:Lcom/threed/jpct/SimpleVector;

.field private tmp1:Lcom/threed/jpct/SimpleVector;

.field private tmp2:Lcom/threed/jpct/SimpleVector;

.field private tmp3:Lcom/threed/jpct/SimpleVector;

.field private trans:I

.field private types:[Lcom/threed/jpct/Texture;

.field private visible:Z


# direct methods
.method public constructor <init>(Lcom/threed/jpct/SimpleVector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/util/LensFlare;->burst:Lcom/threed/jpct/Texture;

    iput-object v0, p0, Lcom/threed/jpct/util/LensFlare;->halo1:Lcom/threed/jpct/Texture;

    iput-object v0, p0, Lcom/threed/jpct/util/LensFlare;->halo2:Lcom/threed/jpct/Texture;

    iput-object v0, p0, Lcom/threed/jpct/util/LensFlare;->halo3:Lcom/threed/jpct/Texture;

    iput-object v0, p0, Lcom/threed/jpct/util/LensFlare;->sunPos:Lcom/threed/jpct/SimpleVector;

    const/4 v1, 0x7

    new-array v2, v1, [Lcom/threed/jpct/Texture;

    iput-object v2, p0, Lcom/threed/jpct/util/LensFlare;->types:[Lcom/threed/jpct/Texture;

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    const/4 v5, 0x0

    aput v1, v3, v5

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    iput-object v1, p0, Lcom/threed/jpct/util/LensFlare;->scales:[[F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/threed/jpct/util/LensFlare;->globalScale:F

    iput v4, p0, Lcom/threed/jpct/util/LensFlare;->trans:I

    iput-boolean v4, p0, Lcom/threed/jpct/util/LensFlare;->cover:Z

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/threed/jpct/util/LensFlare;->maxDistance:F

    iput-boolean v5, p0, Lcom/threed/jpct/util/LensFlare;->revertDirection:Z

    iput-boolean v5, p0, Lcom/threed/jpct/util/LensFlare;->visible:Z

    iput-object v0, p0, Lcom/threed/jpct/util/LensFlare;->light2D:Lcom/threed/jpct/SimpleVector;

    new-instance v0, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v0}, Lcom/threed/jpct/SimpleVector;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/util/LensFlare;->tmp1:Lcom/threed/jpct/SimpleVector;

    new-instance v0, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v0}, Lcom/threed/jpct/SimpleVector;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/util/LensFlare;->tmp2:Lcom/threed/jpct/SimpleVector;

    new-instance v0, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v0}, Lcom/threed/jpct/SimpleVector;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/util/LensFlare;->tmp3:Lcom/threed/jpct/SimpleVector;

    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/threed/jpct/TextureManager;->getTexture(Ljava/lang/String;)Lcom/threed/jpct/Texture;

    move-result-object p2

    iput-object p2, p0, Lcom/threed/jpct/util/LensFlare;->burst:Lcom/threed/jpct/Texture;

    invoke-virtual {v0, p3}, Lcom/threed/jpct/TextureManager;->getTexture(Ljava/lang/String;)Lcom/threed/jpct/Texture;

    move-result-object p2

    iput-object p2, p0, Lcom/threed/jpct/util/LensFlare;->halo1:Lcom/threed/jpct/Texture;

    invoke-virtual {v0, p4}, Lcom/threed/jpct/TextureManager;->getTexture(Ljava/lang/String;)Lcom/threed/jpct/Texture;

    move-result-object p2

    iput-object p2, p0, Lcom/threed/jpct/util/LensFlare;->halo2:Lcom/threed/jpct/Texture;

    invoke-virtual {v0, p5}, Lcom/threed/jpct/TextureManager;->getTexture(Ljava/lang/String;)Lcom/threed/jpct/Texture;

    move-result-object p2

    iput-object p2, p0, Lcom/threed/jpct/util/LensFlare;->halo3:Lcom/threed/jpct/Texture;

    new-instance p2, Lcom/threed/jpct/SimpleVector;

    invoke-direct {p2, p1}, Lcom/threed/jpct/SimpleVector;-><init>(Lcom/threed/jpct/SimpleVector;)V

    iput-object p2, p0, Lcom/threed/jpct/util/LensFlare;->sunPos:Lcom/threed/jpct/SimpleVector;

    iget-object p1, p0, Lcom/threed/jpct/util/LensFlare;->types:[Lcom/threed/jpct/Texture;

    iget-object p2, p0, Lcom/threed/jpct/util/LensFlare;->burst:Lcom/threed/jpct/Texture;

    aput-object p2, p1, v5

    iget-object p3, p0, Lcom/threed/jpct/util/LensFlare;->halo1:Lcom/threed/jpct/Texture;

    aput-object p3, p1, v4

    aput-object p2, p1, v2

    iget-object p3, p0, Lcom/threed/jpct/util/LensFlare;->halo2:Lcom/threed/jpct/Texture;

    const/4 p4, 0x3

    aput-object p3, p1, p4

    const/4 p3, 0x4

    aput-object p2, p1, p3

    iget-object p5, p0, Lcom/threed/jpct/util/LensFlare;->halo3:Lcom/threed/jpct/Texture;

    const/4 v0, 0x5

    aput-object p5, p1, v0

    const/4 p5, 0x6

    aput-object p2, p1, p5

    iget-object p1, p0, Lcom/threed/jpct/util/LensFlare;->scales:[[F

    aget-object p2, p1, v5

    aput v1, p2, v5

    aput v1, p2, v4

    aget-object p2, p1, v4

    const/high16 v3, 0x40000000    # 2.0f

    aput v3, p2, v5

    const/high16 v3, 0x3f000000    # 0.5f

    aput v3, p2, v4

    aget-object p2, p1, v2

    const/high16 v2, 0x40400000    # 3.0f

    aput v2, p2, v5

    const/high16 v2, 0x3e800000    # 0.25f

    aput v2, p2, v4

    aget-object p2, p1, p4

    const/high16 p4, 0x41000000    # 8.0f

    aput p4, p2, v5

    aput v1, p2, v4

    aget-object p2, p1, p3

    const/high16 p3, -0x40000000    # -2.0f

    aput p3, p2, v5

    aput v3, p2, v4

    aget-object p2, p1, v0

    const/high16 p3, -0x3f800000    # -4.0f

    aput p3, p2, v5

    aput v2, p2, v4

    aget-object p1, p1, p5

    const/high16 p2, -0x3f500000    # -5.5f

    aput p2, p1, v5

    aput v2, p1, v4

    return-void
.end method


# virtual methods
.method public render(Lcom/threed/jpct/FrameBuffer;)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threed/jpct/util/LensFlare;->light2D:Lcom/threed/jpct/SimpleVector;

    if-eqz v1, :cond_1

    iget-boolean v2, v0, Lcom/threed/jpct/util/LensFlare;->visible:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/threed/jpct/util/LensFlare;->tmp1:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v2, v1}, Lcom/threed/jpct/SimpleVector;->set(Lcom/threed/jpct/SimpleVector;)V

    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/FrameBuffer;->getCenterX()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/FrameBuffer;->getCenterY()F

    move-result v3

    const/4 v4, 0x0

    iput v4, v2, Lcom/threed/jpct/SimpleVector;->z:F

    iget-object v5, v0, Lcom/threed/jpct/util/LensFlare;->tmp2:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v5, v1, v3, v4}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v5, v6}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    invoke-virtual {v2, v5}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    invoke-virtual {v2}, Lcom/threed/jpct/SimpleVector;->length()F

    move-result v5

    invoke-virtual {v2, v2}, Lcom/threed/jpct/SimpleVector;->normalize(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v2

    iget-object v6, v0, Lcom/threed/jpct/util/LensFlare;->tmp2:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v6, v4, v4, v4}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    const/4 v4, 0x0

    move v7, v4

    :goto_0
    iget-object v8, v0, Lcom/threed/jpct/util/LensFlare;->types:[Lcom/threed/jpct/Texture;

    array-length v8, v8

    if-lt v7, v8, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v6, v2}, Lcom/threed/jpct/SimpleVector;->set(Lcom/threed/jpct/SimpleVector;)V

    iget-object v8, v0, Lcom/threed/jpct/util/LensFlare;->types:[Lcom/threed/jpct/Texture;

    aget-object v10, v8, v7

    iget-object v8, v0, Lcom/threed/jpct/util/LensFlare;->scales:[[F

    aget-object v8, v8, v7

    aget v9, v8, v4

    const/4 v11, 0x1

    aget v8, v8, v11

    iget v11, v0, Lcom/threed/jpct/util/LensFlare;->globalScale:F

    mul-float/2addr v8, v11

    const/high16 v11, 0x3f800000    # 1.0f

    div-float/2addr v11, v9

    mul-float/2addr v11, v5

    invoke-virtual {v6, v11}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    invoke-virtual {v10}, Lcom/threed/jpct/Texture;->getWidth()I

    move-result v15

    invoke-virtual {v10}, Lcom/threed/jpct/Texture;->getHeight()I

    move-result v14

    iget v9, v6, Lcom/threed/jpct/SimpleVector;->x:F

    shr-int/lit8 v11, v15, 0x1

    int-to-float v11, v11

    mul-float/2addr v11, v8

    sub-float/2addr v9, v11

    float-to-int v9, v9

    iget v11, v6, Lcom/threed/jpct/SimpleVector;->y:F

    shr-int/lit8 v12, v14, 0x1

    int-to-float v12, v12

    mul-float/2addr v12, v8

    sub-float/2addr v11, v12

    float-to-int v11, v11

    float-to-int v12, v1

    add-int v13, v9, v12

    float-to-int v9, v3

    add-int v16, v11, v9

    int-to-float v9, v15

    mul-float/2addr v9, v8

    float-to-int v12, v9

    int-to-float v9, v14

    mul-float/2addr v9, v8

    float-to-int v8, v9

    iget v11, v0, Lcom/threed/jpct/util/LensFlare;->trans:I

    const/16 v20, 0x1

    sget-object v21, Lcom/threed/jpct/RGBColor;->WHITE:Lcom/threed/jpct/RGBColor;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v9, p1

    move/from16 v19, v11

    move/from16 v11, v17

    move/from16 v17, v12

    move/from16 v12, v18

    move/from16 v18, v14

    move/from16 v14, v16

    move/from16 v16, v18

    move/from16 v18, v8

    invoke-virtual/range {v9 .. v21}, Lcom/threed/jpct/FrameBuffer;->blit(Lcom/threed/jpct/Texture;IIIIIIIIIZLcom/threed/jpct/RGBColor;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setDirection(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/threed/jpct/util/LensFlare;->revertDirection:Z

    return-void
.end method

.method public setGlobalScale(F)V
    .locals 0

    iput p1, p0, Lcom/threed/jpct/util/LensFlare;->globalScale:F

    return-void
.end method

.method public setHiding(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/threed/jpct/util/LensFlare;->cover:Z

    return-void
.end method

.method public setLightPosition(Lcom/threed/jpct/SimpleVector;)V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/util/LensFlare;->sunPos:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/SimpleVector;->set(Lcom/threed/jpct/SimpleVector;)V

    return-void
.end method

.method public setMaximumDistance(F)V
    .locals 0

    iput p1, p0, Lcom/threed/jpct/util/LensFlare;->maxDistance:F

    return-void
.end method

.method public setTransparency(I)V
    .locals 0

    iput p1, p0, Lcom/threed/jpct/util/LensFlare;->trans:I

    return-void
.end method

.method public update(Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/World;)V
    .locals 9

    invoke-virtual {p2}, Lcom/threed/jpct/World;->getCamera()Lcom/threed/jpct/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/threed/jpct/util/LensFlare;->sunPos:Lcom/threed/jpct/SimpleVector;

    iget-object v2, p0, Lcom/threed/jpct/util/LensFlare;->tmp3:Lcom/threed/jpct/SimpleVector;

    invoke-static {v0, p1, v1, v2}, Lcom/threed/jpct/Interact2D;->project3D2D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    iput-object p1, p0, Lcom/threed/jpct/util/LensFlare;->light2D:Lcom/threed/jpct/SimpleVector;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/threed/jpct/util/LensFlare;->visible:Z

    iget-boolean v1, p0, Lcom/threed/jpct/util/LensFlare;->cover:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/threed/jpct/util/LensFlare;->tmp1:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Camera;->getPosition(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    iget-boolean v1, p0, Lcom/threed/jpct/util/LensFlare;->revertDirection:Z

    const/4 v2, 0x0

    const/high16 v3, 0x40a00000    # 5.0f

    const v4, 0x5368d4a5    # 1.0E12f

    const v5, 0x3f866666    # 1.05f

    const/high16 v6, -0x40800000    # -1.0f

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/threed/jpct/util/LensFlare;->tmp2:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v1, v0}, Lcom/threed/jpct/SimpleVector;->set(Lcom/threed/jpct/SimpleVector;)V

    invoke-virtual {v0, v6}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    iget-object v1, p0, Lcom/threed/jpct/util/LensFlare;->sunPos:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    invoke-virtual {v0}, Lcom/threed/jpct/SimpleVector;->length()F

    move-result v1

    iget-object v7, p0, Lcom/threed/jpct/util/LensFlare;->tmp2:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, v0}, Lcom/threed/jpct/SimpleVector;->normalize(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    iget v8, p0, Lcom/threed/jpct/util/LensFlare;->maxDistance:F

    cmpl-float v6, v8, v6

    mul-float/2addr v5, v1

    if-eqz v6, :cond_0

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    :cond_0
    invoke-virtual {p2, v7, v0, v5}, Lcom/threed/jpct/World;->calcMinDistance(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;F)F

    move-result p2

    cmpl-float v0, p2, v4

    if-eqz v0, :cond_1

    sub-float/2addr v1, v3

    cmpl-float p2, p2, v1

    if-gtz p2, :cond_1

    move p1, v2

    :cond_1
    iput-boolean p1, p0, Lcom/threed/jpct/util/LensFlare;->visible:Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/threed/jpct/util/LensFlare;->tmp2:Lcom/threed/jpct/SimpleVector;

    iget-object v7, p0, Lcom/threed/jpct/util/LensFlare;->sunPos:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v1, v7}, Lcom/threed/jpct/SimpleVector;->set(Lcom/threed/jpct/SimpleVector;)V

    iget-object v1, p0, Lcom/threed/jpct/util/LensFlare;->tmp2:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v1, v6}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    iget-object v1, p0, Lcom/threed/jpct/util/LensFlare;->tmp2:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    invoke-virtual {v0}, Lcom/threed/jpct/SimpleVector;->length()F

    move-result v1

    iget-object v7, p0, Lcom/threed/jpct/util/LensFlare;->sunPos:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, v0}, Lcom/threed/jpct/SimpleVector;->normalize(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    iget v8, p0, Lcom/threed/jpct/util/LensFlare;->maxDistance:F

    cmpl-float v6, v8, v6

    mul-float/2addr v5, v1

    if-eqz v6, :cond_3

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    :cond_3
    invoke-virtual {p2, v7, v0, v5}, Lcom/threed/jpct/World;->calcMinDistance(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;F)F

    move-result p2

    cmpl-float v0, p2, v4

    if-eqz v0, :cond_4

    sub-float/2addr v1, v3

    cmpl-float p2, p2, v1

    if-gtz p2, :cond_4

    move p1, v2

    :cond_4
    iput-boolean p1, p0, Lcom/threed/jpct/util/LensFlare;->visible:Z

    :cond_5
    :goto_0
    return-void
.end method
