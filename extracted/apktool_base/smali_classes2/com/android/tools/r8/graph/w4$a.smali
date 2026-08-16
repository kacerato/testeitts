.class public Lcom/android/tools/r8/graph/w4$a;
.super Lcom/android/tools/r8/graph/w0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/w4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/graph/w0;"
    }
.end annotation


# instance fields
.field public h:Lcom/android/tools/r8/internal/je;

.field public i:Lcom/android/tools/r8/internal/TR;

.field public j:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/w4;)V
    .locals 1

    .line 7
    invoke-direct {p0, p1}, Lcom/android/tools/r8/graph/w0;-><init>(Lcom/android/tools/r8/graph/x0;)V

    .line 8
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/graph/w4$a;->j:Ljava/util/List;

    .line 9
    iget-object v0, p1, Lcom/android/tools/r8/graph/w4;->i:Lcom/android/tools/r8/internal/je;

    iput-object v0, p0, Lcom/android/tools/r8/graph/w4$a;->h:Lcom/android/tools/r8/internal/je;

    .line 10
    iget-object p1, p1, Lcom/android/tools/r8/graph/w4;->j:Lcom/android/tools/r8/internal/TR;

    iput-object p1, p0, Lcom/android/tools/r8/graph/w4$a;->i:Lcom/android/tools/r8/internal/TR;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/graph/w0;-><init>(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)V

    .line 2
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lcom/android/tools/r8/graph/w4$a;->j:Ljava/util/List;

    .line 3
    new-instance p1, Lcom/android/tools/r8/internal/je;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/je;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/tools/r8/graph/w4$a;->h:Lcom/android/tools/r8/internal/je;

    .line 5
    new-instance p1, Lcom/android/tools/r8/internal/TR;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/TR;-><init>(Lcom/android/tools/r8/internal/Ud;)V

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/graph/w4$a;->i:Lcom/android/tools/r8/internal/TR;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/w0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/tools/r8/graph/w4$a;->h:Lcom/android/tools/r8/internal/je;

    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v2, v0, Lcom/android/tools/r8/internal/jd;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/tools/r8/internal/jd;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Ud;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/jd;->b:Ljava/util/concurrent/atomic/AtomicReference;

    sget v3, Lcom/android/tools/r8/internal/QC;->c:I

    new-instance v3, Lcom/android/tools/r8/internal/Tm0;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/Tm0;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/Ud;->a(Lcom/android/tools/r8/internal/Tm0;)Lcom/android/tools/r8/internal/Sd;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/w4$a;->i:Lcom/android/tools/r8/internal/TR;

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v1, v0, Lcom/android/tools/r8/internal/jd;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/tools/r8/internal/jd;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Ud;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v0, v0, Lcom/android/tools/r8/internal/jd;->b:Ljava/util/concurrent/atomic/AtomicReference;

    sget v2, Lcom/android/tools/r8/internal/QC;->c:I

    new-instance v2, Lcom/android/tools/r8/internal/Tm0;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/internal/Tm0;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Ud;->a(Lcom/android/tools/r8/internal/Tm0;)Lcom/android/tools/r8/internal/Sd;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final bridge synthetic b()Lcom/android/tools/r8/graph/x0;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/w4$a;->d()Lcom/android/tools/r8/graph/w4;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/graph/w0;
    .locals 0

    return-object p0
.end method

.method public d()Lcom/android/tools/r8/graph/w4;
    .locals 12

    iget-object v0, p0, Lcom/android/tools/r8/graph/w0;->c:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, v0, Lcom/android/tools/r8/internal/nJ;->m:Lcom/android/tools/r8/dex/b;

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/a80;->a(Lcom/android/tools/r8/ClassConflictResolver;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/dex/b;

    move-result-object v1

    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/w4;

    iget-object v3, p0, Lcom/android/tools/r8/graph/w0;->d:Lcom/android/tools/r8/naming/b;

    iget-object v4, p0, Lcom/android/tools/r8/graph/w0;->f:Lcom/android/tools/r8/graph/z0;

    iget-object v2, p0, Lcom/android/tools/r8/graph/w0;->a:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/a80;->a(Ljava/util/ArrayList;Lcom/android/tools/r8/dex/b;)Lcom/android/tools/r8/internal/a80;

    move-result-object v5

    iget-object v1, p0, Lcom/android/tools/r8/graph/w0;->b:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/hC;

    move-result-object v6

    iget-object v7, p0, Lcom/android/tools/r8/graph/w4$a;->h:Lcom/android/tools/r8/internal/je;

    iget-object v8, p0, Lcom/android/tools/r8/graph/w4$a;->i:Lcom/android/tools/r8/internal/TR;

    iget-object v9, p0, Lcom/android/tools/r8/graph/w4$a;->j:Ljava/util/List;

    iget-object v10, p0, Lcom/android/tools/r8/graph/w0;->c:Lcom/android/tools/r8/internal/nJ;

    iget-object v11, p0, Lcom/android/tools/r8/graph/w0;->e:Lcom/android/tools/r8/internal/ns0;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/android/tools/r8/graph/w4;-><init>(Lcom/android/tools/r8/naming/b;Lcom/android/tools/r8/graph/z0;Lcom/android/tools/r8/internal/a80;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/je;Lcom/android/tools/r8/internal/TR;Ljava/util/List;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)V

    return-object v0
.end method
