.class public final LOe/l1;
.super LOe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/l1$b;,
        LOe/l1$a;
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
.field public final c:LBe/J;


# direct methods
.method public constructor <init>(LBe/G;LBe/J;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "TT;>;",
            "LBe/J;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, LOe/a;-><init>(LBe/G;)V

    iput-object p2, p0, LOe/l1;->c:LBe/J;

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, LOe/l1$a;

    invoke-direct {v0, p1}, LOe/l1$a;-><init>(LBe/I;)V

    invoke-interface {p1, v0}, LBe/I;->e(LDe/c;)V

    iget-object p1, p0, LOe/l1;->c:LBe/J;

    new-instance v1, LOe/l1$b;

    invoke-direct {v1, p0, v0}, LOe/l1$b;-><init>(LOe/l1;LOe/l1$a;)V

    invoke-virtual {p1, v1}, LBe/J;->f(Ljava/lang/Runnable;)LDe/c;

    move-result-object p1

    invoke-virtual {v0, p1}, LOe/l1$a;->b(LDe/c;)V

    return-void
.end method
