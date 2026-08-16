.class public Lcom/android/tools/r8/shaking/H1;
.super Lcom/android/tools/r8/shaking/E1;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/shaking/I1;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/I1;->c()Lcom/android/tools/r8/shaking/G1;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/shaking/E1;-><init>(Lcom/android/tools/r8/shaking/D1;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/shaking/R4;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/tools/r8/shaking/E1;-><init>(Lcom/android/tools/r8/shaking/D1;)V

    return-void
.end method


# virtual methods
.method public final A()Lcom/android/tools/r8/shaking/H1;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v0, Lcom/android/tools/r8/shaking/G1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->v:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/H1;->G()Lcom/android/tools/r8/shaking/H1;

    move-result-object v0

    return-object v0
.end method

.method public final B()Lcom/android/tools/r8/shaking/H1;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v0, Lcom/android/tools/r8/shaking/G1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->w:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/H1;->G()Lcom/android/tools/r8/shaking/H1;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/android/tools/r8/shaking/H1;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v0, Lcom/android/tools/r8/shaking/G1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->x:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/H1;->G()Lcom/android/tools/r8/shaking/H1;

    move-result-object v0

    return-object v0
.end method

.method public final D()Lcom/android/tools/r8/shaking/H1;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v0, Lcom/android/tools/r8/shaking/G1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->l:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/H1;->G()Lcom/android/tools/r8/shaking/H1;

    move-result-object v0

    return-object v0
.end method

.method public final E()Lcom/android/tools/r8/shaking/H1;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v0, Lcom/android/tools/r8/shaking/G1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->y:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/H1;->G()Lcom/android/tools/r8/shaking/H1;

    move-result-object v0

    return-object v0
.end method

.method public final F()Lcom/android/tools/r8/shaking/H1;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v0, Lcom/android/tools/r8/shaking/G1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->z:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/H1;->G()Lcom/android/tools/r8/shaking/H1;

    move-result-object v0

    return-object v0
.end method

.method public G()Lcom/android/tools/r8/shaking/H1;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/shaking/H1;)Lcom/android/tools/r8/shaking/H1;
    .locals 3

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/E1;->a(Lcom/android/tools/r8/shaking/E1;)Lcom/android/tools/r8/shaking/E1;

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v0, Lcom/android/tools/r8/shaking/G1;

    .line 4
    iget-object v0, v0, Lcom/android/tools/r8/shaking/G1;->B:Lcom/android/tools/r8/shaking/d1;

    .line 5
    iget-object v1, p1, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v1, Lcom/android/tools/r8/shaking/G1;

    .line 6
    iget-object v1, v1, Lcom/android/tools/r8/shaking/G1;->B:Lcom/android/tools/r8/shaking/d1;

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/d1;->a(Lcom/android/tools/r8/shaking/d1;)V

    .line 8
    iget-object v0, p1, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v0, Lcom/android/tools/r8/shaking/G1;

    .line 9
    iget-boolean v0, v0, Lcom/android/tools/r8/shaking/G1;->l:Z

    xor-int/lit8 v0, v0, 0x1

    .line 10
    new-instance v1, Lcom/android/tools/r8/shaking/R5;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/R5;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/shaking/s1;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/H1;

    iget-object v1, p1, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v1, Lcom/android/tools/r8/shaking/G1;

    .line 11
    iget-boolean v1, v1, Lcom/android/tools/r8/shaking/G1;->m:Z

    xor-int/lit8 v1, v1, 0x1

    .line 12
    new-instance v2, Lcom/android/tools/r8/shaking/d6;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/d6;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s1;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/H1;

    iget-object v1, p1, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v1, Lcom/android/tools/r8/shaking/G1;

    .line 13
    iget-boolean v1, v1, Lcom/android/tools/r8/shaking/G1;->n:Z

    xor-int/lit8 v1, v1, 0x1

    .line 14
    new-instance v2, Lcom/android/tools/r8/shaking/e6;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/e6;-><init>()V

    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s1;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/H1;

    iget-object v1, p1, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v1, Lcom/android/tools/r8/shaking/G1;

    .line 16
    iget-boolean v1, v1, Lcom/android/tools/r8/shaking/G1;->o:Z

    .line 17
    new-instance v2, Lcom/android/tools/r8/shaking/f6;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/f6;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s1;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/H1;

    iget-object v1, p1, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v1, Lcom/android/tools/r8/shaking/G1;

    .line 18
    iget-boolean v1, v1, Lcom/android/tools/r8/shaking/G1;->p:Z

    xor-int/lit8 v1, v1, 0x1

    .line 19
    new-instance v2, Lcom/android/tools/r8/shaking/S5;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/S5;-><init>()V

    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s1;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/H1;

    iget-object v1, p1, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v1, Lcom/android/tools/r8/shaking/G1;

    .line 21
    iget-boolean v1, v1, Lcom/android/tools/r8/shaking/G1;->q:Z

    xor-int/lit8 v1, v1, 0x1

    .line 22
    new-instance v2, Lcom/android/tools/r8/internal/AW0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/AW0;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s1;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/H1;

    iget-object v1, p1, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v1, Lcom/android/tools/r8/shaking/G1;

    .line 23
    iget-boolean v1, v1, Lcom/android/tools/r8/shaking/G1;->r:Z

    xor-int/lit8 v1, v1, 0x1

    .line 24
    new-instance v2, Lcom/android/tools/r8/shaking/T5;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/T5;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s1;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/H1;

    iget-object v1, p1, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v1, Lcom/android/tools/r8/shaking/G1;

    .line 25
    iget-boolean v1, v1, Lcom/android/tools/r8/shaking/G1;->s:Z

    xor-int/lit8 v1, v1, 0x1

    .line 26
    new-instance v2, Lcom/android/tools/r8/shaking/U5;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/U5;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s1;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/H1;

    iget-object v1, p1, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v1, Lcom/android/tools/r8/shaking/G1;

    .line 27
    iget-boolean v1, v1, Lcom/android/tools/r8/shaking/G1;->t:Z

    xor-int/lit8 v1, v1, 0x1

    .line 28
    new-instance v2, Lcom/android/tools/r8/shaking/V5;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/V5;-><init>()V

    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s1;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/H1;

    iget-object v1, p1, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v1, Lcom/android/tools/r8/shaking/G1;

    .line 30
    iget-boolean v1, v1, Lcom/android/tools/r8/shaking/G1;->u:Z

    xor-int/lit8 v1, v1, 0x1

    .line 31
    new-instance v2, Lcom/android/tools/r8/shaking/W5;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/W5;-><init>()V

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s1;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/H1;

    iget-object v1, p1, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v1, Lcom/android/tools/r8/shaking/G1;

    .line 33
    iget-boolean v1, v1, Lcom/android/tools/r8/shaking/G1;->v:Z

    xor-int/lit8 v1, v1, 0x1

    .line 34
    new-instance v2, Lcom/android/tools/r8/shaking/X5;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/X5;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s1;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/H1;

    iget-object v1, p1, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v1, Lcom/android/tools/r8/shaking/G1;

    .line 35
    iget-boolean v1, v1, Lcom/android/tools/r8/shaking/G1;->w:Z

    xor-int/lit8 v1, v1, 0x1

    .line 36
    new-instance v2, Lcom/android/tools/r8/shaking/Y5;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/Y5;-><init>()V

    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s1;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/H1;

    iget-object v1, p1, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v1, Lcom/android/tools/r8/shaking/G1;

    .line 38
    iget-boolean v1, v1, Lcom/android/tools/r8/shaking/G1;->x:Z

    xor-int/lit8 v1, v1, 0x1

    .line 39
    new-instance v2, Lcom/android/tools/r8/shaking/Z5;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/Z5;-><init>()V

    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s1;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/H1;

    iget-object v1, p1, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v1, Lcom/android/tools/r8/shaking/G1;

    .line 41
    iget-boolean v1, v1, Lcom/android/tools/r8/shaking/G1;->y:Z

    xor-int/lit8 v1, v1, 0x1

    .line 42
    new-instance v2, Lcom/android/tools/r8/shaking/a6;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/a6;-><init>()V

    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s1;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/H1;

    iget-object v1, p1, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v1, Lcom/android/tools/r8/shaking/G1;

    .line 44
    iget-boolean v1, v1, Lcom/android/tools/r8/shaking/G1;->z:Z

    xor-int/lit8 v1, v1, 0x1

    .line 45
    new-instance v2, Lcom/android/tools/r8/shaking/b6;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/b6;-><init>()V

    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s1;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/H1;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast p1, Lcom/android/tools/r8/shaking/G1;

    .line 47
    iget-boolean p1, p1, Lcom/android/tools/r8/shaking/G1;->A:Z

    xor-int/lit8 p1, p1, 0x1

    .line 48
    new-instance v1, Lcom/android/tools/r8/shaking/c6;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/c6;-><init>()V

    .line 49
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/shaking/s1;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/H1;

    return-object p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/shaking/s1;)Lcom/android/tools/r8/shaking/s1;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/shaking/H1;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/H1;->a(Lcom/android/tools/r8/shaking/H1;)Lcom/android/tools/r8/shaking/H1;

    move-result-object p1

    return-object p1
.end method

.method public final d()Lcom/android/tools/r8/shaking/H1;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic m()Lcom/android/tools/r8/shaking/s1;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/H1;->G()Lcom/android/tools/r8/shaking/H1;

    move-result-object v0

    return-object v0
.end method

.method public final q()Lcom/android/tools/r8/shaking/H1;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v0, Lcom/android/tools/r8/shaking/G1;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->o:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/H1;->G()Lcom/android/tools/r8/shaking/H1;

    move-result-object v0

    return-object v0
.end method

.method public final r()Lcom/android/tools/r8/shaking/H1;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v0, Lcom/android/tools/r8/shaking/G1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->m:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/H1;->G()Lcom/android/tools/r8/shaking/H1;

    move-result-object v0

    return-object v0
.end method

.method public final s()Lcom/android/tools/r8/shaking/H1;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v0, Lcom/android/tools/r8/shaking/G1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->n:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/H1;->G()Lcom/android/tools/r8/shaking/H1;

    move-result-object v0

    return-object v0
.end method

.method public final t()Lcom/android/tools/r8/shaking/H1;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v0, Lcom/android/tools/r8/shaking/G1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->p:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/H1;->G()Lcom/android/tools/r8/shaking/H1;

    move-result-object v0

    return-object v0
.end method

.method public final u()Lcom/android/tools/r8/shaking/H1;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v0, Lcom/android/tools/r8/shaking/G1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->q:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/H1;->G()Lcom/android/tools/r8/shaking/H1;

    move-result-object v0

    return-object v0
.end method

.method public final v()Lcom/android/tools/r8/shaking/H1;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v0, Lcom/android/tools/r8/shaking/G1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->r:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/H1;->G()Lcom/android/tools/r8/shaking/H1;

    move-result-object v0

    return-object v0
.end method

.method public final w()Lcom/android/tools/r8/shaking/H1;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v0, Lcom/android/tools/r8/shaking/G1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->A:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/H1;->G()Lcom/android/tools/r8/shaking/H1;

    move-result-object v0

    return-object v0
.end method

.method public final x()Lcom/android/tools/r8/shaking/H1;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v0, Lcom/android/tools/r8/shaking/G1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->s:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/H1;->G()Lcom/android/tools/r8/shaking/H1;

    move-result-object v0

    return-object v0
.end method

.method public final y()Lcom/android/tools/r8/shaking/H1;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v0, Lcom/android/tools/r8/shaking/G1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->t:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/H1;->G()Lcom/android/tools/r8/shaking/H1;

    move-result-object v0

    return-object v0
.end method

.method public final z()Lcom/android/tools/r8/shaking/H1;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v0, Lcom/android/tools/r8/shaking/G1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/G1;->u:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/H1;->G()Lcom/android/tools/r8/shaking/H1;

    move-result-object v0

    return-object v0
.end method
