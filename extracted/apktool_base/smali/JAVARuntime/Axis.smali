.class public final LJAVARuntime/Axis;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Input"
    }
.end annotation


# instance fields
.field public transient axis:Lcom/itsmagic/engine/Engines/Input/Axis;
    .annotation runtime LH6/g;
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Input/Axis;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "axis"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "axis"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/Axis;->axis:Lcom/itsmagic/engine/Engines/Input/Axis;

    .line 4
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Input/Axis;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LJAVARuntime/Axis;->name:Ljava/lang/String;

    .line 5
    iget-object p1, p0, LJAVARuntime/Axis;->axis:Lcom/itsmagic/engine/Engines/Input/Axis;

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Input/Axis;->f(LJAVARuntime/Axis;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 8
    iput-object p1, p0, LJAVARuntime/Axis;->name:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lrc/a;->D(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Input/Axis;

    move-result-object p1

    iput-object p1, p0, LJAVARuntime/Axis;->axis:Lcom/itsmagic/engine/Engines/Input/Axis;

    .line 10
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Input/Axis;->f(LJAVARuntime/Axis;)V

    return-void
.end method

.method private syncAxis()Lcom/itsmagic/engine/Engines/Input/Axis;
    .locals 1

    iget-object v0, p0, LJAVARuntime/Axis;->name:Ljava/lang/String;

    invoke-static {v0}, Lrc/a;->D(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Input/Axis;

    move-result-object v0

    iput-object v0, p0, LJAVARuntime/Axis;->axis:Lcom/itsmagic/engine/Engines/Input/Axis;

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Input/Axis;->f(LJAVARuntime/Axis;)V

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the name of the Axis."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o nome do Axis."
    .end annotation

    invoke-direct {p0}, LJAVARuntime/Axis;->syncAxis()Lcom/itsmagic/engine/Engines/Input/Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Input/Axis;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the value of the Axis."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o valor do Axis."
    .end annotation

    invoke-direct {p0}, LJAVARuntime/Axis;->syncAxis()Lcom/itsmagic/engine/Engines/Input/Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Input/Axis;->d()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public releaseValue()V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Releases the candidate value registered by this Axis instance."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Libera o valor candidato registrado por esta instancia de Axis."
    .end annotation

    invoke-direct {p0}, LJAVARuntime/Axis;->syncAxis()Lcom/itsmagic/engine/Engines/Input/Axis;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Input/Axis;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public setValue(LJAVARuntime/Vector2;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Registers a candidate value for this Axis."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Registra um valor candidato para este Axis."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-direct {p0}, LJAVARuntime/Axis;->syncAxis()Lcom/itsmagic/engine/Engines/Input/Axis;

    move-result-object v0

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p0, p1}, Lcom/itsmagic/engine/Engines/Input/Axis;->a(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
