.class public final LNe/l;
.super LBe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LNe/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/c;"
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
            "LBe/i;",
            ">;"
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
            "LBe/i;",
            ">;",
            "Lio/reactivex/internal/util/j;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/c;-><init>()V

    iput-object p1, p0, LNe/l;->b:LBe/B;

    iput-object p2, p0, LNe/l;->c:LFe/o;

    iput-object p3, p0, LNe/l;->d:Lio/reactivex/internal/util/j;

    iput p4, p0, LNe/l;->e:I

    return-void
.end method


# virtual methods
.method public K0(LBe/f;)V
    .locals 5

    iget-object v0, p0, LNe/l;->b:LBe/B;

    iget-object v1, p0, LNe/l;->c:LFe/o;

    invoke-static {v0, v1, p1}, LNe/r;->a(Ljava/lang/Object;LFe/o;LBe/f;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LNe/l;->b:LBe/B;

    new-instance v1, LNe/l$a;

    iget-object v2, p0, LNe/l;->c:LFe/o;

    iget-object v3, p0, LNe/l;->d:Lio/reactivex/internal/util/j;

    iget v4, p0, LNe/l;->e:I

    invoke-direct {v1, p1, v2, v3, v4}, LNe/l$a;-><init>(LBe/f;LFe/o;Lio/reactivex/internal/util/j;I)V

    invoke-virtual {v0, v1}, LBe/B;->c(LBe/I;)V

    :cond_0
    return-void
.end method
