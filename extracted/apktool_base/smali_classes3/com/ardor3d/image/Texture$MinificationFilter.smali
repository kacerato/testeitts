.class public final enum Lcom/ardor3d/image/Texture$MinificationFilter;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/image/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MinificationFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ardor3d/image/Texture$MinificationFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ardor3d/image/Texture$MinificationFilter;

.field public static final enum BilinearNearestMipMap:Lcom/ardor3d/image/Texture$MinificationFilter;

.field public static final enum BilinearNoMipMaps:Lcom/ardor3d/image/Texture$MinificationFilter;

.field public static final enum NearestNeighborLinearMipMap:Lcom/ardor3d/image/Texture$MinificationFilter;

.field public static final enum NearestNeighborNearestMipMap:Lcom/ardor3d/image/Texture$MinificationFilter;

.field public static final enum NearestNeighborNoMipMaps:Lcom/ardor3d/image/Texture$MinificationFilter;

.field public static final enum Trilinear:Lcom/ardor3d/image/Texture$MinificationFilter;


# instance fields
.field private _usesMipMapLevels:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/ardor3d/image/Texture$MinificationFilter;

    const-string v1, "NearestNeighborNoMipMaps"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ardor3d/image/Texture$MinificationFilter;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/ardor3d/image/Texture$MinificationFilter;->NearestNeighborNoMipMaps:Lcom/ardor3d/image/Texture$MinificationFilter;

    new-instance v1, Lcom/ardor3d/image/Texture$MinificationFilter;

    const-string v3, "BilinearNoMipMaps"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/ardor3d/image/Texture$MinificationFilter;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/ardor3d/image/Texture$MinificationFilter;->BilinearNoMipMaps:Lcom/ardor3d/image/Texture$MinificationFilter;

    new-instance v2, Lcom/ardor3d/image/Texture$MinificationFilter;

    const-string v3, "NearestNeighborNearestMipMap"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5, v4}, Lcom/ardor3d/image/Texture$MinificationFilter;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lcom/ardor3d/image/Texture$MinificationFilter;->NearestNeighborNearestMipMap:Lcom/ardor3d/image/Texture$MinificationFilter;

    new-instance v3, Lcom/ardor3d/image/Texture$MinificationFilter;

    const-string v5, "BilinearNearestMipMap"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/ardor3d/image/Texture$MinificationFilter;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/ardor3d/image/Texture$MinificationFilter;->BilinearNearestMipMap:Lcom/ardor3d/image/Texture$MinificationFilter;

    new-instance v5, Lcom/ardor3d/image/Texture$MinificationFilter;

    const-string v6, "NearestNeighborLinearMipMap"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7, v4}, Lcom/ardor3d/image/Texture$MinificationFilter;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lcom/ardor3d/image/Texture$MinificationFilter;->NearestNeighborLinearMipMap:Lcom/ardor3d/image/Texture$MinificationFilter;

    new-instance v6, Lcom/ardor3d/image/Texture$MinificationFilter;

    const-string v7, "Trilinear"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8, v4}, Lcom/ardor3d/image/Texture$MinificationFilter;-><init>(Ljava/lang/String;IZ)V

    sput-object v6, Lcom/ardor3d/image/Texture$MinificationFilter;->Trilinear:Lcom/ardor3d/image/Texture$MinificationFilter;

    move-object v4, v5

    move-object v5, v6

    filled-new-array/range {v0 .. v5}, [Lcom/ardor3d/image/Texture$MinificationFilter;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/image/Texture$MinificationFilter;->$VALUES:[Lcom/ardor3d/image/Texture$MinificationFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/ardor3d/image/Texture$MinificationFilter;->_usesMipMapLevels:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ardor3d/image/Texture$MinificationFilter;
    .locals 1

    const-class v0, Lcom/ardor3d/image/Texture$MinificationFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/image/Texture$MinificationFilter;

    return-object p0
.end method

.method public static values()[Lcom/ardor3d/image/Texture$MinificationFilter;
    .locals 1

    sget-object v0, Lcom/ardor3d/image/Texture$MinificationFilter;->$VALUES:[Lcom/ardor3d/image/Texture$MinificationFilter;

    invoke-virtual {v0}, [Lcom/ardor3d/image/Texture$MinificationFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/image/Texture$MinificationFilter;

    return-object v0
.end method


# virtual methods
.method public usesMipMapLevels()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/image/Texture$MinificationFilter;->_usesMipMapLevels:Z

    return v0
.end method
