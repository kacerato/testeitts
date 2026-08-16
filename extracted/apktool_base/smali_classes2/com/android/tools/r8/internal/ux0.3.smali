.class public final Lcom/android/tools/r8/internal/ux0;
.super Lcom/android/tools/r8/internal/wx0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/wx0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/vx0;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/internal/Wj;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$p;->M0:Z

    if-nez v0, :cond_0

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    iget-object p2, p2, Lcom/android/tools/r8/internal/vx0;->c:Ljava/util/Set;

    .line 21
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 22
    iget-object p2, p0, Lcom/android/tools/r8/internal/Wj;->a:Lcom/android/tools/r8/graph/y;

    .line 23
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object p2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Wj;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/shaking/t1;->c(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 24
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g;->p()Lcom/android/tools/r8/graph/g;

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Wj;->b:Lcom/android/tools/r8/graph/c4;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/graph/c4;->b:Ljava/util/IdentityHashMap;

    .line 3
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/android/tools/r8/internal/Wj;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/tools/r8/internal/nJ$p;->N0:Z

    if-nez p1, :cond_0

    .line 6
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->l1()Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/tools/r8/internal/Wj;->a:Lcom/android/tools/r8/graph/y;

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object p1

    .line 9
    check-cast p1, Lcom/android/tools/r8/shaking/x1;

    .line 10
    iget-object p1, p1, Lcom/android/tools/r8/shaking/x1;->b:Ljava/util/IdentityHashMap;

    .line 11
    iget-object v0, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 12
    sget-object v1, Lcom/android/tools/r8/shaking/l1;->t:Lcom/android/tools/r8/shaking/l1;

    .line 13
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/l1;

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/Wj;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/t1;->c(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 15
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->J0()Lcom/android/tools/r8/graph/Q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g;->p()Lcom/android/tools/r8/graph/g;

    :cond_0
    return-void

    .line 16
    :cond_1
    invoke-interface {v0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
