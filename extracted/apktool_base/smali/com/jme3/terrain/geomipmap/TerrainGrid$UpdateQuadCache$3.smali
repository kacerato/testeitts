.class Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;


# direct methods
.method public constructor <init>(Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache$3;->this$1:Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache$3;->this$1:Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;

    iget-object v0, v0, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;->this$0:Lcom/jme3/terrain/geomipmap/TerrainGrid;

    invoke-virtual {v0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Spatial;

    instance-of v2, v1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    invoke-virtual {v1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->resetCachedNeighbours()V

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fixed normals "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache$3;->this$1:Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;

    iget-object v2, v2, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;->location:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v2

    iget-object v3, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache$3;->this$1:Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;

    iget-object v3, v3, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;->this$0:Lcom/jme3/terrain/geomipmap/TerrainGrid;

    iget v3, v3, Lcom/jme3/terrain/geomipmap/TerrainQuad;->size:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache$3;->this$1:Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;

    iget-object v0, v0, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;->this$0:Lcom/jme3/terrain/geomipmap/TerrainGrid;

    invoke-virtual {v0}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->setNeedToRecalculateNormals()V

    const/4 v0, 0x0

    return-object v0
.end method
