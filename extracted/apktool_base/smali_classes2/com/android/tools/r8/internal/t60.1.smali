.class public abstract Lcom/android/tools/r8/internal/t60;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/aW;)Z
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/aW;->size()I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/internal/s60;Ljava/util/LinkedList;Ljava/util/concurrent/ExecutorService;)Ljava/util/LinkedList;
.end method

.method public final a(Ljava/util/AbstractList;Ljava/util/Collection;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Ljava/util/LinkedList;
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/util/LinkedList;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    .line 4
    :goto_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/s60;

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/s60;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/s60;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 7
    invoke-virtual {p0, v0, p1, p3}, Lcom/android/tools/r8/internal/t60;->a(Lcom/android/tools/r8/internal/s60;Ljava/util/LinkedList;Ljava/util/concurrent/ExecutorService;)Ljava/util/LinkedList;

    move-result-object p1

    .line 8
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/s60;->e()V

    .line 10
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p1

    .line 11
    :cond_3
    sget-boolean v0, Lcom/android/tools/r8/internal/t60;->a:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/At1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/At1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    return-object p1
.end method
