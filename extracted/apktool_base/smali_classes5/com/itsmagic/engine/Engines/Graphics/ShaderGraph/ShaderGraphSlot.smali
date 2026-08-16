.class public Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public stageOverride:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "type"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;->name:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "type",
            "stageOverride"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;->name:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    .line 8
    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;->stageOverride:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fallback"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;->stageOverride:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    return-object p1
.end method
