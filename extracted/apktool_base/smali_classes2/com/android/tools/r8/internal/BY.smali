.class public abstract Lcom/android/tools/r8/internal/BY;
.super Lcom/android/tools/r8/internal/EY;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/qo0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/EY;-><init>(Lcom/android/tools/r8/internal/qo0;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;)I
    .locals 4

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    .line 12
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/BY;->a(Lcom/android/tools/r8/graph/j1;)I

    move-result v3

    add-int/2addr v1, v3

    .line 13
    iget-object v3, p0, Lcom/android/tools/r8/internal/EY;->a:Lcom/android/tools/r8/internal/qo0;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v3, v2}, Lcom/android/tools/r8/internal/m1;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v2

    or-int/2addr v0, v2

    goto :goto_0

    .line 14
    :cond_0
    instance-of p1, p0, Lcom/android/tools/r8/internal/AY;

    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    const p1, 0x7fffffff

    return p1

    :cond_1
    return v1
.end method

.method public abstract a(Lcom/android/tools/r8/graph/j1;)I
.end method

.method public final a(Ljava/util/ArrayList;Lcom/android/tools/r8/dex/q0;Lcom/android/tools/r8/dex/t0;Lcom/android/tools/r8/dex/r0;)V
    .locals 5

    .line 1
    new-instance p2, Lcom/android/tools/r8/internal/PA0;

    invoke-direct {p2, p0}, Lcom/android/tools/r8/internal/PA0;-><init>(Lcom/android/tools/r8/internal/BY;)V

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/qd0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/qd0;-><init>()V

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lcom/android/tools/r8/internal/x1;->b:I

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Lcom/android/tools/r8/graph/H2;

    .line 5
    invoke-interface {p2, v3}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v0, v4, v3}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    goto :goto_0

    .line 6
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7
    new-instance p1, Lcom/android/tools/r8/internal/QA0;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/QA0;-><init>(Lcom/android/tools/r8/internal/x1;)V

    invoke-static {p1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/errors/q;

    invoke-direct {v0}, Lcom/android/tools/r8/errors/q;-><init>()V

    .line 8
    invoke-interface {p1, v0}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    .line 9
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 10
    invoke-static {p2, p3, p4}, Lcom/android/tools/r8/internal/EY;->a(Ljava/util/ArrayList;Lcom/android/tools/r8/dex/t0;Lcom/android/tools/r8/dex/r0;)V

    return-void
.end method
