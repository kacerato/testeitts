.class public abstract Lcom/android/tools/r8/internal/R30;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Q30;
    .locals 3

    .line 4
    iget-object p2, p2, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->w0()Lcom/android/tools/r8/internal/tZ;

    move-result-object p2

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 6
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 7
    invoke-static {v0, p2}, Lcom/android/tools/r8/internal/iB;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/QJ;

    move-result-object p2

    if-nez p2, :cond_0

    .line 8
    sget-object p0, Lcom/android/tools/r8/internal/Wt;->a:Lcom/android/tools/r8/internal/Wt;

    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p2, p0, p1}, Lcom/android/tools/r8/internal/VJ;->e(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H0;

    move-result-object v0

    if-nez v0, :cond_1

    .line 10
    sget-object p0, Lcom/android/tools/r8/internal/Wt;->a:Lcom/android/tools/r8/internal/Wt;

    return-object p0

    .line 11
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 13
    iget-object v0, v0, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 14
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/TW;->a(Lcom/android/tools/r8/internal/QJ;)Lcom/android/tools/r8/internal/fE;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fE;->b()Lcom/android/tools/r8/internal/UD;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/UD;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17
    sget-object p0, Lcom/android/tools/r8/internal/Wt;->a:Lcom/android/tools/r8/internal/Wt;

    return-object p0

    .line 18
    :cond_2
    new-instance v1, Lcom/android/tools/r8/internal/P30;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/P30;-><init>()V

    .line 19
    new-instance v2, Lcom/android/tools/r8/internal/JU0;

    invoke-direct {v2, p0, p2, v1, p1}, Lcom/android/tools/r8/internal/JU0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/QJ;Lcom/android/tools/r8/internal/P30;Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0, p0, v2}, Lcom/android/tools/r8/internal/UD;->a(Lcom/android/tools/r8/graph/d1;Ljava/util/function/BiConsumer;)V

    .line 20
    iget-object p0, v1, Lcom/android/tools/r8/internal/P30;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {p0}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/tools/r8/internal/Wt;->a:Lcom/android/tools/r8/internal/Wt;

    return-object p0

    :cond_3
    new-instance p0, Lcom/android/tools/r8/internal/K00;

    iget-object p1, v1, Lcom/android/tools/r8/internal/P30;->a:Ljava/util/IdentityHashMap;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/K00;-><init>(Ljava/util/IdentityHashMap;)V

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/QJ;Lcom/android/tools/r8/internal/P30;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/internal/SD;)V
    .locals 3

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0, p4}, Lcom/android/tools/r8/shaking/i;->c(Lcom/android/tools/r8/graph/F0;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    .line 23
    iget-object v2, v0, Lcom/android/tools/r8/graph/J1;->a:Lcom/android/tools/r8/graph/l1;

    if-eq v1, v2, :cond_0

    .line 24
    iget-object v0, v0, Lcom/android/tools/r8/graph/J1;->b:Lcom/android/tools/r8/graph/l1;

    if-ne v1, v0, :cond_6

    .line 25
    :cond_0
    invoke-interface {p5}, Lcom/android/tools/r8/internal/SD;->s()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26
    invoke-interface {p5}, Lcom/android/tools/r8/internal/SD;->q()Lcom/android/tools/r8/internal/RD;

    move-result-object p5

    .line 27
    iget p5, p5, Lcom/android/tools/r8/internal/RD;->a:I

    .line 28
    invoke-virtual {p1, p5}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 29
    sget-object p5, Lcom/android/tools/r8/internal/M1;->a:Lcom/android/tools/r8/internal/L1;

    .line 30
    invoke-virtual {p1, p0, p3, p5}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;

    move-result-object p0

    .line 31
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result p1

    if-nez p1, :cond_6

    .line 33
    sget-boolean p1, Lcom/android/tools/r8/internal/P30;->b:Z

    if-nez p1, :cond_2

    iget-object p1, p2, Lcom/android/tools/r8/internal/P30;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 34
    :cond_2
    :goto_0
    iget-object p1, p2, Lcom/android/tools/r8/internal/P30;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p1, p2, p0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 35
    :cond_3
    invoke-interface {p5}, Lcom/android/tools/r8/internal/SD;->r()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 36
    invoke-interface {p5}, Lcom/android/tools/r8/internal/SD;->w()Lcom/android/tools/r8/internal/Pm0;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result p1

    if-nez p1, :cond_6

    .line 38
    sget-boolean p1, Lcom/android/tools/r8/internal/P30;->b:Z

    if-nez p1, :cond_5

    iget-object p1, p2, Lcom/android/tools/r8/internal/P30;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 39
    :cond_5
    :goto_1
    iget-object p1, p2, Lcom/android/tools/r8/internal/P30;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p1, p2, p0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    instance-of v0, p0, Lcom/android/tools/r8/internal/oZ;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->b2()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->a2()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Q30;
    .locals 1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    new-instance v0, Lcom/android/tools/r8/internal/KU0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/KU0;-><init>()V

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p2, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    sget-object v0, Lcom/android/tools/r8/internal/M1;->a:Lcom/android/tools/r8/internal/L1;

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p1, p0, Lcom/android/tools/r8/internal/Co0;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/F1;->Q()Lcom/android/tools/r8/internal/Co0;

    move-result-object p0

    iget-object p0, p0, Lcom/android/tools/r8/internal/Co0;->b:Lcom/android/tools/r8/internal/Q30;

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/tools/r8/internal/Wt;->a:Lcom/android/tools/r8/internal/Wt;

    return-object p0

    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/hz0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/hz0;-><init>()V

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/internal/R30;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Q30;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/tools/r8/internal/Wt;->a:Lcom/android/tools/r8/internal/Wt;

    return-object p0
.end method
