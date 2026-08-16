.class public final Ln9/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

.field public b:Z

.field public c:Lub/p;

.field public d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public e:F

.field public final f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile h:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;

.field public i:F

.field public j:F

.field public k:F

.field public l:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ln9/b;->b:Z

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Ln9/b;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Ln9/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Ln9/b;->i:F

    iput v0, p0, Ln9/b;->j:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Ln9/b;->l:F

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Ln9/b;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "captureHalfWidth"

    iget v2, p0, Ln9/b;->i:F

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->w(Ljava/lang/String;F)V

    iget-object v0, p0, Ln9/b;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const-string v1, "captureHalfHeight"

    iget v2, p0, Ln9/b;->j:F

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->w(Ljava/lang/String;F)V

    iget-object v0, p0, Ln9/b;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const-string v1, "capturePivotYOffset"

    iget v2, p0, Ln9/b;->k:F

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->w(Ljava/lang/String;F)V

    iget-object v0, p0, Ln9/b;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const-string v1, "captureSourceScale"

    iget v2, p0, Ln9/b;->l:F

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->w(Ljava/lang/String;F)V

    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Ln9/b;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ln9/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Ln9/b;->h:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v2, p0, Ln9/b;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->a0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->getIntensity()F

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ln9/b;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move v0, v1

    :goto_0
    iget-object v1, p0, Ln9/b;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const-string v2, "gsp_windDirection"

    iget-object v3, p0, Ln9/b;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->C(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object v1, p0, Ln9/b;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const-string v2, "gsp_windIntensity"

    invoke-virtual {v1, v2, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->w(Ljava/lang/String;F)V

    iget-object v0, p0, Ln9/b;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const-string v1, "gsp_windVerticality"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->w(Ljava/lang/String;F)V

    iget-object v0, p0, Ln9/b;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const-string v1, "windEffect"

    iget v2, p0, Ln9/b;->e:F

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->w(Ljava/lang/String;F)V

    :cond_2
    :goto_1
    return-void
.end method

.method public c()Lub/p;
    .locals 1

    iget-object v0, p0, Ln9/b;->c:Lub/p;

    return-object v0
.end method

.method public d()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;
    .locals 1

    iget-object v0, p0, Ln9/b;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    return-object v0
.end method

.method public e()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1

    iget-object v0, p0, Ln9/b;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-object v0
.end method

.method public f()F
    .locals 1

    iget v0, p0, Ln9/b;->e:F

    return v0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Ln9/b;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln9/b;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln9/b;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->f1()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln9/b;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->l0()LRb/d;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Ln9/b;->c:Lub/p;

    invoke-static {v0}, Lub/p;->L(Lub/p;)Z

    move-result v0

    return v0
.end method

.method public i(Lub/p;FZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "impostorTexture",
            "nextWindEffect",
            "receiveLighting"
        }
    .end annotation

    iget-object v0, p0, Ln9/b;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ln9/b;->b:Z

    if-ne v0, p3, :cond_1

    iget-object p3, p0, Ln9/b;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x1()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Ln9/b;->c:Lub/p;

    if-ne p3, p1, :cond_1

    iget p1, p0, Ln9/b;->e:F

    invoke-static {p2}, LNc/b;->G(F)F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Ln9/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public j(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "windEffect"
        }
    .end annotation

    iput-object p1, p0, Ln9/b;->h:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;

    iget-object p1, p0, Ln9/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Ln9/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public l()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Ln9/b;->c:Lub/p;

    iput-object v0, p0, Ln9/b;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const/4 v1, 0x1

    iput-boolean v1, p0, Ln9/b;->b:Z

    iput-object v0, p0, Ln9/b;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    const/4 v2, 0x0

    iput v2, p0, Ln9/b;->e:F

    iput-object v0, p0, Ln9/b;->h:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;

    iget-object v0, p0, Ln9/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public m(FFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "halfWidth",
            "halfHeight",
            "pivotYOffset",
            "sourceScale"
        }
    .end annotation

    const v0, 0x3d4ccccd    # 0.05f

    invoke-static {v0, p1}, LNc/b;->M(FF)F

    move-result p1

    invoke-static {v0, p2}, LNc/b;->M(FF)F

    move-result p2

    const v0, 0x38d1b717    # 1.0E-4f

    invoke-static {v0, p4}, LNc/b;->M(FF)F

    move-result p4

    iget v0, p0, Ln9/b;->i:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Ln9/b;->j:F

    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Ln9/b;->k:F

    invoke-static {v0, p3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Ln9/b;->l:F

    invoke-static {v0, p4}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Ln9/b;->i:F

    iput p2, p0, Ln9/b;->j:F

    iput p3, p0, Ln9/b;->k:F

    iput p4, p0, Ln9/b;->l:F

    invoke-virtual {p0}, Ln9/b;->a()V

    return-void
.end method

.method public n(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "windEffect"
        }
    .end annotation

    invoke-static {p1}, LNc/b;->G(F)F

    move-result p1

    iget v0, p0, Ln9/b;->e:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Ln9/b;->e:F

    iget-object p1, p0, Ln9/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public o(Lub/p;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "impostorTexture",
            "receiveLighting"
        }
    .end annotation

    iget-object v0, p0, Ln9/b;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ln9/b;->b:Z

    if-eq v0, p2, :cond_2

    :cond_0
    invoke-static {p2}, Ln9/c;->c(Z)Lec/e;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lec/e;->h()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iput-object v0, p0, Ln9/b;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iput-boolean p2, p0, Ln9/b;->b:Z

    iput-object v1, p0, Ln9/b;->c:Lub/p;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->getFirst()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;

    move-result-object p2

    iput-object p2, p0, Ln9/b;->h:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;

    iget-object p2, p0, Ln9/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Ln9/b;->a()V

    :cond_2
    invoke-static {p1}, Lub/p;->L(Lub/p;)Z

    move-result p2

    const-string v0, "albedo"

    if-eqz p2, :cond_3

    iget-object p2, p0, Ln9/b;->c:Lub/p;

    if-eq p2, p1, :cond_4

    iput-object p1, p0, Ln9/b;->c:Lub/p;

    iget-object p2, p0, Ln9/b;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {p1, p2, v0}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Ln9/b;->c:Lub/p;

    if-eqz p1, :cond_4

    iput-object v1, p0, Ln9/b;->c:Lub/p;

    sget-object p1, Lyb/b;->i:Lub/p;

    invoke-static {p1}, Lub/p;->L(Lub/p;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lyb/b;->i:Lub/p;

    iget-object p2, p0, Ln9/b;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {p1, p2, v0}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    :cond_4
    :goto_0
    invoke-virtual {p0}, Ln9/b;->b()V

    iget-object p1, p0, Ln9/b;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-nez p1, :cond_5

    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->SQUARE90:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->C1(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1

    iput-object p1, p0, Ln9/b;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    :cond_5
    iget-object p1, p0, Ln9/b;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x1()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Ln9/b;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->u1()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Ln9/b;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->apply()V

    :cond_6
    return-void
.end method
