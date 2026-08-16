.class public final Lcom/android/tools/r8/naming/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final b:Ljava/util/HashSet;

.field public final c:Lcom/android/tools/r8/internal/Rn;

.field public final d:Ljava/util/ArrayList;

.field public final synthetic e:Lcom/android/tools/r8/naming/K;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/naming/K;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/naming/I;->e:Lcom/android/tools/r8/naming/K;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/I;->b:Ljava/util/HashSet;

    invoke-static {}, Lcom/android/tools/r8/internal/Rn;->k()Lcom/android/tools/r8/internal/Rn;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/naming/I;->c:Lcom/android/tools/r8/internal/Rn;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/I;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Ljava/util/function/BiFunction;Lcom/android/tools/r8/graph/H0;Ljava/util/Set;)Lcom/android/tools/r8/internal/Zs0;
    .locals 1

    .line 42
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/naming/J;

    .line 43
    invoke-interface {p0, p1, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    new-instance p0, Lcom/android/tools/r8/internal/Ws0;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/Ws0;-><init>(Ljava/lang/Object;)V

    return-object p0

    .line 45
    :cond_1
    sget-object p0, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/naming/J;)Ljava/lang/Boolean;
    .locals 0

    .line 31
    invoke-virtual {p2, p1, p0}, Lcom/android/tools/r8/naming/J;->b(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/L2;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 32
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic a(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/naming/J;)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/naming/Y;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/naming/J;)V
    .locals 0

    .line 34
    invoke-virtual {p3, p2, p0}, Lcom/android/tools/r8/naming/J;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/L2;)V

    .line 35
    invoke-virtual {p1, p2, p0}, Lcom/android/tools/r8/naming/Y;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/L2;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/graph/L2;
    .locals 8

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/naming/I;->c:Lcom/android/tools/r8/internal/Rn;

    .line 15
    iget-object v0, v0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    .line 16
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/naming/I;->c:Lcom/android/tools/r8/internal/Rn;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Pn;->i()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_1
    if-ge v3, v2, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/graph/H0;

    .line 18
    iget-object v5, p0, Lcom/android/tools/r8/naming/I;->c:Lcom/android/tools/r8/internal/Rn;

    .line 19
    iget-object v6, v5, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    .line 20
    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/Rn;->a(Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/internal/fv;

    move-result-object v5

    .line 21
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 22
    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/naming/J;

    .line 23
    invoke-virtual {v6, v4}, Lcom/android/tools/r8/naming/J;->a(Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/graph/L2;

    move-result-object v6

    .line 24
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v7

    .line 25
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v7

    .line 26
    invoke-virtual {v7, v6}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 27
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    return-object v0

    :cond_3
    if-eqz v6, :cond_2

    move-object v1, v6

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public final a(Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/android/tools/r8/naming/I;->c:Lcom/android/tools/r8/internal/Rn;

    new-instance v1, Lcom/android/tools/r8/naming/E1;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/naming/E1;-><init>(Ljava/util/function/BiFunction;)V

    .line 39
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Pn;->a(Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Zs0;->a()Lcom/android/tools/r8/internal/Ws0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ws0;->e()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/naming/J;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/naming/I;->c:Lcom/android/tools/r8/internal/Rn;

    new-instance v1, Lcom/android/tools/r8/internal/zY0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/zY0;-><init>()V

    invoke-static {v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Rn;->a(Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/internal/fv;

    move-result-object p1

    .line 4
    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Pn;->a(Ljava/util/function/Function;Lcom/android/tools/r8/internal/fv;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H0;Ljava/util/Set;)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/naming/I;->c:Lcom/android/tools/r8/internal/Rn;

    new-instance v1, Lcom/android/tools/r8/internal/zY0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/zY0;-><init>()V

    invoke-static {v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Rn;->a(Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/internal/fv;

    move-result-object p1

    .line 12
    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Pn;->a(Ljava/util/function/Function;Lcom/android/tools/r8/internal/fv;)Ljava/lang/Object;

    move-result-object p1

    .line 13
    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/naming/Y;)V
    .locals 1

    .line 33
    new-instance v0, Lcom/android/tools/r8/naming/C1;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/naming/C1;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/naming/Y;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/naming/I;->a(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/naming/I;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/naming/I;->b:Ljava/util/HashSet;

    iget-object v1, p1, Lcom/android/tools/r8/naming/I;->b:Ljava/util/HashSet;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/naming/I;->d:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/tools/r8/naming/I;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8
    iget-object p1, p1, Lcom/android/tools/r8/naming/I;->c:Lcom/android/tools/r8/internal/Rn;

    new-instance v0, Lcom/android/tools/r8/naming/z1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/naming/z1;-><init>(Lcom/android/tools/r8/naming/I;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Pn;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Ljava/util/function/BiConsumer;)V
    .locals 1

    .line 36
    new-instance v0, Lcom/android/tools/r8/naming/A1;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/naming/A1;-><init>(Ljava/util/function/BiConsumer;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/naming/I;->a(Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/L2;)Z
    .locals 1

    .line 28
    new-instance v0, Lcom/android/tools/r8/naming/D1;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/naming/D1;-><init>(Lcom/android/tools/r8/graph/L2;)V

    .line 29
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/naming/I;->a(Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/L2;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/naming/B1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/naming/B1;-><init>(Lcom/android/tools/r8/naming/I;Lcom/android/tools/r8/graph/L2;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/naming/I;->a(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/naming/J;)V
    .locals 1

    .line 2
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/naming/J;->a(Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p3, p2, v0}, Lcom/android/tools/r8/naming/J;->c(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/L2;)V

    .line 4
    iget-object p1, p0, Lcom/android/tools/r8/naming/I;->e:Lcom/android/tools/r8/naming/K;

    iget-object p1, p1, Lcom/android/tools/r8/naming/K;->c:Lcom/android/tools/r8/naming/Y;

    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/naming/Y;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/L2;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p3, p2, p1}, Lcom/android/tools/r8/naming/J;->c(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/L2;)V

    .line 6
    iget-object p3, p0, Lcom/android/tools/r8/naming/I;->e:Lcom/android/tools/r8/naming/K;

    iget-object p3, p3, Lcom/android/tools/r8/naming/K;->c:Lcom/android/tools/r8/naming/Y;

    invoke-virtual {p3, p2, p1}, Lcom/android/tools/r8/naming/Y;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/L2;)V

    return-void
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/tools/r8/naming/I;

    iget-object p1, p1, Lcom/android/tools/r8/naming/I;->c:Lcom/android/tools/r8/internal/Rn;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    iget-object v0, p0, Lcom/android/tools/r8/naming/I;->c:Lcom/android/tools/r8/internal/Rn;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method
