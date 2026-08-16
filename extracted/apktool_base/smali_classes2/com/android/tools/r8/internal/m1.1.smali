.class public interface abstract Lcom/android/tools/r8/internal/m1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/o1;Lcom/android/tools/r8/internal/l1;)V
    .locals 1

    .line 2
    invoke-interface {p1}, Lcom/android/tools/r8/internal/o1;->getReference()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/x0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/tools/r8/internal/l1;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {p2, p1, p0}, Lcom/android/tools/r8/internal/l1;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/q1;Lcom/android/tools/r8/internal/l1;)V
    .locals 2

    .line 6
    invoke-interface {p1}, Lcom/android/tools/r8/internal/q1;->getReference()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/x0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/android/tools/r8/internal/l1;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-interface {p2, v0, p0}, Lcom/android/tools/r8/internal/l1;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)V

    .line 10
    :cond_0
    invoke-interface {p2, p1}, Lcom/android/tools/r8/internal/l1;->a(Lcom/android/tools/r8/internal/q1;)Lcom/android/tools/r8/internal/l1;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/l1;Lcom/android/tools/r8/internal/o1;)V
    .locals 0

    .line 14
    invoke-interface {p0, p2, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/l1;Lcom/android/tools/r8/internal/q1;)V
    .locals 0

    .line 15
    invoke-interface {p0, p2, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/android/tools/r8/internal/l1;
.end method

.method public a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/m1;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/zj1;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/zj1;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v1, Lcom/android/tools/r8/internal/Aj1;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/Aj1;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-interface {p0, v0, v1}, Lcom/android/tools/r8/internal/m1;->a(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Lcom/android/tools/r8/internal/m1;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Lcom/android/tools/r8/internal/m1;
    .locals 2

    .line 11
    invoke-interface {p0}, Lcom/android/tools/r8/internal/m1;->a()Lcom/android/tools/r8/internal/l1;

    move-result-object v0

    .line 12
    new-instance v1, Lcom/android/tools/r8/internal/xj1;

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/xj1;-><init>(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/l1;)V

    new-instance p1, Lcom/android/tools/r8/internal/yj1;

    invoke-direct {p1, p2, v0}, Lcom/android/tools/r8/internal/yj1;-><init>(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/l1;)V

    invoke-interface {p0, v1, p1}, Lcom/android/tools/r8/internal/m1;->a(Lcom/android/tools/r8/internal/Wr0;Lcom/android/tools/r8/internal/Wr0;)V

    .line 13
    invoke-interface {v0}, Lcom/android/tools/r8/internal/l1;->build()Lcom/android/tools/r8/internal/m1;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Lcom/android/tools/r8/internal/Wr0;Lcom/android/tools/r8/internal/Wr0;)V
.end method

.method public abstract a(Lcom/android/tools/r8/graph/A2;)Z
.end method

.method public abstract a(Lcom/android/tools/r8/graph/M2;)Z
.end method

.method public abstract b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/q1;
.end method
