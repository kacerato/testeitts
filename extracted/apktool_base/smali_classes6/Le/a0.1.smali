.class public final LLe/a0;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/a0$a;,
        LLe/a0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "LLe/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field public final d:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field public final e:Z

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(LBe/l;LFe/o;ZII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TU;>;>;ZII)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput-object p2, p0, LLe/a0;->d:LFe/o;

    iput-boolean p3, p0, LLe/a0;->e:Z

    iput p4, p0, LLe/a0;->f:I

    iput p5, p0, LLe/a0;->g:I

    return-void
.end method

.method public static O8(Lhn/c;LFe/o;ZII)LBe/q;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/c<",
            "-TU;>;",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TU;>;>;ZII)",
            "LBe/q<",
            "TT;>;"
        }
    .end annotation

    new-instance v6, LLe/a0$b;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, LLe/a0$b;-><init>(Lhn/c;LFe/o;ZII)V

    return-object v6
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TU;>;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/a;->c:LBe/l;

    iget-object v1, p0, LLe/a0;->d:LFe/o;

    invoke-static {v0, p1, v1}, LLe/k1;->b(Lhn/b;Lhn/c;LFe/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LLe/a;->c:LBe/l;

    iget-object v1, p0, LLe/a0;->d:LFe/o;

    iget-boolean v2, p0, LLe/a0;->e:Z

    iget v3, p0, LLe/a0;->f:I

    iget v4, p0, LLe/a0;->g:I

    invoke-static {p1, v1, v2, v3, v4}, LLe/a0;->O8(Lhn/c;LFe/o;ZII)LBe/q;

    move-result-object p1

    invoke-virtual {v0, p1}, LBe/l;->l6(LBe/q;)V

    return-void
.end method
