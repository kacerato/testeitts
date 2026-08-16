.class public final LOe/Q0;
.super LOe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/Q0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LOe/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final c:LFe/e;


# direct methods
.method public constructor <init>(LBe/B;LFe/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/B<",
            "TT;>;",
            "LFe/e;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, LOe/a;-><init>(LBe/G;)V

    iput-object p2, p0, LOe/Q0;->c:LFe/e;

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, LGe/h;

    invoke-direct {v0}, LGe/h;-><init>()V

    invoke-interface {p1, v0}, LBe/I;->e(LDe/c;)V

    new-instance v1, LOe/Q0$a;

    iget-object v2, p0, LOe/Q0;->c:LFe/e;

    iget-object v3, p0, LOe/a;->b:LBe/G;

    invoke-direct {v1, p1, v2, v0, v3}, LOe/Q0$a;-><init>(LBe/I;LFe/e;LGe/h;LBe/G;)V

    invoke-virtual {v1}, LOe/Q0$a;->b()V

    return-void
.end method
