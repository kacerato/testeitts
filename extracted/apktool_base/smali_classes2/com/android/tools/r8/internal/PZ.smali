.class public final Lcom/android/tools/r8/internal/PZ;
.super Lcom/android/tools/r8/graph/m0;
.source "SourceFile"


# instance fields
.field public final e:Lcom/android/tools/r8/internal/Hz;

.field public final synthetic f:Lcom/android/tools/r8/internal/QZ;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/QZ;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/PZ;->f:Lcom/android/tools/r8/internal/QZ;

    iget-object p1, p1, Lcom/android/tools/r8/internal/QZ;->h:Lcom/android/tools/r8/internal/RZ;

    iget-object p1, p1, Lcom/android/tools/r8/internal/RZ;->b:Lcom/android/tools/r8/graph/y;

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/graph/m0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H0;)V

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/i0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/Hz;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/PZ;->e:Lcom/android/tools/r8/internal/Hz;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;)V
    .locals 7

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    .line 27
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    .line 28
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 29
    check-cast v0, Lcom/android/tools/r8/graph/H5;

    iget-object v5, p0, Lcom/android/tools/r8/internal/PZ;->e:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    sget-object v4, Lcom/android/tools/r8/internal/kK;->d:Lcom/android/tools/r8/internal/kK;

    .line 31
    sget-object v6, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    move-object v2, p1

    .line 32
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    .line 33
    iget-object p1, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 34
    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 35
    iget-object v0, p0, Lcom/android/tools/r8/internal/PZ;->f:Lcom/android/tools/r8/internal/QZ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/QZ;->h:Lcom/android/tools/r8/internal/RZ;

    .line 36
    iget-object v0, v0, Lcom/android/tools/r8/internal/RZ;->b:Lcom/android/tools/r8/graph/y;

    .line 37
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 38
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->r()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 40
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/PZ;->d()V

    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/PZ;->f:Lcom/android/tools/r8/internal/QZ;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/QZ;->a(Lcom/android/tools/r8/graph/H5;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/D0;)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/android/tools/r8/internal/PZ;->f:Lcom/android/tools/r8/internal/QZ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/QZ;->h:Lcom/android/tools/r8/internal/RZ;

    .line 44
    iget-object v0, v0, Lcom/android/tools/r8/internal/RZ;->b:Lcom/android/tools/r8/graph/y;

    .line 45
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    .line 46
    iget-object v1, p1, Lcom/android/tools/r8/graph/D0;->g:Lcom/android/tools/r8/graph/C2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/B2;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    invoke-interface {v0}, Lcom/android/tools/r8/graph/d1;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object p1, p1, Lcom/android/tools/r8/graph/D0;->g:Lcom/android/tools/r8/graph/C2;

    .line 48
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 49
    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->u6:Lcom/android/tools/r8/graph/A2;

    if-eq p1, v1, :cond_0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->v6:Lcom/android/tools/r8/graph/A2;

    if-ne p1, v0, :cond_1

    :cond_0
    return-void

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/PZ;->d()V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/PZ;->f:Lcom/android/tools/r8/internal/QZ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/QZ;->h:Lcom/android/tools/r8/internal/RZ;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/internal/RZ;->b:Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 5
    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/E0;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/PZ;->f:Lcom/android/tools/r8/internal/QZ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/QZ;->c:Ljava/util/Set;

    .line 7
    new-instance v1, Lcom/android/tools/r8/internal/Yx0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Yx0;-><init>(Ljava/util/Set;)V

    .line 8
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    .line 9
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 10
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/PZ;->f:Lcom/android/tools/r8/internal/QZ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/QZ;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/PZ;->f:Lcom/android/tools/r8/internal/QZ;

    .line 13
    iget-object v2, v0, Lcom/android/tools/r8/internal/QZ;->g:Ljava/util/Collection;

    .line 14
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/android/tools/r8/internal/QZ;->g:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/PZ;->d()V

    goto :goto_1

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/PZ;->f:Lcom/android/tools/r8/internal/QZ;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/QZ;->b(Lcom/android/tools/r8/graph/H2;)V

    .line 17
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->L0()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H2;->h(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 19
    iget-object v2, p0, Lcom/android/tools/r8/internal/PZ;->f:Lcom/android/tools/r8/internal/QZ;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/QZ;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 20
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    .line 21
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 22
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    .line 23
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/PZ;->f:Lcom/android/tools/r8/internal/QZ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/QZ;->h:Lcom/android/tools/r8/internal/RZ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/RZ;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/AA;

    if-eqz p1, :cond_0

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/internal/PZ;->f:Lcom/android/tools/r8/internal/QZ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/QZ;->a:Lcom/android/tools/r8/internal/AA;

    if-eq p1, v0, :cond_0

    .line 25
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;)V
    .locals 7

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 8
    check-cast v0, Lcom/android/tools/r8/graph/H5;

    iget-object v5, p0, Lcom/android/tools/r8/internal/PZ;->e:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    sget-object v4, Lcom/android/tools/r8/internal/kK;->e:Lcom/android/tools/r8/internal/kK;

    .line 10
    sget-object v6, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    move-object v2, p1

    .line 11
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    .line 12
    iget-object p1, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 13
    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/PZ;->f:Lcom/android/tools/r8/internal/QZ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/QZ;->h:Lcom/android/tools/r8/internal/RZ;

    .line 15
    iget-object v0, v0, Lcom/android/tools/r8/internal/RZ;->b:Lcom/android/tools/r8/graph/y;

    .line 16
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 17
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/j;->d(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->p()Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/PZ;->d()V

    :cond_0
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/PZ;->e:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-interface {v0, p1}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/PZ;->a(Lcom/android/tools/r8/graph/H2;)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/PZ;->f:Lcom/android/tools/r8/internal/QZ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/QZ;->b()V

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/f6;->a()V

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/PZ;->f:Lcom/android/tools/r8/internal/QZ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/QZ;->a()V

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/A2;)V
    .locals 7

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 7
    check-cast v0, Lcom/android/tools/r8/graph/H5;

    iget-object v5, p0, Lcom/android/tools/r8/internal/PZ;->e:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    sget-object v4, Lcom/android/tools/r8/internal/kK;->f:Lcom/android/tools/r8/internal/kK;

    .line 9
    sget-object v6, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    move-object v2, p1

    .line 10
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    .line 11
    iget-object p1, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 12
    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/PZ;->f:Lcom/android/tools/r8/internal/QZ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/QZ;->h:Lcom/android/tools/r8/internal/RZ;

    .line 14
    iget-object v0, v0, Lcom/android/tools/r8/internal/RZ;->b:Lcom/android/tools/r8/graph/y;

    .line 15
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 16
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/j;->f(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->r()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/PZ;->d()V

    return-void

    .line 20
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/PZ;->a(Lcom/android/tools/r8/graph/H2;)V

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/internal/PZ;->f:Lcom/android/tools/r8/internal/QZ;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/QZ;->a(Lcom/android/tools/r8/graph/H5;)Z

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/PZ;->e:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-interface {v0, p1}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/PZ;->a(Lcom/android/tools/r8/graph/H2;)V

    :cond_0
    return-void
.end method

.method public final e(Lcom/android/tools/r8/graph/l1;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/PZ;->e:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/PZ;->a(Lcom/android/tools/r8/graph/H2;)V

    :cond_0
    return-void
.end method

.method public final f(Lcom/android/tools/r8/graph/A2;)V
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    check-cast v0, Lcom/android/tools/r8/graph/H5;

    iget-object v5, p0, Lcom/android/tools/r8/internal/PZ;->e:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    sget-object v4, Lcom/android/tools/r8/internal/kK;->g:Lcom/android/tools/r8/internal/kK;

    sget-object v6, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    iget-object v0, p0, Lcom/android/tools/r8/internal/PZ;->f:Lcom/android/tools/r8/internal/QZ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/QZ;->h:Lcom/android/tools/r8/internal/RZ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/RZ;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    check-cast v1, Lcom/android/tools/r8/graph/H5;

    iget-object v2, p0, Lcom/android/tools/r8/internal/PZ;->f:Lcom/android/tools/r8/internal/QZ;

    iget-object v2, v2, Lcom/android/tools/r8/internal/QZ;->h:Lcom/android/tools/r8/internal/RZ;

    iget-object v2, v2, Lcom/android/tools/r8/internal/RZ;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->J()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/PZ;->d()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/PZ;->f:Lcom/android/tools/r8/internal/QZ;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/QZ;->a(Lcom/android/tools/r8/graph/H5;)Z

    return-void
.end method

.method public final g(Lcom/android/tools/r8/graph/A2;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 4
    check-cast v0, Lcom/android/tools/r8/graph/H5;

    iget-object v5, p0, Lcom/android/tools/r8/internal/PZ;->e:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    sget-object v4, Lcom/android/tools/r8/internal/kK;->h:Lcom/android/tools/r8/internal/kK;

    .line 6
    sget-object v6, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    move-object v2, p1

    .line 7
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    .line 8
    iget-object p1, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 9
    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/PZ;->f:Lcom/android/tools/r8/internal/QZ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/QZ;->h:Lcom/android/tools/r8/internal/RZ;

    .line 11
    iget-object v0, v0, Lcom/android/tools/r8/internal/RZ;->b:Lcom/android/tools/r8/graph/y;

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 13
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->p()Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/E0;->c(Lcom/android/tools/r8/graph/y;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 17
    :cond_1
    instance-of v0, p1, Lcom/android/tools/r8/graph/H5;

    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result v0

    if-nez v0, :cond_2

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/internal/PZ;->f:Lcom/android/tools/r8/internal/QZ;

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/QZ;->a(Lcom/android/tools/r8/graph/H5;)Z

    :cond_2
    :goto_0
    return-void

    .line 20
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/PZ;->d()V

    return-void
.end method

.method public final g(Lcom/android/tools/r8/graph/l1;)V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/PZ;->e:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-interface {v0, p1}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/PZ;->a(Lcom/android/tools/r8/graph/H2;)V

    :cond_0
    return-void
.end method
