.class public final enum Lorg/beyka/tiffbitmapfactory/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/beyka/tiffbitmapfactory/g;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/beyka/tiffbitmapfactory/g;

.field public static final enum CONTIG:Lorg/beyka/tiffbitmapfactory/g;

.field public static final enum SEPARATE:Lorg/beyka/tiffbitmapfactory/g;


# instance fields
.field final ordinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/beyka/tiffbitmapfactory/g;

    const-string v1, "CONTIG"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/beyka/tiffbitmapfactory/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/g;->CONTIG:Lorg/beyka/tiffbitmapfactory/g;

    new-instance v0, Lorg/beyka/tiffbitmapfactory/g;

    const-string v1, "SEPARATE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lorg/beyka/tiffbitmapfactory/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/g;->SEPARATE:Lorg/beyka/tiffbitmapfactory/g;

    invoke-static {}, Lorg/beyka/tiffbitmapfactory/g;->a()[Lorg/beyka/tiffbitmapfactory/g;

    move-result-object v0

    sput-object v0, Lorg/beyka/tiffbitmapfactory/g;->$VALUES:[Lorg/beyka/tiffbitmapfactory/g;

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

    iput p3, p0, Lorg/beyka/tiffbitmapfactory/g;->ordinal:I

    return-void
.end method

.method public static synthetic a()[Lorg/beyka/tiffbitmapfactory/g;
    .locals 2

    sget-object v0, Lorg/beyka/tiffbitmapfactory/g;->CONTIG:Lorg/beyka/tiffbitmapfactory/g;

    sget-object v1, Lorg/beyka/tiffbitmapfactory/g;->SEPARATE:Lorg/beyka/tiffbitmapfactory/g;

    filled-new-array {v0, v1}, [Lorg/beyka/tiffbitmapfactory/g;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/beyka/tiffbitmapfactory/g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lorg/beyka/tiffbitmapfactory/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/beyka/tiffbitmapfactory/g;

    return-object p0
.end method

.method public static values()[Lorg/beyka/tiffbitmapfactory/g;
    .locals 1

    sget-object v0, Lorg/beyka/tiffbitmapfactory/g;->$VALUES:[Lorg/beyka/tiffbitmapfactory/g;

    invoke-virtual {v0}, [Lorg/beyka/tiffbitmapfactory/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/beyka/tiffbitmapfactory/g;

    return-object v0
.end method
