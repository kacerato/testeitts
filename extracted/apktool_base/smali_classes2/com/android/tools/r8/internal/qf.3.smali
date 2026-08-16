.class public final Lcom/android/tools/r8/internal/qf;
.super Lcom/android/tools/r8/internal/Pq0;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/rf;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/rf;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Pq0;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/qf;->d:I

    iput-object p1, p0, Lcom/android/tools/r8/internal/qf;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/tools/r8/internal/qf;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/tools/r8/internal/qf;->a:Lcom/android/tools/r8/internal/rf;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/Pq0;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;
    .locals 6

    .line 12
    iget v0, p0, Lcom/android/tools/r8/internal/qf;->d:I

    if-nez v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/qf;->b:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 14
    iget-object v1, p0, Lcom/android/tools/r8/internal/qf;->c:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 15
    array-length v1, v0

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 16
    iget v3, p0, Lcom/android/tools/r8/internal/qf;->d:I

    if-nez v3, :cond_0

    .line 17
    iget-object v3, p0, Lcom/android/tools/r8/internal/qf;->a:Lcom/android/tools/r8/internal/rf;

    aget-byte v4, v0, v2

    aget-byte v5, p1, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-static {v4, v5}, Ljava/lang/Integer;->compare(II)I

    move-result v3

    .line 19
    iput v3, p0, Lcom/android/tools/r8/internal/qf;->d:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 20
    :cond_0
    iget v1, p0, Lcom/android/tools/r8/internal/qf;->d:I

    if-nez v1, :cond_1

    .line 21
    iget-object v1, p0, Lcom/android/tools/r8/internal/qf;->a:Lcom/android/tools/r8/internal/rf;

    array-length v0, v0

    array-length p1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    .line 23
    iput p1, p0, Lcom/android/tools/r8/internal/qf;->d:I

    :cond_1
    return-object p0
.end method

.method public final a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Pq0;
    .locals 2

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/qf;->e:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/qf;->b:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/qf;->c:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    return-object p0
.end method

.method public final a(Ljava/util/function/Predicate;Ljava/util/function/Function;Lcom/android/tools/r8/internal/Kq0;Lcom/android/tools/r8/internal/Lq0;)Lcom/android/tools/r8/internal/Pq0;
    .locals 1

    .line 24
    iget p4, p0, Lcom/android/tools/r8/internal/qf;->d:I

    if-nez p4, :cond_1

    .line 25
    iget-object p4, p0, Lcom/android/tools/r8/internal/qf;->b:Ljava/lang/Object;

    invoke-interface {p1, p4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p4

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/internal/qf;->c:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p4, :cond_0

    if-eqz p1, :cond_0

    .line 27
    iget-object p1, p0, Lcom/android/tools/r8/internal/qf;->b:Ljava/lang/Object;

    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p4, p0, Lcom/android/tools/r8/internal/qf;->c:Ljava/lang/Object;

    invoke-interface {p2, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-object p4, p0, Lcom/android/tools/r8/internal/qf;->a:Lcom/android/tools/r8/internal/rf;

    invoke-interface {p3, p1, p2, p4}, Lcom/android/tools/r8/internal/Kq0;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/pf;)I

    move-result p1

    iput p1, p0, Lcom/android/tools/r8/internal/qf;->d:I

    return-object p0

    .line 28
    :cond_0
    invoke-static {p4, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p1

    .line 29
    iput p1, p0, Lcom/android/tools/r8/internal/qf;->d:I

    :cond_1
    return-object p0
.end method

.method public final a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;
    .locals 3

    .line 4
    iget v0, p0, Lcom/android/tools/r8/internal/qf;->d:I

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/qf;->a:Lcom/android/tools/r8/internal/rf;

    iget-object v1, p0, Lcom/android/tools/r8/internal/qf;->b:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/qf;->c:Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {v1, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    .line 7
    iput p1, p0, Lcom/android/tools/r8/internal/qf;->d:I

    :cond_0
    return-object p0
.end method

.method public final a(Ljava/util/function/ToLongFunction;)Lcom/android/tools/r8/internal/Pq0;
    .locals 5

    .line 8
    iget v0, p0, Lcom/android/tools/r8/internal/qf;->d:I

    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/qf;->a:Lcom/android/tools/r8/internal/rf;

    iget-object v1, p0, Lcom/android/tools/r8/internal/qf;->b:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/tools/r8/internal/qf;->c:Ljava/lang/Object;

    invoke-interface {p1, v3}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    .line 11
    iput p1, p0, Lcom/android/tools/r8/internal/qf;->d:I

    :cond_0
    return-object p0
.end method

.method public final b(Ljava/util/function/Function;Lcom/android/tools/r8/internal/Kq0;Lcom/android/tools/r8/internal/Lq0;)Lcom/android/tools/r8/internal/Pq0;
    .locals 2

    .line 5
    iget p3, p0, Lcom/android/tools/r8/internal/qf;->d:I

    if-nez p3, :cond_0

    .line 6
    iget-object p3, p0, Lcom/android/tools/r8/internal/qf;->a:Lcom/android/tools/r8/internal/rf;

    iget-object v0, p0, Lcom/android/tools/r8/internal/qf;->b:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iget-object v1, p0, Lcom/android/tools/r8/internal/qf;->c:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Iterator;

    invoke-virtual {p3, v0, p1, p2}, Lcom/android/tools/r8/internal/rf;->a(Ljava/util/Iterator;Ljava/util/Iterator;Lcom/android/tools/r8/internal/Kq0;)I

    move-result p1

    iput p1, p0, Lcom/android/tools/r8/internal/qf;->d:I

    :cond_0
    return-object p0
.end method

.method public final b(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Pq0;
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/tools/r8/internal/qf;->d:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/qf;->a:Lcom/android/tools/r8/internal/rf;

    iget-object v1, p0, Lcom/android/tools/r8/internal/qf;->b:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/qf;->c:Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {v1, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p1

    .line 4
    iput p1, p0, Lcom/android/tools/r8/internal/qf;->d:I

    :cond_0
    return-object p0
.end method

.method public final c(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/qf;->d:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/qf;->a:Lcom/android/tools/r8/internal/rf;

    iget-object v1, p0, Lcom/android/tools/r8/internal/qf;->b:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/J2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/qf;->c:Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/J2;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/rf;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/J2;)I

    move-result p1

    iput p1, p0, Lcom/android/tools/r8/internal/qf;->d:I

    :cond_0
    return-object p0
.end method

.method public final d(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;
    .locals 6

    iget v0, p0, Lcom/android/tools/r8/internal/qf;->d:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/qf;->b:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iget-object v1, p0, Lcom/android/tools/r8/internal/qf;->c:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    array-length v1, v0

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget v3, p0, Lcom/android/tools/r8/internal/qf;->d:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/tools/r8/internal/qf;->a:Lcom/android/tools/r8/internal/rf;

    aget v4, v0, v2

    aget v5, p1, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5}, Ljava/lang/Integer;->compare(II)I

    move-result v3

    iput v3, p0, Lcom/android/tools/r8/internal/qf;->d:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/tools/r8/internal/qf;->d:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/qf;->a:Lcom/android/tools/r8/internal/rf;

    array-length v0, v0

    array-length p1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    iput p1, p0, Lcom/android/tools/r8/internal/qf;->d:I

    :cond_1
    return-object p0
.end method

.method public final k(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;
    .locals 6

    iget v0, p0, Lcom/android/tools/r8/internal/qf;->d:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/qf;->b:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    iget-object v1, p0, Lcom/android/tools/r8/internal/qf;->c:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [S

    array-length v1, v0

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget v3, p0, Lcom/android/tools/r8/internal/qf;->d:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/tools/r8/internal/qf;->a:Lcom/android/tools/r8/internal/rf;

    aget-short v4, v0, v2

    aget-short v5, p1, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5}, Ljava/lang/Integer;->compare(II)I

    move-result v3

    iput v3, p0, Lcom/android/tools/r8/internal/qf;->d:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/tools/r8/internal/qf;->d:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/qf;->a:Lcom/android/tools/r8/internal/rf;

    array-length v0, v0

    array-length p1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    iput p1, p0, Lcom/android/tools/r8/internal/qf;->d:I

    :cond_1
    return-object p0
.end method
