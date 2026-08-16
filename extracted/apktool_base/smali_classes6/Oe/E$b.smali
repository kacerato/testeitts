.class public final LOe/E$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/I;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/E;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LBe/I<",
        "TT;>;",
        "LDe/c;"
    }
.end annotation


# instance fields
.field public final b:LBe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/I<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:LBe/J$c;

.field public f:LDe/c;

.field public g:LDe/c;

.field public volatile h:J

.field public i:Z


# direct methods
.method public constructor <init>(LBe/I;JLjava/util/concurrent/TimeUnit;LBe/J$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J$c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOe/E$b;->b:LBe/I;

    iput-wide p2, p0, LOe/E$b;->c:J

    iput-object p4, p0, LOe/E$b;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, LOe/E$b;->e:LBe/J$c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, LOe/E$b;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/E$b;->i:Z

    iget-object v0, p0, LOe/E$b;->g:LDe/c;

    if-eqz v0, :cond_1

    invoke-interface {v0}, LDe/c;->dispose()V

    :cond_1
    check-cast v0, LOe/E$a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, LOe/E$a;->run()V

    :cond_2
    iget-object v0, p0, LOe/E$b;->b:LBe/I;

    invoke-interface {v0}, LBe/I;->a()V

    iget-object v0, p0, LOe/E$b;->e:LBe/J$c;

    invoke-interface {v0}, LDe/c;->dispose()V

    return-void
.end method

.method public b(JLjava/lang/Object;LOe/E$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;",
            "LOe/E$a<",
            "TT;>;)V"
        }
    .end annotation

    iget-wide v0, p0, LOe/E$b;->h:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    iget-object p1, p0, LOe/E$b;->b:LBe/I;

    invoke-interface {p1, p3}, LBe/I;->h(Ljava/lang/Object;)V

    invoke-virtual {p4}, LOe/E$a;->dispose()V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, LOe/E$b;->e:LBe/J$c;

    invoke-interface {v0}, LDe/c;->d()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, LOe/E$b;->f:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    iget-object v0, p0, LOe/E$b;->e:LBe/J$c;

    invoke-interface {v0}, LDe/c;->dispose()V

    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iget-object v0, p0, LOe/E$b;->f:LDe/c;

    invoke-static {v0, p1}, LGe/d;->j(LDe/c;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LOe/E$b;->f:LDe/c;

    iget-object p1, p0, LOe/E$b;->b:LBe/I;

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

    iget-boolean v0, p0, LOe/E$b;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, LOe/E$b;->h:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, LOe/E$b;->h:J

    iget-object v2, p0, LOe/E$b;->g:LDe/c;

    if-eqz v2, :cond_1

    invoke-interface {v2}, LDe/c;->dispose()V

    :cond_1
    new-instance v2, LOe/E$a;

    invoke-direct {v2, p1, v0, v1, p0}, LOe/E$a;-><init>(Ljava/lang/Object;JLOe/E$b;)V

    iput-object v2, p0, LOe/E$b;->g:LDe/c;

    iget-object p1, p0, LOe/E$b;->e:LBe/J$c;

    iget-wide v0, p0, LOe/E$b;->c:J

    iget-object v3, p0, LOe/E$b;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v0, v1, v3}, LBe/J$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;

    move-result-object p1

    invoke-virtual {v2, p1}, LOe/E$a;->a(LDe/c;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, LOe/E$b;->i:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object v0, p0, LOe/E$b;->g:LDe/c;

    if-eqz v0, :cond_1

    invoke-interface {v0}, LDe/c;->dispose()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/E$b;->i:Z

    iget-object v0, p0, LOe/E$b;->b:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    iget-object p1, p0, LOe/E$b;->e:LBe/J$c;

    invoke-interface {p1}, LDe/c;->dispose()V

    return-void
.end method
