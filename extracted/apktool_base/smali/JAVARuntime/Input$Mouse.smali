.class public LJAVARuntime/Input$Mouse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/Input;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mouse"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSlideX()F
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the horizontal slide of the mouse."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o deslocamento horizontal do mouse."
    .end annotation

    sget-object v0, Lrc/a;->u:Lrc/a$g;

    invoke-virtual {v0}, Lrc/a$g;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lrc/a$g;->f()F

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Mouse is not being captured, please call Input.mouse.requestCapture(this); before using slide!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSlideY()F
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the vertical slide of the mouse."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o deslocamento vertical do mouse."
    .end annotation

    sget-object v0, Lrc/a;->u:Lrc/a$g;

    invoke-virtual {v0}, Lrc/a$g;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lrc/a$g;->g()F

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Mouse is not being captured, please call Input.mouse.requestCapture(this); before using slide!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVerticalScroll()F
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the vertical scroll of the mouse."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a rolagem vertical do mouse."
    .end annotation

    sget-object v0, Lrc/a;->u:Lrc/a$g;

    invoke-virtual {v0}, Lrc/a$g;->h()F

    move-result v0

    return v0
.end method

.method public getX()I
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the X position of the mouse."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a posi\u00e7\u00e3o X do mouse."
    .end annotation

    sget-object v0, Lrc/a;->u:Lrc/a$g;

    invoke-virtual {v0}, Lrc/a$g;->i()I

    move-result v0

    return v0
.end method

.method public getY()I
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the Y position of the mouse."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a posi\u00e7\u00e3o Y do mouse."
    .end annotation

    sget-object v0, Lrc/a;->u:Lrc/a$g;

    invoke-virtual {v0}, Lrc/a$g;->j()I

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if the mouse is connected."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se o mouse est\u00e1 conectado."
    .end annotation

    sget-object v0, Lrc/a;->u:Lrc/a$g;

    invoke-virtual {v0}, Lrc/a$g;->q()Z

    move-result v0

    return v0
.end method

.method public isLeftClickDown()Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks whether the left button was just pressed. This returns true only on the first frame it was pressed."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se o bot\u00e3o esquerdo acabou de ser pressionado. Retorna verdadeiro apenas no primeiro quadro em que ele foi pressionado."
    .end annotation

    sget-object v0, Lrc/a;->u:Lrc/a$g;

    invoke-virtual {v0}, Lrc/a$g;->x()Z

    move-result v0

    return v0
.end method

.method public isLeftClickLongDown()Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks whether the left button was just long-pressed. This returns true only on the first frame it was long-pressed."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se o bot\u00e3o esquerdo acabou de ser pressionado por muito tempo. Retorna verdadeiro apenas no primeiro quadro em que ele foi pressionado por muito tempo."
    .end annotation

    sget-object v0, Lrc/a;->u:Lrc/a$g;

    invoke-virtual {v0}, Lrc/a$g;->y()Z

    move-result v0

    return v0
.end method

.method public isLeftClickLongPressed()Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks whether the left button is being long-pressed. This returns true on every frame while it remains pressed for a long duration."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se o bot\u00e3o esquerdo est\u00e1 sendo mantido pressionado por um longo per\u00edodo. Retorna verdadeiro em todos os quadros enquanto ele permanecer pressionado por muito tempo."
    .end annotation

    sget-object v0, Lrc/a;->u:Lrc/a$g;

    invoke-virtual {v0}, Lrc/a$g;->z()Z

    move-result v0

    return v0
.end method

.method public isLeftClickPressed()Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks whether the left button is currently being held down. This returns true on every frame while it remains pressed."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se o bot\u00e3o esquerdo est\u00e1 sendo mantido pressionado. Retorna verdadeiro em todos os quadros enquanto ele permanecer pressionado."
    .end annotation

    sget-object v0, Lrc/a;->u:Lrc/a$g;

    invoke-virtual {v0}, Lrc/a$g;->A()Z

    move-result v0

    return v0
.end method

.method public isLeftClickUp()Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks whether the left button was just released. This returns true only on the first frame after it was released."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se o bot\u00e3o esquerdo acabou de ser liberado. Retorna verdadeiro apenas no primeiro quadro ap\u00f3s ele ser liberado."
    .end annotation

    sget-object v0, Lrc/a;->u:Lrc/a$g;

    invoke-virtual {v0}, Lrc/a$g;->B()Z

    move-result v0

    return v0
.end method

.method public isRightClickDown()Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks whether the right button was just pressed. This returns true only on the first frame it was pressed."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se o bot\u00e3o direito acabou de ser pressionado. Retorna verdadeiro apenas no primeiro quadro em que ele foi pressionado."
    .end annotation

    sget-object v0, Lrc/a;->u:Lrc/a$g;

    invoke-virtual {v0}, Lrc/a$g;->H()Z

    move-result v0

    return v0
.end method

.method public isRightClickLongDown()Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks whether the right button was just long-pressed. This returns true only on the first frame it was long-pressed."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se o bot\u00e3o direito acabou de ser pressionado por muito tempo. Retorna verdadeiro apenas no primeiro quadro em que ele foi pressionado por muito tempo."
    .end annotation

    sget-object v0, Lrc/a;->u:Lrc/a$g;

    invoke-virtual {v0}, Lrc/a$g;->I()Z

    move-result v0

    return v0
.end method

.method public isRightClickLongPressed()Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks whether the right button is being long-pressed. This returns true on every frame while it remains pressed for a long duration."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se o bot\u00e3o direito est\u00e1 sendo mantido pressionado por um longo per\u00edodo. Retorna verdadeiro em todos os quadros enquanto ele permanecer pressionado por muito tempo."
    .end annotation

    sget-object v0, Lrc/a;->u:Lrc/a$g;

    invoke-virtual {v0}, Lrc/a$g;->J()Z

    move-result v0

    return v0
.end method

.method public isRightClickPressed()Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks whether the right button is currently being held down. This returns true on every frame while it remains pressed."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se o bot\u00e3o direito est\u00e1 sendo mantido pressionado. Retorna verdadeiro em todos os quadros enquanto ele permanecer pressionado."
    .end annotation

    sget-object v0, Lrc/a;->u:Lrc/a$g;

    invoke-virtual {v0}, Lrc/a$g;->K()Z

    move-result v0

    return v0
.end method

.method public isRightClickUp()Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks whether the right button was just released. This returns true only on the first frame after it was released."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se o bot\u00e3o direito acabou de ser liberado. Retorna verdadeiro apenas no primeiro quadro ap\u00f3s ele ser liberado."
    .end annotation

    sget-object v0, Lrc/a;->u:Lrc/a$g;

    invoke-virtual {v0}, Lrc/a$g;->L()Z

    move-result v0

    return v0
.end method

.method public releaseCapture(LJAVARuntime/Component;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Releases mouse capture for the specified component."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Libera a captura do mouse para o componente especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "component"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    iget-object v0, p1, LJAVARuntime/Component;->component:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    if-eqz v0, :cond_0

    sget-object p1, Lrc/a;->u:Lrc/a$g;

    invoke-virtual {p1, v0}, Lrc/a$g;->O(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, LJAVARuntime/Component;->javaComponent:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent;

    if-eqz p1, :cond_1

    sget-object v0, Lrc/a;->u:Lrc/a$g;

    invoke-virtual {v0, p1}, Lrc/a$g;->O(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public requestCapture(LJAVARuntime/Component;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Requests mouse capture for the specified component."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Solicita a captura do mouse para o componente especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "component"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    iget-object v0, p1, LJAVARuntime/Component;->component:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    if-eqz v0, :cond_0

    sget-object p1, Lrc/a;->u:Lrc/a$g;

    invoke-virtual {p1, v0}, Lrc/a$g;->P(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, LJAVARuntime/Component;->javaComponent:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent;

    if-eqz p1, :cond_1

    sget-object v0, Lrc/a;->u:Lrc/a$g;

    invoke-virtual {v0, p1}, Lrc/a$g;->P(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    :cond_1
    :goto_0
    return-void
.end method
