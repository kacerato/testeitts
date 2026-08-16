.class public final LLe/j1;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/j1$a;,
        LLe/j1$b;,
        LLe/j1$c;
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

.field public final g:Z


# direct methods
.method public constructor <init>(LBe/l;JLjava/util/concurrent/TimeUnit;LBe/J;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput-wide p2, p0, LLe/j1;->d:J

    iput-object p4, p0, LLe/j1;->e:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, LLe/j1;->f:LBe/J;

    iput-boolean p6, p0, LLe/j1;->g:Z

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

    new-instance v1, Lcf/e;

    invoke-direct {v1, p1}, Lcf/e;-><init>(Lhn/c;)V

    iget-boolean p1, p0, LLe/j1;->g:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, LLe/a;->c:LBe/l;

    new-instance v6, LLe/j1$a;

    iget-wide v2, p0, LLe/j1;->d:J

    iget-object v4, p0, LLe/j1;->e:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, LLe/j1;->f:LBe/J;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LLe/j1$a;-><init>(Lhn/c;JLjava/util/concurrent/TimeUnit;LBe/J;)V

    invoke-virtual {p1, v6}, LBe/l;->l6(LBe/q;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LLe/a;->c:LBe/l;

    new-instance v6, LLe/j1$b;

    iget-wide v2, p0, LLe/j1;->d:J

    iget-object v4, p0, LLe/j1;->e:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, LLe/j1;->f:LBe/J;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LLe/j1$b;-><init>(Lhn/c;JLjava/util/concurrent/TimeUnit;LBe/J;)V

    invoke-virtual {p1, v6}, LBe/l;->l6(LBe/q;)V

    :goto_0
    return-void
.end method
