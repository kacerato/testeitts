.class public final Lcom/android/tools/r8/shaking/s2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/shaking/s2;

.field public static final synthetic c:Z = true


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/shaking/s2;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/shaking/s2;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/android/tools/r8/shaking/s2;->b:Lcom/android/tools/r8/shaking/s2;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/s2;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/D5;
    .locals 1

    .line 34
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/D5;
    .locals 0

    .line 31
    invoke-interface {p0, p1}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D5;
    .locals 1

    .line 32
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/H2;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/F5;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/J2;
    .locals 1

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 45
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    .line 46
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 47
    sget-boolean v0, Lcom/android/tools/r8/shaking/s2;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 48
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->L0()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    :cond_4
    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/H2;Ljava/util/function/BiConsumer;Lcom/android/tools/r8/shaking/s1;Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    .line 7
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/s1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/H2;Ljava/util/function/BiConsumer;Lcom/android/tools/r8/shaking/s1;Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/graph/H2;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/F5;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/s1;->b()Lcom/android/tools/r8/shaking/p1;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/d1;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/shaking/s1;)V
    .locals 1

    .line 2
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/J2;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    new-instance v0, Lcom/android/tools/r8/shaking/ne;

    invoke-direct {v0, p1, p0, p5}, Lcom/android/tools/r8/shaking/ne;-><init>(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/s1;)V

    new-instance p1, Lcom/android/tools/r8/shaking/oe;

    invoke-direct {p1, p0, p2, p5}, Lcom/android/tools/r8/shaking/oe;-><init>(Lcom/android/tools/r8/graph/H2;Ljava/util/function/BiConsumer;Lcom/android/tools/r8/shaking/s1;)V

    new-instance p2, Lcom/android/tools/r8/shaking/pe;

    invoke-direct {p2, p0, p3, p5}, Lcom/android/tools/r8/shaking/pe;-><init>(Lcom/android/tools/r8/graph/H2;Ljava/util/function/BiConsumer;Lcom/android/tools/r8/shaking/s1;)V

    invoke-virtual {p4, v0, p1, p2}, Lcom/android/tools/r8/graph/J2;->a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/shaking/s2;Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/shaking/s1;)V
    .locals 3

    .line 37
    new-instance v0, Lcom/android/tools/r8/shaking/ie;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/ie;-><init>(Lcom/android/tools/r8/internal/Hz;)V

    .line 38
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/shaking/je;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/je;-><init>(Lcom/android/tools/r8/internal/Hz;)V

    .line 39
    new-instance v2, Lcom/android/tools/r8/shaking/ke;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/shaking/ke;-><init>(Lcom/android/tools/r8/internal/Hz;)V

    .line 40
    invoke-virtual {p2, v0, v1, v2}, Lcom/android/tools/r8/graph/J2;->a(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/J2;

    if-eqz p0, :cond_0

    .line 41
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p0

    .line 42
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/shaking/s1;->a(Lcom/android/tools/r8/shaking/s1;)Lcom/android/tools/r8/shaking/s1;

    :cond_0
    return-void
.end method

.method public static synthetic a(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/s1;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 4
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/s1;->a()Lcom/android/tools/r8/shaking/k1;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/function/BiPredicate;Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/shaking/s1;)V
    .locals 0

    .line 10
    invoke-interface {p0, p2, p3}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 11
    invoke-interface {p1, p2, p3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/shaking/s1;)Z
    .locals 2

    .line 24
    sget-boolean v0, Lcom/android/tools/r8/shaking/s2;->c:Z

    if-nez v0, :cond_1

    .line 25
    iget-object p3, p3, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    .line 26
    invoke-virtual {p3}, Lcom/android/tools/r8/shaking/r1;->c()Lcom/android/tools/r8/shaking/t1;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/shaking/r1;->b(Lcom/android/tools/r8/shaking/t1;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 28
    :cond_1
    :goto_0
    new-instance p3, Lcom/android/tools/r8/shaking/te;

    invoke-direct {p3, p0}, Lcom/android/tools/r8/shaking/te;-><init>(Lcom/android/tools/r8/graph/d1;)V

    new-instance v0, Lcom/android/tools/r8/shaking/ge;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/ge;-><init>(Lcom/android/tools/r8/graph/d1;)V

    new-instance v1, Lcom/android/tools/r8/shaking/he;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/he;-><init>(Lcom/android/tools/r8/graph/d1;)V

    .line 29
    invoke-virtual {p2, p3, v0, v1}, Lcom/android/tools/r8/graph/J2;->a(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/D5;

    if-eqz p0, :cond_3

    .line 30
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/o0;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/shaking/t1;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/shaking/s2;->a:Ljava/util/Map;

    new-instance v1, Lcom/android/tools/r8/shaking/qe;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/shaking/qe;-><init>(Lcom/android/tools/r8/graph/J2;)V

    .line 14
    invoke-static {v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    .line 15
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/s1;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/shaking/H1;)Lcom/android/tools/r8/shaking/s1;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/shaking/s2;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/s1;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/shaking/s2;
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/android/tools/r8/shaking/s2;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 50
    new-instance v1, Lcom/android/tools/r8/shaking/s2;

    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-direct {v1, v2}, Lcom/android/tools/r8/shaking/s2;-><init>(Ljava/util/Map;)V

    .line 51
    new-instance v0, Lcom/android/tools/r8/shaking/se;

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/shaking/se;-><init>(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/shaking/s2;)V

    .line 52
    iget-object p1, p0, Lcom/android/tools/r8/shaking/s2;->a:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/shaking/s1;)V
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    .line 22
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/shaking/s1;->a(Lcom/android/tools/r8/shaking/s1;)Lcom/android/tools/r8/shaking/s1;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/O5;)V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/android/tools/r8/shaking/s2;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/A61;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/A61;-><init>(Lcom/android/tools/r8/graph/O5;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/shaking/N;)V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/shaking/s2;->a:Ljava/util/Map;

    new-instance v1, Lcom/android/tools/r8/shaking/me;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/shaking/me;-><init>(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/shaking/N;)V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/Map;Lcom/android/tools/r8/internal/Vr0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/d1;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/s2;->a:Ljava/util/Map;

    new-instance v1, Lcom/android/tools/r8/shaking/fe;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/tools/r8/shaking/fe;-><init>(Lcom/android/tools/r8/graph/d1;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/s2;)V
    .locals 1

    .line 18
    new-instance v0, Lcom/android/tools/r8/shaking/le;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/le;-><init>(Lcom/android/tools/r8/shaking/s2;)V

    .line 19
    iget-object p1, p1, Lcom/android/tools/r8/shaking/s2;->a:Ljava/util/Map;

    .line 20
    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Ljava/util/function/BiPredicate;Ljava/util/function/BiConsumer;)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/shaking/s2;->a:Ljava/util/Map;

    new-instance v1, Lcom/android/tools/r8/shaking/re;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/shaking/re;-><init>(Ljava/util/function/BiPredicate;Ljava/util/function/BiConsumer;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/J2;Ljava/util/function/Predicate;)Z
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/shaking/s2;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/s1;

    if-eqz p1, :cond_0

    .line 17
    invoke-interface {p2, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
