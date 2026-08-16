.class public final LQe/U;
.super LBe/K;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LQe/U$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LBe/K<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:J

.field public final c:Ljava/util/concurrent/TimeUnit;

.field public final d:LBe/J;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;LBe/J;)V
    .locals 0

    invoke-direct {p0}, LBe/K;-><init>()V

    iput-wide p1, p0, LQe/U;->b:J

    iput-object p3, p0, LQe/U;->c:Ljava/util/concurrent/TimeUnit;

    iput-object p4, p0, LQe/U;->d:LBe/J;

    return-void
.end method


# virtual methods
.method public d1(LBe/N;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/N<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance v0, LQe/U$a;

    invoke-direct {v0, p1}, LQe/U$a;-><init>(LBe/N;)V

    invoke-interface {p1, v0}, LBe/N;->e(LDe/c;)V

    iget-object p1, p0, LQe/U;->d:LBe/J;

    iget-wide v1, p0, LQe/U;->b:J

    iget-object v3, p0, LQe/U;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2, v3}, LBe/J;->g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;

    move-result-object p1

    invoke-virtual {v0, p1}, LQe/U$a;->a(LDe/c;)V

    return-void
.end method
