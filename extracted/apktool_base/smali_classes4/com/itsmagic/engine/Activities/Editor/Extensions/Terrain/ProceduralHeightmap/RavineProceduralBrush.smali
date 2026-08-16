.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/RavineProceduralBrush;
.super Le4/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Le4/d;->Ravine:Le4/d;

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
