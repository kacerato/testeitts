.class public final enum Lcom/jme3/texture/Texture$MinFilter;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/texture/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MinFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/texture/Texture$MinFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/texture/Texture$MinFilter;

.field public static final enum BilinearNearestMipMap:Lcom/jme3/texture/Texture$MinFilter;

.field public static final enum BilinearNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

.field public static final enum NearestLinearMipMap:Lcom/jme3/texture/Texture$MinFilter;

.field public static final enum NearestNearestMipMap:Lcom/jme3/texture/Texture$MinFilter;

.field public static final enum NearestNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

.field public static final enum Trilinear:Lcom/jme3/texture/Texture$MinFilter;


# instance fields
.field private final usesMipMapLevels:Z


# direct methods
.method private static synthetic $values()[Lcom/jme3/texture/Texture$MinFilter;
    .locals 6

    sget-object v0, Lcom/jme3/texture/Texture$MinFilter;->NearestNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    sget-object v1, Lcom/jme3/texture/Texture$MinFilter;->BilinearNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    sget-object v2, Lcom/jme3/texture/Texture$MinFilter;->NearestNearestMipMap:Lcom/jme3/texture/Texture$MinFilter;

    sget-object v3, Lcom/jme3/texture/Texture$MinFilter;->BilinearNearestMipMap:Lcom/jme3/texture/Texture$MinFilter;

    sget-object v4, Lcom/jme3/texture/Texture$MinFilter;->NearestLinearMipMap:Lcom/jme3/texture/Texture$MinFilter;

    sget-object v5, Lcom/jme3/texture/Texture$MinFilter;->Trilinear:Lcom/jme3/texture/Texture$MinFilter;

    filled-new-array/range {v0 .. v5}, [Lcom/jme3/texture/Texture$MinFilter;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/jme3/texture/Texture$MinFilter;

    const-string v1, "NearestNoMipMaps"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/jme3/texture/Texture$MinFilter;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/jme3/texture/Texture$MinFilter;->NearestNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    new-instance v0, Lcom/jme3/texture/Texture$MinFilter;

    const-string v1, "BilinearNoMipMaps"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/jme3/texture/Texture$MinFilter;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/jme3/texture/Texture$MinFilter;->BilinearNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    new-instance v0, Lcom/jme3/texture/Texture$MinFilter;

    const-string v1, "NearestNearestMipMap"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/texture/Texture$MinFilter;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/jme3/texture/Texture$MinFilter;->NearestNearestMipMap:Lcom/jme3/texture/Texture$MinFilter;

    new-instance v0, Lcom/jme3/texture/Texture$MinFilter;

    const-string v1, "BilinearNearestMipMap"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/texture/Texture$MinFilter;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/jme3/texture/Texture$MinFilter;->BilinearNearestMipMap:Lcom/jme3/texture/Texture$MinFilter;

    new-instance v0, Lcom/jme3/texture/Texture$MinFilter;

    const-string v1, "NearestLinearMipMap"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/texture/Texture$MinFilter;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/jme3/texture/Texture$MinFilter;->NearestLinearMipMap:Lcom/jme3/texture/Texture$MinFilter;

    new-instance v0, Lcom/jme3/texture/Texture$MinFilter;

    const-string v1, "Trilinear"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/texture/Texture$MinFilter;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/jme3/texture/Texture$MinFilter;->Trilinear:Lcom/jme3/texture/Texture$MinFilter;

    invoke-static {}, Lcom/jme3/texture/Texture$MinFilter;->$values()[Lcom/jme3/texture/Texture$MinFilter;

    move-result-object v0

    sput-object v0, Lcom/jme3/texture/Texture$MinFilter;->$VALUES:[Lcom/jme3/texture/Texture$MinFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
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
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/jme3/texture/Texture$MinFilter;->usesMipMapLevels:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/texture/Texture$MinFilter;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/texture/Texture$MinFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/texture/Texture$MinFilter;

    return-object p0
.end method

.method public static values()[Lcom/jme3/texture/Texture$MinFilter;
    .locals 1

    sget-object v0, Lcom/jme3/texture/Texture$MinFilter;->$VALUES:[Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v0}, [Lcom/jme3/texture/Texture$MinFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/texture/Texture$MinFilter;

    return-object v0
.end method


# virtual methods
.method public usesMipMapLevels()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/texture/Texture$MinFilter;->usesMipMapLevels:Z

    return v0
.end method
