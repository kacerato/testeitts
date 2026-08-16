.class public final enum Lcom/jme3/opencl/Image$ImageChannelType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/opencl/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageChannelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/opencl/Image$ImageChannelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/opencl/Image$ImageChannelType;

.field public static final enum FLOAT:Lcom/jme3/opencl/Image$ImageChannelType;

.field public static final enum HALF_FLOAT:Lcom/jme3/opencl/Image$ImageChannelType;

.field public static final enum SIGNED_INT16:Lcom/jme3/opencl/Image$ImageChannelType;

.field public static final enum SIGNED_INT32:Lcom/jme3/opencl/Image$ImageChannelType;

.field public static final enum SIGNED_INT8:Lcom/jme3/opencl/Image$ImageChannelType;

.field public static final enum SNORM_INT16:Lcom/jme3/opencl/Image$ImageChannelType;

.field public static final enum SNORM_INT8:Lcom/jme3/opencl/Image$ImageChannelType;

.field public static final enum UNORM_INT16:Lcom/jme3/opencl/Image$ImageChannelType;

.field public static final enum UNORM_INT8:Lcom/jme3/opencl/Image$ImageChannelType;

.field public static final enum UNORM_INT_101010:Lcom/jme3/opencl/Image$ImageChannelType;

.field public static final enum UNORM_SHORT_555:Lcom/jme3/opencl/Image$ImageChannelType;

.field public static final enum UNORM_SHORT_565:Lcom/jme3/opencl/Image$ImageChannelType;

.field public static final enum UNSIGNED_INT16:Lcom/jme3/opencl/Image$ImageChannelType;

.field public static final enum UNSIGNED_INT32:Lcom/jme3/opencl/Image$ImageChannelType;

.field public static final enum UNSIGNED_INT8:Lcom/jme3/opencl/Image$ImageChannelType;


# direct methods
.method private static synthetic $values()[Lcom/jme3/opencl/Image$ImageChannelType;
    .locals 15

    sget-object v0, Lcom/jme3/opencl/Image$ImageChannelType;->SNORM_INT8:Lcom/jme3/opencl/Image$ImageChannelType;

    sget-object v1, Lcom/jme3/opencl/Image$ImageChannelType;->SNORM_INT16:Lcom/jme3/opencl/Image$ImageChannelType;

    sget-object v2, Lcom/jme3/opencl/Image$ImageChannelType;->UNORM_INT8:Lcom/jme3/opencl/Image$ImageChannelType;

    sget-object v3, Lcom/jme3/opencl/Image$ImageChannelType;->UNORM_INT16:Lcom/jme3/opencl/Image$ImageChannelType;

    sget-object v4, Lcom/jme3/opencl/Image$ImageChannelType;->UNORM_SHORT_565:Lcom/jme3/opencl/Image$ImageChannelType;

    sget-object v5, Lcom/jme3/opencl/Image$ImageChannelType;->UNORM_SHORT_555:Lcom/jme3/opencl/Image$ImageChannelType;

    sget-object v6, Lcom/jme3/opencl/Image$ImageChannelType;->UNORM_INT_101010:Lcom/jme3/opencl/Image$ImageChannelType;

    sget-object v7, Lcom/jme3/opencl/Image$ImageChannelType;->SIGNED_INT8:Lcom/jme3/opencl/Image$ImageChannelType;

    sget-object v8, Lcom/jme3/opencl/Image$ImageChannelType;->SIGNED_INT16:Lcom/jme3/opencl/Image$ImageChannelType;

    sget-object v9, Lcom/jme3/opencl/Image$ImageChannelType;->SIGNED_INT32:Lcom/jme3/opencl/Image$ImageChannelType;

    sget-object v10, Lcom/jme3/opencl/Image$ImageChannelType;->UNSIGNED_INT8:Lcom/jme3/opencl/Image$ImageChannelType;

    sget-object v11, Lcom/jme3/opencl/Image$ImageChannelType;->UNSIGNED_INT16:Lcom/jme3/opencl/Image$ImageChannelType;

    sget-object v12, Lcom/jme3/opencl/Image$ImageChannelType;->UNSIGNED_INT32:Lcom/jme3/opencl/Image$ImageChannelType;

    sget-object v13, Lcom/jme3/opencl/Image$ImageChannelType;->HALF_FLOAT:Lcom/jme3/opencl/Image$ImageChannelType;

    sget-object v14, Lcom/jme3/opencl/Image$ImageChannelType;->FLOAT:Lcom/jme3/opencl/Image$ImageChannelType;

    filled-new-array/range {v0 .. v14}, [Lcom/jme3/opencl/Image$ImageChannelType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/opencl/Image$ImageChannelType;

    const-string v1, "SNORM_INT8"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/Image$ImageChannelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/Image$ImageChannelType;->SNORM_INT8:Lcom/jme3/opencl/Image$ImageChannelType;

    new-instance v0, Lcom/jme3/opencl/Image$ImageChannelType;

    const-string v1, "SNORM_INT16"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/Image$ImageChannelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/Image$ImageChannelType;->SNORM_INT16:Lcom/jme3/opencl/Image$ImageChannelType;

    new-instance v0, Lcom/jme3/opencl/Image$ImageChannelType;

    const-string v1, "UNORM_INT8"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/Image$ImageChannelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/Image$ImageChannelType;->UNORM_INT8:Lcom/jme3/opencl/Image$ImageChannelType;

    new-instance v0, Lcom/jme3/opencl/Image$ImageChannelType;

    const-string v1, "UNORM_INT16"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/Image$ImageChannelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/Image$ImageChannelType;->UNORM_INT16:Lcom/jme3/opencl/Image$ImageChannelType;

    new-instance v0, Lcom/jme3/opencl/Image$ImageChannelType;

    const-string v1, "UNORM_SHORT_565"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/Image$ImageChannelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/Image$ImageChannelType;->UNORM_SHORT_565:Lcom/jme3/opencl/Image$ImageChannelType;

    new-instance v0, Lcom/jme3/opencl/Image$ImageChannelType;

    const-string v1, "UNORM_SHORT_555"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/Image$ImageChannelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/Image$ImageChannelType;->UNORM_SHORT_555:Lcom/jme3/opencl/Image$ImageChannelType;

    new-instance v0, Lcom/jme3/opencl/Image$ImageChannelType;

    const-string v1, "UNORM_INT_101010"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/Image$ImageChannelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/Image$ImageChannelType;->UNORM_INT_101010:Lcom/jme3/opencl/Image$ImageChannelType;

    new-instance v0, Lcom/jme3/opencl/Image$ImageChannelType;

    const-string v1, "SIGNED_INT8"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/Image$ImageChannelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/Image$ImageChannelType;->SIGNED_INT8:Lcom/jme3/opencl/Image$ImageChannelType;

    new-instance v0, Lcom/jme3/opencl/Image$ImageChannelType;

    const-string v1, "SIGNED_INT16"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/Image$ImageChannelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/Image$ImageChannelType;->SIGNED_INT16:Lcom/jme3/opencl/Image$ImageChannelType;

    new-instance v0, Lcom/jme3/opencl/Image$ImageChannelType;

    const-string v1, "SIGNED_INT32"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/Image$ImageChannelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/Image$ImageChannelType;->SIGNED_INT32:Lcom/jme3/opencl/Image$ImageChannelType;

    new-instance v0, Lcom/jme3/opencl/Image$ImageChannelType;

    const-string v1, "UNSIGNED_INT8"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/Image$ImageChannelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/Image$ImageChannelType;->UNSIGNED_INT8:Lcom/jme3/opencl/Image$ImageChannelType;

    new-instance v0, Lcom/jme3/opencl/Image$ImageChannelType;

    const-string v1, "UNSIGNED_INT16"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/Image$ImageChannelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/Image$ImageChannelType;->UNSIGNED_INT16:Lcom/jme3/opencl/Image$ImageChannelType;

    new-instance v0, Lcom/jme3/opencl/Image$ImageChannelType;

    const-string v1, "UNSIGNED_INT32"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/Image$ImageChannelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/Image$ImageChannelType;->UNSIGNED_INT32:Lcom/jme3/opencl/Image$ImageChannelType;

    new-instance v0, Lcom/jme3/opencl/Image$ImageChannelType;

    const-string v1, "HALF_FLOAT"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/Image$ImageChannelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/Image$ImageChannelType;->HALF_FLOAT:Lcom/jme3/opencl/Image$ImageChannelType;

    new-instance v0, Lcom/jme3/opencl/Image$ImageChannelType;

    const-string v1, "FLOAT"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/Image$ImageChannelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/Image$ImageChannelType;->FLOAT:Lcom/jme3/opencl/Image$ImageChannelType;

    invoke-static {}, Lcom/jme3/opencl/Image$ImageChannelType;->$values()[Lcom/jme3/opencl/Image$ImageChannelType;

    move-result-object v0

    sput-object v0, Lcom/jme3/opencl/Image$ImageChannelType;->$VALUES:[Lcom/jme3/opencl/Image$ImageChannelType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/opencl/Image$ImageChannelType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/opencl/Image$ImageChannelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/opencl/Image$ImageChannelType;

    return-object p0
.end method

.method public static values()[Lcom/jme3/opencl/Image$ImageChannelType;
    .locals 1

    sget-object v0, Lcom/jme3/opencl/Image$ImageChannelType;->$VALUES:[Lcom/jme3/opencl/Image$ImageChannelType;

    invoke-virtual {v0}, [Lcom/jme3/opencl/Image$ImageChannelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/opencl/Image$ImageChannelType;

    return-object v0
.end method
