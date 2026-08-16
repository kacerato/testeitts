.class public final Lqd/F;
.super Lqd/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqd/F$b;
    }
.end annotation


# instance fields
.field public final g:Lqd/F$b;


# direct methods
.method public constructor <init>(ILqd/J;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lqd/a;-><init>(ILqd/J;)V

    new-instance p1, Lqd/F$b;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lqd/F$b;-><init>(Lqd/F$a;)V

    iput-object p1, p0, Lqd/F;->g:Lqd/F$b;

    return-void
.end method


# virtual methods
.method public b(I)Z
    .locals 7

    iget-object v0, p0, Lqd/F;->g:Lqd/F$b;

    iget-wide v1, v0, Lqd/F$b;->a:J

    int-to-long v3, p1

    add-long/2addr v3, v1

    iget p1, p0, Lqd/a;->b:I

    int-to-long v5, p1

    sub-long/2addr v3, v5

    iget-wide v5, v0, Lqd/F$b;->b:J

    cmp-long p1, v3, v5

    if-gtz p1, :cond_0

    cmp-long p1, v5, v1

    if-lez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lqd/a;->e:[Lqd/z;

    invoke-static {p1, v1, v2}, Ltd/d;->d([Lqd/z;J)J

    move-result-wide v0

    iget-object p1, p0, Lqd/F;->g:Lqd/F$b;

    iput-wide v0, p1, Lqd/F$b;->b:J

    cmp-long p1, v3, v0

    if-lez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public c(I)J
    .locals 9

    iget-object v0, p0, Lqd/F;->g:Lqd/F$b;

    iget-wide v1, v0, Lqd/F$b;->a:J

    int-to-long v3, p1

    add-long/2addr v3, v1

    iget p1, p0, Lqd/a;->b:I

    int-to-long v5, p1

    sub-long v5, v3, v5

    iget-wide v7, v0, Lqd/F$b;->b:J

    cmp-long p1, v5, v7

    if-gtz p1, :cond_0

    cmp-long p1, v7, v1

    if-lez p1, :cond_2

    :cond_0
    :goto_0
    iget-object p1, p0, Lqd/a;->e:[Lqd/z;

    invoke-static {p1, v1, v2}, Ltd/d;->d([Lqd/z;J)J

    move-result-wide v7

    cmp-long p1, v5, v7

    if-lez p1, :cond_1

    const-wide/16 v7, 0x1

    invoke-static {v7, v8}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lqd/F;->g:Lqd/F$b;

    iput-wide v7, p1, Lqd/F$b;->b:J

    :cond_2
    iget-object p1, p0, Lqd/F;->g:Lqd/F$b;

    iput-wide v3, p1, Lqd/F$b;->a:J

    return-wide v3
.end method

.method public d(I)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lmax/disruptor/InsufficientCapacityException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lqd/F;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqd/F;->g:Lqd/F$b;

    iget-wide v1, v0, Lqd/F$b;->a:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lqd/F$b;->a:J

    return-wide v1

    :cond_0
    sget-object p1, Lcom/lmax/disruptor/InsufficientCapacityException;->INSTANCE:Lcom/lmax/disruptor/InsufficientCapacityException;

    throw p1
.end method

.method public f(J)Z
    .locals 2

    iget-object v0, p0, Lqd/a;->d:Lqd/z;

    invoke-virtual {v0}, Lqd/z;->c()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public g()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lmax/disruptor/InsufficientCapacityException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lqd/F;->d(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public h(JJ)J
    .locals 0

    return-wide p3
.end method

.method public j(J)V
    .locals 1

    iget-object v0, p0, Lqd/a;->d:Lqd/z;

    invoke-virtual {v0, p1, p2}, Lqd/z;->e(J)V

    iget-object p1, p0, Lqd/a;->c:Lqd/J;

    invoke-interface {p1}, Lqd/J;->a()V

    return-void
.end method

.method public l(J)V
    .locals 1

    iget-object v0, p0, Lqd/F;->g:Lqd/F$b;

    iput-wide p1, v0, Lqd/F$b;->a:J

    return-void
.end method

.method public n(JJ)V
    .locals 0

    invoke-virtual {p0, p3, p4}, Lqd/F;->j(J)V

    return-void
.end method

.method public next()J
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lqd/F;->c(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public remainingCapacity()J
    .locals 6

    iget-object v0, p0, Lqd/F;->g:Lqd/F$b;

    iget-wide v0, v0, Lqd/F$b;->a:J

    iget-object v2, p0, Lqd/a;->e:[Lqd/z;

    invoke-static {v2, v0, v1}, Ltd/d;->d([Lqd/z;J)J

    move-result-wide v2

    invoke-virtual {p0}, Lqd/a;->m()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v0, v2

    sub-long/2addr v4, v0

    return-wide v4
.end method
