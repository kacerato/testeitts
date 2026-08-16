.class public Lcom/jme3/texture/plugins/DDSLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/asset/AssetLoader;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DDPF_ALPHA:I = 0x2

.field private static final DDPF_ALPHAPIXELS:I = 0x1

.field private static final DDPF_FOURCC:I = 0x4

.field private static final DDPF_GRAYSCALE:I = 0x20000

.field private static final DDPF_NORMAL:I = -0x80000000

.field private static final DDPF_RGB:I = 0x40

.field private static final DDSCAPS2_CUBEMAP:I = 0x200

.field private static final DDSCAPS2_VOLUME:I = 0x200000

.field private static final DDSCAPS_MIPMAP:I = 0x400000

.field private static final DDSCAPS_TEXTURE:I = 0x1000

.field private static final DDSD_LINEARSIZE:I = 0x80000

.field private static final DDSD_MANDATORY:I = 0x1007

.field private static final DDSD_MANDATORY_DX10:I = 0x6

.field private static final DDSD_MIPMAPCOUNT:I = 0x20000

.field private static final DX10DIM_TEXTURE3D:I = 0x4

.field private static final DX10MISC_TEXTURECUBE:I = 0x4

.field private static final LOG2:D

.field private static final PF_ATI1:I = 0x31495441

.field private static final PF_ATI2:I = 0x32495441

.field private static final PF_BC4S:I = 0x53344342

.field private static final PF_BC5S:I = 0x53354342

.field private static final PF_DX10:I = 0x30315844

.field private static final PF_DXT1:I = 0x31545844

.field private static final PF_DXT3:I = 0x33545844

.field private static final PF_DXT5:I = 0x35545844

.field private static final PF_ETC2_RGBA1_CSN:I = 0x50435445

.field private static final PF_ETC2_RGBA_CSN:I = 0x41435445

.field private static final PF_ETC2_RGB_CSN:I = 0x32435445

.field private static final PF_ETC_RGB_CSN:I = 0x20435445

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private alphaMask:I

.field private blueMask:I

.field private bpp:I

.field private caps1:I

.field private caps2:I

.field private compressed:Z

.field private depth:I

.field private directx10:Z

.field private flags:I

.field private grayscaleOrAlpha:Z

.field private greenMask:I

.field private height:I

.field private in:Ljava/io/DataInput;

.field private mipMapCount:I

.field private pitchOrSize:I

.field private pixelFormat:Lcom/jme3/texture/Image$Format;

.field private redMask:I

.field private sizes:[I

.field private texture3D:Z

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/jme3/texture/plugins/DDSLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/texture/plugins/DDSLoader;->logger:Ljava/util/logging/Logger;

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/jme3/texture/plugins/DDSLoader;->LOG2:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byte2int([B)I
    .locals 6

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    return p0

    :cond_0
    array-length v0, p0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xff

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0

    :cond_1
    array-length v0, p0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xff

    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aget-byte p0, p0, v3

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v0

    return p0

    :cond_2
    array-length v0, p0

    const/4 v5, 0x4

    if-ne v0, v5, :cond_3

    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xff

    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    aget-byte p0, p0, v4

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0

    :cond_3
    return v1
.end method

.method private static count(I)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :goto_0
    and-int/lit8 v1, p0, 0x1

    if-nez v1, :cond_2

    shr-int/lit8 p0, p0, 0x1

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x20

    if-gt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return v0
.end method

.method private static is(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private loadDX10Header()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/texture/plugins/DDSLoader;->setPixelFormat(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->compressed:Z

    iget-object v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iput-boolean v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->texture3D:Z

    :cond_0
    iget-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iget-object v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    invoke-static {v0, v2}, Lcom/jme3/texture/plugins/DDSLoader;->is(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cubemaps should consist of 6 images!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-static {v0, v2}, Lcom/jme3/export/binary/ByteUtils;->skipFully(Ljava/io/DataInput;I)V

    return-void
.end method

.method private loadHeader()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    const v1, 0x20534444

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->flags:I

    const/16 v1, 0x1007

    invoke-static {v0, v1}, Lcom/jme3/texture/plugins/DDSLoader;->is(II)Z

    move-result v0

    const/4 v1, 0x6

    if-nez v0, :cond_1

    iget v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->flags:I

    invoke-static {v0, v1}, Lcom/jme3/texture/plugins/DDSLoader;->is(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mandatory flags missing"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->height:I

    iget-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->width:I

    iget-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->pitchOrSize:I

    iget-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->depth:I

    iget-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->mipMapCount:I

    iget-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    const/16 v2, 0x2c

    invoke-static {v0, v2}, Lcom/jme3/export/binary/ByteUtils;->skipFully(Ljava/io/DataInput;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->directx10:Z

    invoke-direct {p0}, Lcom/jme3/texture/plugins/DDSLoader;->readPixelFormat()V

    iget-object v2, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v2}, Ljava/io/DataInput;->readInt()I

    move-result v2

    iput v2, p0, Lcom/jme3/texture/plugins/DDSLoader;->caps1:I

    iget-object v2, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v2}, Ljava/io/DataInput;->readInt()I

    move-result v2

    iput v2, p0, Lcom/jme3/texture/plugins/DDSLoader;->caps2:I

    iget-object v2, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/jme3/export/binary/ByteUtils;->skipFully(Ljava/io/DataInput;I)V

    iput-boolean v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->texture3D:Z

    iget-boolean v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->directx10:Z

    const/4 v2, 0x1

    if-nez v0, :cond_5

    iget v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->caps1:I

    const/16 v3, 0x1000

    invoke-static {v0, v3}, Lcom/jme3/texture/plugins/DDSLoader;->is(II)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/jme3/texture/plugins/DDSLoader;->logger:Ljava/util/logging/Logger;

    const-string v3, "Texture is missing the DDSCAPS_TEXTURE-flag"

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->depth:I

    if-gtz v0, :cond_3

    iput v2, p0, Lcom/jme3/texture/plugins/DDSLoader;->depth:I

    :cond_3
    iget v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->caps2:I

    const/16 v3, 0x200

    invoke-static {v0, v3}, Lcom/jme3/texture/plugins/DDSLoader;->is(II)Z

    move-result v0

    if-eqz v0, :cond_4

    iput v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->depth:I

    :cond_4
    iget v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->caps2:I

    const/high16 v1, 0x200000

    invoke-static {v0, v1}, Lcom/jme3/texture/plugins/DDSLoader;->is(II)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lcom/jme3/texture/plugins/DDSLoader;->texture3D:Z

    :cond_5
    iget v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->height:I

    iget v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->width:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v3, Lcom/jme3/texture/plugins/DDSLoader;->LOG2:D

    div-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/2addr v0, v2

    iget v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->caps1:I

    const/high16 v3, 0x400000

    invoke-static {v1, v3}, Lcom/jme3/texture/plugins/DDSLoader;->is(II)Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->flags:I

    const/high16 v2, 0x20000

    invoke-static {v1, v2}, Lcom/jme3/texture/plugins/DDSLoader;->is(II)Z

    move-result v1

    if-nez v1, :cond_6

    iput v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->mipMapCount:I

    goto :goto_1

    :cond_6
    iget v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->mipMapCount:I

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/jme3/texture/plugins/DDSLoader;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Got {0} mipmaps, expected {1}"

    invoke-virtual {v2, v3, v1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    iput v2, p0, Lcom/jme3/texture/plugins/DDSLoader;->mipMapCount:I

    :cond_8
    :goto_1
    iget-boolean v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->directx10:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/jme3/texture/plugins/DDSLoader;->loadDX10Header()V

    :cond_9
    invoke-direct {p0}, Lcom/jme3/texture/plugins/DDSLoader;->loadSizes()V

    return-void

    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a DDS file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private loadSizes()V
    .locals 6

    iget v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->width:I

    iget v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->height:I

    iget v2, p0, Lcom/jme3/texture/plugins/DDSLoader;->mipMapCount:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/jme3/texture/plugins/DDSLoader;->sizes:[I

    iget-object v2, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    invoke-virtual {v2}, Lcom/jme3/texture/Image$Format;->getBitsPerPixel()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/jme3/texture/plugins/DDSLoader;->mipMapCount:I

    if-ge v3, v4, :cond_1

    iget-boolean v4, p0, Lcom/jme3/texture/plugins/DDSLoader;->compressed:Z

    if-eqz v4, :cond_0

    add-int/lit8 v4, v0, 0x3

    div-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x3

    div-int/lit8 v5, v5, 0x4

    mul-int/2addr v4, v5

    mul-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x2

    goto :goto_1

    :cond_0
    mul-int v4, v0, v1

    mul-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x8

    :goto_1
    iget-object v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->sizes:[I

    add-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    mul-int/lit8 v4, v4, 0x4

    aput v4, v5, v3

    div-int/lit8 v0, v0, 0x2

    const/4 v4, 0x1

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private readPixelFormat()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Lcom/jme3/texture/plugins/DDSLoader;->is(II)Z

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/jme3/texture/plugins/DDSLoader;->is(II)Z

    move-result v2

    const-string v3, "Expected size = {0}, real = {1}"

    const/high16 v4, 0x80000

    const/4 v5, 0x2

    const/16 v6, 0x40

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/16 v9, 0x8

    const/4 v10, 0x1

    if-eqz v2, :cond_3

    iput-boolean v10, p0, Lcom/jme3/texture/plugins/DDSLoader;->compressed:Z

    iget-object v2, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v2}, Ljava/io/DataInput;->readInt()I

    move-result v2

    iget-object v11, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v11}, Ljava/io/DataInput;->readInt()I

    iget-object v11, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-static {v11, v8}, Lcom/jme3/export/binary/ByteUtils;->skipFully(Ljava/io/DataInput;I)V

    sparse-switch v2, :sswitch_data_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown fourcc: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/jme3/texture/plugins/DDSLoader;->string(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iput v9, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    sget-object v0, Lcom/jme3/texture/Image$Format;->SIGNED_RGTC2:Lcom/jme3/texture/Image$Format;

    iput-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    goto/16 :goto_0

    :sswitch_1
    iput v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    sget-object v0, Lcom/jme3/texture/Image$Format;->SIGNED_RGTC1:Lcom/jme3/texture/Image$Format;

    iput-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    goto :goto_0

    :sswitch_2
    iput v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    sget-object v0, Lcom/jme3/texture/Image$Format;->ETC2_ALPHA1:Lcom/jme3/texture/Image$Format;

    iput-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    goto :goto_0

    :sswitch_3
    iput v9, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    sget-object v0, Lcom/jme3/texture/Image$Format;->ETC2:Lcom/jme3/texture/Image$Format;

    iput-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    goto :goto_0

    :sswitch_4
    iput v9, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    sget-object v0, Lcom/jme3/texture/Image$Format;->DXT5:Lcom/jme3/texture/Image$Format;

    iput-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    goto :goto_0

    :sswitch_5
    iput v9, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    sget-object v0, Lcom/jme3/texture/Image$Format;->DXT3:Lcom/jme3/texture/Image$Format;

    iput-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    goto :goto_0

    :sswitch_6
    iput v9, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    sget-object v0, Lcom/jme3/texture/Image$Format;->RGTC2:Lcom/jme3/texture/Image$Format;

    iput-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    goto :goto_0

    :sswitch_7
    iput v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    sget-object v0, Lcom/jme3/texture/Image$Format;->ETC1:Lcom/jme3/texture/Image$Format;

    iput-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    goto :goto_0

    :sswitch_8
    iput v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    invoke-static {v0, v10}, Lcom/jme3/texture/plugins/DDSLoader;->is(II)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jme3/texture/Image$Format;->DXT1A:Lcom/jme3/texture/Image$Format;

    iput-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/jme3/texture/Image$Format;->DXT1:Lcom/jme3/texture/Image$Format;

    iput-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    goto :goto_0

    :sswitch_9
    iput v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    sget-object v0, Lcom/jme3/texture/Image$Format;->RGTC1:Lcom/jme3/texture/Image$Format;

    iput-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    goto :goto_0

    :sswitch_a
    iput-boolean v7, p0, Lcom/jme3/texture/plugins/DDSLoader;->compressed:Z

    iput-boolean v10, p0, Lcom/jme3/texture/plugins/DDSLoader;->directx10:Z

    return-void

    :sswitch_b
    iput v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    sget-object v0, Lcom/jme3/texture/Image$Format;->ETC1:Lcom/jme3/texture/Image$Format;

    iput-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    goto :goto_0

    :sswitch_c
    iput-boolean v7, p0, Lcom/jme3/texture/plugins/DDSLoader;->compressed:Z

    iput v6, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    sget-object v0, Lcom/jme3/texture/Image$Format;->RGBA16F:Lcom/jme3/texture/Image$Format;

    iput-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    goto :goto_0

    :sswitch_d
    iput-boolean v7, p0, Lcom/jme3/texture/plugins/DDSLoader;->compressed:Z

    iput v8, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    sget-object v0, Lcom/jme3/texture/Image$Format;->Luminance16F:Lcom/jme3/texture/Image$Format;

    iput-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    iput-boolean v10, p0, Lcom/jme3/texture/plugins/DDSLoader;->grayscaleOrAlpha:Z

    :goto_0
    iget v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->width:I

    add-int/lit8 v0, v0, 0x3

    div-int/2addr v0, v1

    iget v2, p0, Lcom/jme3/texture/plugins/DDSLoader;->height:I

    add-int/lit8 v2, v2, 0x3

    div-int/2addr v2, v1

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    mul-int/2addr v0, v1

    mul-int/2addr v0, v5

    iget v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->flags:I

    invoke-static {v1, v4}, Lcom/jme3/texture/plugins/DDSLoader;->is(II)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->pitchOrSize:I

    if-nez v1, :cond_1

    sget-object v1, Lcom/jme3/texture/plugins/DDSLoader;->logger:Ljava/util/logging/Logger;

    const-string v2, "Must use linear size with fourcc"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    iput v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->pitchOrSize:I

    goto/16 :goto_2

    :cond_1
    if-eq v1, v0, :cond_e

    sget-object v1, Lcom/jme3/texture/plugins/DDSLoader;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v4, p0, Lcom/jme3/texture/plugins/DDSLoader;->pitchOrSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    iput v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->pitchOrSize:I

    goto/16 :goto_2

    :cond_3
    iput-boolean v7, p0, Lcom/jme3/texture/plugins/DDSLoader;->compressed:Z

    iget-object v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readInt()I

    iget-object v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    iput v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    iget-object v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    iput v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->redMask:I

    iget-object v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    iput v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->greenMask:I

    iget-object v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    iput v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->blueMask:I

    iget-object v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    iput v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->alphaMask:I

    invoke-static {v0, v6}, Lcom/jme3/texture/plugins/DDSLoader;->is(II)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v0, v10}, Lcom/jme3/texture/plugins/DDSLoader;->is(II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    if-ne v0, v8, :cond_4

    sget-object v0, Lcom/jme3/texture/Image$Format;->RGB5A1:Lcom/jme3/texture/Image$Format;

    iput-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    goto/16 :goto_1

    :cond_4
    sget-object v0, Lcom/jme3/texture/Image$Format;->RGBA8:Lcom/jme3/texture/Image$Format;

    iput-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    goto/16 :goto_1

    :cond_5
    iget v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    if-ne v0, v8, :cond_6

    sget-object v0, Lcom/jme3/texture/Image$Format;->RGB565:Lcom/jme3/texture/Image$Format;

    iput-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    goto/16 :goto_1

    :cond_6
    sget-object v0, Lcom/jme3/texture/Image$Format;->RGB8:Lcom/jme3/texture/Image$Format;

    iput-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    goto :goto_1

    :cond_7
    const/high16 v1, 0x20000

    invoke-static {v0, v1}, Lcom/jme3/texture/plugins/DDSLoader;->is(II)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {v0, v10}, Lcom/jme3/texture/plugins/DDSLoader;->is(II)Z

    move-result v2

    if-eqz v2, :cond_9

    iget v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    if-ne v0, v8, :cond_8

    sget-object v0, Lcom/jme3/texture/Image$Format;->Luminance8Alpha8:Lcom/jme3/texture/Image$Format;

    iput-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    iput-boolean v10, p0, Lcom/jme3/texture/plugins/DDSLoader;->grayscaleOrAlpha:Z

    goto :goto_1

    :cond_8
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported GrayscaleAlpha BPP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-static {v0, v1}, Lcom/jme3/texture/plugins/DDSLoader;->is(II)Z

    move-result v1

    if-eqz v1, :cond_b

    iget v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    if-ne v0, v9, :cond_a

    sget-object v0, Lcom/jme3/texture/Image$Format;->Luminance8:Lcom/jme3/texture/Image$Format;

    iput-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    iput-boolean v10, p0, Lcom/jme3/texture/plugins/DDSLoader;->grayscaleOrAlpha:Z

    goto :goto_1

    :cond_a
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported Grayscale BPP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-static {v0, v5}, Lcom/jme3/texture/plugins/DDSLoader;->is(II)Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    if-ne v0, v9, :cond_f

    sget-object v0, Lcom/jme3/texture/Image$Format;->Alpha8:Lcom/jme3/texture/Image$Format;

    iput-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    iput-boolean v10, p0, Lcom/jme3/texture/plugins/DDSLoader;->grayscaleOrAlpha:Z

    :goto_1
    iget v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    div-int/2addr v0, v9

    iget v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->width:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->flags:I

    invoke-static {v1, v4}, Lcom/jme3/texture/plugins/DDSLoader;->is(II)Z

    move-result v1

    if-eqz v1, :cond_d

    iget v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->pitchOrSize:I

    if-nez v1, :cond_c

    sget-object v1, Lcom/jme3/texture/plugins/DDSLoader;->logger:Ljava/util/logging/Logger;

    const-string v2, "Linear size said to contain valid value but does not"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    iput v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->pitchOrSize:I

    goto :goto_2

    :cond_c
    if-eq v1, v0, :cond_e

    sget-object v1, Lcom/jme3/texture/plugins/DDSLoader;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v4, p0, Lcom/jme3/texture/plugins/DDSLoader;->pitchOrSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_d
    iput v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->pitchOrSize:I

    :cond_e
    :goto_2
    return-void

    :cond_f
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported Alpha BPP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unknown PixelFormat in DDS file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pixel format size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", not 32"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x6f -> :sswitch_d
        0x71 -> :sswitch_c
        0x20435445 -> :sswitch_b
        0x30315844 -> :sswitch_a
        0x31495441 -> :sswitch_9
        0x31545844 -> :sswitch_8
        0x32435445 -> :sswitch_7
        0x32495441 -> :sswitch_6
        0x33545844 -> :sswitch_5
        0x35545844 -> :sswitch_4
        0x41435445 -> :sswitch_3
        0x50435445 -> :sswitch_2
        0x53344342 -> :sswitch_1
        0x53354342 -> :sswitch_0
    .end sparse-switch
.end method

.method private setPixelFormat(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    const/16 v0, 0x47

    if-eq p1, v0, :cond_a

    const/16 v0, 0x4a

    if-eq p1, v0, :cond_9

    const/16 v0, 0x4d

    if-eq p1, v0, :cond_8

    const/16 v0, 0x50

    if-eq p1, v0, :cond_7

    const/16 v0, 0x51

    if-eq p1, v0, :cond_6

    const/16 v0, 0x53

    if-eq p1, v0, :cond_5

    const/16 v0, 0x54

    if-eq p1, v0, :cond_4

    const/16 v0, 0x5f

    if-eq p1, v0, :cond_3

    const/16 v0, 0x60

    if-eq p1, v0, :cond_2

    const/16 v0, 0x62

    if-eq p1, v0, :cond_1

    const/16 v0, 0x63

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/jme3/texture/Image$Format;->BC7_UNORM_SRGB:Lcom/jme3/texture/Image$Format;

    iput-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported DX10 format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/jme3/texture/Image$Format;->BC7_UNORM:Lcom/jme3/texture/Image$Format;

    iput-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/jme3/texture/Image$Format;->BC6H_SF16:Lcom/jme3/texture/Image$Format;

    iput-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/jme3/texture/Image$Format;->BC6H_UF16:Lcom/jme3/texture/Image$Format;

    iput-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/jme3/texture/Image$Format;->SIGNED_RGTC2:Lcom/jme3/texture/Image$Format;

    iput-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/jme3/texture/Image$Format;->RGTC2:Lcom/jme3/texture/Image$Format;

    iput-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/jme3/texture/Image$Format;->SIGNED_RGTC1:Lcom/jme3/texture/Image$Format;

    iput-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/jme3/texture/Image$Format;->RGTC1:Lcom/jme3/texture/Image$Format;

    iput-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/jme3/texture/Image$Format;->DXT5:Lcom/jme3/texture/Image$Format;

    iput-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    goto :goto_0

    :cond_9
    sget-object v0, Lcom/jme3/texture/Image$Format;->DXT3:Lcom/jme3/texture/Image$Format;

    iput-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    goto :goto_0

    :cond_a
    sget-object v0, Lcom/jme3/texture/Image$Format;->DXT1:Lcom/jme3/texture/Image$Format;

    iput-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    goto :goto_0

    :cond_b
    sget-object v0, Lcom/jme3/texture/Image$Format;->ETC1:Lcom/jme3/texture/Image$Format;

    iput-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    :goto_0
    invoke-static {p1}, Lcom/jme3/texture/plugins/DXGIFormat;->getBitsPerPixel(I)I

    move-result p1

    iput p1, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    return-void
.end method

.method private static string(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p0, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x10

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v1, 0xff00000

    and-int/2addr p0, v1

    shr-int/lit8 p0, p0, 0x18

    int-to-char p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public flipData([BII)[B
    .locals 4

    array-length v0, p1

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    mul-int v2, v1, p2

    sub-int v3, p3, v1

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v3, p2

    invoke-static {p1, v2, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public load(Ljava/io/InputStream;)Lcom/jme3/texture/Image;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    new-instance v0, Lcom/jme3/util/LittleEndien;

    invoke-direct {v0, p1}, Lcom/jme3/util/LittleEndien;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    .line 16
    invoke-direct {p0}, Lcom/jme3/texture/plugins/DDSLoader;->loadHeader()V

    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Lcom/jme3/texture/plugins/DDSLoader;->readData(Z)Ljava/util/ArrayList;

    move-result-object v5

    .line 18
    new-instance p1, Lcom/jme3/texture/Image;

    iget-object v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    iget v2, p0, Lcom/jme3/texture/plugins/DDSLoader;->width:I

    iget v3, p0, Lcom/jme3/texture/plugins/DDSLoader;->height:I

    iget v4, p0, Lcom/jme3/texture/plugins/DDSLoader;->depth:I

    iget-object v6, p0, Lcom/jme3/texture/plugins/DDSLoader;->sizes:[I

    sget-object v7, Lcom/jme3/texture/image/ColorSpace;->sRGB:Lcom/jme3/texture/image/ColorSpace;

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/jme3/texture/Image;-><init>(Lcom/jme3/texture/Image$Format;IIILjava/util/ArrayList;[ILcom/jme3/texture/image/ColorSpace;)V

    return-object p1
.end method

.method public load(Lcom/jme3/asset/AssetInfo;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v0

    instance-of v0, v0, Lcom/jme3/asset/TextureKey;

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v0

    check-cast v0, Lcom/jme3/asset/TextureKey;

    .line 3
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->openStream()Ljava/io/InputStream;

    move-result-object p1

    .line 4
    :try_start_0
    new-instance v1, Lcom/jme3/util/LittleEndien;

    invoke-direct {v1, p1}, Lcom/jme3/util/LittleEndien;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    .line 5
    invoke-direct {p0}, Lcom/jme3/texture/plugins/DDSLoader;->loadHeader()V

    .line 6
    iget-boolean v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->texture3D:Z

    if-eqz v1, :cond_0

    .line 7
    sget-object v1, Lcom/jme3/texture/Texture$Type;->ThreeDimensional:Lcom/jme3/texture/Texture$Type;

    invoke-virtual {v0, v1}, Lcom/jme3/asset/TextureKey;->setTextureTypeHint(Lcom/jme3/texture/Texture$Type;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 8
    :cond_0
    iget v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->depth:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 9
    sget-object v1, Lcom/jme3/texture/Texture$Type;->CubeMap:Lcom/jme3/texture/Texture$Type;

    invoke-virtual {v0, v1}, Lcom/jme3/asset/TextureKey;->setTextureTypeHint(Lcom/jme3/texture/Texture$Type;)V

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/jme3/asset/TextureKey;->isFlipY()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/texture/plugins/DDSLoader;->readData(Z)Ljava/util/ArrayList;

    move-result-object v6

    .line 11
    new-instance v0, Lcom/jme3/texture/Image;

    iget-object v2, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    iget v3, p0, Lcom/jme3/texture/plugins/DDSLoader;->width:I

    iget v4, p0, Lcom/jme3/texture/plugins/DDSLoader;->height:I

    iget v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->depth:I

    iget-object v7, p0, Lcom/jme3/texture/plugins/DDSLoader;->sizes:[I

    sget-object v8, Lcom/jme3/texture/image/ColorSpace;->sRGB:Lcom/jme3/texture/image/ColorSpace;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/jme3/texture/Image;-><init>(Lcom/jme3/texture/Image$Format;IIILjava/util/ArrayList;[ILcom/jme3/texture/image/ColorSpace;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_2
    return-object v0

    :goto_1
    if-eqz p1, :cond_3

    .line 13
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v0

    .line 14
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Texture assets must be loaded using a TextureKey"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readDXT2D(ZI)Ljava/nio/ByteBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/jme3/texture/plugins/DDSLoader;->logger:Ljava/util/logging/Logger;

    const-string v1, "Source image format: DXT"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    iget v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->width:I

    iget v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->height:I

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/jme3/texture/plugins/DDSLoader;->mipMapCount:I

    if-ge v2, v3, :cond_1

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/jme3/texture/plugins/DDSLoader;->sizes:[I

    aget v3, v3, v2

    new-array v3, v3, [B

    iget-object v4, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v4, v3}, Ljava/io/DataInput;->readFully([B)V

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v4, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    invoke-static {v3, v0, v1, v4}, Lcom/jme3/texture/plugins/DXTFlipper;->flipDXT(Ljava/nio/ByteBuffer;IILcom/jme3/texture/Image$Format;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/jme3/texture/plugins/DDSLoader;->sizes:[I

    aget v3, v3, v2

    new-array v3, v3, [B

    iget-object v4, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v4, v3}, Ljava/io/DataInput;->readFully([B)V

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_1
    div-int/lit8 v0, v0, 0x2

    const/4 v3, 0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object p2
.end method

.method public readDXT3D(ZI)Ljava/nio/ByteBuffer;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/jme3/texture/plugins/DDSLoader;->logger:Ljava/util/logging/Logger;

    const-string v1, "Source image format: DXT"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    iget v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->depth:I

    mul-int/2addr v0, p2

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/jme3/texture/plugins/DDSLoader;->depth:I

    if-ge v2, v3, :cond_2

    invoke-static {p2}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget v4, p0, Lcom/jme3/texture/plugins/DDSLoader;->width:I

    iget v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->height:I

    move v6, v1

    :goto_1
    iget v7, p0, Lcom/jme3/texture/plugins/DDSLoader;->mipMapCount:I

    if-ge v6, v7, :cond_1

    if-eqz p1, :cond_0

    iget-object v7, p0, Lcom/jme3/texture/plugins/DDSLoader;->sizes:[I

    aget v7, v7, v6

    new-array v7, v7, [B

    iget-object v8, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v8, v7}, Ljava/io/DataInput;->readFully([B)V

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v8, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    invoke-static {v7, v4, v5, v8}, Lcom/jme3/texture/plugins/DXTFlipper;->flipDXT(Ljava/nio/ByteBuffer;IILcom/jme3/texture/Image$Format;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_0
    iget-object v7, p0, Lcom/jme3/texture/plugins/DDSLoader;->sizes:[I

    aget v7, v7, v6

    new-array v7, v7, [B

    iget-object v8, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v8, v7}, Ljava/io/DataInput;->readFully([B)V

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_2
    div-int/lit8 v4, v4, 0x2

    const/4 v7, 0x1

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    div-int/lit8 v5, v5, 0x2

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public readData(Z)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/jme3/texture/plugins/DDSLoader;->sizes:[I

    array-length v4, v3

    if-ge v1, v4, :cond_0

    aget v3, v3, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v3, p0, Lcom/jme3/texture/plugins/DDSLoader;->depth:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/jme3/texture/plugins/DDSLoader;->texture3D:Z

    if-nez v3, :cond_3

    :goto_1
    iget v3, p0, Lcom/jme3/texture/plugins/DDSLoader;->depth:I

    if-ge v0, v3, :cond_9

    iget-boolean v3, p0, Lcom/jme3/texture/plugins/DDSLoader;->compressed:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1, v2}, Lcom/jme3/texture/plugins/DDSLoader;->readDXT2D(ZI)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    iget-boolean v3, p0, Lcom/jme3/texture/plugins/DDSLoader;->grayscaleOrAlpha:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0, p1, v2}, Lcom/jme3/texture/plugins/DDSLoader;->readGrayscale2D(ZI)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/jme3/texture/plugins/DDSLoader;->readRGB2D(ZI)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->texture3D:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->compressed:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1, v2}, Lcom/jme3/texture/plugins/DDSLoader;->readDXT3D(ZI)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    iget-boolean v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->grayscaleOrAlpha:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1, v2}, Lcom/jme3/texture/plugins/DDSLoader;->readGrayscale3D(ZI)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-virtual {p0, p1, v2}, Lcom/jme3/texture/plugins/DDSLoader;->readRGB3D(ZI)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    iget-boolean v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->compressed:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1, v2}, Lcom/jme3/texture/plugins/DDSLoader;->readDXT2D(ZI)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    iget-boolean v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->grayscaleOrAlpha:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0, p1, v2}, Lcom/jme3/texture/plugins/DDSLoader;->readGrayscale2D(ZI)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-virtual {p0, p1, v2}, Lcom/jme3/texture/plugins/DDSLoader;->readRGB2D(ZI)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_3
    return-object v1
.end method

.method public readGrayscale2D(ZI)Ljava/nio/ByteBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    iget v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/jme3/texture/plugins/DDSLoader;->logger:Ljava/util/logging/Logger;

    const-string v2, "Source image format: R8"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->width:I

    iget v2, p0, Lcom/jme3/texture/plugins/DDSLoader;->height:I

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/jme3/texture/plugins/DDSLoader;->mipMapCount:I

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/jme3/texture/plugins/DDSLoader;->sizes:[I

    aget v4, v4, v3

    new-array v4, v4, [B

    iget-object v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v5, v4}, Ljava/io/DataInput;->readFully([B)V

    if-eqz p1, :cond_1

    iget v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    mul-int/2addr v5, v0

    div-int/2addr v5, v1

    invoke-virtual {p0, v4, v5, v2}, Lcom/jme3/texture/plugins/DDSLoader;->flipData([BII)[B

    move-result-object v4

    :cond_1
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    div-int/lit8 v0, v0, 0x2

    const/4 v4, 0x1

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit8 v2, v2, 0x2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public readGrayscale3D(ZI)Ljava/nio/ByteBuffer;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->depth:I

    mul-int/2addr p2, v0

    invoke-static {p2}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    iget v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/jme3/texture/plugins/DDSLoader;->logger:Ljava/util/logging/Logger;

    const-string v2, "Source image format: R8"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget v3, p0, Lcom/jme3/texture/plugins/DDSLoader;->depth:I

    if-ge v2, v3, :cond_3

    iget v3, p0, Lcom/jme3/texture/plugins/DDSLoader;->width:I

    iget v4, p0, Lcom/jme3/texture/plugins/DDSLoader;->height:I

    move v5, v0

    :goto_1
    iget v6, p0, Lcom/jme3/texture/plugins/DDSLoader;->mipMapCount:I

    if-ge v5, v6, :cond_2

    iget-object v6, p0, Lcom/jme3/texture/plugins/DDSLoader;->sizes:[I

    aget v6, v6, v5

    new-array v6, v6, [B

    iget-object v7, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v7, v6}, Ljava/io/DataInput;->readFully([B)V

    if-eqz p1, :cond_1

    iget v7, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    mul-int/2addr v7, v3

    div-int/2addr v7, v1

    invoke-virtual {p0, v6, v7, v4}, Lcom/jme3/texture/plugins/DDSLoader;->flipData([BII)[B

    move-result-object v6

    :cond_1
    invoke-virtual {p2, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    div-int/lit8 v3, v3, 0x2

    const/4 v6, 0x1

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    div-int/lit8 v4, v4, 0x2

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object p2
.end method

.method public readRGB2D(ZI)Ljava/nio/ByteBuffer;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget v1, v0, Lcom/jme3/texture/plugins/DDSLoader;->redMask:I

    invoke-static {v1}, Lcom/jme3/texture/plugins/DDSLoader;->count(I)I

    move-result v1

    iget v2, v0, Lcom/jme3/texture/plugins/DDSLoader;->blueMask:I

    invoke-static {v2}, Lcom/jme3/texture/plugins/DDSLoader;->count(I)I

    move-result v2

    iget v3, v0, Lcom/jme3/texture/plugins/DDSLoader;->greenMask:I

    invoke-static {v3}, Lcom/jme3/texture/plugins/DDSLoader;->count(I)I

    move-result v3

    iget v4, v0, Lcom/jme3/texture/plugins/DDSLoader;->alphaMask:I

    invoke-static {v4}, Lcom/jme3/texture/plugins/DDSLoader;->count(I)I

    move-result v4

    iget v5, v0, Lcom/jme3/texture/plugins/DDSLoader;->redMask:I

    const/high16 v6, 0xff0000

    if-ne v5, v6, :cond_1

    iget v5, v0, Lcom/jme3/texture/plugins/DDSLoader;->greenMask:I

    const v6, 0xff00

    if-ne v5, v6, :cond_1

    iget v5, v0, Lcom/jme3/texture/plugins/DDSLoader;->blueMask:I

    const/16 v6, 0xff

    if-ne v5, v6, :cond_1

    iget v5, v0, Lcom/jme3/texture/plugins/DDSLoader;->alphaMask:I

    const/high16 v6, -0x1000000

    if-ne v5, v6, :cond_0

    iget v5, v0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    const/16 v6, 0x20

    if-ne v5, v6, :cond_0

    sget-object v5, Lcom/jme3/texture/plugins/DDSLoader;->logger:Ljava/util/logging/Logger;

    const-string v6, "Data source format: BGRA8"

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget v5, v0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    const/16 v6, 0x18

    if-ne v5, v6, :cond_1

    sget-object v5, Lcom/jme3/texture/plugins/DDSLoader;->logger:Ljava/util/logging/Logger;

    const-string v6, "Data source format: BGR8"

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget v5, v0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    div-int/lit8 v5, v5, 0x8

    iget-object v6, v0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    invoke-virtual {v6}, Lcom/jme3/texture/Image$Format;->getBitsPerPixel()I

    move-result v6

    div-int/lit8 v6, v6, 0x8

    invoke-static/range {p2 .. p2}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iget v8, v0, Lcom/jme3/texture/plugins/DDSLoader;->width:I

    iget v9, v0, Lcom/jme3/texture/plugins/DDSLoader;->height:I

    new-array v5, v5, [B

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    iget v13, v0, Lcom/jme3/texture/plugins/DDSLoader;->mipMapCount:I

    if-ge v11, v13, :cond_6

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v9, :cond_5

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v8, :cond_4

    iget-object v10, v0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v10, v5}, Ljava/io/DataInput;->readFully([B)V

    invoke-static {v5}, Lcom/jme3/texture/plugins/DDSLoader;->byte2int([B)I

    move-result v10

    iget v14, v0, Lcom/jme3/texture/plugins/DDSLoader;->redMask:I

    and-int/2addr v14, v10

    shr-int/2addr v14, v1

    int-to-byte v14, v14

    move/from16 v17, v1

    iget v1, v0, Lcom/jme3/texture/plugins/DDSLoader;->greenMask:I

    and-int/2addr v1, v10

    shr-int/2addr v1, v3

    int-to-byte v1, v1

    move/from16 v18, v3

    iget v3, v0, Lcom/jme3/texture/plugins/DDSLoader;->blueMask:I

    and-int/2addr v3, v10

    shr-int/2addr v3, v2

    int-to-byte v3, v3

    move/from16 v19, v2

    iget v2, v0, Lcom/jme3/texture/plugins/DDSLoader;->alphaMask:I

    and-int/2addr v2, v10

    shr-int/2addr v2, v4

    int-to-byte v2, v2

    if-eqz p1, :cond_2

    sub-int v10, v9, v13

    const/16 v16, 0x1

    add-int/lit8 v10, v10, -0x1

    mul-int/2addr v10, v8

    add-int/2addr v10, v15

    mul-int/2addr v10, v6

    add-int/2addr v10, v12

    invoke-virtual {v7, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_2
    iget v10, v0, Lcom/jme3/texture/plugins/DDSLoader;->alphaMask:I

    if-nez v10, :cond_3

    invoke-virtual {v7, v14}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_4

    :cond_3
    invoke-virtual {v7, v14}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_4
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v17

    move/from16 v3, v18

    move/from16 v2, v19

    goto :goto_3

    :cond_4
    move/from16 v17, v1

    move/from16 v19, v2

    move/from16 v18, v3

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_5
    move/from16 v17, v1

    move/from16 v19, v2

    move/from16 v18, v3

    mul-int v1, v8, v9

    mul-int/2addr v1, v6

    add-int/2addr v12, v1

    div-int/lit8 v8, v8, 0x2

    const/4 v1, 0x1

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    div-int/lit8 v9, v9, 0x2

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/lit8 v11, v11, 0x1

    move/from16 v1, v17

    goto/16 :goto_1

    :cond_6
    return-object v7
.end method

.method public readRGB3D(ZI)Ljava/nio/ByteBuffer;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget v1, v0, Lcom/jme3/texture/plugins/DDSLoader;->redMask:I

    invoke-static {v1}, Lcom/jme3/texture/plugins/DDSLoader;->count(I)I

    move-result v1

    iget v2, v0, Lcom/jme3/texture/plugins/DDSLoader;->blueMask:I

    invoke-static {v2}, Lcom/jme3/texture/plugins/DDSLoader;->count(I)I

    move-result v2

    iget v3, v0, Lcom/jme3/texture/plugins/DDSLoader;->greenMask:I

    invoke-static {v3}, Lcom/jme3/texture/plugins/DDSLoader;->count(I)I

    move-result v3

    iget v4, v0, Lcom/jme3/texture/plugins/DDSLoader;->alphaMask:I

    invoke-static {v4}, Lcom/jme3/texture/plugins/DDSLoader;->count(I)I

    move-result v4

    iget v5, v0, Lcom/jme3/texture/plugins/DDSLoader;->redMask:I

    const/high16 v6, 0xff0000

    if-ne v5, v6, :cond_1

    iget v5, v0, Lcom/jme3/texture/plugins/DDSLoader;->greenMask:I

    const v6, 0xff00

    if-ne v5, v6, :cond_1

    iget v5, v0, Lcom/jme3/texture/plugins/DDSLoader;->blueMask:I

    const/16 v6, 0xff

    if-ne v5, v6, :cond_1

    iget v5, v0, Lcom/jme3/texture/plugins/DDSLoader;->alphaMask:I

    const/high16 v6, -0x1000000

    if-ne v5, v6, :cond_0

    iget v5, v0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    const/16 v6, 0x20

    if-ne v5, v6, :cond_0

    sget-object v5, Lcom/jme3/texture/plugins/DDSLoader;->logger:Ljava/util/logging/Logger;

    const-string v6, "Data source format: BGRA8"

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget v5, v0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    const/16 v6, 0x18

    if-ne v5, v6, :cond_1

    sget-object v5, Lcom/jme3/texture/plugins/DDSLoader;->logger:Ljava/util/logging/Logger;

    const-string v6, "Data source format: BGR8"

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget v5, v0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    div-int/lit8 v5, v5, 0x8

    iget-object v6, v0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    invoke-virtual {v6}, Lcom/jme3/texture/Image$Format;->getBitsPerPixel()I

    move-result v6

    div-int/lit8 v6, v6, 0x8

    iget v7, v0, Lcom/jme3/texture/plugins/DDSLoader;->depth:I

    mul-int v7, v7, p2

    invoke-static {v7}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    const/4 v9, 0x0

    :goto_1
    iget v10, v0, Lcom/jme3/texture/plugins/DDSLoader;->depth:I

    if-ge v9, v10, :cond_7

    iget v10, v0, Lcom/jme3/texture/plugins/DDSLoader;->width:I

    iget v11, v0, Lcom/jme3/texture/plugins/DDSLoader;->height:I

    mul-int v12, v9, p2

    new-array v13, v5, [B

    const/4 v14, 0x0

    :goto_2
    iget v15, v0, Lcom/jme3/texture/plugins/DDSLoader;->mipMapCount:I

    if-ge v14, v15, :cond_6

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v11, :cond_5

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v10, :cond_4

    move/from16 v17, v5

    iget-object v5, v0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v5, v13}, Ljava/io/DataInput;->readFully([B)V

    invoke-static {v13}, Lcom/jme3/texture/plugins/DDSLoader;->byte2int([B)I

    move-result v5

    move-object/from16 v18, v13

    iget v13, v0, Lcom/jme3/texture/plugins/DDSLoader;->redMask:I

    and-int/2addr v13, v5

    shr-int/2addr v13, v1

    int-to-byte v13, v13

    move/from16 v19, v1

    iget v1, v0, Lcom/jme3/texture/plugins/DDSLoader;->greenMask:I

    and-int/2addr v1, v5

    shr-int/2addr v1, v3

    int-to-byte v1, v1

    move/from16 v20, v3

    iget v3, v0, Lcom/jme3/texture/plugins/DDSLoader;->blueMask:I

    and-int/2addr v3, v5

    shr-int/2addr v3, v2

    int-to-byte v3, v3

    move/from16 v21, v2

    iget v2, v0, Lcom/jme3/texture/plugins/DDSLoader;->alphaMask:I

    and-int/2addr v2, v5

    shr-int/2addr v2, v4

    int-to-byte v2, v2

    if-eqz p1, :cond_2

    sub-int v5, v11, v15

    const/16 v16, 0x1

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v5, v10

    add-int/2addr v5, v8

    mul-int/2addr v5, v6

    add-int/2addr v5, v12

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_2
    iget v5, v0, Lcom/jme3/texture/plugins/DDSLoader;->alphaMask:I

    if-nez v5, :cond_3

    invoke-virtual {v7, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_5

    :cond_3
    invoke-virtual {v7, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_5
    add-int/lit8 v8, v8, 0x1

    move/from16 v5, v17

    move-object/from16 v13, v18

    move/from16 v1, v19

    move/from16 v3, v20

    move/from16 v2, v21

    goto :goto_4

    :cond_4
    move/from16 v19, v1

    move/from16 v21, v2

    move/from16 v20, v3

    move/from16 v17, v5

    move-object/from16 v18, v13

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_5
    move/from16 v19, v1

    move/from16 v21, v2

    move/from16 v20, v3

    move/from16 v17, v5

    move-object/from16 v18, v13

    mul-int v1, v10, v11

    mul-int/2addr v1, v6

    add-int/2addr v12, v1

    div-int/lit8 v10, v10, 0x2

    const/4 v1, 0x1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    div-int/lit8 v11, v11, 0x2

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    add-int/lit8 v14, v14, 0x1

    move/from16 v1, v19

    goto/16 :goto_2

    :cond_6
    move/from16 v19, v1

    move/from16 v21, v2

    move/from16 v20, v3

    move/from16 v17, v5

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v7
.end method
