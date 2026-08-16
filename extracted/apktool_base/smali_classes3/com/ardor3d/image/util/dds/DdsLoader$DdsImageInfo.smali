.class final Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/image/util/dds/DdsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DdsImageInfo"
.end annotation


# instance fields
.field bpp:I

.field flipVertically:Z

.field header:Lcom/ardor3d/image/util/dds/DdsHeader;

.field headerDX10:Lcom/ardor3d/image/util/dds/DdsHeaderDX10;

.field mipmapByteSizes:[I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->bpp:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ardor3d/image/util/dds/DdsLoader$1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public calcMipmapSizes(Z)V
    .locals 5

    iget-object v0, p0, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->header:Lcom/ardor3d/image/util/dds/DdsHeader;

    iget v1, v0, Lcom/ardor3d/image/util/dds/DdsHeader;->dwWidth:I

    iget v2, v0, Lcom/ardor3d/image/util/dds/DdsHeader;->dwHeight:I

    iget v0, v0, Lcom/ardor3d/image/util/dds/DdsHeader;->dwMipMapCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->mipmapByteSizes:[I

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->header:Lcom/ardor3d/image/util/dds/DdsHeader;

    iget v3, v3, Lcom/ardor3d/image/util/dds/DdsHeader;->dwMipMapCount:I

    if-ge v0, v3, :cond_1

    if-eqz p1, :cond_0

    add-int/lit8 v3, v1, 0x3

    div-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, v2, 0x3

    div-int/lit8 v4, v4, 0x4

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->bpp:I

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_0
    mul-int v3, v1, v2

    iget v4, p0, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->bpp:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x8

    :goto_1
    iget-object v4, p0, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->mipmapByteSizes:[I

    add-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    mul-int/lit8 v3, v3, 0x4

    aput v3, v4, v0

    div-int/lit8 v1, v1, 0x2

    const/4 v3, 0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    div-int/lit8 v2, v2, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
