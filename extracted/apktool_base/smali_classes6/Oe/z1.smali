.class public final LOe/z1;
.super LOe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/z1$d;,
        LOe/z1$a;,
        LOe/z1$b;,
        LOe/z1$e;,
        LOe/z1$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LOe/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:LBe/J;

.field public final f:LBe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/G<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/B;JLjava/util/concurrent/TimeUnit;LBe/J;LBe/G;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/B<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "LBe/G<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LOe/a;-><init>(LBe/G;)V

    iput-wide p2, p0, LOe/z1;->c:J

    iput-object p4, p0, LOe/z1;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, LOe/z1;->e:LBe/J;

    iput-object p6, p0, LOe/z1;->f:LBe/G;

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/z1;->f:LBe/G;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, LOe/z1$c;

    iget-wide v5, p0, LOe/z1;->c:J

    iget-object v7, p0, LOe/z1;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, LOe/z1;->e:LBe/J;

    invoke-virtual {v3}, LBe/J;->c()LBe/J$c;

    move-result-object v8

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, LOe/z1$c;-><init>(LBe/I;JLjava/util/concurrent/TimeUnit;LBe/J$c;)V

    invoke-interface {p1, v0}, LBe/I;->e(LDe/c;)V

    invoke-virtual {v0, v1, v2}, LOe/z1$c;->f(J)V

    iget-object p1, p0, LOe/a;->b:LBe/G;

    invoke-interface {p1, v0}, LBe/G;->c(LBe/I;)V

    goto :goto_0

    :cond_0
    new-instance v0, LOe/z1$b;

    iget-wide v5, p0, LOe/z1;->c:J

    iget-object v7, p0, LOe/z1;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, LOe/z1;->e:LBe/J;

    invoke-virtual {v3}, LBe/J;->c()LBe/J$c;

    move-result-object v8

    iget-object v9, p0, LOe/z1;->f:LBe/G;

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, LOe/z1$b;-><init>(LBe/I;JLjava/util/concurrent/TimeUnit;LBe/J$c;LBe/G;)V

    invoke-interface {p1, v0}, LBe/I;->e(LDe/c;)V

    invoke-virtual {v0, v1, v2}, LOe/z1$b;->f(J)V

    iget-object p1, p0, LOe/a;->b:LBe/G;

    invoke-interface {p1, v0}, LBe/G;->c(LBe/I;)V

    :goto_0
    return-void
.end method
