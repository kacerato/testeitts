.class public final LQe/T;
.super LBe/K;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LQe/T$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/K<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LBe/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/Q<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:LBe/J;

.field public final f:LBe/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/Q<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/Q;JLjava/util/concurrent/TimeUnit;LBe/J;LBe/Q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/Q<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "LBe/Q<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/K;-><init>()V

    iput-object p1, p0, LQe/T;->b:LBe/Q;

    iput-wide p2, p0, LQe/T;->c:J

    iput-object p4, p0, LQe/T;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, LQe/T;->e:LBe/J;

    iput-object p6, p0, LQe/T;->f:LBe/Q;

    return-void
.end method


# virtual methods
.method public d1(LBe/N;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/N<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v6, LQe/T$a;

    iget-object v2, p0, LQe/T;->f:LBe/Q;

    iget-wide v3, p0, LQe/T;->c:J

    iget-object v5, p0, LQe/T;->d:Ljava/util/concurrent/TimeUnit;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, LQe/T$a;-><init>(LBe/N;LBe/Q;JLjava/util/concurrent/TimeUnit;)V

    invoke-interface {p1, v6}, LBe/N;->e(LDe/c;)V

    iget-object p1, v6, LQe/T$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v0, p0, LQe/T;->e:LBe/J;

    iget-wide v1, p0, LQe/T;->c:J

    iget-object v3, p0, LQe/T;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v1, v2, v3}, LBe/J;->g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;

    move-result-object v0

    invoke-static {p1, v0}, LGe/d;->c(Ljava/util/concurrent/atomic/AtomicReference;LDe/c;)Z

    iget-object p1, p0, LQe/T;->b:LBe/Q;

    invoke-interface {p1, v6}, LBe/Q;->a(LBe/N;)V

    return-void
.end method
