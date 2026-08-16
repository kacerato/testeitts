.class public final enum Lorg/beyka/tiffbitmapfactory/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/beyka/tiffbitmapfactory/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/beyka/tiffbitmapfactory/f;

.field public static final enum CIELAB:Lorg/beyka/tiffbitmapfactory/f;

.field public static final enum ICCLAB:Lorg/beyka/tiffbitmapfactory/f;

.field public static final enum ITULAB:Lorg/beyka/tiffbitmapfactory/f;

.field public static final enum LOGL:Lorg/beyka/tiffbitmapfactory/f;

.field public static final enum LOGLUV:Lorg/beyka/tiffbitmapfactory/f;

.field public static final enum MASK:Lorg/beyka/tiffbitmapfactory/f;

.field public static final enum MINISBLACK:Lorg/beyka/tiffbitmapfactory/f;

.field public static final enum MINISWHITE:Lorg/beyka/tiffbitmapfactory/f;

.field public static final enum OTHER:Lorg/beyka/tiffbitmapfactory/f;

.field public static final enum PALETTE:Lorg/beyka/tiffbitmapfactory/f;

.field public static final enum RGB:Lorg/beyka/tiffbitmapfactory/f;

.field public static final enum SEPARATED:Lorg/beyka/tiffbitmapfactory/f;

.field public static final enum YCBCR:Lorg/beyka/tiffbitmapfactory/f;


# instance fields
.field final ordinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/beyka/tiffbitmapfactory/f;

    const-string v1, "MINISWHITE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/beyka/tiffbitmapfactory/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/f;->MINISWHITE:Lorg/beyka/tiffbitmapfactory/f;

    new-instance v0, Lorg/beyka/tiffbitmapfactory/f;

    const-string v1, "MINISBLACK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lorg/beyka/tiffbitmapfactory/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/f;->MINISBLACK:Lorg/beyka/tiffbitmapfactory/f;

    new-instance v0, Lorg/beyka/tiffbitmapfactory/f;

    const-string v1, "RGB"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lorg/beyka/tiffbitmapfactory/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/f;->RGB:Lorg/beyka/tiffbitmapfactory/f;

    new-instance v0, Lorg/beyka/tiffbitmapfactory/f;

    const-string v1, "PALETTE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lorg/beyka/tiffbitmapfactory/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/f;->PALETTE:Lorg/beyka/tiffbitmapfactory/f;

    new-instance v0, Lorg/beyka/tiffbitmapfactory/f;

    const-string v1, "MASK"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lorg/beyka/tiffbitmapfactory/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/f;->MASK:Lorg/beyka/tiffbitmapfactory/f;

    new-instance v0, Lorg/beyka/tiffbitmapfactory/f;

    const-string v1, "SEPARATED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lorg/beyka/tiffbitmapfactory/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/f;->SEPARATED:Lorg/beyka/tiffbitmapfactory/f;

    new-instance v0, Lorg/beyka/tiffbitmapfactory/f;

    const-string v1, "YCBCR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lorg/beyka/tiffbitmapfactory/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/f;->YCBCR:Lorg/beyka/tiffbitmapfactory/f;

    new-instance v0, Lorg/beyka/tiffbitmapfactory/f;

    const-string v1, "CIELAB"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lorg/beyka/tiffbitmapfactory/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/f;->CIELAB:Lorg/beyka/tiffbitmapfactory/f;

    new-instance v0, Lorg/beyka/tiffbitmapfactory/f;

    const-string v1, "ICCLAB"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v3, v2}, Lorg/beyka/tiffbitmapfactory/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/f;->ICCLAB:Lorg/beyka/tiffbitmapfactory/f;

    new-instance v0, Lorg/beyka/tiffbitmapfactory/f;

    const-string v1, "ITULAB"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lorg/beyka/tiffbitmapfactory/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/f;->ITULAB:Lorg/beyka/tiffbitmapfactory/f;

    new-instance v0, Lorg/beyka/tiffbitmapfactory/f;

    const-string v1, "LOGL"

    const v2, 0x804c

    invoke-direct {v0, v1, v3, v2}, Lorg/beyka/tiffbitmapfactory/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/f;->LOGL:Lorg/beyka/tiffbitmapfactory/f;

    new-instance v0, Lorg/beyka/tiffbitmapfactory/f;

    const/16 v1, 0xb

    const v2, 0x804d

    const-string v3, "LOGLUV"

    invoke-direct {v0, v3, v1, v2}, Lorg/beyka/tiffbitmapfactory/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/f;->LOGLUV:Lorg/beyka/tiffbitmapfactory/f;

    new-instance v0, Lorg/beyka/tiffbitmapfactory/f;

    const/16 v1, 0xc

    const/4 v2, -0x1

    const-string v3, "OTHER"

    invoke-direct {v0, v3, v1, v2}, Lorg/beyka/tiffbitmapfactory/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/f;->OTHER:Lorg/beyka/tiffbitmapfactory/f;

    invoke-static {}, Lorg/beyka/tiffbitmapfactory/f;->a()[Lorg/beyka/tiffbitmapfactory/f;

    move-result-object v0

    sput-object v0, Lorg/beyka/tiffbitmapfactory/f;->$VALUES:[Lorg/beyka/tiffbitmapfactory/f;

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

    iput p3, p0, Lorg/beyka/tiffbitmapfactory/f;->ordinal:I

    return-void
.end method

.method public static synthetic a()[Lorg/beyka/tiffbitmapfactory/f;
    .locals 13

    sget-object v0, Lorg/beyka/tiffbitmapfactory/f;->MINISWHITE:Lorg/beyka/tiffbitmapfactory/f;

    sget-object v1, Lorg/beyka/tiffbitmapfactory/f;->MINISBLACK:Lorg/beyka/tiffbitmapfactory/f;

    sget-object v2, Lorg/beyka/tiffbitmapfactory/f;->RGB:Lorg/beyka/tiffbitmapfactory/f;

    sget-object v3, Lorg/beyka/tiffbitmapfactory/f;->PALETTE:Lorg/beyka/tiffbitmapfactory/f;

    sget-object v4, Lorg/beyka/tiffbitmapfactory/f;->MASK:Lorg/beyka/tiffbitmapfactory/f;

    sget-object v5, Lorg/beyka/tiffbitmapfactory/f;->SEPARATED:Lorg/beyka/tiffbitmapfactory/f;

    sget-object v6, Lorg/beyka/tiffbitmapfactory/f;->YCBCR:Lorg/beyka/tiffbitmapfactory/f;

    sget-object v7, Lorg/beyka/tiffbitmapfactory/f;->CIELAB:Lorg/beyka/tiffbitmapfactory/f;

    sget-object v8, Lorg/beyka/tiffbitmapfactory/f;->ICCLAB:Lorg/beyka/tiffbitmapfactory/f;

    sget-object v9, Lorg/beyka/tiffbitmapfactory/f;->ITULAB:Lorg/beyka/tiffbitmapfactory/f;

    sget-object v10, Lorg/beyka/tiffbitmapfactory/f;->LOGL:Lorg/beyka/tiffbitmapfactory/f;

    sget-object v11, Lorg/beyka/tiffbitmapfactory/f;->LOGLUV:Lorg/beyka/tiffbitmapfactory/f;

    sget-object v12, Lorg/beyka/tiffbitmapfactory/f;->OTHER:Lorg/beyka/tiffbitmapfactory/f;

    filled-new-array/range {v0 .. v12}, [Lorg/beyka/tiffbitmapfactory/f;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/beyka/tiffbitmapfactory/f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lorg/beyka/tiffbitmapfactory/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/beyka/tiffbitmapfactory/f;

    return-object p0
.end method

.method public static values()[Lorg/beyka/tiffbitmapfactory/f;
    .locals 1

    sget-object v0, Lorg/beyka/tiffbitmapfactory/f;->$VALUES:[Lorg/beyka/tiffbitmapfactory/f;

    invoke-virtual {v0}, [Lorg/beyka/tiffbitmapfactory/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/beyka/tiffbitmapfactory/f;

    return-object v0
.end method
