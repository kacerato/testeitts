.class public final Lm9/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/filament/Box;

.field public b:LRb/c;

.field public c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

.field public d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;

.field public e:I

.field public f:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;


# direct methods
.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Lcom/google/android/filament/Box;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/filament/Box;-><init>(FFFFFF)V

    iput-object v7, p0, Lm9/f;->a:Lcom/google/android/filament/Box;

    return-void
.end method


# virtual methods
.method public final a(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;LRb/c;)V
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

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->m(LRb/c;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->s(LRb/c;)V

    :cond_1
    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->j(LRb/c;)V

    return-void
.end method

.method public b(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V
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

    iget-object v0, p0, Lm9/f;->b:LRb/c;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->l(LRb/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm9/f;->b:LRb/c;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->s(LRb/c;)V

    :cond_0
    iget-object p1, p0, Lm9/f;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->isDestroyied()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lm9/f;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyImmediate()V

    :cond_1
    iget-object p1, p0, Lm9/f;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;->destroyImmediate()V

    :cond_2
    iget-object p1, p0, Lm9/f;->b:LRb/c;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, LRb/c;->destroyImmediate()V

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Lm9/f;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    iput-object p1, p0, Lm9/f;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;

    iput-object p1, p0, Lm9/f;->b:LRb/c;

    const/4 v0, 0x0

    iput v0, p0, Lm9/f;->e:I

    iput-object p1, p0, Lm9/f;->f:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iput-object p1, p0, Lm9/f;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lm9/f;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->isDestroyied()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lm9/f;->b:LRb/c;

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

.method public final d(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;Lm9/g;Ln9/b;)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "scene",
            "renderData",
            "resources"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p1}, Lm9/f;->b(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V

    invoke-virtual/range {p3 .. p3}, Ln9/b;->e()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x1()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->f1()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->l0()LRb/d;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget v3, v1, Lm9/g;->h:I

    iput v3, v0, Lm9/f;->e:I

    iput-object v2, v0, Lm9/f;->f:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual/range {p3 .. p3}, Ln9/b;->d()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v3

    iput-object v3, v0, Lm9/f;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {p0, v1}, Lm9/f;->f(Lm9/g;)V

    new-instance v3, LRb/c;

    invoke-direct {v3}, LRb/c;-><init>()V

    iput-object v3, v0, Lm9/f;->b:LRb/c;

    new-instance v3, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;

    iget-object v4, v1, Lm9/g;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget v1, v1, Lm9/g;->h:I

    invoke-direct {v3, v4, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V

    iput-object v3, v0, Lm9/f;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    new-instance v3, Lcom/google/android/filament/RenderableManager$a;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/google/android/filament/RenderableManager$a;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/filament/RenderableManager$a;->d(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/google/android/filament/RenderableManager$a;->y(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Ln9/b;->d()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v7

    iget-object v8, v0, Lm9/f;->b:LRb/c;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->f1()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v9

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->l0()LRb/d;

    move-result-object v10

    sget-object v11, Lcom/google/android/filament/RenderableManager$b;->TRIANGLES:Lcom/google/android/filament/RenderableManager$b;

    iget-object v12, v0, Lm9/f;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;

    iget-object v13, v0, Lm9/f;->a:Lcom/google/android/filament/Box;

    const/4 v14, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v14}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;-><init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;LRb/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;Lcom/google/android/filament/RenderableManager$b;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;Lcom/google/android/filament/Box;Z)V

    iput-object v1, v0, Lm9/f;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    iget-object v1, v0, Lm9/f;->b:LRb/c;

    move-object/from16 v2, p1

    invoke-virtual {p0, v2, v1}, Lm9/f;->a(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;LRb/c;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;Lm9/g;Ln9/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "scene",
            "renderData",
            "resources"
        }
    .end annotation

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    iget v0, p2, Lm9/g;->h:I

    if-eqz v0, :cond_4

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ln9/b;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p3}, Ln9/b;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lm9/f;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->isDestroyied()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lm9/f;->e:I

    iget v1, p2, Lm9/g;->h:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lm9/f;->f:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {p3}, Ln9/b;->e()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Ln9/b;->d()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object p1

    iget-object p3, p0, Lm9/f;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    if-eq p3, p1, :cond_2

    iget-object p3, p0, Lm9/f;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    const/4 v0, 0x0

    invoke-virtual {p3, v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setMaterialInstanceAt(ILcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)V

    iput-object p1, p0, Lm9/f;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    :cond_2
    invoke-virtual {p0, p2}, Lm9/f;->g(Lm9/g;)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lm9/f;->d(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;Lm9/g;Ln9/b;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final f(Lm9/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderData"
        }
    .end annotation

    iget-object v0, p0, Lm9/f;->a:Lcom/google/android/filament/Box;

    iget v1, p1, Lm9/g;->j:F

    iget v2, p1, Lm9/g;->k:F

    iget v3, p1, Lm9/g;->l:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/filament/Box;->c(FFF)V

    iget-object v0, p0, Lm9/f;->a:Lcom/google/android/filament/Box;

    iget v1, p1, Lm9/g;->m:F

    iget v2, p1, Lm9/g;->n:F

    iget p1, p1, Lm9/g;->o:F

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/filament/Box;->d(FFF)V

    return-void
.end method

.method public final g(Lm9/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderData"
        }
    .end annotation

    iget-object v0, p0, Lm9/f;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->isDestroyied()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    iget v0, p1, Lm9/g;->h:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput v0, p0, Lm9/f;->e:I

    invoke-virtual {p0, p1}, Lm9/f;->f(Lm9/g;)V

    iget-object v0, p0, Lm9/f;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lm9/g;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget p1, p1, Lm9/g;->h:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;->h(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)V

    :cond_1
    iget-object p1, p0, Lm9/f;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    iget-object v0, p0, Lm9/f;->a:Lcom/google/android/filament/Box;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setBounding(Lcom/google/android/filament/Box;)V

    :cond_2
    :goto_0
    return-void
.end method
