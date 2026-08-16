.class public final LLe/v0;
.super LBe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/v0$a;
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

.field public final f:J

.field public final g:J

.field public final h:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JJJJLjava/util/concurrent/TimeUnit;LBe/J;)V
    .locals 0

    invoke-direct {p0}, LBe/l;-><init>()V

    iput-wide p5, p0, LLe/v0;->f:J

    iput-wide p7, p0, LLe/v0;->g:J

    iput-object p9, p0, LLe/v0;->h:Ljava/util/concurrent/TimeUnit;

    iput-object p10, p0, LLe/v0;->c:LBe/J;

    iput-wide p1, p0, LLe/v0;->d:J

    iput-wide p3, p0, LLe/v0;->e:J

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

    new-instance v7, LLe/v0$a;

    iget-wide v2, p0, LLe/v0;->d:J

    iget-wide v4, p0, LLe/v0;->e:J

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, LLe/v0$a;-><init>(Lhn/c;JJ)V

    invoke-interface {p1, v7}, Lhn/c;->j(Lhn/d;)V

    iget-object v0, p0, LLe/v0;->c:LBe/J;

    instance-of p1, v0, LSe/s;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, LBe/J;->c()LBe/J$c;

    move-result-object v0

    invoke-virtual {v7, v0}, LLe/v0$a;->a(LDe/c;)V

    iget-wide v2, p0, LLe/v0;->f:J

    iget-wide v4, p0, LLe/v0;->g:J

    iget-object v6, p0, LLe/v0;->h:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, LBe/J$c;->e(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LDe/c;

    goto :goto_0

    :cond_0
    iget-wide v2, p0, LLe/v0;->f:J

    iget-wide v4, p0, LLe/v0;->g:J

    iget-object v6, p0, LLe/v0;->h:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, LBe/J;->h(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LDe/c;

    move-result-object p1

    invoke-virtual {v7, p1}, LLe/v0$a;->a(LDe/c;)V

    :goto_0
    return-void
.end method
