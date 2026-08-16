.class public final enum Lcom/ardor3d/image/TextureCubeMap$Face;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/image/TextureCubeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Face"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ardor3d/image/TextureCubeMap$Face;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ardor3d/image/TextureCubeMap$Face;

.field public static final enum NegativeX:Lcom/ardor3d/image/TextureCubeMap$Face;

.field public static final enum NegativeY:Lcom/ardor3d/image/TextureCubeMap$Face;

.field public static final enum NegativeZ:Lcom/ardor3d/image/TextureCubeMap$Face;

.field public static final enum PositiveX:Lcom/ardor3d/image/TextureCubeMap$Face;

.field public static final enum PositiveY:Lcom/ardor3d/image/TextureCubeMap$Face;

.field public static final enum PositiveZ:Lcom/ardor3d/image/TextureCubeMap$Face;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/ardor3d/image/TextureCubeMap$Face;

    const-string v1, "PositiveX"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/TextureCubeMap$Face;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/TextureCubeMap$Face;->PositiveX:Lcom/ardor3d/image/TextureCubeMap$Face;

    new-instance v1, Lcom/ardor3d/image/TextureCubeMap$Face;

    const-string v2, "NegativeX"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ardor3d/image/TextureCubeMap$Face;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ardor3d/image/TextureCubeMap$Face;->NegativeX:Lcom/ardor3d/image/TextureCubeMap$Face;

    new-instance v2, Lcom/ardor3d/image/TextureCubeMap$Face;

    const-string v3, "PositiveY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ardor3d/image/TextureCubeMap$Face;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ardor3d/image/TextureCubeMap$Face;->PositiveY:Lcom/ardor3d/image/TextureCubeMap$Face;

    new-instance v3, Lcom/ardor3d/image/TextureCubeMap$Face;

    const-string v4, "NegativeY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ardor3d/image/TextureCubeMap$Face;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ardor3d/image/TextureCubeMap$Face;->NegativeY:Lcom/ardor3d/image/TextureCubeMap$Face;

    new-instance v4, Lcom/ardor3d/image/TextureCubeMap$Face;

    const-string v5, "PositiveZ"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/ardor3d/image/TextureCubeMap$Face;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ardor3d/image/TextureCubeMap$Face;->PositiveZ:Lcom/ardor3d/image/TextureCubeMap$Face;

    new-instance v5, Lcom/ardor3d/image/TextureCubeMap$Face;

    const-string v6, "NegativeZ"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/ardor3d/image/TextureCubeMap$Face;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ardor3d/image/TextureCubeMap$Face;->NegativeZ:Lcom/ardor3d/image/TextureCubeMap$Face;

    filled-new-array/range {v0 .. v5}, [Lcom/ardor3d/image/TextureCubeMap$Face;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/image/TextureCubeMap$Face;->$VALUES:[Lcom/ardor3d/image/TextureCubeMap$Face;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ardor3d/image/TextureCubeMap$Face;
    .locals 1

    const-class v0, Lcom/ardor3d/image/TextureCubeMap$Face;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/image/TextureCubeMap$Face;

    return-object p0
.end method

.method public static values()[Lcom/ardor3d/image/TextureCubeMap$Face;
    .locals 1

    sget-object v0, Lcom/ardor3d/image/TextureCubeMap$Face;->$VALUES:[Lcom/ardor3d/image/TextureCubeMap$Face;

    invoke-virtual {v0}, [Lcom/ardor3d/image/TextureCubeMap$Face;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/image/TextureCubeMap$Face;

    return-object v0
.end method
