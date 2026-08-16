.class public Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;,
        Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$b;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MeshSerializer"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)[B
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->b(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)[B

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)[B
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "quatS4",
            "ushortIndexData",
            "skinData"
        }
    .end annotation

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->f(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)[B

    move-result-object p0

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->f(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)[B

    move-result-object p1

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->e(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)[B

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    add-int/lit8 v1, v1, 0x10

    if-eqz p1, :cond_1

    array-length v2, p1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    add-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    if-eqz p2, :cond_2

    array-length v0, p2

    :cond_2
    add-int/lit8 v0, v0, 0x8

    add-int/2addr v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const v1, 0x42494e32

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->n(Ljava/nio/ByteBuffer;I[B)V

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->n(Ljava/nio/ByteBuffer;I[B)V

    const/4 p0, 0x1

    invoke-static {v0, p0, p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->n(Ljava/nio/ByteBuffer;I[B)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Z)Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vertex",
            "serializeRenderableData"
        }
    .end annotation

    if-eqz p0, :cond_14

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->a1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->V0()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->l1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->m0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v6

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->F0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object p0

    const/4 v7, 0x1

    const/4 v8, 0x3

    const/4 v9, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v10

    if-lt v10, v8, :cond_0

    move v10, v7

    goto :goto_0

    :cond_0
    move v10, v9

    :goto_0
    iput-boolean v10, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasVertices:Z

    const/4 v10, 0x2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v11

    if-lt v11, v10, :cond_1

    move v11, v7

    goto :goto_1

    :cond_1
    move v11, v9

    :goto_1
    iput-boolean v11, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasUVs:Z

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v11

    if-lt v11, v8, :cond_2

    move v11, v7

    goto :goto_2

    :cond_2
    move v11, v9

    :goto_2
    iput-boolean v11, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasIndices:Z

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v11

    if-lt v11, v8, :cond_3

    move v11, v7

    goto :goto_3

    :cond_3
    move v11, v9

    :goto_3
    iput-boolean v11, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasWeights:Z

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v11

    if-lt v11, v8, :cond_4

    move v11, v7

    goto :goto_4

    :cond_4
    move v11, v9

    :goto_4
    iput-boolean v11, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasJoints:Z

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v11

    if-lt v11, v8, :cond_5

    move v11, v7

    goto :goto_5

    :cond_5
    move v11, v9

    :goto_5
    iput-boolean v11, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasNormals:Z

    const/4 v11, 0x4

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v12

    if-lt v12, v11, :cond_6

    move v12, v7

    goto :goto_6

    :cond_6
    move v12, v9

    :goto_6
    iput-boolean v12, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasTangents:Z

    iget-boolean v12, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasVertices:Z

    if-eqz v12, :cond_7

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v12

    div-int/2addr v12, v8

    goto :goto_7

    :cond_7
    move v12, v9

    :goto_7
    iput v12, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->verticesCount:I

    iget-boolean v12, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasUVs:Z

    if-eqz v12, :cond_8

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v2

    div-int/2addr v2, v10

    goto :goto_8

    :cond_8
    move v2, v9

    :goto_8
    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->uvsCount:I

    iget-boolean v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasIndices:Z

    if-eqz v2, :cond_9

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v2

    div-int/2addr v2, v8

    goto :goto_9

    :cond_9
    move v2, v9

    :goto_9
    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->trianglesCount:I

    iget-boolean v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasWeights:Z

    if-eqz v2, :cond_a

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v2

    div-int/2addr v2, v8

    goto :goto_a

    :cond_a
    move v2, v9

    :goto_a
    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->weightsCount:I

    iget-boolean v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasJoints:Z

    if-eqz v2, :cond_b

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v2

    div-int/2addr v2, v8

    goto :goto_b

    :cond_b
    move v2, v9

    :goto_b
    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->jointsCount:I

    iget-boolean v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasNormals:Z

    if-eqz v2, :cond_c

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v2

    div-int/2addr v2, v8

    goto :goto_c

    :cond_c
    move v2, v9

    :goto_c
    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->normalsCount:I

    iget-boolean v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasTangents:Z

    if-eqz v2, :cond_d

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result p0

    div-int/2addr p0, v11

    goto :goto_d

    :cond_d
    move p0, v9

    :goto_d
    iput p0, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->tangentsCount:I

    invoke-static {v0, v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->b(Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;Z)Z

    if-eqz p1, :cond_f

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->findMaxValue()I

    move-result p0

    const p1, 0xffff

    if-gt p0, p1, :cond_e

    goto :goto_e

    :cond_e
    move v7, v9

    :goto_e
    iput-boolean v7, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->useUshortRenderableData:Z

    :cond_f
    iget-boolean p0, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasVertices:Z

    const/4 p1, 0x0

    if-eqz p0, :cond_11

    move p0, p1

    :goto_f
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v2

    if-ge v9, v2, :cond_12

    invoke-virtual {v1, v9}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v3, v2, p0

    if-lez v3, :cond_10

    move p0, v2

    :cond_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    :cond_11
    move p0, p1

    :cond_12
    cmpl-float p1, p0, p1

    if-nez p1, :cond_13

    const/high16 p0, 0x3f800000    # 1.0f

    :cond_13
    iput p0, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->maxExtent:F

    return-object v0

    :cond_14
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "vertex can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d([B[B[B)[B
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "jsonBytes",
            "binBytes",
            "bin2Bytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    array-length v3, p2

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    add-int/2addr v1, v3

    add-int/lit16 v1, v1, 0x400

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v1, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v3, Ljava/util/zip/CRC32;

    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v3, p0}, Ljava/util/zip/CRC32;->update([B)V

    new-instance v4, Ljava/util/zip/ZipEntry;

    const-string v5, "data"

    invoke-direct {v4, v5}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    array-length v5, p0

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/util/zip/ZipEntry;->setSize(J)V

    array-length v5, p0

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    invoke-virtual {v1, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->reset()V

    invoke-virtual {v3, p1}, Ljava/util/zip/CRC32;->update([B)V

    new-instance p0, Ljava/util/zip/ZipEntry;

    const-string v4, "bin"

    invoke-direct {p0, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    array-length v4, p1

    int-to-long v4, v4

    invoke-virtual {p0, v4, v5}, Ljava/util/zip/ZipEntry;->setSize(J)V

    array-length v4, p1

    int-to-long v4, v4

    invoke-virtual {p0, v4, v5}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    invoke-virtual {v1, p0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    if-eqz p2, :cond_1

    array-length p0, p2

    if-lez p0, :cond_1

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->reset()V

    invoke-virtual {v3, p2}, Ljava/util/zip/CRC32;->update([B)V

    new-instance p0, Ljava/util/zip/ZipEntry;

    const-string p1, "bin2"

    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    array-length p1, p2

    int-to-long v4, p1

    invoke-virtual {p0, v4, v5}, Ljava/util/zip/ZipEntry;->setSize(J)V

    array-length p1, p2

    int-to-long v4, p1

    invoke-virtual {p0, v4, v5}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    invoke-virtual {v1, p0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    :cond_1
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->finish()V

    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static e(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)[B
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buf"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->array()[B

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static f(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)[B
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sb"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->get(I)S

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static g(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataFile"
        }
    .end annotation

    const-string v0, ".mesh"

    invoke-static {p0, v0}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".mwf"

    invoke-static {p0, v0}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "File needs to be .mesh"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    return-void
.end method

.method public static h(Ljava/io/File;LFb/a;Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$b;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 36
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "importSettings",
            "listener"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_15

    const-wide v7, 0x7fffffffffffffffL

    const/4 v9, 0x1

    const-wide/16 v5, 0x0

    move-object v4, v10

    :try_start_2
    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :try_start_3
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    :try_start_4
    const-string v5, "data"

    invoke-virtual {v4, v5}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_12

    if-nez v5, :cond_2

    :try_start_5
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v10, :cond_1

    :try_start_6
    invoke-virtual {v10}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object/from16 v35, v2

    goto/16 :goto_21

    :cond_1
    :goto_0
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    goto/16 :goto_23

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object/from16 v35, v2

    goto/16 :goto_1f

    :cond_2
    :try_start_8
    invoke-virtual {v4, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_12

    :try_start_9
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v5, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_c

    :try_start_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_d

    if-eqz v8, :cond_3

    :try_start_b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object/from16 v35, v2

    goto/16 :goto_18

    :cond_3
    :try_start_c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v8

    const-class v9, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;

    invoke-virtual {v8, v7, v9}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_d

    :try_start_d
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    if-eqz v5, :cond_4

    :try_start_e
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception v0

    move-object v1, v0

    move-object/from16 v35, v2

    goto/16 :goto_1d

    :cond_4
    :goto_2
    :try_start_f
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    if-nez v7, :cond_6

    if-eqz v10, :cond_5

    :try_start_10
    invoke-virtual {v10}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :cond_5
    :try_start_11
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0

    return-object v3

    :cond_6
    :try_start_12
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V

    iget-boolean v5, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasIndices:Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    if-eqz v5, :cond_7

    :try_start_13
    new-instance v5, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    iget v6, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->trianglesCount:I

    mul-int/lit8 v6, v6, 0x3

    invoke-direct {v5, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i2(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :cond_7
    :try_start_14
    iget-boolean v5, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasVertices:Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    if-eqz v5, :cond_8

    :try_start_15
    new-instance v5, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget v6, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->verticesCount:I

    mul-int/lit8 v6, v6, 0x3

    sget-object v8, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->FLOAT32:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    invoke-direct {v5, v6, v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;)V

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->q2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    :cond_8
    :try_start_16
    iget-boolean v5, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasUVs:Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    if-eqz v5, :cond_9

    :try_start_17
    new-instance v5, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget v6, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->uvsCount:I

    mul-int/lit8 v6, v6, 0x2

    sget-object v8, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->FLOAT16:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    invoke-direct {v5, v6, v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;)V

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->m2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    :cond_9
    :try_start_18
    iget-boolean v5, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasWeights:Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    if-eqz v5, :cond_a

    :try_start_19
    new-instance v5, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget v6, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->weightsCount:I

    mul-int/lit8 v6, v6, 0x3

    sget-object v8, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->UNSIGNED_BYTE_NORMALIZED:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    invoke-direct {v5, v6, v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;)V

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->s2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    :cond_a
    :try_start_1a
    iget-boolean v5, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasJoints:Z
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    if-eqz v5, :cond_b

    :try_start_1b
    new-instance v5, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget v6, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->jointsCount:I

    mul-int/lit8 v6, v6, 0x3

    sget-object v8, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->UNSIGNED_BYTE:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    invoke-direct {v5, v6, v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;)V

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->S1(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    :cond_b
    :try_start_1c
    iget-boolean v5, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasNormals:Z
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_b

    if-eqz v5, :cond_c

    :try_start_1d
    new-instance v5, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget v6, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->normalsCount:I

    mul-int/lit8 v6, v6, 0x3

    sget-object v8, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->FLOAT32:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    invoke-direct {v5, v6, v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;)V

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->Y1(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    :cond_c
    :try_start_1e
    iget-boolean v5, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasTangents:Z
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_b

    if-eqz v5, :cond_d

    :try_start_1f
    new-instance v5, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget v6, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->tangentsCount:I

    mul-int/lit8 v6, v6, 0x4

    sget-object v8, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->FLOAT32:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    invoke-direct {v5, v6, v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;)V

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->e2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    :cond_d
    :try_start_20
    iget-boolean v5, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasVertices:Z
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_b

    const-wide/16 v8, -0x1

    if-eqz v5, :cond_e

    :try_start_21
    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer()J

    move-result-wide v5
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_2

    move-wide v11, v5

    goto :goto_3

    :cond_e
    move-wide v11, v8

    :goto_3
    :try_start_22
    iget-boolean v5, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasUVs:Z
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_b

    if-eqz v5, :cond_f

    :try_start_23
    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->a1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer()J

    move-result-wide v5
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_2

    move-wide v14, v5

    goto :goto_4

    :cond_f
    move-wide v14, v8

    :goto_4
    :try_start_24
    iget-boolean v5, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasIndices:Z
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_b

    if-eqz v5, :cond_10

    :try_start_25
    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->V0()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getCriticalDirectCppPointer()J

    move-result-wide v5
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_2

    move-wide/from16 v17, v5

    goto :goto_5

    :cond_10
    move-wide/from16 v17, v8

    :goto_5
    :try_start_26
    iget-boolean v5, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasWeights:Z
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_b

    if-eqz v5, :cond_11

    :try_start_27
    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->l1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer()J

    move-result-wide v5
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_2

    move-wide/from16 v20, v5

    goto :goto_6

    :cond_11
    move-wide/from16 v20, v8

    :goto_6
    :try_start_28
    iget-boolean v5, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasJoints:Z
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_b

    if-eqz v5, :cond_12

    :try_start_29
    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->m0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer()J

    move-result-wide v5
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_2

    move-wide/from16 v23, v5

    goto :goto_7

    :cond_12
    move-wide/from16 v23, v8

    :goto_7
    :try_start_2a
    iget-boolean v5, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasNormals:Z
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_b

    if-eqz v5, :cond_13

    :try_start_2b
    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer()J

    move-result-wide v5
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_2

    move-wide/from16 v26, v5

    goto :goto_8

    :cond_13
    move-wide/from16 v26, v8

    :goto_8
    :try_start_2c
    iget-boolean v5, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasTangents:Z
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_b

    if-eqz v5, :cond_14

    :try_start_2d
    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->F0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer()J

    move-result-wide v8
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_2

    :cond_14
    move-wide/from16 v29, v8

    :try_start_2e
    iget-boolean v13, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasVertices:Z

    iget-boolean v5, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasUVs:Z

    iget-boolean v6, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasIndices:Z

    iget-boolean v8, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasWeights:Z

    iget-boolean v9, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasJoints:Z

    iget-boolean v3, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasNormals:Z

    iget-boolean v0, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasTangents:Z

    invoke-static {v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->a(Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;)Z

    move-result v32
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_b

    move-object/from16 v35, v2

    :try_start_2f
    iget v2, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->maxExtent:F

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v34

    move/from16 v16, v5

    move/from16 v19, v6

    move/from16 v22, v8

    move/from16 v25, v9

    move/from16 v28, v3

    move/from16 v31, v0

    move/from16 v33, v2

    invoke-static/range {v11 .. v34}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->nativeDeserialize(JZJZJZJZJZJZJZZFLjava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_8

    :try_start_30
    new-instance v2, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    iget v0, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->verticesCount:I

    mul-int/lit8 v0, v0, 0x4

    invoke-direct {v2, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;-><init>(I)V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_a

    :try_start_31
    iget-boolean v0, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->useUshortRenderableData:Z

    if-eqz v0, :cond_15

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    iget v3, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->trianglesCount:I

    mul-int/lit8 v3, v3, 0x3

    invoke-direct {v0, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;-><init>(I)V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_5

    move-object v3, v0

    goto :goto_b

    :catchall_5
    move-exception v0

    :goto_9
    const/4 v3, 0x0

    :goto_a
    const/4 v5, 0x0

    goto/16 :goto_16

    :cond_15
    const/4 v3, 0x0

    :goto_b
    :try_start_32
    iget-boolean v0, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasJoints:Z

    if-eqz v0, :cond_16

    iget-boolean v0, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasWeights:Z

    if-eqz v0, :cond_16

    iget v0, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->verticesCount:I

    if-lez v0, :cond_16

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    iget v5, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->verticesCount:I

    mul-int/lit8 v5, v5, 0x8

    invoke-direct {v0, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;-><init>(I)V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_6

    move-object v5, v0

    goto :goto_c

    :catchall_6
    move-exception v0

    goto :goto_a

    :cond_16
    const/4 v5, 0x0

    :goto_c
    :try_start_33
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    iget-boolean v12, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->useUshortRenderableData:Z

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->getCriticalDirectCppPointer()J

    move-result-wide v13

    const-wide/16 v8, 0x0

    if-eqz v3, :cond_17

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->getCriticalDirectCppPointer()J

    move-result-wide v15

    goto :goto_d

    :catchall_7
    move-exception v0

    goto/16 :goto_16

    :cond_17
    move-wide v15, v8

    :goto_d
    if-eqz v5, :cond_18

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->getCriticalDirectCppPointer()J

    move-result-wide v8

    :cond_18
    move-wide/from16 v17, v8

    invoke-static/range {v11 .. v18}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->nativeDeserializeRenderableBundle(Ljava/lang/String;ZJJJ)I

    move-result v0
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_7

    and-int/lit8 v6, v0, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_19

    const/4 v6, 0x1

    goto :goto_e

    :cond_19
    move v6, v8

    :goto_e
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1a

    goto :goto_10

    :cond_1a
    if-eqz v5, :cond_1b

    :try_start_34
    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->destroyImmediate()V

    const/4 v5, 0x0

    goto :goto_10

    :catchall_8
    move-exception v0

    :goto_f
    move-object v1, v0

    goto/16 :goto_1f

    :cond_1b
    :goto_10
    if-eqz v6, :cond_1c

    iget-boolean v0, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->useUshortRenderableData:Z

    invoke-virtual {v4, v2, v3, v5, v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->b2(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;Z)V

    goto :goto_11

    :cond_1c
    if-eqz v5, :cond_1d

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->destroyImmediate()V

    :cond_1d
    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->destroyImmediate()V

    :cond_1e
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->destroyImmediate()V

    :goto_11
    if-eqz v1, :cond_20

    iget-boolean v0, v1, LFb/a;->a:Z

    if-eqz v0, :cond_1f

    goto :goto_12

    :cond_1f
    if-eqz v1, :cond_21

    iget-boolean v0, v1, LFb/a;->b:Z

    if-eqz v0, :cond_21

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->d0()Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    goto :goto_13

    :cond_20
    :goto_12
    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->apply()V

    :cond_21
    :goto_13
    invoke-virtual {v4, v8}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->R1(Z)V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_8

    if-eqz v10, :cond_22

    :try_start_35
    invoke-virtual {v10}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_9

    goto :goto_15

    :catchall_9
    move-exception v0

    :goto_14
    move-object v1, v0

    goto/16 :goto_21

    :cond_22
    :goto_15
    :try_start_36
    invoke-virtual/range {v35 .. v35}, Ljava/io/FileInputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_36} :catch_0

    return-object v4

    :catchall_a
    move-exception v0

    const/4 v2, 0x0

    goto/16 :goto_9

    :goto_16
    if-eqz v5, :cond_23

    :try_start_37
    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->destroyImmediate()V

    :cond_23
    if-eqz v3, :cond_24

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->destroyImmediate()V

    :cond_24
    if-eqz v2, :cond_25

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->destroyImmediate()V

    :cond_25
    throw v0
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_8

    :catchall_b
    move-exception v0

    move-object/from16 v35, v2

    goto :goto_f

    :catchall_c
    move-exception v0

    move-object/from16 v35, v2

    :goto_17
    move-object v1, v0

    goto :goto_1a

    :catchall_d
    move-exception v0

    move-object/from16 v35, v2

    move-object v1, v0

    :goto_18
    :try_start_38
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_e

    goto :goto_19

    :catchall_e
    move-exception v0

    move-object v2, v0

    :try_start_39
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_19
    throw v1
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_f

    :catchall_f
    move-exception v0

    goto :goto_17

    :goto_1a
    if-eqz v5, :cond_26

    :try_start_3a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_10

    goto :goto_1c

    :catchall_10
    move-exception v0

    move-object v2, v0

    :try_start_3b
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1c

    :catchall_11
    move-exception v0

    :goto_1b
    move-object v1, v0

    goto :goto_1d

    :cond_26
    :goto_1c
    throw v1
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_11

    :catchall_12
    move-exception v0

    move-object/from16 v35, v2

    goto :goto_1b

    :goto_1d
    :try_start_3c
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_13

    goto :goto_1e

    :catchall_13
    move-exception v0

    move-object v2, v0

    :try_start_3d
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1e
    throw v1
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_8

    :goto_1f
    if-eqz v10, :cond_27

    :try_start_3e
    invoke-virtual {v10}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_14

    goto :goto_20

    :catchall_14
    move-exception v0

    move-object v2, v0

    :try_start_3f
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_27
    :goto_20
    throw v1
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_9

    :catchall_15
    move-exception v0

    move-object/from16 v35, v2

    goto :goto_14

    :goto_21
    :try_start_40
    invoke-virtual/range {v35 .. v35}, Ljava/io/FileInputStream;->close()V
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_16

    goto :goto_22

    :catchall_16
    move-exception v0

    move-object v2, v0

    :try_start_41
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_22
    throw v1
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_41} :catch_0

    :goto_23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method

.method public static i(Ljava/io/FileInputStream;LFb/a;Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$b;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "importSettings",
            "listener"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, LW7/b;->f:LC8/a;

    iget-object v2, v2, LC8/a;->a:LD8/a;

    invoke-virtual {v2}, LD8/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/vtx/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x1000

    :try_start_1
    new-array v2, v2, [B

    :goto_1
    invoke-virtual {p0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    invoke-static {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->h(Ljava/io/File;LFb/a;Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$b;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    return-object p0

    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_4
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    const/4 p0, 0x0

    return-object p0

    :goto_5
    :try_start_8
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    throw p0
.end method

.method public static j(Ljava/io/InputStream;LFb/a;Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$b;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "importSettings",
            "listener"
        }
    .end annotation

    instance-of v0, p0, Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/FileInputStream;

    invoke-static {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->i(Ljava/io/FileInputStream;LFb/a;Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$b;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, LW7/b;->f:LC8/a;

    iget-object v2, v2, LC8/a;->a:LD8/a;

    invoke-virtual {v2}, LD8/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/vtx/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x1000

    :try_start_1
    new-array v2, v2, [B

    :goto_1
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_3
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    invoke-static {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->h(Ljava/io/File;LFb/a;Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$b;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    return-object p0

    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_4
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    const/4 p0, 0x0

    return-object p0

    :goto_5
    :try_start_8
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    throw p0
.end method

.method public static k(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataFile"
        }
    .end annotation

    const-string v0, ".mesh"

    invoke-static {p0, v0}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".mwf"

    invoke-static {p0, v0}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "File needs to be .mesh"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static l(Ljava/io/File;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mesh"

    invoke-static {v0, v1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mwf"

    invoke-static {v0, v1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "File needs to be .mesh"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    return-object p0
.end method

.method public static m(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataFile"
        }
    .end annotation

    const-string v0, ".mesh"

    invoke-static {p0, v0}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".mwf"

    invoke-static {p0, v0}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "File needs to be .mesh"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    return-object v0
.end method

.method public static n(Ljava/nio/ByteBuffer;I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "type",
            "payload"
        }
    .end annotation

    if-eqz p2, :cond_1

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    array-length p1, p2

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_1
    return-void
.end method

.method public static native nativeBuildBin(JZJZJZJZJZJZJZFLjava/nio/ByteBuffer;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "verticesPointer",
            "hasVertices",
            "uvsPointer",
            "hasUVs",
            "indicesPointer",
            "hasIndices",
            "weightsPointer",
            "hasWeights",
            "jointsPointer",
            "hasJoints",
            "normalsPointer",
            "hasNormals",
            "tangentsPointer",
            "hasTangents",
            "maxExtent",
            "outBuffer"
        }
    .end annotation
.end method

.method public static native nativeDeserialize(JZJZJZJZJZJZJZZFLjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "verticesPointer",
            "hasVertices",
            "uvsPointer",
            "hasUVs",
            "indicesPointer",
            "hasIndices",
            "weightsPointer",
            "hasWeights",
            "jointsPointer",
            "hasJoints",
            "normalsPointer",
            "hasNormals",
            "tangentsPointer",
            "hasTangents",
            "halfFloatUV",
            "maxExtent",
            "filepath"
        }
    .end annotation
.end method

.method public static native nativeDeserializeRenderableBundle(Ljava/lang/String;ZJJJ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "filepath",
            "useUshortIndexData",
            "quatS4Pointer",
            "ushortIndexPointer",
            "skinPointer"
        }
    .end annotation
.end method

.method public static o(Ljava/io/File;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "vertex"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->p(Ljava/io/File;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Z)Z

    move-result p0

    return p0
.end method

.method public static p(Ljava/io/File;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Z)Z
    .locals 46
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "vertex",
            "serializeRenderableData"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_12

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".mesh"

    invoke-static {v4, v5}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".mwf"

    invoke-static {v4, v5}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "File needs to be .mesh"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static/range {p1 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->c(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Z)Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;

    move-result-object v4

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    iget-boolean v6, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasVertices:Z

    const-wide/16 v7, -0x1

    if-eqz v6, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer()J

    move-result-wide v9

    goto :goto_1

    :cond_2
    move-wide v9, v7

    :goto_1
    iget-boolean v6, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasUVs:Z

    if-eqz v6, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->a1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer()J

    move-result-wide v11

    move-wide/from16 v34, v11

    goto :goto_2

    :cond_3
    move-wide/from16 v34, v7

    :goto_2
    iget-boolean v6, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasIndices:Z

    if-eqz v6, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->V0()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getCriticalDirectCppPointer()J

    move-result-wide v11

    move-wide/from16 v36, v11

    goto :goto_3

    :cond_4
    move-wide/from16 v36, v7

    :goto_3
    iget-boolean v6, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasWeights:Z

    if-eqz v6, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->l1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer()J

    move-result-wide v11

    move-wide/from16 v38, v11

    goto :goto_4

    :cond_5
    move-wide/from16 v38, v7

    :goto_4
    iget-boolean v6, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasJoints:Z

    if-eqz v6, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->m0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer()J

    move-result-wide v11

    move-wide/from16 v40, v11

    goto :goto_5

    :cond_6
    move-wide/from16 v40, v7

    :goto_5
    iget-boolean v6, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasNormals:Z

    if-eqz v6, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer()J

    move-result-wide v11

    move-wide/from16 v42, v11

    goto :goto_6

    :cond_7
    move-wide/from16 v42, v7

    :goto_6
    iget-boolean v6, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasTangents:Z

    if-eqz v6, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->F0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer()J

    move-result-wide v11

    move-wide/from16 v44, v11

    goto :goto_7

    :cond_8
    move-wide/from16 v44, v7

    :goto_7
    iget-boolean v13, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasVertices:Z

    iget-boolean v6, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasUVs:Z

    move/from16 v16, v6

    iget-boolean v6, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasIndices:Z

    move/from16 v19, v6

    iget-boolean v6, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasWeights:Z

    move/from16 v22, v6

    iget-boolean v6, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasJoints:Z

    move/from16 v25, v6

    iget-boolean v6, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasNormals:Z

    move/from16 v28, v6

    iget-boolean v6, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasTangents:Z

    move/from16 v31, v6

    iget v6, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->maxExtent:F

    move/from16 v32, v6

    const/16 v33, 0x0

    move-wide v11, v9

    move-wide/from16 v14, v34

    move-wide/from16 v17, v36

    move-wide/from16 v20, v38

    move-wide/from16 v23, v40

    move-wide/from16 v26, v42

    move-wide/from16 v29, v44

    invoke-static/range {v11 .. v33}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->nativeBuildBin(JZJZJZJZJZJZJZFLjava/nio/ByteBuffer;)I

    move-result v6

    if-lez v6, :cond_11

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v14

    move-object/from16 v33, v14

    iget-boolean v13, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasVertices:Z

    iget-boolean v11, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasUVs:Z

    move/from16 v16, v11

    iget-boolean v11, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasIndices:Z

    move/from16 v19, v11

    iget-boolean v11, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasWeights:Z

    move/from16 v22, v11

    iget-boolean v11, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasJoints:Z

    move/from16 v25, v11

    iget-boolean v11, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasNormals:Z

    move/from16 v28, v11

    iget-boolean v11, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasTangents:Z

    move/from16 v31, v11

    iget v4, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->maxExtent:F

    move/from16 v32, v4

    move-wide v11, v9

    move-object v4, v14

    move-wide/from16 v14, v34

    move-wide/from16 v17, v36

    move-wide/from16 v20, v38

    move-wide/from16 v23, v40

    move-wide/from16 v26, v42

    move-wide/from16 v29, v44

    invoke-static/range {v11 .. v33}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->nativeBuildBin(JZJZJZJZJZJZJZFLjava/nio/ByteBuffer;)I

    move-result v9

    if-ne v9, v6, :cond_10

    new-array v6, v9, [B

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    filled-new-array {v4}, [[B

    move-result-object v4

    if-eqz p2, :cond_9

    new-instance v9, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$a;

    invoke-direct {v9, v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$a;-><init>([[B)V

    invoke-virtual {v1, v9}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->S(LJb/f$a;)V

    :cond_9
    :try_start_0
    aget-object v1, v4, v3

    invoke-static {v5, v6, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->d([B[B[B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-interface {v4}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v5

    new-array v6, v3, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v5, v6}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/nio/file/OpenOption;

    sget-object v6, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    aput-object v6, v5, v3

    sget-object v6, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    aput-object v6, v5, v2

    sget-object v6, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    const/4 v9, 0x2

    aput-object v6, v5, v9

    invoke-static {v4, v1, v5}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    const-string v4, "data"

    invoke-virtual {v1, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    const-string v5, "bin"

    invoke-virtual {v1, v5}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v9

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_c

    :cond_a
    move-wide v9, v7

    :goto_8
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v7

    :cond_b
    const-string v6, "VtxSerializer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ZIP wrote entries: data="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " bytes, bin="

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " bytes, file="

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_d

    if-eqz v5, :cond_d

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-gtz v0, :cond_c

    goto :goto_9

    :cond_c
    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return v2

    :catch_0
    move-exception v0

    goto :goto_e

    :cond_d
    :goto_9
    :try_start_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ZIP on disk missing entries (data? "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_e

    move v4, v2

    goto :goto_a

    :cond_e
    move v4, v3

    :goto_a
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", bin? "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_f

    goto :goto_b

    :cond_f
    move v2, v3

    :goto_b
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", binSize="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_c
    :try_start_6
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_d

    :catchall_1
    move-exception v0

    move-object v1, v0

    :try_start_7
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d
    throw v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :goto_e
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeBuildBin wrote "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeBuildBin(size) returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "vertex can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
