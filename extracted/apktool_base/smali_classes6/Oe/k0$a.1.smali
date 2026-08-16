.class public final LOe/k0$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LBe/I;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LBe/I<",
        "TT;>;",
        "LDe/c;"
    }
.end annotation


# static fields
.field public static final j:J = -0x332f71b8460722ceL

.field public static final k:Ljava/lang/Object;


# instance fields
.field public final b:LBe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/I<",
            "-",
            "LVe/b<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field public final c:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-TT;+TK;>;"
        }
    .end annotation
.end field

.field public final d:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-TT;+TV;>;"
        }
    .end annotation
.end field

.field public final e:I

.field public final f:Z

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "LOe/k0$b<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field public h:LDe/c;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LOe/k0$a;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LBe/I;LFe/o;LFe/o;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-",
            "LVe/b<",
            "TK;TV;>;>;",
            "LFe/o<",
            "-TT;+TK;>;",
            "LFe/o<",
            "-TT;+TV;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LOe/k0$a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, LOe/k0$a;->b:LBe/I;

    iput-object p2, p0, LOe/k0$a;->c:LFe/o;

    iput-object p3, p0, LOe/k0$a;->d:LFe/o;

    iput p4, p0, LOe/k0$a;->e:I

    iput-boolean p5, p0, LOe/k0$a;->f:Z

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, LOe/k0$a;->g:Ljava/util/Map;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, LOe/k0$a;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, LOe/k0$a;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOe/k0$b;

    invoke-virtual {v1}, LOe/k0$b;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LOe/k0$a;->b:LBe/I;

    invoke-interface {v0}, LBe/I;->a()V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, LOe/k0$a;->k:Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, LOe/k0$a;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, LOe/k0$a;->h:LDe/c;

    invoke-interface {p1}, LDe/c;->dispose()V

    :cond_1
    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, LOe/k0$a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 3

    iget-object v0, p0, LOe/k0$a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LOe/k0$a;->h:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    :cond_0
    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iget-object v0, p0, LOe/k0$a;->h:LDe/c;

    invoke-static {v0, p1}, LGe/d;->j(LDe/c;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LOe/k0$a;->h:LDe/c;

    iget-object p1, p0, LOe/k0$a;->b:LBe/I;

    invoke-interface {p1, p0}, LBe/I;->e(LDe/c;)V

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, LOe/k0$a;->c:LFe/o;

    invoke-interface {v0, p1}, LFe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v1, LOe/k0$a;->k:Ljava/lang/Object;

    :goto_0
    iget-object v2, p0, LOe/k0$a;->g:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LOe/k0$b;

    if-nez v2, :cond_2

    iget-object v2, p0, LOe/k0$a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    iget v2, p0, LOe/k0$a;->e:I

    iget-boolean v3, p0, LOe/k0$a;->f:Z

    invoke-static {v0, v2, p0, v3}, LOe/k0$b;->k8(Ljava/lang/Object;ILOe/k0$a;Z)LOe/k0$b;

    move-result-object v2

    iget-object v0, p0, LOe/k0$a;->g:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    iget-object v0, p0, LOe/k0$a;->b:LBe/I;

    invoke-interface {v0, v2}, LBe/I;->h(Ljava/lang/Object;)V

    :cond_2
    :try_start_1
    iget-object v0, p0, LOe/k0$a;->d:LFe/o;

    invoke-interface {v0, p1}, LFe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The value supplied is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2, p1}, LOe/k0$b;->h(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, LOe/k0$a;->h:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    invoke-virtual {p0, p1}, LOe/k0$a;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, LOe/k0$a;->h:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    invoke-virtual {p0, p1}, LOe/k0$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, LOe/k0$a;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, LOe/k0$a;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOe/k0$b;

    invoke-virtual {v1, p1}, LOe/k0$b;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LOe/k0$a;->b:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
