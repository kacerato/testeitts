.class public final LJAVARuntime/GamePadButton;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Input"
    }
.end annotation


# instance fields
.field public transient gamePadButton:Ltc/c;
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
    new-instance v0, Ltc/c;

    invoke-direct {v0}, Ltc/c;-><init>()V

    iput-object v0, p0, LJAVARuntime/GamePadButton;->gamePadButton:Ltc/c;

    return-void
.end method

.method public constructor <init>(Ltc/c;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gamePadButton"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/GamePadButton;->gamePadButton:Ltc/c;

    return-void
.end method


# virtual methods
.method public isDown()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks whether the button was just pressed. This returns true only on the first frame it was pressed."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se o bot\u00e3o acabou de ser pressionado. Retorna verdadeiro apenas no primeiro quadro em que ele foi pressionado."
    .end annotation

    iget-object v0, p0, LJAVARuntime/GamePadButton;->gamePadButton:Ltc/c;

    iget-boolean v0, v0, Ltc/c;->b:Z

    return v0
.end method

.method public isLongDown()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks whether the button was just long-pressed. This returns true only on the first frame it was long-pressed."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se o bot\u00e3o acabou de ser pressionado por muito tempo. Retorna verdadeiro apenas no primeiro quadro em que ele foi pressionado por muito tempo."
    .end annotation

    iget-object v0, p0, LJAVARuntime/GamePadButton;->gamePadButton:Ltc/c;

    iget-boolean v0, v0, Ltc/c;->d:Z

    return v0
.end method

.method public isLongPressed()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks whether the button is being long-pressed. This returns true on every frame while it remains pressed for a long duration."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se o bot\u00e3o est\u00e1 sendo mantido pressionado por um longo per\u00edodo. Retorna verdadeiro em todos os quadros enquanto ele permanecer pressionado por muito tempo."
    .end annotation

    iget-object v0, p0, LJAVARuntime/GamePadButton;->gamePadButton:Ltc/c;

    iget-boolean v0, v0, Ltc/c;->e:Z

    return v0
.end method

.method public isPressed()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks whether the button is currently being held down. This returns true on every frame while it remains pressed."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se o bot\u00e3o est\u00e1 sendo mantido pressionado. Retorna verdadeiro em todos os quadros enquanto ele permanecer pressionado."
    .end annotation

    iget-object v0, p0, LJAVARuntime/GamePadButton;->gamePadButton:Ltc/c;

    iget-boolean v0, v0, Ltc/c;->c:Z

    return v0
.end method

.method public setDown(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets whether the button was just pressed."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define se o bot\u00e3o acabou de ser pressionado."
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

    iget-object v0, p0, LJAVARuntime/GamePadButton;->gamePadButton:Ltc/c;

    iput-boolean p1, v0, Ltc/c;->c:Z

    return-void
.end method

.method public setLongDown(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets whether the button was just long-pressed."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define se o bot\u00e3o acabou de ser pressionado por muito tempo."
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

    iget-object v0, p0, LJAVARuntime/GamePadButton;->gamePadButton:Ltc/c;

    iput-boolean p1, v0, Ltc/c;->d:Z

    return-void
.end method

.method public setLongPressed(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets whether the button is being long-pressed."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define se o bot\u00e3o est\u00e1 sendo mantido pressionado por um longo per\u00edodo."
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

    iget-object v0, p0, LJAVARuntime/GamePadButton;->gamePadButton:Ltc/c;

    iput-boolean p1, v0, Ltc/c;->e:Z

    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets whether the button is currently being held down."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define se o bot\u00e3o est\u00e1 sendo mantido pressionado."
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

    iget-object v0, p0, LJAVARuntime/GamePadButton;->gamePadButton:Ltc/c;

    iput-boolean p1, v0, Ltc/c;->c:Z

    return-void
.end method
