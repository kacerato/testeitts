.class public final enum Lf4/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lf4/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lf4/c;

.field public static final enum Biome:Lf4/c;

.field public static final enum Cliff:Lf4/c;

.field public static final enum Curvature:Lf4/c;

.field public static final enum Dunes:Lf4/c;

.field public static final enum Erosion:Lf4/c;

.field public static final enum HeightBand:Lf4/c;

.field public static final enum NoiseBlend:Lf4/c;

.field public static final enum Ridge:Lf4/c;

.field public static final enum Slope:Lf4/c;

.field public static final enum Terrace:Lf4/c;

.field public static final enum WaterFlow:Lf4/c;


# instance fields
.field private final displayName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lf4/c;

    const-string v1, "Cliff"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lf4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lf4/c;->Cliff:Lf4/c;

    new-instance v0, Lf4/c;

    const-string v1, "Slope"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lf4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lf4/c;->Slope:Lf4/c;

    new-instance v0, Lf4/c;

    const/4 v1, 0x2

    const-string v2, "Height Band"

    const-string v3, "HeightBand"

    invoke-direct {v0, v3, v1, v2}, Lf4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lf4/c;->HeightBand:Lf4/c;

    new-instance v0, Lf4/c;

    const-string v1, "Curvature"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Lf4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lf4/c;->Curvature:Lf4/c;

    new-instance v0, Lf4/c;

    const-string v1, "Erosion"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v1}, Lf4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lf4/c;->Erosion:Lf4/c;

    new-instance v0, Lf4/c;

    const/4 v1, 0x5

    const-string v2, "Water Flow"

    const-string v3, "WaterFlow"

    invoke-direct {v0, v3, v1, v2}, Lf4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lf4/c;->WaterFlow:Lf4/c;

    new-instance v0, Lf4/c;

    const-string v1, "Terrace"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v1}, Lf4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lf4/c;->Terrace:Lf4/c;

    new-instance v0, Lf4/c;

    const/4 v1, 0x7

    const-string v2, "Noise Blend"

    const-string v3, "NoiseBlend"

    invoke-direct {v0, v3, v1, v2}, Lf4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lf4/c;->NoiseBlend:Lf4/c;

    new-instance v0, Lf4/c;

    const-string v1, "Dunes"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v1}, Lf4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lf4/c;->Dunes:Lf4/c;

    new-instance v0, Lf4/c;

    const-string v1, "Ridge"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v1}, Lf4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lf4/c;->Ridge:Lf4/c;

    new-instance v0, Lf4/c;

    const-string v1, "Biome"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v1}, Lf4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lf4/c;->Biome:Lf4/c;

    invoke-static {}, Lf4/c;->a()[Lf4/c;

    move-result-object v0

    sput-object v0, Lf4/c;->$VALUES:[Lf4/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "displayName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lf4/c;->displayName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a()[Lf4/c;
    .locals 11

    sget-object v0, Lf4/c;->Cliff:Lf4/c;

    sget-object v1, Lf4/c;->Slope:Lf4/c;

    sget-object v2, Lf4/c;->HeightBand:Lf4/c;

    sget-object v3, Lf4/c;->Curvature:Lf4/c;

    sget-object v4, Lf4/c;->Erosion:Lf4/c;

    sget-object v5, Lf4/c;->WaterFlow:Lf4/c;

    sget-object v6, Lf4/c;->Terrace:Lf4/c;

    sget-object v7, Lf4/c;->NoiseBlend:Lf4/c;

    sget-object v8, Lf4/c;->Dunes:Lf4/c;

    sget-object v9, Lf4/c;->Ridge:Lf4/c;

    sget-object v10, Lf4/c;->Biome:Lf4/c;

    filled-new-array/range {v0 .. v10}, [Lf4/c;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lf4/c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lf4/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf4/c;

    return-object p0
.end method

.method public static values()[Lf4/c;
    .locals 1

    sget-object v0, Lf4/c;->$VALUES:[Lf4/c;

    invoke-virtual {v0}, [Lf4/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf4/c;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf4/c;->displayName:Ljava/lang/String;

    return-object v0
.end method
