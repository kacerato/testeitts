.class public Lcom/ardor3d/util/geom/SharedCopyLogic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/util/geom/CopyLogic;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ardor3d/util/geom/SharedCopyLogic;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/util/geom/SharedCopyLogic;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone(Lcom/ardor3d/scenegraph/Mesh;)Lcom/ardor3d/scenegraph/Mesh;
    .locals 5

    .line 1
    const-string v0, "Could not access final constructor of class "

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/scenegraph/Mesh;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_copy"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ardor3d/scenegraph/Spatial;->setName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ardor3d/scenegraph/hint/SceneHints;->set(Lcom/ardor3d/scenegraph/hint/SceneHints;)V

    .line 5
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getTransform()Lcom/ardor3d/math/type/ReadOnlyTransform;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ardor3d/scenegraph/Spatial;->setTransform(Lcom/ardor3d/math/type/ReadOnlyTransform;)V

    .line 6
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Mesh;->getDefaultColor()Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ardor3d/scenegraph/Mesh;->setDefaultColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    .line 7
    invoke-static {}, Lcom/ardor3d/renderer/state/RenderState$StateType;->values()[Lcom/ardor3d/renderer/state/RenderState$StateType;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 8
    invoke-virtual {p1, v4}, Lcom/ardor3d/scenegraph/Spatial;->getLocalRenderState(Lcom/ardor3d/renderer/state/RenderState$StateType;)Lcom/ardor3d/renderer/state/RenderState;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 9
    invoke-virtual {v1, v4}, Lcom/ardor3d/scenegraph/Spatial;->setRenderState(Lcom/ardor3d/renderer/state/RenderState;)Lcom/ardor3d/renderer/state/RenderState;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    .line 10
    :goto_1
    sget-object v2, Lcom/ardor3d/util/geom/SharedCopyLogic;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 12
    :goto_2
    sget-object v2, Lcom/ardor3d/util/geom/SharedCopyLogic;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public clone(Lcom/ardor3d/scenegraph/Node;)Lcom/ardor3d/scenegraph/Node;
    .locals 5

    .line 14
    const-string v0, "Could not access final constructor of class "

    .line 15
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/scenegraph/Node;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_copy"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ardor3d/scenegraph/Spatial;->setName(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ardor3d/scenegraph/hint/SceneHints;->set(Lcom/ardor3d/scenegraph/hint/SceneHints;)V

    .line 18
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getTransform()Lcom/ardor3d/math/type/ReadOnlyTransform;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ardor3d/scenegraph/Spatial;->setTransform(Lcom/ardor3d/math/type/ReadOnlyTransform;)V

    .line 19
    invoke-static {}, Lcom/ardor3d/renderer/state/RenderState$StateType;->values()[Lcom/ardor3d/renderer/state/RenderState$StateType;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 20
    invoke-virtual {p1, v4}, Lcom/ardor3d/scenegraph/Spatial;->getLocalRenderState(Lcom/ardor3d/renderer/state/RenderState$StateType;)Lcom/ardor3d/renderer/state/RenderState;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 21
    invoke-virtual {v1, v4}, Lcom/ardor3d/scenegraph/Spatial;->setRenderState(Lcom/ardor3d/renderer/state/RenderState;)Lcom/ardor3d/renderer/state/RenderState;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    .line 22
    :goto_1
    sget-object v2, Lcom/ardor3d/util/geom/SharedCopyLogic;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 24
    :goto_2
    sget-object v2, Lcom/ardor3d/util/geom/SharedCopyLogic;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public copy(Lcom/ardor3d/scenegraph/Spatial;Ljava/util/concurrent/atomic/AtomicBoolean;)Lcom/ardor3d/scenegraph/Spatial;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    instance-of v0, p1, Lcom/ardor3d/scenegraph/Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    check-cast p1, Lcom/ardor3d/scenegraph/Node;

    invoke-virtual {p0, p1}, Lcom/ardor3d/util/geom/SharedCopyLogic;->clone(Lcom/ardor3d/scenegraph/Node;)Lcom/ardor3d/scenegraph/Node;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of p2, p1, Lcom/ardor3d/scenegraph/Mesh;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/ardor3d/scenegraph/Mesh;

    invoke-virtual {p0, p1}, Lcom/ardor3d/util/geom/SharedCopyLogic;->clone(Lcom/ardor3d/scenegraph/Mesh;)Lcom/ardor3d/scenegraph/Mesh;

    move-result-object p2

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ardor3d/scenegraph/Mesh;->setMeshData(Lcom/ardor3d/scenegraph/MeshData;)V

    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/Mesh;->updateModelBound()V

    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
