.class public final enum Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$f;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$f;

.field public static final enum SAW:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$f;

.field public static final enum SIN:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$f;

.field public static final enum TRI:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$f;


# instance fields
.field private final displayName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$f;

    const/4 v1, 0x0

    const-string v2, "Sine"

    const-string v3, "SIN"

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$f;->SIN:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$f;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$f;

    const/4 v1, 0x1

    const-string v2, "Saw"

    const-string v3, "SAW"

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$f;->SAW:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$f;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$f;

    const/4 v1, 0x2

    const-string v2, "Triangle"

    const-string v3, "TRI"

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$f;->TRI:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$f;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$f;->a()[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$f;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$f;->$VALUES:[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$f;

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

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$f;->displayName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a()[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$f;
    .locals 3

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$f;->SIN:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$f;

    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$f;->SAW:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$f;

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$f;->TRI:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$f;

    filled-new-array {v0, v1, v2}, [Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$f;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$f;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$f;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$f;->$VALUES:[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$f;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$f;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$f;->displayName:Ljava/lang/String;

    return-object v0
.end method
