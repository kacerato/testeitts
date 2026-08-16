.class public final enum Lcom/ardor3d/image/Texture$DepthTextureCompareMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/image/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DepthTextureCompareMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ardor3d/image/Texture$DepthTextureCompareMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ardor3d/image/Texture$DepthTextureCompareMode;

.field public static final enum None:Lcom/ardor3d/image/Texture$DepthTextureCompareMode;

.field public static final enum RtoTexture:Lcom/ardor3d/image/Texture$DepthTextureCompareMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/ardor3d/image/Texture$DepthTextureCompareMode;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/Texture$DepthTextureCompareMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/Texture$DepthTextureCompareMode;->None:Lcom/ardor3d/image/Texture$DepthTextureCompareMode;

    new-instance v1, Lcom/ardor3d/image/Texture$DepthTextureCompareMode;

    const-string v2, "RtoTexture"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ardor3d/image/Texture$DepthTextureCompareMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ardor3d/image/Texture$DepthTextureCompareMode;->RtoTexture:Lcom/ardor3d/image/Texture$DepthTextureCompareMode;

    filled-new-array {v0, v1}, [Lcom/ardor3d/image/Texture$DepthTextureCompareMode;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/image/Texture$DepthTextureCompareMode;->$VALUES:[Lcom/ardor3d/image/Texture$DepthTextureCompareMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ardor3d/image/Texture$DepthTextureCompareMode;
    .locals 1

    const-class v0, Lcom/ardor3d/image/Texture$DepthTextureCompareMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/image/Texture$DepthTextureCompareMode;

    return-object p0
.end method

.method public static values()[Lcom/ardor3d/image/Texture$DepthTextureCompareMode;
    .locals 1

    sget-object v0, Lcom/ardor3d/image/Texture$DepthTextureCompareMode;->$VALUES:[Lcom/ardor3d/image/Texture$DepthTextureCompareMode;

    invoke-virtual {v0}, [Lcom/ardor3d/image/Texture$DepthTextureCompareMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/image/Texture$DepthTextureCompareMode;

    return-object v0
.end method
