.class public final Lcom/android/tools/r8/internal/rf0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/K5;

.field public final c:Ljava/util/IdentityHashMap;

.field public final d:Ljava/util/Set;

.field public final e:Lcom/android/tools/r8/internal/qf0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/K5;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/rf0;->c:Ljava/util/IdentityHashMap;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/rf0;->d:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/tools/r8/internal/rf0;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/rf0;->b:Lcom/android/tools/r8/graph/K5;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    new-instance p2, Lcom/android/tools/r8/internal/qf0;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/qf0;-><init>(Lcom/android/tools/r8/graph/b1;)V

    invoke-virtual {v0, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/tools/r8/internal/rf0;->e:Lcom/android/tools/r8/internal/qf0;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/vf0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/e4;)V
    .locals 0

    .line 39
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/vf0;->a(Lcom/android/tools/r8/graph/e4;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/b1;)Lcom/android/tools/r8/internal/qf0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/rf0;->a:Lcom/android/tools/r8/graph/y;

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->s0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->l0()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->v1()Z

    move-result v0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->n0()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->v1()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/rf0;->b:Lcom/android/tools/r8/graph/K5;

    .line 8
    iget-object v0, v0, Lcom/android/tools/r8/graph/K5;->b:Ljava/lang/String;

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/android/tools/r8/internal/rf0;->e:Lcom/android/tools/r8/internal/qf0;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/rf0;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/qf0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/F5;)V
    .locals 4

    .line 40
    new-instance v0, Lcom/android/tools/r8/internal/vf0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/rf0;->a:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/internal/rf0;->e:Lcom/android/tools/r8/internal/qf0;

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/android/tools/r8/internal/vf0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/rf0;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/internal/qf0;)V

    .line 41
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/rf0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v2

    .line 42
    iget-object v3, v0, Lcom/android/tools/r8/internal/vf0;->g:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v3, v2, v1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/vf0;->h(Lcom/android/tools/r8/graph/M2;)V

    .line 43
    new-instance v1, Lcom/android/tools/r8/internal/pf0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/rf0;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/internal/pf0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/vf0;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/pf0;->a(Lcom/android/tools/r8/graph/u0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 4

    .line 19
    new-instance v0, Lcom/android/tools/r8/internal/vf0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/rf0;->a:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/internal/rf0;->e:Lcom/android/tools/r8/internal/qf0;

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/android/tools/r8/internal/vf0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/rf0;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/internal/qf0;)V

    .line 20
    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-eqz v1, :cond_0

    .line 21
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/rf0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v2

    .line 22
    iget-object v3, v0, Lcom/android/tools/r8/internal/vf0;->g:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v3, v2, v1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/vf0;->h(Lcom/android/tools/r8/graph/M2;)V

    .line 23
    :cond_0
    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    new-instance v2, Lcom/android/tools/r8/internal/Vr1;

    invoke-direct {v2, p0, v0}, Lcom/android/tools/r8/internal/Vr1;-><init>(Lcom/android/tools/r8/internal/rf0;Lcom/android/tools/r8/internal/vf0;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/O2;->forEach(Ljava/util/function/Consumer;)V

    .line 24
    new-instance v1, Lcom/android/tools/r8/internal/pf0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/rf0;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/internal/pf0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/vf0;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/pf0;->a(Lcom/android/tools/r8/graph/u0;)V

    .line 25
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->q1()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 26
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->t1()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    new-instance v1, Lcom/android/tools/r8/internal/Wr1;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/Wr1;-><init>(Lcom/android/tools/r8/internal/rf0;Lcom/android/tools/r8/internal/vf0;)V

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/E0;->h(Ljava/util/function/Consumer;)V

    goto :goto_1

    .line 28
    :cond_1
    sget-boolean v1, Lcom/android/tools/r8/internal/rf0;->f:Z

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->u1()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 29
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->T0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/rf0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v2

    .line 30
    iget-object v3, v0, Lcom/android/tools/r8/internal/vf0;->g:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v3, v2, v1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/vf0;->h(Lcom/android/tools/r8/graph/M2;)V

    .line 31
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->Q0()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/Xr1;

    invoke-direct {v2, v0, p1}, Lcom/android/tools/r8/internal/Xr1;-><init>(Lcom/android/tools/r8/internal/vf0;Lcom/android/tools/r8/graph/H2;)V

    .line 32
    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 33
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->O0()Lcom/android/tools/r8/graph/i3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/vf0;->a(Lcom/android/tools/r8/graph/i3;)V

    .line 34
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->U0()Lcom/android/tools/r8/graph/o5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/vf0;->a(Lcom/android/tools/r8/graph/o5;)V

    .line 35
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->V0()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/vf0;->a(Ljava/util/List;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)V
    .locals 6

    .line 44
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 45
    new-instance v1, Lcom/android/tools/r8/internal/vf0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/rf0;->a:Lcom/android/tools/r8/graph/y;

    iget-object v3, p0, Lcom/android/tools/r8/internal/rf0;->e:Lcom/android/tools/r8/internal/qf0;

    invoke-direct {v1, v2, p0, p1, v3}, Lcom/android/tools/r8/internal/vf0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/rf0;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/internal/qf0;)V

    .line 46
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->X0()Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/Ur1;

    invoke-direct {v3, p0, v1}, Lcom/android/tools/r8/internal/Ur1;-><init>(Lcom/android/tools/r8/internal/rf0;Lcom/android/tools/r8/internal/vf0;)V

    .line 47
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/I2;->d(Ljava/util/function/Consumer;)V

    .line 48
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-eqz v2, :cond_1

    .line 49
    iget-object v2, p0, Lcom/android/tools/r8/internal/rf0;->a:Lcom/android/tools/r8/graph/y;

    .line 50
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    iget-object v5, v4, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v3, v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v2, v3}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_1

    .line 52
    iget-object v2, p0, Lcom/android/tools/r8/internal/rf0;->a:Lcom/android/tools/r8/graph/y;

    .line 53
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2, v4, v3}, Lcom/android/tools/r8/graph/j;->h(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v2

    const/4 v3, 0x0

    .line 54
    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/internal/vf0;->a(Lcom/android/tools/r8/graph/J4;Z)V

    .line 55
    :cond_1
    new-instance v2, Lcom/android/tools/r8/internal/pf0;

    iget-object v3, p0, Lcom/android/tools/r8/internal/rf0;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v2, v3, v1}, Lcom/android/tools/r8/internal/pf0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/vf0;)V

    .line 56
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/pf0;->a(Lcom/android/tools/r8/graph/u0;)V

    .line 57
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->U0()Lcom/android/tools/r8/graph/z5;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/pf0;->a(Lcom/android/tools/r8/graph/z5;)V

    .line 58
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 59
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/graph/i0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/f6;)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/vf0;Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/android/tools/r8/internal/rf0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 37
    iget-object v1, p1, Lcom/android/tools/r8/internal/vf0;->g:Lcom/android/tools/r8/internal/Hz;

    .line 38
    invoke-virtual {v1, v0, p2}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/vf0;->h(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/rf0;->b:Lcom/android/tools/r8/graph/K5;

    .line 13
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/Qr1;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Qr1;-><init>(Lcom/android/tools/r8/graph/K5;)V

    new-instance v0, Lcom/android/tools/r8/internal/Rr1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Rr1;-><init>(Lcom/android/tools/r8/internal/rf0;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/rf0;->a:Lcom/android/tools/r8/graph/y;

    .line 14
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v2

    .line 15
    invoke-static {v1, v0, v2, p1}, Lcom/android/tools/r8/internal/Kr0;->a(Lcom/android/tools/r8/internal/Yx;Lcom/android/tools/r8/internal/Wr0;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    .line 16
    iget-object p1, p0, Lcom/android/tools/r8/internal/rf0;->b:Lcom/android/tools/r8/graph/K5;

    new-instance v0, Lcom/android/tools/r8/internal/Sr1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Sr1;-><init>(Lcom/android/tools/r8/internal/rf0;)V

    .line 17
    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 18
    iget-object p1, p0, Lcom/android/tools/r8/internal/rf0;->b:Lcom/android/tools/r8/graph/K5;

    new-instance v0, Lcom/android/tools/r8/internal/Tr1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Tr1;-><init>(Lcom/android/tools/r8/internal/rf0;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/K5;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/vf0;Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/rf0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    iget-object v1, p1, Lcom/android/tools/r8/internal/vf0;->g:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v1, v0, p2}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/vf0;->h(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/internal/vf0;Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/rf0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    iget-object v1, p1, Lcom/android/tools/r8/internal/vf0;->g:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v1, v0, p2}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/vf0;->h(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method
