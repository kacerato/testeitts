.class public final LLe/b1;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/b1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LLe/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final d:J


# direct methods
.method public constructor <init>(LBe/l;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;J)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput-wide p2, p0, LLe/b1;->d:J

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v4, LUe/i;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, LUe/i;-><init>(Z)V

    invoke-interface {p1, v4}, Lhn/c;->j(Lhn/d;)V

    new-instance v6, LLe/b1$a;

    iget-wide v0, p0, LLe/b1;->d:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    move-wide v2, v0

    :cond_0
    iget-object v5, p0, LLe/a;->c:LBe/l;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, LLe/b1$a;-><init>(Lhn/c;JLUe/i;Lhn/b;)V

    invoke-virtual {v6}, LLe/b1$a;->b()V

    return-void
.end method
