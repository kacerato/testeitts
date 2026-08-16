.class public final LOe/j1;
.super LOe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/j1$a;,
        LOe/j1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "LOe/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final c:LBe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/G<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/G;LBe/G;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "TT;>;",
            "LBe/G<",
            "TU;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LOe/a;-><init>(LBe/G;)V

    iput-object p2, p0, LOe/j1;->c:LBe/G;

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

    new-instance v0, LWe/m;

    invoke-direct {v0, p1}, LWe/m;-><init>(LBe/I;)V

    new-instance p1, LGe/a;

    const/4 v1, 0x2

    invoke-direct {p1, v1}, LGe/a;-><init>(I)V

    invoke-virtual {v0, p1}, LWe/m;->e(LDe/c;)V

    new-instance v1, LOe/j1$b;

    invoke-direct {v1, v0, p1}, LOe/j1$b;-><init>(LBe/I;LGe/a;)V

    iget-object v2, p0, LOe/j1;->c:LBe/G;

    new-instance v3, LOe/j1$a;

    invoke-direct {v3, p0, p1, v1, v0}, LOe/j1$a;-><init>(LOe/j1;LGe/a;LOe/j1$b;LWe/m;)V

    invoke-interface {v2, v3}, LBe/G;->c(LBe/I;)V

    iget-object p1, p0, LOe/a;->b:LBe/G;

    invoke-interface {p1, v1}, LBe/G;->c(LBe/I;)V

    return-void
.end method
