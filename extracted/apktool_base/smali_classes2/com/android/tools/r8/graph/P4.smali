.class public final Lcom/android/tools/r8/graph/P4;
.super Lcom/android/tools/r8/graph/O4;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Z

.field public b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ZLjava/util/SortedMap;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/O4;-><init>()V

    iput-boolean p1, p0, Lcom/android/tools/r8/graph/P4;->a:Z

    iput-object p2, p0, Lcom/android/tools/r8/graph/P4;->b:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 10
    invoke-interface {p0, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 11
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    .line 12
    sget-object p0, Lcom/android/tools/r8/internal/Ws0;->c:Lcom/android/tools/r8/internal/Vs0;

    return-object p0

    .line 13
    :cond_0
    sget-object p0, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/graph/j1;)V
    .locals 1

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/graph/P4;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/F2;->b()Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/F2;->a()Lcom/android/tools/r8/graph/L2;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/P4;Ljava/util/function/Function;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/graph/j1;)V
    .locals 0

    .line 66
    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/P4;->b(Lcom/android/tools/r8/graph/j1;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/graph/O4;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/P4;->f(Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/graph/P4;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;
    .locals 1

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/graph/P4;->a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 15
    iget-object v0, p1, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    .line 16
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/graph/j1;
    .locals 4

    .line 53
    new-instance v0, Lcom/android/tools/r8/graph/la;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/la;-><init>(Lcom/android/tools/r8/graph/P4;)V

    .line 54
    invoke-static {p1, p1}, Lcom/android/tools/r8/internal/rd;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/D2;

    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/android/tools/r8/graph/P4;->b:Ljava/lang/Object;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    if-eqz v2, :cond_4

    .line 56
    invoke-interface {v0, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 57
    :cond_0
    invoke-interface {p2, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    .line 58
    sget-boolean v2, Lcom/android/tools/r8/graph/P4;->c:Z

    if-nez v2, :cond_2

    invoke-interface {v0, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 59
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    .line 61
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    .line 62
    invoke-virtual {v0, v2, p1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 63
    iget-object p1, p0, Lcom/android/tools/r8/graph/P4;->b:Ljava/lang/Object;

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    .line 64
    :cond_3
    iget-object p1, p0, Lcom/android/tools/r8/graph/P4;->b:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object p1, p0, Lcom/android/tools/r8/graph/P4;->b:Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->Z0()Lcom/android/tools/r8/graph/F2;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/j1;
    .locals 1

    .line 7
    sget v0, Lcom/android/tools/r8/graph/F2;->b:I

    .line 8
    new-instance v0, Lcom/android/tools/r8/graph/E2;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/graph/E2;-><init>(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)V

    .line 9
    iget-object p1, p0, Lcom/android/tools/r8/graph/P4;->b:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    return-object p1
.end method

.method public final a(Ljava/util/function/Function;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/j1;
    .locals 1

    .line 67
    iget-object v0, p2, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    .line 68
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    return-object p1

    :cond_0
    return-object p2
.end method

.method public final a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/j1;
    .locals 1

    .line 17
    new-instance v0, Lcom/android/tools/r8/graph/la;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/la;-><init>(Lcom/android/tools/r8/graph/P4;)V

    .line 18
    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/P4;->c(Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/android/tools/r8/graph/P4;->b:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/la;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/graph/la;-><init>(Lcom/android/tools/r8/graph/P4;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;)V
    .locals 1

    .line 19
    sget-boolean v0, Lcom/android/tools/r8/graph/P4;->c:Z

    if-nez v0, :cond_1

    .line 20
    iget-object v0, p1, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    .line 21
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 23
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/P4;->b(Lcom/android/tools/r8/graph/j1;)V

    return-void
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 1

    .line 24
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/P4;->a(Lcom/android/tools/r8/graph/j1;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Jy;)V
    .locals 1

    .line 26
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 27
    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/P4;->c(Lcom/android/tools/r8/graph/j1;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .locals 1

    .line 29
    new-instance v0, Lcom/android/tools/r8/graph/pa;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/pa;-><init>(Lcom/android/tools/r8/graph/P4;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Ljava/util/SortedMap;Lcom/android/tools/r8/graph/j1;)V
    .locals 1

    .line 2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->J0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->Z0()Lcom/android/tools/r8/graph/F2;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/function/Function;)V
    .locals 7

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/graph/P4;->b:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 47
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    .line 48
    invoke-interface {p1, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    if-eq v4, v3, :cond_0

    .line 49
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->Z0()Lcom/android/tools/r8/graph/F2;

    move-result-object v5

    .line 50
    iget-object v6, p0, Lcom/android/tools/r8/graph/P4;->b:Ljava/lang/Object;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/j1;

    if-ne v6, v3, :cond_1

    .line 51
    iget-object v3, p0, Lcom/android/tools/r8/graph/P4;->b:Ljava/lang/Object;

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    .line 52
    :cond_1
    iget-object v3, p0, Lcom/android/tools/r8/graph/P4;->b:Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/j1;->Z0()Lcom/android/tools/r8/graph/F2;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a([Lcom/android/tools/r8/graph/j1;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 30
    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/P4;->b:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 31
    sget-object p1, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/graph/P4;->b:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 33
    array-length v1, p1

    add-int/2addr v0, v1

    .line 34
    iget-boolean v1, p0, Lcom/android/tools/r8/graph/P4;->a:Z

    if-eqz v1, :cond_3

    .line 35
    new-instance v0, Lcom/android/tools/r8/internal/f30;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/f30;-><init>()V

    goto :goto_0

    .line 36
    :cond_3
    new-instance v1, Lcom/android/tools/r8/internal/o30;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/o30;-><init>(I)V

    move-object v0, v1

    .line 37
    :goto_0
    new-instance v1, Lcom/android/tools/r8/graph/ha;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/graph/ha;-><init>(Lcom/android/tools/r8/graph/P4;Ljava/util/SortedMap;)V

    .line 38
    sget-object v2, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/graph/O4;->a(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    .line 39
    array-length v1, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_6

    aget-object v3, p1, v2

    .line 40
    sget-boolean v4, Lcom/android/tools/r8/graph/P4;->c:Z

    if-nez v4, :cond_5

    .line 41
    iget-object v4, v3, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    .line 42
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/L4;->D()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    .line 43
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 44
    :cond_5
    :goto_2
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->Z0()Lcom/android/tools/r8/graph/F2;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 45
    :cond_6
    iput-object v0, p0, Lcom/android/tools/r8/graph/P4;->b:Ljava/lang/Object;

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;
    .locals 1

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/graph/P4;->a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->J0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/graph/j1;
    .locals 3

    invoke-static {p1, p1}, Lcom/android/tools/r8/internal/rd;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/D2;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/android/tools/r8/graph/P4;->b:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    if-eqz v1, :cond_4

    .line 38
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->J0()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 39
    :cond_0
    invoke-interface {p2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    .line 40
    sget-boolean v1, Lcom/android/tools/r8/graph/P4;->c:Z

    if-nez v1, :cond_2

    .line 41
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->J0()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 43
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    .line 45
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    .line 46
    invoke-virtual {v1, v2, p1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 47
    iget-object p1, p0, Lcom/android/tools/r8/graph/P4;->b:Ljava/lang/Object;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    .line 48
    :cond_3
    iget-object p1, p0, Lcom/android/tools/r8/graph/P4;->b:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object p1, p0, Lcom/android/tools/r8/graph/P4;->b:Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->Z0()Lcom/android/tools/r8/graph/F2;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Ljava/util/function/Function;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/j1;
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->J0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    return-object p1

    :cond_0
    return-object p2
.end method

.method public final b(Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/j1;
    .locals 1

    .line 9
    new-instance v0, Lcom/android/tools/r8/graph/ka;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/ka;-><init>(Lcom/android/tools/r8/graph/P4;)V

    .line 10
    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/P4;->c(Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/graph/P4;->b:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Zs0;

    .line 5
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 6
    :cond_1
    sget-object p1, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p1
.end method

.method public final b()V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/graph/P4;->b:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/ka;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/graph/ka;-><init>(Lcom/android/tools/r8/graph/P4;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/j1;)V
    .locals 2

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->Z0()Lcom/android/tools/r8/graph/F2;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/graph/P4;->b:Ljava/lang/Object;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    .line 13
    sget-boolean v0, Lcom/android/tools/r8/graph/P4;->c:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/Jy;)V
    .locals 6

    .line 30
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/P4;->c()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/CT;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 31
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/P4;->a()V

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/tools/r8/graph/j1;

    .line 34
    invoke-interface {p1, v5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_1
    if-ge v3, p1, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/P4;->a(Lcom/android/tools/r8/graph/j1;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final b(Ljava/util/SortedMap;Lcom/android/tools/r8/graph/j1;)V
    .locals 1

    .line 50
    iget-object v0, p2, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    .line 51
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->Z0()Lcom/android/tools/r8/graph/F2;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final b([Lcom/android/tools/r8/graph/j1;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 15
    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/P4;->b:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 16
    sget-object p1, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/graph/P4;->b:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 18
    array-length v1, p1

    add-int/2addr v0, v1

    .line 19
    iget-boolean v1, p0, Lcom/android/tools/r8/graph/P4;->a:Z

    if-eqz v1, :cond_3

    .line 20
    new-instance v0, Lcom/android/tools/r8/internal/f30;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/f30;-><init>()V

    goto :goto_0

    .line 21
    :cond_3
    new-instance v1, Lcom/android/tools/r8/internal/o30;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/o30;-><init>(I)V

    move-object v0, v1

    .line 22
    :goto_0
    new-instance v1, Lcom/android/tools/r8/graph/na;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/graph/na;-><init>(Lcom/android/tools/r8/graph/P4;Ljava/util/SortedMap;)V

    .line 23
    sget-object v2, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/graph/O4;->a(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    .line 24
    array-length v1, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_6

    aget-object v3, p1, v2

    .line 25
    sget-boolean v4, Lcom/android/tools/r8/graph/P4;->c:Z

    if-nez v4, :cond_5

    .line 26
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->J0()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    .line 27
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 28
    :cond_5
    :goto_2
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->Z0()Lcom/android/tools/r8/graph/F2;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 29
    :cond_6
    iput-object v0, p0, Lcom/android/tools/r8/graph/P4;->b:Ljava/lang/Object;

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;
    .locals 1

    .line 1
    invoke-static {p1, p1}, Lcom/android/tools/r8/internal/rd;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/D2;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/P4;->b:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    return-object p1
.end method

.method public final c(Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/j1;
    .locals 2

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/C7;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/C7;-><init>()V

    .line 5
    new-instance v1, Lcom/android/tools/r8/graph/ma;

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/graph/ma;-><init>(Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/C7;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/P4;->b(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    return-object p1
.end method

.method public final c()Ljava/lang/Iterable;
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/graph/ja;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/ja;-><init>(Lcom/android/tools/r8/graph/P4;)V

    return-object v0
.end method

.method public final c(Lcom/android/tools/r8/graph/j1;)V
    .locals 1

    .line 7
    sget-boolean v0, Lcom/android/tools/r8/graph/P4;->c:Z

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->J0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/P4;->b(Lcom/android/tools/r8/graph/j1;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/internal/Jy;)V
    .locals 5

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/P4;->j()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/CT;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/P4;->b()V

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    .line 15
    invoke-interface {p1, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_0
    sget-object p1, Lcom/android/tools/r8/internal/Ly;->b:Lcom/android/tools/r8/internal/Ly;

    invoke-virtual {p0, v1, p1}, Lcom/android/tools/r8/graph/P4;->a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Jy;)V

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/tools/r8/graph/P4;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "sorted"

    goto :goto_0

    :cond_0
    const-string v0, "linked"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<method-mapbacking/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lcom/android/tools/r8/internal/Jy;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/graph/oa;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/graph/oa;-><init>(Lcom/android/tools/r8/graph/P4;Ljava/util/function/Function;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/P4;->a(Ljava/util/function/Function;)V

    return-void
.end method

.method public final e()Ljava/lang/Iterable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/P4;->b:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/android/tools/r8/internal/Jy;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/graph/ga;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/graph/ga;-><init>(Lcom/android/tools/r8/graph/P4;Ljava/util/function/Function;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/P4;->a(Ljava/util/function/Function;)V

    return-void
.end method

.method public final f()I
    .locals 4

    .line 1
    new-instance v0, Lcom/android/tools/r8/graph/la;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/la;-><init>(Lcom/android/tools/r8/graph/P4;)V

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/graph/P4;->b:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    .line 3
    invoke-interface {v0, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final f(Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/graph/P4;
    .locals 4

    .line 5
    new-instance v0, Lcom/android/tools/r8/graph/P4;

    iget-boolean v1, p0, Lcom/android/tools/r8/graph/P4;->a:Z

    iget-object v2, p0, Lcom/android/tools/r8/graph/P4;->b:Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    .line 6
    iget-boolean v3, p0, Lcom/android/tools/r8/graph/P4;->a:Z

    if-eqz v3, :cond_0

    .line 7
    new-instance v2, Lcom/android/tools/r8/internal/f30;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/f30;-><init>()V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v3, Lcom/android/tools/r8/internal/o30;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/o30;-><init>(I)V

    move-object v2, v3

    .line 9
    :goto_0
    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/graph/P4;-><init>(ZLjava/util/SortedMap;)V

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/graph/P4;->b:Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/graph/qa;

    invoke-direct {v2, v0, p1}, Lcom/android/tools/r8/graph/qa;-><init>(Lcom/android/tools/r8/graph/P4;Ljava/util/function/Function;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public final synthetic f(Lcom/android/tools/r8/graph/j1;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/graph/P4;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->Z0()Lcom/android/tools/r8/graph/F2;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final g()I
    .locals 4

    new-instance v0, Lcom/android/tools/r8/graph/ka;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/ka;-><init>(Lcom/android/tools/r8/graph/P4;)V

    iget-object v1, p0, Lcom/android/tools/r8/graph/P4;->b:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    invoke-interface {v0, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final h()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/P4;->b:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/P4;->b:Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/graph/ra;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/ra;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final j()Ljava/lang/Iterable;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/ia;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/ia;-><init>(Lcom/android/tools/r8/graph/P4;)V

    return-object v0
.end method

.method public final k()Ljava/util/Iterator;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/graph/P4;->b:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/la;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/graph/la;-><init>(Lcom/android/tools/r8/graph/P4;)V

    new-instance v2, Lcom/android/tools/r8/internal/wK;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/wK;-><init>(Ljava/util/Iterator;Ljava/util/function/Predicate;)V

    return-object v2
.end method

.method public final l()Ljava/util/Iterator;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/graph/P4;->b:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/ka;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/graph/ka;-><init>(Lcom/android/tools/r8/graph/P4;)V

    new-instance v2, Lcom/android/tools/r8/internal/wK;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/wK;-><init>(Ljava/util/Iterator;Ljava/util/function/Predicate;)V

    return-object v2
.end method
