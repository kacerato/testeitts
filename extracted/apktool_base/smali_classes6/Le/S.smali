.class public final LLe/S;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/S$a;,
        LLe/S$b;
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

.field public final e:LFe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final f:LFe/a;

.field public final g:LFe/a;


# direct methods
.method public constructor <init>(LBe/l;LFe/g;LFe/g;LFe/a;LFe/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;",
            "LFe/g<",
            "-TT;>;",
            "LFe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "LFe/a;",
            "LFe/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput-object p2, p0, LLe/S;->d:LFe/g;

    iput-object p3, p0, LLe/S;->e:LFe/g;

    iput-object p4, p0, LLe/S;->f:LFe/a;

    iput-object p5, p0, LLe/S;->g:LFe/a;

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 8
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

    new-instance v7, LLe/S$a;

    move-object v2, p1

    check-cast v2, LIe/a;

    iget-object v3, p0, LLe/S;->d:LFe/g;

    iget-object v4, p0, LLe/S;->e:LFe/g;

    iget-object v5, p0, LLe/S;->f:LFe/a;

    iget-object v6, p0, LLe/S;->g:LFe/a;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, LLe/S$a;-><init>(LIe/a;LFe/g;LFe/g;LFe/a;LFe/a;)V

    invoke-virtual {v0, v7}, LBe/l;->l6(LBe/q;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LLe/a;->c:LBe/l;

    new-instance v7, LLe/S$b;

    iget-object v3, p0, LLe/S;->d:LFe/g;

    iget-object v4, p0, LLe/S;->e:LFe/g;

    iget-object v5, p0, LLe/S;->f:LFe/a;

    iget-object v6, p0, LLe/S;->g:LFe/a;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, LLe/S$b;-><init>(Lhn/c;LFe/g;LFe/g;LFe/a;LFe/a;)V

    invoke-virtual {v0, v7}, LBe/l;->l6(LBe/q;)V

    :goto_0
    return-void
.end method
