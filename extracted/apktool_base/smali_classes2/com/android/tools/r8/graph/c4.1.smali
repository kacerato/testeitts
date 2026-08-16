.class public final Lcom/android/tools/r8/graph/c4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Ljava/util/IdentityHashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/c4;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/graph/c4;->b:Ljava/util/IdentityHashMap;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;
    .locals 0

    .line 23
    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;)Lcom/android/tools/r8/graph/c4;
    .locals 3

    .line 2
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 4
    new-instance v2, Lcom/android/tools/r8/graph/Sc;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/tools/r8/graph/Sc;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/Map;Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/E0;->e(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Lcom/android/tools/r8/graph/c4;

    invoke-direct {p1, p0, v0}, Lcom/android/tools/r8/graph/c4;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/IdentityHashMap;)V

    return-object p1
.end method

.method public static a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/rK;
    .locals 2

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->R0()Lcom/android/tools/r8/graph/O2;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/Vc;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/graph/Vc;-><init>(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/H2;)V

    .line 21
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/sK;

    move-result-object p0

    new-instance p1, Lcom/android/tools/r8/graph/Wc;

    invoke-direct {p1}, Lcom/android/tools/r8/graph/Wc;-><init>()V

    .line 22
    new-instance v0, Lcom/android/tools/r8/internal/rK;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/rK;-><init>(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/y;Ljava/util/Map;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 6
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 7
    new-instance p3, Lcom/android/tools/r8/graph/Uc;

    invoke-direct {p3}, Lcom/android/tools/r8/graph/Uc;-><init>()V

    invoke-static {p3}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object p3

    invoke-interface {p1, p0, p3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;)V
    .locals 0

    .line 9
    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic c(Ljava/util/function/Predicate;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    invoke-interface {p0, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;)Ljava/util/List;
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/graph/c4;->b:Ljava/util/IdentityHashMap;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Ljava/util/function/BiPredicate;Ljava/util/function/BiConsumer;)V
    .locals 1

    .line 10
    new-instance v0, Lcom/android/tools/r8/graph/Qc;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/tools/r8/graph/Qc;-><init>(Lcom/android/tools/r8/graph/c4;Ljava/util/function/BiPredicate;Ljava/util/function/BiConsumer;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/E0;->e(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V
    .locals 1

    .line 14
    new-instance v0, Lcom/android/tools/r8/graph/Nc;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/tools/r8/graph/Nc;-><init>(Lcom/android/tools/r8/graph/c4;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/E0;->e(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic a(Ljava/util/function/BiPredicate;Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/graph/c4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    .line 12
    invoke-interface {p1, p3, v0}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 13
    invoke-interface {p2, p3, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/E0;)V
    .locals 2

    .line 8
    new-instance v0, Lcom/android/tools/r8/graph/Xc;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Xc;-><init>()V

    new-instance v1, Lcom/android/tools/r8/graph/Oc;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/graph/Oc;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/tools/r8/graph/c4;->a(Lcom/android/tools/r8/graph/E0;Ljava/util/function/BiPredicate;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Ljava/util/function/Predicate;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 15
    new-instance v0, Lcom/android/tools/r8/graph/Rc;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/graph/Rc;-><init>(Lcom/android/tools/r8/graph/c4;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/graph/E0;->e(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic a(Ljava/util/function/Predicate;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/graph/c4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p3

    invoke-static {p3}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 17
    invoke-interface {p1, p3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 18
    invoke-interface {p2, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;)Ljava/lang/Iterable;
    .locals 2

    .line 7
    sget-boolean v0, Lcom/android/tools/r8/graph/c4;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/c4;->b:Ljava/util/IdentityHashMap;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 9
    new-instance v0, Lcom/android/tools/r8/graph/Tc;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Tc;-><init>()V

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/vK;->c(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Lcom/android/tools/r8/internal/rK;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/util/function/Predicate;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/graph/c4;->b:Ljava/util/IdentityHashMap;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    .line 5
    new-instance v0, Lcom/android/tools/r8/graph/Pc;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/graph/Pc;-><init>(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 6
    invoke-interface {p3, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic b(Ljava/util/function/Predicate;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/c4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 2
    invoke-interface {p1, p3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p2, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
