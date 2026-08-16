.class Lcom/ardor3d/image/util/dds/DdsHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final DDSCAPS2_CUBEMAP:I = 0x200

.field static final DDSCAPS2_CUBEMAP_NEGATIVEX:I = 0x800

.field static final DDSCAPS2_CUBEMAP_NEGATIVEY:I = 0x2000

.field static final DDSCAPS2_CUBEMAP_NEGATIVEZ:I = 0x8000

.field static final DDSCAPS2_CUBEMAP_POSITIVEX:I = 0x400

.field static final DDSCAPS2_CUBEMAP_POSITIVEY:I = 0x1000

.field static final DDSCAPS2_CUBEMAP_POSITIVEZ:I = 0x4000

.field static final DDSCAPS2_VOLUME:I = 0x200000

.field static final DDSCAPS_COMPLEX:I = 0x8

.field static final DDSCAPS_MIPMAP:I = 0x400000

.field static final DDSCAPS_TEXTURE:I = 0x1000

.field static final DDSD_CAPS:I = 0x1

.field static final DDSD_DEPTH:I = 0x800000

.field static final DDSD_HEIGHT:I = 0x2

.field static final DDSD_LINEARSIZE:I = 0x80000

.field static final DDSD_MIPMAPCOUNT:I = 0x20000

.field static final DDSD_PITCH:I = 0x8

.field static final DDSD_PIXELFORMAT:I = 0x1000

.field static final DDSD_WIDTH:I = 0x4

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field ddpf:Lcom/ardor3d/image/util/dds/DdsPixelFormat;

.field dwAlphaBitDepth:I

.field dwCaps:I

.field dwCaps2:I

.field dwCaps3:I

.field dwCaps4:I

.field dwDepth:I

.field dwFlags:I

.field dwHeight:I

.field dwLinearSize:I

.field dwMipMapCount:I

.field dwReserved1:[I

.field dwSize:I

.field dwTextureStage:I

.field dwWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ardor3d/image/util/dds/DdsHeader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/image/util/dds/DdsHeader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ardor3d/image/util/dds/DdsHeader;->dwReserved1:[I

    return-void
.end method

.method public static read(Lcom/ardor3d/util/LittleEndianDataInput;)Lcom/ardor3d/image/util/dds/DdsHeader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/ardor3d/image/util/dds/DdsHeader;

    invoke-direct {v0}, Lcom/ardor3d/image/util/dds/DdsHeader;-><init>()V

    invoke-virtual {p0}, Lcom/ardor3d/util/LittleEndianDataInput;->readInt()I

    move-result v1

    iput v1, v0, Lcom/ardor3d/image/util/dds/DdsHeader;->dwSize:I

    const/16 v2, 0x7c

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/ardor3d/util/LittleEndianDataInput;->readInt()I

    move-result v1

    iput v1, v0, Lcom/ardor3d/image/util/dds/DdsHeader;->dwFlags:I

    invoke-virtual {p0}, Lcom/ardor3d/util/LittleEndianDataInput;->readInt()I

    move-result v1

    iput v1, v0, Lcom/ardor3d/image/util/dds/DdsHeader;->dwHeight:I

    invoke-virtual {p0}, Lcom/ardor3d/util/LittleEndianDataInput;->readInt()I

    move-result v1

    iput v1, v0, Lcom/ardor3d/image/util/dds/DdsHeader;->dwWidth:I

    invoke-virtual {p0}, Lcom/ardor3d/util/LittleEndianDataInput;->readInt()I

    move-result v1

    iput v1, v0, Lcom/ardor3d/image/util/dds/DdsHeader;->dwLinearSize:I

    invoke-virtual {p0}, Lcom/ardor3d/util/LittleEndianDataInput;->readInt()I

    move-result v1

    iput v1, v0, Lcom/ardor3d/image/util/dds/DdsHeader;->dwDepth:I

    invoke-virtual {p0}, Lcom/ardor3d/util/LittleEndianDataInput;->readInt()I

    move-result v1

    iput v1, v0, Lcom/ardor3d/image/util/dds/DdsHeader;->dwMipMapCount:I

    invoke-virtual {p0}, Lcom/ardor3d/util/LittleEndianDataInput;->readInt()I

    move-result v1

    iput v1, v0, Lcom/ardor3d/image/util/dds/DdsHeader;->dwAlphaBitDepth:I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lcom/ardor3d/image/util/dds/DdsHeader;->dwReserved1:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/ardor3d/util/LittleEndianDataInput;->readInt()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/ardor3d/image/util/dds/DdsPixelFormat;->read(Lcom/ardor3d/util/LittleEndianDataInput;)Lcom/ardor3d/image/util/dds/DdsPixelFormat;

    move-result-object v1

    iput-object v1, v0, Lcom/ardor3d/image/util/dds/DdsHeader;->ddpf:Lcom/ardor3d/image/util/dds/DdsPixelFormat;

    invoke-virtual {p0}, Lcom/ardor3d/util/LittleEndianDataInput;->readInt()I

    move-result v1

    iput v1, v0, Lcom/ardor3d/image/util/dds/DdsHeader;->dwCaps:I

    invoke-virtual {p0}, Lcom/ardor3d/util/LittleEndianDataInput;->readInt()I

    move-result v1

    iput v1, v0, Lcom/ardor3d/image/util/dds/DdsHeader;->dwCaps2:I

    invoke-virtual {p0}, Lcom/ardor3d/util/LittleEndianDataInput;->readInt()I

    move-result v1

    iput v1, v0, Lcom/ardor3d/image/util/dds/DdsHeader;->dwCaps3:I

    invoke-virtual {p0}, Lcom/ardor3d/util/LittleEndianDataInput;->readInt()I

    move-result v1

    iput v1, v0, Lcom/ardor3d/image/util/dds/DdsHeader;->dwCaps4:I

    invoke-virtual {p0}, Lcom/ardor3d/util/LittleEndianDataInput;->readInt()I

    move-result p0

    iput p0, v0, Lcom/ardor3d/image/util/dds/DdsHeader;->dwTextureStage:I

    iget p0, v0, Lcom/ardor3d/image/util/dds/DdsHeader;->dwHeight:I

    iget v1, v0, Lcom/ardor3d/image/util/dds/DdsHeader;->dwWidth:I

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p0, v1

    const/4 v1, 0x1

    add-int/2addr p0, v1

    iget v2, v0, Lcom/ardor3d/image/util/dds/DdsHeader;->dwCaps:I

    const/high16 v3, 0x400000

    invoke-static {v2, v3}, Lcom/ardor3d/image/util/dds/DdsUtils;->isSet(II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v1, v0, Lcom/ardor3d/image/util/dds/DdsHeader;->dwFlags:I

    const/high16 v2, 0x20000

    invoke-static {v1, v2}, Lcom/ardor3d/image/util/dds/DdsUtils;->isSet(II)Z

    move-result v1

    if-nez v1, :cond_1

    iput p0, v0, Lcom/ardor3d/image/util/dds/DdsHeader;->dwMipMapCount:I

    goto :goto_1

    :cond_1
    iget v1, v0, Lcom/ardor3d/image/util/dds/DdsHeader;->dwMipMapCount:I

    if-eq v1, p0, :cond_3

    sget-object v1, Lcom/ardor3d/image/util/dds/DdsHeader;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/ardor3d/image/util/dds/DdsHeader;->dwMipMapCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mipmaps, expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iput v1, v0, Lcom/ardor3d/image/util/dds/DdsHeader;->dwMipMapCount:I

    :cond_3
    :goto_1
    return-object v0

    :cond_4
    new-instance p0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid dds header size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/ardor3d/image/util/dds/DdsHeader;->dwSize:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method
