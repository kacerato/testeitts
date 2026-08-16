.class public abstract Lcom/android/tools/r8/internal/at0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lcom/android/tools/r8/internal/IH;I)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/IH;->d()I

    move-result p0

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/android/tools/r8/internal/Zs0;->a(Z)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Zs0;
    .locals 1

    .line 13
    new-instance v0, Lcom/android/tools/r8/internal/Ys0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Ys0;-><init>(Ljava/lang/Object;)V

    .line 14
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 15
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Zs0;->b()Lcom/android/tools/r8/internal/Ys0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ys0;->f()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/tools/r8/internal/Zs0;

    .line 16
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    :cond_1
    return-object v0
.end method

.method public static a(Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/g51;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/g51;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/Zs0;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Zs0;->a()Lcom/android/tools/r8/internal/Ws0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ws0;->e()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(ILjava/util/function/Consumer;)Z
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/IH;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/IH;-><init>()V

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/e51;

    invoke-direct {v1, v0, p0}, Lcom/android/tools/r8/internal/e51;-><init>(Lcom/android/tools/r8/internal/IH;I)V

    .line 4
    invoke-static {v1}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    .line 5
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/IH;->a()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/util/function/Consumer;)Z
    .locals 3

    .line 8
    new-instance v0, Lcom/android/tools/r8/internal/IH;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/IH;-><init>()V

    .line 9
    new-instance v1, Lcom/android/tools/r8/internal/f51;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/f51;-><init>(Lcom/android/tools/r8/internal/IH;I)V

    .line 10
    invoke-static {v1}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    .line 11
    invoke-interface {p0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/IH;->a()I

    move-result p0

    if-le p0, v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/IH;I)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/IH;->d()I

    move-result p0

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/android/tools/r8/internal/Zs0;->a(Z)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p0

    return-object p0
.end method
