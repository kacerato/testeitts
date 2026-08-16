.class public LJAVARuntime/Input$GamePad;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/Input;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GamePad"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvailableAxis()[Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the available axis on the gamepad."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna os axis dispon\u00edveis no gamepad."
    .end annotation

    sget-object v0, Lrc/a;->s:Lrc/a$e;

    invoke-virtual {v0}, Lrc/a$e;->a()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableButtons()[Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the available buttons on the gamepad."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna os bot\u00f5es dispon\u00edveis no gamepad."
    .end annotation

    sget-object v0, Lrc/a;->s:Lrc/a$e;

    invoke-virtual {v0}, Lrc/a$e;->b()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAxis(Ljava/lang/String;)F
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the value of the gamepad axis associated with the specified name."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o valor do axis do gamepad associado ao nome especificado."
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

    sget-object v0, Lrc/a;->s:Lrc/a$e;

    invoke-virtual {v0, p1}, Lrc/a$e;->c(Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method public getButton(Ljava/lang/String;)LJAVARuntime/GamePadButton;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the gamepad button associated with the specified name."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o bot\u00e3o do gamepad associado ao nome especificado."
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

    sget-object v0, Lrc/a;->s:Lrc/a$e;

    invoke-virtual {v0, p1}, Lrc/a$e;->d(Ljava/lang/String;)Ltc/c;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ltc/c;->k()LJAVARuntime/GamePadButton;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLeftJoystick()LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the position of the left joystick."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a posi\u00e7\u00e3o do joystick esquerdo."
    .end annotation

    sget-object v0, Lrc/a;->s:Lrc/a$e;

    invoke-virtual {v0}, Lrc/a$e;->e()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRightJoystick()LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the position of the right joystick."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a posi\u00e7\u00e3o do joystick direito."
    .end annotation

    sget-object v0, Lrc/a;->s:Lrc/a$e;

    invoke-virtual {v0}, Lrc/a$e;->f()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    sget-object v0, Lrc/a;->s:Lrc/a$e;

    invoke-virtual {v0}, Lrc/a$e;->i()Z

    move-result v0

    return v0
.end method
