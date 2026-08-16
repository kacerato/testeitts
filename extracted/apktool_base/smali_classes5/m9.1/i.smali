.class public final Lm9/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lm9/c;

.field public b:LRb/c;

.field public c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

.field public d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;

.field public e:I

.field public f:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public g:I

.field public h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>(Lm9/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "materialObject"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lm9/i;->e:I

    iput-object p1, p0, Lm9/i;->a:Lm9/c;

    return-void
.end method


# virtual methods
.method public final a(Lm9/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderData"
        }
    .end annotation

    iget-object v0, p0, Lm9/i;->b:LRb/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, LQb/a;->i()Lcom/google/android/filament/TransformManager;

    move-result-object v0

    iget-object v1, p0, Lm9/i;->b:LRb/c;

    invoke-virtual {v1}, LRb/c;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/TransformManager;->h(I)I

    move-result v1

    iget-object p1, p1, Lm9/g;->f:[F

    invoke-virtual {v0, v1, p1}, Lcom/google/android/filament/TransformManager;->u(I[F)V

    return-void
.end method

.method public final b(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;LRb/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scene",
            "entity"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->m(LRb/c;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v0

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->s(LRb/c;)V

    :cond_2
    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->j(LRb/c;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public c(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scene"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lm9/i;->b:LRb/c;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->l(LRb/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm9/i;->b:LRb/c;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->s(LRb/c;)V

    :cond_0
    iget-object p1, p0, Lm9/i;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->isDestroyied()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lm9/i;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyImmediate()V

    :cond_1
    iget-object p1, p0, Lm9/i;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;->destroyImmediate()V

    :cond_2
    iget-object p1, p0, Lm9/i;->b:LRb/c;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, LRb/c;->destroyImmediate()V

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Lm9/i;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    iput-object p1, p0, Lm9/i;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;

    iput-object p1, p0, Lm9/i;->b:LRb/c;

    const/4 v0, -0x1

    iput v0, p0, Lm9/i;->e:I

    iput-object p1, p0, Lm9/i;->f:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    const/4 v0, 0x0

    iput v0, p0, Lm9/i;->g:I

    iput-object p1, p0, Lm9/i;->h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    return-void
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lm9/i;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->isDestroyied()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lm9/i;->b:LRb/c;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LRb/c;->getId()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lm9/i;->a:Lm9/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lm9/c;->c()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm9/i;->a:Lm9/c;

    invoke-virtual {v0}, Lm9/c;->d()Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm9/i;->a:Lm9/c;

    invoke-virtual {v0}, Lm9/c;->d()Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->z()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;Lm9/g;ZZ)V
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "scene",
            "renderData",
            "castShadow",
            "receiveShadow"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {p0 .. p1}, Lm9/i;->c(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    iget v5, v2, Lm9/g;->h:I

    if-eqz v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Lm9/i;->e()Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v5, v0, Lm9/i;->a:Lm9/c;

    invoke-virtual {v5}, Lm9/c;->c()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x1()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->f1()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->l0()LRb/d;

    move-result-object v6

    if-nez v6, :cond_1

    goto/16 :goto_1

    :cond_1
    new-instance v6, LRb/c;

    invoke-direct {v6}, LRb/c;-><init>()V

    iput-object v6, v0, Lm9/i;->b:LRb/c;

    iget v6, v2, Lm9/g;->h:I

    iput v6, v0, Lm9/i;->e:I

    iput-object v5, v0, Lm9/i;->f:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->f0()I

    move-result v6

    iput v6, v0, Lm9/i;->g:I

    iget-object v6, v0, Lm9/i;->a:Lm9/c;

    invoke-virtual {v6}, Lm9/c;->d()Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->z()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v6

    iput-object v6, v0, Lm9/i;->h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iput-boolean v3, v0, Lm9/i;->i:Z

    iput-boolean v4, v0, Lm9/i;->j:Z

    iget v6, v2, Lm9/g;->h:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    new-instance v6, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    new-instance v8, Lcom/google/android/filament/RenderableManager$a;

    invoke-direct {v8, v7}, Lcom/google/android/filament/RenderableManager$a;-><init>(I)V

    invoke-virtual {v8, v3}, Lcom/google/android/filament/RenderableManager$a;->d(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/google/android/filament/RenderableManager$a;->y(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v9

    iget-object v3, v0, Lm9/i;->a:Lm9/c;

    invoke-virtual {v3}, Lm9/c;->d()Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->z()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v10

    iget-object v11, v0, Lm9/i;->b:LRb/c;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->f1()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v12

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->l0()LRb/d;

    move-result-object v13

    sget-object v14, Lcom/google/android/filament/RenderableManager$b;->TRIANGLES:Lcom/google/android/filament/RenderableManager$b;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->k0()Lcom/google/android/filament/Box;

    move-result-object v15

    const/16 v16, 0x0

    move-object v8, v6

    invoke-direct/range {v8 .. v16}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;-><init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;LRb/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;Lcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/Box;Z)V

    iput-object v6, v0, Lm9/i;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    goto :goto_0

    :cond_2
    new-instance v6, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;

    iget-object v8, v2, Lm9/g;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget v9, v2, Lm9/g;->h:I

    invoke-direct {v6, v8, v9}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V

    iput-object v6, v0, Lm9/i;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;

    new-instance v6, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    new-instance v8, Lcom/google/android/filament/RenderableManager$a;

    invoke-direct {v8, v7}, Lcom/google/android/filament/RenderableManager$a;-><init>(I)V

    invoke-virtual {v8, v3}, Lcom/google/android/filament/RenderableManager$a;->d(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/google/android/filament/RenderableManager$a;->y(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v11

    iget-object v3, v0, Lm9/i;->a:Lm9/c;

    invoke-virtual {v3}, Lm9/c;->d()Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->z()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v12

    iget-object v13, v0, Lm9/i;->b:LRb/c;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->f1()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v14

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->l0()LRb/d;

    move-result-object v15

    sget-object v16, Lcom/google/android/filament/RenderableManager$b;->TRIANGLES:Lcom/google/android/filament/RenderableManager$b;

    iget-object v3, v0, Lm9/i;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;

    iget-object v4, v2, Lm9/g;->e:Lcom/google/android/filament/Box;

    const/16 v19, 0x0

    move-object v10, v6

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    invoke-direct/range {v10 .. v19}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;-><init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;LRb/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;Lcom/google/android/filament/RenderableManager$b;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;Lcom/google/android/filament/Box;Z)V

    iput-object v6, v0, Lm9/i;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    :goto_0
    iget-object v3, v0, Lm9/i;->b:LRb/c;

    invoke-virtual {v0, v1, v3}, Lm9/i;->b(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;LRb/c;)V

    iget v1, v2, Lm9/g;->h:I

    if-ne v1, v7, :cond_3

    invoke-virtual {v0, v2}, Lm9/i;->a(Lm9/g;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public g(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;Lm9/g;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "scene",
            "renderData",
            "castShadow",
            "receiveShadow"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    iget v0, p2, Lm9/g;->h:I

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lm9/i;->e()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lm9/i;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->isDestroyied()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lm9/i;->e:I

    iget v1, p2, Lm9/g;->h:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lm9/i;->f:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iget-object v1, p0, Lm9/i;->a:Lm9/c;

    invoke-virtual {v1}, Lm9/c;->c()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lm9/i;->g:I

    iget-object v1, p0, Lm9/i;->a:Lm9/c;

    invoke-virtual {v1}, Lm9/c;->c()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->f0()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lm9/i;->h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iget-object v1, p0, Lm9/i;->a:Lm9/c;

    invoke-virtual {v1}, Lm9/c;->d()Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->z()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lm9/i;->i:Z

    if-ne v0, p3, :cond_2

    iget-boolean v0, p0, Lm9/i;->j:Z

    if-eq v0, p4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lm9/i;->h(Lm9/g;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lm9/i;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;Lm9/g;ZZ)V

    :goto_1
    return-void

    :cond_3
    :goto_2
    invoke-virtual {p0, p1}, Lm9/i;->c(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V

    return-void
.end method

.method public final h(Lm9/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderData"
        }
    .end annotation

    iget-object v0, p0, Lm9/i;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->isDestroyied()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    iget v0, p1, Lm9/g;->h:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput v0, p0, Lm9/i;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lm9/i;->a(Lm9/g;)V

    iget-object p1, p0, Lm9/i;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    iget-object v0, p0, Lm9/i;->a:Lm9/c;

    invoke-virtual {v0}, Lm9/c;->c()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->k0()Lcom/google/android/filament/Box;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setBounding(Lcom/google/android/filament/Box;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lm9/i;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;

    if-eqz v1, :cond_2

    iget-object v2, p1, Lm9/g;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;->h(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)V

    iget-object v0, p0, Lm9/i;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    iget-object p1, p1, Lm9/g;->e:Lcom/google/android/filament/Box;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setBounding(Lcom/google/android/filament/Box;)V

    :cond_2
    :goto_0
    return-void
.end method
