.class public final LLe/K0;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/K0$b;,
        LLe/K0$c;,
        LLe/K0$a;
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
.field public final d:LBe/J;

.field public final e:Z

.field public final f:I


# direct methods
.method public constructor <init>(LBe/l;LBe/J;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;",
            "LBe/J;",
            "ZI)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput-object p2, p0, LLe/K0;->d:LBe/J;

    iput-boolean p3, p0, LLe/K0;->e:Z

    iput p4, p0, LLe/K0;->f:I

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/K0;->d:LBe/J;

    invoke-virtual {v0}, LBe/J;->c()LBe/J$c;

    move-result-object v0

    instance-of v1, p1, LIe/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, LLe/a;->c:LBe/l;

    new-instance v2, LLe/K0$b;

    check-cast p1, LIe/a;

    iget-boolean v3, p0, LLe/K0;->e:Z

    iget v4, p0, LLe/K0;->f:I

    invoke-direct {v2, p1, v0, v3, v4}, LLe/K0$b;-><init>(LIe/a;LBe/J$c;ZI)V

    invoke-virtual {v1, v2}, LBe/l;->l6(LBe/q;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, LLe/a;->c:LBe/l;

    new-instance v2, LLe/K0$c;

    iget-boolean v3, p0, LLe/K0;->e:Z

    iget v4, p0, LLe/K0;->f:I

    invoke-direct {v2, p1, v0, v3, v4}, LLe/K0$c;-><init>(Lhn/c;LBe/J$c;ZI)V

    invoke-virtual {v1, v2}, LBe/l;->l6(LBe/q;)V

    :goto_0
    return-void
.end method
