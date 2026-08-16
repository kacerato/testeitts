.class public final LLe/x;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/x$a;
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

.field public final f:I

.field public final g:Lio/reactivex/internal/util/j;


# direct methods
.method public constructor <init>(LBe/l;LFe/o;IILio/reactivex/internal/util/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;II",
            "Lio/reactivex/internal/util/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput-object p2, p0, LLe/x;->d:LFe/o;

    iput p3, p0, LLe/x;->e:I

    iput p4, p0, LLe/x;->f:I

    iput-object p5, p0, LLe/x;->g:Lio/reactivex/internal/util/j;

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/a;->c:LBe/l;

    new-instance v7, LLe/x$a;

    iget-object v3, p0, LLe/x;->d:LFe/o;

    iget v4, p0, LLe/x;->e:I

    iget v5, p0, LLe/x;->f:I

    iget-object v6, p0, LLe/x;->g:Lio/reactivex/internal/util/j;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, LLe/x$a;-><init>(Lhn/c;LFe/o;IILio/reactivex/internal/util/j;)V

    invoke-virtual {v0, v7}, LBe/l;->l6(LBe/q;)V

    return-void
.end method
