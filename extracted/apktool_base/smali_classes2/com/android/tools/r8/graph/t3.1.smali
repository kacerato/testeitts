.class public final Lcom/android/tools/r8/graph/t3;
.super Lcom/android/tools/r8/graph/s3;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public a:Lcom/android/tools/r8/internal/o30;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/o30;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/s3;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/t3;->a:Lcom/android/tools/r8/internal/o30;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/m1;Lcom/android/tools/r8/graph/g1;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/graph/t3;->b:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/m1;->b:Lcom/android/tools/r8/graph/L2;

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/E;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/tools/r8/graph/m1;->c:Lcom/android/tools/r8/graph/M2;

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/E;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    return-void
.end method

.method public static synthetic a(Ljava/util/function/Predicate;Ljava/util/List;Lcom/android/tools/r8/graph/m1;Lcom/android/tools/r8/graph/g1;)V
    .locals 0

    .line 49
    invoke-interface {p0, p3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 50
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static synthetic a(Ljava/util/function/Predicate;Ljava/util/SortedMap;Lcom/android/tools/r8/graph/m1;Lcom/android/tools/r8/graph/g1;)V
    .locals 0

    .line 62
    invoke-interface {p0, p3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 63
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static d(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/m1;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/graph/m1;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/tools/r8/graph/m1;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/M2;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/android/tools/r8/graph/t3;->a:Lcom/android/tools/r8/internal/o30;

    invoke-static {p1}, Lcom/android/tools/r8/graph/t3;->d(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/m1;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/o30;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/g1;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Zs0;
    .locals 4

    .line 20
    sget-object v0, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    .line 21
    new-instance v0, Lcom/android/tools/r8/internal/Ys0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Ys0;-><init>(Ljava/lang/Object;)V

    .line 22
    iget-object v1, p0, Lcom/android/tools/r8/graph/t3;->a:Lcom/android/tools/r8/internal/o30;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/o30;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/g30;

    .line 23
    new-instance v2, Lcom/android/tools/r8/internal/n30;

    iget-object v1, v1, Lcom/android/tools/r8/internal/g30;->b:Lcom/android/tools/r8/internal/o30;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/n30;-><init>(Lcom/android/tools/r8/internal/o30;)V

    .line 24
    :cond_0
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/m30;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    iget-object v1, v2, Lcom/android/tools/r8/internal/n30;->g:Lcom/android/tools/r8/internal/o30;

    iget-object v1, v1, Lcom/android/tools/r8/internal/o30;->c:[Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/m30;->b()I

    move-result v3

    aget-object v1, v1, v3

    .line 26
    check-cast v1, Lcom/android/tools/r8/graph/g1;

    .line 27
    invoke-static {p1, v1}, Lcom/android/tools/r8/graph/F0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/F0;

    move-result-object v1

    .line 28
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Zs0;->b()Lcom/android/tools/r8/internal/Ys0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ys0;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Zs0;

    .line 29
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;
    .locals 5

    .line 7
    sget-object v0, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    .line 8
    sget-object v1, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    .line 9
    iget-object v2, p0, Lcom/android/tools/r8/graph/t3;->a:Lcom/android/tools/r8/internal/o30;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/o30;->values()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/g30;

    .line 10
    new-instance v3, Lcom/android/tools/r8/internal/n30;

    .line 11
    iget-object v2, v2, Lcom/android/tools/r8/internal/g30;->b:Lcom/android/tools/r8/internal/o30;

    .line 12
    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/n30;-><init>(Lcom/android/tools/r8/internal/o30;)V

    .line 13
    :cond_0
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/m30;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 14
    iget-object v2, v3, Lcom/android/tools/r8/internal/n30;->g:Lcom/android/tools/r8/internal/o30;

    iget-object v2, v2, Lcom/android/tools/r8/internal/o30;->c:[Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/m30;->b()I

    move-result v4

    aget-object v2, v2, v4

    .line 15
    check-cast v2, Lcom/android/tools/r8/graph/g1;

    .line 16
    invoke-interface {v0, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 17
    invoke-static {p1, v2}, Lcom/android/tools/r8/graph/F0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/F0;

    move-result-object v1

    .line 18
    invoke-interface {p2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Zs0;

    .line 19
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    return-object v1
.end method

.method public final a(Ljava/util/function/Predicate;)Ljava/lang/Iterable;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/android/tools/r8/graph/t3;->a:Lcom/android/tools/r8/internal/o30;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/o30;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/qK;->a(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/android/tools/r8/graph/t3;->a:Lcom/android/tools/r8/internal/o30;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/o30;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/nf;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/nf;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/g1;)V
    .locals 3

    .line 32
    sget-boolean v0, Lcom/android/tools/r8/graph/t3;->b:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/tools/r8/graph/s3;->c(Lcom/android/tools/r8/graph/g1;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 33
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/graph/t3;->a:Lcom/android/tools/r8/internal/o30;

    .line 34
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/l1;

    invoke-static {v2}, Lcom/android/tools/r8/graph/t3;->d(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/m1;

    move-result-object v2

    .line 35
    invoke-virtual {v1, v2, p1}, Lcom/android/tools/r8/internal/o30;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/g1;

    if-nez v0, :cond_3

    if-nez p1, :cond_2

    goto :goto_1

    .line 36
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 1

    .line 31
    new-instance v0, Lcom/android/tools/r8/graph/Yf;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/Yf;-><init>(Lcom/android/tools/r8/graph/t3;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Ljava/util/function/Function;)V
    .locals 8

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/graph/t3;->a:Lcom/android/tools/r8/internal/o30;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/o30;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/graph/g1;

    .line 42
    invoke-interface {p1, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/g1;

    if-eq v4, v3, :cond_0

    .line 43
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/l1;

    invoke-static {v5}, Lcom/android/tools/r8/graph/t3;->d(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/m1;

    move-result-object v5

    .line 44
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/l1;

    invoke-static {v6}, Lcom/android/tools/r8/graph/t3;->d(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/m1;

    move-result-object v6

    .line 45
    invoke-virtual {v6, v5}, Lcom/android/tools/r8/graph/m1;->a(Lcom/android/tools/r8/graph/m1;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 46
    iget-object v7, p0, Lcom/android/tools/r8/graph/t3;->a:Lcom/android/tools/r8/internal/o30;

    invoke-virtual {v7, v5}, Lcom/android/tools/r8/internal/o30;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v3, :cond_1

    .line 47
    iget-object v3, p0, Lcom/android/tools/r8/graph/t3;->a:Lcom/android/tools/r8/internal/o30;

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/o30;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_1
    iget-object v3, p0, Lcom/android/tools/r8/graph/t3;->a:Lcom/android/tools/r8/internal/o30;

    invoke-virtual {v3, v6, v4}, Lcom/android/tools/r8/internal/o30;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a([Lcom/android/tools/r8/graph/g1;)V
    .locals 1

    .line 38
    new-instance v0, Lcom/android/tools/r8/graph/nf;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/nf;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/graph/t3;->a([Lcom/android/tools/r8/graph/g1;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final a([Lcom/android/tools/r8/graph/g1;Ljava/util/function/Predicate;)V
    .locals 5

    .line 51
    array-length v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/graph/t3;->a:Lcom/android/tools/r8/internal/o30;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/o30;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/t3;->a:Lcom/android/tools/r8/internal/o30;

    .line 53
    iget v0, v0, Lcom/android/tools/r8/internal/o30;->k:I

    .line 54
    array-length v1, p1

    add-int/2addr v0, v1

    .line 55
    new-instance v1, Lcom/android/tools/r8/internal/o30;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/o30;-><init>(I)V

    .line 56
    iget-object v0, p0, Lcom/android/tools/r8/graph/t3;->a:Lcom/android/tools/r8/internal/o30;

    new-instance v2, Lcom/android/tools/r8/graph/Xf;

    invoke-direct {v2, p2, v1}, Lcom/android/tools/r8/graph/Xf;-><init>(Ljava/util/function/Predicate;Ljava/util/SortedMap;)V

    invoke-interface {v0, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 57
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 58
    sget-boolean v4, Lcom/android/tools/r8/graph/t3;->b:Z

    if-nez v4, :cond_2

    invoke-interface {p2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 59
    :cond_2
    :goto_1
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/l1;

    invoke-static {v4}, Lcom/android/tools/r8/graph/t3;->d(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/m1;

    move-result-object v4

    .line 60
    invoke-virtual {v1, v4, v3}, Lcom/android/tools/r8/internal/o30;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    :cond_3
    iput-object v1, p0, Lcom/android/tools/r8/graph/t3;->a:Lcom/android/tools/r8/internal/o30;

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/graph/t3;->a:Lcom/android/tools/r8/internal/o30;

    invoke-static {p1}, Lcom/android/tools/r8/graph/t3;->d(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/m1;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/o30;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/g1;

    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g1;->w0()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/E0;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/tools/r8/graph/R6;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/R6;-><init>()V

    .line 2
    sget-object v1, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    .line 3
    iget-object v2, p0, Lcom/android/tools/r8/graph/t3;->a:Lcom/android/tools/r8/internal/o30;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/o30;->values()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/g30;

    .line 4
    new-instance v3, Lcom/android/tools/r8/internal/n30;

    .line 5
    iget-object v2, v2, Lcom/android/tools/r8/internal/g30;->b:Lcom/android/tools/r8/internal/o30;

    .line 6
    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/n30;-><init>(Lcom/android/tools/r8/internal/o30;)V

    .line 7
    :cond_0
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/m30;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    iget-object v2, v3, Lcom/android/tools/r8/internal/n30;->g:Lcom/android/tools/r8/internal/o30;

    iget-object v2, v2, Lcom/android/tools/r8/internal/o30;->c:[Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/m30;->b()I

    move-result v4

    aget-object v2, v2, v4

    .line 9
    check-cast v2, Lcom/android/tools/r8/graph/g1;

    .line 10
    invoke-interface {v0, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 11
    invoke-static {p1, v2}, Lcom/android/tools/r8/graph/F0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/F0;

    move-result-object v1

    .line 12
    invoke-interface {p2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Zs0;

    .line 13
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    return-object v1
.end method

.method public final b(Ljava/util/function/Predicate;)Ljava/util/List;
    .locals 3

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/graph/t3;->a:Lcom/android/tools/r8/internal/o30;

    .line 26
    iget v1, v1, Lcom/android/tools/r8/internal/o30;->k:I

    .line 27
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    iget-object v1, p0, Lcom/android/tools/r8/graph/t3;->a:Lcom/android/tools/r8/internal/o30;

    new-instance v2, Lcom/android/tools/r8/graph/Zf;

    invoke-direct {v2, p1, v0}, Lcom/android/tools/r8/graph/Zf;-><init>(Ljava/util/function/Predicate;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 29
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/graph/t3;->a:Lcom/android/tools/r8/internal/o30;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/o30;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/lf;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/lf;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/g1;)V
    .locals 3

    .line 14
    sget-boolean v0, Lcom/android/tools/r8/graph/t3;->b:Z

    if-nez v0, :cond_1

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g1;->w0()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 17
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/graph/t3;->a:Lcom/android/tools/r8/internal/o30;

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/l1;

    invoke-static {v2}, Lcom/android/tools/r8/graph/t3;->d(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/m1;

    move-result-object v2

    .line 19
    invoke-virtual {v1, v2, p1}, Lcom/android/tools/r8/internal/o30;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/g1;

    if-nez v0, :cond_3

    if-nez p1, :cond_2

    goto :goto_1

    .line 20
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public final b([Lcom/android/tools/r8/graph/g1;)V
    .locals 1

    .line 22
    new-instance v0, Lcom/android/tools/r8/graph/lf;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/lf;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/graph/t3;->a([Lcom/android/tools/r8/graph/g1;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/t3;->a:Lcom/android/tools/r8/internal/o30;

    invoke-static {p1}, Lcom/android/tools/r8/graph/t3;->d(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/m1;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/o30;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/g1;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g1;->w0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final c()Ljava/util/List;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/graph/nf;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/nf;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/t3;->b(Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final d()I
    .locals 5

    .line 2
    new-instance v0, Lcom/android/tools/r8/graph/nf;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/nf;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/graph/t3;->a:Lcom/android/tools/r8/internal/o30;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/o30;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/g30;

    .line 4
    new-instance v2, Lcom/android/tools/r8/internal/n30;

    .line 5
    iget-object v1, v1, Lcom/android/tools/r8/internal/g30;->b:Lcom/android/tools/r8/internal/o30;

    .line 6
    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/n30;-><init>(Lcom/android/tools/r8/internal/o30;)V

    const/4 v1, 0x0

    .line 7
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/m30;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    iget-object v3, v2, Lcom/android/tools/r8/internal/n30;->g:Lcom/android/tools/r8/internal/o30;

    iget-object v3, v3, Lcom/android/tools/r8/internal/o30;->c:[Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/m30;->b()I

    move-result v4

    aget-object v3, v3, v4

    .line 9
    check-cast v3, Lcom/android/tools/r8/graph/g1;

    .line 10
    invoke-interface {v0, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final e()I
    .locals 5

    new-instance v0, Lcom/android/tools/r8/graph/lf;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/lf;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/graph/t3;->a:Lcom/android/tools/r8/internal/o30;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/o30;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/g30;

    new-instance v2, Lcom/android/tools/r8/internal/n30;

    iget-object v1, v1, Lcom/android/tools/r8/internal/g30;->b:Lcom/android/tools/r8/internal/o30;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/n30;-><init>(Lcom/android/tools/r8/internal/o30;)V

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/m30;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/tools/r8/internal/n30;->g:Lcom/android/tools/r8/internal/o30;

    iget-object v3, v3, Lcom/android/tools/r8/internal/o30;->c:[Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/m30;->b()I

    move-result v4

    aget-object v3, v3, v4

    check-cast v3, Lcom/android/tools/r8/graph/g1;

    invoke-interface {v0, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final f()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/t3;->a:Lcom/android/tools/r8/internal/o30;

    iget v0, v0, Lcom/android/tools/r8/internal/o30;->k:I

    return v0
.end method

.method public final g()Ljava/util/List;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/lf;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/lf;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/t3;->b(Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/t3;->a:Lcom/android/tools/r8/internal/o30;

    new-instance v1, Lcom/android/tools/r8/graph/Wf;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/Wf;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method
