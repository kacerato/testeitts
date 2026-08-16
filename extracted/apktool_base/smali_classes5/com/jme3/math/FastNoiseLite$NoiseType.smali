.class public final enum Lcom/jme3/math/FastNoiseLite$NoiseType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/math/FastNoiseLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NoiseType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/math/FastNoiseLite$NoiseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/math/FastNoiseLite$NoiseType;

.field public static final enum Cellular:Lcom/jme3/math/FastNoiseLite$NoiseType;

.field public static final enum OpenSimplex2:Lcom/jme3/math/FastNoiseLite$NoiseType;

.field public static final enum OpenSimplex2S:Lcom/jme3/math/FastNoiseLite$NoiseType;

.field public static final enum Perlin:Lcom/jme3/math/FastNoiseLite$NoiseType;

.field public static final enum Value:Lcom/jme3/math/FastNoiseLite$NoiseType;

.field public static final enum ValueCubic:Lcom/jme3/math/FastNoiseLite$NoiseType;


# direct methods
.method private static synthetic $values()[Lcom/jme3/math/FastNoiseLite$NoiseType;
    .locals 6

    sget-object v0, Lcom/jme3/math/FastNoiseLite$NoiseType;->OpenSimplex2:Lcom/jme3/math/FastNoiseLite$NoiseType;

    sget-object v1, Lcom/jme3/math/FastNoiseLite$NoiseType;->OpenSimplex2S:Lcom/jme3/math/FastNoiseLite$NoiseType;

    sget-object v2, Lcom/jme3/math/FastNoiseLite$NoiseType;->Cellular:Lcom/jme3/math/FastNoiseLite$NoiseType;

    sget-object v3, Lcom/jme3/math/FastNoiseLite$NoiseType;->Perlin:Lcom/jme3/math/FastNoiseLite$NoiseType;

    sget-object v4, Lcom/jme3/math/FastNoiseLite$NoiseType;->ValueCubic:Lcom/jme3/math/FastNoiseLite$NoiseType;

    sget-object v5, Lcom/jme3/math/FastNoiseLite$NoiseType;->Value:Lcom/jme3/math/FastNoiseLite$NoiseType;

    filled-new-array/range {v0 .. v5}, [Lcom/jme3/math/FastNoiseLite$NoiseType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/math/FastNoiseLite$NoiseType;

    const-string v1, "OpenSimplex2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/math/FastNoiseLite$NoiseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/math/FastNoiseLite$NoiseType;->OpenSimplex2:Lcom/jme3/math/FastNoiseLite$NoiseType;

    new-instance v0, Lcom/jme3/math/FastNoiseLite$NoiseType;

    const-string v1, "OpenSimplex2S"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/math/FastNoiseLite$NoiseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/math/FastNoiseLite$NoiseType;->OpenSimplex2S:Lcom/jme3/math/FastNoiseLite$NoiseType;

    new-instance v0, Lcom/jme3/math/FastNoiseLite$NoiseType;

    const-string v1, "Cellular"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/math/FastNoiseLite$NoiseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/math/FastNoiseLite$NoiseType;->Cellular:Lcom/jme3/math/FastNoiseLite$NoiseType;

    new-instance v0, Lcom/jme3/math/FastNoiseLite$NoiseType;

    const-string v1, "Perlin"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/jme3/math/FastNoiseLite$NoiseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/math/FastNoiseLite$NoiseType;->Perlin:Lcom/jme3/math/FastNoiseLite$NoiseType;

    new-instance v0, Lcom/jme3/math/FastNoiseLite$NoiseType;

    const-string v1, "ValueCubic"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/jme3/math/FastNoiseLite$NoiseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/math/FastNoiseLite$NoiseType;->ValueCubic:Lcom/jme3/math/FastNoiseLite$NoiseType;

    new-instance v0, Lcom/jme3/math/FastNoiseLite$NoiseType;

    const-string v1, "Value"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jme3/math/FastNoiseLite$NoiseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/math/FastNoiseLite$NoiseType;->Value:Lcom/jme3/math/FastNoiseLite$NoiseType;

    invoke-static {}, Lcom/jme3/math/FastNoiseLite$NoiseType;->$values()[Lcom/jme3/math/FastNoiseLite$NoiseType;

    move-result-object v0

    sput-object v0, Lcom/jme3/math/FastNoiseLite$NoiseType;->$VALUES:[Lcom/jme3/math/FastNoiseLite$NoiseType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/math/FastNoiseLite$NoiseType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/math/FastNoiseLite$NoiseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/math/FastNoiseLite$NoiseType;

    return-object p0
.end method

.method public static values()[Lcom/jme3/math/FastNoiseLite$NoiseType;
    .locals 1

    sget-object v0, Lcom/jme3/math/FastNoiseLite$NoiseType;->$VALUES:[Lcom/jme3/math/FastNoiseLite$NoiseType;

    invoke-virtual {v0}, [Lcom/jme3/math/FastNoiseLite$NoiseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/math/FastNoiseLite$NoiseType;

    return-object v0
.end method
