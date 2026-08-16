.class public Lcom/android/tools/r8/shaking/k1;
.super Lcom/android/tools/r8/shaking/s1;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/shaking/O4;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/tools/r8/shaking/s1;-><init>(Lcom/android/tools/r8/shaking/r1;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/shaking/l1;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/l1;->c()Lcom/android/tools/r8/shaking/j1;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/shaking/s1;-><init>(Lcom/android/tools/r8/shaking/r1;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/shaking/k1;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/shaking/k1;)Lcom/android/tools/r8/shaking/k1;
    .locals 3

    .line 3
    invoke-super {p0, p1}, Lcom/android/tools/r8/shaking/s1;->a(Lcom/android/tools/r8/shaking/s1;)Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/k1;

    iget-object v1, p1, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v1, Lcom/android/tools/r8/shaking/j1;

    .line 4
    iget-boolean v1, v1, Lcom/android/tools/r8/shaking/j1;->r:Z

    .line 5
    new-instance v2, Lcom/android/tools/r8/shaking/kd;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/kd;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s1;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/k1;

    iget-object v1, p1, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v1, Lcom/android/tools/r8/shaking/j1;

    .line 6
    iget-boolean v1, v1, Lcom/android/tools/r8/shaking/j1;->k:Z

    xor-int/lit8 v1, v1, 0x1

    .line 7
    new-instance v2, Lcom/android/tools/r8/shaking/ld;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/ld;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s1;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/k1;

    iget-object v1, p1, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v1, Lcom/android/tools/r8/shaking/j1;

    .line 8
    iget-boolean v1, v1, Lcom/android/tools/r8/shaking/j1;->l:Z

    xor-int/lit8 v1, v1, 0x1

    .line 9
    new-instance v2, Lcom/android/tools/r8/shaking/md;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/md;-><init>()V

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s1;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/k1;

    iget-object v1, p1, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v1, Lcom/android/tools/r8/shaking/j1;

    .line 11
    iget-boolean v1, v1, Lcom/android/tools/r8/shaking/j1;->m:Z

    xor-int/lit8 v1, v1, 0x1

    .line 12
    new-instance v2, Lcom/android/tools/r8/shaking/nd;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/nd;-><init>()V

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s1;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/k1;

    iget-object v1, p1, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v1, Lcom/android/tools/r8/shaking/j1;

    .line 14
    iget-boolean v1, v1, Lcom/android/tools/r8/shaking/j1;->n:Z

    xor-int/lit8 v1, v1, 0x1

    .line 15
    new-instance v2, Lcom/android/tools/r8/shaking/od;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/od;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s1;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/k1;

    iget-object v1, p1, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v1, Lcom/android/tools/r8/shaking/j1;

    .line 16
    iget-boolean v1, v1, Lcom/android/tools/r8/shaking/j1;->o:Z

    xor-int/lit8 v1, v1, 0x1

    .line 17
    new-instance v2, Lcom/android/tools/r8/internal/q51;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/q51;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s1;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/k1;

    iget-object v1, p1, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v1, Lcom/android/tools/r8/shaking/j1;

    .line 18
    iget-boolean v1, v1, Lcom/android/tools/r8/shaking/j1;->p:Z

    xor-int/lit8 v1, v1, 0x1

    .line 19
    new-instance v2, Lcom/android/tools/r8/shaking/pd;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/pd;-><init>()V

    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s1;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/k1;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast p1, Lcom/android/tools/r8/shaking/j1;

    .line 21
    iget-boolean p1, p1, Lcom/android/tools/r8/shaking/j1;->q:Z

    xor-int/lit8 p1, p1, 0x1

    .line 22
    new-instance v1, Lcom/android/tools/r8/shaking/qd;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/qd;-><init>()V

    .line 23
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/shaking/s1;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/k1;

    return-object p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/shaking/s1;)Lcom/android/tools/r8/shaking/s1;
    .locals 0

    .line 2
    check-cast p1, Lcom/android/tools/r8/shaking/k1;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/k1;->a(Lcom/android/tools/r8/shaking/k1;)Lcom/android/tools/r8/shaking/k1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic m()Lcom/android/tools/r8/shaking/s1;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/k1;->w()Lcom/android/tools/r8/shaking/k1;

    move-result-object v0

    return-object v0
.end method

.method public final p()Lcom/android/tools/r8/shaking/k1;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v0, Lcom/android/tools/r8/shaking/j1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/j1;->k:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/k1;->w()Lcom/android/tools/r8/shaking/k1;

    move-result-object v0

    return-object v0
.end method

.method public final q()Lcom/android/tools/r8/shaking/k1;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v0, Lcom/android/tools/r8/shaking/j1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/j1;->l:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/k1;->w()Lcom/android/tools/r8/shaking/k1;

    move-result-object v0

    return-object v0
.end method

.method public final r()Lcom/android/tools/r8/shaking/k1;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v0, Lcom/android/tools/r8/shaking/j1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/j1;->m:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/k1;->w()Lcom/android/tools/r8/shaking/k1;

    move-result-object v0

    return-object v0
.end method

.method public final s()Lcom/android/tools/r8/shaking/k1;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v0, Lcom/android/tools/r8/shaking/j1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/j1;->n:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/k1;->w()Lcom/android/tools/r8/shaking/k1;

    move-result-object v0

    return-object v0
.end method

.method public final t()Lcom/android/tools/r8/shaking/k1;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v0, Lcom/android/tools/r8/shaking/j1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/j1;->o:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/k1;->w()Lcom/android/tools/r8/shaking/k1;

    move-result-object v0

    return-object v0
.end method

.method public final u()Lcom/android/tools/r8/shaking/k1;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v0, Lcom/android/tools/r8/shaking/j1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/j1;->p:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/k1;->w()Lcom/android/tools/r8/shaking/k1;

    move-result-object v0

    return-object v0
.end method

.method public final v()Lcom/android/tools/r8/shaking/k1;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v0, Lcom/android/tools/r8/shaking/j1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/j1;->q:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/k1;->w()Lcom/android/tools/r8/shaking/k1;

    move-result-object v0

    return-object v0
.end method

.method public w()Lcom/android/tools/r8/shaking/k1;
    .locals 0

    return-object p0
.end method

.method public final x()Lcom/android/tools/r8/shaking/k1;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v0, Lcom/android/tools/r8/shaking/j1;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/j1;->r:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/k1;->w()Lcom/android/tools/r8/shaking/k1;

    move-result-object v0

    return-object v0
.end method
