.class public final LSe/q$e;
.super LBe/J$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSe/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:LZe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LZe/c<",
            "LSe/q$f;",
            ">;"
        }
    .end annotation
.end field

.field public final d:LBe/J$c;


# direct methods
.method public constructor <init>(LZe/c;LBe/J$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LZe/c<",
            "LSe/q$f;",
            ">;",
            "LBe/J$c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, LBe/J$c;-><init>()V

    iput-object p1, p0, LSe/q$e;->c:LZe/c;

    iput-object p2, p0, LSe/q$e;->d:LBe/J$c;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, LSe/q$e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Runnable;)LDe/c;
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation build LCe/f;
    .end annotation

    new-instance v0, LSe/q$c;

    invoke-direct {v0, p1}, LSe/q$c;-><init>(Ljava/lang/Runnable;)V

    iget-object p1, p0, LSe/q$e;->c:LZe/c;

    invoke-interface {p1, v0}, Lhn/c;->h(Ljava/lang/Object;)V

    return-object v0
.end method

.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build LCe/f;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation build LCe/f;
    .end annotation

    new-instance v0, LSe/q$b;

    invoke-direct {v0, p1, p2, p3, p4}, LSe/q$b;-><init>(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    iget-object p1, p0, LSe/q$e;->c:LZe/c;

    invoke-interface {p1, v0}, Lhn/c;->h(Ljava/lang/Object;)V

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, LSe/q$e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 3

    iget-object v0, p0, LSe/q$e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LSe/q$e;->c:LZe/c;

    invoke-interface {v0}, Lhn/c;->a()V

    iget-object v0, p0, LSe/q$e;->d:LBe/J$c;

    invoke-interface {v0}, LDe/c;->dispose()V

    :cond_0
    return-void
.end method
