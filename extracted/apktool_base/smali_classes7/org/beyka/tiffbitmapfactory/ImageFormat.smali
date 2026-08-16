.class public final enum Lorg/beyka/tiffbitmapfactory/ImageFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/beyka/tiffbitmapfactory/ImageFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/beyka/tiffbitmapfactory/ImageFormat;

.field public static final enum BMP:Lorg/beyka/tiffbitmapfactory/ImageFormat;

.field public static final enum JPEG:Lorg/beyka/tiffbitmapfactory/ImageFormat;

.field public static final enum PNG:Lorg/beyka/tiffbitmapfactory/ImageFormat;

.field public static final enum TIFF:Lorg/beyka/tiffbitmapfactory/ImageFormat;

.field public static final enum UNKNOWN:Lorg/beyka/tiffbitmapfactory/ImageFormat;


# instance fields
.field final ordinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/beyka/tiffbitmapfactory/ImageFormat;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/beyka/tiffbitmapfactory/ImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/ImageFormat;->UNKNOWN:Lorg/beyka/tiffbitmapfactory/ImageFormat;

    new-instance v0, Lorg/beyka/tiffbitmapfactory/ImageFormat;

    const-string v1, "JPEG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lorg/beyka/tiffbitmapfactory/ImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/ImageFormat;->JPEG:Lorg/beyka/tiffbitmapfactory/ImageFormat;

    new-instance v0, Lorg/beyka/tiffbitmapfactory/ImageFormat;

    const-string v1, "PNG"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lorg/beyka/tiffbitmapfactory/ImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/ImageFormat;->PNG:Lorg/beyka/tiffbitmapfactory/ImageFormat;

    new-instance v0, Lorg/beyka/tiffbitmapfactory/ImageFormat;

    const-string v1, "TIFF"

    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lorg/beyka/tiffbitmapfactory/ImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/ImageFormat;->TIFF:Lorg/beyka/tiffbitmapfactory/ImageFormat;

    new-instance v0, Lorg/beyka/tiffbitmapfactory/ImageFormat;

    const-string v1, "BMP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v3, v2}, Lorg/beyka/tiffbitmapfactory/ImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/ImageFormat;->BMP:Lorg/beyka/tiffbitmapfactory/ImageFormat;

    invoke-static {}, Lorg/beyka/tiffbitmapfactory/ImageFormat;->a()[Lorg/beyka/tiffbitmapfactory/ImageFormat;

    move-result-object v0

    sput-object v0, Lorg/beyka/tiffbitmapfactory/ImageFormat;->$VALUES:[Lorg/beyka/tiffbitmapfactory/ImageFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/beyka/tiffbitmapfactory/ImageFormat;->ordinal:I

    return-void
.end method

.method public static synthetic a()[Lorg/beyka/tiffbitmapfactory/ImageFormat;
    .locals 5

    sget-object v0, Lorg/beyka/tiffbitmapfactory/ImageFormat;->UNKNOWN:Lorg/beyka/tiffbitmapfactory/ImageFormat;

    sget-object v1, Lorg/beyka/tiffbitmapfactory/ImageFormat;->JPEG:Lorg/beyka/tiffbitmapfactory/ImageFormat;

    sget-object v2, Lorg/beyka/tiffbitmapfactory/ImageFormat;->PNG:Lorg/beyka/tiffbitmapfactory/ImageFormat;

    sget-object v3, Lorg/beyka/tiffbitmapfactory/ImageFormat;->TIFF:Lorg/beyka/tiffbitmapfactory/ImageFormat;

    sget-object v4, Lorg/beyka/tiffbitmapfactory/ImageFormat;->BMP:Lorg/beyka/tiffbitmapfactory/ImageFormat;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/beyka/tiffbitmapfactory/ImageFormat;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/beyka/tiffbitmapfactory/ImageFormat;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lorg/beyka/tiffbitmapfactory/ImageFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/beyka/tiffbitmapfactory/ImageFormat;

    return-object p0
.end method

.method public static values()[Lorg/beyka/tiffbitmapfactory/ImageFormat;
    .locals 1

    sget-object v0, Lorg/beyka/tiffbitmapfactory/ImageFormat;->$VALUES:[Lorg/beyka/tiffbitmapfactory/ImageFormat;

    invoke-virtual {v0}, [Lorg/beyka/tiffbitmapfactory/ImageFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/beyka/tiffbitmapfactory/ImageFormat;

    return-object v0
.end method
