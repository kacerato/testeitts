.class public final LJAVARuntime/Key;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Input"
    }
.end annotation


# instance fields
.field public transient key:Lcom/itsmagic/engine/Engines/Input/Key;
    .annotation runtime LH6/g;
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Input/Key;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/Key;->key:Lcom/itsmagic/engine/Engines/Input/Key;

    .line 4
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Input/Key;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LJAVARuntime/Key;->name:Ljava/lang/String;

    .line 5
    iget-object p1, p0, LJAVARuntime/Key;->key:Lcom/itsmagic/engine/Engines/Input/Key;

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Input/Key;->l(LJAVARuntime/Key;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
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

    if-eqz p1, :cond_0

    .line 8
    iput-object p1, p0, LJAVARuntime/Key;->name:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lrc/a;->G(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Input/Key;

    move-result-object p1

    iput-object p1, p0, LJAVARuntime/Key;->key:Lcom/itsmagic/engine/Engines/Input/Key;

    .line 10
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Input/Key;->l(LJAVARuntime/Key;)V

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key name can\'t be empty or null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private syncKey()Lcom/itsmagic/engine/Engines/Input/Key;
    .locals 1

    iget-object v0, p0, LJAVARuntime/Key;->name:Ljava/lang/String;

    invoke-static {v0}, Lrc/a;->G(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Input/Key;

    move-result-object v0

    iput-object v0, p0, LJAVARuntime/Key;->key:Lcom/itsmagic/engine/Engines/Input/Key;

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Input/Key;->l(LJAVARuntime/Key;)V

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the name of the Key."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o nome da Key."
    .end annotation

    invoke-direct {p0}, LJAVARuntime/Key;->syncKey()Lcom/itsmagic/engine/Engines/Input/Key;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Input/Key;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDown()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks whether the Key was just pressed. This returns true only on the first frame it was pressed."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se a Key acabou de ser pressionada. Retorna verdadeiro apenas no primeiro quadro em que ela foi pressionada."
    .end annotation

    invoke-direct {p0}, LJAVARuntime/Key;->syncKey()Lcom/itsmagic/engine/Engines/Input/Key;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Input/Key;->f()Z

    move-result v0

    return v0
.end method

.method public isPressed()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks whether the Key is currently being held down. This returns true on every frame while it remains pressed."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se a Key est\u00e1 sendo mantida pressionada. Retorna verdadeiro em todos os quadros enquanto ela permanecer pressionada."
    .end annotation

    invoke-direct {p0}, LJAVARuntime/Key;->syncKey()Lcom/itsmagic/engine/Engines/Input/Key;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Input/Key;->g()Z

    move-result v0

    return v0
.end method

.method public isUp()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks whether the Key was just released. This returns true only on the first frame after it was released."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se a Key acabou de ser liberada. Retorna verdadeiro apenas no primeiro quadro ap\u00f3s ela ser liberada."
    .end annotation

    invoke-direct {p0}, LJAVARuntime/Key;->syncKey()Lcom/itsmagic/engine/Engines/Input/Key;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Input/Key;->h()Z

    move-result v0

    return v0
.end method

.method public releasePress(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Unregisters the key press held by the specified reference."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Cancela o registro da tecla pressionada pela refer\u00eancia especificada."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "solidReference"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "solidReference"
        }
    .end annotation

    invoke-direct {p0}, LJAVARuntime/Key;->syncKey()Lcom/itsmagic/engine/Engines/Input/Key;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Input/Key;->i(Ljava/lang/Object;)V

    return-void
.end method

.method public requestPress(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Registers that the key is being held down by the specified reference."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Registra que a tecla est\u00e1 sendo mantida pressionada pela refer\u00eancia especificada."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "solidReference"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "solidReference"
        }
    .end annotation

    invoke-direct {p0}, LJAVARuntime/Key;->syncKey()Lcom/itsmagic/engine/Engines/Input/Key;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Input/Key;->a(Ljava/lang/Object;)V

    return-void
.end method
