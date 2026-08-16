.class public Lvf/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/util/concurrent/atomic/AtomicInteger;)I
    .locals 1
    .param p0    # Ljava/util/concurrent/atomic/AtomicInteger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/l0;
        version = "2.1"
    .end annotation

    .annotation build Lvf/g;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p0

    return p0
.end method

.method public static final b(Ljava/util/concurrent/atomic/AtomicLong;)J
    .locals 2
    .param p0    # Ljava/util/concurrent/atomic/AtomicLong;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/l0;
        version = "2.1"
    .end annotation

    .annotation build Lvf/g;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final c(Ljava/util/concurrent/atomic/AtomicInteger;)I
    .locals 1
    .param p0    # Ljava/util/concurrent/atomic/AtomicInteger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/l0;
        version = "2.1"
    .end annotation

    .annotation build Lvf/g;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p0

    return p0
.end method

.method public static final d(Ljava/util/concurrent/atomic/AtomicLong;)J
    .locals 2
    .param p0    # Ljava/util/concurrent/atomic/AtomicLong;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/l0;
        version = "2.1"
    .end annotation

    .annotation build Lvf/g;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final e(Ljava/util/concurrent/atomic/AtomicInteger;)I
    .locals 1
    .param p0    # Ljava/util/concurrent/atomic/AtomicInteger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/l0;
        version = "2.1"
    .end annotation

    .annotation build Lvf/g;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p0

    return p0
.end method

.method public static final f(Ljava/util/concurrent/atomic/AtomicLong;)J
    .locals 2
    .param p0    # Ljava/util/concurrent/atomic/AtomicLong;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/l0;
        version = "2.1"
    .end annotation

    .annotation build Lvf/g;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final g(Ljava/util/concurrent/atomic/AtomicInteger;)I
    .locals 1
    .param p0    # Ljava/util/concurrent/atomic/AtomicInteger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/l0;
        version = "2.1"
    .end annotation

    .annotation build Lvf/g;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p0

    return p0
.end method

.method public static final h(Ljava/util/concurrent/atomic/AtomicLong;)J
    .locals 2
    .param p0    # Ljava/util/concurrent/atomic/AtomicLong;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/l0;
        version = "2.1"
    .end annotation

    .annotation build Lvf/g;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final i(Ljava/util/concurrent/atomic/AtomicInteger;I)V
    .locals 1
    .param p0    # Ljava/util/concurrent/atomic/AtomicInteger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/l0;
        version = "2.1"
    .end annotation

    .annotation build Lvf/g;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    neg-int p1, p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    return-void
.end method

.method public static final j(Ljava/util/concurrent/atomic/AtomicLong;J)V
    .locals 1
    .param p0    # Ljava/util/concurrent/atomic/AtomicLong;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/l0;
        version = "2.1"
    .end annotation

    .annotation build Lvf/g;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-void
.end method

.method public static final k(Ljava/util/concurrent/atomic/AtomicInteger;I)V
    .locals 1
    .param p0    # Ljava/util/concurrent/atomic/AtomicInteger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/l0;
        version = "2.1"
    .end annotation

    .annotation build Lvf/g;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    return-void
.end method

.method public static final l(Ljava/util/concurrent/atomic/AtomicLong;J)V
    .locals 1
    .param p0    # Ljava/util/concurrent/atomic/AtomicLong;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/l0;
        version = "2.1"
    .end annotation

    .annotation build Lvf/g;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-void
.end method
