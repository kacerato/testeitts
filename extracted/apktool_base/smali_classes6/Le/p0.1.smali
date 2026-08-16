.class public final LLe/p0;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/p0$c;,
        LLe/p0$d;,
        LLe/p0$a;,
        LLe/p0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Left:Ljava/lang/Object;",
        "TRight:",
        "Ljava/lang/Object;",
        "T",
        "LeftEnd:Ljava/lang/Object;",
        "TRightEnd:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "LLe/a<",
        "TT",
        "Left;",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final d:Lhn/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/b<",
            "+TTRight;>;"
        }
    .end annotation
.end field

.field public final e:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-TT",
            "Left;",
            "+",
            "Lhn/b<",
            "TT",
            "LeftEnd;",
            ">;>;"
        }
    .end annotation
.end field

.field public final f:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-TTRight;+",
            "Lhn/b<",
            "TTRightEnd;>;>;"
        }
    .end annotation
.end field

.field public final g:LFe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/c<",
            "-TT",
            "Left;",
            "-",
            "LBe/l<",
            "TTRight;>;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/l;Lhn/b;LFe/o;LFe/o;LFe/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT",
            "Left;",
            ">;",
            "Lhn/b<",
            "+TTRight;>;",
            "LFe/o<",
            "-TT",
            "Left;",
            "+",
            "Lhn/b<",
            "TT",
            "LeftEnd;",
            ">;>;",
            "LFe/o<",
            "-TTRight;+",
            "Lhn/b<",
            "TTRightEnd;>;>;",
            "LFe/c<",
            "-TT",
            "Left;",
            "-",
            "LBe/l<",
            "TTRight;>;+TR;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput-object p2, p0, LLe/p0;->d:Lhn/b;

    iput-object p3, p0, LLe/p0;->e:LFe/o;

    iput-object p4, p0, LLe/p0;->f:LFe/o;

    iput-object p5, p0, LLe/p0;->g:LFe/c;

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TR;>;)V"
        }
    .end annotation

    new-instance v0, LLe/p0$a;

    iget-object v1, p0, LLe/p0;->e:LFe/o;

    iget-object v2, p0, LLe/p0;->f:LFe/o;

    iget-object v3, p0, LLe/p0;->g:LFe/c;

    invoke-direct {v0, p1, v1, v2, v3}, LLe/p0$a;-><init>(Lhn/c;LFe/o;LFe/o;LFe/c;)V

    invoke-interface {p1, v0}, Lhn/c;->j(Lhn/d;)V

    new-instance p1, LLe/p0$d;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, LLe/p0$d;-><init>(LLe/p0$b;Z)V

    iget-object v1, v0, LLe/p0$a;->e:LDe/b;

    invoke-virtual {v1, p1}, LDe/b;->a(LDe/c;)Z

    new-instance v1, LLe/p0$d;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, LLe/p0$d;-><init>(LLe/p0$b;Z)V

    iget-object v0, v0, LLe/p0$a;->e:LDe/b;

    invoke-virtual {v0, v1}, LDe/b;->a(LDe/c;)Z

    iget-object v0, p0, LLe/a;->c:LBe/l;

    invoke-virtual {v0, p1}, LBe/l;->l6(LBe/q;)V

    iget-object p1, p0, LLe/p0;->d:Lhn/b;

    invoke-interface {p1, v1}, Lhn/b;->l(Lhn/c;)V

    return-void
.end method
