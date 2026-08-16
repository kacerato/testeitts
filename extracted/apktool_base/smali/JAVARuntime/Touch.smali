.class public final LJAVARuntime/Touch;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Input"
    }
.end annotation


# instance fields
.field public transient touch:Ltc/h;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 6
    new-instance v0, Ltc/h;

    invoke-direct {v0}, Ltc/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Touch;->touch:Ltc/h;

    return-void
.end method

.method public constructor <init>(Ltc/h;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touch"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/Touch;->touch:Ltc/h;

    return-void
.end method


# virtual methods
.method public getPosition()LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the position of the touch."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a posi\u00e7\u00e3o do toque."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Touch;->touch:Ltc/h;

    invoke-virtual {v0}, Ltc/h;->b()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public getSlide()LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the slide vector of the touch."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o vetor de deslize do toque."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Touch;->touch:Ltc/h;

    invoke-virtual {v0}, Ltc/h;->i()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public isDown()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks whether the touch was just pressed. This returns true only on the first frame it was pressed."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se o toque acabou de ser pressionado. Retorna verdadeiro apenas no primeiro quadro em que ele foi pressionado."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Touch;->touch:Ltc/h;

    invoke-virtual {v0}, Ltc/h;->k()Z

    move-result v0

    return v0
.end method

.method public isFromMouse()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns whether this touch came from a mouse click."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna se o toque veio de um clique de um mouse."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Touch;->touch:Ltc/h;

    invoke-virtual {v0}, Ltc/h;->p()Z

    move-result v0

    return v0
.end method

.method public isLongDown()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks whether the touch was just long-pressed. This returns true only on the first frame it was long-pressed."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se o toque acabou de ser pressionado por muito tempo. Retorna verdadeiro apenas no primeiro quadro em que ele foi pressionado por muito tempo."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Touch;->touch:Ltc/h;

    invoke-virtual {v0}, Ltc/h;->m()Z

    move-result v0

    return v0
.end method

.method public isLongPressed()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks whether the touch is being long-pressed. This returns true on every frame while it remains pressed for a long duration."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se o toque est\u00e1 sendo mantido pressionado por um longo per\u00edodo. Retorna verdadeiro em todos os quadros enquanto ele permanecer pressionado por muito tempo."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Touch;->touch:Ltc/h;

    invoke-virtual {v0}, Ltc/h;->n()Z

    move-result v0

    return v0
.end method

.method public isPerformClick()Z
    .locals 2

    iget-object v0, p0, LJAVARuntime/Touch;->touch:Ltc/h;

    instance-of v1, v0, LV9/r;

    if-eqz v1, :cond_0

    check-cast v0, LV9/r;

    invoke-virtual {v0}, LV9/r;->M()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Touch is not a virtual touch!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isPressed()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks whether the touch is currently being held down. This returns true on every frame while it remains pressed."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se o toque est\u00e1 sendo mantido pressionado. Retorna verdadeiro em todos os quadros enquanto ele permanecer pressionado."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Touch;->touch:Ltc/h;

    invoke-virtual {v0}, Ltc/h;->q()Z

    move-result v0

    return v0
.end method

.method public isSlided()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if the touch is slided."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se o toque deslizou."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Touch;->touch:Ltc/h;

    iget-boolean v0, v0, Ltc/h;->e:Z

    return v0
.end method

.method public isUp()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks whether the touch was just released. This returns true only on the first frame after it was released."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se o toque acabou de ser liberado. Retorna verdadeiro apenas no primeiro quadro ap\u00f3s ele ser liberado."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Touch;->touch:Ltc/h;

    invoke-virtual {v0}, Ltc/h;->t()Z

    move-result v0

    return v0
.end method

.method public setDown(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets whether the touch was just pressed."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define se o toque acabou de ser pressionado."
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

    iget-object v0, p0, LJAVARuntime/Touch;->touch:Ltc/h;

    invoke-virtual {v0, p1}, Ltc/h;->F(Z)V

    return-void
.end method

.method public setIsFromMouse(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets whether this touch came from a mouse click."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define se esse toque veio de um mouse."
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

    iget-object v0, p0, LJAVARuntime/Touch;->touch:Ltc/h;

    invoke-virtual {v0, p1}, Ltc/h;->y(Z)V

    return-void
.end method

.method public setLongDown(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets whether the touch was just long-pressed."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define se o toque acabou de ser pressionado por muito tempo."
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

    iget-object v0, p0, LJAVARuntime/Touch;->touch:Ltc/h;

    invoke-virtual {v0, p1}, Ltc/h;->z(Z)V

    return-void
.end method

.method public setLongPressed(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets whether the touch is being long-pressed."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define se o toque est\u00e1 sendo mantido pressionado por um longo per\u00edodo."
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

    iget-object v0, p0, LJAVARuntime/Touch;->touch:Ltc/h;

    invoke-virtual {v0, p1}, Ltc/h;->A(Z)V

    return-void
.end method

.method public setPerformClick()V
    .locals 2

    iget-object v0, p0, LJAVARuntime/Touch;->touch:Ltc/h;

    instance-of v1, v0, LV9/r;

    if-eqz v1, :cond_0

    check-cast v0, LV9/r;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LV9/r;->N(Z)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Touch is not a virtual touch!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPosition(LJAVARuntime/Vector2;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the position of the touch."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a posi\u00e7\u00e3o do toque."
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

    iget-object v0, p0, LJAVARuntime/Touch;->touch:Ltc/h;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Ltc/h;->E(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets whether the touch is currently being held down."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define se o toque est\u00e1 sendo mantido pressionado."
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

    iget-object v0, p0, LJAVARuntime/Touch;->touch:Ltc/h;

    invoke-virtual {v0, p1}, Ltc/h;->F(Z)V

    return-void
.end method

.method public setSlide(LJAVARuntime/Vector2;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the slide vector of the touch."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o vetor de deslize do toque."
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

    iget-object v0, p0, LJAVARuntime/Touch;->touch:Ltc/h;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Ltc/h;->H(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    return-void
.end method

.method public setSlided(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets if the touch is slided."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define se o toque deslizou."
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

    iget-object v0, p0, LJAVARuntime/Touch;->touch:Ltc/h;

    iput-boolean p1, v0, Ltc/h;->e:Z

    return-void
.end method

.method public setUp(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets whether the touch was just released."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define se o toque acabou de ser liberado."
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

    iget-object v0, p0, LJAVARuntime/Touch;->touch:Ltc/h;

    invoke-virtual {v0, p1}, Ltc/h;->J(Z)V

    return-void
.end method
