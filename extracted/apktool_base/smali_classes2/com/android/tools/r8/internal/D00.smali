.class public Lcom/android/tools/r8/internal/D00;
.super Lcom/android/tools/r8/internal/E00;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcom/android/tools/r8/internal/Ei;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/internal/E00<",
        "Lcom/android/tools/r8/internal/D00;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lcom/android/tools/r8/internal/D00;",
        ">;",
        "Lcom/android/tools/r8/internal/Ei;"
    }
.end annotation


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public c:I

.field public final d:Ljava/util/TreeSet;

.field public final e:Ljava/util/TreeSet;

.field public final f:Ljava/util/TreeSet;

.field public final g:Ljava/util/TreeSet;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/E00;-><init>(Lcom/android/tools/r8/graph/H5;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/tools/r8/internal/D00;->c:I

    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/D00;->d:Ljava/util/TreeSet;

    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/D00;->e:Ljava/util/TreeSet;

    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/D00;->f:Ljava/util/TreeSet;

    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/D00;->g:Ljava/util/TreeSet;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/internal/D00;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/D00;->a(Lcom/android/tools/r8/internal/D00;Z)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/D00;Z)V
    .locals 2

    if-eq p1, p0, :cond_1

    if-nez p2, :cond_1

    .line 18
    iget-object p2, p0, Lcom/android/tools/r8/internal/D00;->e:Ljava/util/TreeSet;

    monitor-enter p2

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/D00;->e:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 20
    iget v1, p0, Lcom/android/tools/r8/internal/D00;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/tools/r8/internal/D00;->c:I

    .line 21
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 22
    iget-object p2, p1, Lcom/android/tools/r8/internal/D00;->d:Ljava/util/TreeSet;

    monitor-enter p2

    .line 23
    :try_start_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/D00;->d:Ljava/util/TreeSet;

    invoke-virtual {v0, p0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 24
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/D00;->d(Lcom/android/tools/r8/internal/D00;)V

    return-void

    :catchall_0
    move-exception p1

    .line 26
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_0
    return-void

    :catchall_1
    move-exception p1

    .line 27
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 28
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/D00;->e:Ljava/util/TreeSet;

    monitor-enter p1

    .line 29
    :try_start_4
    iget p2, p0, Lcom/android/tools/r8/internal/D00;->c:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/android/tools/r8/internal/D00;->c:I

    .line 30
    monitor-exit p1

    return-void

    :catchall_2
    move-exception p2

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p2
.end method

.method public final a(Lcom/android/tools/r8/internal/E00;)V
    .locals 3

    .line 2
    check-cast p1, Lcom/android/tools/r8/internal/D00;

    if-eq p1, p0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/D00;->e:Ljava/util/TreeSet;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/D00;->e:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/D00;->f:Ljava/util/TreeSet;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/D00;->f:Ljava/util/TreeSet;

    invoke-virtual {v2, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 8
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v2, :cond_1

    .line 9
    :try_start_2
    iget-object v1, p1, Lcom/android/tools/r8/internal/D00;->g:Ljava/util/TreeSet;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    :try_start_3
    iget-object p1, p1, Lcom/android/tools/r8/internal/D00;->g:Ljava/util/TreeSet;

    invoke-virtual {p1, p0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 11
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1

    .line 12
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :catchall_2
    move-exception p1

    .line 13
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw p1

    .line 14
    :goto_1
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1

    :cond_2
    return-void
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/E00;Z)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/D00;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/D00;->a(Lcom/android/tools/r8/internal/D00;Z)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Ei;)Z
    .locals 1

    .line 15
    check-cast p1, Lcom/android/tools/r8/internal/D00;

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/internal/D00;->e:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/android/tools/r8/internal/D00;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/D00;->d:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic b(Lcom/android/tools/r8/internal/Ei;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/D00;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/D00;->b(Lcom/android/tools/r8/internal/D00;)Z

    move-result p1

    return p1
.end method

.method public final c()Ljava/util/TreeSet;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/D00;->d:Ljava/util/TreeSet;

    return-object v0
.end method

.method public final c(Lcom/android/tools/r8/internal/D00;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/D00;->e:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 4
    sget-boolean v1, Lcom/android/tools/r8/internal/D00;->h:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/D00;->d:Ljava/util/TreeSet;

    invoke-virtual {v0, p0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v1, :cond_5

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/D00;->f:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    .line 8
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    return-void
.end method

.method public final c(Lcom/android/tools/r8/internal/Ei;)Z
    .locals 1

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/D00;

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/D00;->g:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/tools/r8/internal/D00;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/E00;->a()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/E00;->a()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/Mq0;)I

    move-result p1

    return p1
.end method

.method public final d()Ljava/util/Set;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/D00;->g:Ljava/util/TreeSet;

    return-object v0
.end method

.method public final d(Lcom/android/tools/r8/internal/D00;)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/D00;->f:Ljava/util/TreeSet;

    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/D00;->f:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    iget-object v1, p1, Lcom/android/tools/r8/internal/D00;->g:Ljava/util/TreeSet;

    monitor-enter v1

    .line 12
    :try_start_1
    iget-object p1, p1, Lcom/android/tools/r8/internal/D00;->g:Ljava/util/TreeSet;

    invoke-virtual {p1, p0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 13
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 14
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final d(Lcom/android/tools/r8/internal/Ei;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/D00;

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/D00;->f:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 3
    sget-boolean v1, Lcom/android/tools/r8/internal/D00;->h:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/D00;->g:Ljava/util/TreeSet;

    invoke-virtual {v0, p0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v1, :cond_5

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/D00;->e:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    .line 7
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    return-void
.end method

.method public final e()V
    .locals 3

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/D00;->h:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/D00;->e:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/D00;->f:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/D00;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/D00;

    .line 5
    iget-object v1, v1, Lcom/android/tools/r8/internal/D00;->e:Ljava/util/TreeSet;

    invoke-virtual {v1, p0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 6
    sget-boolean v2, Lcom/android/tools/r8/internal/D00;->h:Z

    if-nez v2, :cond_4

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 7
    :cond_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/D00;->g:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/D00;

    .line 8
    iget-object v1, v1, Lcom/android/tools/r8/internal/D00;->f:Ljava/util/TreeSet;

    invoke-virtual {v1, p0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 9
    sget-boolean v2, Lcom/android/tools/r8/internal/D00;->h:Z

    if-nez v2, :cond_7

    if-eqz v1, :cond_8

    goto :goto_3

    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_9
    return-void
.end method

.method public final bridge synthetic e(Lcom/android/tools/r8/internal/Ei;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/D00;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/D00;->c(Lcom/android/tools/r8/internal/D00;)V

    return-void
.end method

.method public final f()V
    .locals 3

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/internal/D00;->h:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/D00;->d:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/D00;->g:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 5
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/D00;->e:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/D00;

    .line 6
    iget-object v1, v1, Lcom/android/tools/r8/internal/D00;->d:Ljava/util/TreeSet;

    invoke-virtual {v1, p0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 7
    sget-boolean v2, Lcom/android/tools/r8/internal/D00;->h:Z

    if-nez v2, :cond_4

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 8
    :cond_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/D00;->f:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/D00;

    .line 9
    iget-object v1, v1, Lcom/android/tools/r8/internal/D00;->g:Ljava/util/TreeSet;

    invoke-virtual {v1, p0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 10
    sget-boolean v2, Lcom/android/tools/r8/internal/D00;->h:Z

    if-nez v2, :cond_7

    if-eqz v1, :cond_8

    goto :goto_3

    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_9
    return-void
.end method

.method public final f(Lcom/android/tools/r8/internal/Ei;)Z
    .locals 1

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/D00;

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/D00;->f:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/D00;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/D00;->g:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/D00;->e:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/D00;->f:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MethodNode for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/E00;->a()Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/D00;->d:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " callees, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/D00;->e:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " callers, invoke count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/tools/r8/internal/D00;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/D00;->d:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    const-string v2, "  "

    if-lez v1, :cond_0

    const-string v1, "Callees:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/D00;->d:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/D00;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/E00;->a()Lcom/android/tools/r8/graph/H5;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/D00;->e:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "Callers:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/D00;->e:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/D00;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/E00;->a()Lcom/android/tools/r8/graph/H5;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
