.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/BiomeProceduralPaint;
.super Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lf4/c;->Biome:Lf4/c;

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
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->Q:Lf4/b;

    iget v0, p1, Lf4/b;->k0:F

    iget v1, p1, Lf4/b;->l0:F

    iget v2, p1, Lf4/b;->m0:F

    iget p1, p1, Lf4/b;->n0:F

    const/4 v3, 0x4

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    aput v1, v3, v0

    const/4 v0, 0x2

    aput v2, v3, v0

    const/4 v0, 0x3

    aput p1, v3, v0

    return-object v3
.end method

.method public i(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)[I
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

    iget v0, p1, Lf4/b;->f0:I

    iget v1, p1, Lf4/b;->g0:I

    iget v2, p1, Lf4/b;->h0:I

    iget v3, p1, Lf4/b;->i0:I

    iget p1, p1, Lf4/b;->j0:I

    filled-new-array {v0, v1, v2, v3, p1}, [I

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

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/BiomeProceduralPaint$a;

    invoke-direct {v1, p0, v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/BiomeProceduralPaint$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/BiomeProceduralPaint;Lf4/b;)V

    const-string v2, "Grass"

    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;->d(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$f;)V

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/BiomeProceduralPaint$b;

    invoke-direct {v1, p0, v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/BiomeProceduralPaint$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/BiomeProceduralPaint;Lf4/b;)V

    const-string v2, "Dirt"

    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;->d(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$f;)V

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/BiomeProceduralPaint$c;

    invoke-direct {v1, p0, v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/BiomeProceduralPaint$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/BiomeProceduralPaint;Lf4/b;)V

    const-string v2, "Rock"

    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;->d(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$f;)V

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/BiomeProceduralPaint$d;

    invoke-direct {v1, p0, v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/BiomeProceduralPaint$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/BiomeProceduralPaint;Lf4/b;)V

    const-string v2, "Sand"

    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;->d(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$f;)V

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/BiomeProceduralPaint$e;

    invoke-direct {v1, p0, v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/BiomeProceduralPaint$e;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/BiomeProceduralPaint;Lf4/b;)V

    const-string v2, "Snow"

    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;->d(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$f;)V

    new-instance v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/BiomeProceduralPaint$f;

    invoke-direct {v5, p0, v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/BiomeProceduralPaint$f;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/BiomeProceduralPaint;Lf4/b;)V

    const-string v2, "Snow height"

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;->c(Ljava/util/List;Ljava/lang/String;FFLcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$e;)V

    new-instance v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/BiomeProceduralPaint$g;

    invoke-direct {v5, p0, v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/BiomeProceduralPaint$g;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/BiomeProceduralPaint;Lf4/b;)V

    const-string v2, "Sand max"

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;->c(Ljava/util/List;Ljava/lang/String;FFLcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$e;)V

    new-instance v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/BiomeProceduralPaint$h;

    invoke-direct {v5, p0, v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/BiomeProceduralPaint$h;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/BiomeProceduralPaint;Lf4/b;)V

    const-string v2, "Rock slope"

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;->c(Ljava/util/List;Ljava/lang/String;FFLcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$e;)V

    new-instance v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/BiomeProceduralPaint$i;

    invoke-direct {v5, p0, v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/BiomeProceduralPaint$i;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/BiomeProceduralPaint;Lf4/b;)V

    const-string v2, "Noise scale"

    const v3, 0x3ba3d70a    # 0.005f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;->c(Ljava/util/List;Ljava/lang/String;FFLcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$e;)V

    return-void
.end method
