.class public final Lmg/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConcurrentLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n+ 2 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListNode\n*L\n1#1,269:1\n46#1,8:284\n107#2,7:270\n107#2,7:277\n*S KotlinDebug\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n*L\n74#1:284,8\n27#1:270,7\n85#1:277,7\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nConcurrentLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n+ 2 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListNode\n*L\n1#1,269:1\n46#1,8:284\n107#2,7:270\n107#2,7:277\n*S KotlinDebug\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n*L\n74#1:284,8\n27#1:270,7\n85#1:277,7\n*E\n"
    }
.end annotation


# static fields
.field public static final a:I = 0x10

.field public static final b:Lmg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmg/T;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1}, Lmg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmg/f;->b:Lmg/T;

    return-void
.end method

.method public static final synthetic a()Lmg/T;
    .locals 1

    sget-object v0, Lmg/f;->b:Lmg/T;

    return-object v0
.end method

.method public static final b(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;ILMf/l;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;",
            "I",
            "LMf/l<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    add-int v1, v0, p2

    invoke-virtual {p1, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0
.end method

.method public static final c(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicIntegerArray;IILMf/l;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/atomic/AtomicIntegerArray;",
            "II",
            "LMf/l<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    add-int v0, p0, p3

    invoke-virtual {p1, p2, p0, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->compareAndSet(III)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0
.end method

.method public static final d(Lmg/g;)Lmg/g;
    .locals 2
    .param p0    # Lmg/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lmg/g<",
            "TN;>;>(TN;)TN;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    :cond_0
    :goto_0
    invoke-static {p0}, Lmg/g;->a(Lmg/g;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lmg/f;->a()Lmg/T;

    move-result-object v1

    if-ne v0, v1, :cond_1

    return-object p0

    :cond_1
    check-cast v0, Lmg/g;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lmg/g;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_2
    move-object p0, v0

    goto :goto_0
.end method

.method public static final e(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;JLmg/P;LMf/p;)Ljava/lang/Object;
    .locals 7
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lmg/P;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;",
            "J",
            "Ljava/lang/Object;",
            "LMf/p<",
            "-",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    :goto_0
    invoke-static {p4, p2, p3, p5}, Lmg/f;->g(Lmg/P;JLMf/p;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lmg/Q;->h(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lmg/Q;->f(Ljava/lang/Object;)Lmg/P;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmg/P;

    iget-wide v3, v2, Lmg/P;->d:J

    iget-wide v5, v1, Lmg/P;->d:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Lmg/P;->s()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1, p0, v2, v1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lmg/P;->o()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v2}, Lmg/g;->l()V

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lmg/P;->o()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lmg/g;->l()V

    goto :goto_1

    :cond_4
    :goto_2
    return-object v0
.end method

.method public static final f(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReferenceArray;IJLmg/P;LMf/p;)Ljava/lang/Object;
    .locals 6
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/atomic/AtomicReferenceArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lmg/P;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray;",
            "IJ",
            "Ljava/lang/Object;",
            "LMf/p<",
            "-",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    :goto_0
    invoke-static {p5, p3, p4, p6}, Lmg/f;->g(Lmg/P;JLMf/p;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lmg/Q;->h(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p0}, Lmg/Q;->f(Ljava/lang/Object;)Lmg/P;

    move-result-object v0

    :cond_0
    :goto_1
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmg/P;

    iget-wide v2, v1, Lmg/P;->d:J

    iget-wide v4, v0, Lmg/P;->d:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Lmg/P;->s()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1, p2, v1, v0}, Lcom/google/common/util/concurrent/C0;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lmg/P;->o()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v1}, Lmg/g;->l()V

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lmg/P;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lmg/g;->l()V

    goto :goto_1

    :cond_4
    :goto_2
    return-object p0
.end method

.method public static final g(Lmg/P;JLMf/p;)Ljava/lang/Object;
    .locals 4
    .param p0    # Lmg/P;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lmg/P<",
            "TS;>;>(TS;J",
            "LMf/p<",
            "-",
            "Ljava/lang/Long;",
            "-TS;+TS;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    :cond_0
    :goto_0
    iget-wide v0, p0, Lmg/P;->d:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Lmg/P;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lmg/Q;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    invoke-static {p0}, Lmg/g;->a(Lmg/g;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lmg/f;->a()Lmg/T;

    move-result-object v1

    if-ne v0, v1, :cond_3

    sget-object p0, Lmg/f;->b:Lmg/T;

    invoke-static {p0}, Lmg/Q;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    check-cast v0, Lmg/g;

    check-cast v0, Lmg/P;

    if-eqz v0, :cond_5

    :cond_4
    :goto_2
    move-object p0, v0

    goto :goto_0

    :cond_5
    iget-wide v0, p0, Lmg/P;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p3, v0, p0}, LMf/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmg/P;

    invoke-virtual {p0, v0}, Lmg/g;->m(Lmg/g;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmg/P;->h()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lmg/g;->l()V

    goto :goto_2
.end method

.method public static final h(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;LMf/l;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;",
            "LMf/l<",
            "Ljava/lang/Object;",
            "Lnf/P0;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    :goto_0
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static final i(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILMf/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray;",
            "I",
            "LMf/l<",
            "Ljava/lang/Object;",
            "Lnf/P0;",
            ">;)V"
        }
    .end annotation

    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static final j(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Lmg/P;)Z
    .locals 5
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lmg/P;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmg/P;

    iget-wide v1, v0, Lmg/P;->d:J

    iget-wide v3, p2, Lmg/P;->d:J

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-ltz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p2}, Lmg/P;->s()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-static {p1, p0, v0, p2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lmg/P;->o()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Lmg/g;->l()V

    :cond_3
    return v2

    :cond_4
    invoke-virtual {p2}, Lmg/P;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lmg/g;->l()V

    goto :goto_0
.end method

.method public static final k(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReferenceArray;ILmg/P;)Z
    .locals 4
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/atomic/AtomicReferenceArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lmg/P;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray;",
            "I",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmg/P;

    iget-wide v0, p0, Lmg/P;->d:J

    iget-wide v2, p3, Lmg/P;->d:J

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-ltz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p3}, Lmg/P;->s()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-static {p1, p2, p0, p3}, Lcom/google/common/util/concurrent/C0;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lmg/P;->o()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lmg/g;->l()V

    :cond_3
    return v1

    :cond_4
    invoke-virtual {p3}, Lmg/P;->o()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p3}, Lmg/g;->l()V

    goto :goto_0
.end method
