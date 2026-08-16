.class public final Lqd/u;
.super Lqd/a;
.source "SourceFile"


# static fields
.field public static final k:Lsun/misc/Unsafe;

.field public static final l:J

.field public static final m:J


# instance fields
.field public final g:Lqd/z;

.field public final h:[I

.field public final i:I

.field public final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Ltd/d;->f()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lqd/u;->k:Lsun/misc/Unsafe;

    const-class v1, [I

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lqd/u;->l:J

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lqd/u;->m:J

    return-void
.end method

.method public constructor <init>(ILqd/J;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lqd/a;-><init>(ILqd/J;)V

    new-instance p2, Lqd/z;

    const-wide/16 v0, -0x1

    invoke-direct {p2, v0, v1}, Lqd/z;-><init>(J)V

    iput-object p2, p0, Lqd/u;->g:Lqd/z;

    new-array p2, p1, [I

    iput-object p2, p0, Lqd/u;->h:[I

    add-int/lit8 p2, p1, -0x1

    iput p2, p0, Lqd/u;->i:I

    invoke-static {p1}, Ltd/d;->g(I)I

    move-result p1

    iput p1, p0, Lqd/u;->j:I

    invoke-virtual {p0}, Lqd/u;->r()V

    return-void
.end method


# virtual methods
.method public b(I)Z
    .locals 3

    iget-object v0, p0, Lqd/a;->e:[Lqd/z;

    iget-object v1, p0, Lqd/a;->d:Lqd/z;

    invoke-virtual {v1}, Lqd/z;->c()J

    move-result-wide v1

    invoke-virtual {p0, v0, p1, v1, v2}, Lqd/u;->q([Lqd/z;IJ)Z

    move-result p1

    return p1
.end method

.method public c(I)J
    .locals 9

    :cond_0
    :goto_0
    iget-object v0, p0, Lqd/a;->d:Lqd/z;

    invoke-virtual {v0}, Lqd/z;->c()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v2, v0

    iget v4, p0, Lqd/a;->b:I

    int-to-long v4, v4

    sub-long v4, v2, v4

    iget-object v6, p0, Lqd/u;->g:Lqd/z;

    invoke-virtual {v6}, Lqd/z;->c()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gtz v8, :cond_2

    cmp-long v6, v6, v0

    if-lez v6, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lqd/a;->d:Lqd/z;

    invoke-virtual {v4, v0, v1, v2, v3}, Lqd/z;->b(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v2

    :cond_2
    :goto_1
    iget-object v2, p0, Lqd/a;->e:[Lqd/z;

    invoke-static {v2, v0, v1}, Ltd/d;->d([Lqd/z;J)J

    move-result-wide v0

    cmp-long v2, v4, v0

    if-lez v2, :cond_3

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lqd/u;->g:Lqd/z;

    invoke-virtual {v2, v0, v1}, Lqd/z;->e(J)V

    goto :goto_0
.end method

.method public d(I)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lmax/disruptor/InsufficientCapacityException;
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lqd/a;->d:Lqd/z;

    invoke-virtual {v0}, Lqd/z;->c()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v2, v0

    iget-object v4, p0, Lqd/a;->e:[Lqd/z;

    invoke-virtual {p0, v4, p1, v0, v1}, Lqd/u;->q([Lqd/z;IJ)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lqd/a;->d:Lqd/z;

    invoke-virtual {v4, v0, v1, v2, v3}, Lqd/z;->b(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v2

    :cond_1
    sget-object p1, Lcom/lmax/disruptor/InsufficientCapacityException;->INSTANCE:Lcom/lmax/disruptor/InsufficientCapacityException;

    throw p1
.end method

.method public f(J)Z
    .locals 4

    invoke-virtual {p0, p1, p2}, Lqd/u;->p(J)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Lqd/u;->o(J)I

    move-result p1

    int-to-long v0, v0

    sget-wide v2, Lqd/u;->m:J

    mul-long/2addr v0, v2

    sget-wide v2, Lqd/u;->l:J

    add-long/2addr v0, v2

    sget-object p2, Lqd/u;->k:Lsun/misc/Unsafe;

    iget-object v2, p0, Lqd/u;->h:[I

    invoke-virtual {p2, v2, v0, v1}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result p2

    if-ne p2, p1, :cond_0

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

    invoke-virtual {p0, v0}, Lqd/u;->d(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public h(JJ)J
    .locals 3

    :goto_0
    cmp-long v0, p1, p3

    if-gtz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lqd/u;->f(J)Z

    move-result v0

    const-wide/16 v1, 0x1

    if-nez v0, :cond_0

    sub-long/2addr p1, v1

    return-wide p1

    :cond_0
    add-long/2addr p1, v1

    goto :goto_0

    :cond_1
    return-wide p3
.end method

.method public j(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lqd/u;->s(J)V

    iget-object p1, p0, Lqd/a;->c:Lqd/J;

    invoke-interface {p1}, Lqd/J;->a()V

    return-void
.end method

.method public l(J)V
    .locals 1

    iget-object v0, p0, Lqd/a;->d:Lqd/z;

    invoke-virtual {v0, p1, p2}, Lqd/z;->e(J)V

    return-void
.end method

.method public n(JJ)V
    .locals 2

    :goto_0
    cmp-long v0, p1, p3

    if-gtz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lqd/u;->s(J)V

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lqd/a;->c:Lqd/J;

    invoke-interface {p1}, Lqd/J;->a()V

    return-void
.end method

.method public next()J
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lqd/u;->c(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final o(J)I
    .locals 1

    iget v0, p0, Lqd/u;->j:I

    ushr-long/2addr p1, v0

    long-to-int p1, p1

    return p1
.end method

.method public final p(J)I
    .locals 0

    long-to-int p1, p1

    iget p2, p0, Lqd/u;->i:I

    and-int/2addr p1, p2

    return p1
.end method

.method public final q([Lqd/z;IJ)Z
    .locals 4

    int-to-long v0, p2

    add-long/2addr v0, p3

    iget p2, p0, Lqd/a;->b:I

    int-to-long v2, p2

    sub-long/2addr v0, v2

    iget-object p2, p0, Lqd/u;->g:Lqd/z;

    invoke-virtual {p2}, Lqd/z;->c()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-gtz p2, :cond_0

    cmp-long p2, v2, p3

    if-lez p2, :cond_1

    :cond_0
    invoke-static {p1, p3, p4}, Ltd/d;->d([Lqd/z;J)J

    move-result-wide p1

    iget-object p3, p0, Lqd/u;->g:Lqd/z;

    invoke-virtual {p3, p1, p2}, Lqd/z;->e(J)V

    cmp-long p1, v0, p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final r()V
    .locals 2

    iget-object v0, p0, Lqd/u;->h:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, v1}, Lqd/u;->t(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lqd/u;->t(II)V

    return-void
.end method

.method public remainingCapacity()J
    .locals 6

    iget-object v0, p0, Lqd/a;->e:[Lqd/z;

    iget-object v1, p0, Lqd/a;->d:Lqd/z;

    invoke-virtual {v1}, Lqd/z;->c()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Ltd/d;->d([Lqd/z;J)J

    move-result-wide v0

    iget-object v2, p0, Lqd/a;->d:Lqd/z;

    invoke-virtual {v2}, Lqd/z;->c()J

    move-result-wide v2

    invoke-virtual {p0}, Lqd/a;->m()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v0

    sub-long/2addr v4, v2

    return-wide v4
.end method

.method public final s(J)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lqd/u;->p(J)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Lqd/u;->o(J)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lqd/u;->t(II)V

    return-void
.end method

.method public final t(II)V
    .locals 4

    int-to-long v0, p1

    sget-wide v2, Lqd/u;->m:J

    mul-long/2addr v0, v2

    sget-wide v2, Lqd/u;->l:J

    add-long/2addr v0, v2

    sget-object p1, Lqd/u;->k:Lsun/misc/Unsafe;

    iget-object v2, p0, Lqd/u;->h:[I

    invoke-virtual {p1, v2, v0, v1, p2}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    return-void
.end method
