.class public final enum Lcom/ardor3d/image/TextureStoreFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ardor3d/image/TextureStoreFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum Alpha12:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum Alpha16:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum Alpha16F:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum Alpha32F:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum Alpha4:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum Alpha8:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum CompressedLuminance:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum CompressedLuminanceAlpha:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum CompressedRGB:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum CompressedRGBA:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum Depth:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum Depth16:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum Depth24:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum Depth32:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum Depth32F:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum GuessCompressedFormat:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum GuessNoCompressedFormat:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum Intensity12:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum Intensity16:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum Intensity16F:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum Intensity32F:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum Intensity4:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum Intensity8:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum Luminance12:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum Luminance12Alpha12:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum Luminance12Alpha4:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum Luminance16:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum Luminance16Alpha16:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum Luminance16F:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum Luminance32F:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum Luminance4:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum Luminance4Alpha4:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum Luminance6Alpha2:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum Luminance8:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum Luminance8Alpha8:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum LuminanceAlpha16F:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum LuminanceAlpha32F:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum NativeDXT1:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum NativeDXT1A:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum NativeDXT3:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum NativeDXT5:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum NativeLATC_L:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum NativeLATC_LA:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum R3G3B2:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum RGB10:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum RGB10A2:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum RGB12:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum RGB16:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum RGB16F:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum RGB32F:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum RGB4:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum RGB5:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum RGB5A1:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum RGB8:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum RGBA12:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum RGBA16:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum RGBA16F:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum RGBA2:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum RGBA32F:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum RGBA4:Lcom/ardor3d/image/TextureStoreFormat;

.field public static final enum RGBA8:Lcom/ardor3d/image/TextureStoreFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 64

    new-instance v1, Lcom/ardor3d/image/TextureStoreFormat;

    move-object v0, v1

    const-string v2, "GuessCompressedFormat"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ardor3d/image/TextureStoreFormat;->GuessCompressedFormat:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v2, Lcom/ardor3d/image/TextureStoreFormat;

    move-object v1, v2

    const-string v3, "GuessNoCompressedFormat"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ardor3d/image/TextureStoreFormat;->GuessNoCompressedFormat:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v3, Lcom/ardor3d/image/TextureStoreFormat;

    move-object v2, v3

    const-string v4, "Alpha4"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ardor3d/image/TextureStoreFormat;->Alpha4:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v4, Lcom/ardor3d/image/TextureStoreFormat;

    move-object v3, v4

    const-string v5, "Alpha8"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ardor3d/image/TextureStoreFormat;->Alpha8:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v5, Lcom/ardor3d/image/TextureStoreFormat;

    move-object v4, v5

    const-string v6, "Alpha12"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ardor3d/image/TextureStoreFormat;->Alpha12:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v6, Lcom/ardor3d/image/TextureStoreFormat;

    move-object v5, v6

    const-string v7, "Alpha16"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/ardor3d/image/TextureStoreFormat;->Alpha16:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v7, Lcom/ardor3d/image/TextureStoreFormat;

    move-object v6, v7

    const-string v8, "Luminance4"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ardor3d/image/TextureStoreFormat;->Luminance4:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v8, Lcom/ardor3d/image/TextureStoreFormat;

    move-object v7, v8

    const-string v9, "Luminance8"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/ardor3d/image/TextureStoreFormat;->Luminance8:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v9, Lcom/ardor3d/image/TextureStoreFormat;

    move-object v8, v9

    const-string v10, "Luminance12"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ardor3d/image/TextureStoreFormat;->Luminance12:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v10, Lcom/ardor3d/image/TextureStoreFormat;

    move-object v9, v10

    const-string v11, "Luminance16"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/ardor3d/image/TextureStoreFormat;->Luminance16:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v11, Lcom/ardor3d/image/TextureStoreFormat;

    move-object v10, v11

    const-string v12, "Luminance4Alpha4"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/ardor3d/image/TextureStoreFormat;->Luminance4Alpha4:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v12, Lcom/ardor3d/image/TextureStoreFormat;

    move-object v11, v12

    const-string v13, "Luminance6Alpha2"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/ardor3d/image/TextureStoreFormat;->Luminance6Alpha2:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v13, Lcom/ardor3d/image/TextureStoreFormat;

    move-object v12, v13

    const-string v14, "Luminance8Alpha8"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/ardor3d/image/TextureStoreFormat;->Luminance8Alpha8:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v14, Lcom/ardor3d/image/TextureStoreFormat;

    move-object v13, v14

    const-string v15, "Luminance12Alpha4"

    move-object/from16 v61, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/ardor3d/image/TextureStoreFormat;->Luminance12Alpha4:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object v14, v0

    const-string v15, "Luminance12Alpha12"

    move-object/from16 v62, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->Luminance12Alpha12:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object v15, v0

    const-string v1, "Luminance16Alpha16"

    move-object/from16 v63, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->Luminance16Alpha16:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v16, v0

    const-string v1, "Intensity4"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->Intensity4:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v17, v0

    const-string v1, "Intensity8"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->Intensity8:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v18, v0

    const-string v1, "Intensity12"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->Intensity12:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v19, v0

    const-string v1, "Intensity16"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->Intensity16:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v20, v0

    const-string v1, "R3G3B2"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->R3G3B2:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v21, v0

    const-string v1, "RGB4"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->RGB4:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v22, v0

    const-string v1, "RGB5"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->RGB5:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v23, v0

    const-string v1, "RGB8"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->RGB8:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v24, v0

    const-string v1, "RGB10"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->RGB10:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v25, v0

    const-string v1, "RGB12"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->RGB12:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v26, v0

    const-string v1, "RGB16"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->RGB16:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v27, v0

    const-string v1, "RGBA2"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->RGBA2:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v28, v0

    const-string v1, "RGBA4"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->RGBA4:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v29, v0

    const-string v1, "RGB5A1"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->RGB5A1:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v30, v0

    const-string v1, "RGBA8"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->RGBA8:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v31, v0

    const-string v1, "RGB10A2"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->RGB10A2:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v32, v0

    const-string v1, "RGBA12"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->RGBA12:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v33, v0

    const-string v1, "RGBA16"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->RGBA16:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v34, v0

    const-string v1, "CompressedRGB"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->CompressedRGB:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v35, v0

    const-string v1, "CompressedRGBA"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->CompressedRGBA:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v36, v0

    const-string v1, "CompressedLuminance"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->CompressedLuminance:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v37, v0

    const-string v1, "CompressedLuminanceAlpha"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->CompressedLuminanceAlpha:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v38, v0

    const-string v1, "NativeDXT1"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->NativeDXT1:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v39, v0

    const-string v1, "NativeDXT1A"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->NativeDXT1A:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v40, v0

    const-string v1, "NativeDXT3"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->NativeDXT3:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v41, v0

    const-string v1, "NativeDXT5"

    const/16 v2, 0x29

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->NativeDXT5:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v42, v0

    const-string v1, "NativeLATC_L"

    const/16 v2, 0x2a

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->NativeLATC_L:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v43, v0

    const-string v1, "NativeLATC_LA"

    const/16 v2, 0x2b

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->NativeLATC_LA:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v44, v0

    const-string v1, "Depth"

    const/16 v2, 0x2c

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->Depth:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v45, v0

    const-string v1, "Depth16"

    const/16 v2, 0x2d

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->Depth16:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v46, v0

    const-string v1, "Depth24"

    const/16 v2, 0x2e

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->Depth24:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v47, v0

    const-string v1, "Depth32"

    const/16 v2, 0x2f

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->Depth32:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v48, v0

    const-string v1, "Depth32F"

    const/16 v2, 0x30

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->Depth32F:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v49, v0

    const-string v1, "RGB16F"

    const/16 v2, 0x31

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->RGB16F:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v50, v0

    const-string v1, "RGB32F"

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->RGB32F:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v51, v0

    const-string v1, "RGBA16F"

    const/16 v2, 0x33

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->RGBA16F:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v52, v0

    const-string v1, "RGBA32F"

    const/16 v2, 0x34

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->RGBA32F:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v53, v0

    const-string v1, "Alpha16F"

    const/16 v2, 0x35

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->Alpha16F:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v54, v0

    const-string v1, "Alpha32F"

    const/16 v2, 0x36

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->Alpha32F:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v55, v0

    const-string v1, "Luminance16F"

    const/16 v2, 0x37

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->Luminance16F:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v56, v0

    const-string v1, "Luminance32F"

    const/16 v2, 0x38

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->Luminance32F:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v57, v0

    const-string v1, "LuminanceAlpha16F"

    const/16 v2, 0x39

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->LuminanceAlpha16F:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v58, v0

    const-string v1, "LuminanceAlpha32F"

    const/16 v2, 0x3a

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->LuminanceAlpha32F:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v59, v0

    const-string v1, "Intensity16F"

    const/16 v2, 0x3b

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->Intensity16F:Lcom/ardor3d/image/TextureStoreFormat;

    new-instance v0, Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v60, v0

    const-string v1, "Intensity32F"

    const/16 v2, 0x3c

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureStoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->Intensity32F:Lcom/ardor3d/image/TextureStoreFormat;

    move-object/from16 v0, v61

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    filled-new-array/range {v0 .. v60}, [Lcom/ardor3d/image/TextureStoreFormat;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/image/TextureStoreFormat;->$VALUES:[Lcom/ardor3d/image/TextureStoreFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ardor3d/image/TextureStoreFormat;
    .locals 1

    const-class v0, Lcom/ardor3d/image/TextureStoreFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/image/TextureStoreFormat;

    return-object p0
.end method

.method public static values()[Lcom/ardor3d/image/TextureStoreFormat;
    .locals 1

    sget-object v0, Lcom/ardor3d/image/TextureStoreFormat;->$VALUES:[Lcom/ardor3d/image/TextureStoreFormat;

    invoke-virtual {v0}, [Lcom/ardor3d/image/TextureStoreFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/image/TextureStoreFormat;

    return-object v0
.end method


# virtual methods
.method public isCompressed()Z
    .locals 2

    sget-object v0, Lcom/ardor3d/image/TextureStoreFormat$1;->$SwitchMap$com$ardor3d$image$TextureStoreFormat:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isDepthFormat()Z
    .locals 1

    sget-object v0, Lcom/ardor3d/image/TextureStoreFormat;->Depth16:Lcom/ardor3d/image/TextureStoreFormat;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/ardor3d/image/TextureStoreFormat;->Depth24:Lcom/ardor3d/image/TextureStoreFormat;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/ardor3d/image/TextureStoreFormat;->Depth32:Lcom/ardor3d/image/TextureStoreFormat;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
