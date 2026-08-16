.class public abstract Lcom/ardor3d/util/geom/SceneCopier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static makeCopy(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/util/geom/CopyLogic;)Lcom/ardor3d/scenegraph/Spatial;
    .locals 2

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 3
    invoke-interface {p2, p0, p1}, Lcom/ardor3d/util/geom/CopyLogic;->copy(Lcom/ardor3d/scenegraph/Spatial;Ljava/util/concurrent/atomic/AtomicBoolean;)Lcom/ardor3d/scenegraph/Spatial;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    instance-of p1, p0, Lcom/ardor3d/scenegraph/Node;

    if-eqz p1, :cond_1

    instance-of p1, v0, Lcom/ardor3d/scenegraph/Node;

    if-eqz p1, :cond_1

    check-cast p0, Lcom/ardor3d/scenegraph/Node;

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Node;->getNumberOfChildren()I

    move-result p1

    if-lez p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Node;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/scenegraph/Spatial;

    .line 6
    invoke-static {p1, v0, p2}, Lcom/ardor3d/util/geom/SceneCopier;->makeCopy(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/util/geom/CopyLogic;)Lcom/ardor3d/scenegraph/Spatial;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    move-object v1, v0

    check-cast v1, Lcom/ardor3d/scenegraph/Node;

    invoke-virtual {v1, p1}, Lcom/ardor3d/scenegraph/Node;->attachChild(Lcom/ardor3d/scenegraph/Spatial;)I

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static makeCopy(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/util/geom/CopyLogic;)Lcom/ardor3d/scenegraph/Spatial;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, p1}, Lcom/ardor3d/util/geom/SceneCopier;->makeCopy(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/util/geom/CopyLogic;)Lcom/ardor3d/scenegraph/Spatial;

    move-result-object p0

    return-object p0
.end method
