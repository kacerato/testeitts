.class public final enum Lorg/beyka/tiffbitmapfactory/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/beyka/tiffbitmapfactory/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/beyka/tiffbitmapfactory/b;

.field public static final enum ADOBE_DEFLATE:Lorg/beyka/tiffbitmapfactory/b;

.field public static final enum CCITTFAX3:Lorg/beyka/tiffbitmapfactory/b;

.field public static final enum CCITTFAX4:Lorg/beyka/tiffbitmapfactory/b;

.field public static final enum CCITTRLE:Lorg/beyka/tiffbitmapfactory/b;

.field public static final enum DEFLATE:Lorg/beyka/tiffbitmapfactory/b;

.field public static final enum JPEG:Lorg/beyka/tiffbitmapfactory/b;

.field public static final enum LZW:Lorg/beyka/tiffbitmapfactory/b;

.field public static final enum NONE:Lorg/beyka/tiffbitmapfactory/b;

.field public static final enum OTHER:Lorg/beyka/tiffbitmapfactory/b;

.field public static final enum PACKBITS:Lorg/beyka/tiffbitmapfactory/b;


# instance fields
.field final ordinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/beyka/tiffbitmapfactory/b;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/beyka/tiffbitmapfactory/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/b;->NONE:Lorg/beyka/tiffbitmapfactory/b;

    new-instance v0, Lorg/beyka/tiffbitmapfactory/b;

    const-string v1, "CCITTRLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lorg/beyka/tiffbitmapfactory/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/b;->CCITTRLE:Lorg/beyka/tiffbitmapfactory/b;

    new-instance v0, Lorg/beyka/tiffbitmapfactory/b;

    const-string v1, "CCITTFAX3"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v4, v3}, Lorg/beyka/tiffbitmapfactory/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/b;->CCITTFAX3:Lorg/beyka/tiffbitmapfactory/b;

    new-instance v0, Lorg/beyka/tiffbitmapfactory/b;

    const-string v1, "CCITTFAX4"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v3, v4}, Lorg/beyka/tiffbitmapfactory/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/b;->CCITTFAX4:Lorg/beyka/tiffbitmapfactory/b;

    new-instance v0, Lorg/beyka/tiffbitmapfactory/b;

    const-string v1, "LZW"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v4, v3}, Lorg/beyka/tiffbitmapfactory/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/b;->LZW:Lorg/beyka/tiffbitmapfactory/b;

    new-instance v0, Lorg/beyka/tiffbitmapfactory/b;

    const-string v1, "JPEG"

    const/4 v4, 0x7

    invoke-direct {v0, v1, v3, v4}, Lorg/beyka/tiffbitmapfactory/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/b;->JPEG:Lorg/beyka/tiffbitmapfactory/b;

    new-instance v0, Lorg/beyka/tiffbitmapfactory/b;

    const/4 v1, 0x6

    const v3, 0x8005

    const-string v5, "PACKBITS"

    invoke-direct {v0, v5, v1, v3}, Lorg/beyka/tiffbitmapfactory/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/b;->PACKBITS:Lorg/beyka/tiffbitmapfactory/b;

    new-instance v0, Lorg/beyka/tiffbitmapfactory/b;

    const-string v1, "DEFLATE"

    const v3, 0x80b2

    invoke-direct {v0, v1, v4, v3}, Lorg/beyka/tiffbitmapfactory/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/b;->DEFLATE:Lorg/beyka/tiffbitmapfactory/b;

    new-instance v0, Lorg/beyka/tiffbitmapfactory/b;

    const-string v1, "ADOBE_DEFLATE"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3, v3}, Lorg/beyka/tiffbitmapfactory/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/b;->ADOBE_DEFLATE:Lorg/beyka/tiffbitmapfactory/b;

    new-instance v0, Lorg/beyka/tiffbitmapfactory/b;

    const-string v1, "OTHER"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v3, v2}, Lorg/beyka/tiffbitmapfactory/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/b;->OTHER:Lorg/beyka/tiffbitmapfactory/b;

    invoke-static {}, Lorg/beyka/tiffbitmapfactory/b;->a()[Lorg/beyka/tiffbitmapfactory/b;

    move-result-object v0

    sput-object v0, Lorg/beyka/tiffbitmapfactory/b;->$VALUES:[Lorg/beyka/tiffbitmapfactory/b;

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

    iput p3, p0, Lorg/beyka/tiffbitmapfactory/b;->ordinal:I

    return-void
.end method

.method public static synthetic a()[Lorg/beyka/tiffbitmapfactory/b;
    .locals 10

    sget-object v0, Lorg/beyka/tiffbitmapfactory/b;->NONE:Lorg/beyka/tiffbitmapfactory/b;

    sget-object v1, Lorg/beyka/tiffbitmapfactory/b;->CCITTRLE:Lorg/beyka/tiffbitmapfactory/b;

    sget-object v2, Lorg/beyka/tiffbitmapfactory/b;->CCITTFAX3:Lorg/beyka/tiffbitmapfactory/b;

    sget-object v3, Lorg/beyka/tiffbitmapfactory/b;->CCITTFAX4:Lorg/beyka/tiffbitmapfactory/b;

    sget-object v4, Lorg/beyka/tiffbitmapfactory/b;->LZW:Lorg/beyka/tiffbitmapfactory/b;

    sget-object v5, Lorg/beyka/tiffbitmapfactory/b;->JPEG:Lorg/beyka/tiffbitmapfactory/b;

    sget-object v6, Lorg/beyka/tiffbitmapfactory/b;->PACKBITS:Lorg/beyka/tiffbitmapfactory/b;

    sget-object v7, Lorg/beyka/tiffbitmapfactory/b;->DEFLATE:Lorg/beyka/tiffbitmapfactory/b;

    sget-object v8, Lorg/beyka/tiffbitmapfactory/b;->ADOBE_DEFLATE:Lorg/beyka/tiffbitmapfactory/b;

    sget-object v9, Lorg/beyka/tiffbitmapfactory/b;->OTHER:Lorg/beyka/tiffbitmapfactory/b;

    filled-new-array/range {v0 .. v9}, [Lorg/beyka/tiffbitmapfactory/b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/beyka/tiffbitmapfactory/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lorg/beyka/tiffbitmapfactory/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/beyka/tiffbitmapfactory/b;

    return-object p0
.end method

.method public static values()[Lorg/beyka/tiffbitmapfactory/b;
    .locals 1

    sget-object v0, Lorg/beyka/tiffbitmapfactory/b;->$VALUES:[Lorg/beyka/tiffbitmapfactory/b;

    invoke-virtual {v0}, [Lorg/beyka/tiffbitmapfactory/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/beyka/tiffbitmapfactory/b;

    return-object v0
.end method
