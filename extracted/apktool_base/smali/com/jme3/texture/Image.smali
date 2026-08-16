.class public Lcom/jme3/texture/Image;
.super Lcom/jme3/util/NativeObject;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/texture/Image$Format;
    }
.end annotation


# instance fields
.field protected colorSpace:Lcom/jme3/texture/image/ColorSpace;

.field protected data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field protected depth:I

.field protected format:Lcom/jme3/texture/Image$Format;

.field protected height:I

.field protected lastTextureState:Lcom/jme3/texture/image/LastTextureState;

.field protected mipMapSizes:[I

.field protected mipsWereGenerated:Z

.field protected multiSamples:I

.field protected needGeneratedMips:Z

.field protected width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/jme3/util/NativeObject;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/jme3/texture/Image;->multiSamples:I

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/jme3/texture/Image;->colorSpace:Lcom/jme3/texture/image/ColorSpace;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/jme3/texture/Image;->mipsWereGenerated:Z

    .line 5
    iput-boolean v1, p0, Lcom/jme3/texture/Image;->needGeneratedMips:Z

    .line 6
    new-instance v1, Lcom/jme3/texture/image/LastTextureState;

    invoke-direct {v1}, Lcom/jme3/texture/image/LastTextureState;-><init>()V

    iput-object v1, p0, Lcom/jme3/texture/Image;->lastTextureState:Lcom/jme3/texture/image/LastTextureState;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/jme3/texture/Image;->data:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/jme3/util/NativeObject;-><init>(I)V

    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lcom/jme3/texture/Image;->multiSamples:I

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/jme3/texture/Image;->colorSpace:Lcom/jme3/texture/image/ColorSpace;

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/jme3/texture/Image;->mipsWereGenerated:Z

    .line 12
    iput-boolean p1, p0, Lcom/jme3/texture/Image;->needGeneratedMips:Z

    .line 13
    new-instance p1, Lcom/jme3/texture/image/LastTextureState;

    invoke-direct {p1}, Lcom/jme3/texture/image/LastTextureState;-><init>()V

    iput-object p1, p0, Lcom/jme3/texture/Image;->lastTextureState:Lcom/jme3/texture/image/LastTextureState;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/texture/Image$Format;IIILjava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/texture/Image$Format;",
            "III",
            "Ljava/util/ArrayList<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    sget-object v6, Lcom/jme3/texture/image/ColorSpace;->Linear:Lcom/jme3/texture/image/ColorSpace;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/jme3/texture/Image;-><init>(Lcom/jme3/texture/Image$Format;IIILjava/util/ArrayList;Lcom/jme3/texture/image/ColorSpace;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/texture/Image$Format;IIILjava/util/ArrayList;Lcom/jme3/texture/image/ColorSpace;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/texture/Image$Format;",
            "III",
            "Ljava/util/ArrayList<",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Lcom/jme3/texture/image/ColorSpace;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v7, p6

    .line 38
    invoke-direct/range {v0 .. v7}, Lcom/jme3/texture/Image;-><init>(Lcom/jme3/texture/Image$Format;IIILjava/util/ArrayList;[ILcom/jme3/texture/image/ColorSpace;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/texture/Image$Format;IIILjava/util/ArrayList;[I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/texture/Image$Format;",
            "III",
            "Ljava/util/ArrayList<",
            "Ljava/nio/ByteBuffer;",
            ">;[I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 25
    sget-object v7, Lcom/jme3/texture/image/ColorSpace;->Linear:Lcom/jme3/texture/image/ColorSpace;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/jme3/texture/Image;-><init>(Lcom/jme3/texture/Image$Format;IIILjava/util/ArrayList;[ILcom/jme3/texture/image/ColorSpace;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/texture/Image$Format;IIILjava/util/ArrayList;[ILcom/jme3/texture/image/ColorSpace;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/texture/Image$Format;",
            "III",
            "Ljava/util/ArrayList<",
            "Ljava/nio/ByteBuffer;",
            ">;[I",
            "Lcom/jme3/texture/image/ColorSpace;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lcom/jme3/texture/Image;-><init>()V

    if-eqz p6, :cond_1

    .line 15
    array-length v0, p6

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const/4 p6, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/jme3/texture/Image;->needGeneratedMips:Z

    .line 17
    iput-boolean v1, p0, Lcom/jme3/texture/Image;->mipsWereGenerated:Z

    .line 18
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/jme3/texture/Image;->setFormat(Lcom/jme3/texture/Image$Format;)V

    .line 19
    iput p2, p0, Lcom/jme3/texture/Image;->width:I

    .line 20
    iput p3, p0, Lcom/jme3/texture/Image;->height:I

    .line 21
    iput-object p5, p0, Lcom/jme3/texture/Image;->data:Ljava/util/ArrayList;

    .line 22
    iput p4, p0, Lcom/jme3/texture/Image;->depth:I

    .line 23
    iput-object p6, p0, Lcom/jme3/texture/Image;->mipMapSizes:[I

    .line 24
    iput-object p7, p0, Lcom/jme3/texture/Image;->colorSpace:Lcom/jme3/texture/image/ColorSpace;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/texture/Image$Format;IILjava/nio/ByteBuffer;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    .line 41
    sget-object v6, Lcom/jme3/texture/image/ColorSpace;->Linear:Lcom/jme3/texture/image/ColorSpace;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/jme3/texture/Image;-><init>(Lcom/jme3/texture/Image$Format;IILjava/nio/ByteBuffer;[ILcom/jme3/texture/image/ColorSpace;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/texture/Image$Format;IILjava/nio/ByteBuffer;Lcom/jme3/texture/image/ColorSpace;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 40
    invoke-direct/range {v0 .. v6}, Lcom/jme3/texture/Image;-><init>(Lcom/jme3/texture/Image$Format;IILjava/nio/ByteBuffer;[ILcom/jme3/texture/image/ColorSpace;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/texture/Image$Format;IILjava/nio/ByteBuffer;[I)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 37
    sget-object v6, Lcom/jme3/texture/image/ColorSpace;->Linear:Lcom/jme3/texture/image/ColorSpace;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/jme3/texture/Image;-><init>(Lcom/jme3/texture/Image$Format;IILjava/nio/ByteBuffer;[ILcom/jme3/texture/image/ColorSpace;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/texture/Image$Format;IILjava/nio/ByteBuffer;[ILcom/jme3/texture/image/ColorSpace;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Lcom/jme3/texture/Image;-><init>()V

    const/4 v0, 0x1

    if-eqz p5, :cond_1

    .line 27
    array-length v1, p5

    if-gt v1, v0, :cond_0

    const/4 p5, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 28
    iput-boolean v1, p0, Lcom/jme3/texture/Image;->needGeneratedMips:Z

    .line 29
    iput-boolean v0, p0, Lcom/jme3/texture/Image;->mipsWereGenerated:Z

    .line 30
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/jme3/texture/Image;->setFormat(Lcom/jme3/texture/Image$Format;)V

    .line 31
    iput p2, p0, Lcom/jme3/texture/Image;->width:I

    .line 32
    iput p3, p0, Lcom/jme3/texture/Image;->height:I

    if-eqz p4, :cond_2

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/jme3/texture/Image;->data:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_2
    iput-object p5, p0, Lcom/jme3/texture/Image;->mipMapSizes:[I

    .line 36
    iput-object p6, p0, Lcom/jme3/texture/Image;->colorSpace:Lcom/jme3/texture/image/ColorSpace;

    return-void
.end method


# virtual methods
.method public addData(Ljava/nio/ByteBuffer;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/texture/Image;->data:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/texture/Image;->data:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/jme3/texture/Image;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->setUpdateNeeded()V

    return-void
.end method

.method public clone()Lcom/jme3/texture/Image;
    .locals 3

    .line 3
    invoke-super {p0}, Lcom/jme3/util/NativeObject;->clone()Lcom/jme3/util/NativeObject;

    move-result-object v0

    check-cast v0, Lcom/jme3/texture/Image;

    .line 4
    iget-object v1, p0, Lcom/jme3/texture/Image;->mipMapSizes:[I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iput-object v1, v0, Lcom/jme3/texture/Image;->mipMapSizes:[I

    .line 5
    iget-object v1, p0, Lcom/jme3/texture/Image;->data:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jme3/texture/Image;->data:Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_1
    iput-object v2, v0, Lcom/jme3/texture/Image;->data:Ljava/util/ArrayList;

    .line 6
    new-instance v1, Lcom/jme3/texture/image/LastTextureState;

    invoke-direct {v1}, Lcom/jme3/texture/image/LastTextureState;-><init>()V

    iput-object v1, v0, Lcom/jme3/texture/Image;->lastTextureState:Lcom/jme3/texture/image/LastTextureState;

    .line 7
    invoke-virtual {v0}, Lcom/jme3/texture/Image;->setUpdateNeeded()V

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/jme3/util/NativeObject;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/texture/Image;->clone()Lcom/jme3/texture/Image;

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

    .line 2
    invoke-virtual {p0}, Lcom/jme3/texture/Image;->clone()Lcom/jme3/texture/Image;

    move-result-object v0

    return-object v0
.end method

.method public createDestructableClone()Lcom/jme3/util/NativeObject;
    .locals 2

    new-instance v0, Lcom/jme3/texture/Image;

    iget v1, p0, Lcom/jme3/util/NativeObject;->id:I

    invoke-direct {v0, v1}, Lcom/jme3/texture/Image;-><init>(I)V

    return-object v0
.end method

.method public deleteNativeBuffers()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/texture/Image;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->destroyDirectBuffer(Ljava/nio/Buffer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public deleteObject(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/jme3/renderer/Renderer;

    invoke-interface {p1, p0}, Lcom/jme3/renderer/Renderer;->deleteImage(Lcom/jme3/texture/Image;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/jme3/texture/Image;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/jme3/texture/Image;

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getData()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getMipMapSizes()[I

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getMipMapSizes()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getMipMapSizes()[I

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getMipMapSizes()[I

    move-result-object v1

    if-nez v1, :cond_8

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getMipMapSizes()[I

    move-result-object v1

    if-eqz v1, :cond_8

    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getMultiSamples()I

    move-result v1

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getMultiSamples()I

    move-result p1

    if-eq v1, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public getColorSpace()Lcom/jme3/texture/image/ColorSpace;
    .locals 1

    iget-object v0, p0, Lcom/jme3/texture/Image;->colorSpace:Lcom/jme3/texture/image/ColorSpace;

    return-object v0
.end method

.method public getData(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/jme3/texture/Image;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/jme3/texture/Image;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/texture/Image;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDepth()I
    .locals 1

    iget v0, p0, Lcom/jme3/texture/Image;->depth:I

    return v0
.end method

.method public getEfficentData()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Lcom/jme3/texture/Image$Format;
    .locals 1

    iget-object v0, p0, Lcom/jme3/texture/Image;->format:Lcom/jme3/texture/Image$Format;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/jme3/texture/Image;->height:I

    return v0
.end method

.method public getLastTextureState()Lcom/jme3/texture/image/LastTextureState;
    .locals 1

    iget-object v0, p0, Lcom/jme3/texture/Image;->lastTextureState:Lcom/jme3/texture/image/LastTextureState;

    return-object v0
.end method

.method public getMipMapSizes()[I
    .locals 1

    iget-object v0, p0, Lcom/jme3/texture/Image;->mipMapSizes:[I

    return-object v0
.end method

.method public getMultiSamples()I
    .locals 1

    iget v0, p0, Lcom/jme3/texture/Image;->multiSamples:I

    return v0
.end method

.method public getUniqueId()J
    .locals 4

    iget v0, p0, Lcom/jme3/util/NativeObject;->id:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide v2, 0x200000000L

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/jme3/texture/Image;->width:I

    return v0
.end method

.method public hasMipmaps()Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/texture/Image;->mipMapSizes:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/jme3/texture/Image;->format:Lcom/jme3/texture/Image$Format;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v2, 0x2a7

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x61

    iget v0, p0, Lcom/jme3/texture/Image;->width:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x61

    iget v0, p0, Lcom/jme3/texture/Image;->height:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x61

    iget v0, p0, Lcom/jme3/texture/Image;->depth:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x61

    iget-object v0, p0, Lcom/jme3/texture/Image;->mipMapSizes:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x61

    iget-object v0, p0, Lcom/jme3/texture/Image;->data:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x61

    iget v0, p0, Lcom/jme3/texture/Image;->multiSamples:I

    add-int/2addr v2, v0

    return v2
.end method

.method public isGeneratedMipmapsRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/texture/Image;->needGeneratedMips:Z

    return v0
.end method

.method public isMipmapsGenerated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/texture/Image;->mipsWereGenerated:Z

    return v0
.end method

.method public isNPOT()Z
    .locals 2

    iget v0, p0, Lcom/jme3/texture/Image;->width:I

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/jme3/texture/Image;->height:I

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/jme3/math/FastMath;->isPowerOfTwo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jme3/texture/Image;->height:I

    invoke-static {v0}, Lcom/jme3/math/FastMath;->isPowerOfTwo(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-class v0, Lcom/jme3/texture/Image$Format;

    sget-object v1, Lcom/jme3/texture/Image$Format;->RGBA8:Lcom/jme3/texture/Image$Format;

    const-string v2, "format"

    invoke-interface {p1, v2, v0, v1}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/texture/Image$Format;

    iput-object v0, p0, Lcom/jme3/texture/Image;->format:Lcom/jme3/texture/Image$Format;

    const-string v0, "width"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/texture/Image;->width:I

    const-string v0, "height"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/texture/Image;->height:I

    const-string v0, "depth"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/texture/Image;->depth:I

    const-string v0, "mipMapSizes"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/texture/Image;->mipMapSizes:[I

    const-string v0, "multiSamples"

    const/4 v3, 0x1

    invoke-interface {p1, v0, v3}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/texture/Image;->multiSamples:I

    const-string v0, "data"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readByteBufferArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/texture/Image;->data:Ljava/util/ArrayList;

    const-string v0, "colorSpace"

    const-class v4, Lcom/jme3/texture/image/ColorSpace;

    invoke-interface {p1, v0, v4, v2}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/jme3/texture/image/ColorSpace;

    iput-object p1, p0, Lcom/jme3/texture/Image;->colorSpace:Lcom/jme3/texture/image/ColorSpace;

    iget-object p1, p0, Lcom/jme3/texture/Image;->mipMapSizes:[I

    if-eqz p1, :cond_0

    iput-boolean v1, p0, Lcom/jme3/texture/Image;->needGeneratedMips:Z

    iput-boolean v3, p0, Lcom/jme3/texture/Image;->mipsWereGenerated:Z

    :cond_0
    return-void
.end method

.method public resetObject()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/jme3/util/NativeObject;->id:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/texture/Image;->mipsWereGenerated:Z

    iget-object v0, p0, Lcom/jme3/texture/Image;->lastTextureState:Lcom/jme3/texture/image/LastTextureState;

    invoke-virtual {v0}, Lcom/jme3/texture/image/LastTextureState;->reset()V

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->setUpdateNeeded()V

    return-void
.end method

.method public setColorSpace(Lcom/jme3/texture/image/ColorSpace;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/texture/Image;->colorSpace:Lcom/jme3/texture/image/ColorSpace;

    return-void
.end method

.method public setData(ILjava/nio/ByteBuffer;)V
    .locals 2

    if-ltz p1, :cond_1

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/jme3/texture/Image;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/jme3/texture/Image;->data:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/jme3/texture/Image;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/jme3/texture/Image;->setUpdateNeeded()V

    return-void

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index must be greater than or equal to 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setData(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/texture/Image;->data:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lcom/jme3/texture/Image;->setUpdateNeeded()V

    return-void
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/jme3/texture/Image;->data:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Lcom/jme3/texture/Image;->setUpdateNeeded()V

    return-void
.end method

.method public setDepth(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/texture/Image;->depth:I

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->setUpdateNeeded()V

    return-void
.end method

.method public setFormat(Lcom/jme3/texture/Image$Format;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/jme3/texture/Image;->format:Lcom/jme3/texture/Image$Format;

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->setUpdateNeeded()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "format may not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/texture/Image;->height:I

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->setUpdateNeeded()V

    return-void
.end method

.method public setMipMapSizes([I)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    array-length v1, p1

    if-gt v1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lcom/jme3/texture/Image;->mipMapSizes:[I

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lcom/jme3/texture/Image;->needGeneratedMips:Z

    iput-boolean v1, p0, Lcom/jme3/texture/Image;->mipsWereGenerated:Z

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/jme3/texture/Image;->needGeneratedMips:Z

    iput-boolean v1, p0, Lcom/jme3/texture/Image;->mipsWereGenerated:Z

    :goto_0
    invoke-virtual {p0}, Lcom/jme3/texture/Image;->setUpdateNeeded()V

    return-void
.end method

.method public setMipmapsGenerated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/texture/Image;->mipsWereGenerated:Z

    return-void
.end method

.method public setMultiSamples(I)V
    .locals 1

    if-lez p1, :cond_3

    const/4 v0, 0x1

    if-le p1, v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jme3/texture/Image;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->hasMipmaps()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Multisample textures do not support mipmaps"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot upload data as multisample texture"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iput p1, p0, Lcom/jme3/texture/Image;->multiSamples:I

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "multiSamples must be > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNeedGeneratedMipmaps()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/texture/Image;->needGeneratedMips:Z

    return-void
.end method

.method public setUpdateNeeded()V
    .locals 1

    invoke-super {p0}, Lcom/jme3/util/NativeObject;->setUpdateNeeded()V

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->isGeneratedMipmapsRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->hasMipmaps()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jme3/texture/Image;->setMipmapsGenerated(Z)V

    :cond_0
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/texture/Image;->width:I

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->setUpdateNeeded()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/texture/Image;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jme3/texture/Image;->height:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jme3/texture/Image;->depth:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/texture/Image;->depth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ", format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/texture/Image;->format:Lcom/jme3/texture/Image$Format;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->hasMipmaps()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ", mips"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v1

    if-ltz v1, :cond_2

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/util/NativeObject;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/texture/Image;->format:Lcom/jme3/texture/Image$Format;

    const-string v1, "format"

    sget-object v2, Lcom/jme3/texture/Image$Format;->RGBA8:Lcom/jme3/texture/Image$Format;

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget v0, p0, Lcom/jme3/texture/Image;->width:I

    const-string v1, "width"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/texture/Image;->height:I

    const-string v1, "height"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/texture/Image;->depth:I

    const-string v1, "depth"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/jme3/texture/Image;->mipMapSizes:[I

    const-string v1, "mipMapSizes"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write([ILjava/lang/String;[I)V

    iget v0, p0, Lcom/jme3/texture/Image;->multiSamples:I

    const-string v1, "multiSamples"

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/jme3/texture/Image;->data:Ljava/util/ArrayList;

    const-string v1, "data"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->writeByteBufferArrayList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/jme3/texture/Image;->colorSpace:Lcom/jme3/texture/image/ColorSpace;

    const-string v1, "colorSpace"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    return-void
.end method
