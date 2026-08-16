.class public Lcom/android/tools/r8/shaking/j1;
.super Lcom/android/tools/r8/shaking/r1;
.source "SourceFile"


# instance fields
.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/shaking/r1;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/shaking/l1;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lcom/android/tools/r8/shaking/r1;-><init>(Lcom/android/tools/r8/shaking/t1;)V

    .line 3
    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/l1;->k:Z

    .line 4
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/j1;->k:Z

    .line 5
    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/l1;->l:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/j1;->l:Z

    .line 7
    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/l1;->m:Z

    .line 8
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/j1;->m:Z

    .line 9
    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/l1;->n:Z

    .line 10
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/j1;->n:Z

    .line 11
    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/l1;->o:Z

    .line 12
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/j1;->o:Z

    .line 13
    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/l1;->p:Z

    .line 14
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/j1;->p:Z

    .line 15
    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/l1;->q:Z

    .line 16
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/j1;->q:Z

    .line 17
    iget-boolean p1, p1, Lcom/android/tools/r8/shaking/l1;->r:Z

    .line 18
    iput-boolean p1, p0, Lcom/android/tools/r8/shaking/j1;->r:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/shaking/l1;)Z
    .locals 2

    .line 2
    invoke-super {p0, p1}, Lcom/android/tools/r8/shaking/r1;->a(Lcom/android/tools/r8/shaking/t1;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/j1;->r:Z

    .line 4
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/l1;->r:Z

    if-ne v0, v1, :cond_0

    .line 5
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/j1;->k:Z

    .line 6
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/l1;->k:Z

    if-ne v0, v1, :cond_0

    .line 7
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/j1;->l:Z

    .line 8
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/l1;->l:Z

    if-ne v0, v1, :cond_0

    .line 9
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/j1;->m:Z

    .line 10
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/l1;->m:Z

    if-ne v0, v1, :cond_0

    .line 11
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/j1;->n:Z

    .line 12
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/l1;->n:Z

    if-ne v0, v1, :cond_0

    .line 13
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/j1;->o:Z

    .line 14
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/l1;->o:Z

    if-ne v0, v1, :cond_0

    .line 15
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/j1;->p:Z

    .line 16
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/l1;->p:Z

    if-ne v0, v1, :cond_0

    .line 17
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/j1;->q:Z

    .line 18
    iget-boolean p1, p1, Lcom/android/tools/r8/shaking/l1;->q:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/shaking/t1;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/shaking/l1;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/j1;->a(Lcom/android/tools/r8/shaking/l1;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b()Lcom/android/tools/r8/shaking/t1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/j1;->k()Lcom/android/tools/r8/shaking/l1;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/shaking/t1;)Z
    .locals 0

    .line 2
    check-cast p1, Lcom/android/tools/r8/shaking/l1;

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/j1;->a(Lcom/android/tools/r8/shaking/l1;)Z

    move-result p1

    return p1
.end method

.method public final c()Lcom/android/tools/r8/shaking/t1;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/shaking/l1;->t:Lcom/android/tools/r8/shaking/l1;

    return-object v0
.end method

.method public final d()Lcom/android/tools/r8/shaking/t1;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/shaking/l1;->s:Lcom/android/tools/r8/shaking/l1;

    return-object v0
.end method

.method public final bridge synthetic i()Lcom/android/tools/r8/shaking/r1;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/j1;->m()Lcom/android/tools/r8/shaking/j1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j()Lcom/android/tools/r8/shaking/r1;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/j1;->n()Lcom/android/tools/r8/shaking/j1;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/android/tools/r8/shaking/l1;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/shaking/l1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/l1;-><init>(Lcom/android/tools/r8/shaking/j1;)V

    return-object v0
.end method

.method public l()Lcom/android/tools/r8/shaking/j1;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/r1;->h()Lcom/android/tools/r8/shaking/r1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/j1;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/j1;->k:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/j1;->n()Lcom/android/tools/r8/shaking/j1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/j1;->l:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/j1;->n()Lcom/android/tools/r8/shaking/j1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/j1;->m:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/j1;->n()Lcom/android/tools/r8/shaking/j1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/j1;->n:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/j1;->n()Lcom/android/tools/r8/shaking/j1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/j1;->o:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/j1;->n()Lcom/android/tools/r8/shaking/j1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/j1;->p:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/j1;->n()Lcom/android/tools/r8/shaking/j1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/j1;->q:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/j1;->n()Lcom/android/tools/r8/shaking/j1;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/j1;->r:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/j1;->n()Lcom/android/tools/r8/shaking/j1;

    move-result-object v0

    return-object v0
.end method

.method public final m()Lcom/android/tools/r8/shaking/j1;
    .locals 3

    invoke-super {p0}, Lcom/android/tools/r8/shaking/r1;->i()Lcom/android/tools/r8/shaking/r1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/j1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/j1;->k:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/j1;->n()Lcom/android/tools/r8/shaking/j1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/j1;->l:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/j1;->n()Lcom/android/tools/r8/shaking/j1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/j1;->m:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/j1;->n()Lcom/android/tools/r8/shaking/j1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/j1;->n:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/j1;->n()Lcom/android/tools/r8/shaking/j1;

    move-result-object v0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/tools/r8/shaking/j1;->o:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/j1;->n()Lcom/android/tools/r8/shaking/j1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/j1;->p:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/j1;->n()Lcom/android/tools/r8/shaking/j1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/j1;->q:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/j1;->n()Lcom/android/tools/r8/shaking/j1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/j1;->r:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/j1;->n()Lcom/android/tools/r8/shaking/j1;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/android/tools/r8/shaking/j1;
    .locals 0

    return-object p0
.end method
