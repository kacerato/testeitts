.class public final Lcom/android/tools/r8/internal/sA;
.super Lcom/android/tools/r8/internal/Pq0;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/tA;

.field public final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/android/tools/r8/internal/tA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Pq0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/sA;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/tools/r8/internal/sA;->a:Lcom/android/tools/r8/internal/tA;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/Pq0;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/sA;->b:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const/4 v0, 0x0

    .line 10
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 11
    iget-object v1, p0, Lcom/android/tools/r8/internal/sA;->a:Lcom/android/tools/r8/internal/tA;

    aget-byte v2, p1, v0

    .line 12
    iget-object v1, v1, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    .line 13
    invoke-interface {v1, v2}, Lcom/android/tools/r8/internal/nA;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Pq0;
    .locals 1

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/sA;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/sA;->b:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final a(Ljava/util/function/Predicate;Ljava/util/function/Function;Lcom/android/tools/r8/internal/Kq0;Lcom/android/tools/r8/internal/Lq0;)Lcom/android/tools/r8/internal/Pq0;
    .locals 0

    .line 14
    iget-object p3, p0, Lcom/android/tools/r8/internal/sA;->b:Ljava/lang/Object;

    invoke-interface {p1, p3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    .line 15
    iget-object p3, p0, Lcom/android/tools/r8/internal/sA;->a:Lcom/android/tools/r8/internal/tA;

    .line 16
    iget-object p3, p3, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    .line 17
    invoke-interface {p3, p1}, Lcom/android/tools/r8/internal/nA;->a(Z)V

    if-eqz p1, :cond_0

    .line 18
    iget-object p1, p0, Lcom/android/tools/r8/internal/sA;->b:Ljava/lang/Object;

    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/sA;->a:Lcom/android/tools/r8/internal/tA;

    invoke-interface {p4, p1, p2}, Lcom/android/tools/r8/internal/Lq0;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/rA;)V

    :cond_0
    return-object p0
.end method

.method public final a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/sA;->a:Lcom/android/tools/r8/internal/tA;

    iget-object v1, p0, Lcom/android/tools/r8/internal/sA;->b:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p1

    .line 4
    iget-object v0, v0, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    .line 5
    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/nA;->a(I)V

    return-object p0
.end method

.method public final a(Ljava/util/function/ToLongFunction;)Lcom/android/tools/r8/internal/Pq0;
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/sA;->a:Lcom/android/tools/r8/internal/tA;

    iget-object v1, p0, Lcom/android/tools/r8/internal/sA;->b:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v1

    .line 7
    iget-object p1, v0, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    .line 8
    invoke-interface {p1, v1, v2}, Lcom/android/tools/r8/internal/nA;->a(J)V

    return-object p0
.end method

.method public final b(Ljava/util/function/Function;Lcom/android/tools/r8/internal/Kq0;Lcom/android/tools/r8/internal/Lq0;)Lcom/android/tools/r8/internal/Pq0;
    .locals 1

    .line 4
    iget-object p2, p0, Lcom/android/tools/r8/internal/sA;->a:Lcom/android/tools/r8/internal/tA;

    iget-object v0, p0, Lcom/android/tools/r8/internal/sA;->b:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Iterator;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0, p2}, Lcom/android/tools/r8/internal/Lq0;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/rA;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final b(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Pq0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/sA;->a:Lcom/android/tools/r8/internal/tA;

    iget-object v1, p0, Lcom/android/tools/r8/internal/sA;->b:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    .line 3
    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/nA;->a(Z)V

    return-object p0
.end method

.method public final c(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/sA;->a:Lcom/android/tools/r8/internal/tA;

    iget-object v1, p0, Lcom/android/tools/r8/internal/sA;->b:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/J2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/rA;->a(Lcom/android/tools/r8/graph/J2;)V

    return-object p0
.end method

.method public final d(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/sA;->b:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/sA;->a:Lcom/android/tools/r8/internal/tA;

    aget v2, p1, v0

    iget-object v1, v1, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    invoke-interface {v1, v2}, Lcom/android/tools/r8/internal/nA;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final k(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/sA;->b:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [S

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/sA;->a:Lcom/android/tools/r8/internal/tA;

    aget-short v2, p1, v0

    iget-object v1, v1, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    invoke-interface {v1, v2}, Lcom/android/tools/r8/internal/nA;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
