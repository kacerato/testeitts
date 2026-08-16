.class public final LLe/z;
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

.field public final f:Lio/reactivex/internal/util/j;


# direct methods
.method public constructor <init>(Lhn/b;LFe/o;ILio/reactivex/internal/util/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/b<",
            "TT;>;",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;I",
            "Lio/reactivex/internal/util/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, LBe/l;-><init>()V

    iput-object p1, p0, LLe/z;->c:Lhn/b;

    iput-object p2, p0, LLe/z;->d:LFe/o;

    iput p3, p0, LLe/z;->e:I

    iput-object p4, p0, LLe/z;->f:Lio/reactivex/internal/util/j;

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

    iget-object v0, p0, LLe/z;->c:Lhn/b;

    iget-object v1, p0, LLe/z;->d:LFe/o;

    invoke-static {v0, p1, v1}, LLe/k1;->b(Lhn/b;Lhn/c;LFe/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LLe/z;->c:Lhn/b;

    iget-object v1, p0, LLe/z;->d:LFe/o;

    iget v2, p0, LLe/z;->e:I

    iget-object v3, p0, LLe/z;->f:Lio/reactivex/internal/util/j;

    invoke-static {p1, v1, v2, v3}, LLe/w;->O8(Lhn/c;LFe/o;ILio/reactivex/internal/util/j;)Lhn/c;

    move-result-object p1

    invoke-interface {v0, p1}, Lhn/b;->l(Lhn/c;)V

    return-void
.end method
