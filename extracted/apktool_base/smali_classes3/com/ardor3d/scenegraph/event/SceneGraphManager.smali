.class public Lcom/ardor3d/scenegraph/event/SceneGraphManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/scenegraph/event/DirtyEventListener;


# static fields
.field private static sceneGraphManagerInstance:Lcom/ardor3d/scenegraph/event/SceneGraphManager;


# instance fields
.field private final _listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ardor3d/scenegraph/event/DirtyEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/scenegraph/event/SceneGraphManager;->_listeners:Ljava/util/List;

    return-void
.end method

.method public static getSceneGraphManager()Lcom/ardor3d/scenegraph/event/SceneGraphManager;
    .locals 1

    sget-object v0, Lcom/ardor3d/scenegraph/event/SceneGraphManager;->sceneGraphManagerInstance:Lcom/ardor3d/scenegraph/event/SceneGraphManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ardor3d/scenegraph/event/SceneGraphManager;

    invoke-direct {v0}, Lcom/ardor3d/scenegraph/event/SceneGraphManager;-><init>()V

    sput-object v0, Lcom/ardor3d/scenegraph/event/SceneGraphManager;->sceneGraphManagerInstance:Lcom/ardor3d/scenegraph/event/SceneGraphManager;

    :cond_0
    sget-object v0, Lcom/ardor3d/scenegraph/event/SceneGraphManager;->sceneGraphManagerInstance:Lcom/ardor3d/scenegraph/event/SceneGraphManager;

    return-object v0
.end method


# virtual methods
.method public addDirtyEventListener(Lcom/ardor3d/scenegraph/event/DirtyEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/event/SceneGraphManager;->_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public listenOnSpatial(Lcom/ardor3d/scenegraph/Spatial;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/ardor3d/scenegraph/Spatial;->setListener(Lcom/ardor3d/scenegraph/event/DirtyEventListener;)V

    return-void
.end method

.method public removeDirtyEventListener(Lcom/ardor3d/scenegraph/event/DirtyEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/event/SceneGraphManager;->_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public spatialDirty(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/scenegraph/event/DirtyType;)Z
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/scenegraph/event/SceneGraphManager;->_listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/scenegraph/event/DirtyEventListener;

    invoke-interface {v1, p1, p2}, Lcom/ardor3d/scenegraph/event/DirtyEventListener;->spatialDirty(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/scenegraph/event/DirtyType;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
