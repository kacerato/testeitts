.class public LJAVARuntime/Input$Keyboard;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/Input;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Keyboard"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvailableKeys()[Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the available buttons on the keyboard."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna os bot\u00f5es dispon\u00edveis no teclado."
    .end annotation

    sget-object v0, Lrc/a;->t:Lrc/a$f;

    invoke-virtual {v0}, Lrc/a$f;->e()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownButtons()Ljava/util/List;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a list of buttons that were just pressed. This includes all buttons pressed in the current frame."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna uma lista de bot\u00f5es que acabaram de ser pressionados. Inclui todos os bot\u00f5es pressionados no quadro atual."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LJAVARuntime/KeyboardButton;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lrc/a;->t:Lrc/a$f;

    invoke-virtual {v1}, Lrc/a$f;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltc/e;

    invoke-virtual {v2}, Ltc/e;->f()LJAVARuntime/KeyboardButton;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getKey(Ljava/lang/String;)LJAVARuntime/KeyboardButton;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the keyboard button associated with the specified name."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o bot\u00e3o do teclado associado ao nome especificado."
    .end annotation

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

    sget-object v0, Lrc/a;->t:Lrc/a$f;

    invoke-virtual {v0, p1}, Lrc/a$f;->f(Ljava/lang/String;)Ltc/e;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ltc/e;->f()LJAVARuntime/KeyboardButton;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPressedButtons()Ljava/util/List;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a list of buttons that are currently being held down. This includes all buttons pressed across frames."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna uma lista de bot\u00f5es que est\u00e3o sendo mantidos pressionados. Inclui todos os bot\u00f5es pressionados ao longo dos quadros."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LJAVARuntime/KeyboardButton;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lrc/a;->t:Lrc/a$f;

    invoke-virtual {v1}, Lrc/a$f;->h()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltc/e;

    invoke-virtual {v2}, Ltc/e;->f()LJAVARuntime/KeyboardButton;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getUpButtons()Ljava/util/List;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a list of buttons that were just released. This includes all buttons released in the current frame."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna uma lista de bot\u00f5es que acabaram de ser liberados. Inclui todos os bot\u00f5es liberados no quadro atual."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LJAVARuntime/KeyboardButton;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lrc/a;->t:Lrc/a$f;

    invoke-virtual {v1}, Lrc/a$f;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltc/e;

    invoke-virtual {v2}, Ltc/e;->f()LJAVARuntime/KeyboardButton;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public isCapslockOn()Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if Caps Lock is on."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se o Caps Lock est\u00e1 ativado."
    .end annotation

    sget-object v0, Lrc/a;->t:Lrc/a$f;

    invoke-virtual {v0}, Lrc/a$f;->m()Z

    move-result v0

    return v0
.end method

.method public isKeyDown(Ljava/lang/String;)Z
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks whether the specified key was just pressed. This returns true only on the first frame it was pressed."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se a tecla especificada acabou de ser pressionada. Retorna verdadeiro apenas no primeiro quadro em que ela foi pressionada."
    .end annotation

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

    invoke-virtual {p0, p1}, LJAVARuntime/Input$Keyboard;->getKey(Ljava/lang/String;)LJAVARuntime/KeyboardButton;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, LJAVARuntime/KeyboardButton;->isDown()Z

    move-result p1

    return p1
.end method

.method public isKeyPressed(Ljava/lang/String;)Z
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks whether the specified key is currently being held down. This returns true on every frame while it remains pressed."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se a tecla especificada est\u00e1 sendo mantida pressionada. Retorna verdadeiro em todos os quadros enquanto ela permanecer pressionada."
    .end annotation

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

    invoke-virtual {p0, p1}, LJAVARuntime/Input$Keyboard;->getKey(Ljava/lang/String;)LJAVARuntime/KeyboardButton;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, LJAVARuntime/KeyboardButton;->isPressed()Z

    move-result p1

    return p1
.end method

.method public isKeyUp(Ljava/lang/String;)Z
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks whether the specified key was just released. This returns true only on the first frame after it was released."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se a tecla especificada acabou de ser liberada. Retorna verdadeiro apenas no primeiro quadro ap\u00f3s ela ser liberada."
    .end annotation

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

    invoke-virtual {p0, p1}, LJAVARuntime/Input$Keyboard;->getKey(Ljava/lang/String;)LJAVARuntime/KeyboardButton;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, LJAVARuntime/KeyboardButton;->isUp()Z

    move-result p1

    return p1
.end method
