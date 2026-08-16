.class public Lcom/jme3/terrain/geomipmap/grid/FractalTileLoader$FloatBufferHeightMap;
.super Lcom/jme3/terrain/heightmap/AbstractHeightMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/terrain/geomipmap/grid/FractalTileLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FloatBufferHeightMap"
.end annotation


# instance fields
.field private final buffer:Ljava/nio/FloatBuffer;

.field final synthetic this$0:Lcom/jme3/terrain/geomipmap/grid/FractalTileLoader;


# direct methods
.method public constructor <init>(Lcom/jme3/terrain/geomipmap/grid/FractalTileLoader;Ljava/nio/FloatBuffer;)V
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

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/grid/FractalTileLoader$FloatBufferHeightMap;->this$0:Lcom/jme3/terrain/geomipmap/grid/FractalTileLoader;

    invoke-direct {p0}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;-><init>()V

    iput-object p2, p0, Lcom/jme3/terrain/geomipmap/grid/FractalTileLoader$FloatBufferHeightMap;->buffer:Ljava/nio/FloatBuffer;

    return-void
.end method


# virtual methods
.method public load()Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/grid/FractalTileLoader$FloatBufferHeightMap;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->array()[F

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    const/4 v0, 0x1

    return v0
.end method
