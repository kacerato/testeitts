.class public Lcom/ardor3d/image/Image;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/ardor3d/util/export/Savable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field protected _depth:I

.field protected _format:Lcom/ardor3d/image/ImageDataFormat;

.field protected _height:I

.field protected _mipMapSizes:[I

.field protected _type:Lcom/ardor3d/image/ImageDataType;

.field protected _width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/ardor3d/image/ImageDataFormat;->RGBA:Lcom/ardor3d/image/ImageDataFormat;

    iput-object v0, p0, Lcom/ardor3d/image/Image;->_format:Lcom/ardor3d/image/ImageDataFormat;

    .line 3
    sget-object v0, Lcom/ardor3d/image/ImageDataType;->UnsignedByte:Lcom/ardor3d/image/ImageDataType;

    iput-object v0, p0, Lcom/ardor3d/image/Image;->_type:Lcom/ardor3d/image/ImageDataType;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/ardor3d/image/Image;->_data:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/image/ImageDataFormat;Lcom/ardor3d/image/ImageDataType;IILjava/nio/ByteBuffer;[I)V
    .locals 7

    .line 16
    filled-new-array {p5}, [Ljava/nio/ByteBuffer;

    move-result-object p5

    invoke-static {p5}, Lcom/google/common/collect/M1;->t([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/ardor3d/image/Image;-><init>(Lcom/ardor3d/image/ImageDataFormat;Lcom/ardor3d/image/ImageDataType;IILjava/util/List;[I)V

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/image/ImageDataFormat;Lcom/ardor3d/image/ImageDataType;IILjava/util/List;[I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/image/ImageDataFormat;",
            "Lcom/ardor3d/image/ImageDataType;",
            "II",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;[I)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-object v0, Lcom/ardor3d/image/ImageDataFormat;->RGBA:Lcom/ardor3d/image/ImageDataFormat;

    iput-object v0, p0, Lcom/ardor3d/image/Image;->_format:Lcom/ardor3d/image/ImageDataFormat;

    .line 7
    sget-object v0, Lcom/ardor3d/image/ImageDataType;->UnsignedByte:Lcom/ardor3d/image/ImageDataType;

    iput-object v0, p0, Lcom/ardor3d/image/Image;->_type:Lcom/ardor3d/image/ImageDataType;

    if-eqz p6, :cond_0

    .line 8
    array-length v0, p6

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const/4 p6, 0x0

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ardor3d/image/Image;->setDataFormat(Lcom/ardor3d/image/ImageDataFormat;)V

    .line 10
    invoke-virtual {p0, p2}, Lcom/ardor3d/image/Image;->setDataType(Lcom/ardor3d/image/ImageDataType;)V

    .line 11
    invoke-virtual {p0, p5}, Lcom/ardor3d/image/Image;->setData(Ljava/util/List;)V

    .line 12
    iput p3, p0, Lcom/ardor3d/image/Image;->_width:I

    .line 13
    iput p4, p0, Lcom/ardor3d/image/Image;->_height:I

    .line 14
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/ardor3d/image/Image;->_depth:I

    .line 15
    iput-object p6, p0, Lcom/ardor3d/image/Image;->_mipMapSizes:[I

    return-void
.end method


# virtual methods
.method public addData(Ljava/nio/ByteBuffer;)V
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/image/Image;->_data:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/ardor3d/image/Image;->_data:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/image/Image;->_data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/ardor3d/image/Image;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/ardor3d/image/Image;

    invoke-virtual {p0}, Lcom/ardor3d/image/Image;->getDataFormat()Lcom/ardor3d/image/ImageDataFormat;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ardor3d/image/Image;->getDataFormat()Lcom/ardor3d/image/ImageDataFormat;

    move-result-object v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/ardor3d/image/Image;->getDataType()Lcom/ardor3d/image/ImageDataType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ardor3d/image/Image;->getDataType()Lcom/ardor3d/image/ImageDataType;

    move-result-object v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/ardor3d/image/Image;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/ardor3d/image/Image;->getWidth()I

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/ardor3d/image/Image;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/ardor3d/image/Image;->getHeight()I

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/ardor3d/image/Image;->getData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ardor3d/image/Image;->getData()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/ardor3d/image/Image;->getMipMapByteSizes()[I

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/ardor3d/image/Image;->getMipMapByteSizes()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/ardor3d/image/Image;->getMipMapByteSizes()[I

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/ardor3d/image/Image;->getMipMapByteSizes()[I

    move-result-object v1

    if-nez v1, :cond_8

    invoke-virtual {p1}, Lcom/ardor3d/image/Image;->getMipMapByteSizes()[I

    move-result-object p1

    if-eqz p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public getClassTag()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ardor3d/image/Image;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getData(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ardor3d/image/Image;->_data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ardor3d/image/Image;->_data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/ardor3d/image/Image;->_data:Ljava/util/List;

    return-object v0
.end method

.method public getDataFormat()Lcom/ardor3d/image/ImageDataFormat;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Image;->_format:Lcom/ardor3d/image/ImageDataFormat;

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Image;->_data:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDataType()Lcom/ardor3d/image/ImageDataType;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Image;->_type:Lcom/ardor3d/image/ImageDataType;

    return-object v0
.end method

.method public getDepth()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/image/Image;->_depth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/image/Image;->_height:I

    return v0
.end method

.method public getMipMapByteSizes()[I
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Image;->_mipMapSizes:[I

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/image/Image;->_width:I

    return v0
.end method

.method public hasMipmaps()Z
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Image;->_mipMapSizes:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lcom/ardor3d/image/ImageDataFormat;

    sget-object v1, Lcom/ardor3d/image/ImageDataFormat;->RGBA:Lcom/ardor3d/image/ImageDataFormat;

    const-string v2, "dataformat"

    invoke-interface {p1, v2, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/image/ImageDataFormat;

    iput-object v0, p0, Lcom/ardor3d/image/Image;->_format:Lcom/ardor3d/image/ImageDataFormat;

    const-class v0, Lcom/ardor3d/image/ImageDataType;

    sget-object v1, Lcom/ardor3d/image/ImageDataType;->UnsignedByte:Lcom/ardor3d/image/ImageDataType;

    const-string v2, "datatype"

    invoke-interface {p1, v2, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/image/ImageDataType;

    iput-object v0, p0, Lcom/ardor3d/image/Image;->_type:Lcom/ardor3d/image/ImageDataType;

    const-string v0, "width"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ardor3d/image/Image;->_width:I

    const-string v0, "height"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ardor3d/image/Image;->_height:I

    const-string v0, "depth"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ardor3d/image/Image;->_depth:I

    const-string v0, "mipMapSizes"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/image/Image;->_mipMapSizes:[I

    const-string v0, "data"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readByteBufferList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/ardor3d/image/Image;->_data:Ljava/util/List;

    return-void
.end method

.method public setData(ILjava/nio/ByteBuffer;)V
    .locals 2

    if-ltz p1, :cond_1

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/ardor3d/image/Image;->_data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/ardor3d/image/Image;->_data:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ardor3d/image/Image;->_data:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index must be greater than or equal to 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setData(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 3
    filled-new-array {p1}, [Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/M1;->t([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/ardor3d/image/Image;->_data:Ljava/util/List;

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/ardor3d/image/Image;->_data:Ljava/util/List;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "data may not be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDataFormat(Lcom/ardor3d/image/ImageDataFormat;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/image/Image;->_format:Lcom/ardor3d/image/ImageDataFormat;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "format may not be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDataType(Lcom/ardor3d/image/ImageDataType;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/image/Image;->_type:Lcom/ardor3d/image/ImageDataType;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "type may not be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDepth(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/image/Image;->_depth:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/image/Image;->_height:I

    return-void
.end method

.method public setMipMapByteSizes([I)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lcom/ardor3d/image/Image;->_mipMapSizes:[I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/image/Image;->_width:I

    return-void
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/image/Image;->_format:Lcom/ardor3d/image/ImageDataFormat;

    const-string v1, "dataformat"

    sget-object v2, Lcom/ardor3d/image/ImageDataFormat;->RGBA:Lcom/ardor3d/image/ImageDataFormat;

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/image/Image;->_type:Lcom/ardor3d/image/ImageDataType;

    const-string v1, "datatype"

    sget-object v2, Lcom/ardor3d/image/ImageDataType;->UnsignedByte:Lcom/ardor3d/image/ImageDataType;

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget v0, p0, Lcom/ardor3d/image/Image;->_width:I

    const-string v1, "width"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/ardor3d/image/Image;->_height:I

    const-string v1, "height"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/ardor3d/image/Image;->_depth:I

    const-string v1, "depth"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/ardor3d/image/Image;->_mipMapSizes:[I

    const-string v1, "mipMapSizes"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write([ILjava/lang/String;[I)V

    iget-object v0, p0, Lcom/ardor3d/image/Image;->_data:Ljava/util/List;

    const-string v1, "data"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->writeByteBufferList(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
