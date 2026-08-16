.class public Lcom/jme3/app/BasicProfilerState;
.super Lcom/jme3/app/state/BaseAppState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/app/BasicProfilerState$ProfilerKeyListener;
    }
.end annotation


# static fields
.field public static final INPUT_MAPPING_PROFILER_TOGGLE:Ljava/lang/String; = "BasicProfilerState_Toggle"


# instance fields
.field private background:Lcom/jme3/scene/Geometry;

.field private graph:Lcom/jme3/scene/Geometry;

.field private final keyListener:Lcom/jme3/app/BasicProfilerState$ProfilerKeyListener;

.field private profiler:Lcom/jme3/app/BasicProfiler;

.field private scale:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/jme3/app/BasicProfilerState;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/jme3/app/state/BaseAppState;-><init>()V

    const/high16 v0, 0x40000000    # 2.0f

    .line 3
    iput v0, p0, Lcom/jme3/app/BasicProfilerState;->scale:F

    .line 4
    new-instance v0, Lcom/jme3/app/BasicProfilerState$ProfilerKeyListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jme3/app/BasicProfilerState$ProfilerKeyListener;-><init>(Lcom/jme3/app/BasicProfilerState;Lcom/jme3/app/BasicProfilerState$1;)V

    iput-object v0, p0, Lcom/jme3/app/BasicProfilerState;->keyListener:Lcom/jme3/app/BasicProfilerState$ProfilerKeyListener;

    .line 5
    invoke-virtual {p0, p1}, Lcom/jme3/app/state/BaseAppState;->setEnabled(Z)V

    .line 6
    new-instance p1, Lcom/jme3/app/BasicProfiler;

    invoke-direct {p1}, Lcom/jme3/app/BasicProfiler;-><init>()V

    iput-object p1, p0, Lcom/jme3/app/BasicProfilerState;->profiler:Lcom/jme3/app/BasicProfiler;

    return-void
.end method


# virtual methods
.method public cleanup(Lcom/jme3/app/Application;)V
    .locals 2

    invoke-interface {p1}, Lcom/jme3/app/Application;->getInputManager()Lcom/jme3/input/InputManager;

    move-result-object p1

    const-string v0, "BasicProfilerState_Toggle"

    invoke-virtual {p1, v0}, Lcom/jme3/input/InputManager;->hasMapping(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/jme3/input/InputManager;->deleteMapping(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/jme3/app/BasicProfilerState;->keyListener:Lcom/jme3/app/BasicProfilerState$ProfilerKeyListener;

    invoke-virtual {p1, v0}, Lcom/jme3/input/InputManager;->removeListener(Lcom/jme3/input/controls/InputListener;)V

    return-void
.end method

.method public getFrameCount()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/BasicProfilerState;->profiler:Lcom/jme3/app/BasicProfiler;

    invoke-virtual {v0}, Lcom/jme3/app/BasicProfiler;->getFrameCount()I

    move-result v0

    return v0
.end method

.method public getGraphScale()F
    .locals 1

    iget v0, p0, Lcom/jme3/app/BasicProfilerState;->scale:F

    return v0
.end method

.method public getProfiler()Lcom/jme3/app/BasicProfiler;
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/BasicProfilerState;->profiler:Lcom/jme3/app/BasicProfiler;

    return-object v0
.end method

.method public initialize(Lcom/jme3/app/Application;)V
    .locals 9

    new-instance v0, Lcom/jme3/scene/Geometry;

    iget-object v1, p0, Lcom/jme3/app/BasicProfilerState;->profiler:Lcom/jme3/app/BasicProfiler;

    invoke-virtual {v1}, Lcom/jme3/app/BasicProfiler;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    const-string v2, "profiler"

    invoke-direct {v0, v2, v1}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    iput-object v0, p0, Lcom/jme3/app/BasicProfilerState;->graph:Lcom/jme3/scene/Geometry;

    new-instance v0, Lcom/jme3/material/Material;

    invoke-interface {p1}, Lcom/jme3/app/Application;->getAssetManager()Lcom/jme3/asset/AssetManager;

    move-result-object v1

    const-string v2, "Common/MatDefs/Misc/Unshaded.j3md"

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    const-string v1, "VertexColor"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/jme3/material/Material;->setBoolean(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/jme3/app/BasicProfilerState;->graph:Lcom/jme3/scene/Geometry;

    invoke-virtual {v4, v0}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    iget-object v0, p0, Lcom/jme3/app/BasicProfilerState;->graph:Lcom/jme3/scene/Geometry;

    const/4 v4, 0x0

    const/high16 v5, 0x43960000    # 300.0f

    invoke-virtual {v0, v4, v5, v4}, Lcom/jme3/scene/Spatial;->setLocalTranslation(FFF)V

    iget-object v0, p0, Lcom/jme3/app/BasicProfilerState;->graph:Lcom/jme3/scene/Geometry;

    iget v6, p0, Lcom/jme3/app/BasicProfilerState;->scale:F

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v0, v7, v6, v7}, Lcom/jme3/scene/Spatial;->setLocalScale(FFF)V

    new-instance v0, Lcom/jme3/scene/Mesh;

    invoke-direct {v0}, Lcom/jme3/scene/Mesh;-><init>()V

    new-instance v6, Lcom/jme3/scene/Geometry;

    const-string v8, "profiler.background"

    invoke-direct {v6, v8, v0}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    iput-object v6, p0, Lcom/jme3/app/BasicProfilerState;->background:Lcom/jme3/scene/Geometry;

    new-instance v0, Lcom/jme3/material/Material;

    invoke-interface {p1}, Lcom/jme3/app/Application;->getAssetManager()Lcom/jme3/asset/AssetManager;

    move-result-object v6

    invoke-direct {v0, v6, v2}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Lcom/jme3/material/Material;->setBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v1

    sget-object v2, Lcom/jme3/material/RenderState$BlendMode;->Alpha:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v1, v2}, Lcom/jme3/material/RenderState;->setBlendMode(Lcom/jme3/material/RenderState$BlendMode;)V

    iget-object v1, p0, Lcom/jme3/app/BasicProfilerState;->background:Lcom/jme3/scene/Geometry;

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    iget-object v0, p0, Lcom/jme3/app/BasicProfilerState;->background:Lcom/jme3/scene/Geometry;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v4, v5, v1}, Lcom/jme3/scene/Spatial;->setLocalTranslation(FFF)V

    iget-object v0, p0, Lcom/jme3/app/BasicProfilerState;->background:Lcom/jme3/scene/Geometry;

    iget v1, p0, Lcom/jme3/app/BasicProfilerState;->scale:F

    invoke-virtual {v0, v7, v1, v7}, Lcom/jme3/scene/Spatial;->setLocalScale(FFF)V

    invoke-virtual {p0}, Lcom/jme3/app/BasicProfilerState;->refreshBackground()V

    invoke-interface {p1}, Lcom/jme3/app/Application;->getInputManager()Lcom/jme3/input/InputManager;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/jme3/input/controls/KeyTrigger;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/jme3/input/controls/KeyTrigger;-><init>(I)V

    new-array v1, v3, [Lcom/jme3/input/controls/Trigger;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "BasicProfilerState_Toggle"

    invoke-virtual {p1, v0, v1}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    iget-object v1, p0, Lcom/jme3/app/BasicProfilerState;->keyListener:Lcom/jme3/app/BasicProfilerState$ProfilerKeyListener;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/jme3/input/InputManager;->addListener(Lcom/jme3/input/controls/InputListener;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDisable()V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/app/state/BaseAppState;->getApplication()Lcom/jme3/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/jme3/app/Application;->setAppProfiler(Lcom/jme3/profile/AppProfiler;)V

    iget-object v0, p0, Lcom/jme3/app/BasicProfilerState;->graph:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->removeFromParent()Z

    iget-object v0, p0, Lcom/jme3/app/BasicProfilerState;->background:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->removeFromParent()Z

    return-void
.end method

.method public onEnable()V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/app/state/BaseAppState;->getApplication()Lcom/jme3/app/Application;

    move-result-object v0

    invoke-interface {v0}, Lcom/jme3/app/Application;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/renderer/Camera;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/app/BasicProfilerState;->setFrameCount(I)V

    invoke-virtual {p0}, Lcom/jme3/app/state/BaseAppState;->getApplication()Lcom/jme3/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/app/BasicProfilerState;->profiler:Lcom/jme3/app/BasicProfiler;

    invoke-interface {v0, v1}, Lcom/jme3/app/Application;->setAppProfiler(Lcom/jme3/profile/AppProfiler;)V

    invoke-virtual {p0}, Lcom/jme3/app/state/BaseAppState;->getApplication()Lcom/jme3/app/Application;

    move-result-object v0

    check-cast v0, Lcom/jme3/app/SimpleApplication;

    invoke-virtual {v0}, Lcom/jme3/app/SimpleApplication;->getGuiNode()Lcom/jme3/scene/Node;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/app/BasicProfilerState;->graph:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    iget-object v1, p0, Lcom/jme3/app/BasicProfilerState;->background:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    return-void
.end method

.method public refreshBackground()V
    .locals 10

    iget-object v0, p0, Lcom/jme3/app/BasicProfilerState;->background:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/app/BasicProfilerState;->profiler:Lcom/jme3/app/BasicProfiler;

    invoke-virtual {v1}, Lcom/jme3/app/BasicProfiler;->getFrameCount()I

    move-result v1

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    int-to-float v1, v1

    const/16 v3, 0x24

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v5, 0x1

    aput v4, v3, v5

    const/4 v5, 0x2

    aput v4, v3, v5

    const/4 v5, 0x3

    aput v1, v3, v5

    const/4 v6, 0x4

    aput v4, v3, v6

    const/4 v7, 0x5

    aput v4, v3, v7

    const/4 v7, 0x6

    aput v1, v3, v7

    const v7, 0x41855555

    const/4 v8, 0x7

    aput v7, v3, v8

    const/16 v8, 0x8

    aput v4, v3, v8

    const/16 v8, 0x9

    aput v4, v3, v8

    const/16 v8, 0xa

    aput v7, v3, v8

    const/16 v8, 0xb

    aput v4, v3, v8

    const/16 v8, 0xc

    aput v4, v3, v8

    const/16 v8, 0xd

    aput v7, v3, v8

    const/16 v8, 0xe

    aput v4, v3, v8

    const/16 v8, 0xf

    aput v1, v3, v8

    const/16 v8, 0x10

    aput v7, v3, v8

    const/16 v7, 0x11

    aput v4, v3, v7

    const/16 v7, 0x12

    aput v1, v3, v7

    const v8, 0x42055555

    const/16 v9, 0x13

    aput v8, v3, v9

    const/16 v9, 0x14

    aput v4, v3, v9

    const/16 v9, 0x15

    aput v4, v3, v9

    const/16 v9, 0x16

    aput v8, v3, v9

    const/16 v8, 0x17

    aput v4, v3, v8

    const/16 v8, 0x18

    aput v4, v3, v8

    const/high16 v8, -0x40000000    # -2.0f

    const/16 v9, 0x19

    aput v8, v3, v9

    const/16 v9, 0x1a

    aput v4, v3, v9

    const/16 v9, 0x1b

    aput v1, v3, v9

    const/16 v9, 0x1c

    aput v8, v3, v9

    const/16 v8, 0x1d

    aput v4, v3, v8

    const/16 v8, 0x1e

    aput v1, v3, v8

    const/16 v1, 0x1f

    aput v4, v3, v1

    const/16 v1, 0x20

    aput v4, v3, v1

    const/16 v1, 0x21

    aput v4, v3, v1

    const/16 v1, 0x22

    aput v4, v3, v1

    const/16 v1, 0x23

    aput v4, v3, v1

    invoke-virtual {v0, v2, v5, v3}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[F)V

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Color:Lcom/jme3/scene/VertexBuffer$Type;

    const/16 v2, 0x30

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v6, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[F)V

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    new-array v2, v7, [S

    fill-array-data v2, :array_1

    invoke-virtual {v0, v1, v5, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[S)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3e800000    # 0.25f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3e800000    # 0.25f
        0x0
        0x3e800000    # 0.25f
        0x0
        0x3e800000    # 0.25f
        0x0
        0x3e800000    # 0.25f
        0x0
        0x3e800000    # 0.25f
        0x3e800000    # 0.25f
        0x0
        0x0
        0x3e800000    # 0.25f
        0x3e800000    # 0.25f
        0x0
        0x0
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3e800000    # 0.25f
        0x0
        0x0
        0x0
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x0s
        0x2s
        0x3s
        0x4s
        0x5s
        0x6s
        0x4s
        0x6s
        0x7s
        0x8s
        0x9s
        0xas
        0x8s
        0xas
        0xbs
    .end array-data
.end method

.method public setFrameCount(I)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/BasicProfilerState;->profiler:Lcom/jme3/app/BasicProfiler;

    invoke-virtual {v0}, Lcom/jme3/app/BasicProfiler;->getFrameCount()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/jme3/app/BasicProfilerState;->profiler:Lcom/jme3/app/BasicProfiler;

    invoke-virtual {v0, p1}, Lcom/jme3/app/BasicProfiler;->setFrameCount(I)V

    invoke-virtual {p0}, Lcom/jme3/app/BasicProfilerState;->refreshBackground()V

    return-void
.end method

.method public setGraphScale(F)V
    .locals 2

    iget v0, p0, Lcom/jme3/app/BasicProfilerState;->scale:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/jme3/app/BasicProfilerState;->scale:F

    iget-object v0, p0, Lcom/jme3/app/BasicProfilerState;->graph:Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, p1, v1}, Lcom/jme3/scene/Spatial;->setLocalScale(FFF)V

    :cond_1
    return-void
.end method

.method public toggleProfiler()V
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/app/state/BaseAppState;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jme3/app/state/BaseAppState;->setEnabled(Z)V

    return-void
.end method
