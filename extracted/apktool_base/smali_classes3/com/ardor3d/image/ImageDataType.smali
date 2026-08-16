.class public final enum Lcom/ardor3d/image/ImageDataType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ardor3d/image/ImageDataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ardor3d/image/ImageDataType;

.field public static final enum Byte:Lcom/ardor3d/image/ImageDataType;

.field public static final enum Float:Lcom/ardor3d/image/ImageDataType;

.field public static final enum HalfFloat:Lcom/ardor3d/image/ImageDataType;

.field public static final enum Int:Lcom/ardor3d/image/ImageDataType;

.field public static final enum Short:Lcom/ardor3d/image/ImageDataType;

.field public static final enum UnsignedByte:Lcom/ardor3d/image/ImageDataType;

.field public static final enum UnsignedInt:Lcom/ardor3d/image/ImageDataType;

.field public static final enum UnsignedShort:Lcom/ardor3d/image/ImageDataType;


# instance fields
.field final _bytesPerComponent:F


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/ardor3d/image/ImageDataType;

    const-string v1, "UnsignedByte"

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/ardor3d/image/ImageDataType;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/ardor3d/image/ImageDataType;->UnsignedByte:Lcom/ardor3d/image/ImageDataType;

    new-instance v1, Lcom/ardor3d/image/ImageDataType;

    const-string v2, "Byte"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/ardor3d/image/ImageDataType;-><init>(Ljava/lang/String;IF)V

    sput-object v1, Lcom/ardor3d/image/ImageDataType;->Byte:Lcom/ardor3d/image/ImageDataType;

    new-instance v2, Lcom/ardor3d/image/ImageDataType;

    const-string v3, "UnsignedShort"

    const/4 v4, 0x2

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v2, v3, v4, v5}, Lcom/ardor3d/image/ImageDataType;-><init>(Ljava/lang/String;IF)V

    sput-object v2, Lcom/ardor3d/image/ImageDataType;->UnsignedShort:Lcom/ardor3d/image/ImageDataType;

    new-instance v3, Lcom/ardor3d/image/ImageDataType;

    const-string v4, "Short"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v6, v5}, Lcom/ardor3d/image/ImageDataType;-><init>(Ljava/lang/String;IF)V

    sput-object v3, Lcom/ardor3d/image/ImageDataType;->Short:Lcom/ardor3d/image/ImageDataType;

    new-instance v4, Lcom/ardor3d/image/ImageDataType;

    const-string v6, "UnsignedInt"

    const/4 v7, 0x4

    const/high16 v8, 0x40800000    # 4.0f

    invoke-direct {v4, v6, v7, v8}, Lcom/ardor3d/image/ImageDataType;-><init>(Ljava/lang/String;IF)V

    sput-object v4, Lcom/ardor3d/image/ImageDataType;->UnsignedInt:Lcom/ardor3d/image/ImageDataType;

    new-instance v6, Lcom/ardor3d/image/ImageDataType;

    const-string v7, "Int"

    const/4 v9, 0x5

    invoke-direct {v6, v7, v9, v8}, Lcom/ardor3d/image/ImageDataType;-><init>(Ljava/lang/String;IF)V

    sput-object v6, Lcom/ardor3d/image/ImageDataType;->Int:Lcom/ardor3d/image/ImageDataType;

    new-instance v7, Lcom/ardor3d/image/ImageDataType;

    const-string v9, "Float"

    const/4 v10, 0x6

    invoke-direct {v7, v9, v10, v8}, Lcom/ardor3d/image/ImageDataType;-><init>(Ljava/lang/String;IF)V

    sput-object v7, Lcom/ardor3d/image/ImageDataType;->Float:Lcom/ardor3d/image/ImageDataType;

    new-instance v8, Lcom/ardor3d/image/ImageDataType;

    const-string v9, "HalfFloat"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10, v5}, Lcom/ardor3d/image/ImageDataType;-><init>(Ljava/lang/String;IF)V

    sput-object v8, Lcom/ardor3d/image/ImageDataType;->HalfFloat:Lcom/ardor3d/image/ImageDataType;

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    filled-new-array/range {v0 .. v7}, [Lcom/ardor3d/image/ImageDataType;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/image/ImageDataType;->$VALUES:[Lcom/ardor3d/image/ImageDataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/ardor3d/image/ImageDataType;->_bytesPerComponent:F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ardor3d/image/ImageDataType;
    .locals 1

    const-class v0, Lcom/ardor3d/image/ImageDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/image/ImageDataType;

    return-object p0
.end method

.method public static values()[Lcom/ardor3d/image/ImageDataType;
    .locals 1

    sget-object v0, Lcom/ardor3d/image/ImageDataType;->$VALUES:[Lcom/ardor3d/image/ImageDataType;

    invoke-virtual {v0}, [Lcom/ardor3d/image/ImageDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/image/ImageDataType;

    return-object v0
.end method


# virtual methods
.method public getBytesPerComponent()F
    .locals 1

    iget v0, p0, Lcom/ardor3d/image/ImageDataType;->_bytesPerComponent:F

    return v0
.end method
