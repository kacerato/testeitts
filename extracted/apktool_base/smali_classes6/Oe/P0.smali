.class public final LOe/P0;
.super LOe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/P0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LOe/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final c:J


# direct methods
.method public constructor <init>(LBe/B;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/B<",
            "TT;>;J)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LOe/a;-><init>(LBe/G;)V

    iput-wide p2, p0, LOe/P0;->c:J

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v4, LGe/h;

    invoke-direct {v4}, LGe/h;-><init>()V

    invoke-interface {p1, v4}, LBe/I;->e(LDe/c;)V

    new-instance v6, LOe/P0$a;

    iget-wide v0, p0, LOe/P0;->c:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    move-wide v2, v0

    :cond_0
    iget-object v5, p0, LOe/a;->b:LBe/G;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, LOe/P0$a;-><init>(LBe/I;JLGe/h;LBe/G;)V

    invoke-virtual {v6}, LOe/P0$a;->b()V

    return-void
.end method
