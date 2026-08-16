.class public final enum Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;
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
    name = "DomainWarpType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;

.field public static final enum BasicGrid:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;

.field public static final enum OpenSimplex2:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;

.field public static final enum OpenSimplex2Reduced:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;


# direct methods
.method private static synthetic $values()[Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;
    .locals 3

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;->OpenSimplex2:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;->OpenSimplex2Reduced:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;->BasicGrid:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;

    filled-new-array {v0, v1, v2}, [Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;

    const-string v1, "OpenSimplex2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;->OpenSimplex2:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;

    const-string v1, "OpenSimplex2Reduced"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;->OpenSimplex2Reduced:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;

    const-string v1, "BasicGrid"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;->BasicGrid:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;->$values()[Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;

    return-object v0
.end method
