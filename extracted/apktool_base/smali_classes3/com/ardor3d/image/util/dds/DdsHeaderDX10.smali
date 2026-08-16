.class Lcom/ardor3d/image/util/dds/DdsHeaderDX10;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final D3D10_RESOURCE_MISC_GDI_COMPATIBLE:I = 0x20

.field static final D3D10_RESOURCE_MISC_GENERATE_MIPS:I = 0x1

.field static final D3D10_RESOURCE_MISC_SHARED:I = 0x2

.field static final D3D10_RESOURCE_MISC_SHARED_KEYEDMUTEX:I = 0x10

.field static final D3D10_RESOURCE_MISC_TEXTURECUBE:I = 0x4


# instance fields
.field arraySize:I

.field dxgiFormat:Lcom/ardor3d/image/util/dds/DxgiFormat;

.field miscFlag:I

.field reserved:I

.field resourceDimension:Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lcom/ardor3d/util/LittleEndianDataInput;)Lcom/ardor3d/image/util/dds/DdsHeaderDX10;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/ardor3d/image/util/dds/DdsHeaderDX10;

    invoke-direct {v0}, Lcom/ardor3d/image/util/dds/DdsHeaderDX10;-><init>()V

    invoke-virtual {p0}, Lcom/ardor3d/util/LittleEndianDataInput;->readInt()I

    move-result v1

    invoke-static {v1}, Lcom/ardor3d/image/util/dds/DxgiFormat;->forInt(I)Lcom/ardor3d/image/util/dds/DxgiFormat;

    move-result-object v1

    iput-object v1, v0, Lcom/ardor3d/image/util/dds/DdsHeaderDX10;->dxgiFormat:Lcom/ardor3d/image/util/dds/DxgiFormat;

    invoke-virtual {p0}, Lcom/ardor3d/util/LittleEndianDataInput;->readInt()I

    move-result v1

    invoke-static {v1}, Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;->forInt(I)Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;

    move-result-object v1

    iput-object v1, v0, Lcom/ardor3d/image/util/dds/DdsHeaderDX10;->resourceDimension:Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;

    invoke-virtual {p0}, Lcom/ardor3d/util/LittleEndianDataInput;->readInt()I

    move-result v1

    iput v1, v0, Lcom/ardor3d/image/util/dds/DdsHeaderDX10;->miscFlag:I

    invoke-virtual {p0}, Lcom/ardor3d/util/LittleEndianDataInput;->readInt()I

    move-result v1

    iput v1, v0, Lcom/ardor3d/image/util/dds/DdsHeaderDX10;->arraySize:I

    invoke-virtual {p0}, Lcom/ardor3d/util/LittleEndianDataInput;->readInt()I

    move-result p0

    iput p0, v0, Lcom/ardor3d/image/util/dds/DdsHeaderDX10;->reserved:I

    return-object v0
.end method
