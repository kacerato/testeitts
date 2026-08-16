.class public final LOe/c1$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LDe/c;"
    }
.end annotation


# static fields
.field public static final k:J = -0x55bcb3aaa8a061f8L


# instance fields
.field public final b:LBe/N;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/N<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final c:LFe/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/d<",
            "-TT;-TT;>;"
        }
    .end annotation
.end field

.field public final d:LGe/a;

.field public final e:LBe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/G<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final f:LBe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/G<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final g:[LOe/c1$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "LOe/c1$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile h:Z

.field public i:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public j:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/N;ILBe/G;LBe/G;LFe/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/N<",
            "-",
            "Ljava/lang/Boolean;",
            ">;I",
            "LBe/G<",
            "+TT;>;",
            "LBe/G<",
            "+TT;>;",
            "LFe/d<",
            "-TT;-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LOe/c1$a;->b:LBe/N;

    iput-object p3, p0, LOe/c1$a;->e:LBe/G;

    iput-object p4, p0, LOe/c1$a;->f:LBe/G;

    iput-object p5, p0, LOe/c1$a;->c:LFe/d;

    const/4 p1, 0x2

    new-array p3, p1, [LOe/c1$b;

    iput-object p3, p0, LOe/c1$a;->g:[LOe/c1$b;

    new-instance p4, LOe/c1$b;

    const/4 p5, 0x0

    invoke-direct {p4, p0, p5, p2}, LOe/c1$b;-><init>(LOe/c1$a;II)V

    aput-object p4, p3, p5

    new-instance p4, LOe/c1$b;

    const/4 p5, 0x1

    invoke-direct {p4, p0, p5, p2}, LOe/c1$b;-><init>(LOe/c1$a;II)V

    aput-object p4, p3, p5

    new-instance p2, LGe/a;

    invoke-direct {p2, p1}, LGe/a;-><init>(I)V

    iput-object p2, p0, LOe/c1$a;->d:LGe/a;

    return-void
.end method


# virtual methods
.method public a(LRe/c;LRe/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LRe/c<",
            "TT;>;",
            "LRe/c<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/c1$a;->h:Z

    invoke-virtual {p1}, LRe/c;->clear()V

    invoke-virtual {p2}, LRe/c;->clear()V

    return-void
.end method

.method public b()V
    .locals 12

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LOe/c1$a;->g:[LOe/c1$b;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-object v3, v2, LOe/c1$b;->c:LRe/c;

    const/4 v4, 0x1

    aget-object v0, v0, v4

    iget-object v5, v0, LOe/c1$b;->c:LRe/c;

    move v6, v4

    :cond_1
    iget-boolean v7, p0, LOe/c1$a;->h:Z

    if-eqz v7, :cond_2

    invoke-virtual {v3}, LRe/c;->clear()V

    invoke-virtual {v5}, LRe/c;->clear()V

    return-void

    :cond_2
    iget-boolean v7, v2, LOe/c1$b;->e:Z

    if-eqz v7, :cond_3

    iget-object v8, v2, LOe/c1$b;->f:Ljava/lang/Throwable;

    if-eqz v8, :cond_3

    invoke-virtual {p0, v3, v5}, LOe/c1$a;->a(LRe/c;LRe/c;)V

    iget-object v0, p0, LOe/c1$a;->b:LBe/N;

    invoke-interface {v0, v8}, LBe/N;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_3
    iget-boolean v8, v0, LOe/c1$b;->e:Z

    if-eqz v8, :cond_4

    iget-object v9, v0, LOe/c1$b;->f:Ljava/lang/Throwable;

    if-eqz v9, :cond_4

    invoke-virtual {p0, v3, v5}, LOe/c1$a;->a(LRe/c;LRe/c;)V

    iget-object v0, p0, LOe/c1$a;->b:LBe/N;

    invoke-interface {v0, v9}, LBe/N;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_4
    iget-object v9, p0, LOe/c1$a;->i:Ljava/lang/Object;

    if-nez v9, :cond_5

    invoke-virtual {v3}, LRe/c;->poll()Ljava/lang/Object;

    move-result-object v9

    iput-object v9, p0, LOe/c1$a;->i:Ljava/lang/Object;

    :cond_5
    iget-object v9, p0, LOe/c1$a;->i:Ljava/lang/Object;

    if-nez v9, :cond_6

    move v9, v4

    goto :goto_0

    :cond_6
    move v9, v1

    :goto_0
    iget-object v10, p0, LOe/c1$a;->j:Ljava/lang/Object;

    if-nez v10, :cond_7

    invoke-virtual {v5}, LRe/c;->poll()Ljava/lang/Object;

    move-result-object v10

    iput-object v10, p0, LOe/c1$a;->j:Ljava/lang/Object;

    :cond_7
    iget-object v10, p0, LOe/c1$a;->j:Ljava/lang/Object;

    if-nez v10, :cond_8

    move v11, v4

    goto :goto_1

    :cond_8
    move v11, v1

    :goto_1
    if-eqz v7, :cond_9

    if-eqz v8, :cond_9

    if-eqz v9, :cond_9

    if-eqz v11, :cond_9

    iget-object v0, p0, LOe/c1$a;->b:LBe/N;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, LBe/N;->b(Ljava/lang/Object;)V

    return-void

    :cond_9
    if-eqz v7, :cond_a

    if-eqz v8, :cond_a

    if-eq v9, v11, :cond_a

    invoke-virtual {p0, v3, v5}, LOe/c1$a;->a(LRe/c;LRe/c;)V

    iget-object v0, p0, LOe/c1$a;->b:LBe/N;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, LBe/N;->b(Ljava/lang/Object;)V

    return-void

    :cond_a
    if-nez v9, :cond_c

    if-nez v11, :cond_c

    :try_start_0
    iget-object v7, p0, LOe/c1$a;->c:LFe/d;

    iget-object v8, p0, LOe/c1$a;->i:Ljava/lang/Object;

    invoke-interface {v7, v8, v10}, LFe/d;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_b

    invoke-virtual {p0, v3, v5}, LOe/c1$a;->a(LRe/c;LRe/c;)V

    iget-object v0, p0, LOe/c1$a;->b:LBe/N;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, LBe/N;->b(Ljava/lang/Object;)V

    return-void

    :cond_b
    const/4 v7, 0x0

    iput-object v7, p0, LOe/c1$a;->i:Ljava/lang/Object;

    iput-object v7, p0, LOe/c1$a;->j:Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v3, v5}, LOe/c1$a;->a(LRe/c;LRe/c;)V

    iget-object v1, p0, LOe/c1$a;->b:LBe/N;

    invoke-interface {v1, v0}, LBe/N;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_c
    :goto_2
    if-nez v9, :cond_d

    if-eqz v11, :cond_1

    :cond_d
    neg-int v6, v6

    invoke-virtual {p0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v6

    if-nez v6, :cond_1

    return-void
.end method

.method public c(LDe/c;I)Z
    .locals 1

    iget-object v0, p0, LOe/c1$a;->d:LGe/a;

    invoke-virtual {v0, p2, p1}, LGe/a;->b(ILDe/c;)Z

    move-result p1

    return p1
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, LOe/c1$a;->h:Z

    return v0
.end method

.method public dispose()V
    .locals 3

    iget-boolean v0, p0, LOe/c1$a;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/c1$a;->h:Z

    iget-object v1, p0, LOe/c1$a;->d:LGe/a;

    invoke-virtual {v1}, LGe/a;->dispose()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, LOe/c1$a;->g:[LOe/c1$b;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    iget-object v2, v2, LOe/c1$b;->c:LRe/c;

    invoke-virtual {v2}, LRe/c;->clear()V

    aget-object v0, v1, v0

    iget-object v0, v0, LOe/c1$b;->c:LRe/c;

    invoke-virtual {v0}, LRe/c;->clear()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, LOe/c1$a;->g:[LOe/c1$b;

    iget-object v1, p0, LOe/c1$a;->e:LBe/G;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-interface {v1, v2}, LBe/G;->c(LBe/I;)V

    iget-object v1, p0, LOe/c1$a;->f:LBe/G;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-interface {v1, v0}, LBe/G;->c(LBe/I;)V

    return-void
.end method
