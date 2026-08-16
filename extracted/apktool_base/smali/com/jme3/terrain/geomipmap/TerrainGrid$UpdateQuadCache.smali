.class public Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/terrain/geomipmap/TerrainGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateQuadCache"
.end annotation


# instance fields
.field protected final location:Lcom/jme3/math/Vector3f;

.field final synthetic this$0:Lcom/jme3/terrain/geomipmap/TerrainGrid;


# direct methods
.method public constructor <init>(Lcom/jme3/terrain/geomipmap/TerrainGrid;Lcom/jme3/math/Vector3f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;->this$0:Lcom/jme3/terrain/geomipmap/TerrainGrid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;->location:Lcom/jme3/math/Vector3f;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const-class v2, Lcom/jme3/scene/control/UpdateControl;

    const/4 v3, 0x4

    if-ge v1, v3, :cond_4

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_3

    mul-int/lit8 v5, v1, 0x4

    add-int/2addr v5, v4

    iget-object v6, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;->location:Lcom/jme3/math/Vector3f;

    iget-object v7, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;->this$0:Lcom/jme3/terrain/geomipmap/TerrainGrid;

    iget-object v7, v7, Lcom/jme3/terrain/geomipmap/TerrainGrid;->quadIndex:[Lcom/jme3/math/Vector3f;

    aget-object v7, v7, v5

    invoke-virtual {v6, v7}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v6

    iget-object v7, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;->this$0:Lcom/jme3/terrain/geomipmap/TerrainGrid;

    iget-object v7, v7, Lcom/jme3/terrain/geomipmap/TerrainGrid;->cache:Lcom/jme3/terrain/geomipmap/LRUCache;

    invoke-virtual {v7, v6}, Lcom/jme3/terrain/geomipmap/LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    if-nez v7, :cond_1

    iget-object v8, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;->this$0:Lcom/jme3/terrain/geomipmap/TerrainGrid;

    invoke-static {v8}, Lcom/jme3/terrain/geomipmap/TerrainGrid;->access$000(Lcom/jme3/terrain/geomipmap/TerrainGrid;)Lcom/jme3/terrain/geomipmap/TerrainGridTileLoader;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v7, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;->this$0:Lcom/jme3/terrain/geomipmap/TerrainGrid;

    invoke-static {v7}, Lcom/jme3/terrain/geomipmap/TerrainGrid;->access$000(Lcom/jme3/terrain/geomipmap/TerrainGrid;)Lcom/jme3/terrain/geomipmap/TerrainGridTileLoader;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/jme3/terrain/geomipmap/TerrainGridTileLoader;->getTerrainQuadAt(Lcom/jme3/math/Vector3f;)Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;->this$0:Lcom/jme3/terrain/geomipmap/TerrainGrid;

    iget-object v8, v8, Lcom/jme3/terrain/geomipmap/TerrainGrid;->material:Lcom/jme3/material/Material;

    invoke-virtual {v8}, Lcom/jme3/material/Material;->clone()Lcom/jme3/material/Material;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/jme3/scene/Node;->setMaterial(Lcom/jme3/material/Material;)V

    :cond_0
    sget-object v8, Lcom/jme3/terrain/geomipmap/TerrainGrid;->log:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v10, "Loaded TerrainQuad {0} from TerrainQuadGrid"

    invoke-virtual {v7}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v8, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;->this$0:Lcom/jme3/terrain/geomipmap/TerrainGrid;

    iget-object v8, v8, Lcom/jme3/terrain/geomipmap/TerrainGrid;->cache:Lcom/jme3/terrain/geomipmap/LRUCache;

    invoke-virtual {v8, v6, v7}, Lcom/jme3/terrain/geomipmap/LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;->this$0:Lcom/jme3/terrain/geomipmap/TerrainGrid;

    invoke-virtual {v8, v5}, Lcom/jme3/terrain/geomipmap/TerrainGrid;->getQuadrant(I)I

    move-result v8

    iget-object v9, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;->this$0:Lcom/jme3/terrain/geomipmap/TerrainGrid;

    invoke-virtual {v9, v5}, Lcom/jme3/terrain/geomipmap/TerrainGrid;->isCenter(I)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;->this$0:Lcom/jme3/terrain/geomipmap/TerrainGrid;

    invoke-virtual {v5, v2}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object v5

    check-cast v5, Lcom/jme3/scene/control/UpdateControl;

    new-instance v9, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache$1;

    invoke-direct {v9, p0, v7, v8, v6}, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache$1;-><init>(Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;Lcom/jme3/terrain/geomipmap/TerrainQuad;ILcom/jme3/math/Vector3f;)V

    invoke-virtual {v5, v9}, Lcom/jme3/scene/control/UpdateControl;->enqueue(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;->this$0:Lcom/jme3/terrain/geomipmap/TerrainGrid;

    invoke-virtual {v5, v2}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object v5

    check-cast v5, Lcom/jme3/scene/control/UpdateControl;

    new-instance v6, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache$2;

    invoke-direct {v6, p0, v7}, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache$2;-><init>(Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;Lcom/jme3/terrain/geomipmap/TerrainQuad;)V

    invoke-virtual {v5, v6}, Lcom/jme3/scene/control/UpdateControl;->enqueue(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;->this$0:Lcom/jme3/terrain/geomipmap/TerrainGrid;

    invoke-virtual {v0, v2}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/control/UpdateControl;

    new-instance v1, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache$3;

    invoke-direct {v1, p0}, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache$3;-><init>(Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;)V

    invoke-virtual {v0, v1}, Lcom/jme3/scene/control/UpdateControl;->enqueue(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method
