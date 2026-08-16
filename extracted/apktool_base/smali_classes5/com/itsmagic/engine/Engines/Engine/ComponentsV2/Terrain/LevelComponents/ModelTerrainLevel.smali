.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"

# interfaces
.implements Lu9/b;
.implements Lu9/a;


# static fields
.field public static final Q:Ljava/lang/String; = "ModelTerrainLevel"

.field public static final R:Ljava/lang/Class;

.field public static final S:F = 0.25f

.field public static final T:I = 0x8

.field public static final U:I = 0x200


# instance fields
.field public final E:[F

.field public final F:[F

.field public G:I

.field public H:J

.field public I:Z

.field public J:Z

.field public K:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public L:I

.field public M:I

.field public final N:Lib/h;

.field public final O:Lib/a;

.field public P:LJAVARuntime/Component;

.field private margin:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private verticalMargin:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private verticalOffset:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->R:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    const-string v0, "native-model-terrain-level"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "ModelTerrainLevel"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->margin:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->verticalMargin:F

    const v0, 0x3cf5c28f    # 0.03f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->verticalOffset:F

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->E:[F

    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->F:[F

    const/4 v0, -0x1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->G:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->J:Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel$b;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->N:Lib/h;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel$c;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->O:Lib/a;

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;)[F
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->E:[F

    return-object p0
.end method

.method public static synthetic access$102(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->J:Z

    return p1
.end method

.method public static synthetic access$200()V
    .locals 0

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->requestAllTerrainsRegen()V

    return-void
.end method

.method public static synthetic access$300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->margin:F

    return p0
.end method

.method public static synthetic access$302(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->margin:F

    return p1
.end method

.method public static synthetic access$400(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->verticalMargin:F

    return p0
.end method

.method public static synthetic access$402(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->verticalMargin:F

    return p1
.end method

.method private static calculateCacheResolution(F)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    const/high16 v0, 0x3e800000    # 0.25f

    div-float/2addr p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    add-int/lit8 p0, p0, 0x1

    const/16 v0, 0x8

    if-ge p0, v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x200

    if-le p0, v0, :cond_1

    return v0

    :cond_1
    return p0
.end method

.method private static collectModelRenderers(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v3

    if-eqz v3, :cond_1

    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->isSuppressRender()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->collectModelRenderers(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private ensureNativePointer()V
    .locals 4

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->H:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->H:J

    :cond_0
    return-void
.end method

.method private static isRendererNativeCacheReady(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderer"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->W0()I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->V0()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v1

    if-eqz v2, :cond_5

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validate()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->validate()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_5

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v1

    if-ge v1, v3, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getRenderMatrix()[F

    move-result-object p0

    if-eqz p0, :cond_5

    array-length p0, p0

    const/16 v1, 0x10

    if-lt p0, v1, :cond_5

    const/4 v0, 0x1

    :cond_5
    :goto_0
    return v0
.end method

.method private static native nativeBuildCache(JJIIFFFFFF[J[J[I[FIFFF)Z
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
            "pointer",
            "cacheBufferPointer",
            "cacheWidth",
            "cacheHeight",
            "minX",
            "maxX",
            "minY",
            "maxY",
            "minZ",
            "maxZ",
            "vertexPointers",
            "trianglePointers",
            "triangleCounts",
            "matrices",
            "rendererCount",
            "margin",
            "verticalMargin",
            "verticalOffset"
        }
    .end annotation
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

.method private rebuildNativeCache()Z
    .locals 31

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->ensureNativePointer()V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->collectModelRenderers(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iput-boolean v3, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->I:Z

    return v3

    :cond_0
    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    move v5, v2

    move v9, v3

    move v10, v9

    move v15, v10

    move v6, v4

    move v7, v6

    move v8, v7

    move v4, v5

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    const/16 v18, 0x1

    if-ge v9, v11, :cond_9

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    invoke-static {v11}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->isRendererNativeCacheReady(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)Z

    move-result v12

    if-nez v12, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->d0()Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-result-object v12

    if-nez v12, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getRenderMatrix()[F

    move-result-object v10

    invoke-virtual {v12, v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->d([F)Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->z()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v11

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->u()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v10

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v12

    cmpg-float v12, v12, v6

    if-gez v12, :cond_3

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v6

    :cond_3
    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v12

    cmpl-float v12, v12, v2

    if-lez v12, :cond_4

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    :cond_4
    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v12

    cmpg-float v12, v12, v7

    if-gez v12, :cond_5

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v7

    :cond_5
    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v12

    cmpl-float v12, v12, v4

    if-lez v12, :cond_6

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v4

    :cond_6
    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v12

    cmpg-float v12, v12, v8

    if-gez v12, :cond_7

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v8

    :cond_7
    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v11

    cmpl-float v11, v11, v5

    if-lez v11, :cond_8

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v5

    :cond_8
    add-int/lit8 v15, v15, 0x1

    move/from16 v10, v18

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_9
    if-eqz v10, :cond_f

    if-gtz v15, :cond_a

    goto/16 :goto_4

    :cond_a
    iget-object v9, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->F:[F

    iget v10, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->margin:F

    sub-float v11, v6, v10

    aput v11, v9, v3

    add-float v11, v2, v10

    aput v11, v9, v18

    iget v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->verticalMargin:F

    sub-float/2addr v7, v11

    const/16 v19, 0x2

    aput v7, v9, v19

    add-float/2addr v4, v11

    const/4 v7, 0x3

    aput v4, v9, v7

    sub-float v4, v8, v10

    const/16 v21, 0x4

    aput v4, v9, v21

    add-float/2addr v10, v5

    const/4 v4, 0x5

    aput v10, v9, v4

    sub-float/2addr v2, v6

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->calculateCacheResolution(F)I

    move-result v2

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->L:I

    sub-float/2addr v5, v8

    invoke-static {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->calculateCacheResolution(F)I

    move-result v2

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->M:I

    iget v5, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->L:I

    mul-int/2addr v5, v2

    mul-int/lit8 v5, v5, 0x2

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->K:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validate()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->K:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v2

    if-eq v2, v5, :cond_c

    :cond_b
    new-instance v2, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v2, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    iput-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->K:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    :cond_c
    new-array v2, v15, [J

    new-array v5, v15, [J

    new-array v6, v15, [I

    mul-int/lit8 v8, v15, 0x10

    new-array v8, v8, [F

    new-array v9, v15, [Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    new-array v10, v15, [Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move v11, v3

    move v12, v11

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    if-ge v11, v13, :cond_e

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    invoke-static {v13}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->isRendererNativeCacheReady(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)Z

    move-result v14

    if-nez v14, :cond_d

    goto :goto_3

    :cond_d
    invoke-virtual {v13}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v14

    invoke-virtual {v14}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v16

    invoke-virtual {v14}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->V0()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v17

    aput-object v16, v9, v12

    aput-object v17, v10, v12

    invoke-virtual/range {v16 .. v16}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getPointerCritical()J

    move-result-wide v22

    aput-wide v22, v2, v12

    invoke-virtual/range {v17 .. v17}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getPointerCritical()J

    move-result-wide v16

    aput-wide v16, v5, v12

    invoke-virtual {v14}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->W0()I

    move-result v14

    aput v14, v6, v12

    invoke-virtual {v13}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getRenderMatrix()[F

    move-result-object v13

    mul-int/lit8 v14, v12, 0x10

    const/16 v4, 0x10

    invoke-static {v13, v3, v8, v14, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v12, v12, 0x1

    :goto_3
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x5

    goto :goto_2

    :cond_e
    iget-wide v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->H:J

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->K:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getPointerCritical()J

    move-result-wide v13

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->L:I

    move v4, v15

    move v15, v1

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->M:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->F:[F

    aget v17, v1, v3

    aget v18, v1, v18

    aget v19, v1, v19

    aget v20, v1, v7

    aget v21, v1, v21

    const/4 v3, 0x5

    aget v22, v1, v3

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->margin:F

    move/from16 v28, v1

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->verticalMargin:F

    move/from16 v29, v1

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->verticalOffset:F

    move/from16 v30, v1

    move-object/from16 v23, v2

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v8

    move/from16 v27, v4

    invoke-static/range {v11 .. v30}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->nativeBuildCache(JJIIFFFFFF[J[J[I[FIFFF)Z

    move-result v1

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->I:Z

    xor-int/lit8 v2, v1, 0x1

    iput-boolean v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->J:Z

    return v1

    :cond_f
    :goto_4
    iput-boolean v3, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->I:Z

    return v3
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
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;-><init>()V

    .line 3
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->margin:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->margin:F

    .line 4
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->verticalMargin:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->verticalMargin:F

    .line 5
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->verticalOffset:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->verticalOffset:F

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "ModelTerrainLevel"

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

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel$d;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;)V

    sget-object v2, LC5/b$a;->SLFloat:LC5/b$a;

    const-string v3, "margin"

    invoke-direct {p1, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel$e;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;)V

    const-string v3, "verticalMargin"

    invoke-direct {p1, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getMargin()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->margin:F

    return v0
.end method

.method public getNativeTerrainLevelPointer()J
    .locals 2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->I:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->H:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "ModelTerrainLevel"

    return-object v0
.end method

.method public getVerticalMargin()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->verticalMargin:F

    return v0
.end method

.method public getVerticalOffset()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->verticalOffset:F

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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->N:Lib/h;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u(Lib/h;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->O:Lib/a;

    const v8, 0x3c23d70a    # 0.01f

    const v9, 0x38d1b717    # 1.0E-4f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const v7, 0x38d1b717    # 1.0E-4f

    move-object v1, v2

    invoke-virtual/range {v1 .. v9}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lib/a;ZZZFFF)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->E:[F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->G:I

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->x4([FI)I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->G:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->G:I

    :goto_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->ensureNativePointer()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->J:Z

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->requestAllTerrainsRegen()V

    return-void
.end method

.method public onDetach()V
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->N:Lib/h;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->O2(Lib/h;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->O:Lib/a;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M2(Lib/a;)V

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->G:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->I:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->J:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->K:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->H:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->nativeDestroy(J)V

    iput-wide v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->H:J

    :cond_1
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->requestAllTerrainsRegen()V

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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->E:[F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->G:I

    invoke-virtual {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->x4([FI)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->G:I

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->J:Z

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->requestAllTerrainsRegen()V

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
    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->J:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->I:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    return p1

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->rebuildNativeCache()Z

    move-result p1

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

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->J:Z

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->requestAllTerrainsRegen()V

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

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->margin:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->J:Z

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->requestAllTerrainsRegen()V

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->P:LJAVARuntime/Component;

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

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->verticalMargin:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->J:Z

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->requestAllTerrainsRegen()V

    return-void
.end method

.method public setVerticalOffset(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "verticalOffset"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->verticalOffset:F

    return-void
.end method

.method public shouldTintIcon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->P:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/ModelTerrainLevel;

    invoke-direct {v0, p0}, LJAVARuntime/ModelTerrainLevel;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/LevelComponents/ModelTerrainLevel;->P:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method
