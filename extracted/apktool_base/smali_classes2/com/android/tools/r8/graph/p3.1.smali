.class public final Lcom/android/tools/r8/graph/p3;
.super Lcom/android/tools/r8/graph/s3;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public a:[Lcom/android/tools/r8/graph/g1;

.field public b:[Lcom/android/tools/r8/graph/g1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([Lcom/android/tools/r8/graph/g1;[Lcom/android/tools/r8/graph/g1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/s3;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/p3;->a:[Lcom/android/tools/r8/graph/g1;

    iput-object p2, p0, Lcom/android/tools/r8/graph/p3;->b:[Lcom/android/tools/r8/graph/g1;

    return-void
.end method

.method public static a([Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1;
    .locals 5

    const/4 v0, 0x0

    .line 48
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 49
    aget-object v1, p0, v0

    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/l1;

    .line 52
    iget-object v3, p1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    iget-object v4, v2, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/E0;[Lcom/android/tools/r8/graph/g1;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;
    .locals 4

    .line 18
    sget-object v0, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    .line 19
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v0, p1, v2

    .line 20
    invoke-static {p0, v0}, Lcom/android/tools/r8/graph/F0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/F0;

    move-result-object v0

    .line 21
    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Zs0;

    .line 22
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static a([Lcom/android/tools/r8/graph/g1;Ljava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)[Lcom/android/tools/r8/graph/g1;
    .locals 5

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 54
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_6

    .line 55
    aget-object v2, p0, v1

    .line 56
    sget-boolean v3, Lcom/android/tools/r8/graph/p3;->c:Z

    if-nez v3, :cond_1

    invoke-interface {p2, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 57
    :cond_1
    :goto_1
    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/g1;

    if-nez v3, :cond_3

    if-eqz v4, :cond_2

    goto :goto_2

    .line 58
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_2
    if-eq v2, v4, :cond_5

    .line 59
    invoke-interface {p2, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 60
    aput-object v4, p0, v1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    .line 61
    aput-object v2, p0, v1

    .line 62
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    return-object p0

    .line 64
    :cond_7
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 65
    new-instance p1, Lcom/android/tools/r8/graph/kf;

    invoke-direct {p1}, Lcom/android/tools/r8/graph/kf;-><init>()V

    sget-object p2, Lcom/android/tools/r8/graph/g1;->o:[Lcom/android/tools/r8/graph/g1;

    array-length p3, p0

    .line 66
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p3, v0

    .line 67
    invoke-static {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Ljava/util/function/Predicate;[Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/tools/r8/graph/g1;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/android/tools/r8/graph/p3;->b:[Lcom/android/tools/r8/graph/g1;

    invoke-static {v0, p1}, Lcom/android/tools/r8/graph/p3;->a([Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1;

    move-result-object v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/tools/r8/graph/p3;->a:[Lcom/android/tools/r8/graph/g1;

    invoke-static {v0, p1}, Lcom/android/tools/r8/graph/p3;->a([Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Zs0;
    .locals 6

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/graph/p3;->a:[Lcom/android/tools/r8/graph/g1;

    .line 5
    new-instance v1, Lcom/android/tools/r8/internal/Ys0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/Ys0;-><init>(Ljava/lang/Object;)V

    .line 6
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 7
    invoke-static {p1, v5}, Lcom/android/tools/r8/graph/F0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/F0;

    move-result-object v5

    .line 8
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Zs0;->b()Lcom/android/tools/r8/internal/Ys0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Ys0;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v5, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Zs0;

    .line 9
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    .line 11
    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Zs0;->b()Lcom/android/tools/r8/internal/Ys0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ys0;->f()Ljava/lang/Object;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/graph/p3;->b:[Lcom/android/tools/r8/graph/g1;

    .line 13
    new-instance v2, Lcom/android/tools/r8/internal/Ys0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/Ys0;-><init>(Ljava/lang/Object;)V

    .line 14
    array-length v0, v1

    :goto_2
    if-ge v3, v0, :cond_4

    aget-object v4, v1, v3

    .line 15
    invoke-static {p1, v4}, Lcom/android/tools/r8/graph/F0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/F0;

    move-result-object v4

    .line 16
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Zs0;->b()Lcom/android/tools/r8/internal/Ys0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Ys0;->e()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v4, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Zs0;

    .line 17
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return-object v2
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/p3;->a:[Lcom/android/tools/r8/graph/g1;

    invoke-static {p1, v0, p2}, Lcom/android/tools/r8/graph/p3;->a(Lcom/android/tools/r8/graph/E0;[Lcom/android/tools/r8/graph/g1;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/p3;->b:[Lcom/android/tools/r8/graph/g1;

    invoke-static {p1, v0, p2}, Lcom/android/tools/r8/graph/p3;->a(Lcom/android/tools/r8/graph/E0;[Lcom/android/tools/r8/graph/g1;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/function/Predicate;)Ljava/lang/Iterable;
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/graph/p3;->b:[Lcom/android/tools/r8/graph/g1;

    .line 24
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/graph/h7;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/graph/h7;-><init>(Ljava/util/function/Predicate;)V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/vK;->c(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Lcom/android/tools/r8/internal/rK;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/graph/p3;->a:[Lcom/android/tools/r8/graph/g1;

    .line 25
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/graph/h7;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/graph/h7;-><init>(Ljava/util/function/Predicate;)V

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/vK;->c(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Lcom/android/tools/r8/internal/rK;

    move-result-object p1

    const/4 v1, 0x2

    .line 26
    new-array v1, v1, [Ljava/lang/Iterable;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    invoke-static {v1}, Lcom/android/tools/r8/internal/Vx;->b([Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/Ux;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 1

    .line 39
    sget-object v0, Lcom/android/tools/r8/graph/g1;->o:[Lcom/android/tools/r8/graph/g1;

    iput-object v0, p0, Lcom/android/tools/r8/graph/p3;->b:[Lcom/android/tools/r8/graph/g1;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/g1;)V
    .locals 4

    .line 34
    iget-object v0, p0, Lcom/android/tools/r8/graph/p3;->b:[Lcom/android/tools/r8/graph/g1;

    .line 35
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lcom/android/tools/r8/graph/g1;

    .line 36
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    array-length v0, v0

    aput-object p1, v1, v0

    .line 38
    iput-object v1, p0, Lcom/android/tools/r8/graph/p3;->b:[Lcom/android/tools/r8/graph/g1;

    return-void
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 4

    .line 27
    iget-object v0, p0, Lcom/android/tools/r8/graph/p3;->a:[Lcom/android/tools/r8/graph/g1;

    .line 28
    array-length v1, v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v2, v1

    new-array v1, v2, [Lcom/android/tools/r8/graph/g1;

    .line 29
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    array-length v0, v0

    .line 31
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/g1;

    .line 32
    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_0
    iput-object v1, p0, Lcom/android/tools/r8/graph/p3;->a:[Lcom/android/tools/r8/graph/g1;

    return-void
.end method

.method public final a(Ljava/util/function/Function;)V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/android/tools/r8/graph/p3;->a:[Lcom/android/tools/r8/graph/g1;

    new-instance v1, Lcom/android/tools/r8/graph/lf;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/lf;-><init>()V

    new-instance v2, Lcom/android/tools/r8/graph/mf;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/graph/mf;-><init>(Lcom/android/tools/r8/graph/p3;)V

    .line 45
    invoke-static {v0, p1, v1, v2}, Lcom/android/tools/r8/graph/p3;->a([Lcom/android/tools/r8/graph/g1;Ljava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)[Lcom/android/tools/r8/graph/g1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/p3;->a:[Lcom/android/tools/r8/graph/g1;

    .line 46
    iget-object v0, p0, Lcom/android/tools/r8/graph/p3;->b:[Lcom/android/tools/r8/graph/g1;

    new-instance v1, Lcom/android/tools/r8/graph/nf;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/nf;-><init>()V

    new-instance v2, Lcom/android/tools/r8/graph/of;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/graph/of;-><init>(Lcom/android/tools/r8/graph/p3;)V

    .line 47
    invoke-static {v0, p1, v1, v2}, Lcom/android/tools/r8/graph/p3;->a([Lcom/android/tools/r8/graph/g1;Ljava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)[Lcom/android/tools/r8/graph/g1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/p3;->b:[Lcom/android/tools/r8/graph/g1;

    return-void
.end method

.method public final a([Lcom/android/tools/r8/graph/g1;)V
    .locals 1

    .line 40
    sget-boolean v0, Lcom/android/tools/r8/graph/p3;->c:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 41
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/graph/p3;->b:[Lcom/android/tools/r8/graph/g1;

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/graph/p3;->b:[Lcom/android/tools/r8/graph/g1;

    invoke-static {v0, p1}, Lcom/android/tools/r8/graph/p3;->a([Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/E0;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/p3;->b:[Lcom/android/tools/r8/graph/g1;

    invoke-static {p1, v0, p2}, Lcom/android/tools/r8/graph/p3;->a(Lcom/android/tools/r8/graph/E0;[Lcom/android/tools/r8/graph/g1;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .locals 1

    .line 7
    sget-object v0, Lcom/android/tools/r8/graph/g1;->o:[Lcom/android/tools/r8/graph/g1;

    iput-object v0, p0, Lcom/android/tools/r8/graph/p3;->a:[Lcom/android/tools/r8/graph/g1;

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/g1;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/p3;->a:[Lcom/android/tools/r8/graph/g1;

    .line 3
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lcom/android/tools/r8/graph/g1;

    .line 4
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    array-length v0, v0

    aput-object p1, v1, v0

    .line 6
    iput-object v1, p0, Lcom/android/tools/r8/graph/p3;->a:[Lcom/android/tools/r8/graph/g1;

    return-void
.end method

.method public final b(Ljava/util/Collection;)V
    .locals 4

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/graph/p3;->b:[Lcom/android/tools/r8/graph/g1;

    .line 11
    array-length v1, v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v2, v1

    new-array v1, v2, [Lcom/android/tools/r8/graph/g1;

    .line 12
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    array-length v0, v0

    .line 14
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/g1;

    .line 15
    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 16
    :cond_0
    iput-object v1, p0, Lcom/android/tools/r8/graph/p3;->b:[Lcom/android/tools/r8/graph/g1;

    return-void
.end method

.method public final b([Lcom/android/tools/r8/graph/g1;)V
    .locals 1

    .line 8
    sget-boolean v0, Lcom/android/tools/r8/graph/p3;->c:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/graph/p3;->a:[Lcom/android/tools/r8/graph/g1;

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/graph/p3;->a:[Lcom/android/tools/r8/graph/g1;

    invoke-static {v0, p1}, Lcom/android/tools/r8/graph/p3;->a([Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1;

    move-result-object p1

    return-object p1
.end method

.method public final c()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/tools/r8/internal/nJ;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/p3;->b:[Lcom/android/tools/r8/graph/g1;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/p3;->b:[Lcom/android/tools/r8/graph/g1;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/p3;->b:[Lcom/android/tools/r8/graph/g1;

    array-length v0, v0

    return v0
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/p3;->a:[Lcom/android/tools/r8/graph/g1;

    array-length v0, v0

    return v0
.end method

.method public final f()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/p3;->a:[Lcom/android/tools/r8/graph/g1;

    array-length v0, v0

    iget-object v1, p0, Lcom/android/tools/r8/graph/p3;->b:[Lcom/android/tools/r8/graph/g1;

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final g()Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/internal/nJ;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/graph/p3;->a:[Lcom/android/tools/r8/graph/g1;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/p3;->a:[Lcom/android/tools/r8/graph/g1;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final h()V
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/graph/p3;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/p3;->i()V

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 5

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/p3;->a(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Ux;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Ux;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    move-object v2, v1

    check-cast v2, Lcom/android/tools/r8/internal/GK;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/GK;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/GK;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/l1;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    sget-boolean v4, Lcom/android/tools/r8/graph/p3;->c:Z

    if-nez v4, :cond_0

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->j0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate field `"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "`"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    return-void
.end method
