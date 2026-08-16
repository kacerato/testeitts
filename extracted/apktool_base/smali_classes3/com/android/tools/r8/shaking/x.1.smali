.class public Lcom/android/tools/r8/shaking/x;
.super Lcom/android/tools/r8/shaking/u;
.source "SourceFile"


# instance fields
.field public final i:Lcom/android/tools/r8/graph/y;

.field public final j:Lcom/android/tools/r8/shaking/N;

.field public final k:Ljava/util/IdentityHashMap;

.field public l:Ljava/util/Set;

.field public m:Ljava/util/Set;

.field public n:Ljava/util/Set;

.field public o:Ljava/util/Set;

.field public p:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/androidapi/a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lcom/android/tools/r8/shaking/u;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/androidapi/a;)V

    new-instance p2, Ljava/util/IdentityHashMap;

    invoke-direct {p2}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/shaking/x;->k:Ljava/util/IdentityHashMap;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/tools/r8/shaking/x;->l:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/x;->m:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/x;->n:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/x;->o:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/x;->p:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/tools/r8/shaking/x;->i:Lcom/android/tools/r8/graph/y;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/x;->j:Lcom/android/tools/r8/shaking/N;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->j:Lcom/android/tools/r8/shaking/N;

    .line 113
    iget-object v0, v0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 114
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->O:Lcom/android/tools/r8/internal/yb0;

    .line 115
    const-string v1, "from dex"

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/yb0;->a(ILjava/lang/String;)V

    return-void
.end method

.method public final a(ILcom/android/tools/r8/graph/C2;)V
    .locals 3

    .line 126
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/graph/f6;->a(ILcom/android/tools/r8/graph/C2;)V

    .line 127
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->j:Lcom/android/tools/r8/shaking/N;

    .line 128
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 129
    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    iget-object v2, p2, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    .line 131
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/B2;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    .line 132
    new-instance p1, Lcom/android/tools/r8/shaking/P1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-direct {p1, v2}, Lcom/android/tools/r8/shaking/P1;-><init>(Lcom/android/tools/r8/graph/j1;)V

    .line 133
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    iget-boolean p2, p2, Lcom/android/tools/r8/graph/C2;->g:Z

    invoke-virtual {v0, v2, v1, p1, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    .line 134
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->w()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 135
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object p1

    .line 136
    iget-object p2, p1, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    .line 137
    iget-object p1, p1, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-static {p2, p1}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    .line 138
    instance-of p2, p1, Lcom/android/tools/r8/graph/H5;

    if-eqz p2, :cond_0

    .line 139
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 140
    sget-object p2, Lcom/android/tools/r8/shaking/I1;->D:Lcom/android/tools/r8/shaking/I1;

    .line 141
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/I1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object p2

    .line 142
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/s1;->h()Lcom/android/tools/r8/shaking/s1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/shaking/H1;

    .line 143
    sget-object v1, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/H1;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;)V
    .locals 2

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    .line 84
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->j:Lcom/android/tools/r8/shaking/N;

    .line 85
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 86
    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0, p1, v1, p0}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/x;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/D0;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 2
    iget-object v1, p1, Lcom/android/tools/r8/graph/D0;->g:Lcom/android/tools/r8/graph/C2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 3
    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->u6:Lcom/android/tools/r8/graph/A2;

    const/4 v3, 0x2

    if-eq v1, v2, :cond_1

    .line 4
    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->v6:Lcom/android/tools/r8/graph/A2;

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/graph/D0;->g:Lcom/android/tools/r8/graph/C2;

    invoke-virtual {p0, v3, v0}, Lcom/android/tools/r8/shaking/x;->a(ILcom/android/tools/r8/graph/C2;)V

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/android/tools/r8/graph/D0;->f:Lcom/android/tools/r8/graph/I2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/x;->f(Lcom/android/tools/r8/graph/M2;)V

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->i:Lcom/android/tools/r8/graph/y;

    .line 8
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 9
    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-static {p1, v0, v1}, Lcom/android/tools/r8/internal/xc0;->a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p0, p1, v3}, Lcom/android/tools/r8/graph/f6;->a(Lcom/android/tools/r8/graph/D0;I)V

    .line 11
    :goto_1
    iget-object v0, p1, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_c

    .line 13
    iget-object v0, p1, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    .line 14
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/R2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R2;->z0()Lcom/android/tools/r8/graph/X2;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/X2;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v0, Lcom/android/tools/r8/graph/C2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/C2;->l0()Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/android/tools/r8/shaking/x;->i:Lcom/android/tools/r8/graph/y;

    .line 16
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j;

    .line 17
    iget-object v2, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 18
    check-cast v2, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    iget-object v4, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v4, v0, v2}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/D3;

    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/D3;->q()Lcom/android/tools/r8/graph/g1;

    move-result-object v1

    .line 21
    iget-object v1, v1, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    .line 22
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/vw;->i()Z

    move-result v1

    if-nez v1, :cond_2

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    .line 24
    iget-object v1, p0, Lcom/android/tools/r8/shaking/x;->j:Lcom/android/tools/r8/shaking/N;

    .line 25
    iget-object v2, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 26
    check-cast v2, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    sget-object v4, Lcom/android/tools/r8/shaking/K;->e:Lcom/android/tools/r8/shaking/K;

    .line 28
    sget-object v5, Lcom/android/tools/r8/shaking/J;->b:Lcom/android/tools/r8/shaking/J;

    invoke-virtual {v1, v0, v2, v5, v4}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/J;Lcom/android/tools/r8/shaking/K;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 29
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/Au0;->b(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/u1;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 30
    iget-object v0, p1, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/R2;

    .line 31
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/R2;->S0()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 32
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/R2;->E0()Lcom/android/tools/r8/graph/R2$l;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/r8/graph/R2$l;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v3, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/shaking/x;->f(Lcom/android/tools/r8/graph/M2;)V

    goto :goto_2

    .line 33
    :cond_5
    instance-of v4, v3, Lcom/android/tools/r8/graph/S2;

    if-eqz v4, :cond_4

    .line 34
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/R2;->r0()Lcom/android/tools/r8/graph/S2;

    move-result-object v3

    .line 35
    iget-object v4, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 36
    check-cast v4, Lcom/android/tools/r8/graph/H0;

    iget-object v5, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v3, v4, v5}, Lcom/android/tools/r8/internal/Au0;->a(Lcom/android/tools/r8/graph/S2;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/l1;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 37
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    .line 38
    iget-object v4, p0, Lcom/android/tools/r8/shaking/x;->j:Lcom/android/tools/r8/shaking/N;

    .line 39
    iget-object v5, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 40
    check-cast v5, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    sget-object v6, Lcom/android/tools/r8/shaking/K;->f:Lcom/android/tools/r8/shaking/K;

    .line 42
    sget-object v7, Lcom/android/tools/r8/shaking/J;->d:Lcom/android/tools/r8/shaking/J;

    invoke-virtual {v4, v3, v5, v7, v6}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/J;Lcom/android/tools/r8/shaking/K;)V

    .line 43
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 44
    iget-object v4, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v4

    .line 45
    invoke-virtual {v4, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(ILcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    new-array v6, v1, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v4, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    iget-object v6, v4, Lcom/android/tools/r8/graph/u1;->l0:Lcom/android/tools/r8/graph/L2;

    .line 46
    invoke-virtual {v4, v3, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 47
    invoke-virtual {p0, v5}, Lcom/android/tools/r8/shaking/x;->d(Lcom/android/tools/r8/graph/A2;)V

    .line 48
    iget-object v5, v4, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 49
    invoke-virtual {v4, v3, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    iget-object v6, v4, Lcom/android/tools/r8/graph/u1;->k0:Lcom/android/tools/r8/graph/L2;

    .line 50
    invoke-virtual {v4, v3, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    .line 51
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/shaking/x;->d(Lcom/android/tools/r8/graph/A2;)V

    goto :goto_2

    .line 52
    :cond_6
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/Au0;->a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/u1;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 53
    iget-object v0, p1, Lcom/android/tools/r8/graph/D0;->f:Lcom/android/tools/r8/graph/I2;

    .line 54
    iget-object v0, v0, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    .line 55
    iget-object v0, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    aget-object v0, v0, v1

    .line 56
    iget-object v3, p1, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/R2;

    .line 57
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/R2;->S0()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 58
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/R2;->E0()Lcom/android/tools/r8/graph/R2$l;

    move-result-object v4

    iget-object v4, v4, Lcom/android/tools/r8/graph/R2$l;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v4, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/shaking/x;->f(Lcom/android/tools/r8/graph/M2;)V

    goto :goto_3

    .line 59
    :cond_8
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/R2;->R0()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 60
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/R2;->D0()Lcom/android/tools/r8/graph/R2$k;

    move-result-object v4

    iget-object v4, v4, Lcom/android/tools/r8/graph/R2$k;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v4, Lcom/android/tools/r8/graph/L2;

    .line 61
    iget-object v5, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    .line 62
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v5

    if-nez v5, :cond_9

    goto :goto_4

    .line 63
    :cond_9
    invoke-virtual {v5, v4}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/g1;

    move-result-object v4

    if-nez v4, :cond_a

    :goto_4
    const/4 v4, 0x0

    goto :goto_5

    .line 64
    :cond_a
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/l1;

    :goto_5
    if-eqz v4, :cond_7

    .line 65
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    .line 66
    iget-object v5, p0, Lcom/android/tools/r8/shaking/x;->j:Lcom/android/tools/r8/shaking/N;

    .line 67
    iget-object v6, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 68
    check-cast v6, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    sget-object v7, Lcom/android/tools/r8/shaking/K;->f:Lcom/android/tools/r8/shaking/K;

    .line 70
    sget-object v8, Lcom/android/tools/r8/shaking/J;->d:Lcom/android/tools/r8/shaking/J;

    invoke-virtual {v5, v4, v6, v8, v7}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/J;Lcom/android/tools/r8/shaking/K;)V

    .line 71
    iget-object v4, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v4

    .line 72
    invoke-virtual {v4, v2, v0}, Lcom/android/tools/r8/graph/u1;->a(ILcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    new-array v6, v1, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v4, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    iget-object v6, v4, Lcom/android/tools/r8/graph/u1;->l0:Lcom/android/tools/r8/graph/L2;

    .line 73
    invoke-virtual {v4, v0, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 74
    invoke-virtual {p0, v5}, Lcom/android/tools/r8/shaking/x;->d(Lcom/android/tools/r8/graph/A2;)V

    .line 75
    iget-object v5, v4, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 76
    invoke-virtual {v4, v0, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    iget-object v6, v4, Lcom/android/tools/r8/graph/u1;->k0:Lcom/android/tools/r8/graph/L2;

    .line 77
    invoke-virtual {v4, v0, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    .line 78
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/shaking/x;->d(Lcom/android/tools/r8/graph/A2;)V

    goto/16 :goto_3

    .line 79
    :cond_b
    iget-object v0, p1, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/graph/f6;->a(Lcom/android/tools/r8/graph/D0;I)V

    .line 80
    :cond_c
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->j:Lcom/android/tools/r8/shaking/N;

    .line 81
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 82
    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0, p1, v1, p0}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/x;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)V
    .locals 6

    .line 116
    invoke-super {p0, p1}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/M2;)V

    .line 117
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->j:Lcom/android/tools/r8/shaking/N;

    .line 118
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 119
    check-cast v1, Lcom/android/tools/r8/graph/H5;

    .line 120
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/shaking/N;->e(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    .line 121
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)V

    .line 122
    iget-object v0, v0, Lcom/android/tools/r8/shaking/N;->c:Lcom/android/tools/r8/internal/ju;

    .line 123
    iget-object v0, v0, Lcom/android/tools/r8/internal/ju;->c:[Lcom/android/tools/r8/internal/Bs0;

    .line 124
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    .line 125
    invoke-interface {v5, p1, v2, v1}, Lcom/android/tools/r8/internal/Bs0;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H5;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/android/tools/r8/graph/M2;Ljava/util/ListIterator;Z)V
    .locals 2

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    .line 100
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->j:Lcom/android/tools/r8/shaking/N;

    .line 101
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 102
    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;Ljava/util/ListIterator;Z)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Z)V
    .locals 5

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    .line 104
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->j:Lcom/android/tools/r8/shaking/N;

    .line 105
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 106
    check-cast v1, Lcom/android/tools/r8/graph/H5;

    .line 107
    invoke-virtual {v0, p1, v1, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;Z)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    .line 108
    iget-object v0, v0, Lcom/android/tools/r8/shaking/N;->c:Lcom/android/tools/r8/internal/ju;

    .line 109
    iget-object v0, v0, Lcom/android/tools/r8/internal/ju;->a:[Lcom/android/tools/r8/internal/zs0;

    .line 110
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 111
    invoke-interface {v4, p1, p2, v1}, Lcom/android/tools/r8/internal/zs0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H5;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)V
    .locals 4

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    .line 88
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->j:Lcom/android/tools/r8/shaking/N;

    .line 89
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 90
    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    sget-object v2, Lcom/android/tools/r8/shaking/K;->c:Lcom/android/tools/r8/shaking/K;

    .line 92
    sget-object v3, Lcom/android/tools/r8/shaking/J;->b:Lcom/android/tools/r8/shaking/J;

    invoke-virtual {v0, p1, v1, v3, v2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/J;Lcom/android/tools/r8/shaking/K;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y5;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->j:Lcom/android/tools/r8/shaking/N;

    .line 98
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/y5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/B60;)V
    .locals 2

    .line 93
    invoke-super {p0, p1}, Lcom/android/tools/r8/graph/f6;->a(Lcom/android/tools/r8/internal/B60;)V

    .line 94
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->j:Lcom/android/tools/r8/shaking/N;

    .line 95
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 96
    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/B60;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->j:Lcom/android/tools/r8/shaking/N;

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 4
    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-static {v1}, Lcom/android/tools/r8/shaking/X1;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/M1;

    move-result-object v2

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/x;->i(Lcom/android/tools/r8/graph/A2;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)V

    const/4 v3, 0x1

    .line 8
    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/X1;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    .line 9
    iget-object v0, v0, Lcom/android/tools/r8/shaking/N;->c:Lcom/android/tools/r8/internal/ju;

    .line 10
    iget-object v0, v0, Lcom/android/tools/r8/internal/ju;->f:[Lcom/android/tools/r8/internal/Es0;

    .line 11
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 12
    invoke-interface {v4, p1, v1}, Lcom/android/tools/r8/internal/Es0;->b(Lcom/android/tools/r8/graph/Z4;Lcom/android/tools/r8/graph/H5;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->j:Lcom/android/tools/r8/shaking/N;

    .line 20
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 21
    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/shaking/N;->d(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/l1;)V
    .locals 4

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->j:Lcom/android/tools/r8/shaking/N;

    .line 15
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 16
    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    sget-object v2, Lcom/android/tools/r8/shaking/K;->d:Lcom/android/tools/r8/shaking/K;

    .line 18
    sget-object v3, Lcom/android/tools/r8/shaking/J;->b:Lcom/android/tools/r8/shaking/J;

    invoke-virtual {v0, p1, v1, v3, v2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/J;Lcom/android/tools/r8/shaking/K;)V

    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->l2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/x;->f(Lcom/android/tools/r8/graph/M2;)V

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->j:Lcom/android/tools/r8/shaking/N;

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 4
    check-cast v1, Lcom/android/tools/r8/graph/H5;

    .line 5
    iget-object v2, v0, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    .line 6
    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/N$a;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    iget-object v0, v0, Lcom/android/tools/r8/shaking/N;->a0:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/M2;)V
    .locals 6

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->j:Lcom/android/tools/r8/shaking/N;

    .line 16
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 17
    check-cast v1, Lcom/android/tools/r8/graph/H5;

    .line 18
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/shaking/N;->e(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    .line 19
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)V

    .line 20
    iget-object v0, v0, Lcom/android/tools/r8/shaking/N;->c:Lcom/android/tools/r8/internal/ju;

    .line 21
    iget-object v0, v0, Lcom/android/tools/r8/internal/ju;->e:[Lcom/android/tools/r8/internal/Ds0;

    .line 22
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    .line 23
    invoke-interface {v5, p1, v2, v1}, Lcom/android/tools/r8/internal/Ds0;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H5;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/l1;)V
    .locals 4

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->j:Lcom/android/tools/r8/shaking/N;

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 11
    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    sget-object v2, Lcom/android/tools/r8/shaking/K;->c:Lcom/android/tools/r8/shaking/K;

    .line 13
    sget-object v3, Lcom/android/tools/r8/shaking/J;->c:Lcom/android/tools/r8/shaking/J;

    invoke-virtual {v0, p1, v1, v3, v2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/J;Lcom/android/tools/r8/shaking/K;)V

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/A2;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->j:Lcom/android/tools/r8/shaking/N;

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 4
    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-static {v1}, Lcom/android/tools/r8/shaking/X1;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/M1;

    move-result-object v2

    invoke-virtual {v0, p1, v1, p0, v2}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/x;Lcom/android/tools/r8/shaking/K1;)V

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->j:Lcom/android/tools/r8/shaking/N;

    .line 14
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 15
    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/shaking/N;->e(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/l1;)V
    .locals 4

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->j:Lcom/android/tools/r8/shaking/N;

    .line 8
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 9
    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    sget-object v2, Lcom/android/tools/r8/shaking/K;->d:Lcom/android/tools/r8/shaking/K;

    .line 11
    sget-object v3, Lcom/android/tools/r8/shaking/J;->c:Lcom/android/tools/r8/shaking/J;

    invoke-virtual {v0, p1, v1, v3, v2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/J;Lcom/android/tools/r8/shaking/K;)V

    return-void
.end method

.method public final e(Lcom/android/tools/r8/graph/M2;)V
    .locals 5

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->j:Lcom/android/tools/r8/shaking/N;

    .line 9
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 10
    check-cast v1, Lcom/android/tools/r8/graph/H5;

    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;Z)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    .line 12
    iget-object v0, v0, Lcom/android/tools/r8/shaking/N;->c:Lcom/android/tools/r8/internal/ju;

    .line 13
    iget-object v0, v0, Lcom/android/tools/r8/internal/ju;->a:[Lcom/android/tools/r8/internal/zs0;

    .line 14
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 15
    invoke-interface {v4, p1, v1}, Lcom/android/tools/r8/internal/zs0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H5;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Lcom/android/tools/r8/graph/l1;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->j:Lcom/android/tools/r8/shaking/N;

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 4
    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    sget-object v2, Lcom/android/tools/r8/shaking/K;->c:Lcom/android/tools/r8/shaking/K;

    .line 6
    sget-object v3, Lcom/android/tools/r8/shaking/J;->d:Lcom/android/tools/r8/shaking/J;

    invoke-virtual {v0, p1, v1, v3, v2}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/J;Lcom/android/tools/r8/shaking/K;)V

    return-void
.end method

.method public final f(Lcom/android/tools/r8/graph/A2;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->j:Lcom/android/tools/r8/shaking/N;

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 4
    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/x;->k(Lcom/android/tools/r8/graph/A2;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)V

    .line 7
    iget-object v0, v0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/shaking/L0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method

.method public final f(Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->j:Lcom/android/tools/r8/shaking/N;

    .line 15
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 16
    check-cast v1, Lcom/android/tools/r8/graph/H5;

    .line 17
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)V

    return-void
.end method

.method public final f(Lcom/android/tools/r8/graph/l1;)V
    .locals 4

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->j:Lcom/android/tools/r8/shaking/N;

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 11
    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    sget-object v2, Lcom/android/tools/r8/shaking/K;->d:Lcom/android/tools/r8/shaking/K;

    .line 13
    sget-object v3, Lcom/android/tools/r8/shaking/J;->d:Lcom/android/tools/r8/shaking/J;

    invoke-virtual {v0, p1, v1, v3, v2}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/J;Lcom/android/tools/r8/shaking/K;)V

    return-void
.end method

.method public final g(Lcom/android/tools/r8/graph/A2;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->j:Lcom/android/tools/r8/shaking/N;

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 4
    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-static {v1}, Lcom/android/tools/r8/shaking/X1;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/M1;

    move-result-object v2

    invoke-virtual {v0, p1, v1, p0, v2}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/x;Lcom/android/tools/r8/shaking/K1;)V

    return-void
.end method

.method public final g(Lcom/android/tools/r8/graph/l1;)V
    .locals 4

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->j:Lcom/android/tools/r8/shaking/N;

    .line 8
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 9
    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    sget-object v2, Lcom/android/tools/r8/shaking/K;->c:Lcom/android/tools/r8/shaking/K;

    .line 11
    sget-object v3, Lcom/android/tools/r8/shaking/J;->e:Lcom/android/tools/r8/shaking/J;

    invoke-virtual {v0, p1, v1, v3, v2}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/J;Lcom/android/tools/r8/shaking/K;)V

    return-void
.end method

.method public final h(Lcom/android/tools/r8/graph/l1;)V
    .locals 4

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->j:Lcom/android/tools/r8/shaking/N;

    .line 7
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 8
    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    sget-object v2, Lcom/android/tools/r8/shaking/K;->d:Lcom/android/tools/r8/shaking/K;

    .line 10
    sget-object v3, Lcom/android/tools/r8/shaking/J;->e:Lcom/android/tools/r8/shaking/J;

    invoke-virtual {v0, p1, v1, v3, v2}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/J;Lcom/android/tools/r8/shaking/K;)V

    return-void
.end method

.method public final h(Lcom/android/tools/r8/graph/A2;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->l:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->k:Ljava/util/IdentityHashMap;

    sget-object v1, Lcom/android/tools/r8/internal/kK;->d:Lcom/android/tools/r8/internal/kK;

    new-instance v2, Lcom/android/tools/r8/internal/pC0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/pC0;-><init>()V

    .line 3
    invoke-static {v2}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/android/tools/r8/shaking/x;->l:Ljava/util/Set;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->l:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final i(Lcom/android/tools/r8/graph/A2;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->m:Ljava/util/Set;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->k:Ljava/util/IdentityHashMap;

    sget-object v1, Lcom/android/tools/r8/internal/kK;->e:Lcom/android/tools/r8/internal/kK;

    new-instance v2, Lcom/android/tools/r8/internal/pC0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/pC0;-><init>()V

    invoke-static {v2}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/android/tools/r8/shaking/x;->m:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->m:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final j(Lcom/android/tools/r8/graph/A2;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->n:Ljava/util/Set;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->k:Ljava/util/IdentityHashMap;

    sget-object v1, Lcom/android/tools/r8/internal/kK;->f:Lcom/android/tools/r8/internal/kK;

    new-instance v2, Lcom/android/tools/r8/internal/pC0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/pC0;-><init>()V

    invoke-static {v2}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/android/tools/r8/shaking/x;->n:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->n:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final k(Lcom/android/tools/r8/graph/A2;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->o:Ljava/util/Set;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->k:Ljava/util/IdentityHashMap;

    sget-object v1, Lcom/android/tools/r8/internal/kK;->g:Lcom/android/tools/r8/internal/kK;

    new-instance v2, Lcom/android/tools/r8/internal/pC0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/pC0;-><init>()V

    invoke-static {v2}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/android/tools/r8/shaking/x;->o:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->o:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final l(Lcom/android/tools/r8/graph/A2;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->p:Ljava/util/Set;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->k:Ljava/util/IdentityHashMap;

    sget-object v1, Lcom/android/tools/r8/internal/kK;->h:Lcom/android/tools/r8/internal/kK;

    new-instance v2, Lcom/android/tools/r8/internal/pC0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/pC0;-><init>()V

    invoke-static {v2}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/android/tools/r8/shaking/x;->p:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->p:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
