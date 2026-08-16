.class public final Lcom/android/tools/r8/internal/p3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic l:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/Et;

.field public final c:Lcom/android/tools/r8/internal/Sw;

.field public final d:Lcom/android/tools/r8/internal/bX;

.field public final e:Ljava/util/Set;

.field public final f:Lcom/android/tools/r8/internal/D3;

.field public final g:Ljava/util/IdentityHashMap;

.field public final h:Lcom/android/tools/r8/internal/Mw;

.field public final i:Lcom/android/tools/r8/internal/f80;

.field public final j:Lcom/android/tools/r8/internal/zX;

.field public k:Lcom/android/tools/r8/internal/aD;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Et;Lcom/android/tools/r8/internal/D3;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/Sw;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Sw;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/p3;->c:Lcom/android/tools/r8/internal/Sw;

    new-instance v0, Lcom/android/tools/r8/internal/bX;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/bX;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/p3;->d:Lcom/android/tools/r8/internal/bX;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/p3;->e:Ljava/util/Set;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/p3;->g:Ljava/util/IdentityHashMap;

    new-instance v0, Lcom/android/tools/r8/internal/Mw;

    invoke-static {}, Lcom/android/tools/r8/internal/e80;->l()Lcom/android/tools/r8/internal/e80;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Mw;-><init>(Lcom/android/tools/r8/internal/e80;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/p3;->h:Lcom/android/tools/r8/internal/Mw;

    new-instance v0, Lcom/android/tools/r8/internal/f80;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/f80;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/p3;->i:Lcom/android/tools/r8/internal/f80;

    new-instance v0, Lcom/android/tools/r8/internal/zX;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/zX;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/p3;->j:Lcom/android/tools/r8/internal/zX;

    new-instance v0, Lcom/android/tools/r8/internal/aD;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/aD;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/p3;->k:Lcom/android/tools/r8/internal/aD;

    iput-object p1, p0, Lcom/android/tools/r8/internal/p3;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/p3;->b:Lcom/android/tools/r8/internal/Et;

    iput-object p3, p0, Lcom/android/tools/r8/internal/p3;->f:Lcom/android/tools/r8/internal/D3;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Km;)V
    .locals 6

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/p3;->e:Ljava/util/Set;

    new-instance v1, Lcom/android/tools/r8/internal/eG0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/eG0;-><init>()V

    .line 7
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    .line 9
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/A2;->j0()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/android/tools/r8/internal/Km;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/p3;->g:Ljava/util/IdentityHashMap;

    .line 11
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/eG0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/eG0;-><init>()V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    .line 13
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/A2;->j0()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/tools/r8/internal/p3;->g:Ljava/util/IdentityHashMap;

    invoke-virtual {v5, v3}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/A2;->j0()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-interface {p1, v3}, Lcom/android/tools/r8/internal/Km;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Nm;)V
    .locals 1

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/rp1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/rp1;-><init>(Lcom/android/tools/r8/internal/p3;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Nm;->a(Lcom/android/tools/r8/internal/Wr0;)V

    return-void
.end method

.method public final declared-synchronized a(Ljava/util/IdentityHashMap;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/p3;->g:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->putAll(Ljava/util/Map;)V
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

.method public final a(Lcom/android/tools/r8/graph/H5;)Z
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/p3;->e:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 4
    sget-boolean v1, Lcom/android/tools/r8/internal/p3;->l:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->J0()Z

    move-result p1

    if-nez p1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return v0
.end method
