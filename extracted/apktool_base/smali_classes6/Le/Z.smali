.class public final LLe/Z;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/Z$a;,
        LLe/Z$b;
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
.field public final d:LFe/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/r<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/l;LFe/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;",
            "LFe/r<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput-object p2, p0, LLe/Z;->d:LFe/r;

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

    new-instance v1, LLe/Z$a;

    check-cast p1, LIe/a;

    iget-object v2, p0, LLe/Z;->d:LFe/r;

    invoke-direct {v1, p1, v2}, LLe/Z$a;-><init>(LIe/a;LFe/r;)V

    invoke-virtual {v0, v1}, LBe/l;->l6(LBe/q;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LLe/a;->c:LBe/l;

    new-instance v1, LLe/Z$b;

    iget-object v2, p0, LLe/Z;->d:LFe/r;

    invoke-direct {v1, p1, v2}, LLe/Z$b;-><init>(Lhn/c;LFe/r;)V

    invoke-virtual {v0, v1}, LBe/l;->l6(LBe/q;)V

    :goto_0
    return-void
.end method
