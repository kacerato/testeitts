.class public LVj/a$i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LVj/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LVj/a$i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:LVj/b;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:LVj/d;

.field public final d:I

.field public final e:Ljava/util/concurrent/atomic/AtomicReference;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(LVj/b;Ljava/util/concurrent/atomic/AtomicBoolean;LZi/e;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, LVj/a$i$b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, LVj/a$i$b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, LVj/a$i$b;->a:LVj/b;

    iput-object p2, p0, LVj/a$i$b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {p3, p4}, LZi/e;->get(I)LZi/d;

    move-result-object p1

    check-cast p1, LVj/d;

    iput-object p1, p0, LVj/a$i$b;->c:LVj/d;

    add-int/lit8 p4, p4, 0x7

    div-int/lit8 p4, p4, 0x8

    iput p4, p0, LVj/a$i$b;->d:I

    return-void
.end method


# virtual methods
.method public a(J)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, LVj/a$i$b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_1

    array-length v1, v0

    iget v2, p0, LVj/a$i$b;->d:I

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, LVj/a$i$b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, LVj/a$i$b;->c:LVj/d;

    invoke-interface {v0, p1, p2}, LVj/d;->a(J)[B

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public b()[B
    .locals 2

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, LVj/a$i$b;->a(J)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "initial entropy fetch interrupted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, LVj/a$i$b;->d:I

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public e()V
    .locals 5

    iget-object v0, p0, LVj/a$i$b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LVj/a$i$b;->a:LVj/b;

    new-instance v1, LVj/c;

    iget-object v2, p0, LVj/a$i$b;->c:LVj/d;

    iget-object v3, p0, LVj/a$i$b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v4, p0, LVj/a$i$b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v2, v3, v4}, LVj/c;-><init>(LVj/d;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0, v1}, LVj/b;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
