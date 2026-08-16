.class public final enum Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;

.field public static final enum ALPHA_8:Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;

.field public static final enum ARGB_8888:Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;

.field public static final enum RGB_565:Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;


# instance fields
.field final ordinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;

    const-string v1, "ARGB_8888"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;->ARGB_8888:Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;

    new-instance v0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;

    const/4 v1, 0x1

    const/4 v2, 0x4

    const-string v4, "RGB_565"

    invoke-direct {v0, v4, v1, v2}, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;->RGB_565:Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;

    new-instance v0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;

    const-string v1, "ALPHA_8"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v3, v2}, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;->ALPHA_8:Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;

    invoke-static {}, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;->a()[Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;

    move-result-object v0

    sput-object v0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;->$VALUES:[Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;

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

    iput p3, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;->ordinal:I

    return-void
.end method

.method public static synthetic a()[Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;
    .locals 3

    sget-object v0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;->ARGB_8888:Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;

    sget-object v1, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;->RGB_565:Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;

    sget-object v2, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;->ALPHA_8:Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;

    filled-new-array {v0, v1, v2}, [Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;

    return-object p0
.end method

.method public static values()[Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;
    .locals 1

    sget-object v0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;->$VALUES:[Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;

    invoke-virtual {v0}, [Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;

    return-object v0
.end method
