.class public Ldc/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldc/k;


# instance fields
.field public final a:Lcc/b;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

.field public d:Z

.field public e:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

.field public final f:Lcc/f;

.field public volatile g:Lec/i;

.field public volatile h:Z

.field public volatile i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;Lcc/b;Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "shaderName",
            "shaderBinder",
            "forwardPass",
            "material"
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Ldc/d;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;Lcc/b;Lcom/itsmagic/engine/Engines/Engine/Material/Material;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;Lcc/b;Lcom/itsmagic/engine/Engines/Engine/Material/Material;Z)V
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
            "shaderName",
            "shaderBinder",
            "forwardPass",
            "material",
            "autoBuildVariance"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ldc/d;->d:Z

    .line 4
    new-instance v0, Ldc/d$a;

    invoke-direct {v0, p0}, Ldc/d$a;-><init>(Ldc/d;)V

    iput-object v0, p0, Ldc/d;->f:Lcc/f;

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p3, :cond_1

    .line 6
    iput-object p1, p0, Ldc/d;->b:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Ldc/d;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    .line 8
    iput-object p3, p0, Ldc/d;->a:Lcc/b;

    .line 9
    iput-object p4, p0, Ldc/d;->e:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    .line 10
    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->t0(Lcc/f;)V

    if-eqz p5, :cond_0

    .line 11
    new-instance p1, Ldc/c;

    invoke-direct {p1, p0}, Ldc/c;-><init>(Ldc/d;)V

    invoke-static {p1}, LK8/a;->I(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "forwardPass cant be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "shadername can`t empty or null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "shaderBinder cant be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic m(Ldc/d;)V
    .locals 0

    invoke-virtual {p0}, Ldc/d;->v()V

    return-void
.end method

.method public static synthetic n(Ldc/d;)V
    .locals 0

    invoke-virtual {p0}, Ldc/d;->u()V

    return-void
.end method

.method public static synthetic o(Ldc/d;)V
    .locals 0

    invoke-virtual {p0}, Ldc/d;->v()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Ldc/d;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->X()V

    :cond_0
    return-void
.end method

.method public b()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;
    .locals 1

    iget-object v0, p0, Ldc/d;->a:Lcc/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcc/b;->e()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    return-object v0
.end method

.method public c(Lda/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    instance-of v0, p1, Lpc/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldc/d;->a:Lcc/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcc/b;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldc/d;->i:Z

    :cond_0
    iget-object v0, p0, Ldc/d;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->o(Lda/b;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic copy()Ldc/k;
    .locals 1

    invoke-virtual {p0}, Ldc/d;->s()Ldc/d;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Ldc/d;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "material",
            "serializableShaderEntries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/Material/Material;",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ldc/d;->e:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iget-object p1, p0, Ldc/d;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->t0(Lcc/f;)V

    iget-object p1, p0, Ldc/d;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->b0(Ljava/util/List;)V

    iget-object p1, p0, Ldc/d;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->o0(Z)V

    iget-object p1, p0, Ldc/d;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    iget-object p2, p0, Ldc/d;->f:Lcc/f;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->t0(Lcc/f;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Ldc/d;->d:Z

    invoke-virtual {p0}, Ldc/d;->v()V

    return-void
.end method

.method public f(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serializedShaderEntries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Ldc/d;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->c0(Ljava/util/List;)V

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldc/d;->a:Lcc/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcc/b;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldc/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public i()V
    .locals 1

    invoke-virtual {p0}, Ldc/d;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ldc/d;->x()V

    :cond_0
    invoke-virtual {p0}, Ldc/d;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ldc/d;->w()V

    :cond_1
    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Ldc/d;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->x0()V

    :cond_0
    return-void
.end method

.method public k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Ldc/d;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    return-object v0
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Ldc/d;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->W()V

    :cond_0
    return-void
.end method

.method public final p()V
    .locals 3

    iget-object v0, p0, Ldc/d;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->C()Lnc/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ldc/d;->a:Lcc/b;

    invoke-virtual {v1}, Lcc/b;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnc/b;->m(J)V

    :cond_0
    iget-object v0, p0, Ldc/d;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    iget-object v1, p0, Ldc/d;->a:Lcc/b;

    invoke-virtual {v1}, Lcc/b;->e()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v1

    iget-object v2, p0, Ldc/d;->e:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->h0(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    return-void
.end method

.method public final q()Z
    .locals 3

    iget-boolean v0, p0, Ldc/d;->i:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Ldc/d;->i:Z

    iget-object v0, p0, Ldc/d;->a:Lcc/b;

    invoke-virtual {v0}, Lcc/b;->j()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Ldc/d;->a:Lcc/b;

    invoke-virtual {v0}, Lcc/b;->g()Lec/i;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ldc/d;->a:Lcc/b;

    invoke-virtual {v0}, Lcc/b;->d()Lec/i;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Ldc/d;->a:Lcc/b;

    invoke-virtual {v2, v0}, Lcc/b;->l(Lec/i;)Z

    move-result v0

    iget-object v2, p0, Ldc/d;->a:Lcc/b;

    invoke-virtual {v2}, Lcc/b;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_5

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method public r()Z
    .locals 3

    iget-object v0, p0, Ldc/d;->g:Lec/i;

    iget-boolean v1, p0, Ldc/d;->h:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ldc/d;->a:Lcc/b;

    invoke-virtual {v1, v0}, Lcc/b;->k(Lec/i;)V

    iget-object v0, p0, Ldc/d;->a:Lcc/b;

    invoke-virtual {v0}, Lcc/b;->h()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Ldc/d;->g:Lec/i;

    iput-boolean v2, p0, Ldc/d;->h:Z

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    :goto_0
    return v2
.end method

.method public s()Ldc/d;
    .locals 5

    new-instance v0, Ldc/d;

    iget-object v1, p0, Ldc/d;->b:Ljava/lang/String;

    iget-object v2, p0, Ldc/d;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->m(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v2

    iget-object v3, p0, Ldc/d;->a:Lcc/b;

    invoke-static {v3}, Lcc/b;->b(Lcc/b;)Lcc/b;

    move-result-object v3

    iget-object v4, p0, Ldc/d;->e:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-direct {v0, v1, v2, v3, v4}, Ldc/d;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;Lcc/b;Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    return-object v0
.end method

.method public t()Lec/i;
    .locals 1

    iget-object v0, p0, Ldc/d;->a:Lcc/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcc/b;->g()Lec/i;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ldc/d;->a:Lcc/b;

    const-string v1, ""

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Deferred:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public final u()V
    .locals 3

    iget-object v0, p0, Ldc/d;->a:Lcc/b;

    invoke-virtual {v0}, Lcc/b;->g()Lec/i;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldc/d;->a:Lcc/b;

    invoke-virtual {v0}, Lcc/b;->d()Lec/i;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Ldc/d;->a:Lcc/b;

    iget-object v2, p0, Ldc/d;->e:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcc/b;->n(Lec/i;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ldc/d;->p()V

    iget-object v0, p0, Ldc/d;->e:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->P()V

    :cond_1
    return-void
.end method

.method public final v()V
    .locals 4

    iget-object v0, p0, Ldc/d;->a:Lcc/b;

    invoke-virtual {v0}, Lcc/b;->g()Lec/i;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ldc/d;->a:Lcc/b;

    invoke-virtual {v1}, Lcc/b;->d()Lec/i;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Ldc/d;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    iget-object v3, p0, Ldc/d;->a:Lcc/b;

    invoke-virtual {v2, v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->y0(Lec/i;Lcc/b;)Lec/i;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v3, p0, Ldc/d;->a:Lcc/b;

    invoke-virtual {v3, v1}, Lcc/b;->i(Lec/i;)Z

    move-result v3

    if-nez v3, :cond_2

    iput-object v1, p0, Ldc/d;->g:Lec/i;

    iput-boolean v2, p0, Ldc/d;->h:Z

    return-void

    :cond_2
    if-eqz v0, :cond_3

    if-eq v1, v0, :cond_4

    :cond_3
    if-eqz v1, :cond_4

    iget-object v0, p0, Ldc/d;->a:Lcc/b;

    iget-object v3, p0, Ldc/d;->e:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcc/b;->n(Lec/i;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Ldc/d;->d:Z

    :cond_4
    iget-object v0, p0, Ldc/d;->a:Lcc/b;

    iget-object v1, p0, Ldc/d;->e:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcc/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Ldc/d;->d:Z

    :cond_5
    iget-boolean v0, p0, Ldc/d;->d:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Ldc/d;->a:Lcc/b;

    invoke-virtual {v0}, Lcc/b;->e()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Ldc/d;->p()V

    iget-object v0, p0, Ldc/d;->e:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->P()V

    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Ldc/d;->g:Lec/i;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldc/d;->h:Z

    return-void
.end method

.method public final w()V
    .locals 1

    new-instance v0, Ldc/b;

    invoke-direct {v0, p0}, Ldc/b;-><init>(Ldc/d;)V

    invoke-static {v0}, LK8/a;->B(Ljava/lang/Runnable;)V

    return-void
.end method

.method public x()V
    .locals 1

    new-instance v0, Ldc/c;

    invoke-direct {v0, p0}, Ldc/c;-><init>(Ldc/d;)V

    invoke-static {v0}, LK8/a;->B(Ljava/lang/Runnable;)V

    return-void
.end method
