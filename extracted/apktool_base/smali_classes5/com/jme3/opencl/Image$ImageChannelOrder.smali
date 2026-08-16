.class public final enum Lcom/jme3/opencl/Image$ImageChannelOrder;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/opencl/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageChannelOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/opencl/Image$ImageChannelOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/opencl/Image$ImageChannelOrder;

.field public static final enum A:Lcom/jme3/opencl/Image$ImageChannelOrder;

.field public static final enum ARGB:Lcom/jme3/opencl/Image$ImageChannelOrder;

.field public static final enum BGRA:Lcom/jme3/opencl/Image$ImageChannelOrder;

.field public static final enum INTENSITY:Lcom/jme3/opencl/Image$ImageChannelOrder;

.field public static final enum LUMINANCE:Lcom/jme3/opencl/Image$ImageChannelOrder;

.field public static final enum R:Lcom/jme3/opencl/Image$ImageChannelOrder;

.field public static final enum RA:Lcom/jme3/opencl/Image$ImageChannelOrder;

.field public static final enum RG:Lcom/jme3/opencl/Image$ImageChannelOrder;

.field public static final enum RGB:Lcom/jme3/opencl/Image$ImageChannelOrder;

.field public static final enum RGBA:Lcom/jme3/opencl/Image$ImageChannelOrder;

.field public static final enum RGBx:Lcom/jme3/opencl/Image$ImageChannelOrder;

.field public static final enum RGx:Lcom/jme3/opencl/Image$ImageChannelOrder;

.field public static final enum Rx:Lcom/jme3/opencl/Image$ImageChannelOrder;


# direct methods
.method private static synthetic $values()[Lcom/jme3/opencl/Image$ImageChannelOrder;
    .locals 13

    sget-object v0, Lcom/jme3/opencl/Image$ImageChannelOrder;->R:Lcom/jme3/opencl/Image$ImageChannelOrder;

    sget-object v1, Lcom/jme3/opencl/Image$ImageChannelOrder;->Rx:Lcom/jme3/opencl/Image$ImageChannelOrder;

    sget-object v2, Lcom/jme3/opencl/Image$ImageChannelOrder;->A:Lcom/jme3/opencl/Image$ImageChannelOrder;

    sget-object v3, Lcom/jme3/opencl/Image$ImageChannelOrder;->INTENSITY:Lcom/jme3/opencl/Image$ImageChannelOrder;

    sget-object v4, Lcom/jme3/opencl/Image$ImageChannelOrder;->LUMINANCE:Lcom/jme3/opencl/Image$ImageChannelOrder;

    sget-object v5, Lcom/jme3/opencl/Image$ImageChannelOrder;->RG:Lcom/jme3/opencl/Image$ImageChannelOrder;

    sget-object v6, Lcom/jme3/opencl/Image$ImageChannelOrder;->RGx:Lcom/jme3/opencl/Image$ImageChannelOrder;

    sget-object v7, Lcom/jme3/opencl/Image$ImageChannelOrder;->RA:Lcom/jme3/opencl/Image$ImageChannelOrder;

    sget-object v8, Lcom/jme3/opencl/Image$ImageChannelOrder;->RGB:Lcom/jme3/opencl/Image$ImageChannelOrder;

    sget-object v9, Lcom/jme3/opencl/Image$ImageChannelOrder;->RGBx:Lcom/jme3/opencl/Image$ImageChannelOrder;

    sget-object v10, Lcom/jme3/opencl/Image$ImageChannelOrder;->RGBA:Lcom/jme3/opencl/Image$ImageChannelOrder;

    sget-object v11, Lcom/jme3/opencl/Image$ImageChannelOrder;->ARGB:Lcom/jme3/opencl/Image$ImageChannelOrder;

    sget-object v12, Lcom/jme3/opencl/Image$ImageChannelOrder;->BGRA:Lcom/jme3/opencl/Image$ImageChannelOrder;

    filled-new-array/range {v0 .. v12}, [Lcom/jme3/opencl/Image$ImageChannelOrder;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/opencl/Image$ImageChannelOrder;

    const-string v1, "R"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/Image$ImageChannelOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/Image$ImageChannelOrder;->R:Lcom/jme3/opencl/Image$ImageChannelOrder;

    new-instance v0, Lcom/jme3/opencl/Image$ImageChannelOrder;

    const-string v1, "Rx"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/Image$ImageChannelOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/Image$ImageChannelOrder;->Rx:Lcom/jme3/opencl/Image$ImageChannelOrder;

    new-instance v0, Lcom/jme3/opencl/Image$ImageChannelOrder;

    const-string v1, "A"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/Image$ImageChannelOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/Image$ImageChannelOrder;->A:Lcom/jme3/opencl/Image$ImageChannelOrder;

    new-instance v0, Lcom/jme3/opencl/Image$ImageChannelOrder;

    const-string v1, "INTENSITY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/Image$ImageChannelOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/Image$ImageChannelOrder;->INTENSITY:Lcom/jme3/opencl/Image$ImageChannelOrder;

    new-instance v0, Lcom/jme3/opencl/Image$ImageChannelOrder;

    const-string v1, "LUMINANCE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/Image$ImageChannelOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/Image$ImageChannelOrder;->LUMINANCE:Lcom/jme3/opencl/Image$ImageChannelOrder;

    new-instance v0, Lcom/jme3/opencl/Image$ImageChannelOrder;

    const-string v1, "RG"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/Image$ImageChannelOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/Image$ImageChannelOrder;->RG:Lcom/jme3/opencl/Image$ImageChannelOrder;

    new-instance v0, Lcom/jme3/opencl/Image$ImageChannelOrder;

    const-string v1, "RGx"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/Image$ImageChannelOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/Image$ImageChannelOrder;->RGx:Lcom/jme3/opencl/Image$ImageChannelOrder;

    new-instance v0, Lcom/jme3/opencl/Image$ImageChannelOrder;

    const-string v1, "RA"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/Image$ImageChannelOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/Image$ImageChannelOrder;->RA:Lcom/jme3/opencl/Image$ImageChannelOrder;

    new-instance v0, Lcom/jme3/opencl/Image$ImageChannelOrder;

    const-string v1, "RGB"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/Image$ImageChannelOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/Image$ImageChannelOrder;->RGB:Lcom/jme3/opencl/Image$ImageChannelOrder;

    new-instance v0, Lcom/jme3/opencl/Image$ImageChannelOrder;

    const-string v1, "RGBx"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/Image$ImageChannelOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/Image$ImageChannelOrder;->RGBx:Lcom/jme3/opencl/Image$ImageChannelOrder;

    new-instance v0, Lcom/jme3/opencl/Image$ImageChannelOrder;

    const-string v1, "RGBA"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/Image$ImageChannelOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/Image$ImageChannelOrder;->RGBA:Lcom/jme3/opencl/Image$ImageChannelOrder;

    new-instance v0, Lcom/jme3/opencl/Image$ImageChannelOrder;

    const-string v1, "ARGB"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/Image$ImageChannelOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/Image$ImageChannelOrder;->ARGB:Lcom/jme3/opencl/Image$ImageChannelOrder;

    new-instance v0, Lcom/jme3/opencl/Image$ImageChannelOrder;

    const-string v1, "BGRA"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/Image$ImageChannelOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/Image$ImageChannelOrder;->BGRA:Lcom/jme3/opencl/Image$ImageChannelOrder;

    invoke-static {}, Lcom/jme3/opencl/Image$ImageChannelOrder;->$values()[Lcom/jme3/opencl/Image$ImageChannelOrder;

    move-result-object v0

    sput-object v0, Lcom/jme3/opencl/Image$ImageChannelOrder;->$VALUES:[Lcom/jme3/opencl/Image$ImageChannelOrder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/opencl/Image$ImageChannelOrder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/opencl/Image$ImageChannelOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/opencl/Image$ImageChannelOrder;

    return-object p0
.end method

.method public static values()[Lcom/jme3/opencl/Image$ImageChannelOrder;
    .locals 1

    sget-object v0, Lcom/jme3/opencl/Image$ImageChannelOrder;->$VALUES:[Lcom/jme3/opencl/Image$ImageChannelOrder;

    invoke-virtual {v0}, [Lcom/jme3/opencl/Image$ImageChannelOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/opencl/Image$ImageChannelOrder;

    return-object v0
.end method
