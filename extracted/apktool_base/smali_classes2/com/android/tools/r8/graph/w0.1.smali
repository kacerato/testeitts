.class public abstract Lcom/android/tools/r8/graph/w0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/ArrayList;

.field public final c:Lcom/android/tools/r8/internal/nJ;

.field public d:Lcom/android/tools/r8/naming/b;

.field public final e:Lcom/android/tools/r8/internal/ns0;

.field public f:Lcom/android/tools/r8/graph/z0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/x0;)V
    .locals 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/w0;->a:Ljava/util/ArrayList;

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/graph/w0;->b:Ljava/util/ArrayList;

    .line 10
    iget-object v2, p1, Lcom/android/tools/r8/graph/x0;->f:Lcom/android/tools/r8/graph/z0;

    iput-object v2, p0, Lcom/android/tools/r8/graph/w0;->f:Lcom/android/tools/r8/graph/z0;

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/x0;->h()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 12
    iget-object v0, p1, Lcom/android/tools/r8/graph/x0;->a:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/x0;->g()Lcom/android/tools/r8/naming/b;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/w0;->d:Lcom/android/tools/r8/naming/b;

    .line 14
    iget-object v0, p1, Lcom/android/tools/r8/graph/x0;->c:Lcom/android/tools/r8/internal/ns0;

    iput-object v0, p0, Lcom/android/tools/r8/graph/w0;->e:Lcom/android/tools/r8/internal/ns0;

    .line 15
    iget-object p1, p1, Lcom/android/tools/r8/graph/x0;->d:Lcom/android/tools/r8/internal/nJ;

    iput-object p1, p0, Lcom/android/tools/r8/graph/w0;->c:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/w0;->a:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/w0;->b:Ljava/util/ArrayList;

    .line 4
    iput-object p1, p0, Lcom/android/tools/r8/graph/w0;->c:Lcom/android/tools/r8/internal/nJ;

    .line 5
    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    .line 6
    iput-object p2, p0, Lcom/android/tools/r8/graph/w0;->e:Lcom/android/tools/r8/internal/ns0;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/graph/g3$a;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized a(Ljava/util/AbstractCollection;)Lcom/android/tools/r8/graph/w0;
    .locals 8

    monitor-enter p0

    .line 6
    :try_start_0
    sget-boolean v0, Lcom/android/tools/r8/graph/w0;->g:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/w0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/graph/w0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9
    new-instance p1, Lcom/android/tools/r8/graph/y0;

    invoke-direct {p1}, Lcom/android/tools/r8/graph/y0;-><init>()V

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/graph/w0;->f:Lcom/android/tools/r8/graph/z0;

    .line 11
    iget-boolean v1, v0, Lcom/android/tools/r8/graph/z0;->a:Z

    .line 12
    iput-boolean v1, p1, Lcom/android/tools/r8/graph/y0;->a:Z

    .line 13
    iget-boolean v0, v0, Lcom/android/tools/r8/graph/z0;->b:Z

    .line 14
    iput-boolean v0, p1, Lcom/android/tools/r8/graph/y0;->b:Z

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/graph/w0;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/graph/eh;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/graph/eh;-><init>(Lcom/android/tools/r8/graph/w0;Lcom/android/tools/r8/graph/y0;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 16
    new-instance v0, Lcom/android/tools/r8/graph/z0;

    iget-boolean v3, p1, Lcom/android/tools/r8/graph/y0;->a:Z

    iget-boolean v4, p1, Lcom/android/tools/r8/graph/y0;->b:Z

    iget-object v1, p1, Lcom/android/tools/r8/graph/y0;->c:Lcom/android/tools/r8/internal/IC;

    .line 17
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v5

    iget-object v1, p1, Lcom/android/tools/r8/graph/y0;->d:Lcom/android/tools/r8/internal/IC;

    .line 18
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v6

    iget-object p1, p1, Lcom/android/tools/r8/graph/y0;->e:Lcom/android/tools/r8/internal/IC;

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/tools/r8/graph/z0;-><init>(ZZLcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;)V

    .line 20
    iput-object v0, p0, Lcom/android/tools/r8/graph/w0;->f:Lcom/android/tools/r8/graph/z0;

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/w0;->c()Lcom/android/tools/r8/graph/w0;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/w0;
    .locals 1

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/w0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/w0;->c()Lcom/android/tools/r8/graph/w0;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/android/tools/r8/DataResourceProvider;)V
    .locals 1

    monitor-enter p0

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/w0;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public abstract a(Lcom/android/tools/r8/graph/H2;)V
.end method

.method public final a(Lcom/android/tools/r8/graph/y0;Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 22
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/graph/w0;->f:Lcom/android/tools/r8/graph/z0;

    .line 24
    iget-object v0, v0, Lcom/android/tools/r8/graph/z0;->c:Lcom/android/tools/r8/internal/QC;

    .line 25
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p1, Lcom/android/tools/r8/graph/y0;->c:Lcom/android/tools/r8/internal/IC;

    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    iget-object v1, p1, Lcom/android/tools/r8/graph/y0;->c:Lcom/android/tools/r8/internal/IC;

    invoke-virtual {v1, p2}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    .line 29
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 30
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/w0;->f:Lcom/android/tools/r8/graph/z0;

    .line 31
    iget-object v0, v0, Lcom/android/tools/r8/graph/z0;->d:Lcom/android/tools/r8/internal/QC;

    .line 32
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/y0;->b(Lcom/android/tools/r8/graph/M2;)V

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/graph/w0;->f:Lcom/android/tools/r8/graph/z0;

    .line 35
    iget-object v0, v0, Lcom/android/tools/r8/graph/z0;->e:Lcom/android/tools/r8/internal/QC;

    .line 36
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/y0;->a(Lcom/android/tools/r8/graph/M2;)V

    :cond_2
    return-void
.end method

.method public final declared-synchronized a(Lcom/android/tools/r8/naming/b;)V
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    sget-boolean v0, Lcom/android/tools/r8/graph/w0;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/w0;->d:Lcom/android/tools/r8/naming/b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/graph/w0;->d:Lcom/android/tools/r8/naming/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public abstract b()Lcom/android/tools/r8/graph/x0;
.end method

.method public abstract c()Lcom/android/tools/r8/graph/w0;
.end method
