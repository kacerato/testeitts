.class public Lcom/android/tools/r8/internal/iA;
.super Lcom/android/tools/r8/internal/Pq0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/tools/r8/internal/Pq0<",
        "TT;",
        "Lcom/android/tools/r8/internal/iA<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Pq0;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/iA;->b:I

    iput-object p1, p0, Lcom/android/tools/r8/internal/iA;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/Object;Lcom/android/tools/r8/internal/Nq0;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/tools/r8/internal/Nq0<",
            "TT;>;)I"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/iA;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/iA;-><init>(Ljava/lang/Object;)V

    .line 3
    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/Nq0;->a(Lcom/android/tools/r8/internal/Pq0;)V

    .line 4
    iget p0, v0, Lcom/android/tools/r8/internal/iA;->b:I

    return p0
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/Pq0;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/iA;->a:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/iA;->a(I)Lcom/android/tools/r8/internal/iA;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Pq0;
    .locals 1

    .line 6
    sget-boolean v0, Lcom/android/tools/r8/internal/iA;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/iA;->a:Ljava/lang/Object;

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

    .line 10
    iget-object p3, p0, Lcom/android/tools/r8/internal/iA;->a:Ljava/lang/Object;

    invoke-interface {p1, p3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/android/tools/r8/internal/iA;->a:Ljava/lang/Object;

    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/iA;->a(I)Lcom/android/tools/r8/internal/iA;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/iA;->a(I)Lcom/android/tools/r8/internal/iA;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/iA;->a:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->hashCode(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/iA;->a(I)Lcom/android/tools/r8/internal/iA;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/function/ToLongFunction;)Lcom/android/tools/r8/internal/Pq0;
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/iA;->a:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/iA;->a(I)Lcom/android/tools/r8/internal/iA;

    move-result-object p1

    return-object p1
.end method

.method public final a(I)Lcom/android/tools/r8/internal/iA;
    .locals 1

    .line 5
    iget v0, p0, Lcom/android/tools/r8/internal/iA;->b:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/tools/r8/internal/iA;->b:I

    return-object p0
.end method

.method public final b(Ljava/util/function/Function;Lcom/android/tools/r8/internal/Kq0;Lcom/android/tools/r8/internal/Lq0;)Lcom/android/tools/r8/internal/Pq0;
    .locals 0

    .line 2
    iget-object p2, p0, Lcom/android/tools/r8/internal/iA;->a:Ljava/lang/Object;

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Iterator;

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/iA;->a(I)Lcom/android/tools/r8/internal/iA;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final b(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Pq0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/iA;->a:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/iA;->a(I)Lcom/android/tools/r8/internal/iA;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/iA;->a:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/J2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/iA;->a(I)Lcom/android/tools/r8/internal/iA;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/iA;->a:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/iA;->a(I)Lcom/android/tools/r8/internal/iA;

    move-result-object p1

    return-object p1
.end method

.method public final k(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/iA;->a:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [S

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([S)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/iA;->a(I)Lcom/android/tools/r8/internal/iA;

    move-result-object p1

    return-object p1
.end method
