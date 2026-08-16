.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"

# interfaces
.implements Lu9/b;
.implements Lu9/a;


# static fields
.field public static final T:Ljava/lang/String; = "BoundingTerrainLevel"

.field public static final U:Ljava/lang/Class;


# instance fields
.field public final E:[F

.field public final F:[F

.field public final G:[F

.field public H:I

.field public I:I

.field public J:J

.field public K:Z

.field public final L:Lib/h;

.field public final M:Lib/a;

.field public N:F

.field public O:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public P:LJAVARuntime/GizmoObject;

.field public Q:F

.field public final R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public S:LJAVARuntime/Component;

.field public margin:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public verticalMargin:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->U:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    const-string v0, "native-bounding-terrain-level"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-string v0, "BoundingTerrainLevel"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->margin:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->verticalMargin:F

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->E:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->F:[F

    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->G:[F

    const/4 v0, -0x1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->H:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->I:I

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel$b;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->L:Lib/h;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel$c;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->M:Lib/a;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->N:F

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v1, 0xd6

    const/16 v2, 0x8a

    const/16 v3, 0xff

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->O:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->refreshNativeState()V

    return-void
.end method

.method public static synthetic access$100()V
    .locals 0

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->requestAllTerrainsRegen()V

    return-void
.end method

.method private computeBoundsSignature(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "root"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 v0, 0x20f

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->computeBoundsSignatureRecursive(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method private computeBoundsSignatureRecursive(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isHierarchyActive()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/16 v1, 0x11

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v3

    instance-of v4, v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v4

    if-eqz v4, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->f0()I

    move-result v3

    add-int/2addr v1, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v2

    if-ge v0, v2, :cond_3

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->computeBoundsSignatureRecursive(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_2
    return v0
.end method

.method private ensureNativePointer()V
    .locals 4

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->J:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->J:J

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

.method private refreshNativeState()V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->ensureNativePointer()V

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const/4 v4, 0x0

    iget v5, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->H:I

    invoke-virtual {v2, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->x4([FI)I

    move-result v2

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->H:I

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->computeBoundsSignature(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)I

    move-result v2

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->I:I

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v2, v3, v3}, Lgb/b;->h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;ZZ)Lgb/b;

    move-result-object v2

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o0()Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    move-result-object v4

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    iget-object v6, v2, Lgb/b;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, v2, Lgb/b;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v5, v6, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->F:[F

    invoke-virtual {v4, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o([F)[F

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->d([F)Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->z()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v4

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->u()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    iget v5, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->margin:F

    iget v6, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->verticalMargin:F

    invoke-virtual {v4, v5, v6, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->subLocal(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v5, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->margin:F

    iget v6, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->verticalMargin:F

    invoke-virtual {v2, v5, v6, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v6

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v7

    add-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v8

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v9

    add-float/2addr v8, v9

    mul-float/2addr v8, v7

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v9

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v10

    add-float/2addr v9, v10

    mul-float/2addr v9, v7

    invoke-direct {v5, v6, v8, v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v7

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v8

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v9

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-direct {v6, v7, v8, v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    invoke-virtual {v7, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->a1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object v8, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->E:[F

    invoke-virtual {v7, v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o([F)[F

    iget-object v7, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v7, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthF()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    new-array v6, v1, [F

    aput v5, v6, v3

    invoke-static {v6}, LNc/b;->T0([F)F

    move-result v5

    iput v5, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->Q:F

    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->G:[F

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v6

    aput v6, v5, v3

    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->G:[F

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v6

    aput v6, v5, v1

    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->G:[F

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v6

    const/4 v7, 0x2

    aput v6, v5, v7

    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->G:[F

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v6

    const/4 v8, 0x3

    aput v6, v5, v8

    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->G:[F

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v4

    const/4 v6, 0x4

    aput v4, v5, v6

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->G:[F

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v2

    const/4 v5, 0x5

    aput v2, v4, v5

    iget-wide v9, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->J:J

    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->E:[F

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->G:[F

    aget v12, v2, v3

    aget v13, v2, v1

    aget v14, v2, v7

    aget v15, v2, v8

    aget v16, v2, v6

    aget v17, v2, v5

    invoke-static/range {v9 .. v17}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->nativeUpdate(J[FFFFFFF)Z

    move-result v1

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->K:Z

    return-void

    :cond_1
    :goto_0
    const/4 v1, -0x1

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->H:I

    iput-boolean v3, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->K:Z

    return-void
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
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;-><init>()V

    .line 3
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->margin:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->margin:F

    .line 4
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->verticalMargin:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->verticalMargin:F

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "BoundingTerrainLevel"

    return-object v0
.end method

.method public getFocusBounding()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->Q:F

    return v0
.end method

.method public getFocusCenter()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

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
    .locals 4
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

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel$d;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;)V

    sget-object v2, LC5/b$a;->SLFloat:LC5/b$a;

    const-string v3, "margin"

    invoke-direct {p1, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel$e;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;)V

    const-string v3, "verticalMargin"

    invoke-direct {p1, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getMargin()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->margin:F

    return v0
.end method

.method public getNativeTerrainLevelPointer()J
    .locals 2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->K:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->J:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "BoundingTerrainLevel"

    return-object v0
.end method

.method public getVerticalMargin()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->verticalMargin:F

    return v0
.end method

.method public hasFocusBounding()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public onAttach()V
    .locals 10

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onAttach()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->ensureNativePointer()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->L:Lib/h;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u(Lib/h;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->M:Lib/a;

    const v8, 0x3c23d70a    # 0.01f

    const v9, 0x38d1b717    # 1.0E-4f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const v7, 0x38d1b717    # 1.0E-4f

    move-object v1, v2

    invoke-virtual/range {v1 .. v9}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lib/a;ZZZFFF)V

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->refreshNativeState()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->requestAllTerrainsRegen()V

    return-void
.end method

.method public onDetach()V
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->L:Lib/h;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->O2(Lib/h;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->M:Lib/a;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M2(Lib/a;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->K:Z

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->J:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->nativeDestroy(J)V

    iput-wide v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->J:J

    :cond_1
    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDetach()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->requestAllTerrainsRegen()V

    return-void
.end method

.method public onHierarchyActiveChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onHierarchyActiveChanged(Z)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->refreshNativeState()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->requestAllTerrainsRegen()V

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
    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->K:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->refreshNativeState()V

    :cond_1
    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->K:Z

    return p1
.end method

.method public receiveEvent(LLb/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->receiveEvent(LLb/c;)V

    instance-of p1, p1, Lc9/g;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->refreshNativeState()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->requestAllTerrainsRegen()V

    :cond_0
    return-void
.end method

.method public setMargin(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "margin"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->margin:F

    return-void
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->S:LJAVARuntime/Component;

    return-void
.end method

.method public setVerticalMargin(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "verticalMargin"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->verticalMargin:F

    return-void
.end method

.method public shouldTintIcon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->S:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/BoundingTerrainLevel;

    invoke-direct {v0, p0}, LJAVARuntime/BoundingTerrainLevel;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->S:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method

.method public updateOnSelectedHierarchy()V
    .locals 3

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->updateOnSelectedHierarchy()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->P:LJAVARuntime/GizmoObject;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/GizmoObject;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->CUBE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->E1(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;LFb/a;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object v1

    invoke-direct {v0, v1}, LJAVARuntime/GizmoObject;-><init>(LJAVARuntime/Vertex;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->P:LJAVARuntime/GizmoObject;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoElement;->setEnableLight(Z)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->P:LJAVARuntime/GizmoObject;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->O:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->P:LJAVARuntime/GizmoObject;

    sget-object v1, LJAVARuntime/GizmoElement$RenderMode;->WireFrame:LJAVARuntime/GizmoElement$RenderMode;

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoObject;->setRenderMode(LJAVARuntime/GizmoElement$RenderMode;)V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->P:LJAVARuntime/GizmoObject;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->E:[F

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoTransform;->setMatrix([F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/BoundingTerrainLevel;->P:LJAVARuntime/GizmoObject;

    invoke-static {v0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method
