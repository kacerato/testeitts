.class public Lcom/ardor3d/scenegraph/MeshData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/util/export/Savable;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field protected _colorCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

.field protected _fogCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

.field protected _indexBuffer:Lcom/ardor3d/scenegraph/IndexBufferData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ardor3d/scenegraph/IndexBufferData<",
            "*>;"
        }
    .end annotation
.end field

.field protected _indexLengths:[I

.field protected _indexModes:[Lcom/ardor3d/renderer/IndexMode;

.field protected _interleaved:Lcom/ardor3d/scenegraph/FloatBufferData;

.field protected _normalCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

.field protected transient _primitiveCounts:[I

.field protected _tangentCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

.field protected _textureCoords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ardor3d/scenegraph/FloatBufferData;",
            ">;"
        }
    .end annotation
.end field

.field private transient _vboIdCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected _vertexCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

.field protected _vertexCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/scenegraph/MeshData;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_vboIdCache:Ljava/util/Map;

    const/4 v0, 0x1

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/ardor3d/scenegraph/MeshData;->_primitiveCounts:[I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/ardor3d/scenegraph/MeshData;->_textureCoords:Ljava/util/List;

    sget-object v0, Lcom/ardor3d/renderer/IndexMode;->Triangles:Lcom/ardor3d/renderer/IndexMode;

    filled-new-array {v0}, [Lcom/ardor3d/renderer/IndexMode;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_indexModes:[Lcom/ardor3d/renderer/IndexMode;

    return-void
.end method

.method private refreshInterleaved()V
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_interleaved:Lcom/ardor3d/scenegraph/FloatBufferData;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/AbstractBufferData;->setNeedsRefresh(Z)V

    :cond_0
    return-void
.end method

.method private updatePrimitiveCounts()V
    .locals 5

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_indexBuffer:Lcom/ardor3d/scenegraph/IndexBufferData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBufferLimit()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_vertexCount:I

    :goto_0
    iget-object v1, p0, Lcom/ardor3d/scenegraph/MeshData;->_indexLengths:[I

    if-eqz v1, :cond_1

    array-length v1, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    iget-object v2, p0, Lcom/ardor3d/scenegraph/MeshData;->_primitiveCounts:[I

    array-length v2, v2

    if-eq v2, v1, :cond_2

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/ardor3d/scenegraph/MeshData;->_primitiveCounts:[I

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_4

    iget-object v3, p0, Lcom/ardor3d/scenegraph/MeshData;->_indexLengths:[I

    if-eqz v3, :cond_3

    aget v3, v3, v2

    goto :goto_3

    :cond_3
    move v3, v0

    :goto_3
    invoke-virtual {p0, v2}, Lcom/ardor3d/scenegraph/MeshData;->getIndexMode(I)Lcom/ardor3d/renderer/IndexMode;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/ardor3d/renderer/IndexMode;->getPrimitiveCount(Lcom/ardor3d/renderer/IndexMode;I)I

    move-result v3

    iget-object v4, p0, Lcom/ardor3d/scenegraph/MeshData;->_primitiveCounts:[I

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method


# virtual methods
.method public copyTextureCoordinates(IIF)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_textureCoords:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_7

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_7

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_textureCoords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    if-ltz p2, :cond_7

    if-ne p2, p1, :cond_2

    goto/16 :goto_2

    .line 3
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_textureCoords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_textureCoords:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_textureCoords:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/scenegraph/FloatBufferData;

    .line 6
    iget-object v1, p0, Lcom/ardor3d/scenegraph/MeshData;->_textureCoords:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/scenegraph/FloatBufferData;

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    if-eq v1, v2, :cond_5

    .line 8
    :cond_4
    new-instance v0, Lcom/ardor3d/scenegraph/FloatBufferData;

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-static {v1}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/FloatBufferData;->getValuesPerTuple()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/scenegraph/FloatBufferData;-><init>(Ljava/nio/FloatBuffer;I)V

    .line 9
    iget-object v1, p0, Lcom/ardor3d/scenegraph/MeshData;->_textureCoords:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_5
    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object p2

    check-cast p2, Ljava/nio/FloatBuffer;

    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 11
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object p2

    check-cast p2, Ljava/nio/FloatBuffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result p2

    .line 12
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 13
    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_6

    .line 14
    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/FloatBuffer;

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/FloatBuffer;

    invoke-virtual {v4}, Ljava/nio/FloatBuffer;->get()F

    move-result v4

    mul-float/2addr v4, p3

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 15
    :cond_6
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/FloatBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    .line 16
    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/FloatBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_7
    :goto_2
    return-void
.end method

.method public copyTextureCoordinates(IIFF)V
    .locals 5

    .line 17
    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_textureCoords:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_8

    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_8

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_textureCoords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    if-ltz p2, :cond_8

    if-ne p2, p1, :cond_2

    goto/16 :goto_3

    .line 19
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_textureCoords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_3

    .line 20
    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_textureCoords:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21
    :cond_3
    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_textureCoords:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/scenegraph/FloatBufferData;

    .line 22
    iget-object v1, p0, Lcom/ardor3d/scenegraph/MeshData;->_textureCoords:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/scenegraph/FloatBufferData;

    if-eqz v0, :cond_4

    .line 23
    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    if-eq v1, v2, :cond_5

    .line 24
    :cond_4
    new-instance v0, Lcom/ardor3d/scenegraph/FloatBufferData;

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-static {v1}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/FloatBufferData;->getValuesPerTuple()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/scenegraph/FloatBufferData;-><init>(Ljava/nio/FloatBuffer;I)V

    .line 25
    iget-object v1, p0, Lcom/ardor3d/scenegraph/MeshData;->_textureCoords:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_5
    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object p2

    check-cast p2, Ljava/nio/FloatBuffer;

    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 27
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object p2

    check-cast p2, Ljava/nio/FloatBuffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result p2

    .line 28
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 29
    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_7

    .line 30
    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_6

    .line 31
    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/FloatBuffer;

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/FloatBuffer;

    invoke-virtual {v4}, Ljava/nio/FloatBuffer;->get()F

    move-result v4

    mul-float/2addr v4, p3

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_2

    .line 32
    :cond_6
    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/FloatBuffer;

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/FloatBuffer;

    invoke-virtual {v4}, Ljava/nio/FloatBuffer;->get()F

    move-result v4

    mul-float/2addr v4, p4

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 33
    :cond_7
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/FloatBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    .line 34
    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/FloatBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_8
    :goto_3
    return-void
.end method

.method public getClassTag()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ardor3d/scenegraph/MeshData;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getColorBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_colorCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getColorCoords()Lcom/ardor3d/scenegraph/FloatBufferData;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_colorCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    return-object v0
.end method

.method public getFogBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_fogCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getFogCoords()Lcom/ardor3d/scenegraph/FloatBufferData;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_fogCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    return-object v0
.end method

.method public getIndexBuffer()Ljava/nio/Buffer;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_indexBuffer:Lcom/ardor3d/scenegraph/IndexBufferData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/IndexBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public getIndexLengths()[I
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_indexLengths:[I

    return-object v0
.end method

.method public getIndexMode()Lcom/ardor3d/renderer/IndexMode;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/ardor3d/scenegraph/MeshData;->getIndexMode(I)Lcom/ardor3d/renderer/IndexMode;

    move-result-object v0

    return-object v0
.end method

.method public getIndexMode(I)Lcom/ardor3d/renderer/IndexMode;
    .locals 3

    if-ltz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/MeshData;->getSectionCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_indexModes:[Lcom/ardor3d/renderer/IndexMode;

    array-length v1, v0

    if-le v1, p1, :cond_0

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    :goto_0
    return-object p1

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid section index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIndexModes()[Lcom/ardor3d/renderer/IndexMode;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_indexModes:[Lcom/ardor3d/renderer/IndexMode;

    return-object v0
.end method

.method public getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ardor3d/scenegraph/IndexBufferData<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_indexBuffer:Lcom/ardor3d/scenegraph/IndexBufferData;

    return-object v0
.end method

.method public getInterleavedBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_interleaved:Lcom/ardor3d/scenegraph/FloatBufferData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getInterleavedData()Lcom/ardor3d/scenegraph/FloatBufferData;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_interleaved:Lcom/ardor3d/scenegraph/FloatBufferData;

    return-object v0
.end method

.method public getNormalBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_normalCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getNormalCoords()Lcom/ardor3d/scenegraph/FloatBufferData;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_normalCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    return-object v0
.end method

.method public getNumberOfUnits()I
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_textureCoords:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPrimitive(II[I)[I
    .locals 4

    .line 1
    invoke-virtual {p0, p2}, Lcom/ardor3d/scenegraph/MeshData;->getPrimitiveCount(I)I

    move-result v0

    if-ge p1, v0, :cond_4

    if-ltz p1, :cond_4

    .line 2
    invoke-virtual {p0, p2}, Lcom/ardor3d/scenegraph/MeshData;->getIndexMode(I)Lcom/ardor3d/renderer/IndexMode;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/ardor3d/renderer/IndexMode;->getVertexCount()I

    move-result v0

    if-eqz p3, :cond_0

    .line 4
    array-length v1, p3

    if-ge v1, v0, :cond_1

    .line 5
    :cond_0
    new-array p3, v0, [I

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/MeshData;->getIndexBuffer()Ljava/nio/Buffer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    invoke-virtual {p0, p1, v1, p2}, Lcom/ardor3d/scenegraph/MeshData;->getVertexIndex(III)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ardor3d/scenegraph/IndexBufferData;->get(I)I

    move-result v2

    aput v2, p3, v1

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p0, p1, v1, p2}, Lcom/ardor3d/scenegraph/MeshData;->getVertexIndex(III)I

    move-result v2

    aput v2, p3, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p3

    .line 9
    :cond_4
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid primitiveIndex \'"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'.  Count is "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getPrimitive(II[Lcom/ardor3d/math/Vector3;)[Lcom/ardor3d/math/Vector3;
    .locals 6

    .line 10
    invoke-virtual {p0, p2}, Lcom/ardor3d/scenegraph/MeshData;->getPrimitiveCount(I)I

    move-result v0

    if-ge p1, v0, :cond_5

    if-ltz p1, :cond_5

    .line 11
    invoke-virtual {p0, p2}, Lcom/ardor3d/scenegraph/MeshData;->getIndexMode(I)Lcom/ardor3d/renderer/IndexMode;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/ardor3d/renderer/IndexMode;->getVertexCount()I

    move-result v0

    if-eqz p3, :cond_0

    .line 13
    array-length v1, p3

    if-ge v1, v0, :cond_1

    .line 14
    :cond_0
    new-array p3, v0, [Lcom/ardor3d/math/Vector3;

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 15
    aget-object v2, p3, v1

    if-nez v2, :cond_2

    .line 16
    new-instance v2, Lcom/ardor3d/math/Vector3;

    invoke-direct {v2}, Lcom/ardor3d/math/Vector3;-><init>()V

    aput-object v2, p3, v1

    .line 17
    :cond_2
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/MeshData;->getIndexBuffer()Ljava/nio/Buffer;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 18
    aget-object v2, p3, v1

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v4

    invoke-virtual {p0, p1, v1, p2}, Lcom/ardor3d/scenegraph/MeshData;->getVertexIndex(III)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/ardor3d/scenegraph/IndexBufferData;->get(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/ardor3d/util/geom/BufferUtils;->populateFromBuffer(Lcom/ardor3d/math/Vector3;Ljava/nio/FloatBuffer;I)V

    goto :goto_1

    .line 19
    :cond_3
    aget-object v2, p3, v1

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {p0, p1, v1, p2}, Lcom/ardor3d/scenegraph/MeshData;->getVertexIndex(III)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/ardor3d/util/geom/BufferUtils;->populateFromBuffer(Lcom/ardor3d/math/Vector3;Ljava/nio/FloatBuffer;I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object p3

    .line 20
    :cond_5
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid primitiveIndex \'"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'.  Count is "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getPrimitiveCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_primitiveCounts:[I

    aget p1, v0, p1

    return p1
.end method

.method public getSectionCount()I
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_indexLengths:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getTangentBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_tangentCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getTangentCoords()Lcom/ardor3d/scenegraph/FloatBufferData;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_tangentCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    return-object v0
.end method

.method public getTextureBuffer(I)Ljava/nio/FloatBuffer;
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_textureCoords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gt v0, p1, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_textureCoords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/scenegraph/FloatBufferData;

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/FloatBuffer;

    return-object p1
.end method

.method public getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_textureCoords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_textureCoords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/scenegraph/FloatBufferData;

    return-object p1
.end method

.method public getTextureCoords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ardor3d/scenegraph/FloatBufferData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_textureCoords:Ljava/util/List;

    return-object v0
.end method

.method public getTotalPrimitiveCount()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/ardor3d/scenegraph/MeshData;->_primitiveCounts:[I

    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget v2, v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getVBOInterleavedID(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_vboIdCache:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_vboIdCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getVertexBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_vertexCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getVertexCoords()Lcom/ardor3d/scenegraph/FloatBufferData;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_vertexCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    return-object v0
.end method

.method public getVertexCount()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_vertexCount:I

    return v0
.end method

.method public getVertexIndex(III)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p3, :cond_0

    iget-object v3, p0, Lcom/ardor3d/scenegraph/MeshData;->_indexLengths:[I

    aget v3, v3, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/ardor3d/scenegraph/MeshData$1;->$SwitchMap$com$ardor3d$renderer$IndexMode:[I

    invoke-virtual {p0, p3}, Lcom/ardor3d/scenegraph/MeshData;->getIndexMode(I)Lcom/ardor3d/renderer/IndexMode;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v1, p3

    packed-switch p3, :pswitch_data_0

    sget-object p1, Lcom/ardor3d/scenegraph/MeshData;->logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unimplemented index mode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/ardor3d/scenegraph/MeshData;->getIndexMode(I)Lcom/ardor3d/renderer/IndexMode;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    :cond_1
    :goto_1
    :pswitch_0
    add-int/2addr p1, p2

    :pswitch_1
    add-int/2addr v2, p1

    goto :goto_2

    :pswitch_2
    mul-int/lit8 p1, p1, 0x2

    goto :goto_1

    :pswitch_3
    mul-int/lit8 p1, p1, 0x4

    goto :goto_1

    :pswitch_4
    if-nez p2, :cond_1

    goto :goto_2

    :pswitch_5
    mul-int/lit8 p1, p1, 0x3

    goto :goto_1

    :goto_2
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public makeCopy()Lcom/ardor3d/scenegraph/MeshData;
    .locals 5

    new-instance v0, Lcom/ardor3d/scenegraph/MeshData;

    invoke-direct {v0}, Lcom/ardor3d/scenegraph/MeshData;-><init>()V

    iget v1, p0, Lcom/ardor3d/scenegraph/MeshData;->_vertexCount:I

    iput v1, v0, Lcom/ardor3d/scenegraph/MeshData;->_vertexCount:I

    iget-object v1, p0, Lcom/ardor3d/scenegraph/MeshData;->_primitiveCounts:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/ardor3d/scenegraph/MeshData;->_primitiveCounts:[I

    iget-object v2, p0, Lcom/ardor3d/scenegraph/MeshData;->_primitiveCounts:[I

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/ardor3d/scenegraph/MeshData;->_vertexCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/FloatBufferData;->makeCopy()Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v1

    iput-object v1, v0, Lcom/ardor3d/scenegraph/MeshData;->_vertexCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    :cond_0
    iget-object v1, p0, Lcom/ardor3d/scenegraph/MeshData;->_normalCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/FloatBufferData;->makeCopy()Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v1

    iput-object v1, v0, Lcom/ardor3d/scenegraph/MeshData;->_normalCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    :cond_1
    iget-object v1, p0, Lcom/ardor3d/scenegraph/MeshData;->_fogCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/FloatBufferData;->makeCopy()Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v1

    iput-object v1, v0, Lcom/ardor3d/scenegraph/MeshData;->_fogCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    :cond_2
    iget-object v1, p0, Lcom/ardor3d/scenegraph/MeshData;->_tangentCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/FloatBufferData;->makeCopy()Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v1

    iput-object v1, v0, Lcom/ardor3d/scenegraph/MeshData;->_tangentCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    :cond_3
    iget-object v1, p0, Lcom/ardor3d/scenegraph/MeshData;->_textureCoords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/scenegraph/FloatBufferData;

    iget-object v3, v0, Lcom/ardor3d/scenegraph/MeshData;->_textureCoords:Ljava/util/List;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/FloatBufferData;->makeCopy()Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/ardor3d/scenegraph/MeshData;->_indexBuffer:Lcom/ardor3d/scenegraph/IndexBufferData;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/IndexBufferData;->makeCopy()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v1

    iput-object v1, v0, Lcom/ardor3d/scenegraph/MeshData;->_indexBuffer:Lcom/ardor3d/scenegraph/IndexBufferData;

    :cond_5
    iget-object v1, p0, Lcom/ardor3d/scenegraph/MeshData;->_indexLengths:[I

    if-eqz v1, :cond_6

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/ardor3d/scenegraph/MeshData;->_indexLengths:[I

    iget-object v2, p0, Lcom/ardor3d/scenegraph/MeshData;->_indexLengths:[I

    array-length v3, v2

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    iget-object v1, p0, Lcom/ardor3d/scenegraph/MeshData;->_indexModes:[Lcom/ardor3d/renderer/IndexMode;

    array-length v1, v1

    new-array v1, v1, [Lcom/ardor3d/renderer/IndexMode;

    iput-object v1, v0, Lcom/ardor3d/scenegraph/MeshData;->_indexModes:[Lcom/ardor3d/renderer/IndexMode;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/MeshData;->_indexModes:[Lcom/ardor3d/renderer/IndexMode;

    array-length v3, v2

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public randomPointOnPrimitives(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
    .locals 11

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_vertexCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_indexBuffer:Lcom/ardor3d/scenegraph/IndexBufferData;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Lcom/ardor3d/math/Vector3;

    invoke-direct {p1}, Lcom/ardor3d/math/Vector3;-><init>()V

    :cond_1
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/MeshData;->getSectionCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/ardor3d/math/MathUtils;->nextRandomInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ardor3d/scenegraph/MeshData;->getPrimitiveCount(I)I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Lcom/ardor3d/math/MathUtils;->nextRandomInt(II)I

    move-result v3

    invoke-virtual {p0, v0}, Lcom/ardor3d/scenegraph/MeshData;->getIndexMode(I)Lcom/ardor3d/renderer/IndexMode;

    move-result-object v4

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/MeshData;->getIndexBuffer()Ljava/nio/Buffer;

    move-result-object v5

    if-eqz v5, :cond_2

    move v5, v1

    goto :goto_0

    :cond_2
    move v5, v2

    :goto_0
    sget-object v6, Lcom/ardor3d/scenegraph/MeshData$1;->$SwitchMap$com$ardor3d$renderer$IndexMode:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0, v3, v2, v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexIndex(III)I

    move-result v2

    invoke-virtual {p0, v3, v1, v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexIndex(III)I

    move-result v0

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/ardor3d/scenegraph/IndexBufferData;->get(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ardor3d/scenegraph/IndexBufferData;->get(I)I

    move-result v0

    :cond_3
    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-static {p1, v3, v2}, Lcom/ardor3d/util/geom/BufferUtils;->populateFromBuffer(Lcom/ardor3d/math/Vector3;Ljava/nio/FloatBuffer;I)V

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/ardor3d/util/geom/BufferUtils;->populateFromBuffer(Lcom/ardor3d/math/Vector3;Ljava/nio/FloatBuffer;I)V

    invoke-static {}, Lcom/ardor3d/math/MathUtils;->nextRandomDouble()D

    move-result-wide v2

    invoke-static {p1, v1, v2, v3, p1}, Lcom/ardor3d/math/Vector3;->lerp(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    invoke-static {v1}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0, v3, v2, v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexIndex(III)I

    move-result v0

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ardor3d/scenegraph/IndexBufferData;->get(I)I

    move-result v0

    :cond_4
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/ardor3d/util/geom/BufferUtils;->populateFromBuffer(Lcom/ardor3d/math/Vector3;Ljava/nio/FloatBuffer;I)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v3, v2, v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexIndex(III)I

    move-result v2

    invoke-virtual {p0, v3, v1, v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexIndex(III)I

    move-result v1

    const/4 v6, 0x2

    invoke-virtual {p0, v3, v6, v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexIndex(III)I

    move-result v0

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ardor3d/scenegraph/IndexBufferData;->get(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/ardor3d/scenegraph/IndexBufferData;->get(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/ardor3d/scenegraph/IndexBufferData;->get(I)I

    move-result v0

    :cond_5
    invoke-static {}, Lcom/ardor3d/math/MathUtils;->nextRandomDouble()D

    move-result-wide v5

    invoke-static {}, Lcom/ardor3d/math/MathUtils;->nextRandomDouble()D

    move-result-wide v7

    sget-object v3, Lcom/ardor3d/renderer/IndexMode;->Quads:Lcom/ardor3d/renderer/IndexMode;

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    if-eq v4, v3, :cond_6

    sget-object v3, Lcom/ardor3d/renderer/IndexMode;->QuadStrip:Lcom/ardor3d/renderer/IndexMode;

    if-eq v4, v3, :cond_6

    add-double v3, v5, v7

    cmpl-double v3, v3, v9

    if-lez v3, :cond_6

    sub-double v5, v9, v5

    sub-double v7, v9, v7

    :cond_6
    sub-double/2addr v9, v5

    sub-double/2addr v9, v7

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/ardor3d/util/geom/BufferUtils;->populateFromBuffer(Lcom/ardor3d/math/Vector3;Ljava/nio/FloatBuffer;I)V

    invoke-virtual {v3, v9, v10}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, v3}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-static {v3, v2, v1}, Lcom/ardor3d/util/geom/BufferUtils;->populateFromBuffer(Lcom/ardor3d/math/Vector3;Ljava/nio/FloatBuffer;I)V

    invoke-virtual {v3, v5, v6}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, v3}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-static {v3, v1, v0}, Lcom/ardor3d/util/geom/BufferUtils;->populateFromBuffer(Lcom/ardor3d/math/Vector3;Ljava/nio/FloatBuffer;I)V

    invoke-virtual {v3, v7, v8}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, v3}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    invoke-static {v3}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    :goto_1
    return-object p1

    :cond_7
    :goto_2
    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public randomVertex(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_vertexCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Lcom/ardor3d/math/Vector3;

    invoke-direct {p1}, Lcom/ardor3d/math/Vector3;-><init>()V

    :cond_1
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/ardor3d/math/MathUtils;->nextRandomInt(II)I

    move-result v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/MeshData;->_vertexCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    invoke-static {p1, v1, v0}, Lcom/ardor3d/util/geom/BufferUtils;->populateFromBuffer(Lcom/ardor3d/math/Vector3;Ljava/nio/FloatBuffer;I)V

    return-object p1
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "vertexCount"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_vertexCount:I

    const-string v0, "vertexBuffer"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/scenegraph/FloatBufferData;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_vertexCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    const-string v0, "normalBuffer"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/scenegraph/FloatBufferData;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_normalCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    const-string v0, "colorBuffer"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/scenegraph/FloatBufferData;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_colorCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    const-string v0, "fogBuffer"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/scenegraph/FloatBufferData;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_fogCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    const-string v0, "tangentBuffer"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/scenegraph/FloatBufferData;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_tangentCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    const-string v2, "textureCoords"

    invoke-interface {p1, v2, v0}, Lcom/ardor3d/util/export/InputCapsule;->readSavableList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_textureCoords:Ljava/util/List;

    const-string v0, "indexBuffer"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/scenegraph/IndexBufferData;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_indexBuffer:Lcom/ardor3d/scenegraph/IndexBufferData;

    const-string v0, "interleaved"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/scenegraph/FloatBufferData;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_interleaved:Lcom/ardor3d/scenegraph/FloatBufferData;

    const-string v0, "indexLengths"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_indexLengths:[I

    sget-object v0, Lcom/ardor3d/renderer/IndexMode;->Triangles:Lcom/ardor3d/renderer/IndexMode;

    filled-new-array {v0}, [Lcom/ardor3d/renderer/IndexMode;

    move-result-object v0

    const-string v1, "indexModes"

    const-class v2, Lcom/ardor3d/renderer/IndexMode;

    invoke-interface {p1, v1, v2, v0}, Lcom/ardor3d/util/export/InputCapsule;->readEnumArray(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Enum;)[Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, [Lcom/ardor3d/renderer/IndexMode;

    iput-object p1, p0, Lcom/ardor3d/scenegraph/MeshData;->_indexModes:[Lcom/ardor3d/renderer/IndexMode;

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/MeshData;->updatePrimitiveCounts()V

    return-void
.end method

.method public rotateNormals(Lcom/ardor3d/math/Quaternion;)V
    .locals 3

    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/ardor3d/scenegraph/MeshData;->_vertexCount:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/ardor3d/scenegraph/MeshData;->_normalCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/FloatBuffer;

    invoke-static {v0, v2, v1}, Lcom/ardor3d/util/geom/BufferUtils;->populateFromBuffer(Lcom/ardor3d/math/Vector3;Ljava/nio/FloatBuffer;I)V

    invoke-virtual {p1, v0, v0}, Lcom/ardor3d/math/Quaternion;->apply(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/MeshData;->_normalCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/FloatBuffer;

    invoke-static {v0, v2, v1}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public rotatePoints(Lcom/ardor3d/math/Quaternion;)V
    .locals 3

    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/ardor3d/scenegraph/MeshData;->_vertexCount:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/ardor3d/scenegraph/MeshData;->_vertexCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/FloatBuffer;

    invoke-static {v0, v2, v1}, Lcom/ardor3d/util/geom/BufferUtils;->populateFromBuffer(Lcom/ardor3d/math/Vector3;Ljava/nio/FloatBuffer;I)V

    invoke-virtual {p1, v0, v0}, Lcom/ardor3d/math/Quaternion;->apply(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/MeshData;->_vertexCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/FloatBuffer;

    invoke-static {v0, v2, v1}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setColorBuffer(Ljava/nio/FloatBuffer;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ardor3d/scenegraph/MeshData;->_colorCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/ardor3d/scenegraph/FloatBufferData;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lcom/ardor3d/scenegraph/FloatBufferData;-><init>(Ljava/nio/FloatBuffer;I)V

    iput-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_colorCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    :goto_0
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/MeshData;->refreshInterleaved()V

    return-void
.end method

.method public setColorCoords(Lcom/ardor3d/scenegraph/FloatBufferData;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/scenegraph/MeshData;->_colorCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/MeshData;->refreshInterleaved()V

    return-void
.end method

.method public setFogBuffer(Ljava/nio/FloatBuffer;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ardor3d/scenegraph/MeshData;->_fogCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/ardor3d/scenegraph/FloatBufferData;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/ardor3d/scenegraph/FloatBufferData;-><init>(Ljava/nio/FloatBuffer;I)V

    iput-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_fogCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    :goto_0
    return-void
.end method

.method public setFogCoords(Lcom/ardor3d/scenegraph/FloatBufferData;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/scenegraph/MeshData;->_fogCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    return-void
.end method

.method public setIndexBuffer(Ljava/nio/ByteBuffer;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/ardor3d/scenegraph/MeshData;->_indexBuffer:Lcom/ardor3d/scenegraph/IndexBufferData;

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Lcom/ardor3d/scenegraph/ByteBufferData;

    invoke-direct {v0, p1}, Lcom/ardor3d/scenegraph/ByteBufferData;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_indexBuffer:Lcom/ardor3d/scenegraph/IndexBufferData;

    .line 11
    :goto_0
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/MeshData;->updatePrimitiveCounts()V

    .line 12
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/MeshData;->refreshInterleaved()V

    return-void
.end method

.method public setIndexBuffer(Ljava/nio/IntBuffer;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/ardor3d/scenegraph/MeshData;->_indexBuffer:Lcom/ardor3d/scenegraph/IndexBufferData;

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/ardor3d/scenegraph/IntBufferData;

    invoke-direct {v0, p1}, Lcom/ardor3d/scenegraph/IntBufferData;-><init>(Ljava/nio/IntBuffer;)V

    iput-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_indexBuffer:Lcom/ardor3d/scenegraph/IndexBufferData;

    .line 3
    :goto_0
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/MeshData;->updatePrimitiveCounts()V

    .line 4
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/MeshData;->refreshInterleaved()V

    return-void
.end method

.method public setIndexBuffer(Ljava/nio/ShortBuffer;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/ardor3d/scenegraph/MeshData;->_indexBuffer:Lcom/ardor3d/scenegraph/IndexBufferData;

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/ardor3d/scenegraph/ShortBufferData;

    invoke-direct {v0, p1}, Lcom/ardor3d/scenegraph/ShortBufferData;-><init>(Ljava/nio/ShortBuffer;)V

    iput-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_indexBuffer:Lcom/ardor3d/scenegraph/IndexBufferData;

    .line 7
    :goto_0
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/MeshData;->updatePrimitiveCounts()V

    .line 8
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/MeshData;->refreshInterleaved()V

    return-void
.end method

.method public setIndexLengths([I)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/scenegraph/MeshData;->_indexLengths:[I

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/MeshData;->updatePrimitiveCounts()V

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/MeshData;->refreshInterleaved()V

    return-void
.end method

.method public setIndexMode(Lcom/ardor3d/renderer/IndexMode;)V
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_indexModes:[Lcom/ardor3d/renderer/IndexMode;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/MeshData;->updatePrimitiveCounts()V

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/MeshData;->refreshInterleaved()V

    return-void
.end method

.method public setIndexModes([Lcom/ardor3d/renderer/IndexMode;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/scenegraph/MeshData;->_indexModes:[Lcom/ardor3d/renderer/IndexMode;

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/MeshData;->updatePrimitiveCounts()V

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/MeshData;->refreshInterleaved()V

    return-void
.end method

.method public setIndices(Lcom/ardor3d/scenegraph/IndexBufferData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/scenegraph/IndexBufferData<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ardor3d/scenegraph/MeshData;->_indexBuffer:Lcom/ardor3d/scenegraph/IndexBufferData;

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/MeshData;->updatePrimitiveCounts()V

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/MeshData;->refreshInterleaved()V

    return-void
.end method

.method public setInterleavedData(Lcom/ardor3d/scenegraph/FloatBufferData;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/scenegraph/MeshData;->_interleaved:Lcom/ardor3d/scenegraph/FloatBufferData;

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/MeshData;->refreshInterleaved()V

    return-void
.end method

.method public setNormalBuffer(Ljava/nio/FloatBuffer;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ardor3d/scenegraph/MeshData;->_normalCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/ardor3d/scenegraph/FloatBufferData;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/ardor3d/scenegraph/FloatBufferData;-><init>(Ljava/nio/FloatBuffer;I)V

    iput-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_normalCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    :goto_0
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/MeshData;->refreshInterleaved()V

    return-void
.end method

.method public setNormalCoords(Lcom/ardor3d/scenegraph/FloatBufferData;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/scenegraph/MeshData;->_normalCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/MeshData;->refreshInterleaved()V

    return-void
.end method

.method public setTangentBuffer(Ljava/nio/FloatBuffer;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ardor3d/scenegraph/MeshData;->_tangentCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/ardor3d/scenegraph/FloatBufferData;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/ardor3d/scenegraph/FloatBufferData;-><init>(Ljava/nio/FloatBuffer;I)V

    iput-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_tangentCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    :goto_0
    return-void
.end method

.method public setTangentCoords(Lcom/ardor3d/scenegraph/FloatBufferData;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/scenegraph/MeshData;->_tangentCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    return-void
.end method

.method public setTextureBuffer(Ljava/nio/FloatBuffer;I)V
    .locals 3

    :goto_0
    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_textureCoords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p2, :cond_0

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_textureCoords:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_textureCoords:Ljava/util/List;

    new-instance v1, Lcom/ardor3d/scenegraph/FloatBufferData;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Lcom/ardor3d/scenegraph/FloatBufferData;-><init>(Ljava/nio/FloatBuffer;I)V

    invoke-interface {v0, p2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/MeshData;->refreshInterleaved()V

    return-void
.end method

.method public setTextureCoords(Lcom/ardor3d/scenegraph/FloatBufferData;I)V
    .locals 2

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_textureCoords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_textureCoords:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_textureCoords:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/MeshData;->refreshInterleaved()V

    return-void
.end method

.method public setTextureCoords(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ardor3d/scenegraph/FloatBufferData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ardor3d/scenegraph/MeshData;->_textureCoords:Ljava/util/List;

    .line 2
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/MeshData;->refreshInterleaved()V

    return-void
.end method

.method public setVBOInterleavedID(Ljava/lang/Object;I)V
    .locals 2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_vboIdCache:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/O1;

    invoke-direct {v0}, Lcom/google/common/collect/O1;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/O1;->g(I)Lcom/google/common/collect/O1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/O1;->l()Lcom/google/common/collect/O1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/O1;->i()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_vboIdCache:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_vboIdCache:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "vboId must != 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setVertexBuffer(Ljava/nio/FloatBuffer;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/ardor3d/scenegraph/MeshData;->setVertexCoords(Lcom/ardor3d/scenegraph/FloatBufferData;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/ardor3d/scenegraph/FloatBufferData;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/ardor3d/scenegraph/FloatBufferData;-><init>(Ljava/nio/FloatBuffer;I)V

    invoke-virtual {p0, v0}, Lcom/ardor3d/scenegraph/MeshData;->setVertexCoords(Lcom/ardor3d/scenegraph/FloatBufferData;)V

    :goto_0
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/MeshData;->refreshInterleaved()V

    return-void
.end method

.method public setVertexCoords(Lcom/ardor3d/scenegraph/FloatBufferData;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/scenegraph/MeshData;->_vertexCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/MeshData;->updateVertexCount()V

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/MeshData;->refreshInterleaved()V

    return-void
.end method

.method public transformNormals(Lcom/ardor3d/math/Transform;Z)V
    .locals 3

    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/ardor3d/scenegraph/MeshData;->_vertexCount:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/ardor3d/scenegraph/MeshData;->_normalCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/FloatBuffer;

    invoke-static {v0, v2, v1}, Lcom/ardor3d/util/geom/BufferUtils;->populateFromBuffer(Lcom/ardor3d/math/Vector3;Ljava/nio/FloatBuffer;I)V

    invoke-virtual {p1, v0, v0}, Lcom/ardor3d/math/Transform;->applyForwardVector(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    :cond_0
    iget-object v2, p0, Lcom/ardor3d/scenegraph/MeshData;->_normalCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/FloatBuffer;

    invoke-static {v0, v2, v1}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public transformVertices(Lcom/ardor3d/math/Transform;)V
    .locals 3

    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/ardor3d/scenegraph/MeshData;->_vertexCount:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/ardor3d/scenegraph/MeshData;->_vertexCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/FloatBuffer;

    invoke-static {v0, v2, v1}, Lcom/ardor3d/util/geom/BufferUtils;->populateFromBuffer(Lcom/ardor3d/math/Vector3;Ljava/nio/FloatBuffer;I)V

    invoke-virtual {p1, v0, v0}, Lcom/ardor3d/math/Transform;->applyForward(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/MeshData;->_vertexCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/FloatBuffer;

    invoke-static {v0, v2, v1}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public translatePoints(DDD)V
    .locals 8

    .line 1
    new-instance v7, Lcom/ardor3d/math/Vector3;

    move-object v0, v7

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    invoke-virtual {p0, v7}, Lcom/ardor3d/scenegraph/MeshData;->translatePoints(Lcom/ardor3d/math/Vector3;)V

    return-void
.end method

.method public translatePoints(Lcom/ardor3d/math/Vector3;)V
    .locals 2

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lcom/ardor3d/scenegraph/MeshData;->_vertexCount:I

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/ardor3d/scenegraph/MeshData;->_vertexCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    invoke-static {p1, v1, v0}, Lcom/ardor3d/util/geom/BufferUtils;->addInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateVertexCount()V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_vertexCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_vertexCount:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/FloatBufferData;->getTupleCount()I

    move-result v0

    iput v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_vertexCount:I

    :goto_0
    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_indexBuffer:Lcom/ardor3d/scenegraph/IndexBufferData;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/MeshData;->updatePrimitiveCounts()V

    :cond_1
    return-void
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_vertexCount:I

    const-string v1, "vertexCount"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_vertexCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    const-string v1, "vertexBuffer"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_normalCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    const-string v1, "normalBuffer"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_colorCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    const-string v1, "colorBuffer"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_fogCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    const-string v1, "fogBuffer"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_tangentCoords:Lcom/ardor3d/scenegraph/FloatBufferData;

    const-string v1, "tangentBuffer"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_textureCoords:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    const-string v3, "textureCoords"

    invoke-interface {p1, v0, v3, v1}, Lcom/ardor3d/util/export/OutputCapsule;->writeSavableList(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_indexBuffer:Lcom/ardor3d/scenegraph/IndexBufferData;

    check-cast v0, Lcom/ardor3d/util/export/Savable;

    const-string v1, "indexBuffer"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_interleaved:Lcom/ardor3d/scenegraph/FloatBufferData;

    const-string v1, "interleaved"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_indexLengths:[I

    const-string v1, "indexLengths"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write([ILjava/lang/String;[I)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/MeshData;->_indexModes:[Lcom/ardor3d/renderer/IndexMode;

    const-string v1, "indexModes"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write([Ljava/lang/Enum;Ljava/lang/String;)V

    return-void
.end method
