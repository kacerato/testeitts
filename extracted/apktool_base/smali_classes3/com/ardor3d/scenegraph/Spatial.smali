.class public abstract Lcom/ardor3d/scenegraph/Spatial;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/util/export/Savable;
.implements Lcom/ardor3d/scenegraph/hint/Hintable;


# static fields
.field private static final defaultDelegateRef:Ljava/lang/Object;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field protected _controllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ardor3d/scenegraph/controller/SpatialController<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected transient _delegateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/ardor3d/util/scenegraph/RenderDelegate;",
            ">;"
        }
    .end annotation
.end field

.field protected _dirtyMark:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/ardor3d/scenegraph/event/DirtyType;",
            ">;"
        }
    .end annotation
.end field

.field protected _frustumIntersects:Lcom/ardor3d/renderer/Camera$FrustumIntersect;

.field protected _listener:Lcom/ardor3d/scenegraph/event/DirtyEventListener;

.field protected final _localTransform:Lcom/ardor3d/math/Transform;

.field protected _name:Ljava/lang/String;

.field protected _parent:Lcom/ardor3d/scenegraph/Node;

.field protected final _renderStateList:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/ardor3d/renderer/state/RenderState$StateType;",
            "Lcom/ardor3d/renderer/state/RenderState;",
            ">;"
        }
    .end annotation
.end field

.field protected final _sceneHints:Lcom/ardor3d/scenegraph/hint/SceneHints;

.field protected _userData:Ljava/lang/Object;

.field protected _worldBound:Lcom/ardor3d/bounding/BoundingVolume;

.field protected final _worldTransform:Lcom/ardor3d/math/Transform;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ardor3d/scenegraph/Spatial;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/scenegraph/Spatial;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ardor3d/scenegraph/Spatial;->defaultDelegateRef:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_renderStateList:Ljava/util/EnumMap;

    .line 3
    sget-object v0, Lcom/ardor3d/scenegraph/event/DirtyType;->Bounding:Lcom/ardor3d/scenegraph/event/DirtyType;

    sget-object v1, Lcom/ardor3d/scenegraph/event/DirtyType;->RenderState:Lcom/ardor3d/scenegraph/event/DirtyType;

    sget-object v2, Lcom/ardor3d/scenegraph/event/DirtyType;->Transform:Lcom/ardor3d/scenegraph/event/DirtyType;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_dirtyMark:Ljava/util/EnumSet;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_userData:Ljava/lang/Object;

    .line 5
    sget-object v1, Lcom/ardor3d/renderer/Camera$FrustumIntersect;->Intersects:Lcom/ardor3d/renderer/Camera$FrustumIntersect;

    iput-object v1, p0, Lcom/ardor3d/scenegraph/Spatial;->_frustumIntersects:Lcom/ardor3d/renderer/Camera$FrustumIntersect;

    .line 6
    iput-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_delegateMap:Ljava/util/Map;

    .line 7
    sget-boolean v0, Lcom/ardor3d/util/Constants;->useValidatingTransform:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/ardor3d/math/ValidatingTransform;

    invoke-direct {v0}, Lcom/ardor3d/math/ValidatingTransform;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/ardor3d/math/Transform;

    invoke-direct {v0}, Lcom/ardor3d/math/Transform;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_localTransform:Lcom/ardor3d/math/Transform;

    .line 8
    sget-boolean v0, Lcom/ardor3d/util/Constants;->useValidatingTransform:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/ardor3d/math/ValidatingTransform;

    invoke-direct {v0}, Lcom/ardor3d/math/ValidatingTransform;-><init>()V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/ardor3d/math/Transform;

    invoke-direct {v0}, Lcom/ardor3d/math/Transform;-><init>()V

    :goto_1
    iput-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldTransform:Lcom/ardor3d/math/Transform;

    .line 9
    new-instance v0, Lcom/ardor3d/scenegraph/hint/SceneHints;

    invoke-direct {v0, p0}, Lcom/ardor3d/scenegraph/hint/SceneHints;-><init>(Lcom/ardor3d/scenegraph/hint/Hintable;)V

    iput-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_sceneHints:Lcom/ardor3d/scenegraph/hint/SceneHints;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/Spatial;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/ardor3d/scenegraph/Spatial;->_name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public acceptVisitor(Lcom/ardor3d/scenegraph/visitor/Visitor;Z)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/ardor3d/scenegraph/visitor/Visitor;->visit(Lcom/ardor3d/scenegraph/Spatial;)V

    return-void
.end method

.method public addController(Lcom/ardor3d/scenegraph/controller/SpatialController;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/scenegraph/controller/SpatialController<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_controllers:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_controllers:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_controllers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTranslation(DDD)V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_localTransform:Lcom/ardor3d/math/Transform;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/ardor3d/math/Transform;->translate(DDD)Lcom/ardor3d/math/Transform;

    .line 3
    sget-object p1, Lcom/ardor3d/scenegraph/event/DirtyType;->Transform:Lcom/ardor3d/scenegraph/event/DirtyType;

    invoke-virtual {p0, p1}, Lcom/ardor3d/scenegraph/Spatial;->markDirty(Lcom/ardor3d/scenegraph/event/DirtyType;)V

    return-void
.end method

.method public addTranslation(Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 7

    .line 1
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/ardor3d/scenegraph/Spatial;->addTranslation(DDD)V

    return-void
.end method

.method public applyWorldRenderStates(ZLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Lcom/ardor3d/renderer/state/RenderState$StateType;",
            "Ljava/util/Stack<",
            "Lcom/ardor3d/renderer/state/RenderState;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public clearControllers()V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_controllers:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public clearDirty(Lcom/ardor3d/scenegraph/event/DirtyType;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_dirtyMark:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearRenderState(Lcom/ardor3d/renderer/state/RenderState$StateType;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_renderStateList:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/ardor3d/scenegraph/event/DirtyType;->RenderState:Lcom/ardor3d/scenegraph/event/DirtyType;

    invoke-virtual {p0, p1}, Lcom/ardor3d/scenegraph/Spatial;->markDirty(Lcom/ardor3d/scenegraph/event/DirtyType;)V

    return-void
.end method

.method public abstract draw(Lcom/ardor3d/renderer/Renderer;)V
.end method

.method public getClassTag()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ardor3d/scenegraph/Spatial;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getController(I)Lcom/ardor3d/scenegraph/controller/SpatialController;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/ardor3d/scenegraph/controller/SpatialController<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_controllers:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_controllers:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_controllers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/scenegraph/controller/SpatialController;

    return-object p1
.end method

.method public getControllerCount()I
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_controllers:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getControllers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ardor3d/scenegraph/controller/SpatialController<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_controllers:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_controllers:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_controllers:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentRenderDelegate()Lcom/ardor3d/util/scenegraph/RenderDelegate;
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_delegateMap:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ardor3d/renderer/ContextManager;->getCurrentContext()Lcom/ardor3d/renderer/RenderContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/renderer/RenderContext;->getGlContextRep()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ardor3d/scenegraph/Spatial;->getRenderDelegate(Ljava/lang/Object;)Lcom/ardor3d/util/scenegraph/RenderDelegate;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/ardor3d/scenegraph/Spatial;->getRenderDelegate(Ljava/lang/Object;)Lcom/ardor3d/util/scenegraph/RenderDelegate;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getLastFrustumIntersection()Lcom/ardor3d/renderer/Camera$FrustumIntersect;
    .locals 3

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_parent:Lcom/ardor3d/scenegraph/Node;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Spatial;->_frustumIntersects:Lcom/ardor3d/renderer/Camera$FrustumIntersect;

    sget-object v2, Lcom/ardor3d/renderer/Camera$FrustumIntersect;->Outside:Lcom/ardor3d/renderer/Camera$FrustumIntersect;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/Spatial;->getLastFrustumIntersection()Lcom/ardor3d/renderer/Camera$FrustumIntersect;

    move-result-object v0

    if-ne v0, v2, :cond_0

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_frustumIntersects:Lcom/ardor3d/renderer/Camera$FrustumIntersect;

    return-object v0
.end method

.method public getListener()Lcom/ardor3d/scenegraph/event/DirtyEventListener;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_listener:Lcom/ardor3d/scenegraph/event/DirtyEventListener;

    return-object v0
.end method

.method public getLocalLastFrustumIntersection()Lcom/ardor3d/renderer/Camera$FrustumIntersect;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_frustumIntersects:Lcom/ardor3d/renderer/Camera$FrustumIntersect;

    return-object v0
.end method

.method public getLocalRenderState(Lcom/ardor3d/renderer/state/RenderState$StateType;)Lcom/ardor3d/renderer/state/RenderState;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_renderStateList:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/renderer/state/RenderState;

    return-object p1
.end method

.method public getLocalRenderStates()Ljava/util/EnumMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap<",
            "Lcom/ardor3d/renderer/state/RenderState$StateType;",
            "Lcom/ardor3d/renderer/state/RenderState;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_renderStateList:Ljava/util/EnumMap;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/ardor3d/scenegraph/Node;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_parent:Lcom/ardor3d/scenegraph/Node;

    return-object v0
.end method

.method public getParentHintable()Lcom/ardor3d/scenegraph/hint/Hintable;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_parent:Lcom/ardor3d/scenegraph/Node;

    return-object v0
.end method

.method public getRenderDelegate(Ljava/lang/Object;)Lcom/ardor3d/util/scenegraph/RenderDelegate;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_delegateMap:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    sget-object p1, Lcom/ardor3d/scenegraph/Spatial;->defaultDelegateRef:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/util/scenegraph/RenderDelegate;

    return-object p1

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/util/scenegraph/RenderDelegate;

    return-object p1
.end method

.method public getRotation()Lcom/ardor3d/math/type/ReadOnlyMatrix3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_localTransform:Lcom/ardor3d/math/Transform;

    invoke-virtual {v0}, Lcom/ardor3d/math/Transform;->getMatrix()Lcom/ardor3d/math/type/ReadOnlyMatrix3;

    move-result-object v0

    return-object v0
.end method

.method public getScale()Lcom/ardor3d/math/type/ReadOnlyVector3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_localTransform:Lcom/ardor3d/math/Transform;

    invoke-virtual {v0}, Lcom/ardor3d/math/Transform;->getScale()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v0

    return-object v0
.end method

.method public getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_sceneHints:Lcom/ardor3d/scenegraph/hint/SceneHints;

    return-object v0
.end method

.method public getTransform()Lcom/ardor3d/math/type/ReadOnlyTransform;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_localTransform:Lcom/ardor3d/math/Transform;

    return-object v0
.end method

.method public getTranslation()Lcom/ardor3d/math/type/ReadOnlyVector3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_localTransform:Lcom/ardor3d/math/Transform;

    invoke-virtual {v0}, Lcom/ardor3d/math/Transform;->getTranslation()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v0

    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_userData:Ljava/lang/Object;

    return-object v0
.end method

.method public getWorldBound()Lcom/ardor3d/bounding/BoundingVolume;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldBound:Lcom/ardor3d/bounding/BoundingVolume;

    return-object v0
.end method

.method public getWorldRotation()Lcom/ardor3d/math/type/ReadOnlyMatrix3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldTransform:Lcom/ardor3d/math/Transform;

    invoke-virtual {v0}, Lcom/ardor3d/math/Transform;->getMatrix()Lcom/ardor3d/math/type/ReadOnlyMatrix3;

    move-result-object v0

    return-object v0
.end method

.method public getWorldScale()Lcom/ardor3d/math/type/ReadOnlyVector3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldTransform:Lcom/ardor3d/math/Transform;

    invoke-virtual {v0}, Lcom/ardor3d/math/Transform;->getScale()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v0

    return-object v0
.end method

.method public getWorldTransform()Lcom/ardor3d/math/type/ReadOnlyTransform;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldTransform:Lcom/ardor3d/math/Transform;

    return-object v0
.end method

.method public getWorldTranslation()Lcom/ardor3d/math/type/ReadOnlyVector3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldTransform:Lcom/ardor3d/math/Transform;

    invoke-virtual {v0}, Lcom/ardor3d/math/Transform;->getTranslation()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v0

    return-object v0
.end method

.method public hasAncestor(Lcom/ardor3d/scenegraph/Node;)Z
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_parent:Lcom/ardor3d/scenegraph/Node;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_parent:Lcom/ardor3d/scenegraph/Node;

    invoke-virtual {v0, p1}, Lcom/ardor3d/scenegraph/Spatial;->hasAncestor(Lcom/ardor3d/scenegraph/Node;)Z

    move-result p1

    return p1
.end method

.method public isDirty(Lcom/ardor3d/scenegraph/event/DirtyType;)Z
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_dirtyMark:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public localToWorld(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
    .locals 1

    if-nez p2, :cond_0

    new-instance p2, Lcom/ardor3d/math/Vector3;

    invoke-direct {p2}, Lcom/ardor3d/math/Vector3;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldTransform:Lcom/ardor3d/math/Transform;

    invoke-virtual {v0, p1, p2}, Lcom/ardor3d/math/Transform;->applyForward(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public makeCopy(Z)Lcom/ardor3d/scenegraph/Spatial;
    .locals 4

    const-string p1, "Could not access final constructor of class "

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/scenegraph/Spatial;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ardor3d/scenegraph/Spatial;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object p1

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Spatial;->_sceneHints:Lcom/ardor3d/scenegraph/hint/SceneHints;

    invoke-virtual {p1, v1}, Lcom/ardor3d/scenegraph/hint/SceneHints;->set(Lcom/ardor3d/scenegraph/hint/SceneHints;)V

    iget-object p1, p0, Lcom/ardor3d/scenegraph/Spatial;->_localTransform:Lcom/ardor3d/math/Transform;

    invoke-virtual {v0, p1}, Lcom/ardor3d/scenegraph/Spatial;->setTransform(Lcom/ardor3d/math/type/ReadOnlyTransform;)V

    iget-object p1, p0, Lcom/ardor3d/scenegraph/Spatial;->_renderStateList:Ljava/util/EnumMap;

    invoke-virtual {p1}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/renderer/state/RenderState$StateType;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Spatial;->_renderStateList:Ljava/util/EnumMap;

    invoke-virtual {v2, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/renderer/state/RenderState;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/Spatial;->setRenderState(Lcom/ardor3d/renderer/state/RenderState;)Lcom/ardor3d/renderer/state/RenderState;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/ardor3d/scenegraph/Spatial;->_controllers:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/scenegraph/controller/SpatialController;

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/Spatial;->addController(Lcom/ardor3d/scenegraph/controller/SpatialController;)V

    goto :goto_1

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :goto_2
    sget-object v1, Lcom/ardor3d/scenegraph/Spatial;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :goto_3
    sget-object v1, Lcom/ardor3d/scenegraph/Spatial;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public markDirty(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/scenegraph/event/DirtyType;)V
    .locals 3

    .line 2
    sget-object v0, Lcom/ardor3d/scenegraph/Spatial$1;->$SwitchMap$com$ardor3d$scenegraph$event$DirtyType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    sget-object v0, Lcom/ardor3d/scenegraph/event/DirtyType;->Bounding:Lcom/ardor3d/scenegraph/event/DirtyType;

    filled-new-array {v0}, [Lcom/ardor3d/scenegraph/event/DirtyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ardor3d/scenegraph/Spatial;->propagateDirtyUp([Lcom/ardor3d/scenegraph/event/DirtyType;)V

    goto :goto_0

    .line 4
    :pswitch_1
    sget-object v0, Lcom/ardor3d/scenegraph/event/DirtyType;->Transform:Lcom/ardor3d/scenegraph/event/DirtyType;

    sget-object v1, Lcom/ardor3d/scenegraph/event/DirtyType;->RenderState:Lcom/ardor3d/scenegraph/event/DirtyType;

    sget-object v2, Lcom/ardor3d/scenegraph/event/DirtyType;->Bounding:Lcom/ardor3d/scenegraph/event/DirtyType;

    filled-new-array {v0, v1, v2}, [Lcom/ardor3d/scenegraph/event/DirtyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ardor3d/scenegraph/Spatial;->propagateDirtyDown([Lcom/ardor3d/scenegraph/event/DirtyType;)V

    .line 5
    filled-new-array {v2}, [Lcom/ardor3d/scenegraph/event/DirtyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ardor3d/scenegraph/Spatial;->propagateDirtyUp([Lcom/ardor3d/scenegraph/event/DirtyType;)V

    goto :goto_0

    .line 6
    :pswitch_2
    sget-object v0, Lcom/ardor3d/scenegraph/event/DirtyType;->Bounding:Lcom/ardor3d/scenegraph/event/DirtyType;

    filled-new-array {v0}, [Lcom/ardor3d/scenegraph/event/DirtyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ardor3d/scenegraph/Spatial;->propagateDirtyUp([Lcom/ardor3d/scenegraph/event/DirtyType;)V

    goto :goto_0

    .line 7
    :pswitch_3
    sget-object v0, Lcom/ardor3d/scenegraph/event/DirtyType;->RenderState:Lcom/ardor3d/scenegraph/event/DirtyType;

    filled-new-array {v0}, [Lcom/ardor3d/scenegraph/event/DirtyType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ardor3d/scenegraph/Spatial;->propagateDirtyUp([Lcom/ardor3d/scenegraph/event/DirtyType;)V

    .line 8
    filled-new-array {v0}, [Lcom/ardor3d/scenegraph/event/DirtyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ardor3d/scenegraph/Spatial;->propagateDirtyDown([Lcom/ardor3d/scenegraph/event/DirtyType;)V

    goto :goto_0

    .line 9
    :pswitch_4
    sget-object v0, Lcom/ardor3d/scenegraph/event/DirtyType;->Transform:Lcom/ardor3d/scenegraph/event/DirtyType;

    sget-object v1, Lcom/ardor3d/scenegraph/event/DirtyType;->Bounding:Lcom/ardor3d/scenegraph/event/DirtyType;

    filled-new-array {v0, v1}, [Lcom/ardor3d/scenegraph/event/DirtyType;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ardor3d/scenegraph/Spatial;->propagateDirtyUp([Lcom/ardor3d/scenegraph/event/DirtyType;)V

    .line 10
    filled-new-array {v0, v1}, [Lcom/ardor3d/scenegraph/event/DirtyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ardor3d/scenegraph/Spatial;->propagateDirtyDown([Lcom/ardor3d/scenegraph/event/DirtyType;)V

    .line 11
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/scenegraph/Spatial;->propageEventUp(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/scenegraph/event/DirtyType;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public markDirty(Lcom/ardor3d/scenegraph/event/DirtyType;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p0, p1}, Lcom/ardor3d/scenegraph/Spatial;->markDirty(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/scenegraph/event/DirtyType;)V

    return-void
.end method

.method public onDraw(Lcom/ardor3d/renderer/Renderer;)V
    .locals 5

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_sceneHints:Lcom/ardor3d/scenegraph/hint/SceneHints;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/hint/SceneHints;->getCullHint()Lcom/ardor3d/scenegraph/hint/CullHint;

    move-result-object v0

    sget-object v1, Lcom/ardor3d/scenegraph/hint/CullHint;->Always:Lcom/ardor3d/scenegraph/hint/CullHint;

    if-ne v0, v1, :cond_0

    sget-object p1, Lcom/ardor3d/renderer/Camera$FrustumIntersect;->Outside:Lcom/ardor3d/renderer/Camera$FrustumIntersect;

    invoke-virtual {p0, p1}, Lcom/ardor3d/scenegraph/Spatial;->setLastFrustumIntersection(Lcom/ardor3d/renderer/Camera$FrustumIntersect;)V

    return-void

    :cond_0
    sget-object v1, Lcom/ardor3d/scenegraph/hint/CullHint;->Never:Lcom/ardor3d/scenegraph/hint/CullHint;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/ardor3d/renderer/Camera$FrustumIntersect;->Intersects:Lcom/ardor3d/renderer/Camera$FrustumIntersect;

    invoke-virtual {p0, v0}, Lcom/ardor3d/scenegraph/Spatial;->setLastFrustumIntersection(Lcom/ardor3d/renderer/Camera$FrustumIntersect;)V

    invoke-virtual {p0, p1}, Lcom/ardor3d/scenegraph/Spatial;->draw(Lcom/ardor3d/renderer/Renderer;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/ardor3d/renderer/Camera;->getCurrentCamera()Lcom/ardor3d/renderer/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ardor3d/renderer/Camera;->getPlaneState()I

    move-result v2

    iget-object v3, p0, Lcom/ardor3d/scenegraph/Spatial;->_parent:Lcom/ardor3d/scenegraph/Node;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lcom/ardor3d/scenegraph/Spatial;->_frustumIntersects:Lcom/ardor3d/renderer/Camera$FrustumIntersect;

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/ardor3d/renderer/Camera$FrustumIntersect;->Intersects:Lcom/ardor3d/renderer/Camera$FrustumIntersect;

    :goto_0
    iput-object v3, p0, Lcom/ardor3d/scenegraph/Spatial;->_frustumIntersects:Lcom/ardor3d/renderer/Camera$FrustumIntersect;

    sget-object v4, Lcom/ardor3d/scenegraph/hint/CullHint;->Dynamic:Lcom/ardor3d/scenegraph/hint/CullHint;

    if-ne v0, v4, :cond_3

    sget-object v0, Lcom/ardor3d/renderer/Camera$FrustumIntersect;->Intersects:Lcom/ardor3d/renderer/Camera$FrustumIntersect;

    if-ne v3, v0, :cond_3

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldBound:Lcom/ardor3d/bounding/BoundingVolume;

    invoke-virtual {v1, v0}, Lcom/ardor3d/renderer/Camera;->contains(Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/renderer/Camera$FrustumIntersect;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_frustumIntersects:Lcom/ardor3d/renderer/Camera$FrustumIntersect;

    :cond_3
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_frustumIntersects:Lcom/ardor3d/renderer/Camera$FrustumIntersect;

    sget-object v3, Lcom/ardor3d/renderer/Camera$FrustumIntersect;->Outside:Lcom/ardor3d/renderer/Camera$FrustumIntersect;

    if-eq v0, v3, :cond_4

    invoke-virtual {p0, p1}, Lcom/ardor3d/scenegraph/Spatial;->draw(Lcom/ardor3d/renderer/Renderer;)V

    :cond_4
    invoke-virtual {v1, v2}, Lcom/ardor3d/renderer/Camera;->setPlaneState(I)V

    return-void
.end method

.method public propagateBoundToRoot()V
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_parent:Lcom/ardor3d/scenegraph/Node;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/Node;->updateWorldBound(Z)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_parent:Lcom/ardor3d/scenegraph/Node;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/Spatial;->propagateBoundToRoot()V

    :cond_0
    return-void
.end method

.method public varargs propagateDirtyDown([Lcom/ardor3d/scenegraph/event/DirtyType;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/ardor3d/scenegraph/Spatial;->_dirtyMark:Ljava/util/EnumSet;

    invoke-virtual {v3, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs propagateDirtyUp([Lcom/ardor3d/scenegraph/event/DirtyType;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/ardor3d/scenegraph/Spatial;->_dirtyMark:Ljava/util/EnumSet;

    invoke-virtual {v3, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_parent:Lcom/ardor3d/scenegraph/Node;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/ardor3d/scenegraph/Spatial;->propagateDirtyUp([Lcom/ardor3d/scenegraph/event/DirtyType;)V

    :cond_1
    return-void
.end method

.method public propagateStatesFromRoot(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/ardor3d/renderer/state/RenderState$StateType;",
            "Ljava/util/Stack<",
            "Lcom/ardor3d/renderer/state/RenderState;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_parent:Lcom/ardor3d/scenegraph/Node;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ardor3d/scenegraph/Spatial;->propagateStatesFromRoot(Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_renderStateList:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/renderer/state/RenderState;

    invoke-virtual {v1}, Lcom/ardor3d/renderer/state/RenderState;->getType()Lcom/ardor3d/renderer/state/RenderState$StateType;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Stack;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    invoke-virtual {v1}, Lcom/ardor3d/renderer/state/RenderState;->getType()Lcom/ardor3d/renderer/state/RenderState$StateType;

    move-result-object v3

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public propageEventUp(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/scenegraph/event/DirtyType;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_listener:Lcom/ardor3d/scenegraph/event/DirtyEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/ardor3d/scenegraph/event/DirtyEventListener;->spatialDirty(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/scenegraph/event/DirtyType;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_parent:Lcom/ardor3d/scenegraph/Node;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/ardor3d/scenegraph/Spatial;->propageEventUp(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/scenegraph/event/DirtyType;)V

    :cond_1
    return-void
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "name"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_name:Ljava/lang/String;

    const-string v0, "renderStateList"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/ardor3d/util/export/Savable;)[Lcom/ardor3d/util/export/Savable;

    move-result-object v0

    const-class v2, Lcom/ardor3d/renderer/state/RenderState;

    invoke-static {v0, v2}, Lcom/ardor3d/util/export/CapsuleUtils;->asArray([Lcom/ardor3d/util/export/Savable;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/renderer/state/RenderState;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Spatial;->_renderStateList:Ljava/util/EnumMap;

    invoke-virtual {v2}, Ljava/util/EnumMap;->clear()V

    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/ardor3d/scenegraph/Spatial;->_renderStateList:Ljava/util/EnumMap;

    invoke-virtual {v4}, Lcom/ardor3d/renderer/state/RenderState;->getType()Lcom/ardor3d/renderer/state/RenderState$StateType;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_localTransform:Lcom/ardor3d/math/Transform;

    new-instance v2, Lcom/ardor3d/math/Transform;

    sget-object v3, Lcom/ardor3d/math/Transform;->IDENTITY:Lcom/ardor3d/math/type/ReadOnlyTransform;

    invoke-direct {v2, v3}, Lcom/ardor3d/math/Transform;-><init>(Lcom/ardor3d/math/type/ReadOnlyTransform;)V

    const-string v4, "localTransform"

    invoke-interface {p1, v4, v2}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/math/Transform;

    invoke-virtual {v0, v2}, Lcom/ardor3d/math/Transform;->set(Lcom/ardor3d/math/type/ReadOnlyTransform;)Lcom/ardor3d/math/Transform;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldTransform:Lcom/ardor3d/math/Transform;

    new-instance v2, Lcom/ardor3d/math/Transform;

    invoke-direct {v2, v3}, Lcom/ardor3d/math/Transform;-><init>(Lcom/ardor3d/math/type/ReadOnlyTransform;)V

    const-string v3, "worldTransform"

    invoke-interface {p1, v3, v2}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/math/Transform;

    invoke-virtual {v0, v2}, Lcom/ardor3d/math/Transform;->set(Lcom/ardor3d/math/type/ReadOnlyTransform;)Lcom/ardor3d/math/Transform;

    const-string v0, "userData"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_userData:Ljava/lang/Object;

    :cond_1
    const-string v0, "controllers"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavableList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/util/export/Savable;

    instance-of v1, v0, Lcom/ardor3d/scenegraph/controller/SpatialController;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/ardor3d/scenegraph/controller/SpatialController;

    invoke-virtual {p0, v0}, Lcom/ardor3d/scenegraph/Spatial;->addController(Lcom/ardor3d/scenegraph/controller/SpatialController;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public removeController(I)Lcom/ardor3d/scenegraph/controller/SpatialController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/ardor3d/scenegraph/controller/SpatialController<",
            "*>;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_controllers:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/scenegraph/controller/SpatialController;

    return-object p1
.end method

.method public removeController(Lcom/ardor3d/scenegraph/controller/SpatialController;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/scenegraph/controller/SpatialController<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_controllers:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeFromParent()Z
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_parent:Lcom/ardor3d/scenegraph/Node;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/ardor3d/scenegraph/Node;->detachChild(Lcom/ardor3d/scenegraph/Spatial;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setLastFrustumIntersection(Lcom/ardor3d/renderer/Camera$FrustumIntersect;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/scenegraph/Spatial;->_frustumIntersects:Lcom/ardor3d/renderer/Camera$FrustumIntersect;

    return-void
.end method

.method public setListener(Lcom/ardor3d/scenegraph/event/DirtyEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/scenegraph/Spatial;->_listener:Lcom/ardor3d/scenegraph/event/DirtyEventListener;

    return-void
.end method

.method public setMatrix(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_localTransform:Lcom/ardor3d/math/Transform;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Transform;->setMatrix(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V

    sget-object p1, Lcom/ardor3d/scenegraph/event/DirtyType;->Transform:Lcom/ardor3d/scenegraph/event/DirtyType;

    invoke-virtual {p0, p1}, Lcom/ardor3d/scenegraph/Spatial;->markDirty(Lcom/ardor3d/scenegraph/event/DirtyType;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/scenegraph/Spatial;->_name:Ljava/lang/String;

    return-void
.end method

.method public setParent(Lcom/ardor3d/scenegraph/Node;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/scenegraph/Spatial;->_parent:Lcom/ardor3d/scenegraph/Node;

    return-void
.end method

.method public setRenderDelegate(Lcom/ardor3d/util/scenegraph/RenderDelegate;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_delegateMap:Ljava/util/Map;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/common/collect/O1;

    invoke-direct {v0}, Lcom/google/common/collect/O1;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/O1;->l()Lcom/google/common/collect/O1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/O1;->i()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_delegateMap:Ljava/util/Map;

    :cond_1
    if-eqz p1, :cond_3

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/ardor3d/scenegraph/Spatial;->_delegateMap:Ljava/util/Map;

    sget-object v0, Lcom/ardor3d/scenegraph/Spatial;->defaultDelegateRef:Ljava/lang/Object;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_delegateMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    if-nez p2, :cond_4

    iget-object p1, p0, Lcom/ardor3d/scenegraph/Spatial;->_delegateMap:Ljava/util/Map;

    sget-object p2, Lcom/ardor3d/scenegraph/Spatial;->defaultDelegateRef:Ljava/lang/Object;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/ardor3d/scenegraph/Spatial;->_delegateMap:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object p1, p0, Lcom/ardor3d/scenegraph/Spatial;->_delegateMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ardor3d/scenegraph/Spatial;->_delegateMap:Ljava/util/Map;

    :cond_5
    :goto_1
    return-void
.end method

.method public setRenderState(Lcom/ardor3d/renderer/state/RenderState;)Lcom/ardor3d/renderer/state/RenderState;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/ardor3d/renderer/state/RenderState;->getType()Lcom/ardor3d/renderer/state/RenderState$StateType;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Spatial;->_renderStateList:Ljava/util/EnumMap;

    invoke-virtual {v1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/renderer/state/RenderState;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Spatial;->_renderStateList:Ljava/util/EnumMap;

    invoke-virtual {v2, v0, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/ardor3d/scenegraph/event/DirtyType;->RenderState:Lcom/ardor3d/scenegraph/event/DirtyType;

    invoke-virtual {p0, p1}, Lcom/ardor3d/scenegraph/Spatial;->markDirty(Lcom/ardor3d/scenegraph/event/DirtyType;)V

    return-object v1
.end method

.method public setRotation(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_localTransform:Lcom/ardor3d/math/Transform;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Transform;->setRotation(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V

    .line 2
    sget-object p1, Lcom/ardor3d/scenegraph/event/DirtyType;->Transform:Lcom/ardor3d/scenegraph/event/DirtyType;

    invoke-virtual {p0, p1}, Lcom/ardor3d/scenegraph/Spatial;->markDirty(Lcom/ardor3d/scenegraph/event/DirtyType;)V

    return-void
.end method

.method public setRotation(Lcom/ardor3d/math/type/ReadOnlyQuaternion;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_localTransform:Lcom/ardor3d/math/Transform;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Transform;->setRotation(Lcom/ardor3d/math/type/ReadOnlyQuaternion;)V

    .line 4
    sget-object p1, Lcom/ardor3d/scenegraph/event/DirtyType;->Transform:Lcom/ardor3d/scenegraph/event/DirtyType;

    invoke-virtual {p0, p1}, Lcom/ardor3d/scenegraph/Spatial;->markDirty(Lcom/ardor3d/scenegraph/event/DirtyType;)V

    return-void
.end method

.method public setScale(D)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_localTransform:Lcom/ardor3d/math/Transform;

    invoke-virtual {v0, p1, p2}, Lcom/ardor3d/math/Transform;->setScale(D)V

    .line 4
    sget-object p1, Lcom/ardor3d/scenegraph/event/DirtyType;->Transform:Lcom/ardor3d/scenegraph/event/DirtyType;

    invoke-virtual {p0, p1}, Lcom/ardor3d/scenegraph/Spatial;->markDirty(Lcom/ardor3d/scenegraph/event/DirtyType;)V

    return-void
.end method

.method public setScale(DDD)V
    .locals 7

    .line 5
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_localTransform:Lcom/ardor3d/math/Transform;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/ardor3d/math/Transform;->setScale(DDD)V

    .line 6
    sget-object p1, Lcom/ardor3d/scenegraph/event/DirtyType;->Transform:Lcom/ardor3d/scenegraph/event/DirtyType;

    invoke-virtual {p0, p1}, Lcom/ardor3d/scenegraph/Spatial;->markDirty(Lcom/ardor3d/scenegraph/event/DirtyType;)V

    return-void
.end method

.method public setScale(Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_localTransform:Lcom/ardor3d/math/Transform;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Transform;->setScale(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    .line 2
    sget-object p1, Lcom/ardor3d/scenegraph/event/DirtyType;->Transform:Lcom/ardor3d/scenegraph/event/DirtyType;

    invoke-virtual {p0, p1}, Lcom/ardor3d/scenegraph/Spatial;->markDirty(Lcom/ardor3d/scenegraph/event/DirtyType;)V

    return-void
.end method

.method public setTransform(Lcom/ardor3d/math/type/ReadOnlyTransform;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_localTransform:Lcom/ardor3d/math/Transform;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Transform;->set(Lcom/ardor3d/math/type/ReadOnlyTransform;)Lcom/ardor3d/math/Transform;

    sget-object p1, Lcom/ardor3d/scenegraph/event/DirtyType;->Transform:Lcom/ardor3d/scenegraph/event/DirtyType;

    invoke-virtual {p0, p1}, Lcom/ardor3d/scenegraph/Spatial;->markDirty(Lcom/ardor3d/scenegraph/event/DirtyType;)V

    return-void
.end method

.method public setTranslation(DDD)V
    .locals 7

    .line 3
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_localTransform:Lcom/ardor3d/math/Transform;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/ardor3d/math/Transform;->setTranslation(DDD)V

    .line 4
    sget-object p1, Lcom/ardor3d/scenegraph/event/DirtyType;->Transform:Lcom/ardor3d/scenegraph/event/DirtyType;

    invoke-virtual {p0, p1}, Lcom/ardor3d/scenegraph/Spatial;->markDirty(Lcom/ardor3d/scenegraph/event/DirtyType;)V

    return-void
.end method

.method public setTranslation(Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_localTransform:Lcom/ardor3d/math/Transform;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Transform;->setTranslation(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    .line 2
    sget-object p1, Lcom/ardor3d/scenegraph/event/DirtyType;->Transform:Lcom/ardor3d/scenegraph/event/DirtyType;

    invoke-virtual {p0, p1}, Lcom/ardor3d/scenegraph/Spatial;->markDirty(Lcom/ardor3d/scenegraph/event/DirtyType;)V

    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/scenegraph/Spatial;->_userData:Ljava/lang/Object;

    return-void
.end method

.method public setWorldRotation(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldTransform:Lcom/ardor3d/math/Transform;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Transform;->setRotation(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V

    return-void
.end method

.method public setWorldRotation(Lcom/ardor3d/math/type/ReadOnlyQuaternion;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldTransform:Lcom/ardor3d/math/Transform;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Transform;->setRotation(Lcom/ardor3d/math/type/ReadOnlyQuaternion;)V

    return-void
.end method

.method public setWorldScale(D)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldTransform:Lcom/ardor3d/math/Transform;

    invoke-virtual {v0, p1, p2}, Lcom/ardor3d/math/Transform;->setScale(D)V

    return-void
.end method

.method public setWorldScale(DDD)V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldTransform:Lcom/ardor3d/math/Transform;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/ardor3d/math/Transform;->setScale(DDD)V

    return-void
.end method

.method public setWorldScale(Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldTransform:Lcom/ardor3d/math/Transform;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Transform;->setScale(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    return-void
.end method

.method public setWorldTransform(Lcom/ardor3d/math/type/ReadOnlyTransform;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldTransform:Lcom/ardor3d/math/Transform;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Transform;->set(Lcom/ardor3d/math/type/ReadOnlyTransform;)Lcom/ardor3d/math/Transform;

    return-void
.end method

.method public setWorldTranslation(DDD)V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldTransform:Lcom/ardor3d/math/Transform;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/ardor3d/math/Transform;->setTranslation(DDD)V

    return-void
.end method

.method public setWorldTranslation(Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldTransform:Lcom/ardor3d/math/Transform;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Transform;->setTranslation(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    return-void
.end method

.method public sortLights()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Spatial;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateChildren(D)V
    .locals 0

    return-void
.end method

.method public updateControllers(D)V
    .locals 3

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_controllers:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/ardor3d/scenegraph/Spatial;->_controllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/scenegraph/controller/SpatialController;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2, p0}, Lcom/ardor3d/scenegraph/controller/SpatialController;->update(DLcom/ardor3d/scenegraph/Spatial;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method

.method public updateGeometricState(D)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/ardor3d/scenegraph/Spatial;->updateGeometricState(DZ)V

    return-void
.end method

.method public updateGeometricState(DZ)V
    .locals 3

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/scenegraph/Spatial;->updateControllers(D)V

    .line 3
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_dirtyMark:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/scenegraph/Spatial;->updateChildren(D)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/ardor3d/scenegraph/event/DirtyType;->Transform:Lcom/ardor3d/scenegraph/event/DirtyType;

    invoke-virtual {p0, v0}, Lcom/ardor3d/scenegraph/Spatial;->isDirty(Lcom/ardor3d/scenegraph/event/DirtyType;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0, v1}, Lcom/ardor3d/scenegraph/Spatial;->updateWorldTransform(Z)V

    .line 7
    :cond_1
    sget-object v0, Lcom/ardor3d/scenegraph/event/DirtyType;->RenderState:Lcom/ardor3d/scenegraph/event/DirtyType;

    invoke-virtual {p0, v0}, Lcom/ardor3d/scenegraph/Spatial;->isDirty(Lcom/ardor3d/scenegraph/event/DirtyType;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {p0, v1}, Lcom/ardor3d/scenegraph/Spatial;->updateWorldRenderStates(Z)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/ardor3d/scenegraph/Spatial;->clearDirty(Lcom/ardor3d/scenegraph/event/DirtyType;)V

    .line 10
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/scenegraph/Spatial;->updateChildren(D)V

    .line 11
    sget-object p1, Lcom/ardor3d/scenegraph/event/DirtyType;->Bounding:Lcom/ardor3d/scenegraph/event/DirtyType;

    invoke-virtual {p0, p1}, Lcom/ardor3d/scenegraph/Spatial;->isDirty(Lcom/ardor3d/scenegraph/event/DirtyType;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    invoke-virtual {p0, v1}, Lcom/ardor3d/scenegraph/Spatial;->updateWorldBound(Z)V

    if-eqz p3, :cond_3

    .line 13
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->propagateBoundToRoot()V

    :cond_3
    :goto_0
    return-void
.end method

.method public abstract updateWorldBound(Z)V
.end method

.method public updateWorldRenderStates(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/ardor3d/scenegraph/Spatial;->updateWorldRenderStates(ZLjava/util/Map;)V

    return-void
.end method

.method public updateWorldRenderStates(ZLjava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Lcom/ardor3d/renderer/state/RenderState$StateType;",
            "Ljava/util/Stack<",
            "Lcom/ardor3d/renderer/state/RenderState;",
            ">;>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/google/common/collect/Q1;->Y()Ljava/util/HashMap;

    move-result-object p2

    .line 3
    invoke-virtual {p0, p2}, Lcom/ardor3d/scenegraph/Spatial;->propagateStatesFromRoot(Ljava/util/Map;)V

    goto :goto_2

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/ardor3d/scenegraph/Spatial;->_renderStateList:Ljava/util/EnumMap;

    invoke-virtual {v1}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/renderer/state/RenderState;

    .line 5
    invoke-virtual {v2}, Lcom/ardor3d/renderer/state/RenderState;->getType()Lcom/ardor3d/renderer/state/RenderState$StateType;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Stack;

    if-nez v3, :cond_2

    .line 6
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    .line 7
    invoke-virtual {v2}, Lcom/ardor3d/renderer/state/RenderState;->getType()Lcom/ardor3d/renderer/state/RenderState$StateType;

    move-result-object v4

    invoke-interface {p2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_2
    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_3
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/scenegraph/Spatial;->applyWorldRenderStates(ZLjava/util/Map;)V

    if-nez v0, :cond_4

    .line 10
    iget-object p1, p0, Lcom/ardor3d/scenegraph/Spatial;->_renderStateList:Ljava/util/EnumMap;

    invoke-virtual {p1}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/renderer/state/RenderState;

    .line 11
    invoke-virtual {v0}, Lcom/ardor3d/renderer/state/RenderState;->getType()Lcom/ardor3d/renderer/state/RenderState$StateType;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_3

    :cond_4
    return-void
.end method

.method public updateWorldTransform(Z)V
    .locals 2

    iget-object p1, p0, Lcom/ardor3d/scenegraph/Spatial;->_parent:Lcom/ardor3d/scenegraph/Node;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/ardor3d/scenegraph/Spatial;->_worldTransform:Lcom/ardor3d/math/Transform;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_localTransform:Lcom/ardor3d/math/Transform;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldTransform:Lcom/ardor3d/math/Transform;

    invoke-virtual {p1, v0, v1}, Lcom/ardor3d/math/Transform;->multiply(Lcom/ardor3d/math/type/ReadOnlyTransform;Lcom/ardor3d/math/Transform;)Lcom/ardor3d/math/Transform;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldTransform:Lcom/ardor3d/math/Transform;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_localTransform:Lcom/ardor3d/math/Transform;

    invoke-virtual {p1, v0}, Lcom/ardor3d/math/Transform;->set(Lcom/ardor3d/math/type/ReadOnlyTransform;)Lcom/ardor3d/math/Transform;

    :goto_0
    sget-object p1, Lcom/ardor3d/scenegraph/event/DirtyType;->Transform:Lcom/ardor3d/scenegraph/event/DirtyType;

    invoke-virtual {p0, p1}, Lcom/ardor3d/scenegraph/Spatial;->clearDirty(Lcom/ardor3d/scenegraph/event/DirtyType;)V

    return-void
.end method

.method public worldToLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
    .locals 1

    if-nez p2, :cond_0

    new-instance p2, Lcom/ardor3d/math/Vector3;

    invoke-direct {p2}, Lcom/ardor3d/math/Vector3;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldTransform:Lcom/ardor3d/math/Transform;

    invoke-virtual {v0, p1, p2}, Lcom/ardor3d/math/Transform;->applyInverse(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_name:Ljava/lang/String;

    const-string v1, "name"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_renderStateList:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/ardor3d/renderer/state/RenderState;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/util/export/Savable;

    const-string v1, "renderStateList"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write([Lcom/ardor3d/util/export/Savable;Ljava/lang/String;[Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_localTransform:Lcom/ardor3d/math/Transform;

    new-instance v1, Lcom/ardor3d/math/Transform;

    sget-object v3, Lcom/ardor3d/math/Transform;->IDENTITY:Lcom/ardor3d/math/type/ReadOnlyTransform;

    invoke-direct {v1, v3}, Lcom/ardor3d/math/Transform;-><init>(Lcom/ardor3d/math/type/ReadOnlyTransform;)V

    const-string v4, "localTransform"

    invoke-interface {p1, v0, v4, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldTransform:Lcom/ardor3d/math/Transform;

    new-instance v1, Lcom/ardor3d/math/Transform;

    invoke-direct {v1, v3}, Lcom/ardor3d/math/Transform;-><init>(Lcom/ardor3d/math/type/ReadOnlyTransform;)V

    const-string v3, "worldTransform"

    invoke-interface {p1, v0, v3, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_userData:Ljava/lang/Object;

    instance-of v1, v0, Lcom/ardor3d/util/export/Savable;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/ardor3d/util/export/Savable;

    const-string v1, "userData"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_controllers:Ljava/util/List;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Spatial;->_controllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ardor3d/scenegraph/controller/SpatialController;

    instance-of v4, v3, Lcom/ardor3d/util/export/Savable;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/ardor3d/util/export/Savable;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v1, "controllers"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->writeSavableList(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    :cond_3
    return-void
.end method
