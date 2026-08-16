.class public final LLe/u0;
.super LBe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/u0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LBe/l<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:LBe/J;

.field public final d:J

.field public final e:J

.field public final f:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;LBe/J;)V
    .locals 0

    invoke-direct {p0}, LBe/l;-><init>()V

    iput-wide p1, p0, LLe/u0;->d:J

    iput-wide p3, p0, LLe/u0;->e:J

    iput-object p5, p0, LLe/u0;->f:Ljava/util/concurrent/TimeUnit;

    iput-object p6, p0, LLe/u0;->c:LBe/J;

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance v7, LLe/u0$a;

    invoke-direct {v7, p1}, LLe/u0$a;-><init>(Lhn/c;)V

    invoke-interface {p1, v7}, Lhn/c;->j(Lhn/d;)V

    iget-object v0, p0, LLe/u0;->c:LBe/J;

    instance-of p1, v0, LSe/s;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, LBe/J;->c()LBe/J$c;

    move-result-object v0

    invoke-virtual {v7, v0}, LLe/u0$a;->a(LDe/c;)V

    iget-wide v2, p0, LLe/u0;->d:J

    iget-wide v4, p0, LLe/u0;->e:J

    iget-object v6, p0, LLe/u0;->f:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, LBe/J$c;->e(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LDe/c;

    goto :goto_0

    :cond_0
    iget-wide v2, p0, LLe/u0;->d:J

    iget-wide v4, p0, LLe/u0;->e:J

    iget-object v6, p0, LLe/u0;->f:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, LBe/J;->h(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LDe/c;

    move-result-object p1

    invoke-virtual {v7, p1}, LLe/u0$a;->a(LDe/c;)V

    :goto_0
    return-void
.end method
