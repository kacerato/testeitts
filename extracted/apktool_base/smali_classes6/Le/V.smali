.class public final LLe/V;
.super LBe/s;
.source "SourceFile"

# interfaces
.implements LIe/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/V$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/s<",
        "TT;>;",
        "LIe/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LBe/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/l<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:J


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

    invoke-direct {p0}, LBe/s;-><init>()V

    iput-object p1, p0, LLe/V;->b:LBe/l;

    iput-wide p2, p0, LLe/V;->c:J

    return-void
.end method


# virtual methods
.method public f()LBe/l;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    new-instance v6, LLe/U;

    iget-object v1, p0, LLe/V;->b:LBe/l;

    iget-wide v2, p0, LLe/V;->c:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LLe/U;-><init>(LBe/l;JLjava/lang/Object;Z)V

    invoke-static {v6}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object v0

    return-object v0
.end method

.method public t1(LBe/v;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/v<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/V;->b:LBe/l;

    new-instance v1, LLe/V$a;

    iget-wide v2, p0, LLe/V;->c:J

    invoke-direct {v1, p1, v2, v3}, LLe/V$a;-><init>(LBe/v;J)V

    invoke-virtual {v0, v1}, LBe/l;->l6(LBe/q;)V

    return-void
.end method
