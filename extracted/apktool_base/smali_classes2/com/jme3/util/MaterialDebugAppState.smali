.class public Lcom/jme3/util/MaterialDebugAppState;
.super Lcom/jme3/app/state/AbstractAppState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/util/MaterialDebugAppState$Binding;,
        Lcom/jme3/util/MaterialDebugAppState$GeometryBinding;,
        Lcom/jme3/util/MaterialDebugAppState$FilterBinding;,
        Lcom/jme3/util/MaterialDebugAppState$FileChangedTrigger;
    }
.end annotation


# instance fields
.field private assetManager:Lcom/jme3/asset/AssetManager;

.field private final bindings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/util/MaterialDebugAppState$Binding;",
            ">;"
        }
    .end annotation
.end field

.field private final fileTriggers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/jme3/input/controls/Trigger;",
            "Ljava/util/List<",
            "Lcom/jme3/util/MaterialDebugAppState$Binding;",
            ">;>;"
        }
    .end annotation
.end field

.field private inputManager:Lcom/jme3/input/InputManager;

.field private renderManager:Lcom/jme3/renderer/RenderManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jme3/app/state/AbstractAppState;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/MaterialDebugAppState;->bindings:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/MaterialDebugAppState;->fileTriggers:Ljava/util/Map;

    return-void
.end method

.method public static synthetic access$000(Lcom/jme3/util/MaterialDebugAppState;)Lcom/jme3/asset/AssetManager;
    .locals 0

    iget-object p0, p0, Lcom/jme3/util/MaterialDebugAppState;->assetManager:Lcom/jme3/asset/AssetManager;

    return-object p0
.end method

.method private bind(Lcom/jme3/util/MaterialDebugAppState$Binding;)V
    .locals 4

    invoke-interface {p1}, Lcom/jme3/util/MaterialDebugAppState$Binding;->getTrigger()Lcom/jme3/input/controls/Trigger;

    move-result-object v0

    instance-of v0, v0, Lcom/jme3/util/MaterialDebugAppState$FileChangedTrigger;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/jme3/util/MaterialDebugAppState$Binding;->getTrigger()Lcom/jme3/input/controls/Trigger;

    move-result-object v0

    check-cast v0, Lcom/jme3/util/MaterialDebugAppState$FileChangedTrigger;

    iget-object v1, p0, Lcom/jme3/util/MaterialDebugAppState;->fileTriggers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/jme3/util/MaterialDebugAppState$FileChangedTrigger;->init()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/jme3/util/MaterialDebugAppState;->fileTriggers:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/jme3/util/MaterialDebugAppState$Binding;->getActionName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/util/MaterialDebugAppState;->inputManager:Lcom/jme3/input/InputManager;

    new-instance v2, Lcom/jme3/util/MaterialDebugAppState$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/jme3/util/MaterialDebugAppState$1;-><init>(Lcom/jme3/util/MaterialDebugAppState;Ljava/lang/String;Lcom/jme3/util/MaterialDebugAppState$Binding;)V

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jme3/input/InputManager;->addListener(Lcom/jme3/input/controls/InputListener;[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jme3/util/MaterialDebugAppState;->inputManager:Lcom/jme3/input/InputManager;

    invoke-interface {p1}, Lcom/jme3/util/MaterialDebugAppState$Binding;->getTrigger()Lcom/jme3/input/controls/Trigger;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/jme3/input/controls/Trigger;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public initialize(Lcom/jme3/app/state/AppStateManager;Lcom/jme3/app/Application;)V
    .locals 2

    invoke-interface {p2}, Lcom/jme3/app/Application;->getRenderManager()Lcom/jme3/renderer/RenderManager;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/util/MaterialDebugAppState;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-interface {p2}, Lcom/jme3/app/Application;->getAssetManager()Lcom/jme3/asset/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/util/MaterialDebugAppState;->assetManager:Lcom/jme3/asset/AssetManager;

    invoke-interface {p2}, Lcom/jme3/app/Application;->getInputManager()Lcom/jme3/input/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/util/MaterialDebugAppState;->inputManager:Lcom/jme3/input/InputManager;

    iget-object v0, p0, Lcom/jme3/util/MaterialDebugAppState;->bindings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/util/MaterialDebugAppState$Binding;

    invoke-direct {p0, v1}, Lcom/jme3/util/MaterialDebugAppState;->bind(Lcom/jme3/util/MaterialDebugAppState$Binding;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/jme3/app/state/AbstractAppState;->initialize(Lcom/jme3/app/state/AppStateManager;Lcom/jme3/app/Application;)V

    return-void
.end method

.method public registerBinding(Lcom/jme3/input/controls/Trigger;Lcom/jme3/post/Filter;)V
    .locals 1

    .line 9
    new-instance v0, Lcom/jme3/util/MaterialDebugAppState$FilterBinding;

    invoke-direct {v0, p0, p1, p2}, Lcom/jme3/util/MaterialDebugAppState$FilterBinding;-><init>(Lcom/jme3/util/MaterialDebugAppState;Lcom/jme3/input/controls/Trigger;Lcom/jme3/post/Filter;)V

    .line 10
    iget-object p1, p0, Lcom/jme3/util/MaterialDebugAppState;->bindings:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {p0}, Lcom/jme3/app/state/AbstractAppState;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    invoke-direct {p0, v0}, Lcom/jme3/util/MaterialDebugAppState;->bind(Lcom/jme3/util/MaterialDebugAppState$Binding;)V

    :cond_0
    return-void
.end method

.method public registerBinding(Lcom/jme3/input/controls/Trigger;Lcom/jme3/scene/Spatial;)V
    .locals 1

    .line 1
    instance-of v0, p2, Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/jme3/util/MaterialDebugAppState$GeometryBinding;

    check-cast p2, Lcom/jme3/scene/Geometry;

    invoke-direct {v0, p0, p1, p2}, Lcom/jme3/util/MaterialDebugAppState$GeometryBinding;-><init>(Lcom/jme3/util/MaterialDebugAppState;Lcom/jme3/input/controls/Trigger;Lcom/jme3/scene/Geometry;)V

    .line 3
    iget-object p1, p0, Lcom/jme3/util/MaterialDebugAppState;->bindings:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lcom/jme3/app/state/AbstractAppState;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-direct {p0, v0}, Lcom/jme3/util/MaterialDebugAppState;->bind(Lcom/jme3/util/MaterialDebugAppState$Binding;)V

    goto :goto_1

    .line 6
    :cond_0
    instance-of v0, p2, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_1

    .line 7
    check-cast p2, Lcom/jme3/scene/Node;

    invoke-virtual {p2}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/jme3/util/MaterialDebugAppState;->registerBinding(Lcom/jme3/input/controls/Trigger;Lcom/jme3/scene/Spatial;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public registerBinding(Ljava/lang/String;Lcom/jme3/post/Filter;)V
    .locals 1

    .line 13
    new-instance v0, Lcom/jme3/util/MaterialDebugAppState$FileChangedTrigger;

    invoke-direct {v0, p0, p1}, Lcom/jme3/util/MaterialDebugAppState$FileChangedTrigger;-><init>(Lcom/jme3/util/MaterialDebugAppState;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/jme3/util/MaterialDebugAppState;->registerBinding(Lcom/jme3/input/controls/Trigger;Lcom/jme3/post/Filter;)V

    return-void
.end method

.method public registerBinding(Ljava/lang/String;Lcom/jme3/scene/Spatial;)V
    .locals 1

    .line 14
    new-instance v0, Lcom/jme3/util/MaterialDebugAppState$FileChangedTrigger;

    invoke-direct {v0, p0, p1}, Lcom/jme3/util/MaterialDebugAppState$FileChangedTrigger;-><init>(Lcom/jme3/util/MaterialDebugAppState;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/jme3/util/MaterialDebugAppState;->registerBinding(Lcom/jme3/input/controls/Trigger;Lcom/jme3/scene/Spatial;)V

    return-void
.end method

.method public reloadMaterial(Lcom/jme3/material/Material;)Lcom/jme3/material/Material;
    .locals 6

    const-class v0, Lcom/jme3/util/MaterialDebugAppState;

    iget-object v1, p0, Lcom/jme3/util/MaterialDebugAppState;->assetManager:Lcom/jme3/asset/AssetManager;

    invoke-interface {v1}, Lcom/jme3/asset/AssetManager;->clearCache()V

    new-instance v1, Lcom/jme3/material/Material;

    iget-object v2, p0, Lcom/jme3/util/MaterialDebugAppState;->assetManager:Lcom/jme3/asset/AssetManager;

    invoke-virtual {p1}, Lcom/jme3/material/Material;->getMaterialDef()Lcom/jme3/material/MaterialDef;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/material/MaterialDef;->getAssetName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/material/Material;->getParams()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/material/MatParam;

    invoke-virtual {v3}, Lcom/jme3/material/MatParam;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/jme3/material/MatParam;->getVarType()Lcom/jme3/shader/VarType;

    move-result-object v5

    invoke-virtual {v3}, Lcom/jme3/material/MatParam;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v5, v3}, Lcom/jme3/material/Material;->setParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v2

    invoke-virtual {p1}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/jme3/material/RenderState;->set(Lcom/jme3/material/RenderState;)V

    new-instance p1, Lcom/jme3/scene/Geometry;

    new-instance v2, Lcom/jme3/scene/shape/Box;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v3, v3}, Lcom/jme3/scene/shape/Box;-><init>(FFF)V

    const-string v3, "dummyGeom"

    invoke-direct {p1, v3, v2}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    invoke-virtual {p1, v1}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    :try_start_0
    iget-object v2, p0, Lcom/jme3/util/MaterialDebugAppState;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v2, p1}, Lcom/jme3/renderer/RenderManager;->preloadScene(Lcom/jme3/scene/Spatial;)V
    :try_end_0
    .catch Lcom/jme3/renderer/RendererException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p1

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "Material successfully reloaded"

    invoke-virtual {p1, v0, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception p1

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(F)V
    .locals 2

    invoke-super {p0, p1}, Lcom/jme3/app/state/AbstractAppState;->update(F)V

    iget-object p1, p0, Lcom/jme3/util/MaterialDebugAppState;->fileTriggers:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/input/controls/Trigger;

    instance-of v1, v0, Lcom/jme3/util/MaterialDebugAppState$FileChangedTrigger;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/jme3/util/MaterialDebugAppState$FileChangedTrigger;

    invoke-virtual {v0}, Lcom/jme3/util/MaterialDebugAppState$FileChangedTrigger;->shouldFire()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jme3/util/MaterialDebugAppState;->fileTriggers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/util/MaterialDebugAppState$Binding;

    invoke-interface {v1}, Lcom/jme3/util/MaterialDebugAppState$Binding;->reload()V

    goto :goto_0

    :cond_1
    return-void
.end method
