.class public final enum Lcom/ardor3d/image/Texture$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/image/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ardor3d/image/Texture$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ardor3d/image/Texture$Type;

.field public static final enum CubeMap:Lcom/ardor3d/image/Texture$Type;

.field public static final enum OneDimensional:Lcom/ardor3d/image/Texture$Type;

.field public static final enum Rectangle:Lcom/ardor3d/image/Texture$Type;

.field public static final enum ThreeDimensional:Lcom/ardor3d/image/Texture$Type;

.field public static final enum TwoDimensional:Lcom/ardor3d/image/Texture$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/ardor3d/image/Texture$Type;

    const-string v1, "OneDimensional"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/Texture$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/Texture$Type;->OneDimensional:Lcom/ardor3d/image/Texture$Type;

    new-instance v1, Lcom/ardor3d/image/Texture$Type;

    const-string v2, "TwoDimensional"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ardor3d/image/Texture$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ardor3d/image/Texture$Type;->TwoDimensional:Lcom/ardor3d/image/Texture$Type;

    new-instance v2, Lcom/ardor3d/image/Texture$Type;

    const-string v3, "ThreeDimensional"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ardor3d/image/Texture$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ardor3d/image/Texture$Type;->ThreeDimensional:Lcom/ardor3d/image/Texture$Type;

    new-instance v3, Lcom/ardor3d/image/Texture$Type;

    const-string v4, "CubeMap"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ardor3d/image/Texture$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ardor3d/image/Texture$Type;->CubeMap:Lcom/ardor3d/image/Texture$Type;

    new-instance v4, Lcom/ardor3d/image/Texture$Type;

    const-string v5, "Rectangle"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/ardor3d/image/Texture$Type;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ardor3d/image/Texture$Type;->Rectangle:Lcom/ardor3d/image/Texture$Type;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/ardor3d/image/Texture$Type;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/image/Texture$Type;->$VALUES:[Lcom/ardor3d/image/Texture$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ardor3d/image/Texture$Type;
    .locals 1

    const-class v0, Lcom/ardor3d/image/Texture$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/image/Texture$Type;

    return-object p0
.end method

.method public static values()[Lcom/ardor3d/image/Texture$Type;
    .locals 1

    sget-object v0, Lcom/ardor3d/image/Texture$Type;->$VALUES:[Lcom/ardor3d/image/Texture$Type;

    invoke-virtual {v0}, [Lcom/ardor3d/image/Texture$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/image/Texture$Type;

    return-object v0
.end method
