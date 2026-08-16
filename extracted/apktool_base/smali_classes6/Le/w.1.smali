.class public final LLe/w;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/w$e;,
        LLe/w$f;,
        LLe/w$c;,
        LLe/w$g;,
        LLe/w$d;,
        LLe/w$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "LLe/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final d:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final e:I

.field public final f:Lio/reactivex/internal/util/j;


# direct methods
.method public constructor <init>(LBe/l;LFe/o;ILio/reactivex/internal/util/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;I",
            "Lio/reactivex/internal/util/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput-object p2, p0, LLe/w;->d:LFe/o;

    iput p3, p0, LLe/w;->e:I

    iput-object p4, p0, LLe/w;->f:Lio/reactivex/internal/util/j;

    return-void
.end method

.method public static O8(Lhn/c;LFe/o;ILio/reactivex/internal/util/j;)Lhn/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/c<",
            "-TR;>;",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;I",
            "Lio/reactivex/internal/util/j;",
            ")",
            "Lhn/c<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, LLe/w$a;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v1, 0x2

    if-eq p3, v1, :cond_0

    new-instance p3, LLe/w$d;

    invoke-direct {p3, p0, p1, p2}, LLe/w$d;-><init>(Lhn/c;LFe/o;I)V

    return-object p3

    :cond_0
    new-instance p3, LLe/w$c;

    invoke-direct {p3, p0, p1, p2, v0}, LLe/w$c;-><init>(Lhn/c;LFe/o;IZ)V

    return-object p3

    :cond_1
    new-instance p3, LLe/w$c;

    const/4 v0, 0x0

    invoke-direct {p3, p0, p1, p2, v0}, LLe/w$c;-><init>(Lhn/c;LFe/o;IZ)V

    return-object p3
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

    iget-object v0, p0, LLe/a;->c:LBe/l;

    iget-object v1, p0, LLe/w;->d:LFe/o;

    invoke-static {v0, p1, v1}, LLe/k1;->b(Lhn/b;Lhn/c;LFe/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LLe/a;->c:LBe/l;

    iget-object v1, p0, LLe/w;->d:LFe/o;

    iget v2, p0, LLe/w;->e:I

    iget-object v3, p0, LLe/w;->f:Lio/reactivex/internal/util/j;

    invoke-static {p1, v1, v2, v3}, LLe/w;->O8(Lhn/c;LFe/o;ILio/reactivex/internal/util/j;)Lhn/c;

    move-result-object p1

    invoke-virtual {v0, p1}, LBe/l;->l(Lhn/c;)V

    return-void
.end method
