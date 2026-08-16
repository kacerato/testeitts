.class public final LNe/e;
.super LBe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LNe/e$a;
    }
.end annotation

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
.field public final c:LBe/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/l<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-TT;+",
            "LBe/Q<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final e:Lio/reactivex/internal/util/j;

.field public final f:I


# direct methods
.method public constructor <init>(LBe/l;LFe/o;Lio/reactivex/internal/util/j;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;",
            "LFe/o<",
            "-TT;+",
            "LBe/Q<",
            "+TR;>;>;",
            "Lio/reactivex/internal/util/j;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/l;-><init>()V

    iput-object p1, p0, LNe/e;->c:LBe/l;

    iput-object p2, p0, LNe/e;->d:LFe/o;

    iput-object p3, p0, LNe/e;->e:Lio/reactivex/internal/util/j;

    iput p4, p0, LNe/e;->f:I

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, LNe/e;->c:LBe/l;

    new-instance v1, LNe/e$a;

    iget-object v2, p0, LNe/e;->d:LFe/o;

    iget v3, p0, LNe/e;->f:I

    iget-object v4, p0, LNe/e;->e:Lio/reactivex/internal/util/j;

    invoke-direct {v1, p1, v2, v3, v4}, LNe/e$a;-><init>(Lhn/c;LFe/o;ILio/reactivex/internal/util/j;)V

    invoke-virtual {v0, v1}, LBe/l;->l6(LBe/q;)V

    return-void
.end method
