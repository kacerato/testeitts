.class public final Lcom/android/tools/r8/internal/pU;
.super Lcom/android/tools/r8/internal/oU;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Hz;Ljava/util/function/IntFunction;Ljava/util/function/IntFunction;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/oU;-><init>(Lcom/android/tools/r8/internal/Hz;Ljava/util/function/IntFunction;Ljava/util/function/IntFunction;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/pU;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/pU;

    new-instance v1, Lcom/android/tools/r8/internal/Bp1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Bp1;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/Cp1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Cp1;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/android/tools/r8/internal/pU;-><init>(Lcom/android/tools/r8/internal/Hz;Ljava/util/function/IntFunction;Ljava/util/function/IntFunction;)V

    return-object v0
.end method

.method public static synthetic a(Ljava/util/function/Function;Lcom/android/tools/r8/graph/H5;)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/h80;Ljava/util/function/Function;Lcom/android/tools/r8/graph/A2;Ljava/lang/Object;)V
    .locals 1

    .line 23
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 24
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 25
    invoke-interface {p2, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    sget-object p3, Lcom/android/tools/r8/internal/g80;->a:Lcom/android/tools/r8/internal/g80;

    .line 28
    new-instance p4, Lcom/android/tools/r8/internal/fv;

    invoke-direct {p4, p3, p0}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 29
    iget-object p0, p1, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-interface {p0, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 30
    :cond_1
    sget-boolean p0, Lcom/android/tools/r8/internal/pU;->f:Z

    if-eqz p0, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/h80;
    .locals 3

    .line 17
    sget-boolean v0, Lcom/android/tools/r8/internal/pU;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 18
    sget-boolean v1, Lcom/android/tools/r8/internal/oU;->e:Z

    if-nez v1, :cond_1

    .line 19
    iget-object v1, p0, Lcom/android/tools/r8/internal/oU;->c:Lcom/android/tools/r8/internal/Hz;

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 21
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/oU;->a:Ljava/util/function/IntFunction;

    iget-object v1, p0, Lcom/android/tools/r8/internal/oU;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/h80;

    .line 22
    iget-object v1, p0, Lcom/android/tools/r8/internal/oU;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    new-instance v2, Lcom/android/tools/r8/internal/Dp1;

    invoke-direct {v2, p1, v0, p2}, Lcom/android/tools/r8/internal/Dp1;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/h80;Ljava/util/function/Function;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public final a(Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/pU;
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/oU;->c:Lcom/android/tools/r8/internal/Hz;

    if-ne p2, v0, :cond_0

    return-object p0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/oU;->b:Ljava/util/function/IntFunction;

    iget-object v1, p0, Lcom/android/tools/r8/internal/oU;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/internal/oU;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    new-instance v2, Lcom/android/tools/r8/internal/Fp1;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/android/tools/r8/internal/Fp1;-><init>(Lcom/android/tools/r8/internal/pU;Lcom/android/tools/r8/internal/Hz;Ljava/util/function/BiFunction;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 11
    iput-object v0, p0, Lcom/android/tools/r8/internal/oU;->d:Ljava/lang/Object;

    .line 12
    iput-object p2, p0, Lcom/android/tools/r8/internal/oU;->c:Lcom/android/tools/r8/internal/Hz;

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Ljava/util/function/Function;Lcom/android/tools/r8/internal/Hz;)Ljava/lang/Object;
    .locals 2

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/pU;->f:Z

    if-nez v0, :cond_1

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/internal/oU;->e:Z

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/oU;->c:Lcom/android/tools/r8/internal/Hz;

    if-ne v0, p3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/android/tools/r8/internal/oU;->d:Ljava/lang/Object;

    check-cast p3, Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    new-instance v1, Lcom/android/tools/r8/internal/Ep1;

    invoke-direct {v1, p2, p1}, Lcom/android/tools/r8/internal/Ep1;-><init>(Ljava/util/function/Function;Lcom/android/tools/r8/graph/H5;)V

    invoke-static {v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object p1

    invoke-interface {p3, v0, p1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/Hz;Ljava/util/function/BiFunction;Ljava/util/Map;Lcom/android/tools/r8/graph/A2;Ljava/lang/Object;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/oU;->c:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {p1, v0, p4}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 14
    iget-object p4, p0, Lcom/android/tools/r8/internal/oU;->c:Lcom/android/tools/r8/internal/Hz;

    invoke-interface {p2, p5, p4}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 15
    sget-boolean p4, Lcom/android/tools/r8/internal/pU;->f:Z

    if-nez p4, :cond_1

    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 16
    :cond_1
    :goto_0
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
