.class public Lcom/android/tools/r8/shaking/G1;
.super Lcom/android/tools/r8/shaking/D1;
.source "SourceFile"


# instance fields
.field public A:Z

.field public B:Lcom/android/tools/r8/shaking/d1;

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/shaking/D1;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/shaking/I1;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lcom/android/tools/r8/shaking/D1;-><init>(Lcom/android/tools/r8/shaking/F1;)V

    .line 3
    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/I1;->l:Z

    .line 4
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/G1;->l:Z

    .line 5
    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/I1;->m:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/G1;->m:Z

    .line 7
    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/I1;->n:Z

    .line 8
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/G1;->n:Z

    .line 9
    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/I1;->o:Z

    .line 10
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/G1;->o:Z

    .line 11
    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/I1;->p:Z

    .line 12
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/G1;->p:Z

    .line 13
    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/I1;->q:Z

    .line 14
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/G1;->q:Z

    .line 15
    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/I1;->r:Z

    .line 16
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/G1;->r:Z

    .line 17
    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/I1;->s:Z

    .line 18
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/G1;->s:Z

    .line 19
    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/I1;->t:Z

    .line 20
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/G1;->t:Z

    .line 21
    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/I1;->u:Z

    .line 22
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/G1;->u:Z

    .line 23
    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/I1;->v:Z

    .line 24
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/G1;->v:Z

    .line 25
    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/I1;->w:Z

    .line 26
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/G1;->w:Z

    .line 27
    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/I1;->x:Z

    .line 28
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/G1;->x:Z

    .line 29
    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/I1;->y:Z

    .line 30
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/G1;->y:Z

    .line 31
    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/I1;->z:Z

    .line 32
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/G1;->z:Z

    .line 33
    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/I1;->A:Z

    .line 34
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/G1;->A:Z

    .line 35
    iget-object p1, p1, Lcom/android/tools/r8/shaking/I1;->B:Lcom/android/tools/r8/shaking/i1;

    .line 36
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/i1;->c()Lcom/android/tools/r8/shaking/d1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/shaking/G1;->B:Lcom/android/tools/r8/shaking/d1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/shaking/I1;)Z
    .locals 2

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/D1;->a(Lcom/android/tools/r8/shaking/F1;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/G1;->l:Z

    .line 4
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/I1;->l:Z

    if-ne v0, v1, :cond_0

    .line 5
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/G1;->m:Z

    .line 6
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/I1;->m:Z

    if-ne v0, v1, :cond_0

    .line 7
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/G1;->n:Z

    .line 8
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/I1;->n:Z

    if-ne v0, v1, :cond_0

    .line 9
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/G1;->o:Z

    .line 10
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/I1;->o:Z

    if-ne v0, v1, :cond_0

    .line 11
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/G1;->p:Z

    .line 12
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/I1;->p:Z

    if-ne v0, v1, :cond_0

    .line 13
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/G1;->q:Z

    .line 14
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/I1;->q:Z

    if-ne v0, v1, :cond_0

    .line 15
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/G1;->r:Z

    .line 16
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/I1;->r:Z

    if-ne v0, v1, :cond_0

    .line 17
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/G1;->s:Z

    .line 18
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/I1;->s:Z

    if-ne v0, v1, :cond_0

    .line 19
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/G1;->t:Z

    .line 20
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/I1;->t:Z

    if-ne v0, v1, :cond_0

    .line 21
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/G1;->u:Z

    .line 22
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/I1;->u:Z

    if-ne v0, v1, :cond_0

    .line 23
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/G1;->v:Z

    .line 24
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/I1;->v:Z

    if-ne v0, v1, :cond_0

    .line 25
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/G1;->w:Z

    .line 26
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/I1;->w:Z

    if-ne v0, v1, :cond_0

    .line 27
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/G1;->x:Z

    .line 28
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/I1;->x:Z

    if-ne v0, v1, :cond_0

    .line 29
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/G1;->y:Z

    .line 30
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/I1;->y:Z

    if-ne v0, v1, :cond_0

    .line 31
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/G1;->z:Z

    .line 32
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/I1;->z:Z

    if-ne v0, v1, :cond_0

    .line 33
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/G1;->A:Z

    .line 34
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/I1;->A:Z

    if-ne v0, v1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/android/tools/r8/shaking/G1;->B:Lcom/android/tools/r8/shaking/d1;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/I1;->B:Lcom/android/tools/r8/shaking/i1;

    .line 36
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/d1;->a(Lcom/android/tools/r8/shaking/i1;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/shaking/t1;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/shaking/I1;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/G1;->a(Lcom/android/tools/r8/shaking/I1;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b()Lcom/android/tools/r8/shaking/t1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/G1;->l()Lcom/android/tools/r8/shaking/I1;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/shaking/t1;)Z
    .locals 0

    .line 2
    check-cast p1, Lcom/android/tools/r8/shaking/I1;

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/G1;->a(Lcom/android/tools/r8/shaking/I1;)Z

    move-result p1

    return p1
.end method

.method public final c()Lcom/android/tools/r8/shaking/t1;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/shaking/I1;->D:Lcom/android/tools/r8/shaking/I1;

    return-object v0
.end method

.method public final d()Lcom/android/tools/r8/shaking/t1;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/shaking/I1;->C:Lcom/android/tools/r8/shaking/I1;

    return-object v0
.end method

.method public final bridge synthetic i()Lcom/android/tools/r8/shaking/r1;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/G1;->n()Lcom/android/tools/r8/shaking/G1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j()Lcom/android/tools/r8/shaking/r1;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/G1;->o()Lcom/android/tools/r8/shaking/G1;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/android/tools/r8/shaking/I1;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/shaking/I1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/I1;-><init>(Lcom/android/tools/r8/shaking/G1;)V

    return-object v0
.end method

.method public m()Lcom/android/tools/r8/shaking/G1;
    .locals 3

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/r1;->h()Lcom/android/tools/r8/shaking/r1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/D1;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/D1;->k:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/r1;->j()Lcom/android/tools/r8/shaking/r1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/D1;

    check-cast v0, Lcom/android/tools/r8/shaking/G1;

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->l:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/G1;->o()Lcom/android/tools/r8/shaking/G1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->m:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/G1;->o()Lcom/android/tools/r8/shaking/G1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->n:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/G1;->o()Lcom/android/tools/r8/shaking/G1;

    move-result-object v0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/tools/r8/shaking/G1;->o:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/G1;->o()Lcom/android/tools/r8/shaking/G1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->p:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/G1;->o()Lcom/android/tools/r8/shaking/G1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->q:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/G1;->o()Lcom/android/tools/r8/shaking/G1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->r:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/G1;->o()Lcom/android/tools/r8/shaking/G1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->s:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/G1;->o()Lcom/android/tools/r8/shaking/G1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->t:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/G1;->o()Lcom/android/tools/r8/shaking/G1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->u:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/G1;->o()Lcom/android/tools/r8/shaking/G1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->v:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/G1;->o()Lcom/android/tools/r8/shaking/G1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->w:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/G1;->o()Lcom/android/tools/r8/shaking/G1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->x:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/G1;->o()Lcom/android/tools/r8/shaking/G1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->y:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/G1;->o()Lcom/android/tools/r8/shaking/G1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->z:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/G1;->o()Lcom/android/tools/r8/shaking/G1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->A:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/G1;->o()Lcom/android/tools/r8/shaking/G1;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/shaking/d1;

    sget-object v2, Lcom/android/tools/r8/shaking/f1;->c:Lcom/android/tools/r8/shaking/f1;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/shaking/d1;-><init>(Lcom/android/tools/r8/shaking/f1;)V

    iput-object v1, v0, Lcom/android/tools/r8/shaking/G1;->B:Lcom/android/tools/r8/shaking/d1;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/G1;->o()Lcom/android/tools/r8/shaking/G1;

    move-result-object v0

    return-object v0
.end method

.method public final n()Lcom/android/tools/r8/shaking/G1;
    .locals 3

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/D1;->k()Lcom/android/tools/r8/shaking/D1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/G1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->l:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/G1;->o()Lcom/android/tools/r8/shaking/G1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->m:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/G1;->o()Lcom/android/tools/r8/shaking/G1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->n:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/G1;->o()Lcom/android/tools/r8/shaking/G1;

    move-result-object v0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/tools/r8/shaking/G1;->o:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/G1;->o()Lcom/android/tools/r8/shaking/G1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->p:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/G1;->o()Lcom/android/tools/r8/shaking/G1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->q:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/G1;->o()Lcom/android/tools/r8/shaking/G1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->r:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/G1;->o()Lcom/android/tools/r8/shaking/G1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->s:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/G1;->o()Lcom/android/tools/r8/shaking/G1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->t:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/G1;->o()Lcom/android/tools/r8/shaking/G1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->u:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/G1;->o()Lcom/android/tools/r8/shaking/G1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->v:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/G1;->o()Lcom/android/tools/r8/shaking/G1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->w:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/G1;->o()Lcom/android/tools/r8/shaking/G1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->x:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/G1;->o()Lcom/android/tools/r8/shaking/G1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->y:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/G1;->o()Lcom/android/tools/r8/shaking/G1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->z:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/G1;->o()Lcom/android/tools/r8/shaking/G1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->A:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/G1;->o()Lcom/android/tools/r8/shaking/G1;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/shaking/d1;

    sget-object v2, Lcom/android/tools/r8/shaking/f1;->d:Lcom/android/tools/r8/shaking/f1;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/shaking/d1;-><init>(Lcom/android/tools/r8/shaking/f1;)V

    iput-object v1, v0, Lcom/android/tools/r8/shaking/G1;->B:Lcom/android/tools/r8/shaking/d1;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/G1;->o()Lcom/android/tools/r8/shaking/G1;

    move-result-object v0

    return-object v0
.end method

.method public o()Lcom/android/tools/r8/shaking/G1;
    .locals 0

    return-object p0
.end method
