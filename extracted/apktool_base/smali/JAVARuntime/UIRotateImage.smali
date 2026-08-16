.class public LJAVARuntime/UIRotateImage;
.super LJAVARuntime/Component;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "UI",
        "Components"
    }
.end annotation


# instance fields
.field public instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/UIRotateImage;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;)V

    return-void
.end method

.method public constructor <init>(LK8/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .annotation runtime Lo8/c;
    .end annotation

    .line 4
    invoke-direct {p0}, LJAVARuntime/Component;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, LJAVARuntime/Component;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    .line 2
    iput-object p1, p0, LJAVARuntime/UIRotateImage;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;

    .line 3
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->setRuntime(LJAVARuntime/Component;)V

    return-void
.end method


# virtual methods
.method public componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;)Z
    .locals 1
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    const-class v0, LJAVARuntime/UIRotateImage;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public getAngle()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRotateImage;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->getAngle()F

    move-result v0

    return v0
.end method

.method public getOffset()LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the current offset."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o offset atual."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRotateImage;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->getOffset()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpriteIndex()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRotateImage;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->getSpriteIndex()I

    move-result v0

    return v0
.end method

.method public getTexture()LJAVARuntime/Texture;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRotateImage;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->getTexture()Lub/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTilling()LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the current tilling."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o tilling atual."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRotateImage;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->getTilling()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isFlipX()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns whether flip x is true."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna se flip x \u00e9 verdadeiro."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRotateImage;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->isFlipX()Z

    move-result v0

    return v0
.end method

.method public isFlipY()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns whether flip y is true."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna se flip y \u00e9 verdadeiro."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRotateImage;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->isFlipY()Z

    move-result v0

    return v0
.end method

.method public setAngle(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "angle"
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

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRotateImage;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->setAngle(F)V

    return-void
.end method

.method public setFlipX(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets or updates the flip x."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define ou atualiza o flip x."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "flipX"
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

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRotateImage;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->setFlipX(Z)V

    return-void
.end method

.method public setFlipY(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets or updates the flip y."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define ou atualiza o flip y."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "flipY"
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

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRotateImage;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->setFlipY(Z)V

    return-void
.end method

.method public setOffset(LJAVARuntime/Vector2;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets or updates the offset."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define ou atualiza o offset."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "offset"
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

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/UIRotateImage;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->setOffset(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSpriteIndex(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "spriteIndex"
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

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRotateImage;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->setSpriteIndex(I)V

    return-void
.end method

.method public setTexture(LJAVARuntime/Texture;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "texture"
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

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/UIRotateImage;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;

    iget-object p1, p1, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->setTexture(Lub/p;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTilling(LJAVARuntime/Vector2;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets or updates the tilling."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define ou atualiza o tilling."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "tilling"
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

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/UIRotateImage;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->setTilling(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
