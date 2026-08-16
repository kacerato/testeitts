.class public LJAVARuntime/UIController;
.super LJAVARuntime/Component;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "UI",
        "Components"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJAVARuntime/UIController$ResolutionMode;
    }
.end annotation


# instance fields
.field public instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/UIController;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V

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

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
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
    iput-object p1, p0, LJAVARuntime/UIController;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    .line 3
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->setRuntime(LJAVARuntime/Component;)V

    return-void
.end method

.method private static ENUMCONVERT(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$s;)LJAVARuntime/UIController$ResolutionMode;
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "un"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LJAVARuntime/UIController$ResolutionMode;->valueOf(Ljava/lang/String;)LJAVARuntime/UIController$ResolutionMode;

    move-result-object p0

    return-object p0
.end method

.method private static ENUMCONVERT(LJAVARuntime/UIController$ResolutionMode;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$s;
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "un"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$s;->valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$s;

    move-result-object p0

    return-object p0
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

    const-class v0, LJAVARuntime/UIController;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public emitVirtualTouch()LJAVARuntime/Touch;
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIController;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->emitTouch()LV9/r;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ltc/h;->L()LJAVARuntime/Touch;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFixedResolutionPixelsHeight()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIController;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFixedResolutionPixelsHeight()I

    move-result v0

    return v0
.end method

.method public getFixedResolutionPixelsWidth()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIController;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFixedResolutionPixelsWidth()I

    move-result v0

    return v0
.end method

.method public getFrameBuffer()LJAVARuntime/FrameBuffer;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIController;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBuffer()LTb/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LTb/a;->y()LJAVARuntime/FrameBuffer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFrameBufferH()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIController;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferH()I

    move-result v0

    return v0
.end method

.method public getFrameBufferW()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIController;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferW()I

    move-result v0

    return v0
.end method

.method public getFreeResolutionPixels()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIController;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFreeResolutionPixels()I

    move-result v0

    return v0
.end method

.method public getImageRatio()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIController;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getImageRatio()F

    move-result v0

    return v0
.end method

.method public getPxSize()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIController;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getPxSize()F

    move-result v0

    return v0
.end method

.method public getRenderTextureFile()Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIController;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getRenderTextureFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResolutionMode()LJAVARuntime/UIController$ResolutionMode;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIController;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getResolutionMode()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$s;

    move-result-object v0

    invoke-static {v0}, LJAVARuntime/UIController;->ENUMCONVERT(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$s;)LJAVARuntime/UIController$ResolutionMode;

    move-result-object v0

    return-object v0
.end method

.method public getResolutionPercentage()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIController;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getResolutionPercentage()F

    move-result v0

    return v0
.end method

.method public getTouchPos(LJAVARuntime/Touch;)LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "touch"
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

    if-eqz p1, :cond_1

    iget-object v0, p0, LJAVARuntime/UIController;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    iget-object p1, p1, LJAVARuntime/Touch;->touch:Ltc/h;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getTouchPosInVec2(Ltc/h;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getVirtualToucheAt(I)LJAVARuntime/Touch;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "i"
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

    iget-object v0, p0, LJAVARuntime/UIController;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getVirtualToucheAt(I)Ltc/h;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ltc/h;->L()LJAVARuntime/Touch;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isAllowScreenTouch()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIController;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->isAllowScreenTouch()Z

    move-result v0

    return v0
.end method

.method public isDrawToScreen()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIController;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->isDrawToScreen()Z

    move-result v0

    return v0
.end method

.method public pxToDP(F)F
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "px"
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

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    iget-object v0, p0, LJAVARuntime/UIController;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->dpToPx(F)F

    move-result p1

    return p1
.end method

.method public pxToDP(I)I
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "px"
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

    .line 3
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 4
    iget-object v0, p0, LJAVARuntime/UIController;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->dpToPx(I)I

    move-result p1

    return p1
.end method

.method public releaseVirtualTouch(LJAVARuntime/Touch;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "touch"
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

    iget-object v0, p0, LJAVARuntime/UIController;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    iget-object p1, p1, LJAVARuntime/Touch;->touch:Ltc/h;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->releaseTouch(Ltc/h;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAllowScreenTouch(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "allowScreenTouch"
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

    iget-object v0, p0, LJAVARuntime/UIController;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->setAllowScreenTouch(Z)V

    return-void
.end method

.method public setDrawToScreen(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "drawToScreen"
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

    iget-object v0, p0, LJAVARuntime/UIController;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->setDrawToScreen(Z)V

    return-void
.end method

.method public setFixedResolutionPixelsHeight(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "fixedResolutionPixelsHeight"
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

    iget-object v0, p0, LJAVARuntime/UIController;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->setFixedResolutionPixelsHeight(I)V

    return-void
.end method

.method public setFixedResolutionPixelsWidth(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "fixedResolutionPixelsWidth"
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

    iget-object v0, p0, LJAVARuntime/UIController;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->setFixedResolutionPixelsWidth(I)V

    return-void
.end method

.method public setFreeResolutionPixels(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "freeResolutionPixels"
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

    iget-object v0, p0, LJAVARuntime/UIController;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->setFreeResolutionPixels(I)V

    return-void
.end method

.method public setPxSize(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "pxSize"
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

    iget-object v0, p0, LJAVARuntime/UIController;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->setPxSize(F)V

    return-void
.end method

.method public setRenderTextureFile(Ljava/lang/String;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "renderTextureFile"
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

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LJAVARuntime/UIController;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->setRenderTextureFile(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value can\'t be empty or null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setResolutionMode(LJAVARuntime/UIController$ResolutionMode;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "resolutionMode"
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

    iget-object v0, p0, LJAVARuntime/UIController;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-static {p1}, LJAVARuntime/UIController;->ENUMCONVERT(LJAVARuntime/UIController$ResolutionMode;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$s;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->setResolutionMode(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$s;)V

    return-void
.end method

.method public setResolutionPercentage(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "resoPercentage"
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

    iget-object v0, p0, LJAVARuntime/UIController;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->setResolutionPercentage(F)V

    return-void
.end method

.method public virtualTouchsCount()I
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIController;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->virtualTouchsCount()I

    move-result v0

    return v0
.end method
