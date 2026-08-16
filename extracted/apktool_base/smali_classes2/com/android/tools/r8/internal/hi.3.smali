.class public interface abstract Lcom/android/tools/r8/internal/hi;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Ljava/util/function/BiConsumer;Ljava/lang/Object;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 14
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    sget-object p0, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p0
.end method

.method public static synthetic a(Ljava/util/function/BiFunction;Ljava/lang/Object;Lcom/android/tools/r8/graph/M2;Ljava/lang/Object;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 6
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/Zs0;

    return-object p0
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Ljava/lang/Object;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 11
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 12
    sget-object p0, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p0
.end method

.method public static synthetic a(Ljava/util/function/Function;Ljava/lang/Object;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 4
    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/Zs0;

    return-object p0
.end method

.method public static synthetic a(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 5
    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/Zs0;

    return-object p0
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Ljava/lang/Object;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 10
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/function/BiFunction;Ljava/lang/Object;Lcom/android/tools/r8/graph/M2;Ljava/lang/Object;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 9
    invoke-interface {p0, p1, p3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/Zs0;

    return-object p0
.end method

.method public static synthetic b(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 4
    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/Zs0;

    return-object p0
.end method

.method public static synthetic c(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 4
    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/Zs0;

    return-object p0
.end method

.method public static synthetic d(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 4
    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/Zs0;

    return-object p0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;Lcom/android/tools/r8/internal/gt0;Ljava/lang/Object;)Lcom/android/tools/r8/internal/Zs0;
.end method

.method public abstract a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Zs0;
.end method

.method public a(Ljava/lang/Object;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Zs0;
    .locals 2

    .line 8
    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/internal/hi;->c(Ljava/lang/Object;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/od1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/tools/r8/internal/od1;-><init>(Lcom/android/tools/r8/internal/hi;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Zs0;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Ljava/lang/Object;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/D1;)Lcom/android/tools/r8/internal/Zs0;
.end method

.method public synthetic a(Ljava/lang/Object;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/Ys0;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 7
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Ys0;->f()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p0, p1, p3, p2}, Lcom/android/tools/r8/internal/hi;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/Object;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 3
    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/internal/hi;->b(Ljava/lang/Object;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method

.method public abstract a()Ljava/lang/Object;
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/gi;->a:Z

    if-nez v0, :cond_1

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/hi;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/hd1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/hd1;-><init>(Lcom/android/tools/r8/internal/hi;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/android/tools/r8/internal/at0;->a(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V
    .locals 1

    .line 13
    new-instance v0, Lcom/android/tools/r8/internal/ld1;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/ld1;-><init>(Ljava/util/function/BiConsumer;)V

    invoke-interface {p0, p1, v0}, Lcom/android/tools/r8/internal/hi;->b(Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public abstract b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Zs0;
.end method

.method public synthetic b(Ljava/lang/Object;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/Ys0;)Lcom/android/tools/r8/internal/Zs0;
    .locals 1

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/cd1;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/cd1;-><init>(Ljava/util/function/BiFunction;)V

    .line 7
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Ys0;->f()Ljava/lang/Object;

    move-result-object p2

    .line 8
    invoke-interface {p0, p1, v0, p2}, Lcom/android/tools/r8/internal/hi;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/gt0;Ljava/lang/Object;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/md1;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/md1;-><init>(Ljava/util/function/Function;)V

    invoke-interface {p0, p1, v0}, Lcom/android/tools/r8/internal/hi;->a(Ljava/lang/Object;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;Ljava/util/function/BiFunction;)V
    .locals 1

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/dd1;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/dd1;-><init>(Ljava/util/function/BiFunction;)V

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, p2}, Lcom/android/tools/r8/internal/hi;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/gt0;Ljava/lang/Object;)Lcom/android/tools/r8/internal/Zs0;

    return-void
.end method

.method public b(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 1

    .line 10
    new-instance v0, Lcom/android/tools/r8/internal/rd1;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/rd1;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, p2, v0}, Lcom/android/tools/r8/internal/hi;->h(Ljava/lang/Object;Ljava/util/function/Function;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/ad1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/ad1;-><init>(Lcom/android/tools/r8/internal/hi;Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 2
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/at0;->a(ILjava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public abstract c(Ljava/lang/Object;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Zs0;
.end method

.method public synthetic c(Ljava/lang/Object;Ljava/util/function/Function;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/nd1;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/nd1;-><init>(Ljava/util/function/Function;)V

    invoke-interface {p0, p1, v0}, Lcom/android/tools/r8/internal/hi;->b(Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public c(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 1

    .line 5
    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/internal/hi;->b(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/kd1;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/kd1;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, p2, v0}, Lcom/android/tools/r8/internal/hi;->a(Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/pd1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/pd1;-><init>(Lcom/android/tools/r8/internal/hi;Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 3
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/at0;->a(ILjava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/Object;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Zs0;
    .locals 2

    const/4 v0, 0x0

    .line 5
    invoke-interface {p0, p1, v0, p2}, Lcom/android/tools/r8/internal/hi;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/fd1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/tools/r8/internal/fd1;-><init>(Lcom/android/tools/r8/internal/hi;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Zs0;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/Object;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/ed1;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/ed1;-><init>(Ljava/util/function/Function;)V

    invoke-interface {p0, p1, v0}, Lcom/android/tools/r8/internal/hi;->d(Ljava/lang/Object;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/gi;->a:Z

    if-nez v0, :cond_1

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/hi;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/bd1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/bd1;-><init>(Lcom/android/tools/r8/internal/hi;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/android/tools/r8/internal/at0;->a(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic e(Ljava/lang/Object;Ljava/util/function/Function;)V
    .locals 0

    .line 3
    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/internal/hi;->d(Ljava/lang/Object;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;

    return-void
.end method

.method public e(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/qd1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/qd1;-><init>(Lcom/android/tools/r8/internal/hi;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/at0;->a(ILjava/util/function/Consumer;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public f(Ljava/lang/Object;Ljava/util/function/Function;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/id1;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/id1;-><init>(Ljava/util/function/Function;)V

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2, v0}, Lcom/android/tools/r8/internal/hi;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Zs0;

    return-void
.end method

.method public f(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/gd1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/gd1;-><init>(Lcom/android/tools/r8/internal/hi;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/at0;->a(ILjava/util/function/Consumer;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public synthetic g(Ljava/lang/Object;Ljava/util/function/Function;)V
    .locals 0

    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/internal/hi;->f(Ljava/lang/Object;Ljava/util/function/Function;)V

    return-void
.end method

.method public h(Ljava/lang/Object;Ljava/util/function/Function;)V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/jd1;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/jd1;-><init>(Ljava/util/function/Function;)V

    invoke-interface {p0, p1, v0}, Lcom/android/tools/r8/internal/hi;->c(Ljava/lang/Object;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Zs0;

    return-void
.end method

.method public synthetic i(Ljava/lang/Object;Ljava/util/function/Function;)V
    .locals 0

    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/internal/hi;->b(Ljava/lang/Object;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;

    return-void
.end method

.method public synthetic j(Ljava/lang/Object;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/internal/hi;->d(Ljava/lang/Object;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method
