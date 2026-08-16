.class public LJAVARuntime/UIPostTransform;
.super LJAVARuntime/Component;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Post processing"
    }
.end annotation


# instance fields
.field public instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIPostTransform;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIPostTransform;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIPostTransform;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/UIPostTransform;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIPostTransform;)V

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

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIPostTransform;)V
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
    iput-object p1, p0, LJAVARuntime/UIPostTransform;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIPostTransform;

    .line 3
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIPostTransform;->setRuntime(LJAVARuntime/Component;)V

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

    const-class v0, LJAVARuntime/UIPostTransform;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public getFOV()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIPostTransform;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIPostTransform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIPostTransform;->getFOV()F

    move-result v0

    return v0
.end method

.method public getPivot()LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIPostTransform;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIPostTransform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIPostTransform;->getPivot()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPosition()LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIPostTransform;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIPostTransform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIPostTransform;->getPosition()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRotation()LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIPostTransform;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIPostTransform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIPostTransform;->getRotation()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScale()LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIPostTransform;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIPostTransform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIPostTransform;->getScale()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setFOV(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "FOV"
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

    iget-object v0, p0, LJAVARuntime/UIPostTransform;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIPostTransform;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIPostTransform;->setFOV(F)V

    return-void
.end method

.method public setPivot(LJAVARuntime/Vector2;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "pivot"
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

    iget-object v0, p0, LJAVARuntime/UIPostTransform;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIPostTransform;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIPostTransform;->setPivot(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPosition(LJAVARuntime/Vector2;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position"
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

    iget-object v0, p0, LJAVARuntime/UIPostTransform;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIPostTransform;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIPostTransform;->setPosition(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRotation(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "rotation"
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

    iget-object v0, p0, LJAVARuntime/UIPostTransform;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIPostTransform;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIPostTransform;->setRotation(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setScale(LJAVARuntime/Vector2;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "scale"
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

    iget-object v0, p0, LJAVARuntime/UIPostTransform;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIPostTransform;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIPostTransform;->setScale(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
