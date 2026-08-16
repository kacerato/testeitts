.class Lcom/jme3/font/BitmapTextPage;
.super Lcom/jme3/scene/Geometry;
.source "SourceFile"


# instance fields
.field private final color:[B

.field private final idx:[S

.field private final page:I

.field private final pageQuads:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/jme3/font/LetterQuad;",
            ">;"
        }
    .end annotation
.end field

.field private final pos:[F

.field private final tc:[F

.field private final texture:Lcom/jme3/texture/Texture2D;


# direct methods
.method public constructor <init>(Lcom/jme3/font/BitmapFont;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0, v0}, Lcom/jme3/font/BitmapTextPage;-><init>(Lcom/jme3/font/BitmapFont;ZI)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/font/BitmapFont;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, p2, v0}, Lcom/jme3/font/BitmapTextPage;-><init>(Lcom/jme3/font/BitmapFont;ZI)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/font/BitmapFont;ZI)V
    .locals 3

    .line 1
    new-instance p2, Lcom/jme3/scene/Mesh;

    invoke-direct {p2}, Lcom/jme3/scene/Mesh;-><init>()V

    const-string v0, "BitmapFont"

    invoke-direct {p0, v0, p2}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    .line 2
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/jme3/font/BitmapTextPage;->pageQuads:Ljava/util/LinkedList;

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p0, p2}, Lcom/jme3/scene/Spatial;->setRequiresUpdates(Z)V

    .line 4
    sget-object v0, Lcom/jme3/scene/Spatial$BatchHint;->Never:Lcom/jme3/scene/Spatial$BatchHint;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Spatial;->setBatchHint(Lcom/jme3/scene/Spatial$BatchHint;)V

    if-eqz p1, :cond_1

    .line 5
    iput p3, p0, Lcom/jme3/font/BitmapTextPage;->page:I

    .line 6
    invoke-virtual {p1, p3}, Lcom/jme3/font/BitmapFont;->getPage(I)Lcom/jme3/material/Material;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    .line 8
    const-string p3, "ColorMap"

    invoke-virtual {p1, p3}, Lcom/jme3/material/Material;->getTextureParam(Ljava/lang/String;)Lcom/jme3/material/MatParamTexture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/material/MatParamTexture;->getTextureValue()Lcom/jme3/texture/Texture;

    move-result-object p1

    check-cast p1, Lcom/jme3/texture/Texture2D;

    iput-object p1, p0, Lcom/jme3/font/BitmapTextPage;->texture:Lcom/jme3/texture/Texture2D;

    .line 9
    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object p1

    .line 10
    sget-object p3, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    new-array v0, p2, [F

    const/4 v1, 0x3

    invoke-virtual {p1, p3, v1, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[F)V

    .line 11
    sget-object p3, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v0, 0x2

    new-array v2, p2, [F

    invoke-virtual {p1, p3, v0, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[F)V

    .line 12
    sget-object p3, Lcom/jme3/scene/VertexBuffer$Type;->Color:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v0, 0x4

    new-array v2, p2, [B

    invoke-virtual {p1, p3, v0, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[B)V

    .line 13
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    new-array p2, p2, [S

    invoke-virtual {p1, v0, v1, p2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[S)V

    .line 14
    invoke-virtual {p1, p3}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/jme3/scene/VertexBuffer;->setNormalized(Z)V

    const/16 p1, 0xc

    .line 15
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/jme3/font/BitmapTextPage;->pos:[F

    const/16 p1, 0x8

    .line 16
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/jme3/font/BitmapTextPage;->tc:[F

    const/4 p1, 0x6

    .line 17
    new-array p1, p1, [S

    iput-object p1, p0, Lcom/jme3/font/BitmapTextPage;->idx:[S

    const/16 p1, 0x10

    .line 18
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/jme3/font/BitmapTextPage;->color:[B

    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The font\'s texture was not found!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "font cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public assemble(Lcom/jme3/font/Letters;)V
    .locals 14

    iget-object v0, p0, Lcom/jme3/font/BitmapTextPage;->pageQuads:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    invoke-virtual {p1}, Lcom/jme3/font/Letters;->rewind()V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/jme3/font/Letters;->nextCharacter()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/jme3/font/Letters;->isPrintable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/jme3/font/Letters;->getCharacterSetPage()I

    move-result v0

    iget v1, p0, Lcom/jme3/font/BitmapTextPage;->page:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/jme3/font/BitmapTextPage;->pageQuads:Ljava/util/LinkedList;

    invoke-virtual {p1}, Lcom/jme3/font/Letters;->getQuad()Lcom/jme3/font/LetterQuad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/font/BitmapTextPage;->pageQuads:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/jme3/font/BitmapTextPage;->pageQuads:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p1, v2}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v2

    sget-object v3, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p1, v3}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v3

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p1, v4}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v4

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Type;->Color:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p1, v5}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v5

    invoke-virtual {v2}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v6

    check-cast v6, Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/FloatBuffer;

    invoke-virtual {v4}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v8

    check-cast v8, Ljava/nio/ShortBuffer;

    invoke-virtual {v5}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    mul-int/lit8 v10, v0, 0xc

    invoke-static {v6, v10}, Lcom/jme3/util/BufferUtils;->ensureLargeEnough(Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v2, v6}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    invoke-virtual {v7}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    mul-int/lit8 v2, v0, 0x8

    invoke-static {v7, v2}, Lcom/jme3/util/BufferUtils;->ensureLargeEnough(Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v3, v7}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    mul-int/lit8 v0, v0, 0x10

    invoke-static {v9, v0}, Lcom/jme3/util/BufferUtils;->ensureLargeEnough(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v5, v2}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    invoke-virtual {v8}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    mul-int/lit8 v1, v1, 0x6

    invoke-static {v8, v1}, Lcom/jme3/util/BufferUtils;->ensureLargeEnough(Ljava/nio/ShortBuffer;I)Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v4, v0}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->updateCounts()V

    iget-object p1, p0, Lcom/jme3/font/BitmapTextPage;->pos:[F

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    :goto_1
    iget-object p1, p0, Lcom/jme3/font/BitmapTextPage;->pageQuads:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-ge v1, p1, :cond_3

    iget-object p1, p0, Lcom/jme3/font/BitmapTextPage;->pageQuads:Ljava/util/LinkedList;

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Lcom/jme3/font/LetterQuad;

    iget-object v9, p0, Lcom/jme3/font/BitmapTextPage;->pos:[F

    iget-object v10, p0, Lcom/jme3/font/BitmapTextPage;->tc:[F

    iget-object v11, p0, Lcom/jme3/font/BitmapTextPage;->idx:[S

    iget-object v12, p0, Lcom/jme3/font/BitmapTextPage;->color:[B

    move v13, v1

    invoke-virtual/range {v8 .. v13}, Lcom/jme3/font/LetterQuad;->storeToArrays([F[F[S[BI)V

    iget-object p1, p0, Lcom/jme3/font/BitmapTextPage;->pos:[F

    invoke-virtual {v6, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object p1, p0, Lcom/jme3/font/BitmapTextPage;->tc:[F

    invoke-virtual {v7, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object p1, p0, Lcom/jme3/font/BitmapTextPage;->idx:[S

    invoke-virtual {v0, p1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    iget-object p1, p0, Lcom/jme3/font/BitmapTextPage;->color:[B

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/jme3/font/BitmapTextPage;->pageQuads:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-ge v1, p1, :cond_3

    iget-object p1, p0, Lcom/jme3/font/BitmapTextPage;->pageQuads:Ljava/util/LinkedList;

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/font/LetterQuad;

    invoke-virtual {p1, v6}, Lcom/jme3/font/LetterQuad;->appendPositions(Ljava/nio/FloatBuffer;)V

    invoke-virtual {p1, v7}, Lcom/jme3/font/LetterQuad;->appendTexCoords(Ljava/nio/FloatBuffer;)V

    invoke-virtual {p1, v0, v1}, Lcom/jme3/font/LetterQuad;->appendIndices(Ljava/nio/ShortBuffer;I)V

    invoke-virtual {p1, v2}, Lcom/jme3/font/LetterQuad;->appendColors(Ljava/nio/ByteBuffer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v7}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->updateModelBound()V

    return-void
.end method

.method public bridge synthetic clone()Lcom/jme3/asset/CloneableSmartAsset;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/font/BitmapTextPage;->clone()Lcom/jme3/font/BitmapTextPage;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/jme3/font/BitmapTextPage;
    .locals 1

    .line 5
    invoke-super {p0}, Lcom/jme3/scene/Geometry;->clone()Lcom/jme3/scene/Geometry;

    move-result-object v0

    check-cast v0, Lcom/jme3/font/BitmapTextPage;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/jme3/scene/Geometry;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/jme3/font/BitmapTextPage;->clone()Lcom/jme3/font/BitmapTextPage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/jme3/scene/Spatial;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/jme3/font/BitmapTextPage;->clone()Lcom/jme3/font/BitmapTextPage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lcom/jme3/font/BitmapTextPage;->clone()Lcom/jme3/font/BitmapTextPage;

    move-result-object v0

    return-object v0
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    invoke-super {p0, p1, p2}, Lcom/jme3/scene/Geometry;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    if-ne p1, v0, :cond_0

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->deepClone()Lcom/jme3/scene/Mesh;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    :cond_0
    return-void
.end method

.method public getTexture()Lcom/jme3/texture/Texture2D;
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/BitmapTextPage;->texture:Lcom/jme3/texture/Texture2D;

    return-object v0
.end method
