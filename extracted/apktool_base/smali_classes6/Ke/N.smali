.class public final LKe/N;
.super LBe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LKe/N$a;
    }
.end annotation


# instance fields
.field public final b:J

.field public final c:Ljava/util/concurrent/TimeUnit;

.field public final d:LBe/J;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;LBe/J;)V
    .locals 0

    invoke-direct {p0}, LBe/c;-><init>()V

    iput-wide p1, p0, LKe/N;->b:J

    iput-object p3, p0, LKe/N;->c:Ljava/util/concurrent/TimeUnit;

    iput-object p4, p0, LKe/N;->d:LBe/J;

    return-void
.end method


# virtual methods
.method public K0(LBe/f;)V
    .locals 4

    new-instance v0, LKe/N$a;

    invoke-direct {v0, p1}, LKe/N$a;-><init>(LBe/f;)V

    invoke-interface {p1, v0}, LBe/f;->e(LDe/c;)V

    iget-object p1, p0, LKe/N;->d:LBe/J;

    iget-wide v1, p0, LKe/N;->b:J

    iget-object v3, p0, LKe/N;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2, v3}, LBe/J;->g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;

    move-result-object p1

    invoke-virtual {v0, p1}, LKe/N$a;->a(LDe/c;)V

    return-void
.end method
