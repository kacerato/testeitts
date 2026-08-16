.class public Lcom/ardor3d/input/MouseCursor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SYSTEM_DEFAULT:Lcom/ardor3d/input/MouseCursor;


# instance fields
.field private final _hotspotX:I

.field private final _hotspotY:I

.field private final _image:Lcom/ardor3d/image/Image;

.field private final _name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/ardor3d/input/MouseCursor;

    new-instance v8, Lcom/ardor3d/image/Image;

    sget-object v2, Lcom/ardor3d/image/ImageDataFormat;->RGBA:Lcom/ardor3d/image/ImageDataFormat;

    sget-object v3, Lcom/ardor3d/image/ImageDataType;->UnsignedByte:Lcom/ardor3d/image/ImageDataType;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/ardor3d/util/geom/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/ardor3d/image/Image;-><init>(Lcom/ardor3d/image/ImageDataFormat;Lcom/ardor3d/image/ImageDataType;IILjava/nio/ByteBuffer;[I)V

    const/4 v1, 0x0

    const-string v2, "system default"

    invoke-direct {v0, v2, v8, v1, v1}, Lcom/ardor3d/input/MouseCursor;-><init>(Ljava/lang/String;Lcom/ardor3d/image/Image;II)V

    sput-object v0, Lcom/ardor3d/input/MouseCursor;->SYSTEM_DEFAULT:Lcom/ardor3d/input/MouseCursor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ardor3d/image/Image;II)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ardor3d/input/MouseCursor;->_name:Ljava/lang/String;

    iput-object p2, p0, Lcom/ardor3d/input/MouseCursor;->_image:Lcom/ardor3d/image/Image;

    iput p3, p0, Lcom/ardor3d/input/MouseCursor;->_hotspotX:I

    iput p4, p0, Lcom/ardor3d/input/MouseCursor;->_hotspotY:I

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-ltz p3, :cond_0

    invoke-virtual {p2}, Lcom/ardor3d/image/Image;->getWidth()I

    move-result v1

    if-ge p3, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hotspot X is out of bounds: 0 <= %s  < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ardor3d/image/Image;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {v1, v2, p3}, Lw2/H;->B(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-ltz p4, :cond_1

    invoke-virtual {p2}, Lcom/ardor3d/image/Image;->getHeight()I

    move-result p3

    if-ge p4, p3, :cond_1

    move p1, v0

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hotspot Y is out of bounds: 0 <= %s  < "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ardor3d/image/Image;->getHeight()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lw2/H;->B(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    check-cast p1, Lcom/ardor3d/input/MouseCursor;

    iget v2, p0, Lcom/ardor3d/input/MouseCursor;->_hotspotX:I

    iget v3, p1, Lcom/ardor3d/input/MouseCursor;->_hotspotX:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lcom/ardor3d/input/MouseCursor;->_hotspotY:I

    iget v3, p1, Lcom/ardor3d/input/MouseCursor;->_hotspotY:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lcom/ardor3d/input/MouseCursor;->_image:Lcom/ardor3d/image/Image;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lcom/ardor3d/input/MouseCursor;->_image:Lcom/ardor3d/image/Image;

    invoke-virtual {v2, v3}, Lcom/ardor3d/image/Image;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/ardor3d/input/MouseCursor;->_image:Lcom/ardor3d/image/Image;

    if-eqz v2, :cond_5

    :goto_0
    return v1

    :cond_5
    iget-object v2, p0, Lcom/ardor3d/input/MouseCursor;->_name:Ljava/lang/String;

    iget-object p1, p1, Lcom/ardor3d/input/MouseCursor;->_name:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_6
    if-eqz p1, :cond_7

    :goto_1
    return v1

    :cond_7
    return v0

    :cond_8
    :goto_2
    return v1
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/input/MouseCursor;->_image:Lcom/ardor3d/image/Image;

    invoke-virtual {v0}, Lcom/ardor3d/image/Image;->getHeight()I

    move-result v0

    return v0
.end method

.method public getHotspotX()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/input/MouseCursor;->_hotspotX:I

    return v0
.end method

.method public getHotspotY()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/input/MouseCursor;->_hotspotY:I

    return v0
.end method

.method public getImage()Lcom/ardor3d/image/Image;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/input/MouseCursor;->_image:Lcom/ardor3d/image/Image;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/input/MouseCursor;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/input/MouseCursor;->_image:Lcom/ardor3d/image/Image;

    invoke-virtual {v0}, Lcom/ardor3d/image/Image;->getWidth()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/ardor3d/input/MouseCursor;->_name:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ardor3d/input/MouseCursor;->_image:Lcom/ardor3d/image/Image;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/ardor3d/input/MouseCursor;->_hotspotX:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/ardor3d/input/MouseCursor;->_hotspotY:I

    add-int/2addr v0, v1

    return v0
.end method
