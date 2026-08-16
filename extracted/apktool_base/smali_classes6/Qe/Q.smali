.class public final LQe/Q;
.super LBe/K;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LQe/Q$a;
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

.field public final c:LBe/J;


# direct methods
.method public constructor <init>(LBe/Q;LBe/J;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/Q<",
            "+TT;>;",
            "LBe/J;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, LBe/K;-><init>()V

    iput-object p1, p0, LQe/Q;->b:LBe/Q;

    iput-object p2, p0, LQe/Q;->c:LBe/J;

    return-void
.end method


# virtual methods
.method public d1(LBe/N;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/N<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, LQe/Q$a;

    iget-object v1, p0, LQe/Q;->b:LBe/Q;

    invoke-direct {v0, p1, v1}, LQe/Q$a;-><init>(LBe/N;LBe/Q;)V

    invoke-interface {p1, v0}, LBe/N;->e(LDe/c;)V

    iget-object p1, p0, LQe/Q;->c:LBe/J;

    invoke-virtual {p1, v0}, LBe/J;->f(Ljava/lang/Runnable;)LDe/c;

    move-result-object p1

    iget-object v0, v0, LQe/Q$a;->c:LGe/h;

    invoke-virtual {v0, p1}, LGe/h;->a(LDe/c;)Z

    return-void
.end method
