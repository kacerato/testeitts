.class Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache$2;
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


# direct methods
.method public constructor <init>(Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;Lcom/jme3/terrain/geomipmap/TerrainQuad;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache$2;->val$newQuad:Lcom/jme3/terrain/geomipmap/TerrainQuad;

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache$2;->this$1:Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache$2;->this$1:Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;

    iget-object v0, v0, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;->this$0:Lcom/jme3/terrain/geomipmap/TerrainGrid;

    iget-object v1, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache$2;->val$newQuad:Lcom/jme3/terrain/geomipmap/TerrainQuad;

    invoke-virtual {v0, v1}, Lcom/jme3/terrain/geomipmap/TerrainGrid;->removeQuad(Lcom/jme3/terrain/geomipmap/TerrainQuad;)V

    const/4 v0, 0x0

    return-object v0
.end method
