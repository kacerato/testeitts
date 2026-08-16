.class public final LQe/f;
.super LBe/K;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LQe/f$a;
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
            "+TT;>;"
        }
    .end annotation
.end field

.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:LBe/J;

.field public final f:Z


# direct methods
.method public constructor <init>(LBe/Q;JLjava/util/concurrent/TimeUnit;LBe/J;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/Q<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/K;-><init>()V

    iput-object p1, p0, LQe/f;->b:LBe/Q;

    iput-wide p2, p0, LQe/f;->c:J

    iput-object p4, p0, LQe/f;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, LQe/f;->e:LBe/J;

    iput-boolean p6, p0, LQe/f;->f:Z

    return-void
.end method


# virtual methods
.method public d1(LBe/N;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/N<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, LGe/h;

    invoke-direct {v0}, LGe/h;-><init>()V

    invoke-interface {p1, v0}, LBe/N;->e(LDe/c;)V

    iget-object v1, p0, LQe/f;->b:LBe/Q;

    new-instance v2, LQe/f$a;

    invoke-direct {v2, p0, v0, p1}, LQe/f$a;-><init>(LQe/f;LGe/h;LBe/N;)V

    invoke-interface {v1, v2}, LBe/Q;->a(LBe/N;)V

    return-void
.end method
