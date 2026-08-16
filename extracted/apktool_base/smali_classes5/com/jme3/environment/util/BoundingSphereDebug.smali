.class public Lcom/jme3/environment/util/BoundingSphereDebug;
.super Lcom/jme3/scene/Mesh;
.source "SourceFile"


# instance fields
.field protected interior:Z

.field protected radialSamples:I

.field protected triCount:I

.field protected useEvenSlices:Z

.field protected vertCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    const/16 v0, 0x20

    iput v0, p0, Lcom/jme3/environment/util/BoundingSphereDebug;->radialSamples:I

    invoke-direct {p0}, Lcom/jme3/environment/util/BoundingSphereDebug;->setGeometryData()V

    invoke-direct {p0}, Lcom/jme3/environment/util/BoundingSphereDebug;->setIndexData()V

    return-void
.end method

.method public static createDebugSphere(Lcom/jme3/asset/AssetManager;)Lcom/jme3/scene/Geometry;
    .locals 3

    new-instance v0, Lcom/jme3/environment/util/BoundingSphereDebug;

    invoke-direct {v0}, Lcom/jme3/environment/util/BoundingSphereDebug;-><init>()V

    new-instance v1, Lcom/jme3/scene/Geometry;

    const-string v2, "BoundingDebug"

    invoke-direct {v1, v2, v0}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    new-instance v0, Lcom/jme3/material/Material;

    const-string v2, "Common/MatDefs/Misc/Unshaded.j3md"

    invoke-direct {v0, p0, v2}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    const-string p0, "VertexColor"

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Lcom/jme3/material/Material;->setBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/jme3/material/RenderState;->setWireframe(Z)V

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    return-object v1
.end method

.method private setGeometryData()V
    .locals 10

    sget-object v0, Lcom/jme3/scene/Mesh$Mode;->Lines:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    iget v0, p0, Lcom/jme3/environment/util/BoundingSphereDebug;->radialSamples:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x3

    mul-int/2addr v0, v1

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget v2, p0, Lcom/jme3/environment/util/BoundingSphereDebug;->radialSamples:I

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x4

    mul-int/2addr v2, v3

    invoke-static {v2}, Lcom/jme3/util/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v2

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v4, v1, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Color:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v1, v3, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    iget v1, p0, Lcom/jme3/environment/util/BoundingSphereDebug;->radialSamples:I

    int-to-float v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    div-float/2addr v4, v3

    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [F

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [F

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    iget v7, p0, Lcom/jme3/environment/util/BoundingSphereDebug;->radialSamples:I

    if-ge v6, v7, :cond_0

    const v7, 0x40c90fdb

    mul-float/2addr v7, v4

    int-to-float v8, v6

    mul-float/2addr v7, v8

    invoke-static {v7}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v8

    aput v8, v1, v6

    invoke-static {v7}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v7

    aput v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    aget v4, v3, v5

    aput v4, v3, v7

    aget v4, v1, v5

    aput v4, v1, v7

    move v4, v5

    :goto_1
    iget v6, p0, Lcom/jme3/environment/util/BoundingSphereDebug;->radialSamples:I

    const/4 v7, 0x0

    if-gt v4, v6, :cond_1

    aget v6, v1, v4

    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v6

    aget v8, v3, v4

    invoke-virtual {v6, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    sget-object v6, Lcom/jme3/math/ColorRGBA;->Blue:Lcom/jme3/math/ColorRGBA;

    iget v7, v6, Lcom/jme3/math/ColorRGBA;->r:F

    invoke-virtual {v2, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v7

    iget v8, v6, Lcom/jme3/math/ColorRGBA;->g:F

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v7

    iget v8, v6, Lcom/jme3/math/ColorRGBA;->b:F

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v7

    iget v6, v6, Lcom/jme3/math/ColorRGBA;->a:F

    invoke-virtual {v7, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_2
    iget v6, p0, Lcom/jme3/environment/util/BoundingSphereDebug;->radialSamples:I

    if-gt v4, v6, :cond_2

    aget v6, v1, v4

    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v6

    aget v8, v3, v4

    invoke-virtual {v6, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    sget-object v6, Lcom/jme3/math/ColorRGBA;->Green:Lcom/jme3/math/ColorRGBA;

    iget v8, v6, Lcom/jme3/math/ColorRGBA;->r:F

    invoke-virtual {v2, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v8

    iget v9, v6, Lcom/jme3/math/ColorRGBA;->g:F

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v8

    iget v9, v6, Lcom/jme3/math/ColorRGBA;->b:F

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v8

    iget v6, v6, Lcom/jme3/math/ColorRGBA;->a:F

    invoke-virtual {v8, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    iget v4, p0, Lcom/jme3/environment/util/BoundingSphereDebug;->radialSamples:I

    if-gt v5, v4, :cond_3

    invoke-virtual {v0, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    aget v6, v1, v5

    invoke-virtual {v4, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    aget v6, v3, v5

    invoke-virtual {v4, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    sget-object v4, Lcom/jme3/math/ColorRGBA;->Yellow:Lcom/jme3/math/ColorRGBA;

    iget v6, v4, Lcom/jme3/math/ColorRGBA;->r:F

    invoke-virtual {v2, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v6

    iget v8, v4, Lcom/jme3/math/ColorRGBA;->g:F

    invoke-virtual {v6, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v6

    iget v8, v4, Lcom/jme3/math/ColorRGBA;->b:F

    invoke-virtual {v6, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v6

    iget v4, v4, Lcom/jme3/math/ColorRGBA;->a:F

    invoke-virtual {v6, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->setStatic()V

    return-void
.end method

.method private setIndexData()V
    .locals 6

    iget v0, p0, Lcom/jme3/environment/util/BoundingSphereDebug;->radialSamples:I

    mul-int/lit8 v1, v0, 0x3

    mul-int/lit8 v0, v0, 0x6

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object v0

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/ShortBuffer;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_2

    int-to-short v4, v3

    invoke-virtual {v0, v4}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v4, v3, 0x1

    int-to-short v5, v4

    invoke-virtual {v0, v5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v2, v2, 0x1

    iget v5, p0, Lcom/jme3/environment/util/BoundingSphereDebug;->radialSamples:I

    if-eq v2, v5, :cond_1

    mul-int/lit8 v5, v5, 0x2

    if-ne v2, v5, :cond_0

    goto :goto_1

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_2
    return-void
.end method
