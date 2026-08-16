.class public LJAVARuntime/UIRadioButton;
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
.field public instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRadioButton;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRadioButton;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRadioButton;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/UIRadioButton;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRadioButton;)V

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

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRadioButton;)V
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
    iput-object p1, p0, LJAVARuntime/UIRadioButton;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRadioButton;

    .line 3
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRadioButton;->setRuntime(LJAVARuntime/Component;)V

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

    const-class v0, LJAVARuntime/UIRadioButton;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public getCheckedSpriteIndex()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRadioButton;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRadioButton;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRadioButton;->getCheckedSpriteIndex()I

    move-result v0

    return v0
.end method

.method public getCheckedTexture()LJAVARuntime/Texture;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRadioButton;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRadioButton;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRadioButton;->getCheckedTexture()Lub/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getColor()LJAVARuntime/Color;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRadioButton;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRadioButton;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRadioButton;->getColor()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUncheckedSpriteIndex()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRadioButton;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRadioButton;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRadioButton;->getUncheckedSpriteIndex()I

    move-result v0

    return v0
.end method

.method public getUncheckedTexture()LJAVARuntime/Texture;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRadioButton;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRadioButton;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRadioButton;->getUncheckedTexture()Lub/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isChecked()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRadioButton;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRadioButton;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRadioButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isDown()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRadioButton;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRadioButton;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRadioButton;->isDown()Z

    move-result v0

    return v0
.end method

.method public isPressed()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRadioButton;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRadioButton;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRadioButton;->isPressed()Z

    move-result v0

    return v0
.end method

.method public isUp()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRadioButton;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRadioButton;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRadioButton;->isUp()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "checked"
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

    iget-object v0, p0, LJAVARuntime/UIRadioButton;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRadioButton;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRadioButton;->setChecked(Z)V

    return-void
.end method

.method public setCheckedSpriteIndex(I)V
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

    iget-object v0, p0, LJAVARuntime/UIRadioButton;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRadioButton;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRadioButton;->setCheckedSpriteIndex(I)V

    return-void
.end method

.method public setCheckedTexture(LJAVARuntime/Texture;)V
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

    iget-object v0, p0, LJAVARuntime/UIRadioButton;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRadioButton;

    iget-object p1, p1, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRadioButton;->setCheckedTexture(Lub/p;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setColor(LJAVARuntime/Color;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "color"
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

    iget-object v0, p0, LJAVARuntime/UIRadioButton;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRadioButton;

    iget-object p1, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRadioButton;->setColor(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUncheckedSpriteIndex(I)V
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

    iget-object v0, p0, LJAVARuntime/UIRadioButton;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRadioButton;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRadioButton;->setUncheckedSpriteIndex(I)V

    return-void
.end method

.method public setUncheckedTexture(LJAVARuntime/Texture;)V
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

    iget-object v0, p0, LJAVARuntime/UIRadioButton;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRadioButton;

    iget-object p1, p1, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRadioButton;->setUncheckedTexture(Lub/p;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
