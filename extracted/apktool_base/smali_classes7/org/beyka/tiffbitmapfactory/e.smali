.class public final enum Lorg/beyka/tiffbitmapfactory/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/beyka/tiffbitmapfactory/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/beyka/tiffbitmapfactory/e;

.field public static final enum BOT_LEFT:Lorg/beyka/tiffbitmapfactory/e;

.field public static final enum BOT_RIGHT:Lorg/beyka/tiffbitmapfactory/e;

.field public static final enum LEFT_BOT:Lorg/beyka/tiffbitmapfactory/e;

.field public static final enum LEFT_TOP:Lorg/beyka/tiffbitmapfactory/e;

.field public static final enum RIGHT_BOT:Lorg/beyka/tiffbitmapfactory/e;

.field public static final enum RIGHT_TOP:Lorg/beyka/tiffbitmapfactory/e;

.field public static final enum TOP_LEFT:Lorg/beyka/tiffbitmapfactory/e;

.field public static final enum TOP_RIGHT:Lorg/beyka/tiffbitmapfactory/e;

.field public static final enum UNAVAILABLE:Lorg/beyka/tiffbitmapfactory/e;


# instance fields
.field final ordinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/beyka/tiffbitmapfactory/e;

    const-string v1, "TOP_LEFT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/beyka/tiffbitmapfactory/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/e;->TOP_LEFT:Lorg/beyka/tiffbitmapfactory/e;

    new-instance v0, Lorg/beyka/tiffbitmapfactory/e;

    const-string v1, "TOP_RIGHT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lorg/beyka/tiffbitmapfactory/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/e;->TOP_RIGHT:Lorg/beyka/tiffbitmapfactory/e;

    new-instance v0, Lorg/beyka/tiffbitmapfactory/e;

    const-string v1, "BOT_RIGHT"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v4, v3}, Lorg/beyka/tiffbitmapfactory/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/e;->BOT_RIGHT:Lorg/beyka/tiffbitmapfactory/e;

    new-instance v0, Lorg/beyka/tiffbitmapfactory/e;

    const-string v1, "BOT_LEFT"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v3, v4}, Lorg/beyka/tiffbitmapfactory/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/e;->BOT_LEFT:Lorg/beyka/tiffbitmapfactory/e;

    new-instance v0, Lorg/beyka/tiffbitmapfactory/e;

    const-string v1, "LEFT_TOP"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v4, v3}, Lorg/beyka/tiffbitmapfactory/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/e;->LEFT_TOP:Lorg/beyka/tiffbitmapfactory/e;

    new-instance v0, Lorg/beyka/tiffbitmapfactory/e;

    const-string v1, "RIGHT_TOP"

    const/4 v4, 0x6

    invoke-direct {v0, v1, v3, v4}, Lorg/beyka/tiffbitmapfactory/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/e;->RIGHT_TOP:Lorg/beyka/tiffbitmapfactory/e;

    new-instance v0, Lorg/beyka/tiffbitmapfactory/e;

    const-string v1, "RIGHT_BOT"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v4, v3}, Lorg/beyka/tiffbitmapfactory/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/e;->RIGHT_BOT:Lorg/beyka/tiffbitmapfactory/e;

    new-instance v0, Lorg/beyka/tiffbitmapfactory/e;

    const-string v1, "LEFT_BOT"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v3, v4}, Lorg/beyka/tiffbitmapfactory/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/e;->LEFT_BOT:Lorg/beyka/tiffbitmapfactory/e;

    new-instance v0, Lorg/beyka/tiffbitmapfactory/e;

    const-string v1, "UNAVAILABLE"

    invoke-direct {v0, v1, v4, v2}, Lorg/beyka/tiffbitmapfactory/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/e;->UNAVAILABLE:Lorg/beyka/tiffbitmapfactory/e;

    invoke-static {}, Lorg/beyka/tiffbitmapfactory/e;->a()[Lorg/beyka/tiffbitmapfactory/e;

    move-result-object v0

    sput-object v0, Lorg/beyka/tiffbitmapfactory/e;->$VALUES:[Lorg/beyka/tiffbitmapfactory/e;

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

    iput p3, p0, Lorg/beyka/tiffbitmapfactory/e;->ordinal:I

    return-void
.end method

.method public static synthetic a()[Lorg/beyka/tiffbitmapfactory/e;
    .locals 9

    sget-object v0, Lorg/beyka/tiffbitmapfactory/e;->TOP_LEFT:Lorg/beyka/tiffbitmapfactory/e;

    sget-object v1, Lorg/beyka/tiffbitmapfactory/e;->TOP_RIGHT:Lorg/beyka/tiffbitmapfactory/e;

    sget-object v2, Lorg/beyka/tiffbitmapfactory/e;->BOT_RIGHT:Lorg/beyka/tiffbitmapfactory/e;

    sget-object v3, Lorg/beyka/tiffbitmapfactory/e;->BOT_LEFT:Lorg/beyka/tiffbitmapfactory/e;

    sget-object v4, Lorg/beyka/tiffbitmapfactory/e;->LEFT_TOP:Lorg/beyka/tiffbitmapfactory/e;

    sget-object v5, Lorg/beyka/tiffbitmapfactory/e;->RIGHT_TOP:Lorg/beyka/tiffbitmapfactory/e;

    sget-object v6, Lorg/beyka/tiffbitmapfactory/e;->RIGHT_BOT:Lorg/beyka/tiffbitmapfactory/e;

    sget-object v7, Lorg/beyka/tiffbitmapfactory/e;->LEFT_BOT:Lorg/beyka/tiffbitmapfactory/e;

    sget-object v8, Lorg/beyka/tiffbitmapfactory/e;->UNAVAILABLE:Lorg/beyka/tiffbitmapfactory/e;

    filled-new-array/range {v0 .. v8}, [Lorg/beyka/tiffbitmapfactory/e;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/beyka/tiffbitmapfactory/e;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lorg/beyka/tiffbitmapfactory/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/beyka/tiffbitmapfactory/e;

    return-object p0
.end method

.method public static values()[Lorg/beyka/tiffbitmapfactory/e;
    .locals 1

    sget-object v0, Lorg/beyka/tiffbitmapfactory/e;->$VALUES:[Lorg/beyka/tiffbitmapfactory/e;

    invoke-virtual {v0}, [Lorg/beyka/tiffbitmapfactory/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/beyka/tiffbitmapfactory/e;

    return-object v0
.end method
