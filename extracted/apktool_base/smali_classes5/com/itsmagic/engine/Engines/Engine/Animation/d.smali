.class public Lcom/itsmagic/engine/Engines/Engine/Animation/d;
.super LK8/f;
.source "SourceFile"


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public final d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public g:F

.field public i:Z

.field public j:F

.field public k:Z

.field public l:F

.field public final m:Lge/V;

.field public final n:Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

.field public o:Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;

.field public p:I

.field public q:LJAVARuntime/Animation;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "file"
        }
    .end annotation

    invoke-direct {p0}, LK8/f;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->g:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->i:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->j:F

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->k:Z

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->l:F

    new-instance v0, Lge/V;

    invoke-direct {v0}, Lge/V;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->m:Lge/V;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->n:Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->i()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {}, LNc/d;->c()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->p:I

    return-void
.end method


# virtual methods
.method public d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)LL8/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->e(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)LL8/b;

    move-result-object p1

    return-object p1
.end method

.method public e(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)LL8/b;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "mjp"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->n:Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->g:F

    float-to-int v0, v0

    invoke-static {p1, v0, p2}, LL8/a;->l(Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;ILcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)LL8/b;

    move-result-object p1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->o:Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;

    invoke-virtual {p1, p2}, LL8/b;->f(Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;)V

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, LL8/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_3

    invoke-virtual {p1}, LL8/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LL8/c;

    invoke-virtual {v0}, LL8/c;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, LL8/c;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, LL8/c;->j()LAc/b;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->m:Lge/V;

    invoke-virtual {v1}, LAc/b;->hashCode()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lge/V;->E(J)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->m:Lge/V;

    invoke-virtual {v1}, LAc/b;->hashCode()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lge/V;->u(J)I

    move-result v2

    invoke-virtual {v0}, LL8/c;->m()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, LL8/c;->F(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->m:Lge/V;

    invoke-virtual {v1}, LAc/b;->hashCode()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v0}, LL8/c;->m()I

    move-result v0

    invoke-virtual {v2, v3, v4, v0}, Lge/V;->m7(JI)I

    :cond_2
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->g:F

    invoke-static {}, LK8/d;->b()F

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->n:Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->fps:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->j:F

    mul-float/2addr v0, v1

    add-float/2addr p2, v0

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->g:F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->p()V

    return-object p1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->b:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getWeight()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->l:F

    return v0
.end method

.method public h()Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->n:Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    return-object v0
.end method

.method public i()Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->o:Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;

    return-object v0
.end method

.method public isLoop()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->k:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->i:Z

    return v0
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->m:Lge/V;

    invoke-virtual {v0}, Lge/V;->clear()V

    return-void
.end method

.method public k(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;ILL8/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "frameTime",
            "cacheData"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->l(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;ILL8/e;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)V

    return-void
.end method

.method public l(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;ILL8/e;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "frameTime",
            "cacheData",
            "mjp"
        }
    .end annotation

    invoke-static {p1}, Lgb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->n:Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    invoke-static {v0, p2, p4}, LL8/a;->l(Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;ILcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)LL8/b;

    move-result-object p2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->o:Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;

    invoke-virtual {p2, v0}, LL8/b;->f(Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;)V

    invoke-static {p2, p1, p3, p4}, LL8/a;->e(LL8/b;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LL8/e;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public m(Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mask"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->o:Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;

    return-void
.end method

.method public n()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->k:Z

    return-void
.end method

.method public o()LJAVARuntime/Animation;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->q:LJAVARuntime/Animation;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/Animation;

    invoke-direct {v0, p0}, LJAVARuntime/Animation;-><init>(Lcom/itsmagic/engine/Engines/Engine/Animation/d;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->q:LJAVARuntime/Animation;

    :cond_0
    return-object v0
.end method

.method public final p()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->n:Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->h()I

    move-result v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->g:F

    int-to-float v0, v0

    cmpl-float v1, v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->k:Z

    if-eqz v1, :cond_0

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->g:F

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->i:Z

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->g:F

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->j()V

    :cond_1
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->g:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_3

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->k:Z

    if-eqz v1, :cond_2

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->g:F

    goto :goto_1

    :cond_2
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->i:Z

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->g:F

    :goto_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->j()V

    :cond_3
    return-void
.end method

.method public play()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->g:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->i:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->k:Z

    return-void
.end method

.method public playInLoop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->i:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->k:Z

    return-void
.end method

.method public setSpeed(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speed"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->j:F

    return-void
.end method

.method public setWeight(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "weight"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->l:F

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->i:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->k:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->g:F

    return-void
.end method
