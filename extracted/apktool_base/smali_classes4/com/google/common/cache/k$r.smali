.class public Lcom/google/common/cache/k$r;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "r"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/ReentrantLock;"
    }
.end annotation


# instance fields
.field public final b:Lcom/google/common/cache/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/k<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lq3/i;
    .end annotation
.end field

.field public volatile c:I

.field public d:J
    .annotation build LJ2/a;
        value = "this"
    .end annotation
.end field

.field public e:I

.field public f:I

.field public volatile g:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public final h:J

.field public final i:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public final j:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public final k:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final m:Ljava/util/Queue;
    .annotation build LJ2/a;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field public final n:Ljava/util/Queue;
    .annotation build LJ2/a;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field public final o:Lcom/google/common/cache/a$b;


# direct methods
.method public constructor <init>(Lcom/google/common/cache/k;IJLcom/google/common/cache/a$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/k<",
            "TK;TV;>;IJ",
            "Lcom/google/common/cache/a$b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/common/cache/k$r;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    iput-wide p3, p0, Lcom/google/common/cache/k$r;->h:J

    invoke-static {p5}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/common/cache/a$b;

    iput-object p3, p0, Lcom/google/common/cache/k$r;->o:Lcom/google/common/cache/a$b;

    invoke-virtual {p0, p2}, Lcom/google/common/cache/k$r;->F(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/common/cache/k$r;->z(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    invoke-virtual {p1}, Lcom/google/common/cache/k;->Y()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p2}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    iput-object p2, p0, Lcom/google/common/cache/k$r;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p1}, Lcom/google/common/cache/k;->Z()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p3, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p3}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :cond_1
    iput-object p3, p0, Lcom/google/common/cache/k$r;->j:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p1}, Lcom/google/common/cache/k;->X()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/google/common/cache/k;->k()Ljava/util/Queue;

    move-result-object p2

    :goto_1
    iput-object p2, p0, Lcom/google/common/cache/k$r;->k:Ljava/util/Queue;

    invoke-virtual {p1}, Lcom/google/common/cache/k;->b0()Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Lcom/google/common/cache/k$K;

    invoke-direct {p2}, Lcom/google/common/cache/k$K;-><init>()V

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/google/common/cache/k;->k()Ljava/util/Queue;

    move-result-object p2

    :goto_2
    iput-object p2, p0, Lcom/google/common/cache/k$r;->m:Ljava/util/Queue;

    invoke-virtual {p1}, Lcom/google/common/cache/k;->X()Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lcom/google/common/cache/k$e;

    invoke-direct {p1}, Lcom/google/common/cache/k$e;-><init>()V

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/google/common/cache/k;->k()Ljava/util/Queue;

    move-result-object p1

    :goto_3
    iput-object p1, p0, Lcom/google/common/cache/k$r;->n:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Object;IZ)Lcom/google/common/cache/k$m;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;IZ)",
            "Lcom/google/common/cache/k$m<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    iget-object v0, v0, Lcom/google/common/cache/k;->q:Lw2/U;

    invoke-virtual {v0}, Lw2/U;->a()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/k$r;->I(J)V

    iget-object v2, p0, Lcom/google/common/cache/k$r;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v3, p2

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/cache/p;

    move-object v5, v4

    :goto_0
    if-eqz v5, :cond_3

    invoke-interface {v5}, Lcom/google/common/cache/p;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5}, Lcom/google/common/cache/p;->b()I

    move-result v7

    if-ne v7, p2, :cond_2

    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    iget-object v7, v7, Lcom/google/common/cache/k;->f:Lw2/m;

    invoke-virtual {v7, p1, v6}, Lw2/m;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Lcom/google/common/cache/p;->a()Lcom/google/common/cache/k$A;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/cache/k$A;->d()Z

    move-result p2

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    invoke-interface {v5}, Lcom/google/common/cache/p;->g()J

    move-result-wide p2

    sub-long/2addr v0, p2

    iget-object p2, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    iget-wide p2, p2, Lcom/google/common/cache/k;->n:J

    cmp-long p2, v0, p2

    if-gez p2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget p2, p0, Lcom/google/common/cache/k$r;->e:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/common/cache/k$r;->e:I

    new-instance p2, Lcom/google/common/cache/k$m;

    invoke-direct {p2, p1}, Lcom/google/common/cache/k$m;-><init>(Lcom/google/common/cache/k$A;)V

    invoke-interface {v5, p2}, Lcom/google/common/cache/p;->e(Lcom/google/common/cache/k$A;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->H()V

    return-object p2

    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->H()V

    const/4 p1, 0x0

    return-object p1

    :cond_2
    :try_start_1
    invoke-interface {v5}, Lcom/google/common/cache/p;->getNext()Lcom/google/common/cache/p;

    move-result-object v5

    goto :goto_0

    :cond_3
    iget p3, p0, Lcom/google/common/cache/k$r;->e:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/google/common/cache/k$r;->e:I

    new-instance p3, Lcom/google/common/cache/k$m;

    invoke-direct {p3}, Lcom/google/common/cache/k$m;-><init>()V

    invoke-virtual {p0, p1, p2, v4}, Lcom/google/common/cache/k$r;->E(Ljava/lang/Object;ILcom/google/common/cache/p;)Lcom/google/common/cache/p;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/google/common/cache/p;->e(Lcom/google/common/cache/k$A;)V

    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->H()V

    return-object p3

    :goto_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->H()V

    throw p1
.end method

.method public B(Ljava/lang/Object;ILcom/google/common/cache/k$m;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/Z;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/k$m<",
            "TK;TV;>;",
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;)",
            "Lcom/google/common/util/concurrent/Z<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p3, p1, p4}, Lcom/google/common/cache/k$m;->i(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/Z;

    move-result-object p4

    new-instance v6, Lcom/google/common/cache/k$r$a;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/common/cache/k$r$a;-><init>(Lcom/google/common/cache/k$r;Ljava/lang/Object;ILcom/google/common/cache/k$m;Lcom/google/common/util/concurrent/Z;)V

    invoke-static {}, Lcom/google/common/util/concurrent/g0;->c()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p4, v6, p1}, Lcom/google/common/util/concurrent/Z;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p4
.end method

.method public C(Ljava/lang/Object;ILcom/google/common/cache/k$m;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/k$m<",
            "TK;TV;>;",
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-virtual {p3, p1, p4}, Lcom/google/common/cache/k$m;->i(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/Z;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/cache/k$r;->s(Ljava/lang/Object;ILcom/google/common/cache/k$m;Lcom/google/common/util/concurrent/Z;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public D(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move/from16 v8, p2

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, v7, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    iget-object v1, v1, Lcom/google/common/cache/k;->q:Lw2/U;

    invoke-virtual {v1}, Lw2/U;->a()J

    move-result-wide v1

    invoke-virtual {v7, v1, v2}, Lcom/google/common/cache/k$r;->I(J)V

    iget v3, v7, Lcom/google/common/cache/k$r;->c:I

    const/4 v9, 0x1

    add-int/lit8 v10, v3, -0x1

    iget-object v11, v7, Lcom/google/common/cache/k$r;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    sub-int/2addr v3, v9

    and-int v12, v8, v3

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/google/common/cache/p;

    move-object v14, v13

    :goto_0
    const/4 v15, 0x0

    if-eqz v14, :cond_4

    invoke-interface {v14}, Lcom/google/common/cache/p;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v14}, Lcom/google/common/cache/p;->b()I

    move-result v4

    if-ne v4, v8, :cond_3

    if-eqz v3, :cond_3

    iget-object v4, v7, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    iget-object v4, v4, Lcom/google/common/cache/k;->f:Lw2/m;

    invoke-virtual {v4, v0, v3}, Lw2/m;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v14}, Lcom/google/common/cache/p;->a()Lcom/google/common/cache/k$A;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/google/common/cache/k$A;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    :goto_1
    move-object/from16 v2, v16

    goto :goto_3

    :cond_0
    invoke-interface/range {v16 .. v16}, Lcom/google/common/cache/k$A;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-interface/range {v16 .. v16}, Lcom/google/common/cache/k$A;->getWeight()I

    move-result v5

    sget-object v6, Lcom/google/common/cache/q;->COLLECTED:Lcom/google/common/cache/q;

    move-object/from16 v1, p0

    move-object v2, v3

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/k$r;->m(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/q;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    iget-object v5, v7, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    invoke-virtual {v5, v14, v1, v2}, Lcom/google/common/cache/k;->y(Lcom/google/common/cache/p;J)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface/range {v16 .. v16}, Lcom/google/common/cache/k$A;->getWeight()I

    move-result v5

    sget-object v6, Lcom/google/common/cache/q;->EXPIRED:Lcom/google/common/cache/q;

    move-object/from16 v1, p0

    move-object v2, v3

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/k$r;->m(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/q;)V

    :goto_2
    iget-object v1, v7, Lcom/google/common/cache/k$r;->m:Ljava/util/Queue;

    invoke-interface {v1, v14}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object v1, v7, Lcom/google/common/cache/k$r;->n:Ljava/util/Queue;

    invoke-interface {v1, v14}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iput v10, v7, Lcom/google/common/cache/k$r;->c:I

    move v1, v9

    goto :goto_1

    :cond_2
    invoke-virtual {v7, v14, v1, v2}, Lcom/google/common/cache/k$r;->M(Lcom/google/common/cache/p;J)V

    iget-object v0, v7, Lcom/google/common/cache/k$r;->o:Lcom/google/common/cache/a$b;

    invoke-interface {v0, v9}, Lcom/google/common/cache/a$b;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/k$r;->H()V

    return-object v4

    :cond_3
    :try_start_1
    invoke-interface {v14}, Lcom/google/common/cache/p;->getNext()Lcom/google/common/cache/p;

    move-result-object v14

    goto :goto_0

    :cond_4
    move v1, v9

    move-object v2, v15

    :goto_3
    if-eqz v1, :cond_6

    new-instance v15, Lcom/google/common/cache/k$m;

    invoke-direct {v15}, Lcom/google/common/cache/k$m;-><init>()V

    if-nez v14, :cond_5

    invoke-virtual {v7, v0, v8, v13}, Lcom/google/common/cache/k$r;->E(Ljava/lang/Object;ILcom/google/common/cache/p;)Lcom/google/common/cache/p;

    move-result-object v14

    invoke-interface {v14, v15}, Lcom/google/common/cache/p;->e(Lcom/google/common/cache/k$A;)V

    invoke-virtual {v11, v12, v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_4

    :cond_5
    invoke-interface {v14, v15}, Lcom/google/common/cache/p;->e(Lcom/google/common/cache/k$A;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/k$r;->H()V

    if-eqz v1, :cond_7

    :try_start_2
    monitor-enter v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v1, p3

    :try_start_3
    invoke-virtual {v7, v0, v8, v15, v1}, Lcom/google/common/cache/k$r;->C(Ljava/lang/Object;ILcom/google/common/cache/k$m;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v1, v7, Lcom/google/common/cache/k$r;->o:Lcom/google/common/cache/a$b;

    invoke-interface {v1, v9}, Lcom/google/common/cache/a$b;->d(I)V

    return-object v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    iget-object v1, v7, Lcom/google/common/cache/k$r;->o:Lcom/google/common/cache/a$b;

    invoke-interface {v1, v9}, Lcom/google/common/cache/a$b;->d(I)V

    throw v0

    :cond_7
    invoke-virtual {v7, v14, v0, v2}, Lcom/google/common/cache/k$r;->g0(Lcom/google/common/cache/p;Ljava/lang/Object;Lcom/google/common/cache/k$A;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :goto_5
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/k$r;->H()V

    throw v0
.end method

.method public E(Ljava/lang/Object;ILcom/google/common/cache/p;)Lcom/google/common/cache/p;
    .locals 1
    .param p3    # Lcom/google/common/cache/p;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation build LJ2/a;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    iget-object v0, v0, Lcom/google/common/cache/k;->r:Lcom/google/common/cache/k$f;

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/common/cache/k$f;->g(Lcom/google/common/cache/k$r;Ljava/lang/Object;ILcom/google/common/cache/p;)Lcom/google/common/cache/p;

    move-result-object p1

    return-object p1
.end method

.method public F(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method public G()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/k$r;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->a()V

    :cond_0
    return-void
.end method

.method public H()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->a0()V

    return-void
.end method

.method public I(J)V
    .locals 0
    .annotation build LJ2/a;
        value = "this"
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/k$r;->Z(J)V

    return-void
.end method

.method public J(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    move-object v7, p0

    move-object v0, p1

    move/from16 v3, p2

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, v7, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    iget-object v1, v1, Lcom/google/common/cache/k;->q:Lw2/U;

    invoke-virtual {v1}, Lw2/U;->a()J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/google/common/cache/k$r;->I(J)V

    iget v1, v7, Lcom/google/common/cache/k$r;->c:I

    add-int/lit8 v1, v1, 0x1

    iget v2, v7, Lcom/google/common/cache/k$r;->f:I

    if-le v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->o()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    :goto_0
    iget-object v10, v7, Lcom/google/common/cache/k$r;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v11, v3, v1

    invoke-virtual {v10, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/p;

    move-object v12, v1

    :goto_1
    const/4 v13, 0x0

    if-eqz v12, :cond_5

    invoke-interface {v12}, Lcom/google/common/cache/p;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v12}, Lcom/google/common/cache/p;->b()I

    move-result v4

    if-ne v4, v3, :cond_4

    if-eqz v2, :cond_4

    iget-object v4, v7, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    iget-object v4, v4, Lcom/google/common/cache/k;->f:Lw2/m;

    invoke-virtual {v4, p1, v2}, Lw2/m;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v12}, Lcom/google/common/cache/p;->a()Lcom/google/common/cache/k$A;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/cache/k$A;->get()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_2

    iget v2, v7, Lcom/google/common/cache/k$r;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v7, Lcom/google/common/cache/k$r;->e:I

    invoke-interface {v1}, Lcom/google/common/cache/k$A;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lcom/google/common/cache/k$A;->getWeight()I

    move-result v5

    sget-object v6, Lcom/google/common/cache/q;->COLLECTED:Lcom/google/common/cache/q;

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object v4, v10

    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/k$r;->m(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/q;)V

    move-object v1, p0

    move-object v2, v12

    move-object v3, p1

    move-object/from16 v4, p3

    move-wide v5, v8

    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/k$r;->c0(Lcom/google/common/cache/p;Ljava/lang/Object;Ljava/lang/Object;J)V

    iget v0, v7, Lcom/google/common/cache/k$r;->c:I

    goto :goto_2

    :cond_1
    move-object v1, p0

    move-object v2, v12

    move-object v3, p1

    move-object/from16 v4, p3

    move-wide v5, v8

    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/k$r;->c0(Lcom/google/common/cache/p;Ljava/lang/Object;Ljava/lang/Object;J)V

    iget v0, v7, Lcom/google/common/cache/k$r;->c:I

    add-int/lit8 v0, v0, 0x1

    :goto_2
    iput v0, v7, Lcom/google/common/cache/k$r;->c:I

    invoke-virtual {p0, v12}, Lcom/google/common/cache/k$r;->n(Lcom/google/common/cache/p;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->H()V

    return-object v13

    :cond_2
    if-eqz p4, :cond_3

    :try_start_1
    invoke-virtual {p0, v12, v8, v9}, Lcom/google/common/cache/k$r;->M(Lcom/google/common/cache/p;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->H()V

    return-object v10

    :cond_3
    :try_start_2
    iget v2, v7, Lcom/google/common/cache/k$r;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v7, Lcom/google/common/cache/k$r;->e:I

    invoke-interface {v1}, Lcom/google/common/cache/k$A;->getWeight()I

    move-result v5

    sget-object v6, Lcom/google/common/cache/q;->REPLACED:Lcom/google/common/cache/q;

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object v4, v10

    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/k$r;->m(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/q;)V

    move-object v1, p0

    move-object v2, v12

    move-object v3, p1

    move-object/from16 v4, p3

    move-wide v5, v8

    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/k$r;->c0(Lcom/google/common/cache/p;Ljava/lang/Object;Ljava/lang/Object;J)V

    invoke-virtual {p0, v12}, Lcom/google/common/cache/k$r;->n(Lcom/google/common/cache/p;)V

    goto :goto_4

    :cond_4
    invoke-interface {v12}, Lcom/google/common/cache/p;->getNext()Lcom/google/common/cache/p;

    move-result-object v12

    goto/16 :goto_1

    :cond_5
    iget v2, v7, Lcom/google/common/cache/k$r;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v7, Lcom/google/common/cache/k$r;->e:I

    invoke-virtual {p0, p1, v3, v1}, Lcom/google/common/cache/k$r;->E(Ljava/lang/Object;ILcom/google/common/cache/p;)Lcom/google/common/cache/p;

    move-result-object v12

    move-object v1, p0

    move-object v2, v12

    move-object v3, p1

    move-object/from16 v4, p3

    move-wide v5, v8

    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/k$r;->c0(Lcom/google/common/cache/p;Ljava/lang/Object;Ljava/lang/Object;J)V

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iget v0, v7, Lcom/google/common/cache/k$r;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v7, Lcom/google/common/cache/k$r;->c:I

    invoke-virtual {p0, v12}, Lcom/google/common/cache/k$r;->n(Lcom/google/common/cache/p;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_5
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->H()V

    throw v0
.end method

.method public K(Lcom/google/common/cache/p;I)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;I)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/k$r;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/google/common/cache/p;

    move-object v6, v5

    :goto_0
    if-eqz v6, :cond_1

    if-ne v6, p1, :cond_0

    iget p1, p0, Lcom/google/common/cache/k$r;->e:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/common/cache/k$r;->e:I

    invoke-interface {v6}, Lcom/google/common/cache/p;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6}, Lcom/google/common/cache/p;->a()Lcom/google/common/cache/k$A;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/cache/k$A;->get()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6}, Lcom/google/common/cache/p;->a()Lcom/google/common/cache/k$A;

    move-result-object v10

    sget-object v11, Lcom/google/common/cache/q;->COLLECTED:Lcom/google/common/cache/q;

    move-object v4, p0

    move v8, p2

    invoke-virtual/range {v4 .. v11}, Lcom/google/common/cache/k$r;->W(Lcom/google/common/cache/p;Lcom/google/common/cache/p;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/k$A;Lcom/google/common/cache/q;)Lcom/google/common/cache/p;

    move-result-object p1

    iget p2, p0, Lcom/google/common/cache/k$r;->c:I

    sub-int/2addr p2, v2

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput p2, p0, Lcom/google/common/cache/k$r;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->H()V

    return v2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-interface {v6}, Lcom/google/common/cache/p;->getNext()Lcom/google/common/cache/p;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->H()V

    const/4 p1, 0x0

    return p1

    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->H()V

    throw p1
.end method

.method public L(Ljava/lang/Object;ILcom/google/common/cache/k$A;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/k$A<",
            "TK;TV;>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/k$r;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/google/common/cache/p;

    move-object v6, v5

    :goto_0
    const/4 v3, 0x0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Lcom/google/common/cache/p;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6}, Lcom/google/common/cache/p;->b()I

    move-result v4

    if-ne v4, p2, :cond_3

    if-eqz v7, :cond_3

    iget-object v4, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    iget-object v4, v4, Lcom/google/common/cache/k;->f:Lw2/m;

    invoke-virtual {v4, p1, v7}, Lw2/m;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v6}, Lcom/google/common/cache/p;->a()Lcom/google/common/cache/k$A;

    move-result-object p1

    if-ne p1, p3, :cond_1

    iget p1, p0, Lcom/google/common/cache/k$r;->e:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/common/cache/k$r;->e:I

    invoke-interface {p3}, Lcom/google/common/cache/k$A;->get()Ljava/lang/Object;

    move-result-object v9

    sget-object v11, Lcom/google/common/cache/q;->COLLECTED:Lcom/google/common/cache/q;

    move-object v4, p0

    move v8, p2

    move-object v10, p3

    invoke-virtual/range {v4 .. v11}, Lcom/google/common/cache/k$r;->W(Lcom/google/common/cache/p;Lcom/google/common/cache/p;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/k$A;Lcom/google/common/cache/q;)Lcom/google/common/cache/p;

    move-result-object p1

    iget p2, p0, Lcom/google/common/cache/k$r;->c:I

    sub-int/2addr p2, v2

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput p2, p0, Lcom/google/common/cache/k$r;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->H()V

    :cond_0
    return v2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->H()V

    :cond_2
    return v3

    :cond_3
    :try_start_1
    invoke-interface {v6}, Lcom/google/common/cache/p;->getNext()Lcom/google/common/cache/p;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->H()V

    :cond_5
    return v3

    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->H()V

    :cond_6
    throw p1
.end method

.method public M(Lcom/google/common/cache/p;J)V
    .locals 1
    .annotation build LJ2/a;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;J)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    invoke-virtual {v0}, Lcom/google/common/cache/k;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2, p3}, Lcom/google/common/cache/p;->h(J)V

    :cond_0
    iget-object p2, p0, Lcom/google/common/cache/k$r;->n:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public N(Lcom/google/common/cache/p;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;J)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    invoke-virtual {v0}, Lcom/google/common/cache/k;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2, p3}, Lcom/google/common/cache/p;->h(J)V

    :cond_0
    iget-object p2, p0, Lcom/google/common/cache/k$r;->k:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public O(Lcom/google/common/cache/p;IJ)V
    .locals 4
    .annotation build LJ2/a;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;IJ)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->j()V

    iget-wide v0, p0, Lcom/google/common/cache/k$r;->d:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/cache/k$r;->d:J

    iget-object p2, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    invoke-virtual {p2}, Lcom/google/common/cache/k;->M()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1, p3, p4}, Lcom/google/common/cache/p;->h(J)V

    :cond_0
    iget-object p2, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    invoke-virtual {p2}, Lcom/google/common/cache/k;->O()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1, p3, p4}, Lcom/google/common/cache/p;->i(J)V

    :cond_1
    iget-object p2, p0, Lcom/google/common/cache/k$r;->n:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/google/common/cache/k$r;->m:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public P(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;Z)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0, p1, p2, p4}, Lcom/google/common/cache/k$r;->A(Ljava/lang/Object;IZ)Lcom/google/common/cache/k$m;

    move-result-object p4

    const/4 v0, 0x0

    if-nez p4, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/google/common/cache/k$r;->B(Ljava/lang/Object;ILcom/google/common/cache/k$m;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/Z;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p2

    if-eqz p2, :cond_1

    :try_start_0
    invoke-static {p1}, Lcom/google/common/util/concurrent/H0;->f(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    :cond_1
    return-object v0
.end method

.method public Q(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    iget-object v0, v0, Lcom/google/common/cache/k;->q:Lw2/U;

    invoke-virtual {v0}, Lw2/U;->a()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/k$r;->I(J)V

    iget-object v0, p0, Lcom/google/common/cache/k$r;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/google/common/cache/p;

    move-object v5, v4

    :goto_0
    const/4 v2, 0x0

    if-eqz v5, :cond_1

    invoke-interface {v5}, Lcom/google/common/cache/p;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5}, Lcom/google/common/cache/p;->b()I

    move-result v3

    if-ne v3, p2, :cond_2

    if-eqz v6, :cond_2

    iget-object v3, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    iget-object v3, v3, Lcom/google/common/cache/k;->f:Lw2/m;

    invoke-virtual {v3, p1, v6}, Lw2/m;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v5}, Lcom/google/common/cache/p;->a()Lcom/google/common/cache/k$A;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/common/cache/k$A;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v2, Lcom/google/common/cache/q;->EXPLICIT:Lcom/google/common/cache/q;

    :goto_1
    move-object v10, v2

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    invoke-interface {v9}, Lcom/google/common/cache/k$A;->isActive()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v2, Lcom/google/common/cache/q;->COLLECTED:Lcom/google/common/cache/q;

    goto :goto_1

    :goto_2
    iget v2, p0, Lcom/google/common/cache/k$r;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/cache/k$r;->e:I

    move-object v3, p0

    move v7, p2

    move-object v8, p1

    invoke-virtual/range {v3 .. v10}, Lcom/google/common/cache/k$r;->W(Lcom/google/common/cache/p;Lcom/google/common/cache/p;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/k$A;Lcom/google/common/cache/q;)Lcom/google/common/cache/p;

    move-result-object p2

    iget v2, p0, Lcom/google/common/cache/k$r;->c:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v2, p0, Lcom/google/common/cache/k$r;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->H()V

    return-object p1

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->H()V

    return-object v2

    :cond_2
    :try_start_1
    invoke-interface {v5}, Lcom/google/common/cache/p;->getNext()Lcom/google/common/cache/p;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_3
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->H()V

    throw p1
.end method

.method public R(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 12

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    iget-object v0, v0, Lcom/google/common/cache/k;->q:Lw2/U;

    invoke-virtual {v0}, Lw2/U;->a()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/k$r;->I(J)V

    iget-object v0, p0, Lcom/google/common/cache/k$r;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/google/common/cache/p;

    move-object v6, v5

    :goto_0
    const/4 v3, 0x0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Lcom/google/common/cache/p;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6}, Lcom/google/common/cache/p;->b()I

    move-result v4

    if-ne v4, p2, :cond_3

    if-eqz v7, :cond_3

    iget-object v4, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    iget-object v4, v4, Lcom/google/common/cache/k;->f:Lw2/m;

    invoke-virtual {v4, p1, v7}, Lw2/m;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v6}, Lcom/google/common/cache/p;->a()Lcom/google/common/cache/k$A;

    move-result-object v10

    invoke-interface {v10}, Lcom/google/common/cache/k$A;->get()Ljava/lang/Object;

    move-result-object v9

    iget-object p1, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    iget-object p1, p1, Lcom/google/common/cache/k;->g:Lw2/m;

    invoke-virtual {p1, p3, v9}, Lw2/m;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/common/cache/q;->EXPLICIT:Lcom/google/common/cache/q;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    if-nez v9, :cond_2

    invoke-interface {v10}, Lcom/google/common/cache/k$A;->isActive()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/google/common/cache/q;->COLLECTED:Lcom/google/common/cache/q;

    :goto_1
    iget p3, p0, Lcom/google/common/cache/k$r;->e:I

    add-int/2addr p3, v2

    iput p3, p0, Lcom/google/common/cache/k$r;->e:I

    move-object v4, p0

    move v8, p2

    move-object v11, p1

    invoke-virtual/range {v4 .. v11}, Lcom/google/common/cache/k$r;->W(Lcom/google/common/cache/p;Lcom/google/common/cache/p;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/k$A;Lcom/google/common/cache/q;)Lcom/google/common/cache/p;

    move-result-object p2

    iget p3, p0, Lcom/google/common/cache/k$r;->c:I

    sub-int/2addr p3, v2

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput p3, p0, Lcom/google/common/cache/k$r;->c:I

    sget-object p2, Lcom/google/common/cache/q;->EXPLICIT:Lcom/google/common/cache/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_1

    goto :goto_2

    :cond_1
    move v2, v3

    :goto_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->H()V

    return v2

    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->H()V

    return v3

    :cond_3
    :try_start_1
    invoke-interface {v6}, Lcom/google/common/cache/p;->getNext()Lcom/google/common/cache/p;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_3
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->H()V

    throw p1
.end method

.method public S(Lcom/google/common/cache/p;)V
    .locals 6
    .annotation build LJ2/a;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/common/cache/p;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/common/cache/p;->b()I

    move-result v2

    invoke-interface {p1}, Lcom/google/common/cache/p;->a()Lcom/google/common/cache/k$A;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/k$A;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/common/cache/p;->a()Lcom/google/common/cache/k$A;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/k$A;->getWeight()I

    move-result v4

    sget-object v5, Lcom/google/common/cache/q;->COLLECTED:Lcom/google/common/cache/q;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/common/cache/k$r;->m(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/q;)V

    iget-object v0, p0, Lcom/google/common/cache/k$r;->m:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/common/cache/k$r;->n:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public T(Lcom/google/common/cache/p;ILcom/google/common/cache/q;)Z
    .locals 12
    .annotation build LJ2/a;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;I",
            "Lcom/google/common/cache/q;",
            ")Z"
        }
    .end annotation

    .annotation build Lv2/d;
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$r;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/google/common/cache/p;

    move-object v6, v5

    :goto_0
    if-eqz v6, :cond_1

    if-ne v6, p1, :cond_0

    iget p1, p0, Lcom/google/common/cache/k$r;->e:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/common/cache/k$r;->e:I

    invoke-interface {v6}, Lcom/google/common/cache/p;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6}, Lcom/google/common/cache/p;->a()Lcom/google/common/cache/k$A;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/cache/k$A;->get()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6}, Lcom/google/common/cache/p;->a()Lcom/google/common/cache/k$A;

    move-result-object v10

    move-object v4, p0

    move v8, p2

    move-object v11, p3

    invoke-virtual/range {v4 .. v11}, Lcom/google/common/cache/k$r;->W(Lcom/google/common/cache/p;Lcom/google/common/cache/p;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/k$A;Lcom/google/common/cache/q;)Lcom/google/common/cache/p;

    move-result-object p1

    iget p2, p0, Lcom/google/common/cache/k$r;->c:I

    sub-int/2addr p2, v2

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput p2, p0, Lcom/google/common/cache/k$r;->c:I

    return v2

    :cond_0
    invoke-interface {v6}, Lcom/google/common/cache/p;->getNext()Lcom/google/common/cache/p;

    move-result-object v6

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public U(Lcom/google/common/cache/p;Lcom/google/common/cache/p;)Lcom/google/common/cache/p;
    .locals 3
    .annotation build LJ2/a;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget v0, p0, Lcom/google/common/cache/k$r;->c:I

    invoke-interface {p2}, Lcom/google/common/cache/p;->getNext()Lcom/google/common/cache/p;

    move-result-object v1

    :goto_0
    if-eq p1, p2, :cond_1

    invoke-virtual {p0, p1, v1}, Lcom/google/common/cache/k$r;->h(Lcom/google/common/cache/p;Lcom/google/common/cache/p;)Lcom/google/common/cache/p;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v1, v2

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/k$r;->S(Lcom/google/common/cache/p;)V

    add-int/lit8 v0, v0, -0x1

    :goto_1
    invoke-interface {p1}, Lcom/google/common/cache/p;->getNext()Lcom/google/common/cache/p;

    move-result-object p1

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/google/common/cache/k$r;->c:I

    return-object v1
.end method

.method public V(Ljava/lang/Object;ILcom/google/common/cache/k$m;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/k$m<",
            "TK;TV;>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/k$r;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/cache/p;

    move-object v4, v3

    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/google/common/cache/p;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4}, Lcom/google/common/cache/p;->b()I

    move-result v7

    if-ne v7, p2, :cond_2

    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    iget-object v7, v7, Lcom/google/common/cache/k;->f:Lw2/m;

    invoke-virtual {v7, p1, v6}, Lw2/m;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Lcom/google/common/cache/p;->a()Lcom/google/common/cache/k$A;

    move-result-object p1

    if-ne p1, p3, :cond_1

    invoke-virtual {p3}, Lcom/google/common/cache/k$m;->isActive()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lcom/google/common/cache/k$m;->h()Lcom/google/common/cache/k$A;

    move-result-object p1

    invoke-interface {v4, p1}, Lcom/google/common/cache/p;->e(Lcom/google/common/cache/k$A;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v3, v4}, Lcom/google/common/cache/k$r;->U(Lcom/google/common/cache/p;Lcom/google/common/cache/p;)Lcom/google/common/cache/p;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->H()V

    return v2

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->H()V

    return v5

    :cond_2
    :try_start_1
    invoke-interface {v4}, Lcom/google/common/cache/p;->getNext()Lcom/google/common/cache/p;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->H()V

    throw p1
.end method

.method public W(Lcom/google/common/cache/p;Lcom/google/common/cache/p;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/k$A;Lcom/google/common/cache/q;)Lcom/google/common/cache/p;
    .locals 6
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation build LJ2/a;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;TK;ITV;",
            "Lcom/google/common/cache/k$A<",
            "TK;TV;>;",
            "Lcom/google/common/cache/q;",
            ")",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-interface {p6}, Lcom/google/common/cache/k$A;->getWeight()I

    move-result v4

    move-object v0, p0

    move-object v1, p3

    move v2, p4

    move-object v3, p5

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/google/common/cache/k$r;->m(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/q;)V

    iget-object p3, p0, Lcom/google/common/cache/k$r;->m:Ljava/util/Queue;

    invoke-interface {p3, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/google/common/cache/k$r;->n:Ljava/util/Queue;

    invoke-interface {p3, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    invoke-interface {p6}, Lcom/google/common/cache/k$A;->d()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    invoke-interface {p6, p2}, Lcom/google/common/cache/k$A;->b(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/k$r;->U(Lcom/google/common/cache/p;Lcom/google/common/cache/p;)Lcom/google/common/cache/p;

    move-result-object p1

    return-object p1
.end method

.method public X(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    move-object/from16 v9, p0

    move/from16 v0, p2

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, v9, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    iget-object v1, v1, Lcom/google/common/cache/k;->q:Lw2/U;

    invoke-virtual {v1}, Lw2/U;->a()J

    move-result-wide v7

    invoke-virtual {v9, v7, v8}, Lcom/google/common/cache/k$r;->I(J)V

    iget-object v10, v9, Lcom/google/common/cache/k$r;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v11, v0, v1

    invoke-virtual {v10, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/common/cache/p;

    move-object v12, v2

    :goto_0
    const/4 v13, 0x0

    if-eqz v12, :cond_0

    invoke-interface {v12}, Lcom/google/common/cache/p;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v12}, Lcom/google/common/cache/p;->b()I

    move-result v1

    if-ne v1, v0, :cond_2

    if-eqz v4, :cond_2

    iget-object v1, v9, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    iget-object v1, v1, Lcom/google/common/cache/k;->f:Lw2/m;

    move-object/from16 v14, p1

    invoke-virtual {v1, v14, v4}, Lw2/m;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v12}, Lcom/google/common/cache/p;->a()Lcom/google/common/cache/k$A;

    move-result-object v15

    invoke-interface {v15}, Lcom/google/common/cache/k$A;->get()Ljava/lang/Object;

    move-result-object v16

    if-nez v16, :cond_1

    invoke-interface {v15}, Lcom/google/common/cache/k$A;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v9, Lcom/google/common/cache/k$r;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Lcom/google/common/cache/k$r;->e:I

    sget-object v8, Lcom/google/common/cache/q;->COLLECTED:Lcom/google/common/cache/q;

    move-object/from16 v1, p0

    move-object v3, v12

    move/from16 v5, p2

    move-object/from16 v6, v16

    move-object v7, v15

    invoke-virtual/range {v1 .. v8}, Lcom/google/common/cache/k$r;->W(Lcom/google/common/cache/p;Lcom/google/common/cache/p;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/k$A;Lcom/google/common/cache/q;)Lcom/google/common/cache/p;

    move-result-object v0

    iget v1, v9, Lcom/google/common/cache/k$r;->c:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v10, v11, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v1, v9, Lcom/google/common/cache/k$r;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/k$r;->H()V

    return-object v13

    :cond_1
    :try_start_1
    iget v1, v9, Lcom/google/common/cache/k$r;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Lcom/google/common/cache/k$r;->e:I

    invoke-interface {v15}, Lcom/google/common/cache/k$A;->getWeight()I

    move-result v5

    sget-object v6, Lcom/google/common/cache/q;->REPLACED:Lcom/google/common/cache/q;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, v16

    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/k$r;->m(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/q;)V

    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-wide v5, v7

    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/k$r;->c0(Lcom/google/common/cache/p;Ljava/lang/Object;Ljava/lang/Object;J)V

    invoke-virtual {v9, v12}, Lcom/google/common/cache/k$r;->n(Lcom/google/common/cache/p;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/k$r;->H()V

    return-object v16

    :cond_2
    move-object/from16 v14, p1

    :cond_3
    :try_start_2
    invoke-interface {v12}, Lcom/google/common/cache/p;->getNext()Lcom/google/common/cache/p;

    move-result-object v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/k$r;->H()V

    throw v0
.end method

.method public Y(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    move-object/from16 v9, p0

    move/from16 v0, p2

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, v9, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    iget-object v1, v1, Lcom/google/common/cache/k;->q:Lw2/U;

    invoke-virtual {v1}, Lw2/U;->a()J

    move-result-wide v7

    invoke-virtual {v9, v7, v8}, Lcom/google/common/cache/k$r;->I(J)V

    iget-object v10, v9, Lcom/google/common/cache/k$r;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v11, 0x1

    sub-int/2addr v1, v11

    and-int v12, v0, v1

    invoke-virtual {v10, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/common/cache/p;

    move-object v13, v2

    :goto_0
    const/4 v14, 0x0

    if-eqz v13, :cond_0

    invoke-interface {v13}, Lcom/google/common/cache/p;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v13}, Lcom/google/common/cache/p;->b()I

    move-result v1

    if-ne v1, v0, :cond_4

    if-eqz v4, :cond_4

    iget-object v1, v9, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    iget-object v1, v1, Lcom/google/common/cache/k;->f:Lw2/m;

    move-object/from16 v15, p1

    invoke-virtual {v1, v15, v4}, Lw2/m;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v13}, Lcom/google/common/cache/p;->a()Lcom/google/common/cache/k$A;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/google/common/cache/k$A;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-interface/range {v16 .. v16}, Lcom/google/common/cache/k$A;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v9, Lcom/google/common/cache/k$r;->e:I

    add-int/2addr v1, v11

    iput v1, v9, Lcom/google/common/cache/k$r;->e:I

    sget-object v8, Lcom/google/common/cache/q;->COLLECTED:Lcom/google/common/cache/q;

    move-object/from16 v1, p0

    move-object v3, v13

    move/from16 v5, p2

    move-object/from16 v7, v16

    invoke-virtual/range {v1 .. v8}, Lcom/google/common/cache/k$r;->W(Lcom/google/common/cache/p;Lcom/google/common/cache/p;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/k$A;Lcom/google/common/cache/q;)Lcom/google/common/cache/p;

    move-result-object v0

    iget v1, v9, Lcom/google/common/cache/k$r;->c:I

    sub-int/2addr v1, v11

    invoke-virtual {v10, v12, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v1, v9, Lcom/google/common/cache/k$r;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/k$r;->H()V

    return v14

    :cond_1
    :try_start_1
    iget-object v1, v9, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    iget-object v1, v1, Lcom/google/common/cache/k;->g:Lw2/m;

    move-object/from16 v3, p3

    invoke-virtual {v1, v3, v6}, Lw2/m;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v9, Lcom/google/common/cache/k$r;->e:I

    add-int/2addr v1, v11

    iput v1, v9, Lcom/google/common/cache/k$r;->e:I

    invoke-interface/range {v16 .. v16}, Lcom/google/common/cache/k$A;->getWeight()I

    move-result v5

    sget-object v10, Lcom/google/common/cache/q;->REPLACED:Lcom/google/common/cache/q;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object v4, v6

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/k$r;->m(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/q;)V

    move-object/from16 v1, p0

    move-object v2, v13

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-wide v5, v7

    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/k$r;->c0(Lcom/google/common/cache/p;Ljava/lang/Object;Ljava/lang/Object;J)V

    invoke-virtual {v9, v13}, Lcom/google/common/cache/k$r;->n(Lcom/google/common/cache/p;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/k$r;->H()V

    return v11

    :cond_2
    :try_start_2
    invoke-virtual {v9, v13, v7, v8}, Lcom/google/common/cache/k$r;->M(Lcom/google/common/cache/p;J)V

    goto :goto_1

    :cond_3
    :goto_2
    move-object/from16 v3, p3

    goto :goto_3

    :cond_4
    move-object/from16 v15, p1

    goto :goto_2

    :goto_3
    invoke-interface {v13}, Lcom/google/common/cache/p;->getNext()Lcom/google/common/cache/p;

    move-result-object v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/k$r;->H()V

    throw v0
.end method

.method public Z(J)V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->k()V

    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/k$r;->p(J)V

    iget-object p1, p0, Lcom/google/common/cache/k$r;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    iget-object v0, v0, Lcom/google/common/cache/k;->q:Lw2/U;

    invoke-virtual {v0}, Lw2/U;->a()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/k$r;->Z(J)V

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->a0()V

    return-void
.end method

.method public a0()V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    invoke-virtual {v0}, Lcom/google/common/cache/k;->J()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 11

    iget v0, p0, Lcom/google/common/cache/k$r;->c:I

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    iget-object v0, v0, Lcom/google/common/cache/k;->q:Lw2/U;

    invoke-virtual {v0}, Lw2/U;->a()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/k$r;->I(J)V

    iget-object v0, p0, Lcom/google/common/cache/k$r;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/cache/p;

    :goto_1
    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/google/common/cache/p;->a()Lcom/google/common/cache/k$A;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/cache/k$A;->isActive()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Lcom/google/common/cache/p;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3}, Lcom/google/common/cache/p;->a()Lcom/google/common/cache/k$A;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/cache/k$A;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v6, :cond_1

    if-nez v8, :cond_0

    goto :goto_3

    :cond_0
    sget-object v4, Lcom/google/common/cache/q;->EXPLICIT:Lcom/google/common/cache/q;

    :goto_2
    move-object v10, v4

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_1
    :goto_3
    sget-object v4, Lcom/google/common/cache/q;->COLLECTED:Lcom/google/common/cache/q;

    goto :goto_2

    :goto_4
    invoke-interface {v3}, Lcom/google/common/cache/p;->b()I

    move-result v7

    invoke-interface {v3}, Lcom/google/common/cache/p;->a()Lcom/google/common/cache/k$A;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/cache/k$A;->getWeight()I

    move-result v9

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/google/common/cache/k$r;->m(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/q;)V

    :cond_2
    invoke-interface {v3}, Lcom/google/common/cache/p;->getNext()Lcom/google/common/cache/p;

    move-result-object v3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->d()V

    iget-object v0, p0, Lcom/google/common/cache/k$r;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lcom/google/common/cache/k$r;->n:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lcom/google/common/cache/k$r;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget v0, p0, Lcom/google/common/cache/k$r;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/k$r;->e:I

    iput v1, p0, Lcom/google/common/cache/k$r;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->H()V

    goto :goto_7

    :goto_6
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->H()V

    throw v0

    :cond_6
    :goto_7
    return-void
.end method

.method public b0(Lcom/google/common/cache/p;Ljava/lang/Object;ILjava/lang/Object;JLcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;TK;ITV;J",
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    invoke-virtual {v0}, Lcom/google/common/cache/k;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/common/cache/p;->g()J

    move-result-wide v0

    sub-long/2addr p5, v0

    iget-object v0, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    iget-wide v0, v0, Lcom/google/common/cache/k;->n:J

    cmp-long p5, p5, v0

    if-lez p5, :cond_0

    invoke-interface {p1}, Lcom/google/common/cache/p;->a()Lcom/google/common/cache/k$A;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/cache/k$A;->d()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p3, p7, p1}, Lcom/google/common/cache/k$r;->P(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;Z)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object p4
.end method

.method public c()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/k$r;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c0(Lcom/google/common/cache/p;Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 3
    .annotation build LJ2/a;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;TK;TV;J)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/common/cache/p;->a()Lcom/google/common/cache/k$A;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    iget-object v1, v1, Lcom/google/common/cache/k;->k:Lcom/google/common/cache/x;

    invoke-interface {v1, p2, p3}, Lcom/google/common/cache/x;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Weights must be non-negative"

    invoke-static {v1, v2}, Lw2/H;->h0(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    iget-object v1, v1, Lcom/google/common/cache/k;->i:Lcom/google/common/cache/k$t;

    invoke-virtual {v1, p0, p1, p3, p2}, Lcom/google/common/cache/k$t;->c(Lcom/google/common/cache/k$r;Lcom/google/common/cache/p;Ljava/lang/Object;I)Lcom/google/common/cache/k$A;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/common/cache/p;->e(Lcom/google/common/cache/k$A;)V

    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/google/common/cache/k$r;->O(Lcom/google/common/cache/p;IJ)V

    invoke-interface {v0, p3}, Lcom/google/common/cache/k$A;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    invoke-virtual {v0}, Lcom/google/common/cache/k;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->c()V

    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    invoke-virtual {v0}, Lcom/google/common/cache/k;->Z()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->e()V

    :cond_1
    return-void
.end method

.method public d0(Ljava/lang/Object;ILcom/google/common/cache/k$m;Ljava/lang/Object;)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/k$m<",
            "TK;TV;>;TV;)Z"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v0, p1

    move/from16 v3, p2

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, v7, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    iget-object v1, v1, Lcom/google/common/cache/k;->q:Lw2/U;

    invoke-virtual {v1}, Lw2/U;->a()J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/google/common/cache/k$r;->I(J)V

    iget v1, v7, Lcom/google/common/cache/k$r;->c:I

    const/4 v10, 0x1

    add-int/2addr v1, v10

    iget v2, v7, Lcom/google/common/cache/k$r;->f:I

    if-le v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->o()V

    iget v1, v7, Lcom/google/common/cache/k$r;->c:I

    add-int/2addr v1, v10

    :cond_0
    move v11, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :goto_0
    iget-object v12, v7, Lcom/google/common/cache/k$r;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    sub-int/2addr v1, v10

    and-int v13, v3, v1

    invoke-virtual {v12, v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/p;

    move-object v14, v1

    :goto_1
    if-eqz v14, :cond_6

    invoke-interface {v14}, Lcom/google/common/cache/p;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v14}, Lcom/google/common/cache/p;->b()I

    move-result v4

    if-ne v4, v3, :cond_5

    if-eqz v2, :cond_5

    iget-object v4, v7, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    iget-object v4, v4, Lcom/google/common/cache/k;->f:Lw2/m;

    invoke-virtual {v4, v0, v2}, Lw2/m;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v14}, Lcom/google/common/cache/p;->a()Lcom/google/common/cache/k$A;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/cache/k$A;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v2, p3

    if-eq v2, v1, :cond_2

    if-nez v4, :cond_1

    sget-object v5, Lcom/google/common/cache/k;->D:Lcom/google/common/cache/k$A;

    if-eq v1, v5, :cond_1

    goto :goto_2

    :cond_1
    sget-object v6, Lcom/google/common/cache/q;->REPLACED:Lcom/google/common/cache/q;

    const/4 v5, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/k$r;->m(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/q;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->H()V

    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_2
    :try_start_1
    iget v1, v7, Lcom/google/common/cache/k$r;->e:I

    add-int/2addr v1, v10

    iput v1, v7, Lcom/google/common/cache/k$r;->e:I

    invoke-virtual/range {p3 .. p3}, Lcom/google/common/cache/k$m;->isActive()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v4, :cond_3

    sget-object v1, Lcom/google/common/cache/q;->COLLECTED:Lcom/google/common/cache/q;

    :goto_3
    move-object v6, v1

    goto :goto_4

    :cond_3
    sget-object v1, Lcom/google/common/cache/q;->REPLACED:Lcom/google/common/cache/q;

    goto :goto_3

    :goto_4
    invoke-virtual/range {p3 .. p3}, Lcom/google/common/cache/k$m;->getWeight()I

    move-result v5

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/k$r;->m(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/q;)V

    add-int/lit8 v11, v11, -0x1

    :cond_4
    move-object v1, p0

    move-object v2, v14

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-wide v5, v8

    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/k$r;->c0(Lcom/google/common/cache/p;Ljava/lang/Object;Ljava/lang/Object;J)V

    iput v11, v7, Lcom/google/common/cache/k$r;->c:I

    invoke-virtual {p0, v14}, Lcom/google/common/cache/k$r;->n(Lcom/google/common/cache/p;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->H()V

    return v10

    :cond_5
    move-object/from16 v2, p3

    :try_start_2
    invoke-interface {v14}, Lcom/google/common/cache/p;->getNext()Lcom/google/common/cache/p;

    move-result-object v14

    goto :goto_1

    :cond_6
    iget v2, v7, Lcom/google/common/cache/k$r;->e:I

    add-int/2addr v2, v10

    iput v2, v7, Lcom/google/common/cache/k$r;->e:I

    invoke-virtual {p0, v0, v3, v1}, Lcom/google/common/cache/k$r;->E(Ljava/lang/Object;ILcom/google/common/cache/p;)Lcom/google/common/cache/p;

    move-result-object v14

    move-object v1, p0

    move-object v2, v14

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-wide v5, v8

    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/k$r;->c0(Lcom/google/common/cache/p;Ljava/lang/Object;Ljava/lang/Object;J)V

    invoke-virtual {v12, v13, v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v11, v7, Lcom/google/common/cache/k$r;->c:I

    invoke-virtual {p0, v14}, Lcom/google/common/cache/k$r;->n(Lcom/google/common/cache/p;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :goto_6
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->H()V

    throw v0
.end method

.method public e()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/k$r;->j:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e0()V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public f(Ljava/lang/Object;I)Z
    .locals 4

    :try_start_0
    iget v0, p0, Lcom/google/common/cache/k$r;->c:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    iget-object v0, v0, Lcom/google/common/cache/k;->q:Lw2/U;

    invoke-virtual {v0}, Lw2/U;->a()J

    move-result-wide v2

    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/google/common/cache/k$r;->w(Ljava/lang/Object;IJ)Lcom/google/common/cache/p;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->G()V

    return v1

    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/google/common/cache/p;->a()Lcom/google/common/cache/k$A;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/cache/k$A;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->G()V

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->G()V

    return v1

    :goto_0
    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->G()V

    throw p1
.end method

.method public f0(J)V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/k$r;->p(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public g(Ljava/lang/Object;)Z
    .locals 9
    .annotation build Lv2/d;
    .end annotation

    :try_start_0
    iget v0, p0, Lcom/google/common/cache/k$r;->c:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    iget-object v0, v0, Lcom/google/common/cache/k;->q:Lw2/U;

    invoke-virtual {v0}, Lw2/U;->a()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/common/cache/k$r;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_3

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/common/cache/p;

    :goto_1
    if-eqz v6, :cond_2

    invoke-virtual {p0, v6, v2, v3}, Lcom/google/common/cache/k$r;->x(Lcom/google/common/cache/p;J)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_2

    :cond_0
    iget-object v8, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    iget-object v8, v8, Lcom/google/common/cache/k;->g:Lw2/m;

    invoke-virtual {v8, p1, v7}, Lw2/m;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->G()V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_2
    :try_start_1
    invoke-interface {v6}, Lcom/google/common/cache/p;->getNext()Lcom/google/common/cache/p;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->G()V

    return v1

    :goto_3
    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->G()V

    throw p1
.end method

.method public g0(Lcom/google/common/cache/p;Ljava/lang/Object;Lcom/google/common/cache/k$A;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;TK;",
            "Lcom/google/common/cache/k$A<",
            "TK;TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-interface {p3}, Lcom/google/common/cache/k$A;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Recursive load of: %s"

    invoke-static {v0, v2, p2}, Lw2/H;->x0(ZLjava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    invoke-interface {p3}, Lcom/google/common/cache/k$A;->c()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p2, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    iget-object p2, p2, Lcom/google/common/cache/k;->q:Lw2/U;

    invoke-virtual {p2}, Lw2/U;->a()J

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3}, Lcom/google/common/cache/k$r;->N(Lcom/google/common/cache/p;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/common/cache/k$r;->o:Lcom/google/common/cache/a$b;

    invoke-interface {p1, v1}, Lcom/google/common/cache/a$b;->d(I)V

    return-object p3

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p1, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "CacheLoader returned null for key "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object p2, p0, Lcom/google/common/cache/k$r;->o:Lcom/google/common/cache/a$b;

    invoke-interface {p2, v1}, Lcom/google/common/cache/a$b;->d(I)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public h(Lcom/google/common/cache/p;Lcom/google/common/cache/p;)Lcom/google/common/cache/p;
    .locals 4
    .annotation build LJ2/a;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/common/cache/p;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p1}, Lcom/google/common/cache/p;->a()Lcom/google/common/cache/k$A;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/k$A;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Lcom/google/common/cache/k$A;->isActive()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    iget-object v1, v1, Lcom/google/common/cache/k;->r:Lcom/google/common/cache/k$f;

    invoke-virtual {v1, p0, p1, p2}, Lcom/google/common/cache/k$f;->c(Lcom/google/common/cache/k$r;Lcom/google/common/cache/p;Lcom/google/common/cache/p;)Lcom/google/common/cache/p;

    move-result-object p1

    iget-object p2, p0, Lcom/google/common/cache/k$r;->j:Ljava/lang/ref/ReferenceQueue;

    invoke-interface {v0, p2, v2, p1}, Lcom/google/common/cache/k$A;->e(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/p;)Lcom/google/common/cache/k$A;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/common/cache/p;->e(Lcom/google/common/cache/k$A;)V

    return-object p1
.end method

.method public i()V
    .locals 3
    .annotation build LJ2/a;
        value = "this"
    .end annotation

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/google/common/cache/k$r;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lcom/google/common/cache/p;

    iget-object v2, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    invoke-virtual {v2, v1}, Lcom/google/common/cache/k;->K(Lcom/google/common/cache/p;)V

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    :cond_1
    return-void
.end method

.method public j()V
    .locals 2
    .annotation build LJ2/a;
        value = "this"
    .end annotation

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/k$r;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/p;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/common/cache/k$r;->n:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/cache/k$r;->n:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public k()V
    .locals 1
    .annotation build LJ2/a;
        value = "this"
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    invoke-virtual {v0}, Lcom/google/common/cache/k;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->i()V

    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    invoke-virtual {v0}, Lcom/google/common/cache/k;->Z()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->l()V

    :cond_1
    return-void
.end method

.method public l()V
    .locals 3
    .annotation build LJ2/a;
        value = "this"
    .end annotation

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/google/common/cache/k$r;->j:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lcom/google/common/cache/k$A;

    iget-object v2, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    invoke-virtual {v2, v1}, Lcom/google/common/cache/k;->L(Lcom/google/common/cache/k$A;)V

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    :cond_1
    return-void
.end method

.method public m(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/q;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation build LJ2/a;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;I",
            "Lcom/google/common/cache/q;",
            ")V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/common/cache/k$r;->d:J

    int-to-long v2, p4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/cache/k$r;->d:J

    invoke-virtual {p5}, Lcom/google/common/cache/q;->b()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/common/cache/k$r;->o:Lcom/google/common/cache/a$b;

    invoke-interface {p2}, Lcom/google/common/cache/a$b;->b()V

    :cond_0
    iget-object p2, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    iget-object p2, p2, Lcom/google/common/cache/k;->o:Ljava/util/Queue;

    sget-object p4, Lcom/google/common/cache/k;->E:Ljava/util/Queue;

    if-eq p2, p4, :cond_1

    invoke-static {p1, p3, p5}, Lcom/google/common/cache/v;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/cache/q;)Lcom/google/common/cache/v;

    move-result-object p1

    iget-object p2, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    iget-object p2, p2, Lcom/google/common/cache/k;->o:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public n(Lcom/google/common/cache/p;)V
    .locals 4
    .annotation build LJ2/a;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    invoke-virtual {v0}, Lcom/google/common/cache/k;->l()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->j()V

    invoke-interface {p1}, Lcom/google/common/cache/p;->a()Lcom/google/common/cache/k$A;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/k$A;->getWeight()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/common/cache/k$r;->h:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    invoke-interface {p1}, Lcom/google/common/cache/p;->b()I

    move-result v0

    sget-object v1, Lcom/google/common/cache/q;->SIZE:Lcom/google/common/cache/q;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/cache/k$r;->T(Lcom/google/common/cache/p;ILcom/google/common/cache/q;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    iget-wide v0, p0, Lcom/google/common/cache/k$r;->d:J

    iget-wide v2, p0, Lcom/google/common/cache/k$r;->h:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_4

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->y()Lcom/google/common/cache/p;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/cache/p;->b()I

    move-result v0

    sget-object v1, Lcom/google/common/cache/q;->SIZE:Lcom/google/common/cache/q;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/cache/k$r;->T(Lcom/google/common/cache/p;ILcom/google/common/cache/q;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    return-void
.end method

.method public o()V
    .locals 11
    .annotation build LJ2/a;
        value = "this"
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$r;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    iget v2, p0, Lcom/google/common/cache/k$r;->c:I

    shl-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Lcom/google/common/cache/k$r;->F(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/common/cache/k$r;->f:I

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_6

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/common/cache/p;

    if-eqz v6, :cond_5

    invoke-interface {v6}, Lcom/google/common/cache/p;->getNext()Lcom/google/common/cache/p;

    move-result-object v7

    invoke-interface {v6}, Lcom/google/common/cache/p;->b()I

    move-result v8

    and-int/2addr v8, v4

    if-nez v7, :cond_1

    invoke-virtual {v3, v8, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_4

    :cond_1
    move-object v9, v6

    :goto_1
    if-eqz v7, :cond_3

    invoke-interface {v7}, Lcom/google/common/cache/p;->b()I

    move-result v10

    and-int/2addr v10, v4

    if-eq v10, v8, :cond_2

    move-object v9, v7

    move v8, v10

    :cond_2
    invoke-interface {v7}, Lcom/google/common/cache/p;->getNext()Lcom/google/common/cache/p;

    move-result-object v7

    goto :goto_1

    :cond_3
    invoke-virtual {v3, v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    :goto_2
    if-eq v6, v9, :cond_5

    invoke-interface {v6}, Lcom/google/common/cache/p;->b()I

    move-result v7

    and-int/2addr v7, v4

    invoke-virtual {v3, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/common/cache/p;

    invoke-virtual {p0, v6, v8}, Lcom/google/common/cache/k$r;->h(Lcom/google/common/cache/p;Lcom/google/common/cache/p;)Lcom/google/common/cache/p;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v3, v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v6}, Lcom/google/common/cache/k$r;->S(Lcom/google/common/cache/p;)V

    add-int/lit8 v2, v2, -0x1

    :goto_3
    invoke-interface {v6}, Lcom/google/common/cache/p;->getNext()Lcom/google/common/cache/p;

    move-result-object v6

    goto :goto_2

    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    iput-object v3, p0, Lcom/google/common/cache/k$r;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput v2, p0, Lcom/google/common/cache/k$r;->c:I

    return-void
.end method

.method public p(J)V
    .locals 3
    .annotation build LJ2/a;
        value = "this"
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->j()V

    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/k$r;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/p;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/common/cache/k;->y(Lcom/google/common/cache/p;J)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/google/common/cache/p;->b()I

    move-result v1

    sget-object v2, Lcom/google/common/cache/q;->EXPIRED:Lcom/google/common/cache/q;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/cache/k$r;->T(Lcom/google/common/cache/p;ILcom/google/common/cache/q;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/common/cache/k$r;->n:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/p;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/common/cache/k;->y(Lcom/google/common/cache/p;J)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lcom/google/common/cache/p;->b()I

    move-result v1

    sget-object v2, Lcom/google/common/cache/q;->EXPIRED:Lcom/google/common/cache/q;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/cache/k$r;->T(Lcom/google/common/cache/p;ILcom/google/common/cache/q;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public q(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    :try_start_0
    iget v0, p0, Lcom/google/common/cache/k$r;->c:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    iget-object v0, v0, Lcom/google/common/cache/k;->q:Lw2/U;

    invoke-virtual {v0}, Lw2/U;->a()J

    move-result-wide v7

    invoke-virtual {p0, p1, p2, v7, v8}, Lcom/google/common/cache/k$r;->w(Ljava/lang/Object;IJ)Lcom/google/common/cache/p;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->G()V

    return-object v1

    :cond_0
    :try_start_1
    invoke-interface {v3}, Lcom/google/common/cache/p;->a()Lcom/google/common/cache/k$A;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/cache/k$A;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {p0, v3, v7, v8}, Lcom/google/common/cache/k$r;->N(Lcom/google/common/cache/p;J)V

    invoke-interface {v3}, Lcom/google/common/cache/p;->getKey()Ljava/lang/Object;

    move-result-object v4

    iget-object p1, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    iget-object v9, p1, Lcom/google/common/cache/k;->t:Lcom/google/common/cache/CacheLoader;

    move-object v2, p0

    move v5, p2

    invoke-virtual/range {v2 .. v9}, Lcom/google/common/cache/k$r;->b0(Lcom/google/common/cache/p;Ljava/lang/Object;ILjava/lang/Object;JLcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->G()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->e0()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->G()V

    return-object v1

    :goto_0
    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->G()V

    throw p1
.end method

.method public r(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget v0, p0, Lcom/google/common/cache/k$r;->c:I

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/k$r;->u(Ljava/lang/Object;I)Lcom/google/common/cache/p;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    iget-object v0, v0, Lcom/google/common/cache/k;->q:Lw2/U;

    invoke-virtual {v0}, Lw2/U;->a()J

    move-result-wide v6

    invoke-virtual {p0, v2, v6, v7}, Lcom/google/common/cache/k$r;->x(Lcom/google/common/cache/p;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v2, v6, v7}, Lcom/google/common/cache/k$r;->N(Lcom/google/common/cache/p;J)V

    iget-object v0, p0, Lcom/google/common/cache/k$r;->o:Lcom/google/common/cache/a$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/common/cache/a$b;->a(I)V

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v8, p3

    invoke-virtual/range {v1 .. v8}, Lcom/google/common/cache/k$r;->b0(Lcom/google/common/cache/p;Ljava/lang/Object;ILjava/lang/Object;JLcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->G()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-interface {v2}, Lcom/google/common/cache/p;->a()Lcom/google/common/cache/k$A;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/k$A;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v2, p1, v0}, Lcom/google/common/cache/k$r;->g0(Lcom/google/common/cache/p;Ljava/lang/Object;Lcom/google/common/cache/k$A;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->G()V

    return-object p1

    :cond_1
    :try_start_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/cache/k$r;->D(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->G()V

    return-object p1

    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p3, p2, Ljava/lang/Error;

    if-nez p3, :cond_3

    instance-of p3, p2, Ljava/lang/RuntimeException;

    if-eqz p3, :cond_2

    new-instance p1, Lcom/google/common/util/concurrent/UncheckedExecutionException;

    invoke-direct {p1, p2}, Lcom/google/common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    throw p1

    :cond_3
    new-instance p1, Lcom/google/common/util/concurrent/ExecutionError;

    check-cast p2, Ljava/lang/Error;

    invoke-direct {p1, p2}, Lcom/google/common/util/concurrent/ExecutionError;-><init>(Ljava/lang/Error;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->G()V

    throw p1
.end method

.method public s(Ljava/lang/Object;ILcom/google/common/cache/k$m;Lcom/google/common/util/concurrent/Z;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/k$m<",
            "TK;TV;>;",
            "Lcom/google/common/util/concurrent/Z<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    :try_start_0
    invoke-static {p4}, Lcom/google/common/util/concurrent/H0;->f(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p4, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/google/common/cache/k$r;->o:Lcom/google/common/cache/a$b;

    invoke-virtual {p3}, Lcom/google/common/cache/k$m;->f()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/common/cache/a$b;->c(J)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/cache/k$r;->d0(Ljava/lang/Object;ILcom/google/common/cache/k$m;Ljava/lang/Object;)Z

    return-object p4

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x23

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "CacheLoader returned null for key "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_1
    move-exception v0

    const/4 p4, 0x0

    :goto_0
    if-nez p4, :cond_1

    iget-object p4, p0, Lcom/google/common/cache/k$r;->o:Lcom/google/common/cache/a$b;

    invoke-virtual {p3}, Lcom/google/common/cache/k$m;->f()J

    move-result-wide v1

    invoke-interface {p4, v1, v2}, Lcom/google/common/cache/a$b;->e(J)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/cache/k$r;->V(Ljava/lang/Object;ILcom/google/common/cache/k$m;)Z

    :cond_1
    throw v0
.end method

.method public u(Ljava/lang/Object;I)Lcom/google/common/cache/p;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0, p2}, Lcom/google/common/cache/k$r;->v(I)Lcom/google/common/cache/p;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/google/common/cache/p;->b()I

    move-result v1

    if-eq v1, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lcom/google/common/cache/p;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->e0()V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    iget-object v2, v2, Lcom/google/common/cache/k;->f:Lw2/m;

    invoke-virtual {v2, p1, v1}, Lw2/m;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Lcom/google/common/cache/p;->getNext()Lcom/google/common/cache/p;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public v(I)Lcom/google/common/cache/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$r;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/cache/p;

    return-object p1
.end method

.method public w(Ljava/lang/Object;IJ)Lcom/google/common/cache/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "IJ)",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/k$r;->u(Ljava/lang/Object;I)Lcom/google/common/cache/p;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    invoke-virtual {v0, p1, p3, p4}, Lcom/google/common/cache/k;->y(Lcom/google/common/cache/p;J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p3, p4}, Lcom/google/common/cache/k$r;->f0(J)V

    return-object p2

    :cond_1
    return-object p1
.end method

.method public x(Lcom/google/common/cache/p;J)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;J)TV;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/common/cache/p;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->e0()V

    return-object v1

    :cond_0
    invoke-interface {p1}, Lcom/google/common/cache/p;->a()Lcom/google/common/cache/k$A;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/k$A;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/cache/k$r;->e0()V

    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    invoke-virtual {v2, p1, p2, p3}, Lcom/google/common/cache/k;->y(Lcom/google/common/cache/p;J)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p2, p3}, Lcom/google/common/cache/k$r;->f0(J)V

    return-object v1

    :cond_2
    return-object v0
.end method

.method public y()Lcom/google/common/cache/p;
    .locals 3
    .annotation build LJ2/a;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$r;->n:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/p;

    invoke-interface {v1}, Lcom/google/common/cache/p;->a()Lcom/google/common/cache/k$A;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/cache/k$A;->getWeight()I

    move-result v2

    if-lez v2, :cond_0

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public z(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/cache/k$r;->f:I

    iget-object v0, p0, Lcom/google/common/cache/k$r;->b:Lcom/google/common/cache/k;

    invoke-virtual {v0}, Lcom/google/common/cache/k;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/common/cache/k$r;->f:I

    int-to-long v1, v0

    iget-wide v3, p0, Lcom/google/common/cache/k$r;->h:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/k$r;->f:I

    :cond_0
    iput-object p1, p0, Lcom/google/common/cache/k$r;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-void
.end method
