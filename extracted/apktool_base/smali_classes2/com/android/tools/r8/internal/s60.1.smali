.class public abstract Lcom/android/tools/r8/internal/s60;
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

.method public static a(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/s60;->a:Z

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 3
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/zs1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/zs1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-object p0
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/internal/wY;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(ZILjava/util/Collection;)V
    .locals 2

    .line 4
    sget-boolean p1, Lcom/android/tools/r8/internal/s60;->a:Z

    if-nez p1, :cond_1

    const/4 p1, 0x2

    if-lt p2, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    add-int/lit8 p2, p2, -0x1

    .line 5
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x0

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/AA;

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/AA;->k()Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    iget-object v0, v0, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    add-int/2addr p3, v0

    goto :goto_1

    .line 8
    :cond_3
    sget-boolean p1, Lcom/android/tools/r8/internal/s60;->a:Z

    if-nez p1, :cond_5

    if-lt p2, p3, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_5
    :goto_2
    monitor-enter p0

    .line 10
    :try_start_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()Lcom/android/tools/r8/internal/xY;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Lcom/android/tools/r8/internal/zm0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Lcom/android/tools/r8/internal/hx0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public g()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/ex;

    return v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
