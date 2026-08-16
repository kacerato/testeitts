.class public abstract Lcom/android/tools/r8/internal/Pq0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Lcom/android/tools/r8/internal/Pq0<",
        "TT;TV;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/pf;)I
    .locals 2

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/pf;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    move p0, v1

    goto :goto_1

    :cond_2
    move p0, v0

    :goto_1
    if-eqz p1, :cond_3

    move v0, v1

    .line 9
    :cond_3
    invoke-virtual {p2, p0, v0}, Lcom/android/tools/r8/internal/pf;->a(ZZ)I

    move-result p0

    return p0
.end method

.method public static synthetic a([Lcom/android/tools/r8/internal/Mq0;)Ljava/util/Iterator;
    .locals 0

    .line 7
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a([Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 0

    .line 4
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/rA;)V
    .locals 0

    if-nez p0, :cond_0

    .line 10
    check-cast p1, Lcom/android/tools/r8/internal/tA;

    .line 11
    iget-object p0, p1, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    const/4 p1, 0x0

    .line 12
    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/nA;->a(I)V

    return-void

    .line 13
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/rA;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic a(Ljava/util/function/Function;Ljava/lang/Object;)Z
    .locals 0

    .line 5
    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic b([Lcom/android/tools/r8/internal/Mq0;)Ljava/util/Iterator;
    .locals 0

    .line 5
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public abstract a()Lcom/android/tools/r8/internal/Pq0;
.end method

.method public abstract a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;
.end method

.method public final a(Ljava/util/function/Function;Lcom/android/tools/r8/internal/Jq0;)Lcom/android/tools/r8/internal/Pq0;
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/LR0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/LR0;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/function/Function;->andThen(Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p2}, Lcom/android/tools/r8/internal/Pq0;->b(Ljava/util/function/Function;Lcom/android/tools/r8/internal/Kq0;Lcom/android/tools/r8/internal/Lq0;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/function/Function;Lcom/android/tools/r8/internal/Kq0;Lcom/android/tools/r8/internal/Lq0;)Lcom/android/tools/r8/internal/Pq0;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/NR0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/NR0;-><init>()V

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/Predicate;Ljava/util/function/Function;Lcom/android/tools/r8/internal/Kq0;Lcom/android/tools/r8/internal/Lq0;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/function/Function;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Pq0;
    .locals 2

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/VM0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/VM0;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/WM0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/WM0;-><init>()V

    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/Predicate;Ljava/util/function/Function;Lcom/android/tools/r8/internal/Kq0;Lcom/android/tools/r8/internal/Lq0;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Pq0;
.end method

.method public abstract a(Ljava/util/function/Predicate;Ljava/util/function/Function;Lcom/android/tools/r8/internal/Kq0;Lcom/android/tools/r8/internal/Lq0;)Lcom/android/tools/r8/internal/Pq0;
.end method

.method public abstract a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToIntFunction<",
            "TT;>;)TV;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/util/function/ToLongFunction;)Lcom/android/tools/r8/internal/Pq0;
.end method

.method public final b(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;
    .locals 2

    sget-object v0, Lcom/android/tools/r8/internal/XS;->a:Lcom/android/tools/r8/internal/XS;

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/MR0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/MR0;-><init>()V

    .line 3
    invoke-interface {p1, v1}, Ljava/util/function/Function;->andThen(Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/tools/r8/internal/Pq0;->b(Ljava/util/function/Function;Lcom/android/tools/r8/internal/Kq0;Lcom/android/tools/r8/internal/Lq0;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p1

    return-object p1
.end method

.method public abstract b(Ljava/util/function/Function;Lcom/android/tools/r8/internal/Kq0;Lcom/android/tools/r8/internal/Lq0;)Lcom/android/tools/r8/internal/Pq0;
.end method

.method public abstract b(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Pq0;
.end method

.method public abstract c(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;
.end method

.method public abstract d(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;
.end method

.method public final e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lcom/android/tools/r8/internal/Mq0<",
            "TS;>;>(",
            "Ljava/util/function/Function<",
            "TT;TS;>;)TV;"
        }
    .end annotation

    new-instance v0, Lcom/android/tools/r8/internal/KR0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/KR0;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/Function;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/GR0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/GR0;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/function/Function;->andThen(Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Pq0;->i(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p1

    return-object p1
.end method

.method public final g(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/HR0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/HR0;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/function/Function;->andThen(Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/IR0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/IR0;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/JR0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/JR0;-><init>()V

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/tools/r8/internal/Pq0;->b(Ljava/util/function/Function;Lcom/android/tools/r8/internal/Kq0;Lcom/android/tools/r8/internal/Lq0;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p1

    return-object p1
.end method

.method public final h(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/LR0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/LR0;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/function/Function;->andThen(Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Pq0;->i(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p1

    return-object p1
.end method

.method public final i(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/VM0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/VM0;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/WM0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/WM0;-><init>()V

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/tools/r8/internal/Pq0;->b(Ljava/util/function/Function;Lcom/android/tools/r8/internal/Kq0;Lcom/android/tools/r8/internal/Lq0;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p1

    return-object p1
.end method

.method public final j(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/OR0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/OR0;-><init>(Ljava/util/function/Function;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/Function;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p1

    return-object p1
.end method

.method public abstract k(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;
.end method
