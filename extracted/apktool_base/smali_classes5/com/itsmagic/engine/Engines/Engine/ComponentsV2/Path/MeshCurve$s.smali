.class public final enum Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "s"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;

.field public static final enum AlignToCurve:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;

.field public static final enum FixX:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;

.field public static final enum FixY:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;

.field public static final enum FixZ:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;

    const-string v1, "AlignToCurve"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;->AlignToCurve:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;

    const-string v1, "FixX"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;->FixX:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;

    const-string v1, "FixY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;->FixY:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;

    const-string v1, "FixZ"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;->FixZ:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;->a()[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;

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

.method public static synthetic a()[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;
    .locals 4

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;->AlignToCurve:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;->FixX:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;->FixY:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;->FixZ:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;

    filled-new-array {v0, v1, v2, v3}, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$s;

    return-object v0
.end method
