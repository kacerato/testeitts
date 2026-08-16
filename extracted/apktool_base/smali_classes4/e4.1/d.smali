.class public final enum Le4/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le4/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Le4/d;

.field public static final enum Dunes:Le4/d;

.field public static final enum Erosion:Le4/d;

.field public static final enum Mountain:Le4/d;

.field public static final enum NaturalSmooth:Le4/d;

.field public static final enum Noise:Le4/d;

.field public static final enum Plain:Le4/d;

.field public static final enum Ravine:Le4/d;

.field public static final enum Rocky:Le4/d;

.field public static final enum Terrace:Le4/d;

.field public static final enum Valley:Le4/d;

.field public static final enum WaterErosion:Le4/d;


# instance fields
.field private final displayName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Le4/d;

    const-string v1, "Mountain"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Le4/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Le4/d;->Mountain:Le4/d;

    new-instance v0, Le4/d;

    const-string v1, "Erosion"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Le4/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Le4/d;->Erosion:Le4/d;

    new-instance v0, Le4/d;

    const-string v1, "Ravine"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Le4/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Le4/d;->Ravine:Le4/d;

    new-instance v0, Le4/d;

    const/4 v1, 0x3

    const-string v2, "Water Erosion"

    const-string v3, "WaterErosion"

    invoke-direct {v0, v3, v1, v2}, Le4/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Le4/d;->WaterErosion:Le4/d;

    new-instance v0, Le4/d;

    const-string v1, "Plain"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v1}, Le4/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Le4/d;->Plain:Le4/d;

    new-instance v0, Le4/d;

    const-string v1, "Dunes"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v1}, Le4/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Le4/d;->Dunes:Le4/d;

    new-instance v0, Le4/d;

    const-string v1, "Rocky"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v1}, Le4/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Le4/d;->Rocky:Le4/d;

    new-instance v0, Le4/d;

    const/4 v1, 0x7

    const-string v2, "Natural Smooth"

    const-string v3, "NaturalSmooth"

    invoke-direct {v0, v3, v1, v2}, Le4/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Le4/d;->NaturalSmooth:Le4/d;

    new-instance v0, Le4/d;

    const-string v1, "Valley"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v1}, Le4/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Le4/d;->Valley:Le4/d;

    new-instance v0, Le4/d;

    const-string v1, "Terrace"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v1}, Le4/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Le4/d;->Terrace:Le4/d;

    new-instance v0, Le4/d;

    const-string v1, "Noise"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v1}, Le4/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Le4/d;->Noise:Le4/d;

    invoke-static {}, Le4/d;->a()[Le4/d;

    move-result-object v0

    sput-object v0, Le4/d;->$VALUES:[Le4/d;

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

    iput-object p3, p0, Le4/d;->displayName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a()[Le4/d;
    .locals 11

    sget-object v0, Le4/d;->Mountain:Le4/d;

    sget-object v1, Le4/d;->Erosion:Le4/d;

    sget-object v2, Le4/d;->Ravine:Le4/d;

    sget-object v3, Le4/d;->WaterErosion:Le4/d;

    sget-object v4, Le4/d;->Plain:Le4/d;

    sget-object v5, Le4/d;->Dunes:Le4/d;

    sget-object v6, Le4/d;->Rocky:Le4/d;

    sget-object v7, Le4/d;->NaturalSmooth:Le4/d;

    sget-object v8, Le4/d;->Valley:Le4/d;

    sget-object v9, Le4/d;->Terrace:Le4/d;

    sget-object v10, Le4/d;->Noise:Le4/d;

    filled-new-array/range {v0 .. v10}, [Le4/d;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Le4/d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Le4/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le4/d;

    return-object p0
.end method

.method public static values()[Le4/d;
    .locals 1

    sget-object v0, Le4/d;->$VALUES:[Le4/d;

    invoke-virtual {v0}, [Le4/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le4/d;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le4/d;->displayName:Ljava/lang/String;

    return-object v0
.end method
