.class public Lcom/ardor3d/scenegraph/shape/MultiFaceBox;
.super Lcom/ardor3d/scenegraph/shape/Box;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Box;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/MultiFaceBox;->remap()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/ardor3d/scenegraph/shape/Box;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/MultiFaceBox;->remap()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ardor3d/math/Vector3;FFF)V
    .locals 9

    float-to-double v3, p3

    float-to-double v5, p4

    float-to-double v7, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 7
    invoke-direct/range {v0 .. v8}, Lcom/ardor3d/scenegraph/shape/Box;-><init>(Ljava/lang/String;Lcom/ardor3d/math/type/ReadOnlyVector3;DDD)V

    .line 8
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/MultiFaceBox;->remap()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/ardor3d/scenegraph/shape/Box;-><init>(Ljava/lang/String;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    .line 6
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/MultiFaceBox;->remap()V

    return-void
.end method

.method private remap()V
    .locals 11

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/FloatBuffer;

    invoke-virtual {v4}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_0

    int-to-float v7, v6

    const/high16 v8, 0x41000000    # 8.0f

    div-float/2addr v7, v8

    add-int/2addr v6, v2

    int-to-float v9, v6

    div-float/2addr v9, v8

    const/16 v8, 0x8

    new-array v8, v8, [F

    aput v1, v8, v5

    aput v7, v8, v2

    const/4 v10, 0x2

    aput v0, v8, v10

    const/4 v10, 0x3

    aput v7, v8, v10

    const/4 v7, 0x4

    aput v0, v8, v7

    const/4 v7, 0x5

    aput v9, v8, v7

    aput v1, v8, v3

    const/4 v7, 0x7

    aput v9, v8, v7

    invoke-virtual {v4, v8}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    goto :goto_0

    :cond_0
    return-void
.end method
