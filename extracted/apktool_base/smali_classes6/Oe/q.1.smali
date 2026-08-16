.class public final LOe/q;
.super LOe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/q$a;,
        LOe/q$c;,
        LOe/q$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "LOe/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field public final c:J

.field public final d:J

.field public final e:Ljava/util/concurrent/TimeUnit;

.field public final f:LBe/J;

.field public final g:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field

.field public final h:I

.field public final i:Z


# direct methods
.method public constructor <init>(LBe/G;JJLjava/util/concurrent/TimeUnit;LBe/J;Ljava/util/concurrent/Callable;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LOe/a;-><init>(LBe/G;)V

    iput-wide p2, p0, LOe/q;->c:J

    iput-wide p4, p0, LOe/q;->d:J

    iput-object p6, p0, LOe/q;->e:Ljava/util/concurrent/TimeUnit;

    iput-object p7, p0, LOe/q;->f:LBe/J;

    iput-object p8, p0, LOe/q;->g:Ljava/util/concurrent/Callable;

    iput p9, p0, LOe/q;->h:I

    iput-boolean p10, p0, LOe/q;->i:Z

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TU;>;)V"
        }
    .end annotation

    iget-wide v0, p0, LOe/q;->c:J

    iget-wide v2, p0, LOe/q;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, LOe/q;->h:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LOe/a;->b:LBe/G;

    new-instance v8, LOe/q$b;

    new-instance v2, LWe/m;

    invoke-direct {v2, p1}, LWe/m;-><init>(LBe/I;)V

    iget-object v3, p0, LOe/q;->g:Ljava/util/concurrent/Callable;

    iget-wide v4, p0, LOe/q;->c:J

    iget-object v6, p0, LOe/q;->e:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, LOe/q;->f:LBe/J;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, LOe/q$b;-><init>(LBe/I;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;LBe/J;)V

    invoke-interface {v0, v8}, LBe/G;->c(LBe/I;)V

    return-void

    :cond_0
    iget-object v0, p0, LOe/q;->f:LBe/J;

    invoke-virtual {v0}, LBe/J;->c()LBe/J$c;

    move-result-object v9

    iget-wide v0, p0, LOe/q;->c:J

    iget-wide v2, p0, LOe/q;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, LOe/a;->b:LBe/G;

    new-instance v10, LOe/q$a;

    new-instance v2, LWe/m;

    invoke-direct {v2, p1}, LWe/m;-><init>(LBe/I;)V

    iget-object v3, p0, LOe/q;->g:Ljava/util/concurrent/Callable;

    iget-wide v4, p0, LOe/q;->c:J

    iget-object v6, p0, LOe/q;->e:Ljava/util/concurrent/TimeUnit;

    iget v7, p0, LOe/q;->h:I

    iget-boolean v8, p0, LOe/q;->i:Z

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, LOe/q$a;-><init>(LBe/I;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;IZLBe/J$c;)V

    invoke-interface {v0, v10}, LBe/G;->c(LBe/I;)V

    return-void

    :cond_1
    iget-object v0, p0, LOe/a;->b:LBe/G;

    new-instance v10, LOe/q$c;

    new-instance v2, LWe/m;

    invoke-direct {v2, p1}, LWe/m;-><init>(LBe/I;)V

    iget-object v3, p0, LOe/q;->g:Ljava/util/concurrent/Callable;

    iget-wide v4, p0, LOe/q;->c:J

    iget-wide v6, p0, LOe/q;->d:J

    iget-object v8, p0, LOe/q;->e:Ljava/util/concurrent/TimeUnit;

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, LOe/q$c;-><init>(LBe/I;Ljava/util/concurrent/Callable;JJLjava/util/concurrent/TimeUnit;LBe/J$c;)V

    invoke-interface {v0, v10}, LBe/G;->c(LBe/I;)V

    return-void
.end method
