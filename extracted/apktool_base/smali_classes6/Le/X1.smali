.class public final LLe/X1;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/X1$c;,
        LLe/X1$a;,
        LLe/X1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LLe/a<",
        "TT;",
        "LBe/l<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final d:J

.field public final e:J

.field public final f:Ljava/util/concurrent/TimeUnit;

.field public final g:LBe/J;

.field public final h:J

.field public final i:I

.field public final j:Z


# direct methods
.method public constructor <init>(LBe/l;JJLjava/util/concurrent/TimeUnit;LBe/J;JIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "JIZ)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput-wide p2, p0, LLe/X1;->d:J

    iput-wide p4, p0, LLe/X1;->e:J

    iput-object p6, p0, LLe/X1;->f:Ljava/util/concurrent/TimeUnit;

    iput-object p7, p0, LLe/X1;->g:LBe/J;

    iput-wide p8, p0, LLe/X1;->h:J

    iput p10, p0, LLe/X1;->i:I

    iput-boolean p11, p0, LLe/X1;->j:Z

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-",
            "LBe/l<",
            "TT;>;>;)V"
        }
    .end annotation

    new-instance v1, Lcf/e;

    invoke-direct {v1, p1}, Lcf/e;-><init>(Lhn/c;)V

    iget-wide v2, p0, LLe/X1;->d:J

    iget-wide v4, p0, LLe/X1;->e:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    iget-wide v7, p0, LLe/X1;->h:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long p1, v7, v4

    if-nez p1, :cond_0

    iget-object p1, p0, LLe/a;->c:LBe/l;

    new-instance v7, LLe/X1$b;

    iget-wide v2, p0, LLe/X1;->d:J

    iget-object v4, p0, LLe/X1;->f:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, LLe/X1;->g:LBe/J;

    iget v6, p0, LLe/X1;->i:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, LLe/X1$b;-><init>(Lhn/c;JLjava/util/concurrent/TimeUnit;LBe/J;I)V

    invoke-virtual {p1, v7}, LBe/l;->l6(LBe/q;)V

    return-void

    :cond_0
    iget-object p1, p0, LLe/a;->c:LBe/l;

    new-instance v10, LLe/X1$a;

    iget-object v4, p0, LLe/X1;->f:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, LLe/X1;->g:LBe/J;

    iget v6, p0, LLe/X1;->i:I

    iget-boolean v9, p0, LLe/X1;->j:Z

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, LLe/X1$a;-><init>(Lhn/c;JLjava/util/concurrent/TimeUnit;LBe/J;IJZ)V

    invoke-virtual {p1, v10}, LBe/l;->l6(LBe/q;)V

    return-void

    :cond_1
    iget-object p1, p0, LLe/a;->c:LBe/l;

    new-instance v9, LLe/X1$c;

    iget-object v6, p0, LLe/X1;->f:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, LLe/X1;->g:LBe/J;

    invoke-virtual {v0}, LBe/J;->c()LBe/J$c;

    move-result-object v7

    iget v8, p0, LLe/X1;->i:I

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, LLe/X1$c;-><init>(Lhn/c;JJLjava/util/concurrent/TimeUnit;LBe/J$c;I)V

    invoke-virtual {p1, v9}, LBe/l;->l6(LBe/q;)V

    return-void
.end method
