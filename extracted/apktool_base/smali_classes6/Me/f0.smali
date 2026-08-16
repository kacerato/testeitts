.class public final LMe/f0;
.super LMe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LMe/f0$a;,
        LMe/f0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LMe/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final c:LBe/J;


# direct methods
.method public constructor <init>(LBe/y;LBe/J;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/y<",
            "TT;>;",
            "LBe/J;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, LMe/a;-><init>(LBe/y;)V

    iput-object p2, p0, LMe/f0;->c:LBe/J;

    return-void
.end method


# virtual methods
.method public t1(LBe/v;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/v<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, LMe/f0$a;

    invoke-direct {v0, p1}, LMe/f0$a;-><init>(LBe/v;)V

    invoke-interface {p1, v0}, LBe/v;->e(LDe/c;)V

    iget-object p1, v0, LMe/f0$a;->b:LGe/h;

    iget-object v1, p0, LMe/f0;->c:LBe/J;

    new-instance v2, LMe/f0$b;

    iget-object v3, p0, LMe/a;->b:LBe/y;

    invoke-direct {v2, v0, v3}, LMe/f0$b;-><init>(LBe/v;LBe/y;)V

    invoke-virtual {v1, v2}, LBe/J;->f(Ljava/lang/Runnable;)LDe/c;

    move-result-object v0

    invoke-virtual {p1, v0}, LGe/h;->a(LDe/c;)Z

    return-void
.end method
