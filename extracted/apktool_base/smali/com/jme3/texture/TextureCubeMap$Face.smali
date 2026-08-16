.class public final enum Lcom/jme3/texture/TextureCubeMap$Face;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/texture/TextureCubeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Face"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/texture/TextureCubeMap$Face;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/texture/TextureCubeMap$Face;

.field public static final enum NegativeX:Lcom/jme3/texture/TextureCubeMap$Face;

.field public static final enum NegativeY:Lcom/jme3/texture/TextureCubeMap$Face;

.field public static final enum NegativeZ:Lcom/jme3/texture/TextureCubeMap$Face;

.field public static final enum PositiveX:Lcom/jme3/texture/TextureCubeMap$Face;

.field public static final enum PositiveY:Lcom/jme3/texture/TextureCubeMap$Face;

.field public static final enum PositiveZ:Lcom/jme3/texture/TextureCubeMap$Face;


# direct methods
.method private static synthetic $values()[Lcom/jme3/texture/TextureCubeMap$Face;
    .locals 6

    sget-object v0, Lcom/jme3/texture/TextureCubeMap$Face;->PositiveX:Lcom/jme3/texture/TextureCubeMap$Face;

    sget-object v1, Lcom/jme3/texture/TextureCubeMap$Face;->NegativeX:Lcom/jme3/texture/TextureCubeMap$Face;

    sget-object v2, Lcom/jme3/texture/TextureCubeMap$Face;->PositiveY:Lcom/jme3/texture/TextureCubeMap$Face;

    sget-object v3, Lcom/jme3/texture/TextureCubeMap$Face;->NegativeY:Lcom/jme3/texture/TextureCubeMap$Face;

    sget-object v4, Lcom/jme3/texture/TextureCubeMap$Face;->PositiveZ:Lcom/jme3/texture/TextureCubeMap$Face;

    sget-object v5, Lcom/jme3/texture/TextureCubeMap$Face;->NegativeZ:Lcom/jme3/texture/TextureCubeMap$Face;

    filled-new-array/range {v0 .. v5}, [Lcom/jme3/texture/TextureCubeMap$Face;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/texture/TextureCubeMap$Face;

    const-string v1, "PositiveX"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/texture/TextureCubeMap$Face;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/texture/TextureCubeMap$Face;->PositiveX:Lcom/jme3/texture/TextureCubeMap$Face;

    new-instance v0, Lcom/jme3/texture/TextureCubeMap$Face;

    const-string v1, "NegativeX"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/texture/TextureCubeMap$Face;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/texture/TextureCubeMap$Face;->NegativeX:Lcom/jme3/texture/TextureCubeMap$Face;

    new-instance v0, Lcom/jme3/texture/TextureCubeMap$Face;

    const-string v1, "PositiveY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/texture/TextureCubeMap$Face;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/texture/TextureCubeMap$Face;->PositiveY:Lcom/jme3/texture/TextureCubeMap$Face;

    new-instance v0, Lcom/jme3/texture/TextureCubeMap$Face;

    const-string v1, "NegativeY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/jme3/texture/TextureCubeMap$Face;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/texture/TextureCubeMap$Face;->NegativeY:Lcom/jme3/texture/TextureCubeMap$Face;

    new-instance v0, Lcom/jme3/texture/TextureCubeMap$Face;

    const-string v1, "PositiveZ"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/jme3/texture/TextureCubeMap$Face;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/texture/TextureCubeMap$Face;->PositiveZ:Lcom/jme3/texture/TextureCubeMap$Face;

    new-instance v0, Lcom/jme3/texture/TextureCubeMap$Face;

    const-string v1, "NegativeZ"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jme3/texture/TextureCubeMap$Face;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/texture/TextureCubeMap$Face;->NegativeZ:Lcom/jme3/texture/TextureCubeMap$Face;

    invoke-static {}, Lcom/jme3/texture/TextureCubeMap$Face;->$values()[Lcom/jme3/texture/TextureCubeMap$Face;

    move-result-object v0

    sput-object v0, Lcom/jme3/texture/TextureCubeMap$Face;->$VALUES:[Lcom/jme3/texture/TextureCubeMap$Face;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/texture/TextureCubeMap$Face;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/texture/TextureCubeMap$Face;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/texture/TextureCubeMap$Face;

    return-object p0
.end method

.method public static values()[Lcom/jme3/texture/TextureCubeMap$Face;
    .locals 1

    sget-object v0, Lcom/jme3/texture/TextureCubeMap$Face;->$VALUES:[Lcom/jme3/texture/TextureCubeMap$Face;

    invoke-virtual {v0}, [Lcom/jme3/texture/TextureCubeMap$Face;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/texture/TextureCubeMap$Face;

    return-object v0
.end method
