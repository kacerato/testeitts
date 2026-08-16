.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Utils/TerrainRaycaster;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "native-terrain-raycaster"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Utils/TerrainRaycaster$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Utils/TerrainRaycaster$a;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Utils/TerrainRaycaster;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Laa/a;ZF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "origin",
            "direction",
            "hit",
            "ignoreGizmo",
            "distance"
        }
    .end annotation

    if-eqz p3, :cond_0

    return-void

    :cond_0
    new-instance p3, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v0, 0xff

    const/4 v1, 0x0

    invoke-direct {p3, v0, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    new-instance v0, LJAVARuntime/GizmoPath;

    invoke-direct {v0}, LJAVARuntime/GizmoPath;-><init>()V

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object p3

    invoke-virtual {v0, p3}, LJAVARuntime/GizmoPath;->setColor(LJAVARuntime/Color;)V

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Laa/a;->i()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p0

    invoke-virtual {p2}, Laa/a;->i()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, LJAVARuntime/GizmoPath;->addLine(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/GizmoPath;

    goto :goto_2

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {p2, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 p3, 0x0

    cmpl-float p3, p4, p3

    if-lez p3, :cond_3

    goto :goto_1

    :cond_3
    const p4, 0x497423f0    # 999999.0f

    :goto_1
    invoke-virtual {p2, p1, p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, LJAVARuntime/GizmoPath;->addLine(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/GizmoPath;

    :goto_2
    invoke-virtual {v0}, LJAVARuntime/GizmoPath;->apply()V

    invoke-static {v0}, LJAVARuntime/Gizmo;->drawEngine(LJAVARuntime/GizmoElement;)V

    return-void
.end method

.method public static b(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;ZF)Laa/a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "origin",
            "direction",
            "terrain",
            "ignoreGizmo",
            "distance"
        }
    .end annotation

    invoke-static {p0, p1, p2, p4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Utils/TerrainRaycaster;->e(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;F)Laa/a;

    move-result-object p2

    invoke-static {p0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Utils/TerrainRaycaster;->a(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Laa/a;ZF)V

    return-object p2
.end method

.method public static c(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "origin",
            "direction",
            "terrain",
            "outPoint"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Utils/TerrainRaycaster;->e(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;F)Laa/a;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Laa/a;->i()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Laa/a;->i()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;F)Laa/a;
    .locals 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "origin",
            "direction",
            "terrain",
            "distance"
        }
    .end annotation

    move-object/from16 v0, p2

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->hasTable()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getTable()Lz9/e;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-static {}, Lm/a;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getLeveledTable()Lz9/e;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v8

    const/4 v10, 0x1

    if-gt v8, v10, :cond_3

    return-object v1

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getWidth()F

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getMaxHeight()F

    move-result v20

    const/4 v4, 0x0

    cmpg-float v5, v9, v4

    if-lez v5, :cond_a

    cmpg-float v4, v20, v4

    if-gtz v4, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v2}, Lz9/e;->c()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->isNative()Z

    move-result v4

    if-nez v4, :cond_5

    goto/16 :goto_3

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lz9/e;->c()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->isNative()Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    move-object v3, v1

    :cond_7
    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Utils/TerrainRaycaster;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v22, v4

    check-cast v22, [F

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getPointerCritical()J

    move-result-wide v4

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getPointerCritical()J

    move-result-wide v2

    :goto_1
    move-wide v6, v2

    goto :goto_2

    :cond_8
    const-wide/16 v2, 0x0

    goto :goto_1

    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getCachedGlobalPositionX()F

    move-result v11

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getCachedGlobalPositionY()F

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getCachedGlobalPositionZ()F

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v18

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v19

    move v2, v10

    move/from16 v10, v20

    move/from16 v20, p3

    move-object/from16 v21, v22

    invoke-static/range {v4 .. v21}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Utils/TerrainRaycaster;->nativeTraceRayHeightmap(JJIFFFFFFFFFFFF[F)Z

    move-result v3

    if-nez v3, :cond_9

    return-object v1

    :cond_9
    new-instance v1, Laa/a;

    invoke-direct {v1}, Laa/a;-><init>()V

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v4, 0x0

    aget v4, v22, v4

    aget v2, v22, v2

    const/4 v5, 0x2

    aget v5, v22, v5

    invoke-direct {v3, v4, v2, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-virtual {v1, v3}, Laa/a;->v(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v3, 0x3

    aget v3, v22, v3

    const/4 v4, 0x4

    aget v4, v22, v4

    const/4 v5, 0x5

    aget v5, v22, v5

    invoke-direct {v2, v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-virtual {v1, v2}, Laa/a;->s(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {v1, v2}, Laa/a;->u(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    const/4 v2, 0x6

    aget v3, v22, v2

    invoke-virtual {v1, v3}, Laa/a;->setDistance(F)V

    aget v2, v22, v2

    invoke-virtual {v1, v2}, Laa/a;->z(F)V

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1, v2}, Laa/a;->setGameObject(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1, v0}, Laa/a;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :cond_a
    :goto_3
    return-object v1
.end method

.method public static e(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;F)Laa/a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "origin",
            "direction",
            "terrain",
            "distance"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Utils/TerrainRaycaster;->d(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;F)Laa/a;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static native nativeTraceRayHeightmap(JJIFFFFFFFFFFFF[F)Z
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
            0x0
        }
        names = {
            "tableBufferPointer",
            "levelTableBufferPointer",
            "resolution",
            "width",
            "maxHeight",
            "terrainX",
            "terrainY",
            "terrainZ",
            "originX",
            "originY",
            "originZ",
            "dirX",
            "dirY",
            "dirZ",
            "distance",
            "outData"
        }
    .end annotation
.end method
