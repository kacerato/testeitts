.class public final LJAVARuntime/VoxelHand;
.super LJAVARuntime/Component;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Voxels",
        "Components"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJAVARuntime/VoxelHand$Listener;
    }
.end annotation


# instance fields
.field public transient component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/VoxelHand;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;)V

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

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, LJAVARuntime/Component;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    .line 2
    iput-object p1, p0, LJAVARuntime/VoxelHand;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;

    .line 3
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->setRuntime(LJAVARuntime/Component;)V

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

    const-class v0, LJAVARuntime/VoxelHand;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public getCrossHairColor()LJAVARuntime/Color;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VoxelHand;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->getCrossHairColor()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object v0

    return-object v0
.end method

.method public getCrossHairSize()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VoxelHand;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->getCrossHairSize()I

    move-result v0

    return v0
.end method

.method public getCrossHairTexture()LJAVARuntime/Texture;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VoxelHand;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->getCrossHair()Lub/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDistance()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VoxelHand;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->getDistance()F

    move-result v0

    return v0
.end method

.method public getLastHitBlockID()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VoxelHand;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->getLastHitBlockID()I

    move-result v0

    return v0
.end method

.method public getSelectedBlockID()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VoxelHand;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->getSelectedBlockID()I

    move-result v0

    return v0
.end method

.method public isBlockBroken()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VoxelHand;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->isBlockBroken()Z

    move-result v0

    return v0
.end method

.method public isBlockPlaced()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VoxelHand;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->isBlockPlaced()Z

    move-result v0

    return v0
.end method

.method public isShowCrosshair()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VoxelHand;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->isShowCrosshair()Z

    move-result v0

    return v0
.end method

.method public requestBreak()V
    .locals 1

    iget-object v0, p0, LJAVARuntime/VoxelHand;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->requestBreak()V

    return-void
.end method

.method public requestPut()V
    .locals 1

    iget-object v0, p0, LJAVARuntime/VoxelHand;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->requestPut()V

    return-void
.end method

.method public setCrossHairSize(I)V
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

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    iget-object v0, p0, LJAVARuntime/VoxelHand;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->setCrossHairSize(I)V

    return-void
.end method

.method public setCrossHairSize(LJAVARuntime/Color;)V
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

    .line 3
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, LJAVARuntime/VoxelHand;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;

    iget-object p1, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->setCrossHairColor(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Color can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCrossHairTexture(LJAVARuntime/Texture;)V
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

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/VoxelHand;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;

    iget-object p1, p1, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->setCrossHairTexture(Lub/p;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/VoxelHand;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->setCrossHairTexture(Lub/p;)V

    :goto_0
    return-void
.end method

.method public setDistance(F)V
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

    iget-object v0, p0, LJAVARuntime/VoxelHand;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->setDistance(F)V

    return-void
.end method

.method public setListener(LJAVARuntime/VoxelHand$Listener;)V
    .locals 2
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

    if-nez p1, :cond_0

    iget-object p1, p0, LJAVARuntime/VoxelHand;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->setListener(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$o;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LJAVARuntime/VoxelHand;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;

    new-instance v1, LJAVARuntime/VoxelHand$1;

    invoke-direct {v1, p0, p1}, LJAVARuntime/VoxelHand$1;-><init>(LJAVARuntime/VoxelHand;LJAVARuntime/VoxelHand$Listener;)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->setListener(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$o;)V

    :goto_0
    return-void
.end method

.method public setSelectedBlockID(I)V
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

    iget-object v0, p0, LJAVARuntime/VoxelHand;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->setSelectedBlockID(I)V

    return-void
.end method

.method public setShowCrosshair(Z)V
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

    iget-object v0, p0, LJAVARuntime/VoxelHand;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->setShowCrosshair(Z)V

    return-void
.end method
