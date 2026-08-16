.class public final enum Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;

.field public static final enum FBM:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;

.field public static final enum HETERO_TERRAIN:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;

.field public static final enum HYBRID_MULTIFRACTAL:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;

.field public static final enum MULTIFRACTAL:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;

.field public static final enum RIDGED_MULTIFRACTAL:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;


# instance fields
.field private final displayName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;

    const/4 v1, 0x0

    const-string v2, "fBM"

    const-string v3, "FBM"

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;->FBM:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;

    const/4 v1, 0x1

    const-string v2, "Multifractal"

    const-string v3, "MULTIFRACTAL"

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;->MULTIFRACTAL:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;

    const/4 v1, 0x2

    const-string v2, "Hybrid Multifractal"

    const-string v3, "HYBRID_MULTIFRACTAL"

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;->HYBRID_MULTIFRACTAL:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;

    const/4 v1, 0x3

    const-string v2, "Ridged Multifractal"

    const-string v3, "RIDGED_MULTIFRACTAL"

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;->RIDGED_MULTIFRACTAL:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;

    const/4 v1, 0x4

    const-string v2, "Hetero Terrain"

    const-string v3, "HETERO_TERRAIN"

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;->HETERO_TERRAIN:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;->a()[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;->$VALUES:[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;

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

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;->displayName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a()[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;
    .locals 5

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;->FBM:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;

    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;->MULTIFRACTAL:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;->HYBRID_MULTIFRACTAL:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;

    sget-object v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;->RIDGED_MULTIFRACTAL:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;

    sget-object v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;->HETERO_TERRAIN:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;->$VALUES:[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;->displayName:Ljava/lang/String;

    return-object v0
.end method
