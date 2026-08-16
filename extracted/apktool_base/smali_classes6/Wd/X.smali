.class public abstract LWd/X;
.super LWd/c0;
.source "SourceFile"


# static fields
.field public static final t:J = 0x1L


# instance fields
.field public transient q:[J

.field public r:J

.field public s:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, LWd/c0;-><init>()V

    .line 2
    sget-wide v0, LVd/a;->h:J

    iput-wide v0, p0, LWd/X;->r:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, p0, LWd/X;->q:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    :cond_0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 4
    invoke-direct {p0, p1}, LWd/c0;-><init>(I)V

    .line 5
    sget-wide v0, LVd/a;->h:J

    iput-wide v0, p0, LWd/X;->r:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, LWd/X;->q:[J

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    :cond_0
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2

    .line 7
    invoke-direct {p0, p1, p2}, LWd/c0;-><init>(IF)V

    .line 8
    sget-wide p1, LVd/a;->h:J

    iput-wide p1, p0, LWd/X;->r:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, LWd/X;->q:[J

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->fill([JJ)V

    :cond_0
    return-void
.end method

.method public constructor <init>(IFJ)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, LWd/c0;-><init>(IF)V

    .line 11
    iput-wide p3, p0, LWd/X;->r:J

    const-wide/16 p1, 0x0

    cmp-long p1, p3, p1

    if-eqz p1, :cond_0

    .line 12
    iget-object p1, p0, LWd/X;->q:[J

    invoke-static {p1, p3, p4}, Ljava/util/Arrays;->fill([JJ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public X0(J)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, LWd/X;->mf(J)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hf(I)V
    .locals 3

    iget-object v0, p0, LWd/X;->q:[J

    iget-wide v1, p0, LWd/X;->r:J

    aput-wide v1, v0, p1

    invoke-super {p0, p1}, LWd/c0;->hf(I)V

    return-void
.end method

.method public i()J
    .locals 2

    iget-wide v0, p0, LWd/X;->r:J

    return-wide v0
.end method

.method public j1(Lhe/b0;)Z
    .locals 6

    iget-object v0, p0, LWd/c0;->l:[B

    iget-object v1, p0, LWd/X;->q:[J

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x1

    if-lez v2, :cond_1

    aget-byte v2, v0, v3

    if-ne v2, v4, :cond_0

    aget-wide v4, v1, v3

    invoke-interface {p1, v4, v5}, Lhe/b0;->a(J)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    return v4
.end method

.method public jf(I)I
    .locals 1

    invoke-super {p0, p1}, LWd/c0;->jf(I)I

    move-result p1

    new-array v0, p1, [J

    iput-object v0, p0, LWd/X;->q:[J

    return p1
.end method

.method public mf(J)I
    .locals 11

    iget-object v0, p0, LWd/c0;->l:[B

    iget-object v1, p0, LWd/X;->q:[J

    array-length v2, v0

    invoke-static {p1, p2}, LVd/b;->e(J)I

    move-result v3

    const v4, 0x7fffffff

    and-int v9, v3, v4

    rem-int v8, v9, v2

    aget-byte v10, v0, v8

    if-nez v10, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne v10, v0, :cond_1

    aget-wide v0, v1, v8

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    return v8

    :cond_1
    move-object v5, p0

    move-wide v6, p1

    invoke-virtual/range {v5 .. v10}, LWd/X;->nf(JIIB)I

    move-result p1

    return p1
.end method

.method public nf(JIIB)I
    .locals 6

    iget-object p5, p0, LWd/X;->q:[J

    array-length p5, p5

    add-int/lit8 v0, p5, -0x2

    rem-int/2addr p4, v0

    add-int/lit8 p4, p4, 0x1

    move v0, p3

    :cond_0
    sub-int/2addr v0, p4

    if-gez v0, :cond_1

    add-int/2addr v0, p5

    :cond_1
    iget-object v1, p0, LWd/c0;->l:[B

    aget-byte v1, v1, v0

    const/4 v2, -0x1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, LWd/X;->q:[J

    aget-wide v4, v3, v0

    cmp-long v3, p1, v4

    if-nez v3, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    return v0

    :cond_3
    if-ne v0, p3, :cond_0

    return v2
.end method

.method public of(J)I
    .locals 8

    invoke-static {p1, p2}, LVd/b;->e(J)I

    move-result v0

    const v1, 0x7fffffff

    and-int v6, v0, v1

    iget-object v0, p0, LWd/c0;->l:[B

    array-length v1, v0

    rem-int v5, v6, v1

    aget-byte v7, v0, v5

    const/4 v0, 0x0

    iput-boolean v0, p0, LWd/X;->s:Z

    const/4 v0, 0x1

    if-nez v7, :cond_0

    iput-boolean v0, p0, LWd/X;->s:Z

    invoke-virtual {p0, v5, p1, p2}, LWd/X;->pf(IJ)V

    return v5

    :cond_0
    if-ne v7, v0, :cond_1

    iget-object v1, p0, LWd/X;->q:[J

    aget-wide v2, v1, v5

    cmp-long v1, v2, p1

    if-nez v1, :cond_1

    neg-int p1, v5

    sub-int/2addr p1, v0

    return p1

    :cond_1
    move-object v2, p0

    move-wide v3, p1

    invoke-virtual/range {v2 .. v7}, LWd/X;->qf(JIIB)I

    move-result p1

    return p1
.end method

.method public pf(IJ)V
    .locals 1

    iget-object v0, p0, LWd/X;->q:[J

    aput-wide p2, v0, p1

    iget-object p2, p0, LWd/c0;->l:[B

    const/4 p3, 0x1

    aput-byte p3, p2, p1

    return-void
.end method

.method public qf(JIIB)I
    .locals 8

    iget-object v0, p0, LWd/X;->q:[J

    array-length v0, v0

    add-int/lit8 v1, v0, -0x2

    rem-int/2addr p4, v1

    const/4 v1, 0x1

    add-int/2addr p4, v1

    const/4 v2, -0x1

    move v4, p3

    move v3, v2

    :cond_0
    const/4 v5, 0x2

    if-ne p5, v5, :cond_1

    if-ne v3, v2, :cond_1

    move v3, v4

    :cond_1
    sub-int/2addr v4, p4

    if-gez v4, :cond_2

    add-int/2addr v4, v0

    :cond_2
    iget-object p5, p0, LWd/c0;->l:[B

    aget-byte p5, p5, v4

    if-nez p5, :cond_4

    if-eq v3, v2, :cond_3

    invoke-virtual {p0, v3, p1, p2}, LWd/X;->pf(IJ)V

    return v3

    :cond_3
    iput-boolean v1, p0, LWd/X;->s:Z

    invoke-virtual {p0, v4, p1, p2}, LWd/X;->pf(IJ)V

    return v4

    :cond_4
    if-ne p5, v1, :cond_5

    iget-object v5, p0, LWd/X;->q:[J

    aget-wide v6, v5, v4

    cmp-long v5, v6, p1

    if-nez v5, :cond_5

    neg-int p1, v4

    sub-int/2addr p1, v1

    return p1

    :cond_5
    if-ne v4, p3, :cond_0

    if-eq v3, v2, :cond_6

    invoke-virtual {p0, v3, p1, p2}, LWd/X;->pf(IJ)V

    return v3

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No free or removed slots available. Key set full?!!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
