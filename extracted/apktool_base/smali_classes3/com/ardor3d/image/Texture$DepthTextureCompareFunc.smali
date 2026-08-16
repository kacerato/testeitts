.class public final enum Lcom/ardor3d/image/Texture$DepthTextureCompareFunc;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/image/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DepthTextureCompareFunc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ardor3d/image/Texture$DepthTextureCompareFunc;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ardor3d/image/Texture$DepthTextureCompareFunc;

.field public static final enum GreaterThanEqual:Lcom/ardor3d/image/Texture$DepthTextureCompareFunc;

.field public static final enum LessThanEqual:Lcom/ardor3d/image/Texture$DepthTextureCompareFunc;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/ardor3d/image/Texture$DepthTextureCompareFunc;

    const-string v1, "LessThanEqual"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/Texture$DepthTextureCompareFunc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/Texture$DepthTextureCompareFunc;->LessThanEqual:Lcom/ardor3d/image/Texture$DepthTextureCompareFunc;

    new-instance v1, Lcom/ardor3d/image/Texture$DepthTextureCompareFunc;

    const-string v2, "GreaterThanEqual"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ardor3d/image/Texture$DepthTextureCompareFunc;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ardor3d/image/Texture$DepthTextureCompareFunc;->GreaterThanEqual:Lcom/ardor3d/image/Texture$DepthTextureCompareFunc;

    filled-new-array {v0, v1}, [Lcom/ardor3d/image/Texture$DepthTextureCompareFunc;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/image/Texture$DepthTextureCompareFunc;->$VALUES:[Lcom/ardor3d/image/Texture$DepthTextureCompareFunc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ardor3d/image/Texture$DepthTextureCompareFunc;
    .locals 1

    const-class v0, Lcom/ardor3d/image/Texture$DepthTextureCompareFunc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/image/Texture$DepthTextureCompareFunc;

    return-object p0
.end method

.method public static values()[Lcom/ardor3d/image/Texture$DepthTextureCompareFunc;
    .locals 1

    sget-object v0, Lcom/ardor3d/image/Texture$DepthTextureCompareFunc;->$VALUES:[Lcom/ardor3d/image/Texture$DepthTextureCompareFunc;

    invoke-virtual {v0}, [Lcom/ardor3d/image/Texture$DepthTextureCompareFunc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/image/Texture$DepthTextureCompareFunc;

    return-object v0
.end method
