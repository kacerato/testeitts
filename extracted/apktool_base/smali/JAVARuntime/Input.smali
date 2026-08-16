.class public final LJAVARuntime/Input;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Input"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJAVARuntime/Input$GamePad;,
        LJAVARuntime/Input$Keyboard;,
        LJAVARuntime/Input$Mouse;
    }
.end annotation


# static fields
.field public static final gamePad:LJAVARuntime/Input$GamePad;

.field public static final keyboard:LJAVARuntime/Input$Keyboard;

.field public static final mouse:LJAVARuntime/Input$Mouse;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LJAVARuntime/Input$GamePad;

    invoke-direct {v0}, LJAVARuntime/Input$GamePad;-><init>()V

    sput-object v0, LJAVARuntime/Input;->gamePad:LJAVARuntime/Input$GamePad;

    new-instance v0, LJAVARuntime/Input$Keyboard;

    invoke-direct {v0}, LJAVARuntime/Input$Keyboard;-><init>()V

    sput-object v0, LJAVARuntime/Input;->keyboard:LJAVARuntime/Input$Keyboard;

    new-instance v0, LJAVARuntime/Input$Mouse;

    invoke-direct {v0}, LJAVARuntime/Input$Mouse;-><init>()V

    sput-object v0, LJAVARuntime/Input;->mouse:LJAVARuntime/Input$Mouse;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public static addKeyboardRequest(LJAVARuntime/Component;)V
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Requests the opening of the virtual keyboard for the specified component."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Solicita a abertura do teclado virtual para o componente especificado."
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
            "component"
        }
    .end annotation

    if-eqz p0, :cond_1

    iget-object v0, p0, LJAVARuntime/Component;->type:LJAVARuntime/Component$Type;

    sget-object v1, LJAVARuntime/Component$Type;->JavaComponent:LJAVARuntime/Component$Type;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, LJAVARuntime/Component;->javaComponent:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent;

    invoke-static {p0}, Lrc/a;->e(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, LJAVARuntime/Component;->component:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-static {p0}, Lrc/a;->e(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Component can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getAxis(Ljava/lang/String;)LJAVARuntime/Axis;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the Axis associated with the specified name."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o Axis associado ao nome especificado."
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

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, LJAVARuntime/Input;->registerAxis(Ljava/lang/String;)LJAVARuntime/Axis;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAxisValue(Ljava/lang/String;)LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the value of the specified Axis."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o valor do Axis especificado."
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

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lrc/a;->D(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Input/Axis;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Input/Axis;->i()LJAVARuntime/Axis;

    move-result-object p0

    invoke-virtual {p0}, LJAVARuntime/Axis;->getValue()LJAVARuntime/Vector2;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getKey(Ljava/lang/String;)LJAVARuntime/Key;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the specified key."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a key especificada."
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

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, LJAVARuntime/Input;->registerKey(Ljava/lang/String;)LJAVARuntime/Key;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMaxSlide()LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the slide vector of the touch that moved the farthest."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o vetor de deslize do toque que mais se deslocou."
    .end annotation

    invoke-static {}, Lrc/a;->l()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public static getTouch(I)LJAVARuntime/Touch;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the touch of the specified ID."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o toque do ID especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    invoke-static {p0}, Lrc/a;->n(I)Ltc/h;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ltc/h;->L()LJAVARuntime/Touch;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTouchPosition(I)LJAVARuntime/Vector2;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the position of the touch of the specified ID."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a posi\u00e7\u00e3o do toque do ID especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lrc/a;->n(I)Ltc/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ltc/h;->b()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The touch ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") cannot be found"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getTouchPosition(ILJAVARuntime/Vector2;)LJAVARuntime/Vector2;
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the position of the touch of the specified ID and stores it in the provided Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a posi\u00e7\u00e3o do toque do ID especificado e a armazena no Vector2 fornecido."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "id",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "out"
        }
    .end annotation

    .line 4
    invoke-static {p0}, Lrc/a;->n(I)Ltc/h;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 5
    iget-object p0, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p0}, Ltc/h;->c(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "out vector2 can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The touch ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") cannot be found"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static haveKey(Ljava/lang/String;)Z
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if the specified key exists."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se a key especificada existe."
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

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lrc/a;->j(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Input/Key;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isKeyDown(Ljava/lang/String;)Z
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks whether the specified Key was just pressed. This returns true only on the first frame it was pressed."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se a Key especificada acabou de ser pressionada. Retorna verdadeiro apenas no primeiro quadro em que ela foi pressionada."
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

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lrc/a;->j(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Input/Key;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Input/Key;->f()Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static isKeyPressed(Ljava/lang/String;)Z
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks whether the specified Key is currently being held down. This returns true on every frame while it remains pressed."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se a Key especificada est\u00e1 sendo mantida pressionada. Retorna verdadeiro em todos os quadros enquanto ela permanecer pressionada."
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

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lrc/a;->j(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Input/Key;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Input/Key;->g()Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static isKeyUp(Ljava/lang/String;)Z
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks whether the specified Key was just released. This returns true only on the first frame after it was released."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se a Key especificada acabou de ser liberada. Retorna verdadeiro apenas no primeiro quadro ap\u00f3s ela ser liberada."
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

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lrc/a;->j(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Input/Key;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Input/Key;->h()Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static isKeyboardOpen()Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if the virtual keyboard is currently open."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se o teclado virtual est\u00e1 atualmente aberto."
    .end annotation

    invoke-static {}, Lrc/a;->p()Z

    move-result v0

    return v0
.end method

.method public static isTouchDown(I)Z
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks whether the touch of the specified ID was just pressed. This returns true only on the first frame it was pressed."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se o toque do ID especificado acabou de ser pressionado. Retorna verdadeiro apenas no primeiro quadro em que ele foi pressionado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    invoke-static {p0}, Lrc/a;->n(I)Ltc/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ltc/h;->k()Z

    move-result p0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The touch ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") cannot be found"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isTouchPressed(I)Z
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks whether the touch of the specified ID is currently being held down. This returns true on every frame while it remains pressed."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se o toque do ID especificado est\u00e1 sendo mantido pressionado. Retorna verdadeiro em todos os quadros enquanto ele permanecer pressionado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    invoke-static {p0}, Lrc/a;->n(I)Ltc/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ltc/h;->q()Z

    move-result p0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The touch ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") cannot be found"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isTouchUp(I)Z
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks whether the touch of the specified ID was just released. This returns true only on the first frame after it was released."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se o toque do ID especificado acabou de ser liberado. Retorna verdadeiro apenas no primeiro quadro ap\u00f3s ele ser liberado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    invoke-static {p0}, Lrc/a;->n(I)Ltc/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ltc/h;->t()Z

    move-result p0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The touch ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") cannot be found"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static registerAxis(Ljava/lang/String;)LJAVARuntime/Axis;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Registers and returns the Axis associated with the specified name. If the Axis does not exist, it will be created."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Registra e retorna o Axis associado ao nome especificado. Se o Axis n\u00e3o existir, ele ser\u00e1 criado."
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

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lrc/a;->D(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Input/Axis;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Input/Axis;->i()LJAVARuntime/Axis;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "axis name can\'t be empty or null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static registerKey(Ljava/lang/String;)LJAVARuntime/Key;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Registers and returns the specified key."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Registra e retorna a key especificada."
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

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {p0}, Lrc/a;->G(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Input/Key;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Input/Key;->m()LJAVARuntime/Key;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "key name can\'t be empty or null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static registerKey(LJAVARuntime/Key;)V
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Registers the specified key."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Registra a key especificada."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 5
    iget-object p0, p0, LJAVARuntime/Key;->key:Lcom/itsmagic/engine/Engines/Input/Key;

    invoke-static {p0}, Lrc/a;->F(Lcom/itsmagic/engine/Engines/Input/Key;)Lcom/itsmagic/engine/Engines/Input/Key;

    return-void
.end method

.method public static removeKeyboardRequest(LJAVARuntime/Component;)V
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Removes the keyboard request from the specified component."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Remove a solicita\u00e7\u00e3o de teclado do componente especificado."
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
            "component"
        }
    .end annotation

    if-eqz p0, :cond_1

    iget-object v0, p0, LJAVARuntime/Component;->type:LJAVARuntime/Component$Type;

    sget-object v1, LJAVARuntime/Component$Type;->JavaComponent:LJAVARuntime/Component$Type;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, LJAVARuntime/Component;->javaComponent:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent;

    invoke-static {p0}, Lrc/a;->H(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, LJAVARuntime/Component;->component:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-static {p0}, Lrc/a;->H(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Component can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
