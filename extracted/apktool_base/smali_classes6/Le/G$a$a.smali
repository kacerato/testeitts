.class public final LLe/G$a$a;
.super Lcf/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/G$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lcf/b<",
        "TU;>;"
    }
.end annotation


# instance fields
.field public final c:LLe/G$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLe/G$a<",
            "TT;TU;>;"
        }
    .end annotation
.end field

.field public final d:J

.field public final e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public f:Z

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(LLe/G$a;JLjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LLe/G$a<",
            "TT;TU;>;JTT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcf/b;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LLe/G$a$a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, LLe/G$a$a;->c:LLe/G$a;

    iput-wide p2, p0, LLe/G$a$a;->d:J

    iput-object p4, p0, LLe/G$a$a;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, LLe/G$a$a;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/G$a$a;->f:Z

    invoke-virtual {p0}, LLe/G$a$a;->g()V

    return-void
.end method

.method public g()V
    .locals 4

    iget-object v0, p0, LLe/G$a$a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLe/G$a$a;->c:LLe/G$a;

    iget-wide v1, p0, LLe/G$a$a;->d:J

    iget-object v3, p0, LLe/G$a$a;->e:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, LLe/G$a;->b(JLjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    iget-boolean p1, p0, LLe/G$a$a;->f:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, LLe/G$a$a;->f:Z

    invoke-virtual {p0}, Lcf/b;->b()V

    invoke-virtual {p0}, LLe/G$a$a;->g()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, LLe/G$a$a;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/G$a$a;->f:Z

    iget-object v0, p0, LLe/G$a$a;->c:LLe/G$a;

    invoke-virtual {v0, p1}, LLe/G$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
