.class public final Lcom/android/tools/r8/naming/B0;
.super Lcom/android/tools/r8/naming/m0;
.source "SourceFile"


# static fields
.field public static final synthetic k:Z = true


# instance fields
.field public final i:Ljava/util/IdentityHashMap;

.field public final j:Lcom/android/tools/r8/graph/u1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Ljava/util/IdentityHashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/naming/m0;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object p2, p0, Lcom/android/tools/r8/naming/B0;->i:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/naming/B0;->j:Lcom/android/tools/r8/graph/u1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/F0;)Lcom/android/tools/r8/graph/L2;
    .locals 1

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/naming/B0;->a(Lcom/android/tools/r8/graph/G0;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/naming/A;Ljava/util/function/BiPredicate;)Lcom/android/tools/r8/graph/L2;
    .locals 3

    .line 24
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    .line 25
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/naming/B0;->a(Lcom/android/tools/r8/graph/G0;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 26
    invoke-interface {p3, v1, p1}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 27
    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/naming/B0;->a(Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/graph/L2;)V

    :cond_0
    return-object v1

    .line 28
    :cond_1
    sget-boolean v1, Lcom/android/tools/r8/naming/B0;->k:Z

    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/android/tools/r8/naming/B0;->i:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, v0}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_0
    if-nez v1, :cond_5

    .line 29
    iget-object v0, p0, Lcom/android/tools/r8/naming/m0;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/shaking/q1;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/naming/m0;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t1;->b(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 30
    :cond_5
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/naming/m0;->a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/naming/A;Ljava/util/function/BiPredicate;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/G0;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/L2;
    .locals 2

    .line 31
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    .line 32
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->v1()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    iget-object p1, p0, Lcom/android/tools/r8/naming/B0;->i:Ljava/util/IdentityHashMap;

    invoke-virtual {p1, v0}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 34
    iget-object p1, p0, Lcom/android/tools/r8/naming/B0;->j:Lcom/android/tools/r8/graph/u1;

    iget-object p2, p0, Lcom/android/tools/r8/naming/B0;->i:Ljava/util/IdentityHashMap;

    invoke-virtual {p2, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/naming/V;

    invoke-virtual {p2}, Lcom/android/tools/r8/naming/V;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2

    .line 35
    :cond_1
    sget-boolean p2, Lcom/android/tools/r8/naming/B0;->k:Z

    if-nez p2, :cond_3

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->a0()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 36
    :cond_3
    :goto_0
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->I()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 37
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->b()Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/android/tools/r8/naming/m0;->a(Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    goto :goto_1

    .line 38
    :cond_4
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->c()Lcom/android/tools/r8/graph/F0;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/android/tools/r8/naming/m0;->a(Lcom/android/tools/r8/graph/F0;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_5

    return-object p1

    .line 39
    :cond_5
    iget-object p1, p0, Lcom/android/tools/r8/naming/B0;->i:Ljava/util/IdentityHashMap;

    invoke-virtual {p1, v0}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 40
    iget-object p1, p0, Lcom/android/tools/r8/naming/B0;->j:Lcom/android/tools/r8/graph/u1;

    iget-object p2, p0, Lcom/android/tools/r8/naming/B0;->i:Ljava/util/IdentityHashMap;

    invoke-virtual {p2, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/naming/V;

    invoke-virtual {p2}, Lcom/android/tools/r8/naming/V;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/graph/L2;
    .locals 1

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/naming/B0;->a(Lcom/android/tools/r8/graph/G0;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/naming/a0;Ljava/util/function/BiPredicate;)Lcom/android/tools/r8/graph/L2;
    .locals 3

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/naming/B0;->a(Lcom/android/tools/r8/graph/G0;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 10
    invoke-interface {p3, v1, v0}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/naming/B0;->a(Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/graph/L2;)V

    goto :goto_2

    .line 12
    :cond_0
    sget-boolean v1, Lcom/android/tools/r8/naming/B0;->k:Z

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/naming/B0;->i:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, v0}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    if-nez v1, :cond_4

    .line 13
    instance-of v1, p1, Lcom/android/tools/r8/graph/H5;

    if-eqz v1, :cond_4

    .line 14
    iget-object v1, p0, Lcom/android/tools/r8/naming/m0;->e:Lcom/android/tools/r8/graph/y;

    .line 15
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/naming/m0;->e:Lcom/android/tools/r8/graph/y;

    .line 16
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/shaking/t1;->b(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 17
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 18
    :cond_4
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/naming/m0;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/naming/a0;Ljava/util/function/BiPredicate;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    .line 19
    :cond_5
    :goto_2
    sget-boolean p2, Lcom/android/tools/r8/naming/B0;->k:Z

    if-nez p2, :cond_7

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result p3

    if-nez p3, :cond_7

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/j1;->i1()Z

    move-result p3

    if-nez p3, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    if-nez p2, :cond_9

    .line 20
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result p2

    if-nez p2, :cond_9

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    .line 21
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    .line 22
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Q;->H()Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_4

    .line 23
    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_4
    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/graph/L2;)V
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/android/tools/r8/naming/B0;->i:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/naming/V;

    .line 42
    sget-boolean v1, Lcom/android/tools/r8/naming/B0;->k:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->r0()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->p0()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 43
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez v0, :cond_2

    .line 45
    sget-object v0, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    goto :goto_1

    .line 46
    :cond_2
    iget-object v0, v0, Lcom/android/tools/r8/naming/V;->d:Lcom/android/tools/r8/position/Position;

    .line 47
    :goto_1
    new-instance v1, Lcom/android/tools/r8/naming/a;

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' cannot be mapped to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' because it is in conflict with an existing member with the same signature. This usually happens when compiling a test application against a source application and there are used classes in the test that was not given a -keep rule when compiling the app. Try either renaming \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' such that it will not collide or add a keep rule to keep \'"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/naming/a;-><init>(Ljava/lang/String;Lcom/android/tools/r8/position/Position;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method
