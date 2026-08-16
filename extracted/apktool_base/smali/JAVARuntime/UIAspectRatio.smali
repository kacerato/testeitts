.class public LJAVARuntime/UIAspectRatio;
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
        LJAVARuntime/UIAspectRatio$Mode;
    }
.end annotation


# instance fields
.field public instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAspectRatio;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAspectRatio;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAspectRatio;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/UIAspectRatio;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAspectRatio;)V

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

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAspectRatio;)V
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
    iput-object p1, p0, LJAVARuntime/UIAspectRatio;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAspectRatio;

    .line 3
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAspectRatio;->setRuntime(LJAVARuntime/Component;)V

    return-void
.end method

.method private static ENUMCONVERT(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAspectRatio$d;)LJAVARuntime/UIAspectRatio$Mode;
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

    invoke-static {p0}, LJAVARuntime/UIAspectRatio$Mode;->valueOf(Ljava/lang/String;)LJAVARuntime/UIAspectRatio$Mode;

    move-result-object p0

    return-object p0
.end method

.method private static ENUMCONVERT(LJAVARuntime/UIAspectRatio$Mode;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAspectRatio$d;
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

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAspectRatio$d;->valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAspectRatio$d;

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

    const-class v0, LJAVARuntime/UIAspectRatio;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public getMode()LJAVARuntime/UIAspectRatio$Mode;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIAspectRatio;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAspectRatio;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAspectRatio;->getMode()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAspectRatio$d;

    move-result-object v0

    invoke-static {v0}, LJAVARuntime/UIAspectRatio;->ENUMCONVERT(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAspectRatio$d;)LJAVARuntime/UIAspectRatio$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getProportion()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIAspectRatio;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAspectRatio;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAspectRatio;->getProportion()F

    move-result v0

    return v0
.end method

.method public setMode(LJAVARuntime/UIAspectRatio$Mode;)V
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

    iget-object v0, p0, LJAVARuntime/UIAspectRatio;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAspectRatio;

    invoke-static {p1}, LJAVARuntime/UIAspectRatio;->ENUMCONVERT(LJAVARuntime/UIAspectRatio$Mode;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAspectRatio$d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAspectRatio;->setMode(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAspectRatio$d;)V

    return-void
.end method

.method public setProportion(F)V
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

    iget-object v0, p0, LJAVARuntime/UIAspectRatio;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAspectRatio;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAspectRatio;->setProportion(F)V

    return-void
.end method
