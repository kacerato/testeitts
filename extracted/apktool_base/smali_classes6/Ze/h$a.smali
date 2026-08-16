.class public final LZe/h$a;
.super LUe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZe/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LUe/c<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final d:J = -0x43f4c9bf08ec328eL


# instance fields
.field public final synthetic c:LZe/h;


# direct methods
.method public constructor <init>(LZe/h;)V
    .locals 0

    iput-object p1, p0, LZe/h$a;->c:LZe/h;

    invoke-direct {p0}, LUe/c;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, LZe/h$a;->c:LZe/h;

    iget-boolean v0, v0, LZe/h;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LZe/h$a;->c:LZe/h;

    const/4 v1, 0x1

    iput-boolean v1, v0, LZe/h;->i:Z

    iget-object v0, p0, LZe/h$a;->c:LZe/h;

    invoke-virtual {v0}, LZe/h;->Z8()V

    iget-object v0, p0, LZe/h$a;->c:LZe/h;

    iget-boolean v1, v0, LZe/h;->m:Z

    if-nez v1, :cond_1

    iget-object v0, v0, LZe/h;->k:LUe/c;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LZe/h$a;->c:LZe/h;

    iget-object v0, v0, LZe/h;->c:LRe/c;

    invoke-virtual {v0}, LRe/c;->clear()V

    iget-object v0, p0, LZe/h$a;->c:LZe/h;

    iget-object v0, v0, LZe/h;->h:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, LZe/h$a;->c:LZe/h;

    iget-object v0, v0, LZe/h;->c:LRe/c;

    invoke-virtual {v0}, LRe/c;->clear()V

    return-void
.end method

.method public i(J)V
    .locals 1

    invoke-static {p1, p2}, LUe/j;->m(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LZe/h$a;->c:LZe/h;

    iget-object v0, v0, LZe/h;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    iget-object p1, p0, LZe/h$a;->c:LZe/h;

    invoke-virtual {p1}, LZe/h;->a9()V

    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LZe/h$a;->c:LZe/h;

    iget-object v0, v0, LZe/h;->c:LRe/c;

    invoke-virtual {v0}, LRe/c;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public m(I)I
    .locals 2

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    iget-object p1, p0, LZe/h$a;->c:LZe/h;

    const/4 v1, 0x1

    iput-boolean v1, p1, LZe/h;->m:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation build LCe/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, LZe/h$a;->c:LZe/h;

    iget-object v0, v0, LZe/h;->c:LRe/c;

    invoke-virtual {v0}, LRe/c;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
