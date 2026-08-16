.class public final Lbf/j$a;
.super LJe/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbf/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LJe/b<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final d:J = 0x6e022e8b5b1c1e37L


# instance fields
.field public final synthetic c:Lbf/j;


# direct methods
.method public constructor <init>(Lbf/j;)V
    .locals 0

    iput-object p1, p0, Lbf/j$a;->c:Lbf/j;

    invoke-direct {p0}, LJe/b;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lbf/j$a;->c:Lbf/j;

    iget-object v0, v0, Lbf/j;->b:LRe/c;

    invoke-virtual {v0}, LRe/c;->clear()V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lbf/j$a;->c:Lbf/j;

    iget-boolean v0, v0, Lbf/j;->f:Z

    return v0
.end method

.method public dispose()V
    .locals 2

    iget-object v0, p0, Lbf/j$a;->c:Lbf/j;

    iget-boolean v0, v0, Lbf/j;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbf/j$a;->c:Lbf/j;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lbf/j;->f:Z

    iget-object v0, p0, Lbf/j$a;->c:Lbf/j;

    invoke-virtual {v0}, Lbf/j;->t8()V

    iget-object v0, p0, Lbf/j$a;->c:Lbf/j;

    iget-object v0, v0, Lbf/j;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object v0, p0, Lbf/j$a;->c:Lbf/j;

    iget-object v0, v0, Lbf/j;->j:LJe/b;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbf/j$a;->c:Lbf/j;

    iget-object v0, v0, Lbf/j;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object v0, p0, Lbf/j$a;->c:Lbf/j;

    iget-object v0, v0, Lbf/j;->b:LRe/c;

    invoke-virtual {v0}, LRe/c;->clear()V

    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lbf/j$a;->c:Lbf/j;

    iget-object v0, v0, Lbf/j;->b:LRe/c;

    invoke-virtual {v0}, LRe/c;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public m(I)I
    .locals 2

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lbf/j$a;->c:Lbf/j;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lbf/j;->k:Z

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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lbf/j$a;->c:Lbf/j;

    iget-object v0, v0, Lbf/j;->b:LRe/c;

    invoke-virtual {v0}, LRe/c;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
