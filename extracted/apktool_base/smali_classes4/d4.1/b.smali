.class public Ld4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld4/b$a;
    }
.end annotation


# static fields
.field public static final y:I = 0x80


# instance fields
.field public a:LRb/c;

.field public b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

.field public c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

.field public d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;

.field public e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

.field public f:LRb/d;

.field public g:Lub/p;

.field public final h:[F

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:F

.field public o:F

.field public p:F

.field public q:F

.field public r:F

.field public s:F

.field public t:F

.field public u:F

.field public v:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a0;

.field public w:Z

.field public x:LO8/a;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Ld4/b;->h:[F

    const/4 v0, -0x1

    iput v0, p0, Ld4/b;->i:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld4/b;->j:Z

    iput-boolean v0, p0, Ld4/b;->k:Z

    iput-boolean v0, p0, Ld4/b;->l:Z

    iput-boolean v0, p0, Ld4/b;->m:Z

    const/4 v1, 0x0

    iput v1, p0, Ld4/b;->n:F

    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, p0, Ld4/b;->o:F

    iput v2, p0, Ld4/b;->p:F

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Ld4/b;->q:F

    iput v1, p0, Ld4/b;->r:F

    iput v1, p0, Ld4/b;->s:F

    iput v1, p0, Ld4/b;->t:F

    iput v2, p0, Ld4/b;->u:F

    const/4 v1, 0x0

    iput-object v1, p0, Ld4/b;->v:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a0;

    iput-boolean v0, p0, Ld4/b;->w:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    move-object/from16 v0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, v0, Ld4/b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-nez v7, :cond_6

    iget-object v7, v0, Ld4/b;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;

    if-nez v7, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lu9/d;->d()Lec/e;

    move-result-object v7

    if-nez v7, :cond_1

    return-void

    :cond_1
    iget-object v7, v0, Ld4/b;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->B()Z

    move-result v7

    if-nez v7, :cond_2

    return-void

    :cond_2
    iget-object v7, v0, Ld4/b;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->w()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v7

    iget-object v8, v0, Ld4/b;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->q()LRb/d;

    move-result-object v15

    if-eqz v7, :cond_6

    if-nez v15, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object v8, v0, Ld4/b;->a:LRb/c;

    if-nez v8, :cond_4

    new-instance v8, LRb/c;

    invoke-direct {v8}, LRb/c;-><init>()V

    iput-object v8, v0, Ld4/b;->a:LRb/c;

    goto :goto_0

    :cond_4
    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/filament/Engine;->h0()Lcom/google/android/filament/RenderableManager;

    move-result-object v8

    iget-object v9, v0, Ld4/b;->a:LRb/c;

    invoke-virtual {v9}, LRb/c;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/google/android/filament/RenderableManager;->U(I)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, v0, Ld4/b;->a:LRb/c;

    invoke-virtual {v9}, LRb/c;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/google/android/filament/RenderableManager;->G(I)V

    :cond_5
    :goto_0
    invoke-static {}, Lu9/d;->d()Lec/e;

    move-result-object v8

    invoke-virtual {v8}, Lec/e;->h()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v8

    iput-object v8, v0, Ld4/b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    new-instance v14, Lcom/google/android/filament/Box;

    move-object/from16 v8, p1

    iget v8, v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->maxHeight:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float v10, v8, v9

    new-array v11, v4, [F

    aput v3, v11, v6

    aput v10, v11, v5

    aput v3, v11, v2

    div-float/2addr v8, v9

    new-array v3, v4, [F

    aput v1, v3, v6

    aput v8, v3, v5

    aput v1, v3, v2

    invoke-direct {v14, v11, v3}, Lcom/google/android/filament/Box;-><init>([F[F)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    new-instance v2, Lcom/google/android/filament/RenderableManager$a;

    invoke-direct {v2, v5}, Lcom/google/android/filament/RenderableManager$a;-><init>(I)V

    invoke-virtual {v2, v6}, Lcom/google/android/filament/RenderableManager$a;->d(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/filament/RenderableManager$a;->y(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v9

    iget-object v10, v0, Ld4/b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iget-object v11, v0, Ld4/b;->a:LRb/c;

    sget-object v2, Lcom/google/android/filament/RenderableManager$b;->TRIANGLES:Lcom/google/android/filament/RenderableManager$b;

    move-object v8, v1

    move-object v12, v7

    move-object v13, v15

    move-object v3, v14

    move-object v14, v2

    move-object v2, v15

    move-object v15, v3

    invoke-direct/range {v8 .. v15}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;-><init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;LRb/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;Lcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/Box;)V

    iput-object v1, v0, Ld4/b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setPriority(I)V

    iget-object v1, v0, Ld4/b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {v1, v6, v5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setGlobalBlendOrderEnabledAt(IZ)V

    iget-object v1, v0, Ld4/b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {v1, v6, v5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setBlendOrderAt(II)V

    iput-object v7, v0, Ld4/b;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    iput-object v2, v0, Ld4/b;->f:LRb/d;

    iput-boolean v6, v0, Ld4/b;->l:Z

    iput-boolean v6, v0, Ld4/b;->m:Z

    invoke-static {}, LQb/a;->i()Lcom/google/android/filament/TransformManager;

    move-result-object v1

    iget-object v2, v0, Ld4/b;->a:LRb/c;

    invoke-virtual {v2}, LRb/c;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/filament/TransformManager;->o(I)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v0, Ld4/b;->a:LRb/c;

    invoke-virtual {v2}, LRb/c;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/filament/TransformManager;->b(I)I

    :cond_6
    :goto_1
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld4/b;->k:Z

    return-void
.end method

.method public c(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ld4/b;->d(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    invoke-virtual {p0}, Ld4/b;->e()V

    const/4 p1, 0x0

    iput-object p1, p0, Ld4/b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iput-object p1, p0, Ld4/b;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    iput-object p1, p0, Ld4/b;->f:LRb/d;

    iput-object p1, p0, Ld4/b;->g:Lub/p;

    return-void
.end method

.method public final d(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ld4/b;->g(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    iget-object p1, p0, Ld4/b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput-object v0, p0, Ld4/b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    :cond_0
    iput-object v0, p0, Ld4/b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iget-object p1, p0, Ld4/b;->a:LRb/c;

    if-eqz p1, :cond_1

    iput-object v0, p0, Ld4/b;->a:LRb/c;

    :cond_1
    iput-object v0, p0, Ld4/b;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    iput-object v0, p0, Ld4/b;->f:LRb/d;

    const/4 p1, 0x0

    iput-boolean p1, p0, Ld4/b;->l:Z

    iput-boolean p1, p0, Ld4/b;->m:Z

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Ld4/b;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->j()V

    const/4 v0, 0x0

    iput-object v0, p0, Ld4/b;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;

    :cond_0
    return-void
.end method

.method public final f(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    iget-object v0, p0, Ld4/b;->a:LRb/c;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ld4/b;->j:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object p1

    iget-object v0, p0, Ld4/b;->a:LRb/c;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->j(LRb/c;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Ld4/b;->j:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public g(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    iget-boolean v0, p0, Ld4/b;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld4/b;->a:LRb/c;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object p1

    iget-object v0, p0, Ld4/b;->a:LRb/c;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->s(LRb/c;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ld4/b;->j:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld4/b;->m:Z

    return-void
.end method

.method public final i()V
    .locals 5

    iget-object v0, p0, Ld4/b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ld4/b;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->B()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ld4/b;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->w()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v0

    iget-object v1, p0, Ld4/b;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->q()LRb/d;

    move-result-object v1

    if-eqz v0, :cond_3

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Ld4/b;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Ld4/b;->f:LRb/d;

    if-eq v1, v2, :cond_3

    :cond_2
    iget-object v2, p0, Ld4/b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    sget-object v3, Lcom/google/android/filament/RenderableManager$b;->TRIANGLES:Lcom/google/android/filament/RenderableManager$b;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setGeometryAt(ILcom/google/android/filament/RenderableManager$b;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;)V

    iget-object v2, p0, Ld4/b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    iget-object v3, p0, Ld4/b;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->o()Lcom/google/android/filament/Box;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setBounding(Lcom/google/android/filament/Box;)V

    iput-object v0, p0, Ld4/b;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    iput-object v1, p0, Ld4/b;->f:LRb/d;

    iput-boolean v4, p0, Ld4/b;->l:Z

    iput-boolean v4, p0, Ld4/b;->m:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public final j()V
    .locals 3

    iget-object v0, p0, Ld4/b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ld4/b;->g:Lub/p;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lub/p;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld4/b;->g:Lub/p;

    iget-object v1, p0, Ld4/b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const-string v2, "brushMap"

    invoke-virtual {v0, v1, v2}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public k(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;LO8/a;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;FFFLcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a0;Z)V
    .locals 20
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
            "terrain",
            "brush",
            "brushLocation",
            "brushSize",
            "brushIntensity",
            "levelHeight",
            "viewMode",
            "lower"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v15, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    const/4 v8, 0x0

    cmpg-float v8, v4, v8

    if-gtz v8, :cond_1

    :cond_0
    move v0, v7

    goto/16 :goto_9

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getTable()Lz9/e;

    move-result-object v8

    if-nez v8, :cond_2

    iput-boolean v7, v1, Ld4/b;->k:Z

    return-void

    :cond_2
    invoke-static {v0, v3, v4}, Ld4/b$a;->a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;F)Ld4/b$a;

    move-result-object v9

    if-nez v9, :cond_3

    iput-boolean v7, v1, Ld4/b;->k:Z

    return-void

    :cond_3
    iget v10, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v11, v1, Ld4/b;->o:F

    cmpl-float v10, v10, v11

    const/4 v14, 0x1

    if-nez v10, :cond_4

    iget v10, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget v11, v1, Ld4/b;->p:F

    cmpl-float v10, v10, v11

    if-nez v10, :cond_4

    move v10, v14

    goto :goto_0

    :cond_4
    move v10, v7

    :goto_0
    iget v11, v1, Ld4/b;->q:F

    cmpl-float v11, v4, v11

    if-nez v11, :cond_5

    move v11, v14

    goto :goto_1

    :cond_5
    move v11, v7

    :goto_1
    iget v12, v1, Ld4/b;->u:F

    cmpl-float v12, v15, v12

    if-nez v12, :cond_6

    move v12, v14

    goto :goto_2

    :cond_6
    move v12, v7

    :goto_2
    iget-object v13, v1, Ld4/b;->v:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a0;

    if-ne v5, v13, :cond_7

    move v13, v14

    goto :goto_3

    :cond_7
    move v13, v7

    :goto_3
    iget-boolean v7, v1, Ld4/b;->w:Z

    if-ne v6, v7, :cond_8

    move v7, v14

    goto :goto_4

    :cond_8
    const/4 v7, 0x0

    :goto_4
    if-eqz v10, :cond_9

    if-eqz v11, :cond_9

    if-eqz v12, :cond_9

    if-eqz v13, :cond_9

    if-eqz v7, :cond_9

    move/from16 v13, p5

    move v7, v14

    goto :goto_5

    :cond_9
    move/from16 v13, p5

    const/4 v7, 0x0

    :goto_5
    iput v13, v1, Ld4/b;->n:F

    invoke-virtual/range {p2 .. p2}, LO8/a;->f()Lub/p;

    move-result-object v10

    iput-object v10, v1, Ld4/b;->g:Lub/p;

    iget v10, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iput v10, v1, Ld4/b;->o:F

    iget v3, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iput v3, v1, Ld4/b;->p:F

    iput v4, v1, Ld4/b;->q:F

    iget v3, v9, Ld4/b$a;->e:F

    iput v3, v1, Ld4/b;->r:F

    iget v3, v9, Ld4/b$a;->f:F

    iput v3, v1, Ld4/b;->s:F

    iget v3, v9, Ld4/b$a;->g:F

    iput v3, v1, Ld4/b;->t:F

    iput v15, v1, Ld4/b;->u:F

    iput-object v5, v1, Ld4/b;->v:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a0;

    iput-boolean v6, v1, Ld4/b;->w:Z

    iget-object v3, v1, Ld4/b;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;

    if-eqz v3, :cond_a

    move v4, v14

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    :goto_6
    if-eqz v7, :cond_b

    if-eqz v3, :cond_b

    if-eqz v4, :cond_b

    iput-boolean v14, v1, Ld4/b;->k:Z

    return-void

    :cond_b
    invoke-virtual {v9}, Ld4/b$a;->b()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, LO8/a;->a()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v6

    if-nez v6, :cond_c

    const/4 v7, 0x0

    iput-boolean v7, v1, Ld4/b;->k:Z

    return-void

    :cond_c
    iget-object v7, v1, Ld4/b;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;

    if-eqz v7, :cond_d

    iget v7, v1, Ld4/b;->i:I

    if-ne v7, v3, :cond_d

    if-nez v4, :cond_e

    :cond_d
    invoke-virtual/range {p0 .. p0}, Ld4/b;->e()V

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getSurfaceTopologyCache()Lz9/i;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v3, v7}, Lz9/i;->d(IZ)Lz9/i$b;

    move-result-object v4

    :try_start_0
    new-instance v10, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;

    invoke-direct {v10, v3, v7, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;-><init>(IZLz9/i$b;)V

    iput-object v10, v1, Ld4/b;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iput v3, v1, Ld4/b;->i:I

    iput-boolean v14, v1, Ld4/b;->l:Z

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->w()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v3

    iput-object v3, v1, Ld4/b;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    iget-object v3, v1, Ld4/b;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->q()LRb/d;

    move-result-object v3

    iput-object v3, v1, Ld4/b;->f:LRb/d;

    :cond_e
    iget-object v3, v1, Ld4/b;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;

    invoke-virtual {v8}, Lz9/e;->c()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v7

    iget v8, v9, Ld4/b$a;->a:I

    iget v10, v9, Ld4/b$a;->b:I

    iget v11, v9, Ld4/b$a;->c:I

    iget v12, v9, Ld4/b$a;->d:I

    iget v14, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->width:F

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->maxHeight:F

    iget v13, v9, Ld4/b$a;->e:F

    iget v15, v9, Ld4/b$a;->f:F

    iget v9, v9, Ld4/b$a;->g:F

    iget v1, v2, LO8/a;->e:I

    iget v2, v2, LO8/a;->f:I

    if-eqz v5, :cond_f

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    :goto_7
    move/from16 v17, v2

    move/from16 v19, v5

    goto :goto_8

    :cond_f
    const/4 v5, -0x1

    goto :goto_7

    :goto_8
    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move v5, v7

    move v6, v8

    move v7, v10

    move v8, v11

    move/from16 v18, v9

    move v9, v12

    move v10, v14

    move v11, v0

    move v12, v13

    move v13, v15

    const/4 v0, 0x1

    move/from16 v14, v18

    move v15, v1

    move/from16 v16, v17

    move/from16 v17, p5

    move/from16 v18, p6

    invoke-virtual/range {v2 .. v19}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->I(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IIIIIFFFFFIIFFI)Z

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ld4/b;->k:Z

    iput-boolean v0, v1, Ld4/b;->m:Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v4}, Lz9/i$b;->x()V

    throw v0

    :goto_9
    iput-boolean v0, v1, Ld4/b;->k:Z

    return-void
.end method

.method public final l(F)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brushIntensity"
        }
    .end annotation

    iget-object v0, p0, Ld4/b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Ld4/b;->w:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3de0e0e1

    if-eqz v0, :cond_1

    move v5, v1

    move v6, v2

    move v7, v6

    goto :goto_0

    :cond_1
    const v0, 0x3f028283

    move v6, v0

    move v7, v1

    move v5, v2

    :goto_0
    const v0, 0x3f333333    # 0.7f

    mul-float/2addr p1, v0

    invoke-static {p1}, LNc/b;->I(F)F

    move-result v8

    iget-object v3, p0, Ld4/b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const-string v4, "baseColor"

    invoke-virtual/range {v3 .. v8}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->E(Ljava/lang/String;FFFF)V

    return-void
.end method

.method public m(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Ld4/b;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Ld4/b;->g(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    return-void

    :cond_1
    iget-object v0, p0, Ld4/b;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->B()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Ld4/b;->x:LO8/a;

    if-nez v0, :cond_3

    sget-object v0, LK8/a;->r:LO8/b;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, LO8/b;->a(I)LO8/a;

    move-result-object v0

    iput-object v0, p0, Ld4/b;->x:LO8/a;

    :cond_3
    iget-boolean v0, p0, Ld4/b;->m:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Ld4/b;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->w()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Ld4/b;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    if-ne v0, v1, :cond_5

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Ld4/b;->l:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Ld4/b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v1, :cond_6

    invoke-virtual {p0, p1}, Ld4/b;->d(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    :cond_6
    invoke-virtual {p0, p1}, Ld4/b;->a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Ld4/b;->i()V

    :cond_7
    invoke-virtual {p0}, Ld4/b;->j()V

    iget v0, p0, Ld4/b;->n:F

    invoke-virtual {p0, v0}, Ld4/b;->l(F)V

    invoke-virtual {p0, p1}, Ld4/b;->n(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    invoke-virtual {p0, p1}, Ld4/b;->f(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    return-void

    :cond_8
    :goto_1
    invoke-virtual {p0, p1}, Ld4/b;->g(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    return-void
.end method

.method public final n(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    iget-object v0, p0, Ld4/b;->a:LRb/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ld4/b;->h:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Ld4/b;->h:[F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getCachedGlobalPositionX()F

    move-result v2

    iget v3, p0, Ld4/b;->r:F

    add-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getCachedGlobalPositionY()F

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getCachedGlobalPositionZ()F

    move-result v4

    iget v5, p0, Ld4/b;->s:F

    add-float/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v0, p0, Ld4/b;->h:[F

    iget v1, p0, Ld4/b;->t:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->maxHeight:F

    invoke-static {v0, v1, p1, v1}, LNc/c;->p([FFFF)V

    invoke-static {}, LQb/a;->i()Lcom/google/android/filament/TransformManager;

    move-result-object p1

    iget-object v0, p0, Ld4/b;->a:LRb/c;

    invoke-virtual {v0}, LRb/c;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/filament/TransformManager;->h(I)I

    move-result v0

    iget-object v1, p0, Ld4/b;->h:[F

    invoke-virtual {p1, v0, v1}, Lcom/google/android/filament/TransformManager;->u(I[F)V

    return-void
.end method
