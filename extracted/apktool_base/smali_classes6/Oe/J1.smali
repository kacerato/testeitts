.class public final LOe/J1;
.super LOe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/J1$c;,
        LOe/J1$a;,
        LOe/J1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LOe/a<",
        "TT;",
        "LBe/B<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final c:J

.field public final d:J

.field public final e:Ljava/util/concurrent/TimeUnit;

.field public final f:LBe/J;

.field public final g:J

.field public final h:I

.field public final i:Z


# direct methods
.method public constructor <init>(LBe/G;JJLjava/util/concurrent/TimeUnit;LBe/J;JIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "JIZ)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LOe/a;-><init>(LBe/G;)V

    iput-wide p2, p0, LOe/J1;->c:J

    iput-wide p4, p0, LOe/J1;->d:J

    iput-object p6, p0, LOe/J1;->e:Ljava/util/concurrent/TimeUnit;

    iput-object p7, p0, LOe/J1;->f:LBe/J;

    iput-wide p8, p0, LOe/J1;->g:J

    iput p10, p0, LOe/J1;->h:I

    iput-boolean p11, p0, LOe/J1;->i:Z

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-",
            "LBe/B<",
            "TT;>;>;)V"
        }
    .end annotation

    new-instance v1, LWe/m;

    invoke-direct {v1, p1}, LWe/m;-><init>(LBe/I;)V

    iget-wide v2, p0, LOe/J1;->c:J

    iget-wide v4, p0, LOe/J1;->d:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    iget-wide v7, p0, LOe/J1;->g:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long p1, v7, v4

    if-nez p1, :cond_0

    iget-object p1, p0, LOe/a;->b:LBe/G;

    new-instance v7, LOe/J1$b;

    iget-wide v2, p0, LOe/J1;->c:J

    iget-object v4, p0, LOe/J1;->e:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, LOe/J1;->f:LBe/J;

    iget v6, p0, LOe/J1;->h:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, LOe/J1$b;-><init>(LBe/I;JLjava/util/concurrent/TimeUnit;LBe/J;I)V

    invoke-interface {p1, v7}, LBe/G;->c(LBe/I;)V

    return-void

    :cond_0
    iget-object p1, p0, LOe/a;->b:LBe/G;

    new-instance v10, LOe/J1$a;

    iget-object v4, p0, LOe/J1;->e:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, LOe/J1;->f:LBe/J;

    iget v6, p0, LOe/J1;->h:I

    iget-boolean v9, p0, LOe/J1;->i:Z

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, LOe/J1$a;-><init>(LBe/I;JLjava/util/concurrent/TimeUnit;LBe/J;IJZ)V

    invoke-interface {p1, v10}, LBe/G;->c(LBe/I;)V

    return-void

    :cond_1
    iget-object p1, p0, LOe/a;->b:LBe/G;

    new-instance v9, LOe/J1$c;

    iget-object v6, p0, LOe/J1;->e:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, LOe/J1;->f:LBe/J;

    invoke-virtual {v0}, LBe/J;->c()LBe/J$c;

    move-result-object v7

    iget v8, p0, LOe/J1;->h:I

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, LOe/J1$c;-><init>(LBe/I;JJLjava/util/concurrent/TimeUnit;LBe/J$c;I)V

    invoke-interface {p1, v9}, LBe/G;->c(LBe/I;)V

    return-void
.end method
