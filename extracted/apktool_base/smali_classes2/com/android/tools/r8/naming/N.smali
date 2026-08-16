.class public final Lcom/android/tools/r8/naming/N;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/N;->a:Lcom/android/tools/r8/graph/y;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/kotlin/f0;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/tools/r8/kotlin/f0;->b:Lcom/android/tools/r8/kotlin/g0;

    .line 38
    iget-object p0, p0, Lcom/android/tools/r8/kotlin/g0;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/eC;Lcom/android/tools/r8/naming/M;)V
    .locals 1

    .line 39
    invoke-virtual {p1}, Lcom/android/tools/r8/naming/M;->a()Ljava/util/Optional;

    move-result-object p1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/naming/n2;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/naming/n2;-><init>(Lcom/android/tools/r8/internal/eC;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/hC;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/android/tools/r8/naming/N;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/x0;->e()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/H2;

    .line 4
    iget-object v4, v3, Lcom/android/tools/r8/graph/H2;->x:Lcom/android/tools/r8/kotlin/p;

    .line 5
    invoke-interface {v4}, Lcom/android/tools/r8/kotlin/p;->o()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6
    invoke-interface {v4}, Lcom/android/tools/r8/kotlin/p;->k()Lcom/android/tools/r8/kotlin/H;

    move-result-object v4

    .line 7
    iget-object v4, v4, Lcom/android/tools/r8/kotlin/H;->b:Lcom/android/tools/r8/kotlin/g0;

    .line 8
    iget-object v4, v4, Lcom/android/tools/r8/kotlin/g0;->a:Ljava/lang/String;

    .line 9
    new-instance v5, Lcom/android/tools/r8/naming/j2;

    invoke-direct {v5, p0}, Lcom/android/tools/r8/naming/j2;-><init>(Lcom/android/tools/r8/naming/N;)V

    .line 10
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/naming/M;

    .line 11
    invoke-virtual {v4, v3}, Lcom/android/tools/r8/naming/M;->a(Lcom/android/tools/r8/graph/H2;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-interface {v4}, Lcom/android/tools/r8/kotlin/p;->t()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 13
    invoke-interface {v4}, Lcom/android/tools/r8/kotlin/p;->m()Lcom/android/tools/r8/kotlin/f0;

    move-result-object v4

    .line 14
    iget-object v5, v4, Lcom/android/tools/r8/kotlin/f0;->a:Lcom/android/tools/r8/internal/NQ$d;

    .line 15
    iget-object v5, v5, Lcom/android/tools/r8/internal/NQ$d;->c:Ljava/lang/String;

    .line 16
    new-instance v6, Lcom/android/tools/r8/naming/k2;

    invoke-direct {v6, v4}, Lcom/android/tools/r8/naming/k2;-><init>(Lcom/android/tools/r8/kotlin/f0;)V

    .line 17
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 18
    iget-object v4, v4, Lcom/android/tools/r8/kotlin/f0;->b:Lcom/android/tools/r8/kotlin/g0;

    .line 19
    iget-object v4, v4, Lcom/android/tools/r8/kotlin/g0;->a:Ljava/lang/String;

    .line 20
    new-instance v5, Lcom/android/tools/r8/naming/l2;

    invoke-direct {v5, p0}, Lcom/android/tools/r8/naming/l2;-><init>(Lcom/android/tools/r8/naming/N;)V

    .line 21
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/naming/M;

    .line 22
    invoke-virtual {v4, v3}, Lcom/android/tools/r8/naming/M;->a(Lcom/android/tools/r8/graph/H2;)V

    goto :goto_0

    .line 23
    :cond_2
    iget-object v2, p0, Lcom/android/tools/r8/naming/N;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/x0;->e()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/H2;

    .line 24
    iget-object v4, v3, Lcom/android/tools/r8/graph/H2;->x:Lcom/android/tools/r8/kotlin/p;

    .line 25
    invoke-interface {v4}, Lcom/android/tools/r8/kotlin/p;->n()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 26
    iget-object v4, p0, Lcom/android/tools/r8/naming/N;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 27
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/M2;->U0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 28
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/naming/M;

    .line 29
    sget-boolean v5, Lcom/android/tools/r8/naming/N;->b:Z

    if-nez v5, :cond_5

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 30
    :cond_5
    :goto_2
    invoke-virtual {v4, v3}, Lcom/android/tools/r8/naming/M;->a(Lcom/android/tools/r8/graph/H2;)V

    goto :goto_1

    .line 31
    :cond_6
    sget v1, Lcom/android/tools/r8/internal/hC;->c:I

    .line 32
    new-instance v1, Lcom/android/tools/r8/internal/eC;

    .line 33
    invoke-direct {v1}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 34
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v2, Lcom/android/tools/r8/naming/m2;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/naming/m2;-><init>(Lcom/android/tools/r8/internal/eC;)V

    invoke-interface {v0, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 35
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/String;)Lcom/android/tools/r8/naming/M;
    .locals 2

    .line 36
    new-instance v0, Lcom/android/tools/r8/naming/M;

    iget-object v1, p0, Lcom/android/tools/r8/naming/N;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/naming/M;-><init>(Ljava/lang/String;Lcom/android/tools/r8/graph/y;)V

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/String;)Lcom/android/tools/r8/naming/M;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/naming/M;

    iget-object v1, p0, Lcom/android/tools/r8/naming/N;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/naming/M;-><init>(Ljava/lang/String;Lcom/android/tools/r8/graph/y;)V

    return-object v0
.end method
