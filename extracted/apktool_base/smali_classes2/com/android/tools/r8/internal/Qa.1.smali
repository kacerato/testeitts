.class public abstract Lcom/android/tools/r8/internal/Qa;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/DI;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Qa;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->L0:Lcom/android/tools/r8/internal/nJ$f;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ$f;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-static {p0}, Lcom/android/tools/r8/internal/X2;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/xU;

    move-result-object v1

    .line 4
    iget-object v1, v1, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    .line 5
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/CU;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v1

    .line 7
    iget-object v1, v1, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    .line 8
    iget-boolean v1, v1, Lcom/android/tools/r8/internal/xU;->a:Z

    if-nez v1, :cond_0

    .line 9
    new-instance v1, Lcom/android/tools/r8/internal/qm;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/qm;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->c0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    new-instance v1, Lcom/android/tools/r8/internal/n5;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/n5;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/WR;->b()Lcom/android/tools/r8/internal/zm;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zm;->a()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 16
    new-instance p1, Lcom/android/tools/r8/internal/dm;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/dm;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/function/Predicate;)V

    goto :goto_0

    :cond_3
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_4

    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->k()I

    move-result p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/oJ;->a(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 19
    new-instance p1, Lcom/android/tools/r8/internal/fc0;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/fc0;-><init>(Lcom/android/tools/r8/graph/y;)V

    goto :goto_1

    :cond_5
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_6

    .line 20
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_6
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->o3:Lcom/android/tools/r8/internal/hC;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/M2;

    .line 22
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 23
    new-instance v1, Lcom/android/tools/r8/internal/lm;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/lm;-><init>(Lcom/android/tools/r8/graph/y;)V

    :cond_8
    if-eqz v1, :cond_9

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_a

    .line 26
    sget-object p0, Lcom/android/tools/r8/internal/Oa;->a:Lcom/android/tools/r8/internal/Oa;

    return-object p0

    .line 27
    :cond_a
    new-instance p0, Lcom/android/tools/r8/internal/Pa;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/Pa;-><init>(Ljava/util/ArrayList;)V

    return-object p0

    .line 28
    :cond_b
    sget-object p0, Lcom/android/tools/r8/internal/Oa;->a:Lcom/android/tools/r8/internal/Oa;

    return-object p0
.end method


# virtual methods
.method public abstract a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Ta;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
.end method
