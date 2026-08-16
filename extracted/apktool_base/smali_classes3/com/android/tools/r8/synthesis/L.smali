.class public final Lcom/android/tools/r8/synthesis/L;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/synthesis/L;

.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/synthesis/S$b;

.field public final b:Lcom/android/tools/r8/synthesis/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/synthesis/L;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/android/tools/r8/synthesis/L;-><init>(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;)V

    sput-object v0, Lcom/android/tools/r8/synthesis/L;->c:Lcom/android/tools/r8/synthesis/L;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/synthesis/L;->a:Lcom/android/tools/r8/synthesis/S$b;

    iput-object p2, p0, Lcom/android/tools/r8/synthesis/L;->b:Lcom/android/tools/r8/synthesis/l;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/synthesis/L;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->o()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Q;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 5
    iget-object v2, p1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v2

    .line 6
    iget-object v3, p1, Lcom/android/tools/r8/graph/y;->S:Lcom/android/tools/r8/androidapi/a;

    .line 7
    invoke-static {v0, v1, v2, v3}, Lcom/android/tools/r8/graph/r0;->a(Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/synthesis/J;Lcom/android/tools/r8/androidapi/a;)Lcom/android/tools/r8/graph/q0;

    move-result-object v0

    if-nez v0, :cond_1

    .line 8
    sget-object p0, Lcom/android/tools/r8/synthesis/L;->c:Lcom/android/tools/r8/synthesis/L;

    return-object p0

    .line 9
    :cond_1
    sget-boolean v1, Lcom/android/tools/r8/synthesis/L;->d:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/u0;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 10
    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/android/tools/r8/graph/q0;->a:Lcom/android/tools/r8/synthesis/S$b;

    .line 11
    invoke-virtual {v1}, Lcom/android/tools/r8/synthesis/S$b;->g()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 12
    iget-object v2, p0, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/O2;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 13
    sget-object p0, Lcom/android/tools/r8/synthesis/L;->c:Lcom/android/tools/r8/synthesis/L;

    return-object p0

    .line 14
    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    .line 15
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 16
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->m1()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 17
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h1;->H0()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 18
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/u0;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 19
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->U0()Lcom/android/tools/r8/graph/z5;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/z5;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    .line 20
    :cond_5
    sget-object p0, Lcom/android/tools/r8/synthesis/L;->c:Lcom/android/tools/r8/synthesis/L;

    return-object p0

    .line 21
    :cond_6
    invoke-static {}, Lcom/android/tools/r8/graph/u0;->l0()Lcom/android/tools/r8/graph/u0;

    move-result-object v2

    .line 22
    iput-object v2, p0, Lcom/android/tools/r8/graph/b1;->b:Lcom/android/tools/r8/graph/u0;

    .line 23
    new-instance v2, Lcom/android/tools/r8/synthesis/L0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/synthesis/L0;-><init>(Lcom/android/tools/r8/graph/q0;)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/graph/E0;->g(Ljava/util/function/Consumer;)V

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    .line 25
    invoke-virtual {v1}, Lcom/android/tools/r8/synthesis/S$b;->d()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_2

    .line 26
    :cond_7
    invoke-static {v1, v0}, Lcom/android/tools/r8/synthesis/S;->a(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/android/tools/r8/internal/Bl;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 28
    :goto_2
    new-instance v2, Lcom/android/tools/r8/synthesis/L;

    .line 29
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    .line 30
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 31
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j;

    .line 33
    iget-object v3, v3, Lcom/android/tools/r8/graph/h;->b:Lcom/android/tools/r8/internal/Zd;

    .line 34
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 36
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object p1

    .line 37
    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lcom/android/tools/r8/internal/Zd;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/synthesis/J;)Lcom/android/tools/r8/FeatureSplit;

    move-result-object p1

    goto :goto_3

    .line 38
    :cond_8
    sget-object p1, Lcom/android/tools/r8/FeatureSplit;->BASE:Lcom/android/tools/r8/FeatureSplit;

    .line 39
    :goto_3
    new-instance v3, Lcom/android/tools/r8/synthesis/l;

    iget-object v4, p0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object p0, p0, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    invoke-direct {v3, v0, v4, p0, p1}, Lcom/android/tools/r8/synthesis/l;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/FeatureSplit;)V

    .line 40
    invoke-direct {v2, v1, v3}, Lcom/android/tools/r8/synthesis/L;-><init>(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;)V

    return-object v2

    .line 41
    :cond_9
    :goto_4
    sget-object p0, Lcom/android/tools/r8/synthesis/L;->c:Lcom/android/tools/r8/synthesis/L;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/q0;Lcom/android/tools/r8/graph/j1;)V
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/tools/r8/graph/q0;->b:Lcom/android/tools/r8/androidapi/f;

    .line 43
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/j1;->f(Lcom/android/tools/r8/androidapi/f;)V

    return-void
.end method

.method public static b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/synthesis/L;
    .locals 5

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H2;->J1()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/tools/r8/graph/H2;->A:Lcom/android/tools/r8/synthesis/L;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/tools/r8/graph/H2;->A:Lcom/android/tools/r8/synthesis/L;

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/tools/r8/synthesis/L;->c:Lcom/android/tools/r8/synthesis/L;

    return-object p0

    :cond_0
    sget-boolean v1, Lcom/android/tools/r8/synthesis/L;->d:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/tools/r8/synthesis/L;->b:Lcom/android/tools/r8/synthesis/l;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v2, v0, Lcom/android/tools/r8/synthesis/L;->a:Lcom/android/tools/r8/synthesis/S$b;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/tools/r8/synthesis/S$b;->d()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v2, v1}, Lcom/android/tools/r8/synthesis/S;->a(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/Bl;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j;

    iget-object v2, v2, Lcom/android/tools/r8/graph/h;->b:Lcom/android/tools/r8/internal/Zd;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object p1

    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/android/tools/r8/internal/Zd;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/synthesis/J;)Lcom/android/tools/r8/FeatureSplit;

    move-result-object p1

    goto :goto_2

    :cond_4
    sget-object p1, Lcom/android/tools/r8/FeatureSplit;->BASE:Lcom/android/tools/r8/FeatureSplit;

    :goto_2
    new-instance v2, Lcom/android/tools/r8/synthesis/l;

    iget-object v3, p0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object p0, p0, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    invoke-direct {v2, v1, v3, p0, p1}, Lcom/android/tools/r8/synthesis/l;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/FeatureSplit;)V

    new-instance p0, Lcom/android/tools/r8/synthesis/L;

    iget-object p1, v0, Lcom/android/tools/r8/synthesis/L;->a:Lcom/android/tools/r8/synthesis/S$b;

    invoke-direct {p0, p1, v2}, Lcom/android/tools/r8/synthesis/L;-><init>(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;)V

    return-object p0

    :cond_5
    invoke-static {p0, p1}, Lcom/android/tools/r8/synthesis/L;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/synthesis/L;

    move-result-object v0

    sget-boolean v1, Lcom/android/tools/r8/synthesis/L;->d:Z

    if-nez v1, :cond_7

    sget-object v1, Lcom/android/tools/r8/synthesis/L;->c:Lcom/android/tools/r8/synthesis/L;

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v2

    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->S:Lcom/android/tools/r8/androidapi/a;

    invoke-static {p0, v1, v2, p1}, Lcom/android/tools/r8/graph/r0;->a(Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/synthesis/J;Lcom/android/tools/r8/androidapi/a;)Lcom/android/tools/r8/graph/q0;

    move-result-object p0

    if-nez p0, :cond_6

    return-object v0

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_7
    return-object v0
.end method
