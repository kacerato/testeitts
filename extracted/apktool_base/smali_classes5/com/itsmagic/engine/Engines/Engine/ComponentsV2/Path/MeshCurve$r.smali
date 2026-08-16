.class public final enum Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$r;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "r"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$r;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$r;

.field public static final enum Bounds:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$r;

.field public static final enum WorldUnits:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$r;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$r;

    const-string v1, "Bounds"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$r;->Bounds:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$r;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$r;

    const-string v1, "WorldUnits"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$r;->WorldUnits:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$r;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$r;->a()[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$r;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$r;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$r;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
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

.method public static synthetic a()[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$r;
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$r;->Bounds:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$r;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$r;->WorldUnits:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$r;

    filled-new-array {v0, v1}, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$r;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$r;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$r;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$r;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$r;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$r;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$r;

    return-object v0
.end method
