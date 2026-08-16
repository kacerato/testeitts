.class public final Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Ljava/util/IdentityHashMap;

.field public b:Ljava/util/AbstractCollection;

.field public c:Ljava/util/AbstractCollection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->a:Ljava/util/IdentityHashMap;

    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    sget-object v0, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    iput-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->b:Ljava/util/AbstractCollection;

    iput-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->c:Ljava/util/AbstractCollection;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;
    .locals 0

    .line 1
    new-instance p1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;-><init>(Lcom/android/tools/r8/graph/E0;)V

    return-object p1
.end method

.method public static a(Lcom/android/tools/r8/internal/ft0;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;)V
    .locals 2

    .line 2
    iget-object v0, p1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->a:Lcom/android/tools/r8/graph/E0;

    .line 3
    iget-object v1, p1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object p1, p1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p0, v0, v1, p1}, Lcom/android/tools/r8/internal/ft0;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/util/Map;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;)V
    .locals 8

    .line 4
    new-instance v7, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$d;

    .line 5
    iget-object v1, p2, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->a:Lcom/android/tools/r8/graph/E0;

    .line 6
    iget-object v2, p2, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->b:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;

    iget-object v0, p2, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->c:Ljava/util/IdentityHashMap;

    .line 7
    invoke-static {v0}, Lcom/android/tools/r8/internal/UC;->a(Ljava/util/IdentityHashMap;)Lcom/android/tools/r8/internal/UC;

    move-result-object v3

    iget-object v0, p2, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->d:Ljava/util/IdentityHashMap;

    .line 8
    invoke-static {v0}, Lcom/android/tools/r8/internal/UC;->a(Ljava/util/IdentityHashMap;)Lcom/android/tools/r8/internal/UC;

    move-result-object v4

    iget-object v5, p2, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->e:Ljava/util/HashMap;

    iget-object v6, p2, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->f:Ljava/util/HashMap;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$d;-><init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;Lcom/android/tools/r8/internal/UC;Lcom/android/tools/r8/internal/UC;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 9
    invoke-interface {p0, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;)V
    .locals 0

    .line 16
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->a(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;
    .locals 0

    .line 1
    new-instance p1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;-><init>(Lcom/android/tools/r8/graph/E0;)V

    return-object p1
.end method

.method public static synthetic b(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;)V
    .locals 0

    .line 5
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->b(Ljava/util/function/BiConsumer;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m;
    .locals 4

    .line 40
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 41
    iget-object v1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->a:Ljava/util/IdentityHashMap;

    new-instance v2, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/x;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/x;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 42
    new-instance v1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m;

    invoke-static {v0}, Lcom/android/tools/r8/internal/UC;->a(Ljava/util/IdentityHashMap;)Lcom/android/tools/r8/internal/UC;

    move-result-object v0

    iget-object v2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->b:Ljava/util/AbstractCollection;

    iget-object v3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->c:Ljava/util/AbstractCollection;

    invoke-direct {v1, v0, v2, v3}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m;-><init>(Lcom/android/tools/r8/internal/UC;Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;

    .line 38
    sget-boolean v1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->d:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 39
    :cond_1
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)V
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->a:Ljava/util/IdentityHashMap;

    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    new-instance v2, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/B;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/B;-><init>(Lcom/android/tools/r8/graph/E0;)V

    .line 25
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;

    .line 26
    sget-boolean v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->g:Z

    if-nez v0, :cond_1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, p1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->a:Lcom/android/tools/r8/graph/E0;

    iget-object v1, v1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 29
    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->d:Ljava/util/IdentityHashMap;

    .line 30
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p1, v0, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)V
    .locals 3

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->a:Ljava/util/IdentityHashMap;

    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    new-instance v2, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/z;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/z;-><init>(Lcom/android/tools/r8/graph/E0;)V

    .line 18
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;

    .line 19
    sget-boolean v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->g:Z

    if-nez v0, :cond_1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, p1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->a:Lcom/android/tools/r8/graph/E0;

    iget-object v1, v1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 22
    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->c:Ljava/util/IdentityHashMap;

    .line 23
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v0, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;

    .line 32
    sget-boolean v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->d:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 33
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    sget-boolean v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->g:Z

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 35
    iget-object v0, p1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->b:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;

    if-eqz v0, :cond_5

    if-ne p2, v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 36
    :cond_5
    :goto_2
    iput-object p2, p1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->b:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/ft0;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->a:Ljava/util/IdentityHashMap;

    .line 11
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/A;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/A;-><init>(Lcom/android/tools/r8/internal/ft0;)V

    .line 12
    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Ljava/util/function/BiConsumer;)V
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->a:Ljava/util/IdentityHashMap;

    .line 14
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/C;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/C;-><init>(Ljava/util/function/BiConsumer;)V

    .line 15
    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final b(Ljava/util/function/BiConsumer;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/k;->a:Ljava/util/IdentityHashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/y;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/y;-><init>(Ljava/util/function/BiConsumer;)V

    .line 4
    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
