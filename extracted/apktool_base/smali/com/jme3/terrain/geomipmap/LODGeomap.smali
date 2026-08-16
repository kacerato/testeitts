.class public Lcom/jme3/terrain/geomipmap/LODGeomap;
.super Lcom/jme3/terrain/GeoMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/terrain/GeoMap;-><init>()V

    return-void
.end method

.method public constructor <init>(I[F)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p2, p1, p1, v0}, Lcom/jme3/terrain/GeoMap;-><init>([FIII)V

    return-void
.end method

.method private calculateNumIndexesLodDiff(I)I
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move p1, v0

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/2addr v1, p1

    add-int/lit8 v0, v1, -0x1

    mul-int v2, v0, v0

    mul-int/lit8 v2, v2, 0x2

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v2, v0

    add-int/lit8 v1, v1, -0x3

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v0

    div-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0xb

    return v2
.end method

.method public static calculateTangent([Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 9

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v2, Lcom/jme3/math/Vector2f;

    invoke-direct {v2}, Lcom/jme3/math/Vector2f;-><init>()V

    new-instance v3, Lcom/jme3/math/Vector2f;

    invoke-direct {v3}, Lcom/jme3/math/Vector2f;-><init>()V

    const/4 v4, 0x2

    aget-object v5, p1, v4

    const/4 v6, 0x0

    aget-object v7, p1, v6

    invoke-virtual {v5, v7, v3}, Lcom/jme3/math/Vector2f;->subtract(Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;

    const/4 v5, 0x1

    aget-object v7, p1, v5

    aget-object p1, p1, v6

    invoke-virtual {v7, p1, v2}, Lcom/jme3/math/Vector2f;->subtract(Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;

    iget p1, v2, Lcom/jme3/math/Vector2f;->x:F

    iget v7, v3, Lcom/jme3/math/Vector2f;->y:F

    mul-float/2addr p1, v7

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x33d6bf95    # 1.0E-7f

    cmpg-float v7, v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    if-gez v7, :cond_0

    move p1, v8

    :cond_0
    aget-object v5, p0, v5

    aget-object v7, p0, v6

    invoke-virtual {v5, v7, v0}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    aget-object v4, p0, v4

    aget-object p0, p0, v6

    invoke-virtual {v4, p0, v1}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {p2, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {p2}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    invoke-virtual {p3, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {p3}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    div-float/2addr v8, p1

    iget p0, v3, Lcom/jme3/math/Vector2f;->y:F

    iget p1, v0, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr p1, p0

    mul-float/2addr p1, v8

    iput p1, p2, Lcom/jme3/math/Vector3f;->x:F

    const/4 p1, 0x0

    iput p1, p2, Lcom/jme3/math/Vector3f;->y:F

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr p0, v0

    mul-float/2addr p0, v8

    iput p0, p2, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p2}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    iput p1, p3, Lcom/jme3/math/Vector3f;->x:F

    iget p0, v2, Lcom/jme3/math/Vector2f;->x:F

    iget p1, v1, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr p1, p0

    mul-float/2addr p1, v8

    iput p1, p3, Lcom/jme3/math/Vector3f;->y:F

    iget p1, v1, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr p0, p1

    mul-float/2addr p0, v8

    iput p0, p3, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p3}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    return-object p2
.end method

.method private getNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 7

    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p2, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v0, v1

    iget v2, p1, Lcom/jme3/math/Vector3f;->y:F

    iget v3, p2, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v2, v3

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    iget p2, p2, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr p1, p2

    iget v4, p4, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v0, v4

    iget v5, p4, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v2, v5

    iget p4, p4, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr p1, p4

    iget v6, p3, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v6, v1

    iget v1, p3, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v1, v3

    iget p3, p3, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr p3, p2

    mul-float/2addr v6, v4

    mul-float/2addr v1, v5

    mul-float/2addr p3, p4

    mul-float p2, v2, p3

    mul-float p4, p1, v1

    sub-float/2addr p2, p4

    mul-float/2addr p1, v6

    mul-float/2addr p3, v0

    sub-float/2addr p1, p3

    mul-float/2addr v0, v1

    mul-float/2addr v2, v6

    sub-float/2addr v0, v2

    mul-float p3, p2, p2

    mul-float p4, p1, p1

    add-float/2addr p3, p4

    mul-float p4, v0, v0

    add-float/2addr p3, p4

    invoke-static {p3}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result p3

    const/high16 p4, 0x3f800000    # 1.0f

    div-float/2addr p4, p3

    mul-float/2addr p2, p4

    iput p2, p5, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr p1, p4

    iput p1, p5, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v0, p4

    iput v0, p5, Lcom/jme3/math/Vector3f;->z:F

    return-object p5
.end method


# virtual methods
.method public createMesh(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;FIZ)Lcom/jme3/scene/Mesh;
    .locals 12

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    .line 1
    invoke-virtual/range {v0 .. v11}, Lcom/jme3/terrain/geomipmap/LODGeomap;->createMesh(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;FIZIZZZZ)Lcom/jme3/scene/Mesh;

    move-result-object v0

    return-object v0
.end method

.method public createMesh(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;FIZIZZZZ)Lcom/jme3/scene/Mesh;
    .locals 12

    move-object v7, p0

    move-object v8, p1

    const/4 v6, 0x0

    move/from16 v0, p6

    .line 2
    invoke-virtual {p0, v6, p1, v0}, Lcom/jme3/terrain/GeoMap;->writeVertexArray(Ljava/nio/FloatBuffer;Lcom/jme3/math/Vector3f;Z)Ljava/nio/FloatBuffer;

    move-result-object v9

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p3

    move-object v3, p2

    move/from16 v4, p4

    move/from16 v5, p5

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/LODGeomap;->writeTexCoordArray(Ljava/nio/FloatBuffer;Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;FI)Ljava/nio/FloatBuffer;

    move-result-object v10

    .line 4
    invoke-virtual {p0, v6, p1}, Lcom/jme3/terrain/geomipmap/LODGeomap;->writeNormalArray(Ljava/nio/FloatBuffer;Lcom/jme3/math/Vector3f;)Ljava/nio/FloatBuffer;

    move-result-object v11

    move/from16 v1, p7

    move/from16 v2, p8

    move/from16 v3, p9

    move/from16 v4, p10

    move/from16 v5, p11

    move/from16 v6, p5

    .line 5
    invoke-virtual/range {v0 .. v6}, Lcom/jme3/terrain/geomipmap/LODGeomap;->writeIndexArrayLodDiff(IZZZZI)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    const/4 v2, 0x3

    mul-int/2addr v1, v2

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/2addr v3, v2

    invoke-static {v3}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v3

    move-object p2, p0

    move-object p3, v11

    move-object/from16 p4, v3

    move-object/from16 p5, v1

    move-object/from16 p6, v10

    move-object/from16 p7, p1

    .line 8
    invoke-virtual/range {p2 .. p7}, Lcom/jme3/terrain/geomipmap/LODGeomap;->writeTangentArray(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/jme3/math/Vector3f;)[Ljava/nio/FloatBuffer;

    .line 9
    new-instance v4, Lcom/jme3/scene/Mesh;

    invoke-direct {v4}, Lcom/jme3/scene/Mesh;-><init>()V

    .line 10
    sget-object v5, Lcom/jme3/scene/Mesh$Mode;->TriangleStrip:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v4, v5}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    .line 11
    sget-object v5, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v4, v5, v2, v9}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    .line 12
    sget-object v5, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v4, v5, v2, v11}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    .line 13
    sget-object v5, Lcom/jme3/scene/VertexBuffer$Type;->Tangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v4, v5, v2, v3}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    .line 14
    sget-object v3, Lcom/jme3/scene/VertexBuffer$Type;->Binormal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v4, v3, v2, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    .line 15
    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v3, 0x2

    invoke-virtual {v4, v1, v3, v10}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    .line 16
    sget-object v1, Lcom/jme3/terrain/geomipmap/LODGeomap$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    invoke-virtual {v0}, Lcom/jme3/scene/mesh/IndexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v1, v1, v5

    const/4 v5, 0x1

    if-eq v1, v5, :cond_2

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0}, Lcom/jme3/scene/mesh/IndexBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v1, v2, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/ByteBuffer;)V

    goto :goto_0

    .line 18
    :cond_1
    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0}, Lcom/jme3/scene/mesh/IndexBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ShortBuffer;

    invoke-virtual {v4, v1, v2, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/ShortBuffer;)V

    goto :goto_0

    .line 19
    :cond_2
    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0}, Lcom/jme3/scene/mesh/IndexBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/IntBuffer;

    invoke-virtual {v4, v1, v2, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/IntBuffer;)V

    .line 20
    :goto_0
    invoke-virtual {v4}, Lcom/jme3/scene/Mesh;->setStatic()V

    .line 21
    invoke-virtual {v4}, Lcom/jme3/scene/Mesh;->updateBound()V

    return-object v4
.end method

.method public findClosestHeightIndex(II)I
    .locals 3

    const/4 v0, -0x1

    if-ltz p1, :cond_2

    iget v1, p0, Lcom/jme3/terrain/GeoMap;->width:I

    add-int/lit8 v2, v1, -0x1

    if-lt p1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p2, :cond_2

    add-int/lit8 v2, v1, -0x1

    if-lt p2, v2, :cond_1

    goto :goto_0

    :cond_1
    mul-int/2addr p2, v1

    add-int/2addr p2, p1

    return p2

    :cond_2
    :goto_0
    return v0
.end method

.method public getGridTrianglesAtPoint(FF)[Lcom/jme3/math/Triangle;
    .locals 12

    float-to-int p1, p1

    float-to-int p2, p2

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/jme3/terrain/geomipmap/LODGeomap;->findClosestHeightIndex(II)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 9
    :cond_0
    new-instance v1, Lcom/jme3/math/Triangle;

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v4, Lcom/jme3/math/Vector3f;

    invoke-direct {v4}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Lcom/jme3/math/Triangle;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    .line 10
    new-instance v2, Lcom/jme3/math/Triangle;

    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v4, Lcom/jme3/math/Vector3f;

    invoke-direct {v4}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v5, Lcom/jme3/math/Vector3f;

    invoke-direct {v5}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-direct {v2, v3, v4, v5}, Lcom/jme3/math/Triangle;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    .line 11
    iget-object v3, p0, Lcom/jme3/terrain/GeoMap;->hdata:[F

    aget v4, v3, v0

    add-int/lit8 v5, v0, 0x1

    .line 12
    aget v5, v3, v5

    .line 13
    iget v6, p0, Lcom/jme3/terrain/GeoMap;->width:I

    add-int v7, v0, v6

    aget v7, v3, v7

    add-int/2addr v0, v6

    const/4 v8, 0x1

    add-int/2addr v0, v8

    .line 14
    aget v0, v3, v0

    const/4 v3, 0x0

    const/4 v9, 0x2

    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    add-int/lit8 v10, v6, -0x2

    if-ne p1, v10, :cond_3

    sub-int/2addr v6, v9

    if-ne p2, v6, :cond_3

    .line 15
    :cond_2
    invoke-virtual {v1, v3}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v6

    int-to-float v10, p1

    iput v10, v6, Lcom/jme3/math/Vector3f;->x:F

    .line 16
    invoke-virtual {v1, v3}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v6

    iput v4, v6, Lcom/jme3/math/Vector3f;->y:F

    .line 17
    invoke-virtual {v1, v3}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v6

    int-to-float v11, p2

    iput v11, v6, Lcom/jme3/math/Vector3f;->z:F

    .line 18
    invoke-virtual {v1, v8}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v6

    iput v10, v6, Lcom/jme3/math/Vector3f;->x:F

    .line 19
    invoke-virtual {v1, v8}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v6

    iput v7, v6, Lcom/jme3/math/Vector3f;->y:F

    .line 20
    invoke-virtual {v1, v8}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v6

    add-int/2addr p2, v8

    int-to-float p2, p2

    iput p2, v6, Lcom/jme3/math/Vector3f;->z:F

    .line 21
    invoke-virtual {v1, v9}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v6

    add-int/2addr p1, v8

    int-to-float p1, p1

    iput p1, v6, Lcom/jme3/math/Vector3f;->x:F

    .line 22
    invoke-virtual {v1, v9}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v6

    iput v0, v6, Lcom/jme3/math/Vector3f;->y:F

    .line 23
    invoke-virtual {v1, v9}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v6

    iput p2, v6, Lcom/jme3/math/Vector3f;->z:F

    .line 24
    invoke-virtual {v2, v3}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v6

    iput v10, v6, Lcom/jme3/math/Vector3f;->x:F

    .line 25
    invoke-virtual {v2, v3}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v6

    iput v4, v6, Lcom/jme3/math/Vector3f;->y:F

    .line 26
    invoke-virtual {v2, v3}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v3

    iput v11, v3, Lcom/jme3/math/Vector3f;->z:F

    .line 27
    invoke-virtual {v2, v8}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v3

    iput p1, v3, Lcom/jme3/math/Vector3f;->x:F

    .line 28
    invoke-virtual {v2, v8}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v3

    iput v0, v3, Lcom/jme3/math/Vector3f;->y:F

    .line 29
    invoke-virtual {v2, v8}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iput p2, v0, Lcom/jme3/math/Vector3f;->z:F

    .line 30
    invoke-virtual {v2, v9}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object p2

    iput p1, p2, Lcom/jme3/math/Vector3f;->x:F

    .line 31
    invoke-virtual {v2, v9}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object p1

    iput v5, p1, Lcom/jme3/math/Vector3f;->y:F

    .line 32
    invoke-virtual {v2, v9}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object p1

    iput v11, p1, Lcom/jme3/math/Vector3f;->z:F

    goto :goto_0

    .line 33
    :cond_3
    invoke-virtual {v1, v3}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v6

    int-to-float v10, p1

    iput v10, v6, Lcom/jme3/math/Vector3f;->x:F

    .line 34
    invoke-virtual {v1, v3}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v6

    iput v4, v6, Lcom/jme3/math/Vector3f;->y:F

    .line 35
    invoke-virtual {v1, v3}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v4

    int-to-float v6, p2

    iput v6, v4, Lcom/jme3/math/Vector3f;->z:F

    .line 36
    invoke-virtual {v1, v8}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v4

    iput v10, v4, Lcom/jme3/math/Vector3f;->x:F

    .line 37
    invoke-virtual {v1, v8}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v4

    iput v7, v4, Lcom/jme3/math/Vector3f;->y:F

    .line 38
    invoke-virtual {v1, v8}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v4

    add-int/2addr p2, v8

    int-to-float p2, p2

    iput p2, v4, Lcom/jme3/math/Vector3f;->z:F

    .line 39
    invoke-virtual {v1, v9}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v4

    add-int/2addr p1, v8

    int-to-float p1, p1

    iput p1, v4, Lcom/jme3/math/Vector3f;->x:F

    .line 40
    invoke-virtual {v1, v9}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v4

    iput v5, v4, Lcom/jme3/math/Vector3f;->y:F

    .line 41
    invoke-virtual {v1, v9}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v4

    iput v6, v4, Lcom/jme3/math/Vector3f;->z:F

    .line 42
    invoke-virtual {v2, v3}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v4

    iput p1, v4, Lcom/jme3/math/Vector3f;->x:F

    .line 43
    invoke-virtual {v2, v3}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v4

    iput v5, v4, Lcom/jme3/math/Vector3f;->y:F

    .line 44
    invoke-virtual {v2, v3}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v3

    iput v6, v3, Lcom/jme3/math/Vector3f;->z:F

    .line 45
    invoke-virtual {v2, v8}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v3

    iput v10, v3, Lcom/jme3/math/Vector3f;->x:F

    .line 46
    invoke-virtual {v2, v8}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v3

    iput v7, v3, Lcom/jme3/math/Vector3f;->y:F

    .line 47
    invoke-virtual {v2, v8}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v3

    iput p2, v3, Lcom/jme3/math/Vector3f;->z:F

    .line 48
    invoke-virtual {v2, v9}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v3

    iput p1, v3, Lcom/jme3/math/Vector3f;->x:F

    .line 49
    invoke-virtual {v2, v9}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object p1

    iput v0, p1, Lcom/jme3/math/Vector3f;->y:F

    .line 50
    invoke-virtual {v2, v9}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object p1

    iput p2, p1, Lcom/jme3/math/Vector3f;->z:F

    .line 51
    :goto_0
    filled-new-array {v1, v2}, [Lcom/jme3/math/Triangle;

    move-result-object p1

    return-object p1
.end method

.method public getGridTrianglesAtPoint(FFLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)[Lcom/jme3/math/Triangle;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/jme3/terrain/geomipmap/LODGeomap;->getGridTrianglesAtPoint(FF)[Lcom/jme3/math/Triangle;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 2
    aget-object v0, p1, p2

    invoke-virtual {v0}, Lcom/jme3/math/Triangle;->get1()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/jme3/math/Vector3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 3
    aget-object v0, p1, p2

    invoke-virtual {v0}, Lcom/jme3/math/Triangle;->get2()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/jme3/math/Vector3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 4
    aget-object p2, p1, p2

    invoke-virtual {p2}, Lcom/jme3/math/Triangle;->get3()Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/jme3/math/Vector3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    const/4 p2, 0x1

    .line 5
    aget-object v0, p1, p2

    invoke-virtual {v0}, Lcom/jme3/math/Triangle;->get1()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/jme3/math/Vector3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 6
    aget-object v0, p1, p2

    invoke-virtual {v0}, Lcom/jme3/math/Triangle;->get2()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/jme3/math/Vector3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 7
    aget-object p2, p1, p2

    invoke-virtual {p2}, Lcom/jme3/math/Triangle;->get3()Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/jme3/math/Vector3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :cond_0
    return-object p1
.end method

.method public getHeight(IIFF)F
    .locals 6

    invoke-virtual {p0, p1, p2}, Lcom/jme3/terrain/geomipmap/LODGeomap;->findClosestHeightIndex(II)I

    move-result v0

    if-gez v0, :cond_0

    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1

    :cond_0
    iget-object v1, p0, Lcom/jme3/terrain/GeoMap;->hdata:[F

    aget v2, v1, v0

    add-int/lit8 v3, v0, 0x1

    aget v3, v1, v3

    iget v4, p0, Lcom/jme3/terrain/GeoMap;->width:I

    add-int v5, v0, v4

    aget v5, v1, v5

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    aget v0, v1, v0

    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    add-int/lit8 v1, v4, -0x2

    if-ne p1, v1, :cond_4

    add-int/lit8 v4, v4, -0x2

    if-ne p2, v4, :cond_4

    :cond_2
    cmpg-float p1, p3, p4

    if-gez p1, :cond_3

    sub-float/2addr v0, v5

    mul-float/2addr p3, v0

    add-float/2addr p3, v2

    sub-float/2addr v5, v2

    mul-float/2addr p4, v5

    add-float/2addr p3, p4

    return p3

    :cond_3
    sub-float p1, v3, v2

    mul-float/2addr p3, p1

    add-float/2addr v2, p3

    sub-float/2addr v0, v3

    mul-float/2addr p4, v0

    add-float/2addr v2, p4

    return v2

    :cond_4
    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p4

    cmpg-float p2, p3, p1

    if-gez p2, :cond_5

    sub-float/2addr v3, v2

    mul-float/2addr p3, v3

    add-float/2addr p3, v5

    sub-float/2addr v2, v5

    mul-float/2addr p1, v2

    add-float/2addr p3, p1

    return p3

    :cond_5
    sub-float p2, v0, v5

    mul-float/2addr p3, p2

    add-float/2addr v5, p3

    sub-float/2addr v3, v0

    mul-float/2addr p1, v3

    add-float/2addr v5, p1

    return v5
.end method

.method public getTriangleAtPoint(FF)Lcom/jme3/math/Triangle;
    .locals 7

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/jme3/terrain/geomipmap/LODGeomap;->getGridTrianglesAtPoint(FF)[Lcom/jme3/math/Triangle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 6
    :cond_0
    new-instance v2, Lcom/jme3/math/Vector2f;

    invoke-direct {v2, p1, p2}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    .line 7
    new-instance p1, Lcom/jme3/math/Vector2f;

    const/4 p2, 0x0

    aget-object v3, v0, p2

    invoke-virtual {v3}, Lcom/jme3/math/Triangle;->get1()Lcom/jme3/math/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/jme3/math/Vector3f;->x:F

    aget-object v4, v0, p2

    invoke-virtual {v4}, Lcom/jme3/math/Triangle;->get1()Lcom/jme3/math/Vector3f;

    move-result-object v4

    iget v4, v4, Lcom/jme3/math/Vector3f;->z:F

    invoke-direct {p1, v3, v4}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    .line 8
    new-instance v3, Lcom/jme3/math/Vector2f;

    aget-object v4, v0, p2

    invoke-virtual {v4}, Lcom/jme3/math/Triangle;->get2()Lcom/jme3/math/Vector3f;

    move-result-object v4

    iget v4, v4, Lcom/jme3/math/Vector3f;->x:F

    aget-object v5, v0, p2

    invoke-virtual {v5}, Lcom/jme3/math/Triangle;->get2()Lcom/jme3/math/Vector3f;

    move-result-object v5

    iget v5, v5, Lcom/jme3/math/Vector3f;->z:F

    invoke-direct {v3, v4, v5}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    .line 9
    new-instance v4, Lcom/jme3/math/Vector2f;

    aget-object v5, v0, p2

    invoke-virtual {v5}, Lcom/jme3/math/Triangle;->get3()Lcom/jme3/math/Vector3f;

    move-result-object v5

    iget v5, v5, Lcom/jme3/math/Vector3f;->x:F

    aget-object v6, v0, p2

    invoke-virtual {v6}, Lcom/jme3/math/Triangle;->get3()Lcom/jme3/math/Vector3f;

    move-result-object v6

    iget v6, v6, Lcom/jme3/math/Vector3f;->z:F

    invoke-direct {v4, v5, v6}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    .line 10
    invoke-static {p1, v3, v4, v2}, Lcom/jme3/math/FastMath;->pointInsideTriangle(Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 11
    aget-object p1, v0, p2

    return-object p1

    :cond_1
    const/4 p2, 0x1

    .line 12
    aget-object v5, v0, p2

    invoke-virtual {v5}, Lcom/jme3/math/Triangle;->get1()Lcom/jme3/math/Vector3f;

    move-result-object v5

    iget v5, v5, Lcom/jme3/math/Vector3f;->x:F

    aget-object v6, v0, p2

    invoke-virtual {v6}, Lcom/jme3/math/Triangle;->get1()Lcom/jme3/math/Vector3f;

    move-result-object v6

    iget v6, v6, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p1, v5, v6}, Lcom/jme3/math/Vector2f;->set(FF)Lcom/jme3/math/Vector2f;

    .line 13
    aget-object v5, v0, p2

    invoke-virtual {v5}, Lcom/jme3/math/Triangle;->get2()Lcom/jme3/math/Vector3f;

    move-result-object v5

    iget v5, v5, Lcom/jme3/math/Vector3f;->x:F

    aget-object v6, v0, p2

    invoke-virtual {v6}, Lcom/jme3/math/Triangle;->get2()Lcom/jme3/math/Vector3f;

    move-result-object v6

    iget v6, v6, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p1, v5, v6}, Lcom/jme3/math/Vector2f;->set(FF)Lcom/jme3/math/Vector2f;

    .line 14
    aget-object v5, v0, p2

    invoke-virtual {v5}, Lcom/jme3/math/Triangle;->get3()Lcom/jme3/math/Vector3f;

    move-result-object v5

    iget v5, v5, Lcom/jme3/math/Vector3f;->x:F

    aget-object v6, v0, p2

    invoke-virtual {v6}, Lcom/jme3/math/Triangle;->get3()Lcom/jme3/math/Vector3f;

    move-result-object v6

    iget v6, v6, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p1, v5, v6}, Lcom/jme3/math/Vector2f;->set(FF)Lcom/jme3/math/Vector2f;

    .line 15
    invoke-static {p1, v3, v4, v2}, Lcom/jme3/math/FastMath;->pointInsideTriangle(Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 16
    aget-object p1, v0, p2

    return-object p1

    :cond_2
    return-object v1
.end method

.method public getTriangleAtPoint(FFLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Triangle;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/jme3/terrain/geomipmap/LODGeomap;->getTriangleAtPoint(FF)Lcom/jme3/math/Triangle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/jme3/math/Triangle;->get1()Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/jme3/math/Vector3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 3
    invoke-virtual {p1}, Lcom/jme3/math/Triangle;->get2()Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/jme3/math/Vector3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 4
    invoke-virtual {p1}, Lcom/jme3/math/Triangle;->get3()Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/jme3/math/Vector3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :cond_0
    return-object p1
.end method

.method public getUV(IILcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;FI)Lcom/jme3/math/Vector2f;
    .locals 2

    iget v0, p4, Lcom/jme3/math/Vector2f;->x:F

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr p5, v1

    add-float/2addr v0, p5

    iget p4, p4, Lcom/jme3/math/Vector2f;->y:F

    neg-float p4, p4

    add-float/2addr p4, p5

    int-to-float p1, p1

    add-float/2addr p1, v0

    add-int/lit8 p6, p6, -0x1

    int-to-float p5, p6

    div-float/2addr p1, p5

    int-to-float p2, p2

    add-float/2addr p2, p4

    div-float/2addr p2, p5

    invoke-virtual {p3, p1, p2}, Lcom/jme3/math/Vector2f;->set(FF)Lcom/jme3/math/Vector2f;

    return-object p3
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/terrain/GeoMap;->read(Lcom/jme3/export/JmeImporter;)V

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/terrain/GeoMap;->write(Lcom/jme3/export/JmeExporter;)V

    return-void
.end method

.method public writeIndexArrayLodDiff(IZZZZI)Lcom/jme3/scene/mesh/IndexBuffer;
    .locals 6

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p6

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getHeight()I

    move-result v0

    mul-int/2addr p6, v0

    invoke-direct {p0, p1}, Lcom/jme3/terrain/geomipmap/LODGeomap;->calculateNumIndexesLodDiff(I)I

    move-result v0

    invoke-static {p6, v0}, Lcom/jme3/scene/mesh/IndexBuffer;->createIndexBuffer(II)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object p6

    new-instance v1, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;

    invoke-direct {v1, p0, p6}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;-><init>(Lcom/jme3/terrain/geomipmap/LODGeomap;Lcom/jme3/scene/mesh/IndexBuffer;)V

    move p6, p1

    :goto_0
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v2

    mul-int/lit8 v3, p1, 0x2

    sub-int/2addr v2, v3

    if-ge p6, v2, :cond_2

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v2

    mul-int/2addr v2, p6

    add-int v3, p6, p1

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v4

    mul-int/2addr v3, v4

    move v4, p1

    :goto_1
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v5

    sub-int/2addr v5, p1

    if-ge v4, v5, :cond_0

    add-int v5, v2, v4

    invoke-virtual {v1, v5}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    add-int v5, v3, v4

    invoke-virtual {v1, v5}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    add-int/2addr v4, p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v2

    mul-int/lit8 v4, p1, 0x3

    sub-int/2addr v2, v4

    if-ge p6, v2, :cond_1

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v2

    add-int/2addr v2, v3

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    add-int/2addr v3, p1

    invoke-virtual {v1, v3}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    :cond_1
    add-int/2addr p6, p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p6

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v2

    sub-int/2addr v2, p1

    mul-int/2addr p6, v2

    add-int/lit8 p6, p6, -0x1

    sub-int/2addr p6, p1

    invoke-virtual {v1, p6}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p6

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v2

    mul-int/2addr p6, v2

    add-int/lit8 p6, p6, -0x1

    invoke-virtual {v1, p6}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p6

    sub-int/2addr p6, p1

    :goto_2
    add-int/lit8 v2, p1, 0x1

    if-lt p6, v2, :cond_5

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v4

    mul-int/2addr v4, p6

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, p1

    invoke-virtual {v1, v4}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    sub-int v4, p6, p1

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v5

    mul-int/2addr v5, v4

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    if-le p6, v2, :cond_3

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v2

    mul-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, p1

    invoke-virtual {v1, v2}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v2

    mul-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    :cond_3
    sub-int/2addr p6, v3

    goto :goto_2

    :cond_4
    invoke-virtual {v1, p6}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p6

    :goto_3
    sub-int/2addr p6, p1

    if-le p6, p1, :cond_5

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v2

    mul-int/2addr v2, p6

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    sub-int/2addr v2, p1

    invoke-virtual {v1, v2}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p6

    add-int/lit8 p6, p6, -0x1

    invoke-virtual {v1, p6}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    const/4 p6, 0x0

    if-eqz p3, :cond_8

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v1, p2}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    :cond_6
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_4
    if-lt p2, p1, :cond_b

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v2

    mul-int/2addr v2, p1

    add-int/2addr v2, p2

    sub-int/2addr v2, p1

    invoke-virtual {v1, v2}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    sub-int v2, p2, v3

    invoke-virtual {v1, v2}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    if-le p2, v3, :cond_7

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v4

    mul-int/2addr v4, p1

    add-int/2addr v4, p2

    sub-int/2addr v4, v3

    invoke-virtual {v1, v4}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    invoke-virtual {v1, v2}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    :cond_7
    move p2, v2

    goto :goto_4

    :cond_8
    if-eqz p2, :cond_9

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v1, p2}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    :cond_9
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_5
    sub-int/2addr p2, p1

    if-lez p2, :cond_a

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v2

    mul-int/2addr v2, p1

    add-int/2addr v2, p2

    invoke-virtual {v1, v2}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    invoke-virtual {v1, p2}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    goto :goto_5

    :cond_a
    invoke-virtual {v1, p6}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    :cond_b
    invoke-virtual {v1, p6}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    if-eqz p4, :cond_e

    if-eqz p3, :cond_c

    invoke-virtual {v1, p6}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    :cond_c
    move p2, p6

    :goto_6
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p3

    sub-int/2addr p3, p1

    if-ge p2, p3, :cond_10

    add-int p3, p2, p1

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v2

    mul-int/2addr p3, v2

    add-int/2addr p3, p1

    invoke-virtual {v1, p3}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    add-int p3, p2, v3

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v2

    mul-int/2addr v2, p3

    invoke-virtual {v1, v2}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v3

    if-ge p2, v2, :cond_d

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p2

    mul-int/2addr p2, p3

    add-int/2addr p2, p1

    invoke-virtual {v1, p2}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p2

    mul-int/2addr p2, p3

    invoke-virtual {v1, p2}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    :cond_d
    move p2, p3

    goto :goto_6

    :cond_e
    if-nez p3, :cond_f

    invoke-virtual {v1, p6}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    :cond_f
    move p2, p1

    :goto_7
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p3

    sub-int/2addr p3, p1

    if-ge p2, p3, :cond_10

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p3

    mul-int/2addr p3, p2

    invoke-virtual {v1, p3}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p3

    mul-int/2addr p3, p2

    add-int/2addr p3, p1

    invoke-virtual {v1, p3}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    add-int/2addr p2, p1

    goto :goto_7

    :cond_10
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    mul-int/2addr p2, p3

    invoke-virtual {v1, p2}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    if-eqz p5, :cond_13

    if-eqz p4, :cond_11

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    mul-int/2addr p2, p3

    invoke-virtual {v1, p2}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    :cond_11
    :goto_8
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p2

    sub-int/2addr p2, p1

    if-ge p6, p2, :cond_15

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    sub-int/2addr p3, p1

    mul-int/2addr p2, p3

    add-int/2addr p2, p6

    add-int/2addr p2, p1

    invoke-virtual {v1, p2}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    mul-int/2addr p2, p3

    add-int/2addr p2, p6

    add-int/2addr p2, v3

    invoke-virtual {v1, p2}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    sub-int/2addr p2, v3

    if-ge p6, p2, :cond_12

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    sub-int/2addr p3, p1

    mul-int/2addr p2, p3

    add-int/2addr p2, p6

    add-int/2addr p2, v3

    invoke-virtual {v1, p2}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    mul-int/2addr p2, p3

    add-int/2addr p2, p6

    add-int/2addr p2, v3

    invoke-virtual {v1, p2}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    :cond_12
    add-int/2addr p6, v3

    goto :goto_8

    :cond_13
    if-eqz p4, :cond_14

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    mul-int/2addr p2, p3

    invoke-virtual {v1, p2}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    :cond_14
    move p2, p1

    :goto_9
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p3

    sub-int/2addr p3, p1

    if-ge p2, p3, :cond_15

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    sub-int/2addr p4, p1

    mul-int/2addr p3, p4

    add-int/2addr p3, p2

    invoke-virtual {v1, p3}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    mul-int/2addr p3, p4

    add-int/2addr p3, p2

    invoke-virtual {v1, p3}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    add-int/2addr p2, p1

    goto :goto_9

    :cond_15
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p2

    mul-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    invoke-virtual {v1}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->getCount()I

    move-result p1

    :goto_a
    if-ge p1, v0, :cond_16

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p3

    mul-int/2addr p2, p3

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v1, p2}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_16
    invoke-static {v1}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->access$000(Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object p1

    return-object p1
.end method

.method public writeIndexArrayLodVariable(IIIIII)Lcom/jme3/scene/mesh/IndexBuffer;
    .locals 8

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p6

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getHeight()I

    move-result v0

    mul-int/2addr p6, v0

    invoke-direct {p0, p1}, Lcom/jme3/terrain/geomipmap/LODGeomap;->calculateNumIndexesLodDiff(I)I

    move-result v0

    invoke-static {p6, v0}, Lcom/jme3/scene/mesh/IndexBuffer;->createIndexBuffer(II)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object p6

    new-instance v1, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;

    invoke-direct {v1, p0, p6}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;-><init>(Lcom/jme3/terrain/geomipmap/LODGeomap;Lcom/jme3/scene/mesh/IndexBuffer;)V

    move p6, p1

    :goto_0
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v2

    mul-int/lit8 v3, p1, 0x2

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    if-ge p6, v2, :cond_2

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v2

    mul-int/2addr v2, p6

    add-int v4, p6, p1

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v5

    mul-int/2addr v4, v5

    move v5, p1

    :goto_1
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v6

    sub-int/2addr v6, p1

    if-ge v5, v6, :cond_0

    add-int v6, v2, v5

    invoke-virtual {v1, v6}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    add-int v6, v4, v5

    invoke-virtual {v1, v6}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    add-int/2addr v5, p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v2

    mul-int/lit8 v5, p1, 0x3

    sub-int/2addr v2, v5

    if-ge p6, v2, :cond_1

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v2

    add-int/2addr v2, v4

    sub-int/2addr v2, p1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    add-int/2addr v4, p1

    invoke-virtual {v1, v4}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    :cond_1
    add-int/2addr p6, p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p6

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v2

    sub-int/2addr v2, p1

    mul-int/2addr p6, v2

    sub-int/2addr p6, v3

    sub-int/2addr p6, p1

    invoke-virtual {v1, p6}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p6

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v2

    mul-int/2addr p6, v2

    sub-int/2addr p6, v3

    invoke-virtual {v1, p6}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    if-le p2, p1, :cond_7

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p6

    sub-int/2addr p6, v3

    div-int/2addr p6, p2

    div-int v2, p2, p1

    :goto_2
    if-lez p6, :cond_6

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v4

    mul-int v5, p6, p2

    add-int/2addr v5, v3

    mul-int/2addr v4, v5

    sub-int/2addr v4, v3

    move v5, v3

    :goto_3
    if-gt v5, v2, :cond_5

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v6

    mul-int v7, v5, p1

    mul-int/2addr v6, v7

    sub-int v6, v4, v6

    sub-int/2addr v6, p1

    if-ne v5, v2, :cond_3

    if-ne p6, v3, :cond_3

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {v1, v6}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    goto :goto_4

    :cond_3
    if-ne v5, v2, :cond_4

    invoke-virtual {v1, v6}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    add-int/2addr v6, p1

    invoke-virtual {v1, v6}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {v1, v6}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    invoke-virtual {v1, v4}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 p6, p6, -0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p6

    add-int/lit8 v2, p1, 0x1

    mul-int/2addr p6, v2

    sub-int/2addr p6, p1

    sub-int/2addr p6, v3

    invoke-virtual {v1, p6}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p6

    sub-int/2addr p6, v3

    invoke-virtual {v1, p6}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    goto :goto_6

    :cond_7
    invoke-virtual {v1, p6}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p6

    :goto_5
    sub-int/2addr p6, p1

    if-le p6, p1, :cond_8

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v2

    mul-int/2addr v2, p6

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    sub-int/2addr v2, p1

    invoke-virtual {v1, v2}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    goto :goto_5

    :cond_8
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p6

    sub-int/2addr p6, v3

    invoke-virtual {v1, p6}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    :goto_6
    const/4 p6, 0x0

    if-le p3, p1, :cond_d

    if-le p2, p1, :cond_9

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p2

    sub-int/2addr p2, v3

    invoke-virtual {v1, p2}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p2

    mul-int/2addr p2, p1

    sub-int/2addr p2, v3

    invoke-virtual {v1, p2}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p2

    sub-int/2addr p2, v3

    invoke-virtual {v1, p2}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    :cond_9
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p2

    sub-int/2addr p2, v3

    div-int/2addr p2, p3

    div-int v2, p3, p1

    :goto_7
    if-lez p2, :cond_10

    mul-int v4, p2, p3

    move v5, v3

    :goto_8
    if-gt v5, v2, :cond_c

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v6

    mul-int/2addr v6, p1

    add-int/2addr v6, v4

    mul-int v7, v5, p1

    sub-int/2addr v6, v7

    if-ne v5, v2, :cond_a

    if-ne p2, v3, :cond_a

    invoke-virtual {v1, p6}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    goto :goto_9

    :cond_a
    if-ne v5, v2, :cond_b

    invoke-virtual {v1, v6}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    sub-int v6, v4, p3

    invoke-virtual {v1, v6}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    goto :goto_9

    :cond_b
    invoke-virtual {v1, v6}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    invoke-virtual {v1, v4}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_c
    add-int/lit8 p2, p2, -0x1

    goto :goto_7

    :cond_d
    if-le p2, p1, :cond_e

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p2

    sub-int/2addr p2, v3

    invoke-virtual {v1, p2}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    :cond_e
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p2

    sub-int/2addr p2, v3

    :goto_a
    sub-int/2addr p2, p1

    if-lez p2, :cond_f

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p3

    mul-int/2addr p3, p1

    add-int/2addr p3, p2

    invoke-virtual {v1, p3}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    invoke-virtual {v1, p2}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    goto :goto_a

    :cond_f
    invoke-virtual {v1, p6}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    :cond_10
    invoke-virtual {v1, p6}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    if-le p4, p1, :cond_14

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p2

    sub-int/2addr p2, v3

    div-int/2addr p2, p4

    div-int p3, p4, p1

    move v2, p6

    :goto_b
    if-ge v2, p2, :cond_16

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v4

    mul-int v5, v2, p4

    mul-int/2addr v4, v5

    move v5, v3

    :goto_c
    if-gt v5, p3, :cond_13

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v6

    mul-int v7, v5, p1

    mul-int/2addr v6, v7

    add-int/2addr v6, v4

    add-int/2addr v6, p1

    if-ne v5, p3, :cond_11

    add-int/lit8 v7, p2, -0x1

    if-ne v2, v7, :cond_11

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v7

    mul-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v1, v6}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    goto :goto_d

    :cond_11
    if-ne v5, p3, :cond_12

    invoke-virtual {v1, v6}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    sub-int/2addr v6, p1

    invoke-virtual {v1, v6}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    goto :goto_d

    :cond_12
    invoke-virtual {v1, v6}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    invoke-virtual {v1, v4}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    :goto_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_14
    invoke-virtual {v1, p6}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p2

    mul-int/2addr p2, p1

    add-int/2addr p2, p1

    invoke-virtual {v1, p2}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    invoke-virtual {v1, p6}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    move p2, p1

    :goto_e
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p3

    sub-int/2addr p3, p1

    if-ge p2, p3, :cond_15

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p3

    mul-int/2addr p3, p2

    invoke-virtual {v1, p3}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p3

    mul-int/2addr p3, p2

    add-int/2addr p3, p1

    invoke-virtual {v1, p3}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    add-int/2addr p2, p1

    goto :goto_e

    :cond_15
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p3

    sub-int/2addr p3, v3

    mul-int/2addr p2, p3

    invoke-virtual {v1, p2}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    :cond_16
    if-le p5, p1, :cond_1b

    if-le p4, p1, :cond_17

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p3

    sub-int/2addr p3, v3

    mul-int/2addr p2, p3

    invoke-virtual {v1, p2}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p3

    sub-int/2addr p3, p1

    mul-int/2addr p2, p3

    invoke-virtual {v1, p2}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p3

    sub-int/2addr p3, v3

    mul-int/2addr p2, p3

    invoke-virtual {v1, p2}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    :cond_17
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p2

    sub-int/2addr p2, v3

    div-int/2addr p2, p5

    div-int p3, p5, p1

    :goto_f
    if-ge p6, p2, :cond_1d

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v2

    mul-int/2addr p4, v2

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v2

    sub-int/2addr p4, v2

    mul-int v2, p6, p5

    add-int/2addr p4, v2

    move v2, v3

    :goto_10
    if-gt v2, p3, :cond_1a

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v4

    mul-int/2addr v4, p1

    sub-int v4, p4, v4

    mul-int v5, v2, p1

    add-int/2addr v4, v5

    if-ne v2, p3, :cond_18

    add-int/lit8 v5, p2, -0x1

    if-ne p6, v5, :cond_18

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v5

    mul-int/2addr v4, v5

    sub-int/2addr v4, v3

    invoke-virtual {v1, v4}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    goto :goto_11

    :cond_18
    if-ne v2, p3, :cond_19

    invoke-virtual {v1, v4}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    add-int v4, p4, p5

    invoke-virtual {v1, v4}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    goto :goto_11

    :cond_19
    invoke-virtual {v1, v4}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    invoke-virtual {v1, p4}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    :goto_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1a
    add-int/lit8 p6, p6, 0x1

    goto :goto_f

    :cond_1b
    if-le p4, p1, :cond_1c

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p3

    sub-int/2addr p3, v3

    mul-int/2addr p2, p3

    invoke-virtual {v1, p2}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p3

    mul-int/2addr p2, p3

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p3

    mul-int/2addr p3, p1

    sub-int/2addr p2, p3

    add-int/2addr p2, p1

    invoke-virtual {v1, p2}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p3

    sub-int/2addr p3, v3

    mul-int/2addr p2, p3

    invoke-virtual {v1, p2}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    :cond_1c
    move p2, p1

    :goto_12
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p3

    sub-int/2addr p3, p1

    if-ge p2, p3, :cond_1d

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p4

    sub-int/2addr p4, v3

    sub-int/2addr p4, p1

    mul-int/2addr p3, p4

    add-int/2addr p3, p2

    invoke-virtual {v1, p3}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p4

    sub-int/2addr p4, v3

    mul-int/2addr p3, p4

    add-int/2addr p3, p2

    invoke-virtual {v1, p3}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    add-int/2addr p2, p1

    goto :goto_12

    :cond_1d
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p2

    mul-int/2addr p1, p2

    sub-int/2addr p1, v3

    invoke-virtual {v1, p1}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    invoke-virtual {v1}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->getCount()I

    move-result p1

    :goto_13
    if-ge p1, v0, :cond_1e

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p3

    mul-int/2addr p2, p3

    sub-int/2addr p2, v3

    invoke-virtual {v1, p2}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->put(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_13

    :cond_1e
    invoke-static {v1}, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->access$000(Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object p1

    return-object p1
.end method

.method public writeNormalArray(Ljava/nio/FloatBuffer;Lcom/jme3/math/Vector3f;)Ljava/nio/FloatBuffer;
    .locals 18

    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/terrain/GeoMap;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/terrain/GeoMap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    if-lt v0, v1, :cond_0

    move-object/from16 v7, p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/terrain/GeoMap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    move-object v7, v0

    :goto_0
    invoke-virtual {v7}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v8

    iget-object v9, v8, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget-object v10, v8, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    iget-object v11, v8, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    iget-object v12, v8, Lcom/jme3/util/TempVars;->vect4:Lcom/jme3/math/Vector3f;

    iget-object v13, v8, Lcom/jme3/util/TempVars;->vect5:Lcom/jme3/math/Vector3f;

    iget-object v14, v8, Lcom/jme3/util/TempVars;->vect6:Lcom/jme3/math/Vector3f;

    const/4 v5, 0x0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/terrain/GeoMap;->getHeight()I

    move-result v0

    if-ge v5, v0, :cond_b

    const/4 v4, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v0

    if-ge v4, v0, :cond_a

    invoke-virtual {v6, v4, v5}, Lcom/jme3/terrain/GeoMap;->getValue(II)F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {v9, v1, v0, v1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    iget-object v3, v8, Lcom/jme3/util/TempVars;->vect8:Lcom/jme3/math/Vector3f;

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v5, :cond_4

    if-nez v4, :cond_2

    add-int/lit8 v0, v4, 0x1

    invoke-virtual {v6, v0, v5}, Lcom/jme3/terrain/GeoMap;->getValue(II)F

    move-result v0

    invoke-virtual {v10, v2, v0, v1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v6, v4, v0}, Lcom/jme3/terrain/GeoMap;->getValue(II)F

    move-result v0

    invoke-virtual {v13, v1, v0, v2}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v9

    move-object/from16 p1, v3

    move-object v3, v10

    move v15, v4

    move-object/from16 v4, p2

    move-object/from16 v16, v8

    move v8, v5

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/LODGeomap;->getNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :goto_3
    move-object/from16 v17, v7

    move-object/from16 v7, p1

    move-object/from16 p1, v17

    goto/16 :goto_4

    :cond_2
    move-object/from16 p1, v3

    move v15, v4

    move-object/from16 v16, v8

    move v8, v5

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v15, v3, :cond_3

    add-int/lit8 v4, v15, -0x1

    invoke-virtual {v6, v4, v8}, Lcom/jme3/terrain/GeoMap;->getValue(II)F

    move-result v3

    invoke-virtual {v11, v0, v3, v1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    add-int/lit8 v5, v8, 0x1

    invoke-virtual {v6, v15, v5}, Lcom/jme3/terrain/GeoMap;->getValue(II)F

    move-result v0

    invoke-virtual {v13, v1, v0, v2}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v9

    move-object v3, v13

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/LODGeomap;->getNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v15, -0x1

    invoke-virtual {v6, v4, v8}, Lcom/jme3/terrain/GeoMap;->getValue(II)F

    move-result v3

    invoke-virtual {v11, v0, v3, v1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    add-int/lit8 v4, v15, 0x1

    invoke-virtual {v6, v4, v8}, Lcom/jme3/terrain/GeoMap;->getValue(II)F

    move-result v0

    invoke-virtual {v10, v2, v0, v1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    add-int/lit8 v5, v8, 0x1

    invoke-virtual {v6, v15, v5}, Lcom/jme3/terrain/GeoMap;->getValue(II)F

    move-result v0

    invoke-virtual {v13, v1, v0, v2}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v9

    move-object v3, v13

    move-object/from16 v4, p2

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/LODGeomap;->getNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    move-object/from16 v5, p1

    invoke-virtual {v5, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v3, v10

    move-object/from16 p1, v7

    move-object v7, v5

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/LODGeomap;->getNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto/16 :goto_4

    :cond_4
    move v15, v4

    move-object/from16 p1, v7

    move-object/from16 v16, v8

    move-object v7, v3

    move v8, v5

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/terrain/GeoMap;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v8, v3, :cond_7

    if-nez v15, :cond_5

    add-int/lit8 v5, v8, -0x1

    invoke-virtual {v6, v15, v5}, Lcom/jme3/terrain/GeoMap;->getValue(II)F

    move-result v3

    invoke-virtual {v12, v1, v3, v0}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    add-int/lit8 v4, v15, 0x1

    invoke-virtual {v6, v4, v8}, Lcom/jme3/terrain/GeoMap;->getValue(II)F

    move-result v0

    invoke-virtual {v10, v2, v0, v1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v9

    move-object v3, v12

    move-object/from16 v4, p2

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/LODGeomap;->getNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto/16 :goto_4

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v15, v3, :cond_6

    add-int/lit8 v5, v8, -0x1

    invoke-virtual {v6, v15, v5}, Lcom/jme3/terrain/GeoMap;->getValue(II)F

    move-result v2

    invoke-virtual {v12, v1, v2, v0}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    add-int/lit8 v4, v15, -0x1

    invoke-virtual {v6, v4, v8}, Lcom/jme3/terrain/GeoMap;->getValue(II)F

    move-result v2

    invoke-virtual {v11, v0, v2, v1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v9

    move-object v3, v11

    move-object/from16 v4, p2

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/LODGeomap;->getNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto/16 :goto_4

    :cond_6
    add-int/lit8 v5, v8, -0x1

    invoke-virtual {v6, v15, v5}, Lcom/jme3/terrain/GeoMap;->getValue(II)F

    move-result v3

    invoke-virtual {v12, v1, v3, v0}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    add-int/lit8 v4, v15, -0x1

    invoke-virtual {v6, v4, v8}, Lcom/jme3/terrain/GeoMap;->getValue(II)F

    move-result v3

    invoke-virtual {v11, v0, v3, v1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    add-int/lit8 v4, v15, 0x1

    invoke-virtual {v6, v4, v8}, Lcom/jme3/terrain/GeoMap;->getValue(II)F

    move-result v0

    invoke-virtual {v10, v2, v0, v1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v9

    move-object v3, v11

    move-object/from16 v4, p2

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/LODGeomap;->getNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v3, v12

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/LODGeomap;->getNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto/16 :goto_4

    :cond_7
    if-nez v15, :cond_8

    add-int/lit8 v5, v8, -0x1

    invoke-virtual {v6, v15, v5}, Lcom/jme3/terrain/GeoMap;->getValue(II)F

    move-result v3

    invoke-virtual {v12, v1, v3, v0}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    add-int/lit8 v4, v15, 0x1

    invoke-virtual {v6, v4, v8}, Lcom/jme3/terrain/GeoMap;->getValue(II)F

    move-result v0

    invoke-virtual {v10, v2, v0, v1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    add-int/lit8 v5, v8, 0x1

    invoke-virtual {v6, v15, v5}, Lcom/jme3/terrain/GeoMap;->getValue(II)F

    move-result v0

    invoke-virtual {v13, v1, v0, v2}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v9

    move-object v3, v12

    move-object/from16 v4, p2

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/LODGeomap;->getNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v3, v10

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/LODGeomap;->getNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto/16 :goto_4

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v15, v3, :cond_9

    add-int/lit8 v5, v8, -0x1

    invoke-virtual {v6, v15, v5}, Lcom/jme3/terrain/GeoMap;->getValue(II)F

    move-result v3

    invoke-virtual {v12, v1, v3, v0}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    add-int/lit8 v4, v15, -0x1

    invoke-virtual {v6, v4, v8}, Lcom/jme3/terrain/GeoMap;->getValue(II)F

    move-result v3

    invoke-virtual {v11, v0, v3, v1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    add-int/lit8 v5, v8, 0x1

    invoke-virtual {v6, v15, v5}, Lcom/jme3/terrain/GeoMap;->getValue(II)F

    move-result v0

    invoke-virtual {v13, v1, v0, v2}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v9

    move-object v3, v11

    move-object/from16 v4, p2

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/LODGeomap;->getNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v3, v13

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/LODGeomap;->getNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_4

    :cond_9
    add-int/lit8 v5, v8, -0x1

    invoke-virtual {v6, v15, v5}, Lcom/jme3/terrain/GeoMap;->getValue(II)F

    move-result v3

    invoke-virtual {v12, v1, v3, v0}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    add-int/lit8 v4, v15, -0x1

    invoke-virtual {v6, v4, v8}, Lcom/jme3/terrain/GeoMap;->getValue(II)F

    move-result v3

    invoke-virtual {v11, v0, v3, v1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    add-int/lit8 v4, v15, 0x1

    invoke-virtual {v6, v4, v8}, Lcom/jme3/terrain/GeoMap;->getValue(II)F

    move-result v0

    invoke-virtual {v10, v2, v0, v1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    add-int/lit8 v5, v8, 0x1

    invoke-virtual {v6, v15, v5}, Lcom/jme3/terrain/GeoMap;->getValue(II)F

    move-result v0

    invoke-virtual {v13, v1, v0, v2}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v9

    move-object v3, v11

    move-object/from16 v4, p2

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/LODGeomap;->getNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v3, v13

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/LODGeomap;->getNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v3, v10

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/LODGeomap;->getNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v3, v12

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/LODGeomap;->getNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :goto_4
    invoke-virtual {v7}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v0

    mul-int v5, v8, v0

    add-int/2addr v5, v15

    move-object/from16 v0, p1

    invoke-static {v7, v0, v5}, Lcom/jme3/util/BufferUtils;->setInBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    add-int/lit8 v4, v15, 0x1

    move-object v7, v0

    move v5, v8

    move-object/from16 v8, v16

    goto/16 :goto_2

    :cond_a
    move-object v0, v7

    move-object/from16 v16, v8

    move v8, v5

    add-int/lit8 v5, v8, 0x1

    move-object/from16 v8, v16

    goto/16 :goto_1

    :cond_b
    move-object v0, v7

    move-object/from16 v16, v8

    invoke-virtual/range {v16 .. v16}, Lcom/jme3/util/TempVars;->release()V

    return-object v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The Geomap data is not loaded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeTangentArray(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/jme3/math/Vector3f;)[Ljava/nio/FloatBuffer;
    .locals 7

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->isLoaded()Z

    move-result p4

    if-eqz p4, :cond_6

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result p4

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p5

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getHeight()I

    move-result v0

    mul-int/2addr p5, v0

    mul-int/lit8 p5, p5, 0x3

    if-lt p4, p5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/nio/BufferUnderflowException;

    invoke-direct {p1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw p1

    :cond_1
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getHeight()I

    move-result p4

    mul-int/2addr p2, p4

    mul-int/lit8 p2, p2, 0x3

    invoke-static {p2}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p2

    :goto_0
    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result p4

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p5

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getHeight()I

    move-result v0

    mul-int/2addr p5, v0

    mul-int/lit8 p5, p5, 0x3

    if-lt p4, p5, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/nio/BufferUnderflowException;

    invoke-direct {p1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw p1

    :cond_3
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getHeight()I

    move-result p4

    mul-int/2addr p3, p4

    mul-int/lit8 p3, p3, 0x3

    invoke-static {p3}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p3

    :goto_1
    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    new-instance p4, Lcom/jme3/math/Vector3f;

    invoke-direct {p4}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance p5, Lcom/jme3/math/Vector3f;

    invoke-direct {p5}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_5

    move v3, v1

    :goto_3
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v4

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p1, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v6

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    invoke-virtual {p4, v5, v6, v4}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    new-instance v4, Lcom/jme3/math/Vector3f;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v5, v6}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {p4, v4}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {p5, v4}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    new-instance v4, Lcom/jme3/math/Vector3f;

    invoke-direct {v4, v6, v5, v5}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v4, p4}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {p5}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v5

    mul-int/2addr v5, v2

    add-int/2addr v5, v3

    invoke-static {v4, p2, v5}, Lcom/jme3/util/BufferUtils;->setInBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v5

    mul-int/2addr v5, v2

    add-int/2addr v5, v3

    invoke-static {v4, p3, v5}, Lcom/jme3/util/BufferUtils;->setInBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    filled-new-array {p2, p3}, [Ljava/nio/FloatBuffer;

    move-result-object p1

    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The Geomap data is not loaded."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeTexCoordArray(Ljava/nio/FloatBuffer;Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;FI)Ljava/nio/FloatBuffer;
    .locals 10

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/nio/BufferUnderflowException;

    invoke-direct {p1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw p1

    :cond_1
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getHeight()I

    move-result v0

    mul-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x2

    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p1

    :goto_0
    if-nez p2, :cond_2

    new-instance p2, Lcom/jme3/math/Vector2f;

    invoke-direct {p2}, Lcom/jme3/math/Vector2f;-><init>()V

    :cond_2
    new-instance v7, Lcom/jme3/math/Vector2f;

    invoke-direct {v7}, Lcom/jme3/math/Vector2f;-><init>()V

    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v8, v0

    :goto_1
    if-ltz v8, :cond_4

    const/4 v0, 0x0

    move v9, v0

    :goto_2
    invoke-virtual {p0}, Lcom/jme3/terrain/GeoMap;->getWidth()I

    move-result v0

    if-ge v9, v0, :cond_3

    move-object v0, p0

    move v1, v9

    move v2, v8

    move-object v3, v7

    move-object v4, p2

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/jme3/terrain/geomipmap/LODGeomap;->getUV(IILcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;FI)Lcom/jme3/math/Vector2f;

    iget v0, v7, Lcom/jme3/math/Vector2f;->x:F

    iget v1, p3, Lcom/jme3/math/Vector2f;->x:F

    mul-float/2addr v0, v1

    iget v1, v7, Lcom/jme3/math/Vector2f;->y:F

    iget v2, p3, Lcom/jme3/math/Vector2f;->y:F

    mul-float/2addr v1, v2

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :cond_4
    return-object p1
.end method
