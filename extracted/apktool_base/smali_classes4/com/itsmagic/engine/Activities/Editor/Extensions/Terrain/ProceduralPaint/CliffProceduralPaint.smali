.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;
.super Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;
.source "SourceFile"


# instance fields
.field public c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

.field public d:LG4/c;

.field public e:LG4/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lf4/c;->Cliff:Lf4/c;

    invoke-virtual {v0}, Lf4/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;-><init>(Lf4/c;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic n(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;->u(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic o(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;LG4/c;)LG4/c;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;->d:LG4/c;

    return-object p1
.end method

.method public static synthetic p(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;)LG4/c;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;->e:LG4/c;

    return-object p0
.end method

.method public static synthetic q(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;LG4/c;)LG4/c;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;->e:LG4/c;

    return-object p1
.end method

.method public static synthetic r(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    return-object p0
.end method

.method public static synthetic s(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;Landroid/widget/ImageView;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;->v(Landroid/widget/ImageView;)V

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

    iget p1, p1, Lf4/b;->b:F

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    return-object v0
.end method

.method public i(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)[I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->Q:Lf4/b;

    iget p1, p1, Lf4/b;->a:I

    filled-new-array {p1}, [I

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "elements",
            "activity",
            "panel3DView",
            "terrain"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LM7/g;",
            ">;",
            "Landroid/app/Activity;",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;->l(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    iput-object p4, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    new-instance p3, LM7/c;

    new-instance p4, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$a;

    invoke-direct {p4, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;)V

    sget-object v0, LM7/c$b;->Disconnected:LM7/c$b;

    const v1, 0x7f070146

    invoke-direct {p3, v1, p4, v0, p2}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    sget-object p4, Lf5/d;->b:LAc/b;

    invoke-virtual {p3, p4}, LM7/c;->U(LAc/b;)LM7/c;

    move-result-object p3

    sget-object p4, Lf5/d;->c:LAc/b;

    invoke-virtual {p3, p4}, LM7/c;->M(LAc/b;)LM7/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v0, 0x7f060232

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    float-to-int p4, p4

    invoke-virtual {p3, p4}, LM7/c;->m0(I)LM7/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f060231

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p3, p2}, LM7/c;->Y(I)LM7/c;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final t()LC5/b;
    .locals 4

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;)V

    const v2, 0x7f0c00fb

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, LC5/b;-><init>(LD5/e;ILjava/lang/Object;)V

    return-object v0
.end method

.method public final u(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LC5/b;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;->t()LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$b;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;)V

    sget-object v4, LC5/b$a;->SLFloatSlider:LC5/b$a;

    const/high16 v6, 0x42b40000    # 90.0f

    const/4 v7, 0x0

    const-string v3, "Cliff angle"

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;FFF)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final v(Landroid/widget/ImageView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageView"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->Q:Lf4/b;

    iget v1, v1, Lf4/b;->a:I

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->layersCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->layerAt(I)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->drawLayerIconTo(Landroid/widget/ImageView;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
