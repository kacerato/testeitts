.class public final enum Lcom/jme3/opencl/Image$ImageType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/opencl/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/opencl/Image$ImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/opencl/Image$ImageType;

.field public static final enum IMAGE_1D:Lcom/jme3/opencl/Image$ImageType;

.field public static final enum IMAGE_1D_ARRAY:Lcom/jme3/opencl/Image$ImageType;

.field public static final enum IMAGE_1D_BUFFER:Lcom/jme3/opencl/Image$ImageType;

.field public static final enum IMAGE_2D:Lcom/jme3/opencl/Image$ImageType;

.field public static final enum IMAGE_2D_ARRAY:Lcom/jme3/opencl/Image$ImageType;

.field public static final enum IMAGE_3D:Lcom/jme3/opencl/Image$ImageType;


# direct methods
.method private static synthetic $values()[Lcom/jme3/opencl/Image$ImageType;
    .locals 6

    sget-object v0, Lcom/jme3/opencl/Image$ImageType;->IMAGE_1D:Lcom/jme3/opencl/Image$ImageType;

    sget-object v1, Lcom/jme3/opencl/Image$ImageType;->IMAGE_1D_BUFFER:Lcom/jme3/opencl/Image$ImageType;

    sget-object v2, Lcom/jme3/opencl/Image$ImageType;->IMAGE_2D:Lcom/jme3/opencl/Image$ImageType;

    sget-object v3, Lcom/jme3/opencl/Image$ImageType;->IMAGE_3D:Lcom/jme3/opencl/Image$ImageType;

    sget-object v4, Lcom/jme3/opencl/Image$ImageType;->IMAGE_1D_ARRAY:Lcom/jme3/opencl/Image$ImageType;

    sget-object v5, Lcom/jme3/opencl/Image$ImageType;->IMAGE_2D_ARRAY:Lcom/jme3/opencl/Image$ImageType;

    filled-new-array/range {v0 .. v5}, [Lcom/jme3/opencl/Image$ImageType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/opencl/Image$ImageType;

    const-string v1, "IMAGE_1D"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/Image$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/Image$ImageType;->IMAGE_1D:Lcom/jme3/opencl/Image$ImageType;

    new-instance v0, Lcom/jme3/opencl/Image$ImageType;

    const-string v1, "IMAGE_1D_BUFFER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/Image$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/Image$ImageType;->IMAGE_1D_BUFFER:Lcom/jme3/opencl/Image$ImageType;

    new-instance v0, Lcom/jme3/opencl/Image$ImageType;

    const-string v1, "IMAGE_2D"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/Image$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/Image$ImageType;->IMAGE_2D:Lcom/jme3/opencl/Image$ImageType;

    new-instance v0, Lcom/jme3/opencl/Image$ImageType;

    const-string v1, "IMAGE_3D"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/Image$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/Image$ImageType;->IMAGE_3D:Lcom/jme3/opencl/Image$ImageType;

    new-instance v0, Lcom/jme3/opencl/Image$ImageType;

    const-string v1, "IMAGE_1D_ARRAY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/Image$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/Image$ImageType;->IMAGE_1D_ARRAY:Lcom/jme3/opencl/Image$ImageType;

    new-instance v0, Lcom/jme3/opencl/Image$ImageType;

    const-string v1, "IMAGE_2D_ARRAY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/Image$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/Image$ImageType;->IMAGE_2D_ARRAY:Lcom/jme3/opencl/Image$ImageType;

    invoke-static {}, Lcom/jme3/opencl/Image$ImageType;->$values()[Lcom/jme3/opencl/Image$ImageType;

    move-result-object v0

    sput-object v0, Lcom/jme3/opencl/Image$ImageType;->$VALUES:[Lcom/jme3/opencl/Image$ImageType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/opencl/Image$ImageType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/opencl/Image$ImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/opencl/Image$ImageType;

    return-object p0
.end method

.method public static values()[Lcom/jme3/opencl/Image$ImageType;
    .locals 1

    sget-object v0, Lcom/jme3/opencl/Image$ImageType;->$VALUES:[Lcom/jme3/opencl/Image$ImageType;

    invoke-virtual {v0}, [Lcom/jme3/opencl/Image$ImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/opencl/Image$ImageType;

    return-object v0
.end method
