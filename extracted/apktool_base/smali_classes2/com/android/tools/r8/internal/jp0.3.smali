.class public interface abstract Lcom/android/tools/r8/internal/jp0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/hB;Lcom/android/tools/r8/internal/zE;Ljava/lang/String;)Lcom/android/tools/r8/internal/xw0;
    .locals 0

    .line 2
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result p3

    if-nez p3, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p3

    .line 4
    invoke-interface {p2, p0, p1, p3}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object p2

    .line 6
    :cond_1
    invoke-interface {p2}, Ljava/util/ListIterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 7
    invoke-interface {p2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/zE;

    .line 8
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result p3

    if-nez p3, :cond_1

    .line 9
    invoke-interface {p2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p3

    .line 11
    invoke-interface {p2, p0, p1, p3}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/hB;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/Pp0;)V
    .locals 1

    .line 12
    sget-boolean v0, Lcom/android/tools/r8/internal/bp0;->a:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/tools/r8/internal/Zf1;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/internal/Zf1;-><init>(Lcom/android/tools/r8/internal/Qp0;)V

    invoke-virtual {p3, v0, p1}, Lcom/android/tools/r8/internal/Pp0;->a(Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/zE;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 13
    :cond_1
    :goto_0
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/Pp0;->b(Lcom/android/tools/r8/internal/zE;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->W0()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    .line 15
    :cond_2
    invoke-interface {p0}, Lcom/android/tools/r8/internal/EE;->i()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Qp0;Lcom/android/tools/r8/internal/xw0;)Z
    .locals 1

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    check-cast p0, Lcom/android/tools/r8/internal/Pp0;

    .line 18
    iget-object p0, p0, Lcom/android/tools/r8/internal/Pp0;->a:Lcom/android/tools/r8/graph/u1;

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/graph/u1;->F2:Lcom/android/tools/r8/graph/M2;

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->G2:Lcom/android/tools/r8/graph/M2;

    if-ne p1, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/hB;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/Pp0;)V
.end method

.method public a()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Lcom/android/tools/r8/internal/fp0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
