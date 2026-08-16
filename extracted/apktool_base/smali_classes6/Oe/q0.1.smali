.class public final LOe/q0;
.super LBe/B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/q0$a;
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

.field public final e:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;LBe/J;)V
    .locals 0

    invoke-direct {p0}, LBe/B;-><init>()V

    iput-wide p1, p0, LOe/q0;->c:J

    iput-wide p3, p0, LOe/q0;->d:J

    iput-object p5, p0, LOe/q0;->e:Ljava/util/concurrent/TimeUnit;

    iput-object p6, p0, LOe/q0;->b:LBe/J;

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

    new-instance v7, LOe/q0$a;

    invoke-direct {v7, p1}, LOe/q0$a;-><init>(LBe/I;)V

    invoke-interface {p1, v7}, LBe/I;->e(LDe/c;)V

    iget-object v0, p0, LOe/q0;->b:LBe/J;

    instance-of p1, v0, LSe/s;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, LBe/J;->c()LBe/J$c;

    move-result-object v0

    invoke-virtual {v7, v0}, LOe/q0$a;->a(LDe/c;)V

    iget-wide v2, p0, LOe/q0;->c:J

    iget-wide v4, p0, LOe/q0;->d:J

    iget-object v6, p0, LOe/q0;->e:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, LBe/J$c;->e(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LDe/c;

    goto :goto_0

    :cond_0
    iget-wide v2, p0, LOe/q0;->c:J

    iget-wide v4, p0, LOe/q0;->d:J

    iget-object v6, p0, LOe/q0;->e:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, LBe/J;->h(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LDe/c;

    move-result-object p1

    invoke-virtual {v7, p1}, LOe/q0$a;->a(LDe/c;)V

    :goto_0
    return-void
.end method
