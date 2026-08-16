.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"

# interfaces
.implements Lu9/b;
.implements Lu9/a;


# static fields
.field public static final O:Ljava/lang/String; = "BoxTerrainLevel"

.field public static final P:Ljava/lang/Class;


# instance fields
.field public final E:[F

.field public final F:[F

.field public G:I

.field public H:J

.field public I:Z

.field public final J:Lib/h;

.field public K:F

.field public L:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public M:LJAVARuntime/GizmoObject;

.field public N:LJAVARuntime/Component;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->P:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    const-string v0, "native-box-terrain-level"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-string v0, "BoxTerrainLevel"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->E:[F

    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->F:[F

    const/4 v0, -0x1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->G:I

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel$b;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->J:Lib/h;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->K:F

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v1, 0xd6

    const/16 v2, 0x8a

    const/16 v3, 0xff

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->L:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;)[F
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->E:[F

    return-object p0
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->updateNativeState()V

    return-void
.end method

.method public static synthetic access$200()V
    .locals 0

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->requestAllTerrainsRegen()V

    return-void
.end method

.method private static calculateMatrixBounds([F[F)V
    .locals 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "matrix",
            "out"
        }
    .end annotation

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    const/4 v2, 0x0

    move v3, v0

    move v4, v1

    move v5, v4

    move v6, v5

    move v7, v2

    move v1, v3

    :goto_0
    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x1

    const/4 v11, 0x2

    if-ge v7, v11, :cond_b

    const/high16 v13, -0x41000000    # -0.5f

    if-nez v7, :cond_0

    move v14, v13

    goto :goto_1

    :cond_0
    const/high16 v14, 0x3f000000    # 0.5f

    :goto_1
    move v15, v2

    :goto_2
    if-ge v15, v11, :cond_a

    if-nez v15, :cond_1

    move/from16 v16, v13

    goto :goto_3

    :cond_1
    const/high16 v16, 0x3f000000    # 0.5f

    :goto_3
    move v12, v2

    :goto_4
    if-ge v12, v11, :cond_9

    if-nez v12, :cond_2

    move/from16 v17, v13

    goto :goto_5

    :cond_2
    const/high16 v17, 0x3f000000    # 0.5f

    :goto_5
    aget v18, p0, v2

    mul-float v18, v18, v14

    aget v19, p0, v9

    mul-float v19, v19, v16

    add-float v18, v18, v19

    const/16 v19, 0x8

    aget v19, p0, v19

    mul-float v19, v19, v17

    add-float v18, v18, v19

    const/16 v19, 0xc

    aget v19, p0, v19

    add-float v18, v18, v19

    aget v19, p0, v10

    mul-float v19, v19, v14

    aget v20, p0, v8

    mul-float v20, v20, v16

    add-float v19, v19, v20

    const/16 v20, 0x9

    aget v20, p0, v20

    mul-float v20, v20, v17

    add-float v19, v19, v20

    const/16 v20, 0xd

    aget v20, p0, v20

    add-float v19, v19, v20

    aget v20, p0, v11

    mul-float v20, v20, v14

    const/16 v21, 0x6

    aget v21, p0, v21

    mul-float v21, v21, v16

    add-float v20, v20, v21

    const/16 v21, 0xa

    aget v21, p0, v21

    mul-float v21, v21, v17

    add-float v20, v20, v21

    const/16 v17, 0xe

    aget v17, p0, v17

    add-float v20, v20, v17

    cmpg-float v17, v18, v0

    if-gez v17, :cond_3

    move/from16 v0, v18

    :cond_3
    cmpl-float v17, v18, v4

    if-lez v17, :cond_4

    move/from16 v4, v18

    :cond_4
    cmpg-float v17, v19, v1

    if-gez v17, :cond_5

    move/from16 v1, v19

    :cond_5
    cmpl-float v17, v19, v5

    if-lez v17, :cond_6

    move/from16 v5, v19

    :cond_6
    cmpg-float v17, v20, v3

    if-gez v17, :cond_7

    move/from16 v3, v20

    :cond_7
    cmpl-float v17, v20, v6

    if-lez v17, :cond_8

    move/from16 v6, v20

    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_9
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_b
    aput v0, p1, v2

    aput v4, p1, v10

    aput v1, p1, v11

    const/4 v0, 0x3

    aput v5, p1, v0

    aput v3, p1, v9

    aput v6, p1, v8

    return-void
.end method

.method private ensureNativePointer()V
    .locals 4

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->H:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->H:J

    :cond_0
    return-void
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeDestroy(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation
.end method

.method private static native nativeUpdate(J[FFFFFFF)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "pointer",
            "matrix",
            "minX",
            "maxX",
            "minY",
            "maxY",
            "minZ",
            "maxZ"
        }
    .end annotation
.end method

.method private static requestAllTerrainsRegen()V
    .locals 3

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-static {v0}, LR8/f;->h(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->requestRegenLevelTable()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateNativeState()V
    .locals 11

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->ensureNativePointer()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->E:[F

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->F:[F

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->calculateMatrixBounds([F[F)V

    iget-wide v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->H:J

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->E:[F

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->F:[F

    const/4 v1, 0x0

    aget v5, v0, v1

    const/4 v1, 0x1

    aget v6, v0, v1

    const/4 v1, 0x2

    aget v7, v0, v1

    const/4 v1, 0x3

    aget v8, v0, v1

    const/4 v1, 0x4

    aget v9, v0, v1

    const/4 v1, 0x5

    aget v10, v0, v1

    invoke-static/range {v2 .. v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->nativeUpdate(J[FFFFFFF)Z

    move-result v0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->I:Z

    return-void
.end method


# virtual methods
.method public allowLeveling(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 1

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;-><init>()V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "BoxTerrainLevel"

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f070237

    return v0
.end method

.method public getInspectorColor(Landroid/content/Context;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const p1, 0x7f0500a2

    return p1
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    return-object p1
.end method

.method public getNativeTerrainLevelPointer()J
    .locals 2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->I:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->H:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "BoxTerrainLevel"

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public onAttach()V
    .locals 3

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onAttach()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->J:Lib/h;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u(Lib/h;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->E:[F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->G:I

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->x4([FI)I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->G:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->G:I

    :goto_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->ensureNativePointer()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->updateNativeState()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->requestAllTerrainsRegen()V

    return-void
.end method

.method public onDetach()V
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->J:Lib/h;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->O2(Lib/h;)V

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->G:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->I:Z

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->H:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->nativeDestroy(J)V

    iput-wide v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->H:J

    :cond_1
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->requestAllTerrainsRegen()V

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDetach()V

    return-void
.end method

.method public onHierarchyActiveChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onHierarchyActiveChanged(Z)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->E:[F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->G:I

    invoke-virtual {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->x4([FI)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->G:I

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->updateNativeState()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->requestAllTerrainsRegen()V

    return-void
.end method

.method public prepareNativeTerrainLevel(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->I:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->updateNativeState()V

    :cond_1
    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->I:Z

    return p1
.end method

.method public setRuntime(LJAVARuntime/Component;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->N:LJAVARuntime/Component;

    return-void
.end method

.method public shouldTintIcon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->N:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/BoxTerrainLevel;

    invoke-direct {v0, p0}, LJAVARuntime/BoxTerrainLevel;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->N:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method

.method public updateOnSelectedHierarchy()V
    .locals 3

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->updateOnSelectedHierarchy()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->M:LJAVARuntime/GizmoObject;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/GizmoObject;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->CUBE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->E1(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;LFb/a;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object v1

    invoke-direct {v0, v1}, LJAVARuntime/GizmoObject;-><init>(LJAVARuntime/Vertex;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->M:LJAVARuntime/GizmoObject;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoElement;->setEnableLight(Z)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->M:LJAVARuntime/GizmoObject;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->L:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->M:LJAVARuntime/GizmoObject;

    sget-object v1, LJAVARuntime/GizmoElement$RenderMode;->WireFrame:LJAVARuntime/GizmoElement$RenderMode;

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoObject;->setRenderMode(LJAVARuntime/GizmoElement$RenderMode;)V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->M:LJAVARuntime/GizmoObject;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->E:[F

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoTransform;->setMatrix([F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoxTerrainLevel;->M:LJAVARuntime/GizmoObject;

    invoke-static {v0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method
