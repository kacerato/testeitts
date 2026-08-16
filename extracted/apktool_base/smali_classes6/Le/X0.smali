.class public final LLe/X0;
.super LBe/s;
.source "SourceFile"

# interfaces
.implements LIe/h;
.implements LIe/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/X0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/s<",
        "TT;>;",
        "LIe/h<",
        "TT;>;",
        "LIe/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LBe/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/l<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:LFe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/c<",
            "TT;TT;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/l;LFe/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;",
            "LFe/c<",
            "TT;TT;TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/s;-><init>()V

    iput-object p1, p0, LLe/X0;->b:LBe/l;

    iput-object p2, p0, LLe/X0;->c:LFe/c;

    return-void
.end method


# virtual methods
.method public f()LBe/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LLe/W0;

    iget-object v1, p0, LLe/X0;->b:LBe/l;

    iget-object v2, p0, LLe/X0;->c:LFe/c;

    invoke-direct {v0, v1, v2}, LLe/W0;-><init>(LBe/l;LFe/c;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object v0

    return-object v0
.end method

.method public source()Lhn/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhn/b<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, LLe/X0;->b:LBe/l;

    return-object v0
.end method

.method public t1(LBe/v;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/v<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/X0;->b:LBe/l;

    new-instance v1, LLe/X0$a;

    iget-object v2, p0, LLe/X0;->c:LFe/c;

    invoke-direct {v1, p1, v2}, LLe/X0$a;-><init>(LBe/v;LFe/c;)V

    invoke-virtual {v0, v1}, LBe/l;->l6(LBe/q;)V

    return-void
.end method
