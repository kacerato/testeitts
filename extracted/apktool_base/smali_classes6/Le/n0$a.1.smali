.class public final LLe/n0$a;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements LBe/k;
.implements Lhn/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/n0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "LBe/k<",
        "TT;>;",
        "Lhn/d;"
    }
.end annotation


# static fields
.field public static final i:J = 0x68ffc50b57428478L


# instance fields
.field public final b:Lhn/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:LFe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/c<",
            "TS;-",
            "LBe/k<",
            "TT;>;TS;>;"
        }
    .end annotation
.end field

.field public final d:LFe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/g<",
            "-TS;>;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field public volatile f:Z

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(Lhn/c;LFe/c;LFe/g;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;",
            "LFe/c<",
            "TS;-",
            "LBe/k<",
            "TT;>;TS;>;",
            "LFe/g<",
            "-TS;>;TS;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, LLe/n0$a;->b:Lhn/c;

    iput-object p2, p0, LLe/n0$a;->c:LFe/c;

    iput-object p3, p0, LLe/n0$a;->d:LFe/g;

    iput-object p4, p0, LLe/n0$a;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, LLe/n0$a;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/n0$a;->g:Z

    iget-object v0, p0, LLe/n0$a;->b:Lhn/c;

    invoke-interface {v0}, Lhn/c;->a()V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, LLe/n0$a;->d:LFe/g;

    invoke-interface {v0, p1}, LFe/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 4

    iget-boolean v0, p0, LLe/n0$a;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/n0$a;->f:Z

    const-wide/16 v0, 0x1

    invoke-static {p0, v0, v1}, Lio/reactivex/internal/util/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, LLe/n0$a;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, LLe/n0$a;->e:Ljava/lang/Object;

    invoke-virtual {p0, v0}, LLe/n0$a;->b(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, LLe/n0$a;->g:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, LLe/n0$a;->h:Z

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onNext already called in this generate turn"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LLe/n0$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LLe/n0$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/n0$a;->h:Z

    iget-object v0, p0, LLe/n0$a;->b:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->h(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public i(J)V
    .locals 9

    invoke-static {p1, p2}, LUe/j;->m(J)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, LLe/n0$a;->e:Ljava/lang/Object;

    iget-object v1, p0, LLe/n0$a;->c:LFe/c;

    :cond_2
    move-wide v4, v2

    :cond_3
    :goto_0
    cmp-long v6, v4, p1

    if-eqz v6, :cond_6

    iget-boolean v6, p0, LLe/n0$a;->f:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    iput-object v7, p0, LLe/n0$a;->e:Ljava/lang/Object;

    invoke-virtual {p0, v0}, LLe/n0$a;->b(Ljava/lang/Object;)V

    return-void

    :cond_4
    const/4 v6, 0x0

    iput-boolean v6, p0, LLe/n0$a;->h:Z

    const/4 v6, 0x1

    :try_start_0
    invoke-interface {v1, v0, p0}, LFe/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v8, p0, LLe/n0$a;->g:Z

    if-eqz v8, :cond_5

    iput-boolean v6, p0, LLe/n0$a;->f:Z

    iput-object v7, p0, LLe/n0$a;->e:Ljava/lang/Object;

    invoke-virtual {p0, v0}, LLe/n0$a;->b(Ljava/lang/Object;)V

    return-void

    :cond_5
    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iput-boolean v6, p0, LLe/n0$a;->f:Z

    iput-object v7, p0, LLe/n0$a;->e:Ljava/lang/Object;

    invoke-virtual {p0, p1}, LLe/n0$a;->onError(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, LLe/n0$a;->b(Ljava/lang/Object;)V

    return-void

    :cond_6
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p1

    cmp-long v6, v4, p1

    if-nez v6, :cond_3

    iput-object v0, p0, LLe/n0$a;->e:Ljava/lang/Object;

    neg-long p1, v4

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide p1

    cmp-long v4, p1, v2

    if-nez v4, :cond_2

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, LLe/n0$a;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/n0$a;->g:Z

    iget-object v0, p0, LLe/n0$a;->b:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
