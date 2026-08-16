.class public Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;
.super Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;
.source "SourceFile"


# annotations
.annotation runtime LIc/p;
.end annotation


# static fields
.field public static final DESTROYER:LM9/c;

.field private static final concreteEntityReferences:Ljava/util/Map;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "LRb/c;",
            ">;"
        }
    .end annotation
.end field

.field private static final concreteIBReferences:Ljava/util/Map;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "LRb/d;",
            ">;"
        }
    .end annotation
.end field

.field private static final concreteInstanceBReferences:Ljava/util/Map;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final concreteMaterialReferences:Ljava/util/Map;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;",
            ">;"
        }
    .end annotation
.end field

.field private static final concreteSkinningBReferences:Ljava/util/Map;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final concreteVBReferences:Ljava/util/Map;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activeLayerSelect:I

.field private activeLayerValue:I

.field private boundingBox:Lcom/google/android/filament/Box;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private destroyied:Z

.field private final entity:LRb/c;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private hasGeometry:Z

.field private indexBuffer:LRb/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private instanceBuffer:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private material:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private pendingLayerApply:Z

.field private final renderingLayers:[Z

.field private skinningBuffer:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private vertexBuffer:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable$a;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->DESTROYER:LM9/c;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteMaterialReferences:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteEntityReferences:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteVBReferences:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteIBReferences:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteSkinningBReferences:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteInstanceBReferences:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;LRb/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;Lcom/google/android/filament/RenderableManager$b;ILcom/google/android/filament/Box;)V
    .locals 10
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
            "builder",
            "filamentMaterial",
            "filamentEntity",
            "vertexBuffer",
            "indexBuffer",
            "type",
            "boneCount",
            "bounding"
        }
    .end annotation

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v9, p8

    .line 3
    invoke-direct/range {v0 .. v9}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;-><init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;LRb/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;Lcom/google/android/filament/RenderableManager$b;ILcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;Lcom/google/android/filament/Box;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;LRb/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;Lcom/google/android/filament/RenderableManager$b;ILcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;Lcom/google/android/filament/Box;)V
    .locals 11
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
            0x0
        }
        names = {
            "builder",
            "filamentMaterial",
            "filamentEntity",
            "vertexBuffer",
            "indexBuffer",
            "type",
            "boneCount",
            "instanceBuffer",
            "bounding"
        }
    .end annotation

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 6
    invoke-direct/range {v0 .. v10}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;-><init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;LRb/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;Lcom/google/android/filament/RenderableManager$b;ILcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;Lcom/google/android/filament/Box;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;LRb/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;Lcom/google/android/filament/RenderableManager$b;ILcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;Lcom/google/android/filament/Box;Z)V
    .locals 15
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
            0x0
        }
        names = {
            "builder",
            "filamentMaterial",
            "filamentEntity",
            "vertexBuffer",
            "indexBuffer",
            "type",
            "boneCount",
            "instanceBuffer",
            "bounding",
            "initiallyVisible"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    .line 7
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;-><init>()V

    const/4 v9, 0x0

    .line 8
    iput-boolean v9, v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->hasGeometry:Z

    .line 9
    iput-boolean v9, v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyied:Z

    const/16 v10, 0x8

    .line 10
    new-array v10, v10, [Z

    iput-object v10, v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->renderingLayers:[Z

    const/4 v11, 0x1

    .line 11
    invoke-static {v10, v11}, Ljava/util/Arrays;->fill([ZZ)V

    .line 12
    iput-boolean v11, v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->pendingLayerApply:Z

    const/16 v12, 0xff

    .line 13
    iput v12, v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerValue:I

    .line 14
    iput v12, v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerSelect:I

    .line 15
    invoke-static {}, LQb/a;->d()V

    .line 16
    invoke-static {}, LK8/a;->G()V

    if-eqz v4, :cond_b

    if-eqz v5, :cond_a

    .line 17
    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/filament/Engine;->h0()Lcom/google/android/filament/RenderableManager;

    move-result-object v13

    .line 18
    invoke-virtual/range {p3 .. p3}, LRb/c;->getId()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/google/android/filament/RenderableManager;->U(I)Z

    move-result v13

    if-nez v13, :cond_9

    .line 19
    invoke-static {}, LQb/a;->d()V

    .line 20
    iput-object v2, v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->material:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    .line 21
    iput-object v3, v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->entity:LRb/c;

    .line 22
    iput-object v4, v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->vertexBuffer:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    .line 23
    iput-object v5, v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->indexBuffer:LRb/d;

    .line 24
    iput-object v8, v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->boundingBox:Lcom/google/android/filament/Box;

    .line 25
    iput-object v7, v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->instanceBuffer:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;

    if-nez p10, :cond_0

    .line 26
    invoke-static {v10, v9}, Ljava/util/Arrays;->fill([ZZ)V

    .line 27
    iput v9, v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerValue:I

    .line 28
    iput-boolean v9, v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->pendingLayerApply:Z

    .line 29
    invoke-virtual {v1, v12, v9}, Lcom/google/android/filament/RenderableManager$a;->r(II)Lcom/google/android/filament/RenderableManager$a;

    .line 30
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->l()Lcom/google/android/filament/MaterialInstance;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lcom/google/android/filament/RenderableManager$a;->t(ILcom/google/android/filament/MaterialInstance;)Lcom/google/android/filament/RenderableManager$a;

    .line 31
    invoke-virtual/range {p4 .. p4}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->j()Lcom/google/android/filament/VertexBuffer;

    move-result-object v10

    invoke-virtual/range {p5 .. p5}, LRb/d;->i()Lcom/google/android/filament/IndexBuffer;

    move-result-object v12

    move-object/from16 v13, p6

    invoke-virtual {v1, v9, v13, v10, v12}, Lcom/google/android/filament/RenderableManager$a;->k(ILcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/VertexBuffer;Lcom/google/android/filament/IndexBuffer;)Lcom/google/android/filament/RenderableManager$a;

    if-eqz v7, :cond_1

    .line 32
    invoke-virtual/range {p8 .. p8}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;->f()I

    move-result v10

    invoke-virtual/range {p8 .. p8}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;->e()Lcom/google/android/filament/InstanceBuffer;

    move-result-object v12

    invoke-virtual {v1, v10, v12}, Lcom/google/android/filament/RenderableManager$a;->q(ILcom/google/android/filament/InstanceBuffer;)Lcom/google/android/filament/RenderableManager$a;

    .line 33
    :cond_1
    iput-boolean v11, v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->hasGeometry:Z

    if-lez v6, :cond_3

    const/16 v10, 0x100

    if-gt v6, v10, :cond_2

    .line 34
    invoke-virtual {v1, v11}, Lcom/google/android/filament/RenderableManager$a;->g(Z)Lcom/google/android/filament/RenderableManager$a;

    .line 35
    new-instance v10, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;

    invoke-direct {v10, v6}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;-><init>(I)V

    iput-object v10, v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->skinningBuffer:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;

    .line 36
    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;->e()Lcom/google/android/filament/SkinningBuffer;

    move-result-object v10

    invoke-virtual {v1, v10, v6, v9}, Lcom/google/android/filament/RenderableManager$a;->C(Lcom/google/android/filament/SkinningBuffer;II)Lcom/google/android/filament/RenderableManager$a;

    goto :goto_0

    .line 37
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "Can`t be more than 256 bones"

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    if-eqz v8, :cond_6

    move v6, v9

    .line 38
    :goto_1
    invoke-virtual/range {p9 .. p9}, Lcom/google/android/filament/Box;->b()[F

    move-result-object v10

    array-length v10, v10

    if-ge v6, v10, :cond_5

    .line 39
    invoke-virtual/range {p9 .. p9}, Lcom/google/android/filament/Box;->b()[F

    move-result-object v10

    aget v10, v10, v6

    const/4 v12, 0x0

    cmpl-float v10, v10, v12

    if-eqz v10, :cond_4

    goto :goto_2

    :cond_4
    add-int/2addr v6, v11

    goto :goto_1

    :cond_5
    const/high16 v6, 0x3f800000    # 1.0f

    .line 40
    invoke-virtual {v8, v6, v6, v6}, Lcom/google/android/filament/Box;->d(FFF)V

    .line 41
    :goto_2
    invoke-virtual {v1, v8}, Lcom/google/android/filament/RenderableManager$a;->b(Lcom/google/android/filament/Box;)Lcom/google/android/filament/RenderableManager$a;

    .line 42
    invoke-virtual {v1, v11}, Lcom/google/android/filament/RenderableManager$a;->f(Z)Lcom/google/android/filament/RenderableManager$a;

    goto :goto_3

    .line 43
    :cond_6
    invoke-virtual {v1, v9}, Lcom/google/android/filament/RenderableManager$a;->f(Z)Lcom/google/android/filament/RenderableManager$a;

    .line 44
    :goto_3
    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, LRb/c;->getId()I

    move-result v8

    invoke-virtual {v1, v6, v8}, Lcom/google/android/filament/RenderableManager$a;->c(Lcom/google/android/filament/Engine;I)V

    .line 45
    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/filament/Engine;->h0()Lcom/google/android/filament/RenderableManager;

    move-result-object v1

    .line 46
    invoke-virtual/range {p3 .. p3}, LRb/c;->getId()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/google/android/filament/RenderableManager;->M(I)I

    .line 47
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->applyLayers()V

    .line 48
    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable$b;

    const-class v6, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    invoke-direct {v1, p0, v6, v4}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable$b;-><init>(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;Ljava/lang/Class;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;)V

    new-instance v6, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable$c;

    const-class v8, LRb/d;

    invoke-direct {v6, p0, v8, v5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable$c;-><init>(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;Ljava/lang/Class;LRb/d;)V

    const/4 v8, 0x2

    new-array v8, v8, [LM9/b;

    aput-object v1, v8, v9

    aput-object v6, v8, v11

    invoke-super {p0, v8}, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;->setDestroyListeners([LM9/b;)V

    .line 49
    invoke-virtual/range {p3 .. p3}, LRb/c;->getId()I

    move-result v1

    int-to-long v10, v1

    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->DESTROYER:LM9/c;

    invoke-static {p0, v10, v11, v1, v9}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLM9/c;Z)V

    .line 50
    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteMaterialReferences:Ljava/util/Map;

    invoke-virtual/range {p3 .. p3}, LRb/c;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteEntityReferences:Ljava/util/Map;

    invoke-virtual/range {p3 .. p3}, LRb/c;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteVBReferences:Ljava/util/Map;

    invoke-virtual/range {p3 .. p3}, LRb/c;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteIBReferences:Ljava/util/Map;

    invoke-virtual/range {p3 .. p3}, LRb/c;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->skinningBuffer:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;

    if-eqz v1, :cond_7

    .line 55
    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteSkinningBReferences:Ljava/util/Map;

    invoke-virtual/range {p3 .. p3}, LRb/c;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->skinningBuffer:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-eqz v7, :cond_8

    .line 56
    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteInstanceBReferences:Ljava/util/Map;

    invoke-virtual/range {p3 .. p3}, LRb/c;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-void

    .line 57
    :cond_9
    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;

    const-string v2, "Entity already have renderable"

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_a
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "indexBuffer can`t be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "vertexBuffer can`t be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;LRb/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;Lcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/Box;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "builder",
            "filamentMaterial",
            "filamentEntity",
            "vertexBuffer",
            "indexBuffer",
            "type",
            "bounding"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v9, p7

    .line 1
    invoke-direct/range {v0 .. v9}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;-><init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;LRb/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;Lcom/google/android/filament/RenderableManager$b;ILcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;Lcom/google/android/filament/Box;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;LRb/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;Lcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/Box;Z)V
    .locals 11
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
            "builder",
            "filamentMaterial",
            "filamentEntity",
            "vertexBuffer",
            "indexBuffer",
            "type",
            "bounding",
            "initiallyVisible"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    .line 2
    invoke-direct/range {v0 .. v10}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;-><init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;LRb/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;Lcom/google/android/filament/RenderableManager$b;ILcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;Lcom/google/android/filament/Box;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;LRb/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;Lcom/google/android/filament/RenderableManager$b;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;Lcom/google/android/filament/Box;)V
    .locals 10
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
            "builder",
            "filamentMaterial",
            "filamentEntity",
            "vertexBuffer",
            "indexBuffer",
            "type",
            "instanceBuffer",
            "bounding"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 4
    invoke-direct/range {v0 .. v9}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;-><init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;LRb/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;Lcom/google/android/filament/RenderableManager$b;ILcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;Lcom/google/android/filament/Box;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;LRb/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;Lcom/google/android/filament/RenderableManager$b;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;Lcom/google/android/filament/Box;Z)V
    .locals 11
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
            0x0
        }
        names = {
            "builder",
            "filamentMaterial",
            "filamentEntity",
            "vertexBuffer",
            "indexBuffer",
            "type",
            "instanceBuffer",
            "bounding",
            "initiallyVisible"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    .line 5
    invoke-direct/range {v0 .. v10}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;-><init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;LRb/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;Lcom/google/android/filament/RenderableManager$b;ILcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;Lcom/google/android/filament/Box;Z)V

    return-void
.end method

.method public static synthetic access$000()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteMaterialReferences:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic access$100()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteEntityReferences:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic access$200()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteVBReferences:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic access$300()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteIBReferences:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic access$400()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteSkinningBReferences:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic access$500()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteInstanceBReferences:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic access$600(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyied:Z

    return p0
.end method

.method private buildLayerData()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->renderingLayers:[Z

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v0, v3, :cond_1

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    shl-int v2, v4, v0

    or-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerValue:I

    const/16 v2, 0xff

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerSelect:I

    if-eq v0, v2, :cond_3

    :cond_2
    iput-boolean v4, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->pendingLayerApply:Z

    :cond_3
    iput v2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerSelect:I

    iput v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerValue:I

    return-void
.end method

.method public static isUsed(LRb/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filamentEntity"
        }
    .end annotation

    .line 10
    invoke-static {}, LQb/a;->d()V

    .line 11
    invoke-static {}, LK8/a;->G()V

    .line 12
    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteEntityReferences:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isUsed(LRb/d;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indexBuffer"
        }
    .end annotation

    .line 4
    invoke-static {}, LQb/a;->d()V

    .line 5
    invoke-static {}, LK8/a;->G()V

    .line 6
    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteIBReferences:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isUsed(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instanceBuffer"
        }
    .end annotation

    .line 16
    invoke-static {}, LQb/a;->d()V

    .line 17
    invoke-static {}, LK8/a;->G()V

    .line 18
    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteInstanceBReferences:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isUsed(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filamentMaterial"
        }
    .end annotation

    .line 7
    invoke-static {}, LQb/a;->d()V

    .line 8
    invoke-static {}, LK8/a;->G()V

    .line 9
    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteMaterialReferences:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isUsed(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "skinningBuffer"
        }
    .end annotation

    .line 13
    invoke-static {}, LQb/a;->d()V

    .line 14
    invoke-static {}, LK8/a;->G()V

    .line 15
    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteSkinningBReferences:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isUsed(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertexBuffer"
        }
    .end annotation

    .line 1
    invoke-static {}, LQb/a;->d()V

    .line 2
    invoke-static {}, LK8/a;->G()V

    .line 3
    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteVBReferences:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public applyLayers()V
    .locals 4

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->pendingLayerApply:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->pendingLayerApply:Z

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->h0()Lcom/google/android/filament/RenderableManager;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->entity:LRb/c;

    invoke-virtual {v1}, LRb/c;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/RenderableManager;->M(I)I

    move-result v1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerSelect:I

    iget v3, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerValue:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/filament/RenderableManager;->n0(III)V

    return-void
.end method

.method public destroyChannel()LM9/a;
    .locals 1

    sget-object v0, LM9/a;->GPU:LM9/a;

    return-object v0
.end method

.method public destroyImmediate()V
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyied:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyied:Z

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->destroyImmediate(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public destroyPriority()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public getSkinningBuffer()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyied:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->skinningBuffer:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public hasGeometry()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->hasGeometry:Z

    return v0
.end method

.method public hideFromAllLayers()V
    .locals 3

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyied:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->renderingLayers:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerValue:I

    const/16 v2, 0xff

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerSelect:I

    if-eq v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->pendingLayerApply:Z

    :cond_1
    iput v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerValue:I

    iput v2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerSelect:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->applyLayers()V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public hideFromAllLayersButNoApply()Z
    .locals 3

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyied:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->renderingLayers:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerValue:I

    const/16 v2, 0xff

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerSelect:I

    if-eq v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->pendingLayerApply:Z

    :cond_1
    iput v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerValue:I

    iput v2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerSelect:I

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->pendingLayerApply:Z

    return v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public isDestroyied()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyied:Z

    return v0
.end method

.method public removeGeometryAt(I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "primitiveIndex"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyied:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->h0()Lcom/google/android/filament/RenderableManager;

    move-result-object v1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->entity:LRb/c;

    invoke-virtual {v0}, LRb/c;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/filament/RenderableManager;->M(I)I

    move-result v2

    sget-object v4, Lcom/google/android/filament/RenderableManager$b;->TRIANGLES:Lcom/google/android/filament/RenderableManager$b;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->Q:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->f1()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->j()Lcom/google/android/filament/VertexBuffer;

    move-result-object v5

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->l0()LRb/d;

    move-result-object v3

    invoke-virtual {v3}, LRb/d;->i()Lcom/google/android/filament/IndexBuffer;

    move-result-object v6

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/filament/RenderableManager;->k0(IILcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/VertexBuffer;Lcom/google/android/filament/IndexBuffer;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->f1()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->vertexBuffer:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->l0()LRb/d;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->indexBuffer:LRb/d;

    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteVBReferences:Ljava/util/Map;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->entity:LRb/c;

    invoke-virtual {v0}, LRb/c;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->vertexBuffer:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteIBReferences:Ljava/util/Map;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->entity:LRb/c;

    invoke-virtual {v0}, LRb/c;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->indexBuffer:LRb/d;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->hasGeometry:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Please code concrete material list, we need to reference materials per primitive"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public removeMaterialInstanceAt(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "primitiveIndex"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyied:Z

    if-nez v0, :cond_1

    invoke-static {}, LQb/a;->d()V

    if-nez p1, :cond_0

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->h0()Lcom/google/android/filament/RenderableManager;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->entity:LRb/c;

    invoke-virtual {v1}, LRb/c;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/RenderableManager;->M(I)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->F(II)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->material:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteMaterialReferences:Ljava/util/Map;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->entity:LRb/c;

    invoke-virtual {v1}, LRb/c;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Please code concrete material list, we need to reference materials per primitive"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public setAllLayersOffExceptFor(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layerID"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyied:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->renderingLayers:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->renderingLayers:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->buildLayerData()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->applyLayers()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public setBlendOrderAt(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "select",
            "blendOrder"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyied:Z

    if-nez v0, :cond_0

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->h0()Lcom/google/android/filament/RenderableManager;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->entity:LRb/c;

    invoke-virtual {v1}, LRb/c;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/RenderableManager;->M(I)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/filament/RenderableManager;->b0(III)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public setBounding(Lcom/google/android/filament/Box;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bounding"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/filament/Box;->b()[F

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/filament/Box;->b()[F

    move-result-object v2

    aget v2, v2, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/filament/Box;->a()[F

    move-result-object p1

    new-instance v8, Lcom/google/android/filament/Box;

    aget v2, p1, v0

    const/4 v0, 0x1

    aget v3, p1, v0

    const/4 v0, 0x2

    aget v4, p1, v0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/filament/Box;-><init>(FFFFFF)V

    move-object p1, v8

    :goto_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->boundingBox:Lcom/google/android/filament/Box;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->boundingBox:Lcom/google/android/filament/Box;

    :try_start_0
    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/filament/Engine;->h0()Lcom/google/android/filament/RenderableManager;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->entity:LRb/c;

    invoke-virtual {v2}, LRb/c;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/filament/RenderableManager;->M(I)I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/google/android/filament/RenderableManager;->a0(ILcom/google/android/filament/Box;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->boundingBox:Lcom/google/android/filament/Box;

    throw p1
.end method

.method public setGeometryAt(ILcom/google/android/filament/RenderableManager$b;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "primitiveIndex",
            "type",
            "vertexBuffer",
            "indexBuffer"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyied:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->h0()Lcom/google/android/filament/RenderableManager;

    move-result-object v1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->entity:LRb/c;

    invoke-virtual {v0}, LRb/c;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/filament/RenderableManager;->M(I)I

    move-result v2

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->j()Lcom/google/android/filament/VertexBuffer;

    move-result-object v5

    invoke-virtual {p4}, LRb/d;->i()Lcom/google/android/filament/IndexBuffer;

    move-result-object v6

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/filament/RenderableManager;->k0(IILcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/VertexBuffer;Lcom/google/android/filament/IndexBuffer;)V

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->vertexBuffer:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->indexBuffer:LRb/d;

    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteVBReferences:Ljava/util/Map;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->entity:LRb/c;

    invoke-virtual {p2}, LRb/c;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteIBReferences:Ljava/util/Map;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->entity:LRb/c;

    invoke-virtual {p2}, LRb/c;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->hasGeometry:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Please code concrete material list, we need to reference materials per primitive"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public setGlobalBlendOrderEnabledAt(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "b"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyied:Z

    if-nez v0, :cond_0

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->h0()Lcom/google/android/filament/RenderableManager;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->entity:LRb/c;

    invoke-virtual {v1}, LRb/c;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/RenderableManager;->M(I)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/filament/RenderableManager;->m0(IIZ)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public setLayerEnabled(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layerID",
            "enable"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyied:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->renderingLayers:[Z

    aput-boolean p2, v0, p1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->buildLayerData()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->applyLayers()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public setMaterialInstanceAt(ILcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "primitiveIndex",
            "filamentMaterial"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyied:Z

    if-nez v0, :cond_1

    invoke-static {}, LQb/a;->d()V

    if-nez p1, :cond_0

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->h0()Lcom/google/android/filament/RenderableManager;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->entity:LRb/c;

    invoke-virtual {v1}, LRb/c;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/RenderableManager;->M(I)I

    move-result v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->l()Lcom/google/android/filament/MaterialInstance;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/filament/RenderableManager;->p0(IILcom/google/android/filament/MaterialInstance;)V

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->material:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteMaterialReferences:Ljava/util/Map;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->entity:LRb/c;

    invoke-virtual {v0}, LRb/c;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Please code concrete material list, we need to reference materials per primitive"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public setPriority(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "coarse"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyied:Z

    if-nez v0, :cond_0

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->h0()Lcom/google/android/filament/RenderableManager;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->entity:LRb/c;

    invoke-virtual {v1}, LRb/c;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/RenderableManager;->M(I)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->s0(II)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public setSkinningBuffer(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "skinningBuffer"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyied:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;->getBoneCount()I

    move-result v0

    const/16 v1, 0x100

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->skinningBuffer:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;

    :try_start_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->skinningBuffer:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/filament/Engine;->h0()Lcom/google/android/filament/RenderableManager;

    move-result-object v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->entity:LRb/c;

    invoke-virtual {v3}, LRb/c;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/filament/RenderableManager;->M(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;->e()Lcom/google/android/filament/SkinningBuffer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/google/android/filament/RenderableManager;->v0(ILcom/google/android/filament/SkinningBuffer;II)V

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->concreteSkinningBReferences:Ljava/util/Map;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->entity:LRb/c;

    invoke-virtual {v2}, LRb/c;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->skinningBuffer:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Can`t be more than 256 bones"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public showAllLayers()V
    .locals 3

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyied:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->renderingLayers:[Z

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerValue:I

    const/16 v2, 0xff

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerSelect:I

    if-eq v0, v2, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->pendingLayerApply:Z

    :cond_1
    iput v2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerValue:I

    iput v2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerSelect:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->applyLayers()V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public showAllLayersButNoApply()Z
    .locals 3

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyied:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->renderingLayers:[Z

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerValue:I

    const/16 v2, 0xff

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerSelect:I

    if-eq v0, v2, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->pendingLayerApply:Z

    :cond_1
    iput v2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerValue:I

    iput v2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->activeLayerSelect:I

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->pendingLayerApply:Z

    return v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
