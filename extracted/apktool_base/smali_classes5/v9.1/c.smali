.class public Lv9/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

.field public c:LRb/c;

.field public d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv9/c;->a:Z

    return-void
.end method

.method public static synthetic a(Lv9/c;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 0

    invoke-virtual {p0, p1}, Lv9/c;->k(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    return-void
.end method

.method public static synthetic b(Lv9/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;
    .locals 0

    iput-object p1, p0, Lv9/c;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    return-object p1
.end method

.method public static synthetic c(Lv9/c;LRb/c;)LRb/c;
    .locals 0

    iput-object p1, p0, Lv9/c;->c:LRb/c;

    return-object p1
.end method

.method public static synthetic d(Lv9/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;
    .locals 0

    iput-object p1, p0, Lv9/c;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    return-object p1
.end method

.method public static synthetic e(Lv9/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lv9/c;->a:Z

    return p1
.end method

.method public static synthetic f(Lv9/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lv9/c;->e:Z

    return p1
.end method


# virtual methods
.method public g(Lv9/e;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "batch",
            "visible"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lv9/c;->a:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lv9/c;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->isDestroyied()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lv9/c;->c:LRb/c;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-boolean v0, p0, Lv9/c;->e:Z

    if-ne v0, p2, :cond_1

    return-void

    :cond_1
    iput-boolean p2, p0, Lv9/c;->e:Z

    iget-object v0, p0, Lv9/c;->c:LRb/c;

    invoke-virtual {v0}, LRb/c;->getId()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lv9/e;->a(IZ)V

    return-void
.end method

.method public h([F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderMatrix"
        }
    .end annotation

    iget-object v0, p0, Lv9/c;->c:LRb/c;

    if-eqz v0, :cond_0

    invoke-static {}, LQb/a;->i()Lcom/google/android/filament/TransformManager;

    move-result-object v0

    iget-object v1, p0, Lv9/c;->c:LRb/c;

    invoke-virtual {v1}, LRb/c;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/TransformManager;->h(I)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/filament/TransformManager;->u(I[F)V

    :cond_0
    return-void
.end method

.method public final i(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;[F)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "terrain",
            "vertex",
            "renderMatrix"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    iget-object v6, v0, Lv9/c;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-nez v6, :cond_0

    new-instance v6, LRb/c;

    invoke-direct {v6}, LRb/c;-><init>()V

    iput-object v6, v0, Lv9/c;->c:LRb/c;

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->o()Lcom/google/android/filament/Box;

    move-result-object v6

    new-instance v14, Lcom/google/android/filament/Box;

    invoke-virtual {v6}, Lcom/google/android/filament/Box;->a()[F

    move-result-object v7

    aget v7, v7, v5

    iget v8, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->maxHeight:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    invoke-virtual {v6}, Lcom/google/android/filament/Box;->a()[F

    move-result-object v10

    aget v10, v10, v4

    new-array v11, v2, [F

    aput v7, v11, v5

    aput v8, v11, v3

    aput v10, v11, v4

    invoke-virtual {v6}, Lcom/google/android/filament/Box;->b()[F

    move-result-object v7

    aget v7, v7, v5

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->maxHeight:F

    div-float/2addr v1, v9

    invoke-virtual {v6}, Lcom/google/android/filament/Box;->b()[F

    move-result-object v6

    aget v6, v6, v4

    new-array v2, v2, [F

    aput v7, v2, v5

    aput v1, v2, v3

    aput v6, v2, v4

    invoke-direct {v14, v11, v2}, Lcom/google/android/filament/Box;-><init>([F[F)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    new-instance v2, Lcom/google/android/filament/RenderableManager$a;

    invoke-direct {v2, v3}, Lcom/google/android/filament/RenderableManager$a;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/google/android/filament/RenderableManager$a;->d(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/filament/RenderableManager$a;->y(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v8

    iget-object v9, v0, Lv9/c;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iget-object v10, v0, Lv9/c;->c:LRb/c;

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->w()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->r()LRb/d;

    move-result-object v12

    sget-object v13, Lcom/google/android/filament/RenderableManager$b;->TRIANGLES:Lcom/google/android/filament/RenderableManager$b;

    const/4 v15, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v15}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;-><init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;LRb/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;Lcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/Box;Z)V

    iput-object v1, v0, Lv9/c;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-static {}, LQb/a;->i()Lcom/google/android/filament/TransformManager;

    move-result-object v1

    iget-object v2, v0, Lv9/c;->c:LRb/c;

    invoke-virtual {v2}, LRb/c;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/filament/TransformManager;->b(I)I

    iget-object v2, v0, Lv9/c;->c:LRb/c;

    invoke-virtual {v2}, LRb/c;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/filament/TransformManager;->h(I)I

    move-result v2

    move-object/from16 v4, p3

    invoke-virtual {v1, v2, v4}, Lcom/google/android/filament/TransformManager;->u(I[F)V

    iget-object v1, v0, Lv9/c;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v5, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setGlobalBlendOrderEnabledAt(IZ)V

    iget-object v1, v0, Lv9/c;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {v1, v5, v5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setBlendOrderAt(II)V

    :cond_0
    return-void
.end method

.method public j(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lv9/c;->k(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lv9/c;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    iput-object p1, p0, Lv9/c;->c:LRb/c;

    iput-object p1, p0, Lv9/c;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lv9/c;->a:Z

    iput-boolean p1, p0, Lv9/c;->e:Z

    return-void
.end method

.method public final k(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    iget-boolean v0, p0, Lv9/c;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv9/c;->c:LRb/c;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object p1

    iget-object v0, p0, Lv9/c;->c:LRb/c;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->s(LRb/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :try_start_1
    iget-object p1, p0, Lv9/c;->c:LRb/c;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->m(LRb/c;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object p1

    iget-object v0, p0, Lv9/c;->c:LRb/c;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->s(LRb/c;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lv9/c;->a:Z

    iput-boolean p1, p0, Lv9/c;->e:Z

    :cond_0
    return-void
.end method

.method public l(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lv9/c;->k(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    return-void
.end method

.method public m(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    new-instance v0, Lv9/c$a;

    invoke-direct {v0, p0, p1}, Lv9/c$a;-><init>(Lv9/c;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Lv9/c;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lv9/c;->k(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    return-void
.end method

.method public p(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lz9/h;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;[FLv9/d;)V
    .locals 7
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
            "resolutions",
            "chunkSurface",
            "renderMatrix",
            "chunk"
        }
    .end annotation

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lv9/c;->q(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lz9/h;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;[FLv9/d;Z)V

    return-void
.end method

.method public q(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lz9/h;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;[FLv9/d;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "terrain",
            "resolutions",
            "chunkSurface",
            "renderMatrix",
            "chunk",
            "allowSceneAttach"
        }
    .end annotation

    iget-object p2, p0, Lv9/c;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    if-nez p2, :cond_0

    invoke-static {}, Lu9/d;->f()Lec/e;

    move-result-object p2

    invoke-virtual {p2}, Lec/e;->h()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object p2

    iput-object p2, p0, Lv9/c;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const/high16 p5, -0x40800000    # -1.0f

    const/4 p6, 0x0

    int-to-float p6, p6

    mul-float/2addr p6, p5

    const/4 p5, 0x0

    invoke-virtual {p2, p5, p6}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->K(FF)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->B()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, p3, p4}, Lv9/c;->i(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;[F)V

    :cond_1
    iget-boolean p2, p0, Lv9/c;->a:Z

    if-nez p2, :cond_2

    iget-object p2, p0, Lv9/c;->c:LRb/c;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object p1

    iget-object p2, p0, Lv9/c;->c:LRb/c;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->j(LRb/c;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lv9/c;->a:Z

    :cond_2
    return-void
.end method

.method public r(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    iget-object v0, p0, Lv9/c;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->w()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->r()LRb/d;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lv9/c;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    sget-object v1, Lcom/google/android/filament/RenderableManager$b;->TRIANGLES:Lcom/google/android/filament/RenderableManager$b;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->w()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->r()LRb/d;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setGeometryAt(ILcom/google/android/filament/RenderableManager$b;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;)V

    iget-object v0, p0, Lv9/c;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->o()Lcom/google/android/filament/Box;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setBounding(Lcom/google/android/filament/Box;)V

    nop

    :cond_1
    :goto_0
    return-void
.end method
