.class public final LLe/P;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/P$a;,
        LLe/P$b;
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
.field public final d:LFe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/g<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/l;LFe/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;",
            "LFe/g<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput-object p2, p0, LLe/P;->d:LFe/g;

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

    new-instance v1, LLe/P$a;

    check-cast p1, LIe/a;

    iget-object v2, p0, LLe/P;->d:LFe/g;

    invoke-direct {v1, p1, v2}, LLe/P$a;-><init>(LIe/a;LFe/g;)V

    invoke-virtual {v0, v1}, LBe/l;->l6(LBe/q;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LLe/a;->c:LBe/l;

    new-instance v1, LLe/P$b;

    iget-object v2, p0, LLe/P;->d:LFe/g;

    invoke-direct {v1, p1, v2}, LLe/P$b;-><init>(Lhn/c;LFe/g;)V

    invoke-virtual {v0, v1}, LBe/l;->l6(LBe/q;)V

    :goto_0
    return-void
.end method
