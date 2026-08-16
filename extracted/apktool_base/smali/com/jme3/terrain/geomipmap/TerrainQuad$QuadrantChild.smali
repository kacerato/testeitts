.class Lcom/jme3/terrain/geomipmap/TerrainQuad$QuadrantChild;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/terrain/geomipmap/TerrainQuad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QuadrantChild"
.end annotation


# instance fields
.field child:Lcom/jme3/scene/Spatial;

.field col:I

.field row:I

.field final synthetic this$0:Lcom/jme3/terrain/geomipmap/TerrainQuad;


# direct methods
.method public constructor <init>(Lcom/jme3/terrain/geomipmap/TerrainQuad;IILcom/jme3/scene/Spatial;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad$QuadrantChild;->this$0:Lcom/jme3/terrain/geomipmap/TerrainQuad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad$QuadrantChild;->col:I

    iput p3, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad$QuadrantChild;->row:I

    iput-object p4, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad$QuadrantChild;->child:Lcom/jme3/scene/Spatial;

    return-void
.end method
