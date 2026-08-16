.class public LJAVARuntime/UIGridLayout;
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
.field public instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/UIGridLayout;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;)V

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

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;)V
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
    iput-object p1, p0, LJAVARuntime/UIGridLayout;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;

    .line 3
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->setRuntime(LJAVARuntime/Component;)V

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

    const-class v0, LJAVARuntime/UIGridLayout;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public getColumns()I
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIGridLayout;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->getColumns()I

    move-result v0

    return v0
.end method

.method public getSpacing()I
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIGridLayout;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->getSpacing()I

    move-result v0

    return v0
.end method

.method public isAutoColumns()Z
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIGridLayout;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->isAutoColumns()Z

    move-result v0

    return v0
.end method

.method public setAutoColumns(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "autoColumns"
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

    iget-object v0, p0, LJAVARuntime/UIGridLayout;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->setAutoColumns(Z)V

    return-void
.end method

.method public setColumns(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "columns"
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

    iget-object v0, p0, LJAVARuntime/UIGridLayout;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->setColumns(I)V

    return-void
.end method

.method public setSpacing(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "spacing"
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

    iget-object v0, p0, LJAVARuntime/UIGridLayout;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->setSpacing(I)V

    return-void
.end method
