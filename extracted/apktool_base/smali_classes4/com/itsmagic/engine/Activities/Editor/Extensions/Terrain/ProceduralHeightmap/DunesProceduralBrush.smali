.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/DunesProceduralBrush;
.super Le4/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Le4/d;->Dunes:Le4/d;

    invoke-virtual {v0}, Le4/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Le4/a;-><init>(Le4/d;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public native applyNative(JIIIIIFFFFFFFFIFFJ)V
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
            "tablePointer",
            "terrainResolution",
            "startX",
            "startY",
            "endX",
            "endY",
            "terrainWidth",
            "terrainMaxHeight",
            "terrainOriginX",
            "terrainOriginZ",
            "brushStartX",
            "brushStartY",
            "brushSize",
            "intensity",
            "proceduralOption",
            "directionX",
            "directionY",
            "seed"
        }
    .end annotation
.end method

.method public d(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
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

    invoke-super {p0, p1, p2, p3, p4}, Le4/a;->d(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    new-instance p3, LM7/c;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/DunesProceduralBrush$a;

    invoke-direct {v0, p0, p4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/DunesProceduralBrush$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/DunesProceduralBrush;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    sget-object p4, LM7/c$b;->Disconnected:LM7/c$b;

    const v1, 0x7f07009f

    invoke-direct {p3, v1, v0, p4, p2}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

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
