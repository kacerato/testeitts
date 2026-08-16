.class Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache$1;
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

.field final synthetic val$newQuad:Lcom/jme3/terrain/geomipmap/TerrainQuad;

.field final synthetic val$quadCell:Lcom/jme3/math/Vector3f;

.field final synthetic val$quadrant:I


# direct methods
.method public constructor <init>(Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;Lcom/jme3/terrain/geomipmap/TerrainQuad;ILcom/jme3/math/Vector3f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache$1;->val$newQuad:Lcom/jme3/terrain/geomipmap/TerrainQuad;

    iput p3, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache$1;->val$quadrant:I

    iput-object p4, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache$1;->val$quadCell:Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache$1;->this$1:Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache$1;->val$newQuad:Lcom/jme3/terrain/geomipmap/TerrainQuad;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache$1;->this$1:Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;

    iget-object v0, v0, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;->this$0:Lcom/jme3/terrain/geomipmap/TerrainGrid;

    iget-object v1, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache$1;->val$newQuad:Lcom/jme3/terrain/geomipmap/TerrainQuad;

    iget v2, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache$1;->val$quadrant:I

    iget-object v3, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache$1;->val$quadCell:Lcom/jme3/math/Vector3f;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jme3/terrain/geomipmap/TerrainGrid;->attachQuadAt(Lcom/jme3/terrain/geomipmap/TerrainQuad;ILcom/jme3/math/Vector3f;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache$1;->this$1:Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;

    iget-object v0, v0, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;->this$0:Lcom/jme3/terrain/geomipmap/TerrainGrid;

    iget-object v1, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache$1;->val$newQuad:Lcom/jme3/terrain/geomipmap/TerrainQuad;

    iget v2, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache$1;->val$quadrant:I

    iget-object v3, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache$1;->val$quadCell:Lcom/jme3/math/Vector3f;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jme3/terrain/geomipmap/TerrainGrid;->attachQuadAt(Lcom/jme3/terrain/geomipmap/TerrainQuad;ILcom/jme3/math/Vector3f;Z)V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
