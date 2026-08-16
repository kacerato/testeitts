.class public final Lcom/android/tools/r8/internal/vf0;
.super Lcom/android/tools/r8/graph/f6;
.source "SourceFile"


# static fields
.field public static final synthetic n:Z = true


# instance fields
.field public final e:Lcom/android/tools/r8/shaking/i;

.field public final f:Lcom/android/tools/r8/internal/nJ;

.field public final g:Lcom/android/tools/r8/internal/Hz;

.field public final h:Lcom/android/tools/r8/internal/rf0;

.field public final i:Lcom/android/tools/r8/internal/uD;

.field public final j:Lcom/android/tools/r8/internal/qf0;

.field public final k:Lcom/android/tools/r8/internal/qf0;

.field public final l:Lcom/android/tools/r8/internal/Hz;

.field public final m:Lcom/android/tools/r8/graph/H5;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/rf0;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/internal/qf0;)V
    .locals 1

    invoke-direct {p0, p1, p3}, Lcom/android/tools/r8/graph/f6;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/J5;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    iput-object v0, p0, Lcom/android/tools/r8/internal/vf0;->e:Lcom/android/tools/r8/shaking/i;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/vf0;->f:Lcom/android/tools/r8/internal/nJ;

    iput-object p2, p0, Lcom/android/tools/r8/internal/vf0;->h:Lcom/android/tools/r8/internal/rf0;

    iget-object v0, p1, Lcom/android/tools/r8/graph/y;->j:Lcom/android/tools/r8/internal/uD;

    iput-object v0, p0, Lcom/android/tools/r8/internal/vf0;->i:Lcom/android/tools/r8/internal/uD;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/vf0;->g:Lcom/android/tools/r8/internal/Hz;

    invoke-interface {p3}, Lcom/android/tools/r8/graph/o0;->d()Lcom/android/tools/r8/graph/b1;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/rf0;->a(Lcom/android/tools/r8/graph/b1;)Lcom/android/tools/r8/internal/qf0;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/vf0;->j:Lcom/android/tools/r8/internal/qf0;

    iput-object p4, p0, Lcom/android/tools/r8/internal/vf0;->k:Lcom/android/tools/r8/internal/qf0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object p2

    invoke-interface {p3}, Lcom/android/tools/r8/graph/o0;->I()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Lcom/android/tools/r8/graph/D5;->b()Lcom/android/tools/r8/graph/H5;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-virtual {p4, p1}, Lcom/android/tools/r8/graph/i0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/Hz;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lcom/android/tools/r8/internal/vf0;->l:Lcom/android/tools/r8/internal/Hz;

    invoke-interface {p3}, Lcom/android/tools/r8/graph/o0;->I()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p3}, Lcom/android/tools/r8/graph/D5;->b()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/vf0;->m:Lcom/android/tools/r8/graph/H5;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;)V
    .locals 7

    .line 73
    iget-object v0, p0, Lcom/android/tools/r8/internal/vf0;->e:Lcom/android/tools/r8/shaking/i;

    iget-object v1, p0, Lcom/android/tools/r8/internal/vf0;->g:Lcom/android/tools/r8/internal/Hz;

    iget-object v2, p0, Lcom/android/tools/r8/internal/vf0;->m:Lcom/android/tools/r8/graph/H5;

    iget-object v5, p0, Lcom/android/tools/r8/internal/vf0;->l:Lcom/android/tools/r8/internal/Hz;

    .line 74
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    sget-object v4, Lcom/android/tools/r8/internal/kK;->d:Lcom/android/tools/r8/internal/kK;

    .line 76
    sget-object v6, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    move-object v2, p1

    .line 77
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    .line 78
    iget-object p1, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 79
    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 80
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/j;->f(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    const/4 v0, 0x1

    .line 81
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/vf0;->a(Lcom/android/tools/r8/graph/J4;Z)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Ljava/util/function/Predicate;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/tools/r8/internal/vf0;->h:Lcom/android/tools/r8/internal/rf0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/rf0;->a(Lcom/android/tools/r8/graph/b1;)Lcom/android/tools/r8/internal/qf0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    invoke-interface {p2, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 69
    iget-object p1, p0, Lcom/android/tools/r8/internal/vf0;->j:Lcom/android/tools/r8/internal/qf0;

    .line 70
    iget-object p2, p1, Lcom/android/tools/r8/internal/qf0;->b:Ljava/util/Set;

    .line 71
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object p2, v0, Lcom/android/tools/r8/internal/qf0;->b:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/J4;Z)V
    .locals 4

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J4;->j()Z

    move-result v0

    if-nez v0, :cond_3

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J4;->i()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J4;->e()Lcom/android/tools/r8/graph/D3;

    move-result-object p1

    .line 20
    sget-boolean p2, Lcom/android/tools/r8/internal/vf0;->n:Z

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J4;->h()Z

    move-result p2

    if-nez p2, :cond_6

    .line 21
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/D3;->w()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 22
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/D3;->o()Lcom/android/tools/r8/graph/F5;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/D3;->o()Lcom/android/tools/r8/graph/F5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->G0()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_1

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 25
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J4;->f()Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    instance-of p2, p1, Lcom/android/tools/r8/graph/X4;

    if-nez p2, :cond_6

    .line 28
    instance-of p2, p1, Lcom/android/tools/r8/graph/V4;

    if-nez p2, :cond_6

    .line 29
    iget-object p2, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 30
    check-cast p2, Lcom/android/tools/r8/graph/D5;

    invoke-interface {p2}, Lcom/android/tools/r8/graph/D5;->a()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/internal/vf0;->e:Lcom/android/tools/r8/shaking/i;

    .line 31
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/tools/r8/graph/Z4;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_1

    .line 32
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/vf0;->j:Lcom/android/tools/r8/internal/qf0;

    iget-object p2, p0, Lcom/android/tools/r8/internal/vf0;->k:Lcom/android/tools/r8/internal/qf0;

    .line 33
    iget-object v0, p1, Lcom/android/tools/r8/internal/qf0;->b:Ljava/util/Set;

    .line 34
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object p2, p2, Lcom/android/tools/r8/internal/qf0;->b:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 36
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J4;->g()Lcom/android/tools/r8/graph/Z5;

    move-result-object p1

    .line 37
    invoke-interface {p1}, Lcom/android/tools/r8/graph/Z5;->a()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    .line 38
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/vf0;->f(Lcom/android/tools/r8/graph/E0;)V

    .line 39
    invoke-interface {p1}, Lcom/android/tools/r8/graph/Z5;->c()Lcom/android/tools/r8/graph/G0;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/android/tools/r8/internal/vf0;->h:Lcom/android/tools/r8/internal/rf0;

    .line 41
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/rf0;->a(Lcom/android/tools/r8/graph/b1;)Lcom/android/tools/r8/internal/qf0;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 42
    invoke-interface {p1}, Lcom/android/tools/r8/graph/Z5;->c()Lcom/android/tools/r8/graph/G0;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/tools/r8/graph/o0;->getAccessFlags()Lcom/android/tools/r8/graph/g;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->f()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 44
    :cond_4
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->k()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 45
    iget-object v1, p0, Lcom/android/tools/r8/internal/vf0;->e:Lcom/android/tools/r8/shaking/i;

    .line 46
    iget-object v2, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 47
    check-cast v2, Lcom/android/tools/r8/graph/D5;

    invoke-interface {v2}, Lcom/android/tools/r8/graph/o0;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/tools/r8/graph/Z5;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 48
    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_6

    .line 49
    iget-object p2, p0, Lcom/android/tools/r8/internal/vf0;->f:Lcom/android/tools/r8/internal/nJ;

    .line 50
    iget-object p2, p2, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 51
    instance-of p2, p2, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz p2, :cond_6

    .line 52
    iget-object p2, p0, Lcom/android/tools/r8/internal/vf0;->e:Lcom/android/tools/r8/shaking/i;

    .line 53
    invoke-interface {p1}, Lcom/android/tools/r8/graph/Z5;->a()Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 54
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 55
    check-cast v1, Lcom/android/tools/r8/graph/D5;

    invoke-interface {v1}, Lcom/android/tools/r8/graph/o0;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 56
    invoke-virtual {p2, p1, v1}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 57
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/vf0;->j:Lcom/android/tools/r8/internal/qf0;

    .line 58
    iget-object p2, p1, Lcom/android/tools/r8/internal/qf0;->b:Ljava/util/Set;

    .line 59
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object p2, v0, Lcom/android/tools/r8/internal/qf0;->b:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;)V
    .locals 1

    .line 61
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/tools/r8/internal/vf0;->e:Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/vf0;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;)V

    return-void

    .line 63
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 64
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/internal/vf0;->n:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 65
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/vf0;->e:Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/i;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 66
    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/e4;)V
    .locals 1

    .line 83
    new-instance v0, Lcom/android/tools/r8/internal/rw1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/rw1;-><init>(Lcom/android/tools/r8/internal/vf0;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/e4;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/i3;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/graph/i3;->a:Lcom/android/tools/r8/graph/M2;

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/tw1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/tw1;-><init>(Lcom/android/tools/r8/internal/vf0;)V

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/vf0;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;)V

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/i3;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/i3;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/vf0;->e:Lcom/android/tools/r8/shaking/i;

    .line 7
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/j;->f(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/vf0;->a(Lcom/android/tools/r8/graph/J4;Z)V

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4$c;->r()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    sget-object v0, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/vf0;->a(Lcom/android/tools/r8/graph/E0;Ljava/util/function/Predicate;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/vf0;->i(Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/o5;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 84
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/o5;->a()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/ow1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/ow1;-><init>(Lcom/android/tools/r8/internal/vf0;)V

    .line 85
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/vf0;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/p5;)V
    .locals 1

    .line 87
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/p5;->a()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/uw1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/uw1;-><init>(Lcom/android/tools/r8/internal/vf0;)V

    .line 88
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/vf0;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 86
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/sw1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/sw1;-><init>(Lcom/android/tools/r8/internal/vf0;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;)Z
    .locals 3

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->J0()Lcom/android/tools/r8/graph/Q;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->f()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/vf0;->e:Lcom/android/tools/r8/shaking/i;

    .line 15
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 16
    check-cast v1, Lcom/android/tools/r8/graph/D5;

    invoke-interface {v1}, Lcom/android/tools/r8/graph/o0;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;)V
    .locals 7

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/vf0;->e:Lcom/android/tools/r8/shaking/i;

    iget-object v1, p0, Lcom/android/tools/r8/internal/vf0;->g:Lcom/android/tools/r8/internal/Hz;

    iget-object v2, p0, Lcom/android/tools/r8/internal/vf0;->m:Lcom/android/tools/r8/graph/H5;

    iget-object v5, p0, Lcom/android/tools/r8/internal/vf0;->l:Lcom/android/tools/r8/internal/Hz;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    sget-object v4, Lcom/android/tools/r8/internal/kK;->e:Lcom/android/tools/r8/internal/kK;

    .line 8
    sget-object v6, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    move-object v2, p1

    .line 9
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    .line 10
    iget-object p1, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 11
    check-cast p1, Lcom/android/tools/r8/graph/A2;

    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    .line 13
    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/vf0;->a(Lcom/android/tools/r8/graph/J4;Z)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/E0;)V
    .locals 1

    .line 14
    sget-object v0, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/vf0;->a(Lcom/android/tools/r8/graph/E0;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/vf0;->e:Lcom/android/tools/r8/shaking/i;

    iget-object v1, p0, Lcom/android/tools/r8/internal/vf0;->i:Lcom/android/tools/r8/internal/uD;

    iget-object v2, p0, Lcom/android/tools/r8/internal/vf0;->g:Lcom/android/tools/r8/internal/Hz;

    iget-object v3, p0, Lcom/android/tools/r8/internal/vf0;->l:Lcom/android/tools/r8/internal/Hz;

    .line 2
    invoke-virtual {v2, v3, p1}, Lcom/android/tools/r8/internal/Hz;->d(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/uD;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/vf0;->a(Lcom/android/tools/r8/graph/J4;Z)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/E0;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/vf0;->a(Lcom/android/tools/r8/graph/E0;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/vf0;->g:Lcom/android/tools/r8/internal/Hz;

    iget-object v1, p0, Lcom/android/tools/r8/internal/vf0;->l:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/vf0;->h(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/vf0;->i(Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/A2;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/vf0;->e:Lcom/android/tools/r8/shaking/i;

    iget-object v1, p0, Lcom/android/tools/r8/internal/vf0;->g:Lcom/android/tools/r8/internal/Hz;

    iget-object v2, p0, Lcom/android/tools/r8/internal/vf0;->m:Lcom/android/tools/r8/graph/H5;

    iget-object v5, p0, Lcom/android/tools/r8/internal/vf0;->l:Lcom/android/tools/r8/internal/Hz;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    sget-object v4, Lcom/android/tools/r8/internal/kK;->f:Lcom/android/tools/r8/internal/kK;

    .line 4
    sget-object v6, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    move-object v2, p1

    .line 5
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    .line 6
    iget-object p1, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 7
    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 8
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/j;->f(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/vf0;->a(Lcom/android/tools/r8/graph/J4;Z)V

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/E0;)V
    .locals 1

    .line 11
    sget-object v0, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/vf0;->a(Lcom/android/tools/r8/graph/E0;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/vf0;->g:Lcom/android/tools/r8/internal/Hz;

    iget-object v1, p0, Lcom/android/tools/r8/internal/vf0;->l:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Hz;->d(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/vf0;->h(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final e(Lcom/android/tools/r8/graph/E0;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/vf0;->a(Lcom/android/tools/r8/graph/E0;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final e(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/vf0;->i(Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method

.method public final f(Lcom/android/tools/r8/graph/A2;)V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/vf0;->e:Lcom/android/tools/r8/shaking/i;

    iget-object v1, p0, Lcom/android/tools/r8/internal/vf0;->g:Lcom/android/tools/r8/internal/Hz;

    iget-object v2, p0, Lcom/android/tools/r8/internal/vf0;->m:Lcom/android/tools/r8/graph/H5;

    iget-object v5, p0, Lcom/android/tools/r8/internal/vf0;->l:Lcom/android/tools/r8/internal/Hz;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    sget-object v4, Lcom/android/tools/r8/internal/kK;->g:Lcom/android/tools/r8/internal/kK;

    .line 5
    sget-object v6, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    move-object v2, p1

    .line 6
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    .line 7
    iget-object p1, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 8
    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 9
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/j;->f(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/vf0;->a(Lcom/android/tools/r8/graph/J4;Z)V

    return-void
.end method

.method public final f(Lcom/android/tools/r8/graph/E0;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/pw1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/pw1;-><init>(Lcom/android/tools/r8/internal/vf0;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/vf0;->a(Lcom/android/tools/r8/graph/E0;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final f(Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/vf0;->l:Lcom/android/tools/r8/internal/Hz;

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/internal/vf0;->g:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v1, v0, p1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/vf0;->h(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final g(Lcom/android/tools/r8/graph/A2;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/vf0;->e:Lcom/android/tools/r8/shaking/i;

    iget-object v1, p0, Lcom/android/tools/r8/internal/vf0;->g:Lcom/android/tools/r8/internal/Hz;

    iget-object v2, p0, Lcom/android/tools/r8/internal/vf0;->m:Lcom/android/tools/r8/graph/H5;

    iget-object v5, p0, Lcom/android/tools/r8/internal/vf0;->l:Lcom/android/tools/r8/internal/Hz;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    sget-object v4, Lcom/android/tools/r8/internal/kK;->h:Lcom/android/tools/r8/internal/kK;

    .line 4
    sget-object v6, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    move-object v2, p1

    .line 5
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    .line 6
    iget-object p1, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 7
    check-cast p1, Lcom/android/tools/r8/graph/A2;

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/vf0;->a(Lcom/android/tools/r8/graph/J4;Z)V

    return-void
.end method

.method public final synthetic g(Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 11
    new-instance v0, Lcom/android/tools/r8/internal/qw1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/qw1;-><init>(Lcom/android/tools/r8/internal/vf0;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/vf0;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final g(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/vf0;->i(Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method

.method public final h(Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/vw1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/vw1;-><init>(Lcom/android/tools/r8/internal/vf0;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/vf0;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final i(Lcom/android/tools/r8/graph/l1;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/vf0;->e:Lcom/android/tools/r8/shaking/i;

    iget-object v1, p0, Lcom/android/tools/r8/internal/vf0;->g:Lcom/android/tools/r8/internal/Hz;

    iget-object v2, p0, Lcom/android/tools/r8/internal/vf0;->l:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v1, v2, p1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/vf0;->a(Lcom/android/tools/r8/graph/J4;Z)V

    return-void
.end method
