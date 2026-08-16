.class public LJAVARuntime/UISlideBar;
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
        LJAVARuntime/UISlideBar$Orientation;
    }
.end annotation


# instance fields
.field public instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/UISlideBar;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;)V

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

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;)V
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
    iput-object p1, p0, LJAVARuntime/UISlideBar;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;

    .line 3
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->setRuntime(LJAVARuntime/Component;)V

    return-void
.end method

.method private static ENUMCONVERT(LR9/a;)LJAVARuntime/UISlideBar$Orientation;
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

    invoke-static {p0}, LJAVARuntime/UISlideBar$Orientation;->valueOf(Ljava/lang/String;)LJAVARuntime/UISlideBar$Orientation;

    move-result-object p0

    return-object p0
.end method

.method private static ENUMCONVERT(LJAVARuntime/UISlideBar$Orientation;)LR9/a;
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

    invoke-static {p0}, LR9/a;->valueOf(Ljava/lang/String;)LR9/a;

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

    const-class v0, LJAVARuntime/UISlideBar;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public getBackgroundColor()LJAVARuntime/Color;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UISlideBar;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->getBackgroundColor()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBackgroundSpriteIndex()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UISlideBar;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->getBackgroundSpriteIndex()I

    move-result v0

    return v0
.end method

.method public getBackgroundTexture()LJAVARuntime/Texture;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UISlideBar;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->getBackgroundTexture()Lub/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBorder()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UISlideBar;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->getBorder()F

    move-result v0

    return v0
.end method

.method public getHandlerColor()LJAVARuntime/Color;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UISlideBar;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->getHandlerColor()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHandlerSpriteIndex()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UISlideBar;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->getHandlerSpriteIndex()I

    move-result v0

    return v0
.end method

.method public getHandlerTexture()LJAVARuntime/Texture;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UISlideBar;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->getHandlerTexture()Lub/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getJRPaddingBottom()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UISlideBar;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->getJRPaddingBottom()I

    move-result v0

    return v0
.end method

.method public getJRPaddingLeft()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UISlideBar;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->getJRPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getJRPaddingRight()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UISlideBar;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->getJRPaddingRight()I

    move-result v0

    return v0
.end method

.method public getJRPaddingTop()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UISlideBar;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->getJRPaddingTop()I

    move-result v0

    return v0
.end method

.method public getOrientation()LJAVARuntime/UISlideBar$Orientation;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UISlideBar;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->getOrientation()LR9/a;

    move-result-object v0

    invoke-static {v0}, LJAVARuntime/UISlideBar;->ENUMCONVERT(LR9/a;)LJAVARuntime/UISlideBar$Orientation;

    move-result-object v0

    return-object v0
.end method

.method public getValue()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UISlideBar;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->getValue()F

    move-result v0

    return v0
.end method

.method public setBackgroundColor(LJAVARuntime/Color;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "backgroundColor"
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

    iget-object v0, p0, LJAVARuntime/UISlideBar;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;

    iget-object p1, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->setBackgroundColor(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBackgroundSpriteIndex(I)V
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

    iget-object v0, p0, LJAVARuntime/UISlideBar;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->setBackgroundSpriteIndex(I)V

    return-void
.end method

.method public setBackgroundTexture(LJAVARuntime/Texture;)V
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

    iget-object v0, p0, LJAVARuntime/UISlideBar;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;

    iget-object p1, p1, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->setBackgroundTexture(Lub/p;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBorder(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "border"
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

    iget-object v0, p0, LJAVARuntime/UISlideBar;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->setBorder(F)V

    return-void
.end method

.method public setHandlerColor(LJAVARuntime/Color;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "handlerColor"
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

    iget-object v0, p0, LJAVARuntime/UISlideBar;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;

    iget-object p1, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->setHandlerColor(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHandlerSpriteIndex(I)V
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

    iget-object v0, p0, LJAVARuntime/UISlideBar;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->setHandlerSpriteIndex(I)V

    return-void
.end method

.method public setHandlerTexture(LJAVARuntime/Texture;)V
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

    iget-object v0, p0, LJAVARuntime/UISlideBar;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;

    iget-object p1, p1, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->setHandlerTexture(Lub/p;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setJRPaddingBottom(I)V
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

    iget-object v0, p0, LJAVARuntime/UISlideBar;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->setJRPaddingBottom(I)V

    return-void
.end method

.method public setJRPaddingLeft(I)V
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

    iget-object v0, p0, LJAVARuntime/UISlideBar;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->setJRPaddingLeft(I)V

    return-void
.end method

.method public setJRPaddingRight(I)V
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

    iget-object v0, p0, LJAVARuntime/UISlideBar;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->setJRPaddingRight(I)V

    return-void
.end method

.method public setJRPaddingTop(I)V
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

    iget-object v0, p0, LJAVARuntime/UISlideBar;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->setJRPaddingTop(I)V

    return-void
.end method

.method public setOrientation(LJAVARuntime/UISlideBar$Orientation;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "orientation"
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

    iget-object v0, p0, LJAVARuntime/UISlideBar;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;

    invoke-static {p1}, LJAVARuntime/UISlideBar;->ENUMCONVERT(LJAVARuntime/UISlideBar$Orientation;)LR9/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->setOrientation(LR9/a;)V

    return-void
.end method

.method public setValue(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
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

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UISlideBar;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->setValue(F)V

    return-void
.end method
