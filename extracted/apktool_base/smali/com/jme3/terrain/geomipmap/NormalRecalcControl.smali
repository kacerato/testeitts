.class public Lcom/jme3/terrain/geomipmap/NormalRecalcControl;
.super Lcom/jme3/scene/control/AbstractControl;
.source "SourceFile"


# instance fields
.field private terrain:Lcom/jme3/terrain/geomipmap/TerrainQuad;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/control/AbstractControl;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/terrain/geomipmap/TerrainQuad;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/jme3/scene/control/AbstractControl;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/NormalRecalcControl;->terrain:Lcom/jme3/terrain/geomipmap/TerrainQuad;

    return-void
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/jme3/scene/control/AbstractControl;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/jme3/terrain/geomipmap/NormalRecalcControl;->terrain:Lcom/jme3/terrain/geomipmap/TerrainQuad;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/NormalRecalcControl;->terrain:Lcom/jme3/terrain/geomipmap/TerrainQuad;

    return-void
.end method

.method public controlRender(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 0

    return-void
.end method

.method public controlUpdate(F)V
    .locals 0

    iget-object p1, p0, Lcom/jme3/terrain/geomipmap/NormalRecalcControl;->terrain:Lcom/jme3/terrain/geomipmap/TerrainQuad;

    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->updateNormals()V

    return-void
.end method

.method public getTerrain()Lcom/jme3/terrain/geomipmap/TerrainQuad;
    .locals 1

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/NormalRecalcControl;->terrain:Lcom/jme3/terrain/geomipmap/TerrainQuad;

    return-object v0
.end method

.method public jmeClone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Lcom/jme3/scene/control/AbstractControl;->jmeClone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/terrain/geomipmap/NormalRecalcControl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jme3/scene/control/AbstractControl;->setEnabled(Z)V

    return-object v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "terrain"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/NormalRecalcControl;->terrain:Lcom/jme3/terrain/geomipmap/TerrainQuad;

    return-void
.end method

.method public setSpatial(Lcom/jme3/scene/Spatial;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->setSpatial(Lcom/jme3/scene/Spatial;)V

    instance-of v0, p1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/NormalRecalcControl;->terrain:Lcom/jme3/terrain/geomipmap/TerrainQuad;

    :cond_0
    return-void
.end method

.method public setTerrain(Lcom/jme3/terrain/geomipmap/TerrainQuad;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/NormalRecalcControl;->terrain:Lcom/jme3/terrain/geomipmap/TerrainQuad;

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/NormalRecalcControl;->terrain:Lcom/jme3/terrain/geomipmap/TerrainQuad;

    const-string v1, "terrain"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
