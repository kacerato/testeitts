.class public LJAVARuntime/UIRect;
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
.field public instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/UIRect;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)V

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

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)V
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
    iput-object p1, p0, LJAVARuntime/UIRect;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    .line 3
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setRuntime(LJAVARuntime/Component;)V

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

    const-class v0, LJAVARuntime/UIRect;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public getMarginBottom()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRect;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getJRMarginBottom()I

    move-result v0

    return v0
.end method

.method public getMarginLeft()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRect;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getJRMarginLeft()I

    move-result v0

    return v0
.end method

.method public getMarginRight()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRect;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getJRMarginRight()I

    move-result v0

    return v0
.end method

.method public getMarginTop()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRect;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getJRMarginTop()I

    move-result v0

    return v0
.end method

.method public getPaddingBottom()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRect;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getJRPaddingBottom()I

    move-result v0

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRect;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getJRPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getPaddingRight()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRect;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getJRPaddingRight()I

    move-result v0

    return v0
.end method

.method public getPaddingTop()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRect;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getJRPaddingTop()I

    move-result v0

    return v0
.end method

.method public getPosition()LJAVARuntime/Point2;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRect;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getJRPosition()LJAVARuntime/Point2;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPositionX()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRect;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getJRPositionX()I

    move-result v0

    return v0
.end method

.method public getPositionY()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRect;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getJRPositionY()I

    move-result v0

    return v0
.end method

.method public getScreenHeight()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRect;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRectDP()LW9/a;

    move-result-object v0

    invoke-virtual {v0}, LW9/a;->b()F

    move-result v0

    invoke-static {v0}, LNc/b;->j1(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getScreenHeightPixels()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRect;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v0

    invoke-virtual {v0}, LW9/c;->b()I

    move-result v0

    return v0
.end method

.method public getScreenPositionX()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRect;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRectDP()LW9/a;

    move-result-object v0

    invoke-virtual {v0}, LW9/a;->d()F

    move-result v0

    invoke-static {v0}, LNc/b;->j1(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getScreenPositionXPixels()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRect;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v0

    invoke-virtual {v0}, LW9/c;->d()I

    move-result v0

    return v0
.end method

.method public getScreenPositionY()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRect;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRectDP()LW9/a;

    move-result-object v0

    invoke-virtual {v0}, LW9/a;->e()F

    move-result v0

    invoke-static {v0}, LNc/b;->j1(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getScreenPositionYPixels()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRect;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v0

    invoke-virtual {v0}, LW9/c;->e()I

    move-result v0

    return v0
.end method

.method public getScreenWidth()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRect;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRectDP()LW9/a;

    move-result-object v0

    invoke-virtual {v0}, LW9/a;->c()F

    move-result v0

    invoke-static {v0}, LNc/b;->j1(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getScreenWidthPixels()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRect;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v0

    invoke-virtual {v0}, LW9/c;->c()I

    move-result v0

    return v0
.end method

.method public getSize()LJAVARuntime/Point2;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRect;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getJRSize()LJAVARuntime/Point2;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSizeX()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRect;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getJRSizeX()I

    move-result v0

    return v0
.end method

.method public getSizeY()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRect;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getJRSizeY()I

    move-result v0

    return v0
.end method

.method public isAutoSH()Z
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRect;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->isAutoSH()Z

    move-result v0

    return v0
.end method

.method public isAutoSW()Z
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRect;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->isAutoSW()Z

    move-result v0

    return v0
.end method

.method public setAutoSH(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "autoSH"
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

    iget-object v0, p0, LJAVARuntime/UIRect;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setAutoSH(Z)V

    return-void
.end method

.method public setAutoSW(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "autoSW"
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

    iget-object v0, p0, LJAVARuntime/UIRect;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setAutoSW(Z)V

    return-void
.end method

.method public setMarginBottom(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "v"
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

    iget-object v0, p0, LJAVARuntime/UIRect;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setJRMarginBottom(I)V

    return-void
.end method

.method public setMarginLeft(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "v"
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

    iget-object v0, p0, LJAVARuntime/UIRect;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setJRMarginLeft(I)V

    return-void
.end method

.method public setMarginRight(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "v"
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

    iget-object v0, p0, LJAVARuntime/UIRect;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setJRMarginRight(I)V

    return-void
.end method

.method public setMarginTop(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "v"
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

    iget-object v0, p0, LJAVARuntime/UIRect;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setJRMarginTop(I)V

    return-void
.end method

.method public setPaddingBottom(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "v"
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

    iget-object v0, p0, LJAVARuntime/UIRect;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setJRPaddingBottom(I)V

    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "v"
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

    iget-object v0, p0, LJAVARuntime/UIRect;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setJRPaddingLeft(I)V

    return-void
.end method

.method public setPaddingRight(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "v"
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

    iget-object v0, p0, LJAVARuntime/UIRect;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setJRPaddingRight(I)V

    return-void
.end method

.method public setPaddingTop(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "v"
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

    iget-object v0, p0, LJAVARuntime/UIRect;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setJRPaddingTop(I)V

    return-void
.end method

.method public setPosition(II)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "arg0",
            "arg1"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRect;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setJRPosition(II)V

    return-void
.end method

.method public setPositionX(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "v"
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

    iget-object v0, p0, LJAVARuntime/UIRect;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setJRPositionX(I)V

    return-void
.end method

.method public setPositionY(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "v"
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

    iget-object v0, p0, LJAVARuntime/UIRect;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setJRPositionY(I)V

    return-void
.end method

.method public setSize(II)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "arg0",
            "arg1"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIRect;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setJRSize(II)V

    return-void
.end method

.method public setSizeX(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "v"
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

    iget-object v0, p0, LJAVARuntime/UIRect;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setJRSizeX(I)V

    return-void
.end method

.method public setSizeY(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "v"
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

    iget-object v0, p0, LJAVARuntime/UIRect;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setJRSizeY(I)V

    return-void
.end method
