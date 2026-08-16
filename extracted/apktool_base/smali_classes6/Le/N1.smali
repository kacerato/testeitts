.class public final LLe/N1;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/N1$d;,
        LLe/N1$a;,
        LLe/N1$b;,
        LLe/N1$e;,
        LLe/N1$c;
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

.field public final g:Lhn/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/b<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/l;JLjava/util/concurrent/TimeUnit;LBe/J;Lhn/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "Lhn/b<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput-wide p2, p0, LLe/N1;->d:J

    iput-object p4, p0, LLe/N1;->e:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, LLe/N1;->f:LBe/J;

    iput-object p6, p0, LLe/N1;->g:Lhn/b;

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/N1;->g:Lhn/b;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, LLe/N1$c;

    iget-wide v5, p0, LLe/N1;->d:J

    iget-object v7, p0, LLe/N1;->e:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, LLe/N1;->f:LBe/J;

    invoke-virtual {v3}, LBe/J;->c()LBe/J$c;

    move-result-object v8

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, LLe/N1$c;-><init>(Lhn/c;JLjava/util/concurrent/TimeUnit;LBe/J$c;)V

    invoke-interface {p1, v0}, Lhn/c;->j(Lhn/d;)V

    invoke-virtual {v0, v1, v2}, LLe/N1$c;->d(J)V

    iget-object p1, p0, LLe/a;->c:LBe/l;

    invoke-virtual {p1, v0}, LBe/l;->l6(LBe/q;)V

    goto :goto_0

    :cond_0
    new-instance v0, LLe/N1$b;

    iget-wide v5, p0, LLe/N1;->d:J

    iget-object v7, p0, LLe/N1;->e:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, LLe/N1;->f:LBe/J;

    invoke-virtual {v3}, LBe/J;->c()LBe/J$c;

    move-result-object v8

    iget-object v9, p0, LLe/N1;->g:Lhn/b;

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, LLe/N1$b;-><init>(Lhn/c;JLjava/util/concurrent/TimeUnit;LBe/J$c;Lhn/b;)V

    invoke-interface {p1, v0}, Lhn/c;->j(Lhn/d;)V

    invoke-virtual {v0, v1, v2}, LLe/N1$b;->m(J)V

    iget-object p1, p0, LLe/a;->c:LBe/l;

    invoke-virtual {p1, v0}, LBe/l;->l6(LBe/q;)V

    :goto_0
    return-void
.end method
