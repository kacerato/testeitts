.class public final enum Lcom/ardor3d/image/ImageDataFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ardor3d/image/ImageDataFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ardor3d/image/ImageDataFormat;

.field public static final enum Alpha:Lcom/ardor3d/image/ImageDataFormat;

.field public static final enum BGR:Lcom/ardor3d/image/ImageDataFormat;

.field public static final enum BGRA:Lcom/ardor3d/image/ImageDataFormat;

.field public static final enum Blue:Lcom/ardor3d/image/ImageDataFormat;

.field public static final enum ColorIndex:Lcom/ardor3d/image/ImageDataFormat;

.field public static final enum Depth:Lcom/ardor3d/image/ImageDataFormat;

.field public static final enum Green:Lcom/ardor3d/image/ImageDataFormat;

.field public static final enum Intensity:Lcom/ardor3d/image/ImageDataFormat;

.field public static final enum Luminance:Lcom/ardor3d/image/ImageDataFormat;

.field public static final enum LuminanceAlpha:Lcom/ardor3d/image/ImageDataFormat;

.field public static final enum PrecompressedDXT1:Lcom/ardor3d/image/ImageDataFormat;

.field public static final enum PrecompressedDXT1A:Lcom/ardor3d/image/ImageDataFormat;

.field public static final enum PrecompressedDXT3:Lcom/ardor3d/image/ImageDataFormat;

.field public static final enum PrecompressedDXT5:Lcom/ardor3d/image/ImageDataFormat;

.field public static final enum PrecompressedLATC_L:Lcom/ardor3d/image/ImageDataFormat;

.field public static final enum PrecompressedLATC_LA:Lcom/ardor3d/image/ImageDataFormat;

.field public static final enum RGB:Lcom/ardor3d/image/ImageDataFormat;

.field public static final enum RGBA:Lcom/ardor3d/image/ImageDataFormat;

.field public static final enum Red:Lcom/ardor3d/image/ImageDataFormat;

.field public static final enum StencilIndex:Lcom/ardor3d/image/ImageDataFormat;


# instance fields
.field private final _components:I

.field private final _compressed:Z

.field private final _hasAlpha:Z


# direct methods
.method static constructor <clinit>()V
    .locals 41

    new-instance v7, Lcom/ardor3d/image/ImageDataFormat;

    move-object v6, v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, "RGB"

    const/4 v2, 0x0

    const/4 v3, 0x3

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lcom/ardor3d/image/ImageDataFormat;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v7, Lcom/ardor3d/image/ImageDataFormat;->RGB:Lcom/ardor3d/image/ImageDataFormat;

    new-instance v0, Lcom/ardor3d/image/ImageDataFormat;

    move-object v7, v0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const-string v9, "RGBA"

    const/4 v10, 0x1

    const/4 v11, 0x4

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/ardor3d/image/ImageDataFormat;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ardor3d/image/ImageDataFormat;->RGBA:Lcom/ardor3d/image/ImageDataFormat;

    new-instance v0, Lcom/ardor3d/image/ImageDataFormat;

    move-object v8, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v15, "BGR"

    const/16 v16, 0x2

    const/16 v17, 0x3

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lcom/ardor3d/image/ImageDataFormat;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ardor3d/image/ImageDataFormat;->BGR:Lcom/ardor3d/image/ImageDataFormat;

    new-instance v0, Lcom/ardor3d/image/ImageDataFormat;

    move-object v9, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const-string v21, "BGRA"

    const/16 v22, 0x3

    const/16 v23, 0x4

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v25}, Lcom/ardor3d/image/ImageDataFormat;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ardor3d/image/ImageDataFormat;->BGRA:Lcom/ardor3d/image/ImageDataFormat;

    new-instance v0, Lcom/ardor3d/image/ImageDataFormat;

    move-object v10, v0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v12, "Luminance"

    const/4 v13, 0x4

    const/4 v14, 0x1

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/ardor3d/image/ImageDataFormat;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ardor3d/image/ImageDataFormat;->Luminance:Lcom/ardor3d/image/ImageDataFormat;

    new-instance v0, Lcom/ardor3d/image/ImageDataFormat;

    move-object v11, v0

    const/16 v21, 0x0

    const/16 v22, 0x1

    const-string v18, "LuminanceAlpha"

    const/16 v19, 0x5

    const/16 v20, 0x2

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v22}, Lcom/ardor3d/image/ImageDataFormat;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ardor3d/image/ImageDataFormat;->LuminanceAlpha:Lcom/ardor3d/image/ImageDataFormat;

    new-instance v0, Lcom/ardor3d/image/ImageDataFormat;

    move-object v12, v0

    const/16 v27, 0x0

    const/16 v28, 0x1

    const-string v24, "Alpha"

    const/16 v25, 0x6

    const/16 v26, 0x1

    move-object/from16 v23, v0

    invoke-direct/range {v23 .. v28}, Lcom/ardor3d/image/ImageDataFormat;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ardor3d/image/ImageDataFormat;->Alpha:Lcom/ardor3d/image/ImageDataFormat;

    new-instance v0, Lcom/ardor3d/image/ImageDataFormat;

    move-object v13, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v15, "Intensity"

    const/16 v16, 0x7

    const/16 v17, 0x1

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lcom/ardor3d/image/ImageDataFormat;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ardor3d/image/ImageDataFormat;->Intensity:Lcom/ardor3d/image/ImageDataFormat;

    new-instance v0, Lcom/ardor3d/image/ImageDataFormat;

    move-object v14, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v21, "Red"

    const/16 v22, 0x8

    const/16 v23, 0x1

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v25}, Lcom/ardor3d/image/ImageDataFormat;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ardor3d/image/ImageDataFormat;->Red:Lcom/ardor3d/image/ImageDataFormat;

    new-instance v0, Lcom/ardor3d/image/ImageDataFormat;

    move-object v15, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const-string v27, "Green"

    const/16 v28, 0x9

    const/16 v29, 0x1

    move-object/from16 v26, v0

    invoke-direct/range {v26 .. v31}, Lcom/ardor3d/image/ImageDataFormat;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ardor3d/image/ImageDataFormat;->Green:Lcom/ardor3d/image/ImageDataFormat;

    new-instance v0, Lcom/ardor3d/image/ImageDataFormat;

    move-object/from16 v16, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string v18, "Blue"

    const/16 v19, 0xa

    const/16 v20, 0x1

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v22}, Lcom/ardor3d/image/ImageDataFormat;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ardor3d/image/ImageDataFormat;->Blue:Lcom/ardor3d/image/ImageDataFormat;

    new-instance v0, Lcom/ardor3d/image/ImageDataFormat;

    move-object/from16 v17, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-string v24, "StencilIndex"

    const/16 v25, 0xb

    const/16 v26, 0x1

    move-object/from16 v23, v0

    invoke-direct/range {v23 .. v28}, Lcom/ardor3d/image/ImageDataFormat;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ardor3d/image/ImageDataFormat;->StencilIndex:Lcom/ardor3d/image/ImageDataFormat;

    new-instance v0, Lcom/ardor3d/image/ImageDataFormat;

    move-object/from16 v18, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const-string v30, "ColorIndex"

    const/16 v31, 0xc

    const/16 v32, 0x1

    move-object/from16 v29, v0

    invoke-direct/range {v29 .. v34}, Lcom/ardor3d/image/ImageDataFormat;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ardor3d/image/ImageDataFormat;->ColorIndex:Lcom/ardor3d/image/ImageDataFormat;

    new-instance v0, Lcom/ardor3d/image/ImageDataFormat;

    move-object/from16 v19, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v21, "Depth"

    const/16 v22, 0xd

    const/16 v23, 0x1

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v25}, Lcom/ardor3d/image/ImageDataFormat;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ardor3d/image/ImageDataFormat;->Depth:Lcom/ardor3d/image/ImageDataFormat;

    new-instance v0, Lcom/ardor3d/image/ImageDataFormat;

    move-object/from16 v20, v0

    const/16 v30, 0x1

    const/16 v31, 0x0

    const-string v27, "PrecompressedDXT1"

    const/16 v28, 0xe

    const/16 v29, 0x1

    move-object/from16 v26, v0

    invoke-direct/range {v26 .. v31}, Lcom/ardor3d/image/ImageDataFormat;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ardor3d/image/ImageDataFormat;->PrecompressedDXT1:Lcom/ardor3d/image/ImageDataFormat;

    new-instance v0, Lcom/ardor3d/image/ImageDataFormat;

    move-object/from16 v21, v0

    const/16 v36, 0x1

    const/16 v37, 0x1

    const-string v33, "PrecompressedDXT1A"

    const/16 v34, 0xf

    const/16 v35, 0x1

    move-object/from16 v32, v0

    invoke-direct/range {v32 .. v37}, Lcom/ardor3d/image/ImageDataFormat;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ardor3d/image/ImageDataFormat;->PrecompressedDXT1A:Lcom/ardor3d/image/ImageDataFormat;

    new-instance v0, Lcom/ardor3d/image/ImageDataFormat;

    move-object/from16 v22, v0

    const/16 v27, 0x1

    const/16 v28, 0x1

    const-string v24, "PrecompressedDXT3"

    const/16 v25, 0x10

    const/16 v26, 0x2

    move-object/from16 v23, v0

    invoke-direct/range {v23 .. v28}, Lcom/ardor3d/image/ImageDataFormat;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ardor3d/image/ImageDataFormat;->PrecompressedDXT3:Lcom/ardor3d/image/ImageDataFormat;

    new-instance v0, Lcom/ardor3d/image/ImageDataFormat;

    move-object/from16 v23, v0

    const/16 v33, 0x1

    const/16 v34, 0x1

    const-string v30, "PrecompressedDXT5"

    const/16 v31, 0x11

    const/16 v32, 0x2

    move-object/from16 v29, v0

    invoke-direct/range {v29 .. v34}, Lcom/ardor3d/image/ImageDataFormat;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ardor3d/image/ImageDataFormat;->PrecompressedDXT5:Lcom/ardor3d/image/ImageDataFormat;

    new-instance v0, Lcom/ardor3d/image/ImageDataFormat;

    move-object/from16 v24, v0

    const/16 v39, 0x1

    const/16 v40, 0x1

    const-string v36, "PrecompressedLATC_L"

    const/16 v37, 0x12

    const/16 v38, 0x1

    move-object/from16 v35, v0

    invoke-direct/range {v35 .. v40}, Lcom/ardor3d/image/ImageDataFormat;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ardor3d/image/ImageDataFormat;->PrecompressedLATC_L:Lcom/ardor3d/image/ImageDataFormat;

    new-instance v0, Lcom/ardor3d/image/ImageDataFormat;

    move-object/from16 v25, v0

    const/16 v30, 0x1

    const/16 v31, 0x1

    const-string v27, "PrecompressedLATC_LA"

    const/16 v28, 0x13

    const/16 v29, 0x2

    move-object/from16 v26, v0

    invoke-direct/range {v26 .. v31}, Lcom/ardor3d/image/ImageDataFormat;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ardor3d/image/ImageDataFormat;->PrecompressedLATC_LA:Lcom/ardor3d/image/ImageDataFormat;

    filled-new-array/range {v6 .. v25}, [Lcom/ardor3d/image/ImageDataFormat;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/image/ImageDataFormat;->$VALUES:[Lcom/ardor3d/image/ImageDataFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/ardor3d/image/ImageDataFormat;->_components:I

    iput-boolean p4, p0, Lcom/ardor3d/image/ImageDataFormat;->_compressed:Z

    iput-boolean p5, p0, Lcom/ardor3d/image/ImageDataFormat;->_hasAlpha:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ardor3d/image/ImageDataFormat;
    .locals 1

    const-class v0, Lcom/ardor3d/image/ImageDataFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/image/ImageDataFormat;

    return-object p0
.end method

.method public static values()[Lcom/ardor3d/image/ImageDataFormat;
    .locals 1

    sget-object v0, Lcom/ardor3d/image/ImageDataFormat;->$VALUES:[Lcom/ardor3d/image/ImageDataFormat;

    invoke-virtual {v0}, [Lcom/ardor3d/image/ImageDataFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/image/ImageDataFormat;

    return-object v0
.end method


# virtual methods
.method public getComponents()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/image/ImageDataFormat;->_components:I

    return v0
.end method

.method public hasAlpha()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/image/ImageDataFormat;->_hasAlpha:Z

    return v0
.end method

.method public isCompressed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/image/ImageDataFormat;->_compressed:Z

    return v0
.end method
