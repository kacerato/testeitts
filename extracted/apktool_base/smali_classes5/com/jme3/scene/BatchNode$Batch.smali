.class public Lcom/jme3/scene/BatchNode$Batch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/util/clone/JmeCloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/scene/BatchNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Batch"
.end annotation


# instance fields
.field geometry:Lcom/jme3/scene/Geometry;

.field final synthetic this$0:Lcom/jme3/scene/BatchNode;


# direct methods
.method public constructor <init>(Lcom/jme3/scene/BatchNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/scene/BatchNode$Batch;->this$0:Lcom/jme3/scene/BatchNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    iget-object p2, p0, Lcom/jme3/scene/BatchNode$Batch;->geometry:Lcom/jme3/scene/Geometry;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/Geometry;

    iput-object p1, p0, Lcom/jme3/scene/BatchNode$Batch;->geometry:Lcom/jme3/scene/Geometry;

    return-void
.end method

.method public final getGeometry()Lcom/jme3/scene/Geometry;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/BatchNode$Batch;->geometry:Lcom/jme3/scene/Geometry;

    return-object v0
.end method

.method public jmeClone()Lcom/jme3/scene/BatchNode$Batch;
    .locals 1

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/BatchNode$Batch;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic jmeClone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/scene/BatchNode$Batch;->jmeClone()Lcom/jme3/scene/BatchNode$Batch;

    move-result-object v0

    return-object v0
.end method

.method public updateGeomList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/scene/Geometry;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Geometry;

    iget-object v1, p0, Lcom/jme3/scene/BatchNode$Batch;->this$0:Lcom/jme3/scene/BatchNode;

    invoke-virtual {v1, v0}, Lcom/jme3/scene/BatchNode;->isBatch(Lcom/jme3/scene/Spatial;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jme3/scene/BatchNode$Batch;->this$0:Lcom/jme3/scene/BatchNode;

    iget-object v1, v1, Lcom/jme3/scene/BatchNode;->batchesByGeom:Ljava/util/Map;

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method
