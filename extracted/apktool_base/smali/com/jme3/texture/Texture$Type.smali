.class public final enum Lcom/jme3/texture/Texture$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/texture/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/texture/Texture$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/texture/Texture$Type;

.field public static final enum CubeMap:Lcom/jme3/texture/Texture$Type;

.field public static final enum ThreeDimensional:Lcom/jme3/texture/Texture$Type;

.field public static final enum TwoDimensional:Lcom/jme3/texture/Texture$Type;

.field public static final enum TwoDimensionalArray:Lcom/jme3/texture/Texture$Type;


# direct methods
.method private static synthetic $values()[Lcom/jme3/texture/Texture$Type;
    .locals 4

    sget-object v0, Lcom/jme3/texture/Texture$Type;->TwoDimensional:Lcom/jme3/texture/Texture$Type;

    sget-object v1, Lcom/jme3/texture/Texture$Type;->TwoDimensionalArray:Lcom/jme3/texture/Texture$Type;

    sget-object v2, Lcom/jme3/texture/Texture$Type;->ThreeDimensional:Lcom/jme3/texture/Texture$Type;

    sget-object v3, Lcom/jme3/texture/Texture$Type;->CubeMap:Lcom/jme3/texture/Texture$Type;

    filled-new-array {v0, v1, v2, v3}, [Lcom/jme3/texture/Texture$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/texture/Texture$Type;

    const-string v1, "TwoDimensional"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/texture/Texture$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/texture/Texture$Type;->TwoDimensional:Lcom/jme3/texture/Texture$Type;

    new-instance v0, Lcom/jme3/texture/Texture$Type;

    const-string v1, "TwoDimensionalArray"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/texture/Texture$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/texture/Texture$Type;->TwoDimensionalArray:Lcom/jme3/texture/Texture$Type;

    new-instance v0, Lcom/jme3/texture/Texture$Type;

    const-string v1, "ThreeDimensional"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/texture/Texture$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/texture/Texture$Type;->ThreeDimensional:Lcom/jme3/texture/Texture$Type;

    new-instance v0, Lcom/jme3/texture/Texture$Type;

    const-string v1, "CubeMap"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/jme3/texture/Texture$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/texture/Texture$Type;->CubeMap:Lcom/jme3/texture/Texture$Type;

    invoke-static {}, Lcom/jme3/texture/Texture$Type;->$values()[Lcom/jme3/texture/Texture$Type;

    move-result-object v0

    sput-object v0, Lcom/jme3/texture/Texture$Type;->$VALUES:[Lcom/jme3/texture/Texture$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/texture/Texture$Type;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/texture/Texture$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/texture/Texture$Type;

    return-object p0
.end method

.method public static values()[Lcom/jme3/texture/Texture$Type;
    .locals 1

    sget-object v0, Lcom/jme3/texture/Texture$Type;->$VALUES:[Lcom/jme3/texture/Texture$Type;

    invoke-virtual {v0}, [Lcom/jme3/texture/Texture$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/texture/Texture$Type;

    return-object v0
.end method
