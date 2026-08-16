.class public abstract Le4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le4/d;

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "native-terrain-procedural-brushes"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Le4/d;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "displayName"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Le4/a;->a:Le4/d;

    iput-object p2, p0, Le4/a;->b:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "displayName can\'t be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "type can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;FFLcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Ljava/lang/Runnable;)V
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "terrain",
            "intensity",
            "size",
            "worldLocation",
            "afterFinish"
        }
    .end annotation

    move-object/from16 v7, p1

    move-object/from16 v0, p4

    if-eqz v7, :cond_6

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->isDataLoaded()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    cmpg-float v1, p3, v1

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getTable()Lz9/e;

    move-result-object v10

    if-nez v10, :cond_3

    if-eqz p5, :cond_2

    invoke-interface/range {p5 .. p5}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getCachedGlobalPositionX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getCachedGlobalPositionZ()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v8

    iget v9, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->width:F

    iget v12, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->maxHeight:F

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getProceduralBrushStrokeSeed()J

    move-result-wide v17

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    invoke-virtual {v7, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getProceduralBrushDirection(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v15, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    move/from16 v16, v0

    iget-object v0, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->P:Le4/c;

    iget v14, v0, Le4/c;->a:I

    new-instance v19, Le4/a$a;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v6, p3

    move-object/from16 v7, p1

    move-object/from16 v11, p5

    move/from16 v13, p2

    invoke-direct/range {v0 .. v18}, Le4/a$a;-><init>(Le4/a;FFFFFLcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;IFLz9/e;Ljava/lang/Runnable;FFIFFJ)V

    invoke-static/range {v19 .. v19}, LO9/b;->d(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    :goto_0
    if-eqz p5, :cond_5

    invoke-interface/range {p5 .. p5}, Ljava/lang/Runnable;->run()V

    :cond_5
    return-void

    :cond_6
    :goto_1
    if-eqz p5, :cond_7

    invoke-interface/range {p5 .. p5}, Ljava/lang/Runnable;->run()V

    :cond_7
    return-void
.end method

.method public abstract applyNative(JIIIIIFFFFFFFFIFFJ)V
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

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le4/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Le4/d;
    .locals 1

    iget-object v0, p0, Le4/a;->a:Le4/d;

    return-object v0
.end method

.method public d(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 0
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

    return-void
.end method
