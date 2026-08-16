.class public Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public attributes:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;",
            ">;"
        }
    .end annotation
.end field

.field public isPostProcessing:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public refractionType:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public shadingModel:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/u;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/u;->LIT:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/u;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;->shadingModel:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/u;

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;->NONE:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;->refractionType:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;->attributes:Ljava/util/List;

    return-void
.end method
