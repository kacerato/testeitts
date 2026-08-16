.class public final enum Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;
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
    name = "NoiseType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;

.field public static final enum Cellular:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;

.field public static final enum OpenSimplex2:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;

.field public static final enum OpenSimplex2S:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;

.field public static final enum Perlin:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;

.field public static final enum Value:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;

.field public static final enum ValueCubic:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;


# direct methods
.method private static synthetic $values()[Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;
    .locals 6

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;->OpenSimplex2:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;->OpenSimplex2S:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;->Cellular:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;->Perlin:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;->ValueCubic:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;

    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;->Value:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;

    filled-new-array/range {v0 .. v5}, [Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;

    const-string v1, "OpenSimplex2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;->OpenSimplex2:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;

    const-string v1, "OpenSimplex2S"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;->OpenSimplex2S:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;

    const-string v1, "Cellular"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;->Cellular:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;

    const-string v1, "Perlin"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;->Perlin:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;

    const-string v1, "ValueCubic"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;->ValueCubic:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;

    const-string v1, "Value"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;->Value:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;->$values()[Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;

    return-object v0
.end method
