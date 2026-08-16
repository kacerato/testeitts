.class public final enum Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation runtime LIc/p;
.end annotation

.annotation runtime LIc/q;
.end annotation

.annotation runtime LIc/r;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RotationType3D"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;

.field public static final enum ImproveXYPlanes:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;

.field public static final enum ImproveXZPlanes:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;

.field public static final enum None:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;


# direct methods
.method private static synthetic $values()[Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;
    .locals 3

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;->None:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;->ImproveXYPlanes:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;->ImproveXZPlanes:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;

    filled-new-array {v0, v1, v2}, [Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;->None:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;

    const-string v1, "ImproveXYPlanes"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;->ImproveXYPlanes:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;

    const-string v1, "ImproveXZPlanes"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;->ImproveXZPlanes:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;->$values()[Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;

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
            "$enum$name",
            "$enum$ordinal"
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

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;

    return-object v0
.end method
