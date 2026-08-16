.class public final LLe/q;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/q$a;,
        LLe/q$c;,
        LLe/q$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "LLe/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field public final d:J

.field public final e:J

.field public final f:Ljava/util/concurrent/TimeUnit;

.field public final g:LBe/J;

.field public final h:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field

.field public final i:I

.field public final j:Z


# direct methods
.method public constructor <init>(LBe/l;JJLjava/util/concurrent/TimeUnit;LBe/J;Ljava/util/concurrent/Callable;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput-wide p2, p0, LLe/q;->d:J

    iput-wide p4, p0, LLe/q;->e:J

    iput-object p6, p0, LLe/q;->f:Ljava/util/concurrent/TimeUnit;

    iput-object p7, p0, LLe/q;->g:LBe/J;

    iput-object p8, p0, LLe/q;->h:Ljava/util/concurrent/Callable;

    iput p9, p0, LLe/q;->i:I

    iput-boolean p10, p0, LLe/q;->j:Z

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TU;>;)V"
        }
    .end annotation

    iget-wide v0, p0, LLe/q;->d:J

    iget-wide v2, p0, LLe/q;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, LLe/q;->i:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LLe/a;->c:LBe/l;

    new-instance v8, LLe/q$b;

    new-instance v2, Lcf/e;

    invoke-direct {v2, p1}, Lcf/e;-><init>(Lhn/c;)V

    iget-object v3, p0, LLe/q;->h:Ljava/util/concurrent/Callable;

    iget-wide v4, p0, LLe/q;->d:J

    iget-object v6, p0, LLe/q;->f:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, LLe/q;->g:LBe/J;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, LLe/q$b;-><init>(Lhn/c;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;LBe/J;)V

    invoke-virtual {v0, v8}, LBe/l;->l6(LBe/q;)V

    return-void

    :cond_0
    iget-object v0, p0, LLe/q;->g:LBe/J;

    invoke-virtual {v0}, LBe/J;->c()LBe/J$c;

    move-result-object v9

    iget-wide v0, p0, LLe/q;->d:J

    iget-wide v2, p0, LLe/q;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, LLe/a;->c:LBe/l;

    new-instance v10, LLe/q$a;

    new-instance v2, Lcf/e;

    invoke-direct {v2, p1}, Lcf/e;-><init>(Lhn/c;)V

    iget-object v3, p0, LLe/q;->h:Ljava/util/concurrent/Callable;

    iget-wide v4, p0, LLe/q;->d:J

    iget-object v6, p0, LLe/q;->f:Ljava/util/concurrent/TimeUnit;

    iget v7, p0, LLe/q;->i:I

    iget-boolean v8, p0, LLe/q;->j:Z

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, LLe/q$a;-><init>(Lhn/c;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;IZLBe/J$c;)V

    invoke-virtual {v0, v10}, LBe/l;->l6(LBe/q;)V

    return-void

    :cond_1
    iget-object v0, p0, LLe/a;->c:LBe/l;

    new-instance v10, LLe/q$c;

    new-instance v2, Lcf/e;

    invoke-direct {v2, p1}, Lcf/e;-><init>(Lhn/c;)V

    iget-object v3, p0, LLe/q;->h:Ljava/util/concurrent/Callable;

    iget-wide v4, p0, LLe/q;->d:J

    iget-wide v6, p0, LLe/q;->e:J

    iget-object v8, p0, LLe/q;->f:Ljava/util/concurrent/TimeUnit;

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, LLe/q$c;-><init>(Lhn/c;Ljava/util/concurrent/Callable;JJLjava/util/concurrent/TimeUnit;LBe/J$c;)V

    invoke-virtual {v0, v10}, LBe/l;->l6(LBe/q;)V

    return-void
.end method
