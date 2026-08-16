.class Lcom/ardor3d/image/util/dds/DdsPixelFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final DDPF_ALPHA:I = 0x2

.field static final DDPF_ALPHAPIXELS:I = 0x1

.field static final DDPF_FOURCC:I = 0x4

.field static final DDPF_LUMINANCE:I = 0x20000

.field static final DDPF_RGB:I = 0x40

.field static final DDPF_YUV:I = 0x200


# instance fields
.field dwABitMask:I

.field dwBBitMask:I

.field dwFlags:I

.field dwFourCC:I

.field dwGBitMask:I

.field dwRBitMask:I

.field dwRGBBitCount:I

.field dwSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lcom/ardor3d/util/LittleEndianDataInput;)Lcom/ardor3d/image/util/dds/DdsPixelFormat;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/ardor3d/image/util/dds/DdsPixelFormat;

    invoke-direct {v0}, Lcom/ardor3d/image/util/dds/DdsPixelFormat;-><init>()V

    invoke-virtual {p0}, Lcom/ardor3d/util/LittleEndianDataInput;->readInt()I

    move-result v1

    iput v1, v0, Lcom/ardor3d/image/util/dds/DdsPixelFormat;->dwSize:I

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/ardor3d/util/LittleEndianDataInput;->readInt()I

    move-result v1

    iput v1, v0, Lcom/ardor3d/image/util/dds/DdsPixelFormat;->dwFlags:I

    invoke-virtual {p0}, Lcom/ardor3d/util/LittleEndianDataInput;->readInt()I

    move-result v1

    iput v1, v0, Lcom/ardor3d/image/util/dds/DdsPixelFormat;->dwFourCC:I

    invoke-virtual {p0}, Lcom/ardor3d/util/LittleEndianDataInput;->readInt()I

    move-result v1

    iput v1, v0, Lcom/ardor3d/image/util/dds/DdsPixelFormat;->dwRGBBitCount:I

    invoke-virtual {p0}, Lcom/ardor3d/util/LittleEndianDataInput;->readInt()I

    move-result v1

    iput v1, v0, Lcom/ardor3d/image/util/dds/DdsPixelFormat;->dwRBitMask:I

    invoke-virtual {p0}, Lcom/ardor3d/util/LittleEndianDataInput;->readInt()I

    move-result v1

    iput v1, v0, Lcom/ardor3d/image/util/dds/DdsPixelFormat;->dwGBitMask:I

    invoke-virtual {p0}, Lcom/ardor3d/util/LittleEndianDataInput;->readInt()I

    move-result v1

    iput v1, v0, Lcom/ardor3d/image/util/dds/DdsPixelFormat;->dwBBitMask:I

    invoke-virtual {p0}, Lcom/ardor3d/util/LittleEndianDataInput;->readInt()I

    move-result p0

    iput p0, v0, Lcom/ardor3d/image/util/dds/DdsPixelFormat;->dwABitMask:I

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid pixel format size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/ardor3d/image/util/dds/DdsPixelFormat;->dwSize:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method
