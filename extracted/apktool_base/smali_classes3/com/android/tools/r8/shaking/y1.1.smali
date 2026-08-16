.class public abstract Lcom/android/tools/r8/shaking/y1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/h1;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/F1;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    instance-of v0, p1, Lcom/android/tools/r8/graph/g1;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->m0()Lcom/android/tools/r8/graph/g1;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/q1;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/shaking/y1;->a:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->v0()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->o0()Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/shaking/I1;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/shaking/I1;
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/shaking/l1;
    .locals 1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/l1;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    sget-object p1, Lcom/android/tools/r8/shaking/l1;->t:Lcom/android/tools/r8/shaking/l1;

    return-object p1
.end method

.method public abstract a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/l1;
.end method

.method public abstract a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/q1;
.end method

.method public final a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/d1;)Lcom/android/tools/r8/shaking/q1;
    .locals 2

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    invoke-static {p2}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    if-nez p2, :cond_0

    .line 10
    sget-object p1, Lcom/android/tools/r8/shaking/q1;->o:Lcom/android/tools/r8/shaking/q1;

    return-object p1

    .line 11
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/shaking/y1;->a:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    .line 12
    iget-object v1, p2, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 13
    iget-object v1, v1, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 14
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/s3;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1;

    move-result-object v0

    if-ne v0, p1, :cond_1

    goto :goto_0

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 16
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/q1;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/shaking/t1;
    .locals 1

    .line 52
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->e0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/l1;

    move-result-object p1

    return-object p1

    .line 54
    :cond_0
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->N()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/shaking/I1;

    move-result-object p1

    return-object p1

    .line 57
    :cond_1
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->L()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->W()Lcom/android/tools/r8/graph/F5;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/q1;

    move-result-object p1

    return-object p1

    .line 60
    :cond_2
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public abstract a(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/shaking/x1;
.end method

.method public abstract a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/shaking/x1;
.end method

.method public abstract a(Lcom/android/tools/r8/graph/H5;)V
.end method

.method public abstract a(Lcom/android/tools/r8/graph/y;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V
.end method

.method public abstract a(Lcom/android/tools/r8/internal/nJ;Ljava/util/Set;)V
.end method

.method public abstract a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/nJ;)V
.end method

.method public final a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/shaking/Q0;Lcom/android/tools/r8/graph/d1;)Z
    .locals 1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    instance-of v0, p1, Lcom/android/tools/r8/graph/M2;

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 20
    invoke-interface {p3, p1}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/shaking/l1;

    move-result-object p1

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->r0()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->n0()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 23
    iget-object v0, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 24
    invoke-interface {p3, v0}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p3

    invoke-static {p3}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p3

    if-nez p3, :cond_1

    .line 25
    sget-object p1, Lcom/android/tools/r8/shaking/I1;->D:Lcom/android/tools/r8/shaking/I1;

    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    if-nez p1, :cond_2

    .line 27
    sget-object p1, Lcom/android/tools/r8/shaking/I1;->D:Lcom/android/tools/r8/shaking/I1;

    goto :goto_0

    .line 28
    :cond_2
    invoke-virtual {p0, p3, p1}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/shaking/I1;

    move-result-object p1

    goto :goto_0

    .line 29
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->p0()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 30
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->l0()Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    .line 31
    iget-object v0, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p3, v0}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p3

    invoke-static {p3}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p3

    if-nez p3, :cond_4

    .line 32
    sget-object p1, Lcom/android/tools/r8/shaking/q1;->o:Lcom/android/tools/r8/shaking/q1;

    goto :goto_0

    .line 33
    :cond_4
    iget-object v0, p3, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 34
    iget-object v0, v0, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 35
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/s3;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1;

    move-result-object p1

    if-nez p1, :cond_5

    .line 36
    sget-object p1, Lcom/android/tools/r8/shaking/q1;->o:Lcom/android/tools/r8/shaking/q1;

    goto :goto_0

    .line 37
    :cond_5
    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/q1;

    move-result-object p1

    .line 38
    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/shaking/t1;->d(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p1

    return p1

    .line 39
    :cond_6
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/b1;Lcom/android/tools/r8/shaking/Q0;Lcom/android/tools/r8/graph/d1;)Z
    .locals 1

    .line 40
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->s0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->l0()Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/shaking/l1;

    move-result-object p1

    goto :goto_1

    .line 42
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->v0()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 43
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->o0()Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p3

    invoke-static {p3}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p3

    if-nez p3, :cond_1

    .line 45
    sget-object p1, Lcom/android/tools/r8/shaking/I1;->D:Lcom/android/tools/r8/shaking/I1;

    goto :goto_1

    .line 46
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/shaking/y1;->a:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 47
    :cond_3
    :goto_0
    invoke-virtual {p0, p3, p1}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/shaking/I1;

    move-result-object p1

    goto :goto_1

    .line 48
    :cond_4
    instance-of v0, p1, Lcom/android/tools/r8/graph/g1;

    if-eqz v0, :cond_5

    .line 49
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->m0()Lcom/android/tools/r8/graph/g1;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/d1;)Lcom/android/tools/r8/shaking/q1;

    move-result-object p1

    .line 50
    :goto_1
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/shaking/t1;->d(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p1

    return p1

    .line 51
    :cond_5
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public abstract b(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/nJ;)V
.end method

.method public abstract c(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/nJ;)V
.end method
