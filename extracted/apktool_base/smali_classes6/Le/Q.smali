.class public final LLe/Q;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/Q$a;,
        LLe/Q$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LLe/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final d:LFe/a;


# direct methods
.method public constructor <init>(LBe/l;LFe/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;",
            "LFe/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput-object p2, p0, LLe/Q;->d:LFe/a;

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    instance-of v0, p1, LIe/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, LLe/a;->c:LBe/l;

    new-instance v1, LLe/Q$a;

    check-cast p1, LIe/a;

    iget-object v2, p0, LLe/Q;->d:LFe/a;

    invoke-direct {v1, p1, v2}, LLe/Q$a;-><init>(LIe/a;LFe/a;)V

    invoke-virtual {v0, v1}, LBe/l;->l6(LBe/q;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LLe/a;->c:LBe/l;

    new-instance v1, LLe/Q$b;

    iget-object v2, p0, LLe/Q;->d:LFe/a;

    invoke-direct {v1, p1, v2}, LLe/Q$b;-><init>(Lhn/c;LFe/a;)V

    invoke-virtual {v0, v1}, LBe/l;->l6(LBe/q;)V

    :goto_0
    return-void
.end method
