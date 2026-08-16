.class public final LLe/O;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/O$a;,
        LLe/O$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "LLe/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final d:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-TT;TK;>;"
        }
    .end annotation
.end field

.field public final e:LFe/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/d<",
            "-TK;-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/l;LFe/o;LFe/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;",
            "LFe/o<",
            "-TT;TK;>;",
            "LFe/d<",
            "-TK;-TK;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput-object p2, p0, LLe/O;->d:LFe/o;

    iput-object p3, p0, LLe/O;->e:LFe/d;

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    instance-of v0, p1, LIe/a;

    if-eqz v0, :cond_0

    check-cast p1, LIe/a;

    iget-object v0, p0, LLe/a;->c:LBe/l;

    new-instance v1, LLe/O$a;

    iget-object v2, p0, LLe/O;->d:LFe/o;

    iget-object v3, p0, LLe/O;->e:LFe/d;

    invoke-direct {v1, p1, v2, v3}, LLe/O$a;-><init>(LIe/a;LFe/o;LFe/d;)V

    invoke-virtual {v0, v1}, LBe/l;->l6(LBe/q;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LLe/a;->c:LBe/l;

    new-instance v1, LLe/O$b;

    iget-object v2, p0, LLe/O;->d:LFe/o;

    iget-object v3, p0, LLe/O;->e:LFe/d;

    invoke-direct {v1, p1, v2, v3}, LLe/O$b;-><init>(Lhn/c;LFe/o;LFe/d;)V

    invoke-virtual {v0, v1}, LBe/l;->l6(LBe/q;)V

    :goto_0
    return-void
.end method
