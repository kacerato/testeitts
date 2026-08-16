.class public final enum Lorg/beyka/tiffbitmapfactory/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/beyka/tiffbitmapfactory/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/beyka/tiffbitmapfactory/d;

.field public static final enum LSB2MSB:Lorg/beyka/tiffbitmapfactory/d;

.field public static final enum MSB2LSB:Lorg/beyka/tiffbitmapfactory/d;


# instance fields
.field final ordinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/beyka/tiffbitmapfactory/d;

    const-string v1, "MSB2LSB"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/beyka/tiffbitmapfactory/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/d;->MSB2LSB:Lorg/beyka/tiffbitmapfactory/d;

    new-instance v0, Lorg/beyka/tiffbitmapfactory/d;

    const-string v1, "LSB2MSB"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lorg/beyka/tiffbitmapfactory/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/d;->LSB2MSB:Lorg/beyka/tiffbitmapfactory/d;

    invoke-static {}, Lorg/beyka/tiffbitmapfactory/d;->a()[Lorg/beyka/tiffbitmapfactory/d;

    move-result-object v0

    sput-object v0, Lorg/beyka/tiffbitmapfactory/d;->$VALUES:[Lorg/beyka/tiffbitmapfactory/d;

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

    iput p3, p0, Lorg/beyka/tiffbitmapfactory/d;->ordinal:I

    return-void
.end method

.method public static synthetic a()[Lorg/beyka/tiffbitmapfactory/d;
    .locals 2

    sget-object v0, Lorg/beyka/tiffbitmapfactory/d;->MSB2LSB:Lorg/beyka/tiffbitmapfactory/d;

    sget-object v1, Lorg/beyka/tiffbitmapfactory/d;->LSB2MSB:Lorg/beyka/tiffbitmapfactory/d;

    filled-new-array {v0, v1}, [Lorg/beyka/tiffbitmapfactory/d;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/beyka/tiffbitmapfactory/d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lorg/beyka/tiffbitmapfactory/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/beyka/tiffbitmapfactory/d;

    return-object p0
.end method

.method public static values()[Lorg/beyka/tiffbitmapfactory/d;
    .locals 1

    sget-object v0, Lorg/beyka/tiffbitmapfactory/d;->$VALUES:[Lorg/beyka/tiffbitmapfactory/d;

    invoke-virtual {v0}, [Lorg/beyka/tiffbitmapfactory/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/beyka/tiffbitmapfactory/d;

    return-object v0
.end method
