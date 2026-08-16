.class public final LOe/F1$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LBe/I;
.implements LDe/c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/F1;
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
        "LBe/I<",
        "TT;>;",
        "LDe/c;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final i:J = -0x67d4a190b6f57310L


# instance fields
.field public final b:LBe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/I<",
            "-",
            "LBe/B<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final c:J

.field public final d:I

.field public e:J

.field public f:LDe/c;

.field public g:Lbf/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbf/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile h:Z


# direct methods
.method public constructor <init>(LBe/I;JI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-",
            "LBe/B<",
            "TT;>;>;JI)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LOe/F1$a;->b:LBe/I;

    iput-wide p2, p0, LOe/F1$a;->c:J

    iput p4, p0, LOe/F1$a;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, LOe/F1$a;->g:Lbf/j;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, LOe/F1$a;->g:Lbf/j;

    invoke-virtual {v0}, Lbf/j;->a()V

    :cond_0
    iget-object v0, p0, LOe/F1$a;->b:LBe/I;

    invoke-interface {v0}, LBe/I;->a()V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, LOe/F1$a;->h:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/F1$a;->h:Z

    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iget-object v0, p0, LOe/F1$a;->f:LDe/c;

    invoke-static {v0, p1}, LGe/d;->j(LDe/c;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LOe/F1$a;->f:LDe/c;

    iget-object p1, p0, LOe/F1$a;->b:LBe/I;

    invoke-interface {p1, p0}, LBe/I;->e(LDe/c;)V

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/F1$a;->g:Lbf/j;

    if-nez v0, :cond_0

    iget-boolean v1, p0, LOe/F1$a;->h:Z

    if-nez v1, :cond_0

    iget v0, p0, LOe/F1$a;->d:I

    invoke-static {v0, p0}, Lbf/j;->q8(ILjava/lang/Runnable;)Lbf/j;

    move-result-object v0

    iput-object v0, p0, LOe/F1$a;->g:Lbf/j;

    iget-object v1, p0, LOe/F1$a;->b:LBe/I;

    invoke-interface {v1, v0}, LBe/I;->h(Ljava/lang/Object;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lbf/j;->h(Ljava/lang/Object;)V

    iget-wide v1, p0, LOe/F1$a;->e:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, LOe/F1$a;->e:J

    iget-wide v3, p0, LOe/F1$a;->c:J

    cmp-long p1, v1, v3

    if-ltz p1, :cond_1

    const-wide/16 v1, 0x0

    iput-wide v1, p0, LOe/F1$a;->e:J

    const/4 p1, 0x0

    iput-object p1, p0, LOe/F1$a;->g:Lbf/j;

    invoke-virtual {v0}, Lbf/j;->a()V

    iget-boolean p1, p0, LOe/F1$a;->h:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, LOe/F1$a;->f:LDe/c;

    invoke-interface {p1}, LDe/c;->dispose()V

    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, LOe/F1$a;->g:Lbf/j;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, LOe/F1$a;->g:Lbf/j;

    invoke-virtual {v0, p1}, Lbf/j;->onError(Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, LOe/F1$a;->b:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public run()V
    .locals 1

    iget-boolean v0, p0, LOe/F1$a;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LOe/F1$a;->f:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    :cond_0
    return-void
.end method
