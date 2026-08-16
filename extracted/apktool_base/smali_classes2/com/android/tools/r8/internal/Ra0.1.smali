.class public Lcom/android/tools/r8/internal/Ra0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/La0;)Lcom/android/tools/r8/internal/xw0;
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/Ra0;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/La0;->a(Lcom/android/tools/r8/internal/VJ;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/internal/La0;->G:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/zE;->a(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p0

    return-object p0

    :cond_2
    if-nez v0, :cond_4

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->O1()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 5
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/internal/La0;->H:Lcom/android/tools/r8/graph/A2;

    if-ne v1, v2, :cond_5

    const/4 p1, 0x2

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/zE;->a(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p0

    return-object p0

    :cond_5
    if-nez v0, :cond_7

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 8
    iget-object v1, p1, Lcom/android/tools/r8/internal/La0;->a:Lcom/android/tools/r8/graph/u1;

    .line 9
    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1$c;->f:Lcom/android/tools/r8/graph/A2;

    if-ne v0, v1, :cond_6

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_7
    :goto_2
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p0

    .line 11
    new-instance v0, Lcom/android/tools/r8/internal/uV0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/uV0;-><init>()V

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object p0

    .line 13
    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/qK;->a(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/rE;

    .line 15
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/internal/La0;->I:Lcom/android/tools/r8/graph/l1;

    if-ne v1, v2, :cond_8

    .line 16
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/rE;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object p0

    return-object p0

    .line 17
    :cond_9
    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p0
.end method

.method public static a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/La0;)V
    .locals 3

    .line 18
    sget-boolean v0, Lcom/android/tools/r8/internal/Ra0;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p2, p0}, Lcom/android/tools/r8/internal/La0;->a(Lcom/android/tools/r8/internal/VJ;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 19
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    iget-object v2, p2, Lcom/android/tools/r8/internal/La0;->G:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p2, 0x2

    .line 20
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/zE;->a(ILcom/android/tools/r8/internal/xw0;)V

    return-void

    :cond_2
    if-nez v0, :cond_4

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->O1()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 22
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    iget-object v2, p2, Lcom/android/tools/r8/internal/La0;->H:Lcom/android/tools/r8/graph/A2;

    if-ne v1, v2, :cond_5

    const/4 p2, 0x3

    .line 23
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/zE;->a(ILcom/android/tools/r8/internal/xw0;)V

    return-void

    :cond_5
    if-nez v0, :cond_7

    .line 24
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 25
    iget-object v1, p2, Lcom/android/tools/r8/internal/La0;->a:Lcom/android/tools/r8/graph/u1;

    .line 26
    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1$c;->f:Lcom/android/tools/r8/graph/A2;

    if-ne v0, v1, :cond_6

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_7
    :goto_2
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p0

    .line 28
    new-instance v0, Lcom/android/tools/r8/internal/uV0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/uV0;-><init>()V

    .line 29
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object p0

    .line 30
    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/qK;->a(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object p0

    .line 31
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/rE;

    .line 32
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    iget-object v2, p2, Lcom/android/tools/r8/internal/La0;->J:Lcom/android/tools/r8/graph/l1;

    if-ne v1, v2, :cond_8

    const/4 p0, 0x1

    .line 33
    invoke-virtual {v0, p0, p1}, Lcom/android/tools/r8/internal/zE;->a(ILcom/android/tools/r8/internal/xw0;)V

    return-void

    .line 34
    :cond_9
    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p0
.end method

.method public static b(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/La0;)Lcom/android/tools/r8/internal/xw0;
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/internal/Ra0;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/La0;->a(Lcom/android/tools/r8/internal/VJ;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/internal/La0;->G:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/zE;->a(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p0

    return-object p0

    :cond_2
    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->O1()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/internal/La0;->H:Lcom/android/tools/r8/graph/A2;

    if-ne v1, v2, :cond_5

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/zE;->a(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p0

    return-object p0

    :cond_5
    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    iget-object v1, p1, Lcom/android/tools/r8/internal/La0;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1$c;->f:Lcom/android/tools/r8/graph/A2;

    if-ne v0, v1, :cond_6

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_7
    :goto_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/uV0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/uV0;-><init>()V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/qK;->a(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/rE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/internal/La0;->J:Lcom/android/tools/r8/graph/l1;

    if-ne v1, v2, :cond_8

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/rE;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object p0

    return-object p0

    :cond_9
    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p0
.end method
