.class public final enum Lcom/jme3/scene/shape/Sphere$TextureMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/scene/shape/Sphere;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextureMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/scene/shape/Sphere$TextureMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/scene/shape/Sphere$TextureMode;

.field public static final enum Original:Lcom/jme3/scene/shape/Sphere$TextureMode;

.field public static final enum Polar:Lcom/jme3/scene/shape/Sphere$TextureMode;

.field public static final enum Projected:Lcom/jme3/scene/shape/Sphere$TextureMode;


# direct methods
.method private static synthetic $values()[Lcom/jme3/scene/shape/Sphere$TextureMode;
    .locals 3

    sget-object v0, Lcom/jme3/scene/shape/Sphere$TextureMode;->Original:Lcom/jme3/scene/shape/Sphere$TextureMode;

    sget-object v1, Lcom/jme3/scene/shape/Sphere$TextureMode;->Projected:Lcom/jme3/scene/shape/Sphere$TextureMode;

    sget-object v2, Lcom/jme3/scene/shape/Sphere$TextureMode;->Polar:Lcom/jme3/scene/shape/Sphere$TextureMode;

    filled-new-array {v0, v1, v2}, [Lcom/jme3/scene/shape/Sphere$TextureMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/scene/shape/Sphere$TextureMode;

    const-string v1, "Original"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/scene/shape/Sphere$TextureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/shape/Sphere$TextureMode;->Original:Lcom/jme3/scene/shape/Sphere$TextureMode;

    new-instance v0, Lcom/jme3/scene/shape/Sphere$TextureMode;

    const-string v1, "Projected"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/scene/shape/Sphere$TextureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/shape/Sphere$TextureMode;->Projected:Lcom/jme3/scene/shape/Sphere$TextureMode;

    new-instance v0, Lcom/jme3/scene/shape/Sphere$TextureMode;

    const-string v1, "Polar"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/scene/shape/Sphere$TextureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/shape/Sphere$TextureMode;->Polar:Lcom/jme3/scene/shape/Sphere$TextureMode;

    invoke-static {}, Lcom/jme3/scene/shape/Sphere$TextureMode;->$values()[Lcom/jme3/scene/shape/Sphere$TextureMode;

    move-result-object v0

    sput-object v0, Lcom/jme3/scene/shape/Sphere$TextureMode;->$VALUES:[Lcom/jme3/scene/shape/Sphere$TextureMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/scene/shape/Sphere$TextureMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/scene/shape/Sphere$TextureMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/scene/shape/Sphere$TextureMode;

    return-object p0
.end method

.method public static values()[Lcom/jme3/scene/shape/Sphere$TextureMode;
    .locals 1

    sget-object v0, Lcom/jme3/scene/shape/Sphere$TextureMode;->$VALUES:[Lcom/jme3/scene/shape/Sphere$TextureMode;

    invoke-virtual {v0}, [Lcom/jme3/scene/shape/Sphere$TextureMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/shape/Sphere$TextureMode;

    return-object v0
.end method
