.class public final enum Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;
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
    name = "CellularDistanceFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;

.field public static final enum Euclidean:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;

.field public static final enum EuclideanSq:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;

.field public static final enum Hybrid:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;

.field public static final enum Manhattan:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;


# direct methods
.method private static synthetic $values()[Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;
    .locals 4

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;->Euclidean:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;->EuclideanSq:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;->Manhattan:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;->Hybrid:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;

    filled-new-array {v0, v1, v2, v3}, [Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;

    const-string v1, "Euclidean"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;->Euclidean:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;

    const-string v1, "EuclideanSq"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;->EuclideanSq:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;

    const-string v1, "Manhattan"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;->Manhattan:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;

    const-string v1, "Hybrid"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;->Hybrid:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;->$values()[Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;

    return-object v0
.end method
