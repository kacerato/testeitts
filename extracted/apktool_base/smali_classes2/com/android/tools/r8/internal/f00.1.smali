.class public final Lcom/android/tools/r8/internal/f00;
.super Lcom/android/tools/r8/internal/ex0;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/ex0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/f00;->b:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Zs0;
    .locals 2

    .line 29
    new-instance v0, Lcom/android/tools/r8/internal/QB;

    iget-object v1, p0, Lcom/android/tools/r8/internal/f00;->b:Lcom/android/tools/r8/graph/y;

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/QB;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)V

    .line 30
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/f6;)V

    .line 31
    iget-object p1, v0, Lcom/android/tools/r8/graph/g6;->e:Ljava/lang/Boolean;

    .line 32
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 33
    sget-object p1, Lcom/android/tools/r8/internal/Ws0;->c:Lcom/android/tools/r8/internal/Vs0;

    return-object p1

    .line 34
    :cond_0
    sget-object p1, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)Z
    .locals 4

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-interface {p2}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/tools/r8/graph/o0;->a(Lcom/android/tools/r8/graph/J2;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 6
    sget-boolean v0, Lcom/android/tools/r8/internal/f00;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->J0()Lcom/android/tools/r8/graph/Q;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v3

    if-nez v3, :cond_0

    .line 8
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g;->k()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 10
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->J0()Lcom/android/tools/r8/graph/Q;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v2

    if-nez v2, :cond_2

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->k()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 14
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->J0()Lcom/android/tools/r8/graph/Q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g;->l()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->J0()Lcom/android/tools/r8/graph/Q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g;->f()Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1

    .line 15
    :cond_5
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->w1()Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    .line 16
    :cond_6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->R0()Lcom/android/tools/r8/graph/O2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/O2;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/M2;

    .line 17
    iget-object v3, p0, Lcom/android/tools/r8/internal/f00;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 18
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->w1()Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 19
    :cond_8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->I0()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/g1;

    .line 20
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->H0()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->G0()Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 21
    :cond_a
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    .line 22
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->H0()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->G0()Z

    move-result v3

    if-nez v3, :cond_c

    return v1

    .line 23
    :cond_c
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->H0()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 24
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2, v2}, Lcom/android/tools/r8/graph/E0;->c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 25
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->H0()Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 26
    :cond_d
    new-instance p2, Lcom/android/tools/r8/internal/F91;

    invoke-direct {p2, p0}, Lcom/android/tools/r8/internal/F91;-><init>(Lcom/android/tools/r8/internal/f00;)V

    new-instance v0, Lu/P0;

    invoke-direct {v0}, Lu/P0;-><init>()V

    .line 27
    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/graph/H2;->a(Ljava/util/function/Function;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/lx0;)Z
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/android/tools/r8/internal/lx0;->b:Lcom/android/tools/r8/graph/H2;

    .line 2
    iget-object p1, p1, Lcom/android/tools/r8/internal/lx0;->c:Lcom/android/tools/r8/graph/H2;

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/f00;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "NoIllegalAccessesPolicy"

    return-object v0
.end method
