.class public Lcom/jme3/scene/debug/Grid;
.super Lcom/jme3/scene/Mesh;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 11

    .line 2
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    add-int/lit8 v0, p1, -0x2

    add-int/lit8 v1, p2, -0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v1, v0, 0x6

    .line 3
    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x2

    mul-int/2addr v0, v2

    .line 4
    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object v0

    add-int/lit8 v3, p2, -0x1

    int-to-float v3, v3

    mul-float/2addr v3, p3

    add-int/lit8 v4, p1, -0x1

    int-to-float v4, v4

    mul-float/2addr v4, p3

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    const/4 v8, 0x0

    if-ge v6, p1, :cond_0

    int-to-float v9, v6

    mul-float/2addr v9, p3

    .line 5
    invoke-virtual {v1, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 6
    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v8, v7, 0x1

    int-to-short v9, v7

    .line 7
    invoke-virtual {v0, v9}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v7, v7, 0x2

    int-to-short v8, v8

    .line 8
    invoke-virtual {v0, v8}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v5, p2, :cond_1

    int-to-float p1, v5

    mul-float/2addr p1, p3

    .line 9
    invoke-virtual {v1, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 10
    invoke-virtual {v1, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 p1, v7, 0x1

    int-to-short v3, v7

    .line 11
    invoke-virtual {v0, v3}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/2addr v7, v2

    int-to-short p1, p1

    .line 12
    invoke-virtual {v0, p1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 14
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    .line 15
    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    .line 16
    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, p1, v2, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/ShortBuffer;)V

    .line 17
    sget-object p1, Lcom/jme3/scene/Mesh$Mode;->Lines:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    .line 18
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    .line 19
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateCounts()V

    .line 20
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->setStatic()V

    return-void
.end method
