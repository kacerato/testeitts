.class public final Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarSceneController;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "native-astar"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypoint;Z)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "targetWaypoint",
            "ignoreY"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypoint;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarSceneController;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypoint;->getGraphGuid()J

    move-result-wide v6

    const-class p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v5

    move v8, p2

    invoke-static/range {v3 .. v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarSceneController;->nativeCalculatePath(FFFJZ)[F

    move-result-object p0

    if-eqz p0, :cond_3

    array-length p2, p0

    const/4 v2, 0x3

    if-ge p2, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_0
    add-int/lit8 v2, p2, 0x2

    array-length v3, p0

    if-ge v2, v3, :cond_2

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    aget v4, p0, p2

    add-int/lit8 v5, p2, 0x1

    aget v5, p0, v5

    aget v2, p0, v2

    invoke-direct {v3, v4, v5, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 p2, p2, 0x3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :try_start_2
    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_3
    :goto_1
    :try_start_3
    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    return-object v1

    :goto_2
    :try_start_4
    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_4
    :goto_3
    monitor-exit v0

    return-object v1

    :goto_4
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0
.end method

.method public static declared-synchronized b()J
    .locals 3

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarSceneController;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarSceneController;->nativeGetGraphVersion()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized c(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connection"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarSceneController;

    monitor-enter v0

    if-nez p0, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->getGraphGuid()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarSceneController;->nativeRemoveConnection(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized d(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypoint;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "waypoint"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarSceneController;

    monitor-enter v0

    if-nez p0, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypoint;->getGraphGuid()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarSceneController;->nativeRemoveWaypoint(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized e(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connection"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarSceneController;

    monitor-enter v0

    if-eqz p0, :cond_3

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->getGraphGuid()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->getWaypointAGUID()J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->getWaypointBGUID()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v1, v5, v9

    if-eqz v1, :cond_2

    cmp-long v1, v7, v9

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v4

    invoke-static/range {v2 .. v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarSceneController;->nativeSyncConnection(JZJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    :try_start_1
    invoke-static {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarSceneController;->nativeRemoveConnection(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_3
    :goto_2
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized f(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypoint;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "waypoint"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarSceneController;

    monitor-enter v0

    if-eqz p0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypoint;->getGraphGuid()J

    move-result-wide v2

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v4, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypoint;->isActiveForGraph()Z

    move-result v4

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v6

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v7

    invoke-static/range {v2 .. v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarSceneController;->nativeSyncWaypoint(JZFFF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_1
    :goto_1
    monitor-exit v0

    return-void
.end method

.method private static native nativeCalculatePath(FFFJZ)[F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startX",
            "startY",
            "startZ",
            "targetWaypointGuid",
            "ignoreY"
        }
    .end annotation
.end method

.method private static native nativeGetGraphVersion()J
.end method

.method private static native nativeRemoveConnection(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connectionGuid"
        }
    .end annotation
.end method

.method private static native nativeRemoveWaypoint(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "waypointGuid"
        }
    .end annotation
.end method

.method private static native nativeSyncConnection(JZJJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "connectionGuid",
            "active",
            "waypointAGuid",
            "waypointBGuid"
        }
    .end annotation
.end method

.method private static native nativeSyncWaypoint(JZFFF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "waypointGuid",
            "active",
            "x",
            "y",
            "z"
        }
    .end annotation
.end method
