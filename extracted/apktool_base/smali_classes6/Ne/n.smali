.class public final LNe/n;
.super LBe/B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LNe/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "LBe/B<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final b:LBe/B;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/B<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-TT;+",
            "LBe/Q<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final d:Lio/reactivex/internal/util/j;

.field public final e:I


# direct methods
.method public constructor <init>(LBe/B;LFe/o;Lio/reactivex/internal/util/j;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/B<",
            "TT;>;",
            "LFe/o<",
            "-TT;+",
            "LBe/Q<",
            "+TR;>;>;",
            "Lio/reactivex/internal/util/j;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/B;-><init>()V

    iput-object p1, p0, LNe/n;->b:LBe/B;

    iput-object p2, p0, LNe/n;->c:LFe/o;

    iput-object p3, p0, LNe/n;->d:Lio/reactivex/internal/util/j;

    iput p4, p0, LNe/n;->e:I

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, LNe/n;->b:LBe/B;

    iget-object v1, p0, LNe/n;->c:LFe/o;

    invoke-static {v0, v1, p1}, LNe/r;->c(Ljava/lang/Object;LFe/o;LBe/I;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LNe/n;->b:LBe/B;

    new-instance v1, LNe/n$a;

    iget-object v2, p0, LNe/n;->c:LFe/o;

    iget v3, p0, LNe/n;->e:I

    iget-object v4, p0, LNe/n;->d:Lio/reactivex/internal/util/j;

    invoke-direct {v1, p1, v2, v3, v4}, LNe/n$a;-><init>(LBe/I;LFe/o;ILio/reactivex/internal/util/j;)V

    invoke-virtual {v0, v1}, LBe/B;->c(LBe/I;)V

    :cond_0
    return-void
.end method
