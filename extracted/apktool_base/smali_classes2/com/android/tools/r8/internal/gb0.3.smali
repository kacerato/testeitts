.class public final Lcom/android/tools/r8/internal/gb0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/nJ;

.field public final c:Lcom/android/tools/r8/internal/ob0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/gb0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/gb0;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->E1:Lcom/android/tools/r8/internal/qb0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qb0;->a()Lcom/android/tools/r8/internal/ob0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/gb0;->c:Lcom/android/tools/r8/internal/ob0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Np;)Lcom/android/tools/r8/internal/Np;
    .locals 8

    .line 51
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Np;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Np;->j()Lcom/android/tools/r8/internal/dq;

    move-result-object v0

    .line 53
    invoke-interface {v0}, Lcom/android/tools/r8/internal/dq;->b()Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    .line 54
    iget-object v1, p0, Lcom/android/tools/r8/internal/gb0;->a:Lcom/android/tools/r8/graph/y;

    .line 55
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    .line 56
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/dq;->getType()Lcom/android/tools/r8/internal/kK;

    move-result-object v4

    iget-object p1, p0, Lcom/android/tools/r8/internal/gb0;->a:Lcom/android/tools/r8/graph/y;

    .line 57
    iget-object v5, p1, Lcom/android/tools/r8/graph/y;->g:Lcom/android/tools/r8/internal/Hz;

    .line 58
    sget-object v6, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    move-object v2, v7

    .line 59
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    .line 60
    iget-object p1, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 61
    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 62
    invoke-virtual {p1, v7}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 63
    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/dq;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/dq;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Np;

    return-object p1

    .line 64
    :cond_0
    instance-of p1, p2, Lcom/android/tools/r8/internal/ir;

    if-eqz p1, :cond_1

    .line 65
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Np;->k()Lcom/android/tools/r8/internal/ir;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ir;->O()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/android/tools/r8/internal/gb0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/gb0;->a:Lcom/android/tools/r8/graph/y;

    .line 68
    iget-object v2, v2, Lcom/android/tools/r8/graph/y;->g:Lcom/android/tools/r8/internal/Hz;

    .line 69
    invoke-virtual {v1, v2, v0}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 70
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 71
    new-instance p2, Lcom/android/tools/r8/internal/ir;

    .line 72
    iget-short v0, p1, Lcom/android/tools/r8/internal/Wo;->f:S

    .line 73
    invoke-direct {p2, v0, v1}, Lcom/android/tools/r8/internal/ir;-><init>(ILcom/android/tools/r8/graph/M2;)V

    .line 74
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Np;->e(I)V

    return-object p2

    .line 75
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Np;->I()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 76
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Np;->h()Lcom/android/tools/r8/internal/Jp;

    move-result-object p1

    .line 77
    invoke-interface {p1}, Lcom/android/tools/r8/internal/Jp;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/android/tools/r8/internal/gb0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/gb0;->a:Lcom/android/tools/r8/graph/y;

    .line 79
    iget-object v2, v2, Lcom/android/tools/r8/graph/y;->g:Lcom/android/tools/r8/internal/Hz;

    .line 80
    invoke-virtual {v1, v2, v0}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    .line 81
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/l1;->a(Lcom/android/tools/r8/graph/l1;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 82
    invoke-interface {p1, v1}, Lcom/android/tools/r8/internal/Jp;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/Jp;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Np;

    return-object p1

    :cond_2
    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/W9;
    .locals 8

    .line 18
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->j()Lcom/android/tools/r8/internal/ga;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    .line 21
    iget-object v1, p0, Lcom/android/tools/r8/internal/gb0;->a:Lcom/android/tools/r8/graph/y;

    .line 22
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/gb0;->a:Lcom/android/tools/r8/graph/y;

    .line 24
    iget-object v4, v2, Lcom/android/tools/r8/graph/y;->g:Lcom/android/tools/r8/internal/Hz;

    .line 25
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ga;->W()I

    move-result v5

    iget-object v6, v0, Lcom/android/tools/r8/internal/ga;->c:Lcom/android/tools/r8/graph/A2;

    invoke-static {v5, v6, p1, v2, v4}, Lcom/android/tools/r8/internal/kK;->a(ILcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/kK;

    move-result-object v4

    .line 26
    iget-object p1, p0, Lcom/android/tools/r8/internal/gb0;->a:Lcom/android/tools/r8/graph/y;

    .line 27
    iget-object v5, p1, Lcom/android/tools/r8/graph/y;->g:Lcom/android/tools/r8/internal/Hz;

    .line 28
    sget-object v6, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    move-object v2, v7

    .line 29
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    .line 30
    iget-object p1, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 31
    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 32
    invoke-virtual {p1, v7}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ga;->X()Z

    move-result p2

    .line 34
    new-instance v1, Lcom/android/tools/r8/internal/ga;

    iget v0, v0, Lcom/android/tools/r8/internal/ga;->d:I

    invoke-direct {v1, v0, p1, p2}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    return-object v1

    .line 35
    :cond_0
    instance-of p1, p2, Lcom/android/tools/r8/internal/wa;

    if-eqz p1, :cond_1

    .line 36
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->p()Lcom/android/tools/r8/internal/wa;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/wa;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/android/tools/r8/internal/gb0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/gb0;->a:Lcom/android/tools/r8/graph/y;

    .line 39
    iget-object v2, v2, Lcom/android/tools/r8/graph/y;->g:Lcom/android/tools/r8/internal/Hz;

    .line 40
    invoke-virtual {v1, v2, v0}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 41
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 42
    new-instance p2, Lcom/android/tools/r8/internal/wa;

    iget-object p1, p1, Lcom/android/tools/r8/internal/wa;->d:Lcom/android/tools/r8/internal/ka;

    invoke-direct {p2, v1, p1}, Lcom/android/tools/r8/internal/wa;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/ka;)V

    return-object p2

    .line 43
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->I()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 44
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->f()Lcom/android/tools/r8/internal/F9;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F9;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/android/tools/r8/internal/gb0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/gb0;->a:Lcom/android/tools/r8/graph/y;

    .line 47
    iget-object v2, v2, Lcom/android/tools/r8/graph/y;->g:Lcom/android/tools/r8/internal/Hz;

    .line 48
    invoke-virtual {v1, v2, v0}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    .line 49
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/l1;->a(Lcom/android/tools/r8/graph/l1;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 50
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/F9;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/F9;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/graph/G;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/ac1;

    invoke-direct {v1, p0, p2}, Lcom/android/tools/r8/internal/ac1;-><init>(Lcom/android/tools/r8/internal/gb0;Lcom/android/tools/r8/graph/H5;)V

    .line 16
    new-instance p2, Lcom/android/tools/r8/internal/bc1;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/bc1;-><init>(Lcom/android/tools/r8/graph/G;)V

    .line 17
    invoke-static {v0, v1, p2}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/Yb1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Yb1;-><init>(Lcom/android/tools/r8/internal/gb0;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H2;->l(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->t0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->V()Lcom/android/tools/r8/graph/G;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/gb0;->a(Lcom/android/tools/r8/graph/G;Lcom/android/tools/r8/graph/H5;)V

    return-void

    .line 12
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->v0()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->C()Lcom/android/tools/r8/graph/J0;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/gb0;->a(Lcom/android/tools/r8/graph/J0;Lcom/android/tools/r8/graph/H5;)V

    return-void

    .line 14
    :cond_2
    sget-boolean p1, Lcom/android/tools/r8/internal/gb0;->d:Z

    if-eqz p1, :cond_3

    :goto_0
    return-void

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/J0;[Lcom/android/tools/r8/internal/Np;)V
    .locals 9

    .line 83
    new-instance v8, Lcom/android/tools/r8/graph/J0;

    .line 84
    iget v1, p2, Lcom/android/tools/r8/graph/J0;->e:I

    .line 85
    iget v2, p2, Lcom/android/tools/r8/graph/J0;->f:I

    iget v3, p2, Lcom/android/tools/r8/graph/J0;->g:I

    iget-object v5, p2, Lcom/android/tools/r8/graph/J0;->h:[Lcom/android/tools/r8/graph/J0$a;

    iget-object v6, p2, Lcom/android/tools/r8/graph/J0;->i:[Lcom/android/tools/r8/graph/J0$b;

    .line 86
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/J0;->E0()Lcom/android/tools/r8/graph/W0;

    move-result-object v7

    move-object v0, v8

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/tools/r8/graph/J0;-><init>(III[Lcom/android/tools/r8/internal/Np;[Lcom/android/tools/r8/graph/J0$a;[Lcom/android/tools/r8/graph/J0$b;Lcom/android/tools/r8/graph/W0;)V

    .line 87
    iget-object p2, p0, Lcom/android/tools/r8/internal/gb0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v8, p2}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/i0;Lcom/android/tools/r8/graph/y;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/J0;Lcom/android/tools/r8/graph/H5;)V
    .locals 4

    .line 88
    iget-object v0, p1, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    .line 89
    new-instance v1, Lcom/android/tools/r8/internal/cc1;

    invoke-direct {v1, p0, p2}, Lcom/android/tools/r8/internal/cc1;-><init>(Lcom/android/tools/r8/internal/gb0;Lcom/android/tools/r8/graph/H5;)V

    sget-object v2, Lcom/android/tools/r8/internal/Np;->c:[Lcom/android/tools/r8/internal/Np;

    new-instance v3, Lcom/android/tools/r8/internal/dc1;

    invoke-direct {v3, p0, p2, p1}, Lcom/android/tools/r8/internal/dc1;-><init>(Lcom/android/tools/r8/internal/gb0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/J0;)V

    .line 90
    invoke-static {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Ljava/util/function/Function;[Ljava/lang/Object;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/gb0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/gb0;->a:Lcom/android/tools/r8/graph/y;

    .line 2
    iget-object v2, v1, Lcom/android/tools/r8/graph/y;->g:Lcom/android/tools/r8/internal/Hz;

    if-ne v0, v2, :cond_2

    .line 3
    sget-boolean p1, Lcom/android/tools/r8/internal/gb0;->d:Z

    if-nez p1, :cond_1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Hz;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void

    .line 4
    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/Zb1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/Zb1;-><init>(Lcom/android/tools/r8/internal/gb0;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/gb0;->b:Lcom/android/tools/r8/internal/nJ;

    .line 5
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v2

    .line 6
    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method
