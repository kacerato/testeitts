.class public final Lcom/android/tools/r8/internal/ym0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/graph/H5;


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/j80;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/H5;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/H5;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/ym0;->c:Lcom/android/tools/r8/graph/H5;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/j80;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ym0;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/ym0;->b:Lcom/android/tools/r8/internal/j80;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H5;
    .locals 0

    if-eqz p2, :cond_0

    .line 34
    sget-object p0, Lcom/android/tools/r8/internal/ym0;->c:Lcom/android/tools/r8/graph/H5;

    :cond_0
    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/graph/H5;)V
    .locals 3

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    .line 15
    sget-object v1, Lcom/android/tools/r8/internal/g80;->a:Lcom/android/tools/r8/internal/g80;

    .line 16
    new-instance v2, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v2, v1, p2}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 17
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    iget-object p0, p0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    .line 19
    new-instance v0, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v0, v1, p2}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 20
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 21
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 22
    :cond_1
    :goto_0
    iget-object p0, p1, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    .line 23
    new-instance p1, Lcom/android/tools/r8/internal/fv;

    invoke-direct {p1, v1, p2}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 24
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/j1;)Z
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/i0;->A0()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/tools/r8/internal/ym0;->c:Lcom/android/tools/r8/graph/H5;

    .line 9
    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/U30;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/H0;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    sget-object v0, Lcom/android/tools/r8/internal/g80;->a:Lcom/android/tools/r8/internal/g80;

    .line 13
    new-instance v1, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 14
    iget-object p0, p0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-interface {p0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static c(Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/dA0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/dA0;-><init>()V

    invoke-static {v0}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/tools/r8/internal/g80;->a:Lcom/android/tools/r8/internal/g80;

    new-instance v2, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v2, v1, p2}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/tools/r8/internal/Pn;->a(Ljava/util/function/Function;Lcom/android/tools/r8/internal/fv;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/m80;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    return-void
.end method

.method public static d(Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/jB1;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/jB1;-><init>(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {p0, p2, v0}, Lcom/android/tools/r8/internal/Pn;->a(Lcom/android/tools/r8/graph/G0;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/h80;Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/internal/h80;
    .locals 3

    .line 35
    invoke-static {}, Lcom/android/tools/r8/internal/h80;->k()Lcom/android/tools/r8/internal/h80;

    move-result-object v0

    .line 36
    new-instance v1, Lcom/android/tools/r8/internal/kB1;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/kB1;-><init>(Lcom/android/tools/r8/internal/h80;)V

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/Pn;->forEach(Ljava/util/function/BiConsumer;)V

    .line 37
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Pn;->j()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/Xt1;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/Xt1;-><init>(Ljava/util/stream/Stream;)V

    new-instance v1, Lcom/android/tools/r8/internal/lB1;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/tools/r8/internal/lB1;-><init>(Lcom/android/tools/r8/internal/ym0;Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/internal/h80;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/ym0;->a:Lcom/android/tools/r8/graph/y;

    .line 38
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v0

    .line 39
    invoke-static {v2, v1, v0, p2}, Lcom/android/tools/r8/internal/Kr0;->a(Lcom/android/tools/r8/internal/Yx;Lcom/android/tools/r8/internal/Wr0;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    return-object p1
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/internal/h80;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/ym0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/ym0;->b(Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/internal/h80;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/android/tools/r8/internal/rB1;

    invoke-direct {v2, p0, v0}, Lcom/android/tools/r8/internal/rB1;-><init>(Lcom/android/tools/r8/internal/ym0;Lcom/android/tools/r8/internal/nJ;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Pn;->a(Ljava/util/function/BiPredicate;)Z

    .line 4
    invoke-virtual {p0, v1, p1}, Lcom/android/tools/r8/internal/ym0;->a(Lcom/android/tools/r8/internal/h80;Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/internal/h80;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/h80;)V
    .locals 2

    .line 25
    new-instance v0, Lcom/android/tools/r8/internal/oB1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/oB1;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/pB1;

    invoke-direct {v1, p0, p2}, Lcom/android/tools/r8/internal/pB1;-><init>(Lcom/android/tools/r8/internal/ym0;Lcom/android/tools/r8/internal/h80;)V

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/graph/H2;->h(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    .line 13
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/ym0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/h80;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/ym0;->b(Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 28
    sget-object v0, Lcom/android/tools/r8/internal/ym0;->c:Lcom/android/tools/r8/graph/H5;

    if-ne p3, v0, :cond_0

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    sget-object p3, Lcom/android/tools/r8/internal/g80;->a:Lcom/android/tools/r8/internal/g80;

    .line 31
    new-instance v1, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v1, p3, p2}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 32
    iget-object p1, p1, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 33
    :cond_0
    invoke-static {p1, p3, p2}, Lcom/android/tools/r8/internal/ym0;->d(Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)Z
    .locals 2

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->k1()Lcom/android/tools/r8/internal/t40;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/f7;->c()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ym0;->a:Lcom/android/tools/r8/graph/y;

    .line 6
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/TW;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/t1;->c(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/t1;->e(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    iget-boolean p1, v0, Lcom/android/tools/r8/shaking/I1;->x:Z

    if-eqz p1, :cond_2

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/ym0;->a:Lcom/android/tools/r8/graph/y;

    .line 12
    invoke-static {p1, p3, p2}, Lcom/android/tools/r8/internal/G2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/internal/h80;
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/tools/r8/internal/h80;->l()Lcom/android/tools/r8/internal/h80;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/ym0;->a:Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/mB1;

    invoke-direct {v2, p0, v0}, Lcom/android/tools/r8/internal/mB1;-><init>(Lcom/android/tools/r8/internal/ym0;Lcom/android/tools/r8/internal/h80;)V

    iget-object v3, p0, Lcom/android/tools/r8/internal/ym0;->a:Lcom/android/tools/r8/graph/y;

    .line 4
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v3

    .line 5
    invoke-static {v1, v2, v3, p1}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    .line 6
    invoke-static {}, Lcom/android/tools/r8/internal/h80;->l()Lcom/android/tools/r8/internal/h80;

    move-result-object p1

    .line 7
    new-instance v1, Lcom/android/tools/r8/internal/nB1;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/nB1;-><init>(Lcom/android/tools/r8/internal/h80;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Pn;->forEach(Ljava/util/function/BiConsumer;)V

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/graph/H5;)V
    .locals 7

    .line 15
    invoke-static {}, Lcom/android/tools/r8/internal/h80;->k()Lcom/android/tools/r8/internal/h80;

    move-result-object v0

    .line 16
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/i0;->o0()Lcom/android/tools/r8/internal/WS;

    move-result-object v1

    .line 17
    iget-object v1, v1, Lcom/android/tools/r8/internal/WS;->g:[Lcom/android/tools/r8/internal/YS;

    .line 18
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_f

    aget-object v4, v1, v3

    .line 19
    instance-of v5, v4, Lcom/android/tools/r8/graph/D0;

    if-eqz v5, :cond_9

    .line 20
    check-cast v4, Lcom/android/tools/r8/graph/D0;

    .line 21
    iget-object v5, p0, Lcom/android/tools/r8/internal/ym0;->a:Lcom/android/tools/r8/graph/y;

    .line 22
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/j;

    invoke-static {v4, v5, v6, p2}, Lcom/android/tools/r8/internal/kR;->b(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/kR;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 23
    iget-object v4, v5, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    .line 24
    iget-object v5, v4, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    .line 25
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/B2;->d()Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_3

    .line 26
    :cond_0
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    .line 27
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_3

    .line 28
    :cond_1
    iget-object v5, p0, Lcom/android/tools/r8/internal/ym0;->a:Lcom/android/tools/r8/graph/y;

    .line 29
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/shaking/i;

    .line 30
    invoke-virtual {v5, v4}, Lcom/android/tools/r8/graph/j;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v4

    .line 31
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/Z4;->r()Lcom/android/tools/r8/graph/H5;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 32
    invoke-static {v0, p2, v4}, Lcom/android/tools/r8/internal/ym0;->d(Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    goto/16 :goto_3

    .line 33
    :cond_2
    iget-object v5, v4, Lcom/android/tools/r8/graph/D0;->g:Lcom/android/tools/r8/graph/C2;

    .line 34
    iget-object v6, v5, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    .line 35
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/B2;->d()Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    .line 36
    :cond_3
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 37
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    .line 38
    :cond_4
    iget-object v6, p0, Lcom/android/tools/r8/internal/ym0;->a:Lcom/android/tools/r8/graph/y;

    .line 39
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/shaking/i;

    .line 40
    invoke-virtual {v6, v5}, Lcom/android/tools/r8/graph/j;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v5

    .line 41
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/Z4;->r()Lcom/android/tools/r8/graph/H5;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 42
    invoke-static {v0, p2, v5}, Lcom/android/tools/r8/internal/ym0;->d(Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 43
    :cond_5
    :goto_1
    iget-object v4, v4, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    .line 44
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/R2;

    .line 45
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    instance-of v6, v5, Lcom/android/tools/r8/graph/X2;

    if-eqz v6, :cond_6

    .line 47
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/R2;->z0()Lcom/android/tools/r8/graph/X2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/X2;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/C2;

    .line 48
    iget-object v6, v5, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    .line 49
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/B2;->d()Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_2

    .line 50
    :cond_7
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 51
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_2

    .line 52
    :cond_8
    iget-object v6, p0, Lcom/android/tools/r8/internal/ym0;->a:Lcom/android/tools/r8/graph/y;

    .line 53
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/shaking/i;

    .line 54
    invoke-virtual {v6, v5}, Lcom/android/tools/r8/graph/j;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v5

    .line 55
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/Z4;->r()Lcom/android/tools/r8/graph/H5;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 56
    invoke-static {v0, p2, v5}, Lcom/android/tools/r8/internal/ym0;->d(Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    goto :goto_2

    .line 57
    :cond_9
    instance-of v5, v4, Lcom/android/tools/r8/graph/C2;

    if-eqz v5, :cond_c

    .line 58
    check-cast v4, Lcom/android/tools/r8/graph/C2;

    .line 59
    iget-object v5, v4, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    .line 60
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/B2;->d()Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_3

    .line 61
    :cond_a
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    .line 62
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_3

    .line 63
    :cond_b
    iget-object v5, p0, Lcom/android/tools/r8/internal/ym0;->a:Lcom/android/tools/r8/graph/y;

    .line 64
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/shaking/i;

    .line 65
    invoke-virtual {v5, v4}, Lcom/android/tools/r8/graph/j;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v4

    .line 66
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/Z4;->r()Lcom/android/tools/r8/graph/H5;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 67
    invoke-static {v0, p2, v4}, Lcom/android/tools/r8/internal/ym0;->d(Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    goto :goto_3

    .line 68
    :cond_c
    instance-of v5, v4, Lcom/android/tools/r8/graph/A2;

    if-eqz v5, :cond_e

    .line 69
    check-cast v4, Lcom/android/tools/r8/graph/A2;

    .line 70
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_3

    .line 71
    :cond_d
    iget-object v5, p0, Lcom/android/tools/r8/internal/ym0;->a:Lcom/android/tools/r8/graph/y;

    .line 72
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/shaking/i;

    .line 73
    invoke-virtual {v5, v4}, Lcom/android/tools/r8/graph/j;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v4

    .line 74
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/Z4;->r()Lcom/android/tools/r8/graph/H5;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 75
    invoke-static {v0, p2, v4}, Lcom/android/tools/r8/internal/ym0;->d(Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    :cond_e
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 76
    :cond_f
    new-instance p2, Lcom/android/tools/r8/internal/qB1;

    invoke-direct {p2, p0, p1}, Lcom/android/tools/r8/internal/qB1;-><init>(Lcom/android/tools/r8/internal/ym0;Lcom/android/tools/r8/internal/h80;)V

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/Pn;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/graph/H5;)V
    .locals 6

    .line 77
    iget-object p1, p1, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    .line 78
    sget-object v0, Lcom/android/tools/r8/internal/g80;->a:Lcom/android/tools/r8/internal/g80;

    .line 79
    new-instance v1, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v1, v0, p3}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 80
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 81
    check-cast p1, Lcom/android/tools/r8/internal/m80;

    .line 82
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/i0;->o0()Lcom/android/tools/r8/internal/WS;

    move-result-object p3

    .line 83
    invoke-static {}, Lcom/android/tools/r8/internal/h80;->k()Lcom/android/tools/r8/internal/h80;

    move-result-object v0

    .line 84
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/WS;->E0()Lcom/android/tools/r8/internal/eT;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/dT;

    .line 85
    invoke-interface {v2}, Lcom/android/tools/r8/internal/dT;->a()I

    move-result v3

    .line 86
    invoke-static {v3}, Lcom/android/tools/r8/internal/gT;->b(I)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 87
    :cond_1
    invoke-interface {v2}, Lcom/android/tools/r8/internal/dT;->o()I

    move-result v2

    .line 88
    iget-object v4, p3, Lcom/android/tools/r8/internal/WS;->g:[Lcom/android/tools/r8/internal/YS;

    aget-object v2, v4, v2

    .line 89
    check-cast v2, Lcom/android/tools/r8/graph/A2;

    .line 90
    iget-object v4, p0, Lcom/android/tools/r8/internal/ym0;->a:Lcom/android/tools/r8/graph/y;

    .line 91
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/shaking/i;

    .line 92
    invoke-static {v3}, Lcom/android/tools/r8/internal/gT;->a(I)Z

    move-result v3

    .line 93
    invoke-virtual {v4, v2, v3}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object v2

    .line 94
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/Z4;->r()Lcom/android/tools/r8/graph/H5;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 95
    iget-object v3, p1, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 96
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v3

    .line 98
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/L4;->D()Z

    move-result v3

    if-nez v3, :cond_3

    .line 99
    iget-object v3, p0, Lcom/android/tools/r8/internal/ym0;->b:Lcom/android/tools/r8/internal/j80;

    .line 100
    iget-object v3, v3, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 101
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 102
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/tools/r8/internal/Pn;->a(Lcom/android/tools/r8/graph/G0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 103
    sget-object v4, Lcom/android/tools/r8/internal/g80;->a:Lcom/android/tools/r8/internal/g80;

    .line 104
    new-instance v5, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v5, v4, v2}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 105
    iget-object v2, v0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 106
    :cond_4
    new-instance p3, Lcom/android/tools/r8/internal/iB1;

    invoke-direct {p3, v0, p2}, Lcom/android/tools/r8/internal/iB1;-><init>(Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/internal/h80;)V

    invoke-interface {p1, p3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
