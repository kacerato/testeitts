.class public final LLe/J1;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/J1$a;
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

.field public final e:Ljava/util/concurrent/TimeUnit;

.field public final f:LBe/J;


# direct methods
.method public constructor <init>(LBe/l;JLjava/util/concurrent/TimeUnit;LBe/J;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput-wide p2, p0, LLe/J1;->d:J

    iput-object p4, p0, LLe/J1;->e:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, LLe/J1;->f:LBe/J;

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/a;->c:LBe/l;

    new-instance v7, LLe/J1$a;

    new-instance v2, Lcf/e;

    invoke-direct {v2, p1}, Lcf/e;-><init>(Lhn/c;)V

    iget-wide v3, p0, LLe/J1;->d:J

    iget-object v5, p0, LLe/J1;->e:Ljava/util/concurrent/TimeUnit;

    iget-object p1, p0, LLe/J1;->f:LBe/J;

    invoke-virtual {p1}, LBe/J;->c()LBe/J$c;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, LLe/J1$a;-><init>(Lhn/c;JLjava/util/concurrent/TimeUnit;LBe/J$c;)V

    invoke-virtual {v0, v7}, LBe/l;->l6(LBe/q;)V

    return-void
.end method
