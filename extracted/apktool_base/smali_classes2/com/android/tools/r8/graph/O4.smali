.class public abstract Lcom/android/tools/r8/graph/O4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Predicate;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 2
    invoke-interface {p0, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 4
    :cond_0
    sget-object p0, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p0
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/graph/O4;
.end method

.method public abstract a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;
.end method

.method public abstract a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/graph/j1;
.end method

.method public abstract a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/j1;
.end method

.method public abstract a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/j1;
.end method

.method public abstract a()V
.end method

.method public abstract a(Lcom/android/tools/r8/graph/j1;)V
.end method

.method public abstract a(Ljava/util/Collection;)V
.end method

.method public abstract a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Jy;)V
.end method

.method public abstract a(Ljava/util/Set;)V
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 1

    .line 5
    new-instance v0, Lcom/android/tools/r8/graph/aa;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/aa;-><init>(Lcom/android/tools/r8/graph/O4;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/graph/O4;->a(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/graph/Z9;

    invoke-direct {v0, p2, p1}, Lcom/android/tools/r8/graph/Z9;-><init>(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/O4;->b(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;

    return-void
.end method

.method public abstract a(Ljava/util/function/Function;)V
.end method

.method public abstract a([Lcom/android/tools/r8/graph/j1;)V
.end method

.method public abstract b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;
.end method

.method public abstract b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/graph/j1;
.end method

.method public abstract b(Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/j1;
.end method

.method public abstract b(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;
.end method

.method public abstract b()V
.end method

.method public abstract b(Lcom/android/tools/r8/graph/j1;)V
.end method

.method public abstract b(Lcom/android/tools/r8/internal/Jy;)V
.end method

.method public final b(Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/graph/Y9;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/Y9;-><init>(Lcom/android/tools/r8/graph/O4;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/graph/O4;->a(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public abstract b([Lcom/android/tools/r8/graph/j1;)V
.end method

.method public abstract c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;
.end method

.method public abstract c()Ljava/lang/Iterable;
.end method

.method public abstract c(Lcom/android/tools/r8/graph/j1;)V
.end method

.method public abstract c(Lcom/android/tools/r8/internal/Jy;)V
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract d(Lcom/android/tools/r8/internal/Jy;)V
.end method

.method public final d(Lcom/android/tools/r8/graph/j1;)Z
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L4;->D()Z

    move-result p1

    return p1
.end method

.method public abstract e()Ljava/lang/Iterable;
.end method

.method public abstract e(Lcom/android/tools/r8/internal/Jy;)V
.end method

.method public final e(Lcom/android/tools/r8/graph/j1;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->J0()Z

    move-result p1

    return p1
.end method

.method public abstract f()I
.end method

.method public abstract g()I
.end method

.method public abstract h()I
.end method

.method public abstract i()V
.end method

.method public abstract j()Ljava/lang/Iterable;
.end method
