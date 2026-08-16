.class public final LOe/r0;
.super LBe/B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/r0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LBe/B<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:LBe/J;

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JJJJLjava/util/concurrent/TimeUnit;LBe/J;)V
    .locals 0

    invoke-direct {p0}, LBe/B;-><init>()V

    iput-wide p5, p0, LOe/r0;->e:J

    iput-wide p7, p0, LOe/r0;->f:J

    iput-object p9, p0, LOe/r0;->g:Ljava/util/concurrent/TimeUnit;

    iput-object p10, p0, LOe/r0;->b:LBe/J;

    iput-wide p1, p0, LOe/r0;->c:J

    iput-wide p3, p0, LOe/r0;->d:J

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance v7, LOe/r0$a;

    iget-wide v2, p0, LOe/r0;->c:J

    iget-wide v4, p0, LOe/r0;->d:J

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, LOe/r0$a;-><init>(LBe/I;JJ)V

    invoke-interface {p1, v7}, LBe/I;->e(LDe/c;)V

    iget-object v0, p0, LOe/r0;->b:LBe/J;

    instance-of p1, v0, LSe/s;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, LBe/J;->c()LBe/J$c;

    move-result-object v0

    invoke-virtual {v7, v0}, LOe/r0$a;->a(LDe/c;)V

    iget-wide v2, p0, LOe/r0;->e:J

    iget-wide v4, p0, LOe/r0;->f:J

    iget-object v6, p0, LOe/r0;->g:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, LBe/J$c;->e(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LDe/c;

    goto :goto_0

    :cond_0
    iget-wide v2, p0, LOe/r0;->e:J

    iget-wide v4, p0, LOe/r0;->f:J

    iget-object v6, p0, LOe/r0;->g:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, LBe/J;->h(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LDe/c;

    move-result-object p1

    invoke-virtual {v7, p1}, LOe/r0$a;->a(LDe/c;)V

    :goto_0
    return-void
.end method
