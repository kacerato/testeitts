.class public final Lcom/android/tools/r8/graph/R5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/Q5;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/Q5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/R5;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/graph/R5;->b:Lcom/android/tools/r8/graph/Q5;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 37
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/D0;->l0()Lcom/android/tools/r8/graph/C2;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/tools/r8/graph/R5;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/C2;)V

    .line 38
    iget-object p1, p1, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    .line 39
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/R2;

    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    instance-of v1, v0, Lcom/android/tools/r8/graph/U2;

    if-eqz v1, :cond_1

    .line 42
    iget-object v1, p0, Lcom/android/tools/r8/graph/R5;->b:Lcom/android/tools/r8/graph/Q5;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R2;->u0()Lcom/android/tools/r8/graph/U2;

    move-result-object v0

    .line 43
    iget-object v0, v0, Lcom/android/tools/r8/graph/R2$m;->d:Lcom/android/tools/r8/graph/d4;

    .line 44
    check-cast v0, Lcom/android/tools/r8/graph/l1;

    invoke-interface {v1, v0}, Lcom/android/tools/r8/graph/Q5;->a(Lcom/android/tools/r8/graph/l1;)V

    goto :goto_0

    .line 45
    :cond_1
    instance-of v1, v0, Lcom/android/tools/r8/graph/W2;

    if-eqz v1, :cond_2

    .line 46
    iget-object v1, p0, Lcom/android/tools/r8/graph/R5;->b:Lcom/android/tools/r8/graph/Q5;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R2;->y0()Lcom/android/tools/r8/graph/W2;

    move-result-object v0

    .line 47
    iget-object v0, v0, Lcom/android/tools/r8/graph/R2$m;->d:Lcom/android/tools/r8/graph/d4;

    .line 48
    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v1, v0}, Lcom/android/tools/r8/graph/Q5;->a(Lcom/android/tools/r8/graph/A2;)V

    goto :goto_0

    .line 49
    :cond_2
    instance-of v1, v0, Lcom/android/tools/r8/graph/X2;

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R2;->z0()Lcom/android/tools/r8/graph/X2;

    move-result-object v0

    .line 51
    iget-object v0, v0, Lcom/android/tools/r8/graph/R2$m;->d:Lcom/android/tools/r8/graph/d4;

    .line 52
    check-cast v0, Lcom/android/tools/r8/graph/C2;

    invoke-virtual {p0, p2, v0}, Lcom/android/tools/r8/graph/R5;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/C2;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 4
    new-instance v0, Lu/P0;

    invoke-direct {v0}, Lu/P0;-><init>()V

    new-instance v1, Lcom/android/tools/r8/graph/La;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/graph/La;-><init>(Lcom/android/tools/r8/graph/R5;)V

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/graph/H2;->h(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)V
    .locals 5

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->t0()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7
    sget-boolean v1, Lcom/android/tools/r8/graph/R5;->c:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/graph/R5;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/j1;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->V()Lcom/android/tools/r8/graph/G;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W9;

    .line 12
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W9;->I()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 13
    iget-object v2, p0, Lcom/android/tools/r8/graph/R5;->b:Lcom/android/tools/r8/graph/Q5;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W9;->f()Lcom/android/tools/r8/internal/F9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/F9;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/android/tools/r8/graph/Q5;->a(Lcom/android/tools/r8/graph/l1;)V

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W9;->L()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 15
    iget-object v2, p0, Lcom/android/tools/r8/graph/R5;->b:Lcom/android/tools/r8/graph/Q5;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W9;->j()Lcom/android/tools/r8/internal/ga;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/android/tools/r8/graph/Q5;->a(Lcom/android/tools/r8/graph/A2;)V

    goto :goto_1

    .line 16
    :cond_4
    instance-of v2, v1, Lcom/android/tools/r8/internal/ha;

    if-eqz v2, :cond_2

    .line 17
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W9;->k()Lcom/android/tools/r8/internal/ha;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ha;->V()Lcom/android/tools/r8/graph/D0;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/tools/r8/graph/R5;->a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/H5;)V

    goto :goto_1

    .line 18
    :cond_5
    instance-of v1, v0, Lcom/android/tools/r8/graph/l0;

    if-eqz v1, :cond_6

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/graph/R5;->a:Lcom/android/tools/r8/graph/y;

    .line 20
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/tools/r8/graph/l0;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/graph/R5;->b:Lcom/android/tools/r8/graph/Q5;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/graph/Q5;->a(Lcom/android/tools/r8/graph/A2;)V

    return-void

    .line 22
    :cond_6
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->A0()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 23
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->o0()Lcom/android/tools/r8/internal/WS;

    move-result-object v0

    .line 24
    iget-object v0, v0, Lcom/android/tools/r8/internal/WS;->g:[Lcom/android/tools/r8/internal/YS;

    .line 25
    array-length v1, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_d

    aget-object v3, v0, v2

    .line 26
    instance-of v4, v3, Lcom/android/tools/r8/graph/l1;

    if-eqz v4, :cond_7

    .line 27
    iget-object v4, p0, Lcom/android/tools/r8/graph/R5;->b:Lcom/android/tools/r8/graph/Q5;

    check-cast v3, Lcom/android/tools/r8/graph/l1;

    invoke-interface {v4, v3}, Lcom/android/tools/r8/graph/Q5;->a(Lcom/android/tools/r8/graph/l1;)V

    goto :goto_3

    .line 28
    :cond_7
    instance-of v4, v3, Lcom/android/tools/r8/graph/D0;

    if-eqz v4, :cond_8

    .line 29
    check-cast v3, Lcom/android/tools/r8/graph/D0;

    invoke-virtual {p0, v3, p1}, Lcom/android/tools/r8/graph/R5;->a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/H5;)V

    goto :goto_3

    .line 30
    :cond_8
    instance-of v4, v3, Lcom/android/tools/r8/graph/A2;

    if-eqz v4, :cond_9

    .line 31
    iget-object v4, p0, Lcom/android/tools/r8/graph/R5;->b:Lcom/android/tools/r8/graph/Q5;

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v4, v3}, Lcom/android/tools/r8/graph/Q5;->a(Lcom/android/tools/r8/graph/A2;)V

    goto :goto_3

    .line 32
    :cond_9
    instance-of v4, v3, Lcom/android/tools/r8/graph/C2;

    if-eqz v4, :cond_a

    .line 33
    check-cast v3, Lcom/android/tools/r8/graph/C2;

    invoke-virtual {p0, p1, v3}, Lcom/android/tools/r8/graph/R5;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/C2;)V

    :cond_a
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 34
    :cond_b
    instance-of p1, v0, Lcom/android/tools/r8/graph/c6;

    if-eqz p1, :cond_c

    goto :goto_4

    .line 35
    :cond_c
    sget-boolean p1, Lcom/android/tools/r8/graph/R5;->c:Z

    if-eqz p1, :cond_e

    :cond_d
    :goto_4
    return-void

    .line 36
    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/C2;)V
    .locals 0

    .line 53
    iget-object p1, p2, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    .line 54
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/B2;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 55
    iget-object p1, p0, Lcom/android/tools/r8/graph/R5;->b:Lcom/android/tools/r8/graph/Q5;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/C2;->l0()Lcom/android/tools/r8/graph/l1;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/tools/r8/graph/Q5;->a(Lcom/android/tools/r8/graph/l1;)V

    return-void

    .line 56
    :cond_0
    sget-boolean p1, Lcom/android/tools/r8/graph/R5;->c:Z

    if-nez p1, :cond_2

    .line 57
    iget-object p1, p2, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/B2;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 58
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 59
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/graph/R5;->b:Lcom/android/tools/r8/graph/Q5;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/tools/r8/graph/Q5;->a(Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/R5;->a:Lcom/android/tools/r8/graph/y;

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/Ma;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/graph/Ma;-><init>(Lcom/android/tools/r8/graph/R5;)V

    iget-object v2, p0, Lcom/android/tools/r8/graph/R5;->a:Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-static {v2, v0, v1, p1}, Lcom/android/tools/r8/J;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method
