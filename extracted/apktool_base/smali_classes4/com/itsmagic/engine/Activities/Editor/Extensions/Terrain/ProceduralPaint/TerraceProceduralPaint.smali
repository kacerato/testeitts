.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/TerraceProceduralPaint;
.super Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lf4/c;->Terrace:Lf4/c;

    invoke-virtual {v0}, Lf4/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;-><init>(Lf4/c;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public native applyNative(J[JIIIIIFFFFFF[I[FJII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "heightTablePointer",
            "layerPointers",
            "terrainResolution",
            "startX",
            "startY",
            "endX",
            "endY",
            "terrainWidth",
            "terrainMaxHeight",
            "brushStartX",
            "brushStartY",
            "brushSize",
            "intensity",
            "layerOptions",
            "floatOptions",
            "brushAlphaPointer",
            "brushWidth",
            "brushHeight"
        }
    .end annotation
.end method

.method public g(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)[F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->Q:Lf4/b;

    iget v0, p1, Lf4/b;->I:F

    iget v1, p1, Lf4/b;->J:F

    iget p1, p1, Lf4/b;->K:F

    const/4 v2, 0x3

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    const/4 v0, 0x2

    aput p1, v2, v0

    return-object v2
.end method

.method public i(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)[I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->Q:Lf4/b;

    iget v0, p1, Lf4/b;->F:I

    iget v1, p1, Lf4/b;->G:I

    iget p1, p1, Lf4/b;->H:I

    filled-new-array {v0, v1, p1}, [I

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entries",
            "terrain"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LC5/b;",
            ">;",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;",
            ")V"
        }
    .end annotation

    iget-object v6, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->Q:Lf4/b;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/TerraceProceduralPaint$a;

    invoke-direct {v1, p0, v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/TerraceProceduralPaint$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/TerraceProceduralPaint;Lf4/b;)V

    const-string v2, "Texture A"

    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;->d(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$f;)V

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/TerraceProceduralPaint$b;

    invoke-direct {v1, p0, v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/TerraceProceduralPaint$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/TerraceProceduralPaint;Lf4/b;)V

    const-string v2, "Texture B"

    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;->d(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$f;)V

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/TerraceProceduralPaint$c;

    invoke-direct {v1, p0, v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/TerraceProceduralPaint$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/TerraceProceduralPaint;Lf4/b;)V

    const-string v2, "Texture C"

    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;->d(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$f;)V

    new-instance v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/TerraceProceduralPaint$d;

    invoke-direct {v5, p0, v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/TerraceProceduralPaint$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/TerraceProceduralPaint;Lf4/b;)V

    const-string v2, "Spacing"

    const v3, 0x3c23d70a    # 0.01f

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;->c(Ljava/util/List;Ljava/lang/String;FFLcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$e;)V

    new-instance v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/TerraceProceduralPaint$e;

    invoke-direct {v5, p0, v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/TerraceProceduralPaint$e;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/TerraceProceduralPaint;Lf4/b;)V

    const-string v2, "Offset"

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;->c(Ljava/util/List;Ljava/lang/String;FFLcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$e;)V

    new-instance v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/TerraceProceduralPaint$f;

    invoke-direct {v5, p0, v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/TerraceProceduralPaint$f;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/TerraceProceduralPaint;Lf4/b;)V

    const-string v2, "Softness"

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;->c(Ljava/util/List;Ljava/lang/String;FFLcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$e;)V

    return-void
.end method
