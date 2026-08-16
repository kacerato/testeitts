.class public final LOe/A0;
.super LOe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/A0$a;
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
.field public final c:LBe/i;


# direct methods
.method public constructor <init>(LBe/B;LBe/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/B<",
            "TT;>;",
            "LBe/i;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, LOe/a;-><init>(LBe/G;)V

    iput-object p2, p0, LOe/A0;->c:LBe/i;

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, LOe/A0$a;

    invoke-direct {v0, p1}, LOe/A0$a;-><init>(LBe/I;)V

    invoke-interface {p1, v0}, LBe/I;->e(LDe/c;)V

    iget-object p1, p0, LOe/a;->b:LBe/G;

    invoke-interface {p1, v0}, LBe/G;->c(LBe/I;)V

    iget-object p1, p0, LOe/A0;->c:LBe/i;

    iget-object v0, v0, LOe/A0$a;->d:LOe/A0$a$a;

    invoke-interface {p1, v0}, LBe/i;->b(LBe/f;)V

    return-void
.end method
