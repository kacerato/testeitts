.class public final LSe/g$b;
.super LBe/J$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSe/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:LDe/b;

.field public final c:LSe/g$a;

.field public final d:LSe/g$c;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(LSe/g$a;)V
    .locals 1

    invoke-direct {p0}, LBe/J$c;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LSe/g$b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, LSe/g$b;->c:LSe/g$a;

    new-instance v0, LDe/b;

    invoke-direct {v0}, LDe/b;-><init>()V

    iput-object v0, p0, LSe/g$b;->b:LDe/b;

    invoke-virtual {p1}, LSe/g$a;->b()LSe/g$c;

    move-result-object p1

    iput-object p1, p0, LSe/g$b;->d:LSe/g$c;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;
    .locals 6
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

    iget-object v0, p0, LSe/g$b;->b:LDe/b;

    invoke-virtual {v0}, LDe/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, LGe/e;->INSTANCE:LGe/e;

    return-object p1

    :cond_0
    iget-object v0, p0, LSe/g$b;->d:LSe/g$c;

    iget-object v5, p0, LSe/g$b;->b:LDe/b;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, LSe/i;->f(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;LGe/c;)LSe/n;

    move-result-object p1

    return-object p1
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, LSe/g$b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 3

    iget-object v0, p0, LSe/g$b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LSe/g$b;->b:LDe/b;

    invoke-virtual {v0}, LDe/b;->dispose()V

    iget-object v0, p0, LSe/g$b;->c:LSe/g$a;

    iget-object v1, p0, LSe/g$b;->d:LSe/g$c;

    invoke-virtual {v0, v1}, LSe/g$a;->d(LSe/g$c;)V

    :cond_0
    return-void
.end method
