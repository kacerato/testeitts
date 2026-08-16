.class public abstract Lcom/android/tools/r8/internal/Uj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Ljava/util/ArrayDeque;

.field public final b:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Uj;->a:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Uj;->b:Ljava/util/IdentityHashMap;

    return-void
.end method

.method public static synthetic a(Ljava/util/List;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/Qj;
.end method

.method public abstract a(Lcom/android/tools/r8/internal/Qj;)Lcom/android/tools/r8/internal/Zs0;
.end method

.method public final a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/Zs0;
    .locals 3

    .line 2
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Uj;->b(Ljava/util/Collection;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/tY0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/tY0;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    new-instance v1, Lcom/android/tools/r8/internal/Ws0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Zs0;->a()Lcom/android/tools/r8/internal/Ws0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ws0;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/Ws0;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 5
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/Zs0;->a:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Zs0;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_2
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/Ys0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Zs0;->b()Lcom/android/tools/r8/internal/Ys0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ys0;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Ys0;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public abstract a(Ljava/util/Collection;)Ljava/util/List;
.end method

.method public final b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/Qj;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Uj;->b:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/vY0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/vY0;-><init>(Lcom/android/tools/r8/internal/Uj;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Qj;

    .line 2
    iget v0, p1, Lcom/android/tools/r8/internal/Qj;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Uj;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method public abstract b(Lcom/android/tools/r8/internal/Qj;)Lcom/android/tools/r8/internal/Zs0;
.end method

.method public final b(Ljava/util/Collection;)Lcom/android/tools/r8/internal/Zs0;
    .locals 5

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/uY0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/uY0;-><init>(Lcom/android/tools/r8/internal/Uj;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 5
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Uj;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/Uj;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Qj;

    .line 7
    iget v1, v0, Lcom/android/tools/r8/internal/Qj;->b:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v1, v3, :cond_2

    .line 8
    iget-object v1, p0, Lcom/android/tools/r8/internal/Uj;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 9
    iput v4, v0, Lcom/android/tools/r8/internal/Qj;->b:I

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Uj;->b(Lcom/android/tools/r8/internal/Qj;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object v0

    goto :goto_3

    .line 11
    :cond_2
    sget-boolean v3, Lcom/android/tools/r8/internal/Uj;->c:Z

    if-nez v3, :cond_4

    if-ne v1, v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 12
    :cond_4
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Uj;->a(Lcom/android/tools/r8/internal/Qj;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object v1

    .line 13
    sget-boolean v3, Lcom/android/tools/r8/internal/Qj;->c:Z

    if-nez v3, :cond_6

    iget v3, v0, Lcom/android/tools/r8/internal/Qj;->b:I

    if-eq v3, v2, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 14
    :cond_6
    :goto_2
    iput v2, v0, Lcom/android/tools/r8/internal/Qj;->b:I

    move-object v0, v1

    .line 15
    :goto_3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Zs0;->a()Lcom/android/tools/r8/internal/Ws0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ws0;->e()Ljava/lang/Object;

    move-result-object p1

    .line 17
    new-instance v0, Lcom/android/tools/r8/internal/Ws0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Ws0;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 18
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Uj;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 19
    new-instance v0, Lcom/android/tools/r8/internal/Ys0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Ys0;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
