.class public Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public blendingMode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public defaults:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public doubleSided:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public max_simultaneous_emitters:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public params:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public precision:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public refraction:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public shadingModel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;->name:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;->doubleSided:Z

    const-string v0, "opaque"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;->blendingMode:Ljava/lang/String;

    const-string v0, "lit"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;->shadingModel:Ljava/lang/String;

    const-string v0, "false"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;->refraction:Ljava/lang/String;

    const/4 v0, 0x6

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;->max_simultaneous_emitters:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;->params:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;->defaults:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;->precision:Ljava/util/Map;

    return-void
.end method
