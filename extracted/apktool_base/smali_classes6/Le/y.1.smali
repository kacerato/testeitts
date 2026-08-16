.class public final LLe/y;
.super LBe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "LBe/l<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final c:Lhn/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/b<",
            "TT;>;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Lhn/b;LFe/o;IILio/reactivex/internal/util/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/b<",
            "TT;>;",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;II",
            "Lio/reactivex/internal/util/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, LBe/l;-><init>()V

    iput-object p1, p0, LLe/y;->c:Lhn/b;

    iput-object p2, p0, LLe/y;->d:LFe/o;

    iput p3, p0, LLe/y;->e:I

    iput p4, p0, LLe/y;->f:I

    iput-object p5, p0, LLe/y;->g:Lio/reactivex/internal/util/j;

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

    iget-object v0, p0, LLe/y;->c:Lhn/b;

    new-instance v7, LLe/x$a;

    iget-object v3, p0, LLe/y;->d:LFe/o;

    iget v4, p0, LLe/y;->e:I

    iget v5, p0, LLe/y;->f:I

    iget-object v6, p0, LLe/y;->g:Lio/reactivex/internal/util/j;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, LLe/x$a;-><init>(Lhn/c;LFe/o;IILio/reactivex/internal/util/j;)V

    invoke-interface {v0, v7}, Lhn/b;->l(Lhn/c;)V

    return-void
.end method
