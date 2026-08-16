.class final enum Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;

.field public static final enum D3D10_RESOURCE_DIMENSION_BUFFER:Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;

.field public static final enum D3D10_RESOURCE_DIMENSION_TEXTURE1D:Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;

.field public static final enum D3D10_RESOURCE_DIMENSION_TEXTURE2D:Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;

.field public static final enum D3D10_RESOURCE_DIMENSION_TEXTURE3D:Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;

.field public static final enum D3D10_RESOURCE_DIMENSION_UNKNOWN:Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;


# instance fields
.field _value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;

    const-string v1, "D3D10_RESOURCE_DIMENSION_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;->D3D10_RESOURCE_DIMENSION_UNKNOWN:Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;

    new-instance v1, Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;

    const-string v2, "D3D10_RESOURCE_DIMENSION_BUFFER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;->D3D10_RESOURCE_DIMENSION_BUFFER:Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;

    new-instance v2, Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;

    const-string v3, "D3D10_RESOURCE_DIMENSION_TEXTURE1D"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;->D3D10_RESOURCE_DIMENSION_TEXTURE1D:Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;

    new-instance v3, Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;

    const-string v4, "D3D10_RESOURCE_DIMENSION_TEXTURE2D"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;->D3D10_RESOURCE_DIMENSION_TEXTURE2D:Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;

    new-instance v4, Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;

    const-string v5, "D3D10_RESOURCE_DIMENSION_TEXTURE3D"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;->D3D10_RESOURCE_DIMENSION_TEXTURE3D:Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;->$VALUES:[Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;->_value:I

    return-void
.end method

.method public static forInt(I)Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;
    .locals 5

    invoke-static {}, Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;->values()[Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;->_value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown D3D10ResourceDimension: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;
    .locals 1

    const-class v0, Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;

    return-object p0
.end method

.method public static values()[Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;
    .locals 1

    sget-object v0, Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;->$VALUES:[Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;

    invoke-virtual {v0}, [Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/image/util/dds/D3d10ResourceDimension;

    return-object v0
.end method
