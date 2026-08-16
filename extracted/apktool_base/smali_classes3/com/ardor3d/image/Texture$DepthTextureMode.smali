.class public final enum Lcom/ardor3d/image/Texture$DepthTextureMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/image/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DepthTextureMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ardor3d/image/Texture$DepthTextureMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ardor3d/image/Texture$DepthTextureMode;

.field public static final enum Alpha:Lcom/ardor3d/image/Texture$DepthTextureMode;

.field public static final enum Intensity:Lcom/ardor3d/image/Texture$DepthTextureMode;

.field public static final enum Luminance:Lcom/ardor3d/image/Texture$DepthTextureMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/ardor3d/image/Texture$DepthTextureMode;

    const-string v1, "Luminance"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/Texture$DepthTextureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/Texture$DepthTextureMode;->Luminance:Lcom/ardor3d/image/Texture$DepthTextureMode;

    new-instance v1, Lcom/ardor3d/image/Texture$DepthTextureMode;

    const-string v2, "Alpha"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ardor3d/image/Texture$DepthTextureMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ardor3d/image/Texture$DepthTextureMode;->Alpha:Lcom/ardor3d/image/Texture$DepthTextureMode;

    new-instance v2, Lcom/ardor3d/image/Texture$DepthTextureMode;

    const-string v3, "Intensity"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ardor3d/image/Texture$DepthTextureMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ardor3d/image/Texture$DepthTextureMode;->Intensity:Lcom/ardor3d/image/Texture$DepthTextureMode;

    filled-new-array {v0, v1, v2}, [Lcom/ardor3d/image/Texture$DepthTextureMode;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/image/Texture$DepthTextureMode;->$VALUES:[Lcom/ardor3d/image/Texture$DepthTextureMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ardor3d/image/Texture$DepthTextureMode;
    .locals 1

    const-class v0, Lcom/ardor3d/image/Texture$DepthTextureMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/image/Texture$DepthTextureMode;

    return-object p0
.end method

.method public static values()[Lcom/ardor3d/image/Texture$DepthTextureMode;
    .locals 1

    sget-object v0, Lcom/ardor3d/image/Texture$DepthTextureMode;->$VALUES:[Lcom/ardor3d/image/Texture$DepthTextureMode;

    invoke-virtual {v0}, [Lcom/ardor3d/image/Texture$DepthTextureMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/image/Texture$DepthTextureMode;

    return-object v0
.end method
