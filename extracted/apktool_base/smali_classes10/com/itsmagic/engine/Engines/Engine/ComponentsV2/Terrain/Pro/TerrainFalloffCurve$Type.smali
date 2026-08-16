.class public final enum Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;
.super Ljava/lang/Enum;
.source "TerrainFalloffCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

.field public static final enum BOX:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

.field public static final enum COSINE:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

.field public static final enum CUSTOM_BEZIER:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

.field public static final enum GAUSSIAN:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

.field public static final enum LINEAR:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

.field public static final enum SMOOTH_STEP:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

.field public static final enum SPIKE:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;


# direct methods
.method private static synthetic $values()[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;
    .locals 3

    .line 11
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;->LINEAR:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;->SMOOTH_STEP:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;->COSINE:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;->SPIKE:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;->GAUSSIAN:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;->BOX:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;->CUSTOM_BEZIER:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    const-string v1, "LINEAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;->LINEAR:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    .line 13
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    const-string v1, "SMOOTH_STEP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;->SMOOTH_STEP:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    .line 14
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    const-string v1, "COSINE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;->COSINE:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    .line 15
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    const-string v1, "SPIKE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;->SPIKE:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    .line 16
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    const-string v1, "GAUSSIAN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;->GAUSSIAN:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    .line 17
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    const-string v1, "BOX"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;->BOX:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    .line 18
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    const-string v1, "CUSTOM_BEZIER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;->CUSTOM_BEZIER:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    .line 11
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;->$values()[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

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

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 11
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;
    .locals 1

    .line 11
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    return-object v0
.end method
