.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/HeightBandProceduralPaint;
.super Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lf4/c;->HeightBand:Lf4/c;

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

    iget v0, p1, Lf4/b;->l:F

    iget v1, p1, Lf4/b;->m:F

    iget v2, p1, Lf4/b;->n:F

    iget p1, p1, Lf4/b;->o:F

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
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->Q:Lf4/b;

    iget v0, p1, Lf4/b;->h:I

    iget v1, p1, Lf4/b;->i:I

    iget v2, p1, Lf4/b;->j:I

    iget p1, p1, Lf4/b;->k:I

    filled-new-array {v0, v1, v2, p1}, [I

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

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/HeightBandProceduralPaint$a;

    invoke-direct {v1, p0, v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/HeightBandProceduralPaint$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/HeightBandProceduralPaint;Lf4/b;)V

    const-string v2, "Low"

    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;->d(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$f;)V

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/HeightBandProceduralPaint$b;

    invoke-direct {v1, p0, v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/HeightBandProceduralPaint$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/HeightBandProceduralPaint;Lf4/b;)V

    const-string v2, "Mid"

    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;->d(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$f;)V

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/HeightBandProceduralPaint$c;

    invoke-direct {v1, p0, v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/HeightBandProceduralPaint$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/HeightBandProceduralPaint;Lf4/b;)V

    const-string v2, "High"

    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;->d(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$f;)V

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/HeightBandProceduralPaint$d;

    invoke-direct {v1, p0, v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/HeightBandProceduralPaint$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/HeightBandProceduralPaint;Lf4/b;)V

    const-string v2, "Top"

    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;->d(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$f;)V

    new-instance v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/HeightBandProceduralPaint$e;

    invoke-direct {v5, p0, v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/HeightBandProceduralPaint$e;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/HeightBandProceduralPaint;Lf4/b;)V

    const-string v2, "Low height"

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;->c(Ljava/util/List;Ljava/lang/String;FFLcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$e;)V

    new-instance v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/HeightBandProceduralPaint$f;

    invoke-direct {v5, p0, v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/HeightBandProceduralPaint$f;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/HeightBandProceduralPaint;Lf4/b;)V

    const-string v2, "Mid height"

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;->c(Ljava/util/List;Ljava/lang/String;FFLcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$e;)V

    new-instance v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/HeightBandProceduralPaint$g;

    invoke-direct {v5, p0, v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/HeightBandProceduralPaint$g;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/HeightBandProceduralPaint;Lf4/b;)V

    const-string v2, "High height"

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;->c(Ljava/util/List;Ljava/lang/String;FFLcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$e;)V

    new-instance v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/HeightBandProceduralPaint$h;

    invoke-direct {v5, p0, v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/HeightBandProceduralPaint$h;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/HeightBandProceduralPaint;Lf4/b;)V

    const-string v2, "Softness"

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;->c(Ljava/util/List;Ljava/lang/String;FFLcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$e;)V

    return-void
.end method
