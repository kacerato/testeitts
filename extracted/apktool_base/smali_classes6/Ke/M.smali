.class public final LKe/M;
.super LBe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LKe/M$a;,
        LKe/M$b;
    }
.end annotation


# instance fields
.field public final b:LBe/i;

.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:LBe/J;

.field public final f:LBe/i;


# direct methods
.method public constructor <init>(LBe/i;JLjava/util/concurrent/TimeUnit;LBe/J;LBe/i;)V
    .locals 0

    invoke-direct {p0}, LBe/c;-><init>()V

    iput-object p1, p0, LKe/M;->b:LBe/i;

    iput-wide p2, p0, LKe/M;->c:J

    iput-object p4, p0, LKe/M;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, LKe/M;->e:LBe/J;

    iput-object p6, p0, LKe/M;->f:LBe/i;

    return-void
.end method


# virtual methods
.method public K0(LBe/f;)V
    .locals 7

    new-instance v0, LDe/b;

    invoke-direct {v0}, LDe/b;-><init>()V

    invoke-interface {p1, v0}, LBe/f;->e(LDe/c;)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iget-object v2, p0, LKe/M;->e:LBe/J;

    new-instance v3, LKe/M$a;

    invoke-direct {v3, p0, v1, v0, p1}, LKe/M$a;-><init>(LKe/M;Ljava/util/concurrent/atomic/AtomicBoolean;LDe/b;LBe/f;)V

    iget-wide v4, p0, LKe/M;->c:J

    iget-object v6, p0, LKe/M;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v6}, LBe/J;->g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;

    move-result-object v2

    invoke-virtual {v0, v2}, LDe/b;->a(LDe/c;)Z

    iget-object v2, p0, LKe/M;->b:LBe/i;

    new-instance v3, LKe/M$b;

    invoke-direct {v3, v0, v1, p1}, LKe/M$b;-><init>(LDe/b;Ljava/util/concurrent/atomic/AtomicBoolean;LBe/f;)V

    invoke-interface {v2, v3}, LBe/i;->b(LBe/f;)V

    return-void
.end method
