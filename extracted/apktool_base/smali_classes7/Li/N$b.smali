.class public abstract LLi/N$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LLi/N$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLi/N;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "b"
.end annotation


# instance fields
.field public a:[J

.field public b:[J

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:J

.field public k:J

.field public l:J

.field public m:J

.field public n:J

.field public o:J

.field public final synthetic p:LLi/N;


# direct methods
.method public constructor <init>(LLi/N;)V
    .locals 1

    iput-object p1, p0, LLi/N$b;->p:LLi/N;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    invoke-static {p1, v0}, LLi/N;->m(LLi/N;I)I

    invoke-static {p1}, LLi/N;->l(LLi/N;)I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    invoke-static {p1, v0}, LLi/N;->o(LLi/N;I)I

    return-void
.end method


# virtual methods
.method public a([BII[BII)V
    .locals 8

    shr-int/lit8 p6, p3, 0x3

    new-array v0, p6, [J

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p6}, Lorg/bouncycastle/util/p;->z([BI[JII)V

    new-array v2, p6, [J

    move v3, v1

    :goto_0
    iget-object v4, p0, LLi/N$b;->p:LLi/N;

    invoke-static {v4}, LLi/N;->n(LLi/N;)I

    move-result v4

    if-lt p3, v4, :cond_0

    iget-wide v4, p0, LLi/N$b;->f:J

    invoke-virtual {p0, v4, v5}, LLi/N$b;->j(J)J

    move-result-wide v4

    aget-wide v6, v0, v3

    xor-long/2addr v4, v6

    aput-wide v4, v2, v3

    invoke-virtual {p0}, LLi/N$b;->f()V

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, LLi/N$b;->p:LLi/N;

    invoke-static {v4}, LLi/N;->n(LLi/N;)I

    move-result v4

    sub-int/2addr p3, v4

    goto :goto_0

    :cond_0
    invoke-static {v2, v1, p6, p4, p5}, Lorg/bouncycastle/util/p;->K([JII[BI)V

    iget-wide v0, p0, LLi/N$b;->f:J

    invoke-static {v0, v1}, Lorg/bouncycastle/util/p;->M(J)[B

    move-result-object p6

    :goto_1
    if-lez p3, :cond_1

    shl-int/lit8 v0, v3, 0x3

    add-int v1, v0, p5

    add-int/2addr v1, p3

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, LLi/N$b;->p:LLi/N;

    invoke-static {v2}, LLi/N;->n(LLi/N;)I

    move-result v2

    sub-int/2addr v2, p3

    aget-byte v2, p6, v2

    add-int/2addr v0, p2

    add-int/lit8 p3, p3, -0x1

    add-int/2addr v0, p3

    aget-byte v0, p1, v0

    xor-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, p4, v1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public b([BI[BI[BI)V
    .locals 6

    iget-object v0, p0, LLi/N$b;->b:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    iput-wide v2, p0, LLi/N$b;->f:J

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    iput-wide v2, p0, LLi/N$b;->g:J

    iget-wide v2, p0, LLi/N$b;->c:J

    iput-wide v2, p0, LLi/N$b;->h:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, LLi/N$b;->j:J

    iput-wide v2, p0, LLi/N$b;->i:J

    invoke-virtual {p0}, LLi/N$b;->d()V

    invoke-virtual {p0, p1, p2}, LLi/N$b;->c([BI)V

    iget-wide p1, p0, LLi/N$b;->j:J

    const-wide/16 v2, 0x1

    xor-long/2addr p1, v2

    iput-wide p1, p0, LLi/N$b;->j:J

    invoke-virtual {p0, p3, p4}, LLi/N$b;->c([BI)V

    iget-wide p1, p0, LLi/N$b;->f:J

    invoke-virtual {p0, p1, p2}, LLi/N$b;->j(J)J

    move-result-wide p1

    invoke-static {p1, p2, p5, v1}, Lorg/bouncycastle/util/p;->J(J[BI)V

    iget-wide p1, p0, LLi/N$b;->g:J

    invoke-virtual {p0, p1, p2}, LLi/N$b;->j(J)J

    move-result-wide p1

    const/16 p3, 0x8

    invoke-static {p1, p2, p5, p3}, Lorg/bouncycastle/util/p;->J(J[BI)V

    iget-wide p1, p0, LLi/N$b;->h:J

    iget-wide v0, p0, LLi/N$b;->i:J

    iget-wide v2, p0, LLi/N$b;->j:J

    iget-wide v4, p0, LLi/N$b;->d:J

    const/16 p4, 0x10

    invoke-virtual {p0, v4, v5, p5, p4}, LLi/N$b;->l(J[BI)V

    iput-wide p1, p0, LLi/N$b;->h:J

    iput-wide v0, p0, LLi/N$b;->i:J

    iput-wide v2, p0, LLi/N$b;->j:J

    invoke-virtual {p0}, LLi/N$b;->d()V

    iget-wide p1, p0, LLi/N$b;->f:J

    invoke-virtual {p0, p1, p2}, LLi/N$b;->j(J)J

    move-result-wide p1

    invoke-static {p1, p2, p5, p6}, Lorg/bouncycastle/util/p;->J(J[BI)V

    iget-wide p1, p0, LLi/N$b;->g:J

    invoke-virtual {p0, p1, p2}, LLi/N$b;->j(J)J

    move-result-wide p1

    add-int/2addr p6, p3

    invoke-static {p1, p2, p5, p6}, Lorg/bouncycastle/util/p;->J(J[BI)V

    return-void
.end method

.method public c([BI)V
    .locals 9

    array-length v0, p1

    shr-int/lit8 v0, v0, 0x3

    new-array v1, v0, [J

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Lorg/bouncycastle/util/p;->z([BI[JII)V

    move v0, v2

    :goto_0
    iget-object v3, p0, LLi/N$b;->p:LLi/N;

    invoke-static {v3}, LLi/N;->n(LLi/N;)I

    move-result v3

    if-lt p2, v3, :cond_0

    iget-wide v3, p0, LLi/N$b;->f:J

    add-int/lit8 v5, v0, 0x1

    aget-wide v6, v1, v0

    invoke-virtual {p0, v6, v7}, LLi/N$b;->j(J)J

    move-result-wide v6

    xor-long/2addr v3, v6

    iput-wide v3, p0, LLi/N$b;->f:J

    invoke-virtual {p0}, LLi/N$b;->d()V

    iget-object v0, p0, LLi/N$b;->p:LLi/N;

    invoke-static {v0}, LLi/N;->n(LLi/N;)I

    move-result v0

    sub-int/2addr p2, v0

    move v0, v5

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, p2, :cond_1

    iget-wide v3, p0, LLi/N$b;->f:J

    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v1, v2

    aget-byte v1, p1, v1

    int-to-long v5, v1

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    rsub-int/lit8 v1, v2, 0x7

    shl-int/lit8 v1, v1, 0x3

    shl-long/2addr v5, v1

    xor-long/2addr v3, v5

    iput-wide v3, p0, LLi/N$b;->f:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-wide v0, p0, LLi/N$b;->f:J

    rsub-int/lit8 p1, p2, 0x7

    shl-int/lit8 p1, p1, 0x3

    const-wide/16 v2, 0x80

    shl-long p1, v2, p1

    xor-long/2addr p1, v0

    iput-wide p1, p0, LLi/N$b;->f:J

    invoke-virtual {p0}, LLi/N$b;->d()V

    return-void
.end method

.method public d()V
    .locals 2

    const-wide/16 v0, 0xf0

    invoke-virtual {p0, v0, v1}, LLi/N$b;->i(J)V

    const-wide/16 v0, 0xe1

    invoke-virtual {p0, v0, v1}, LLi/N$b;->i(J)V

    const-wide/16 v0, 0xd2

    invoke-virtual {p0, v0, v1}, LLi/N$b;->i(J)V

    const-wide/16 v0, 0xc3

    invoke-virtual {p0, v0, v1}, LLi/N$b;->i(J)V

    const-wide/16 v0, 0xb4

    invoke-virtual {p0, v0, v1}, LLi/N$b;->i(J)V

    const-wide/16 v0, 0xa5

    invoke-virtual {p0, v0, v1}, LLi/N$b;->i(J)V

    invoke-virtual {p0}, LLi/N$b;->e()V

    return-void
.end method

.method public e()V
    .locals 2

    const-wide/16 v0, 0x96

    invoke-virtual {p0, v0, v1}, LLi/N$b;->i(J)V

    const-wide/16 v0, 0x87

    invoke-virtual {p0, v0, v1}, LLi/N$b;->i(J)V

    const-wide/16 v0, 0x78

    invoke-virtual {p0, v0, v1}, LLi/N$b;->i(J)V

    const-wide/16 v0, 0x69

    invoke-virtual {p0, v0, v1}, LLi/N$b;->i(J)V

    const-wide/16 v0, 0x5a

    invoke-virtual {p0, v0, v1}, LLi/N$b;->i(J)V

    const-wide/16 v0, 0x4b

    invoke-virtual {p0, v0, v1}, LLi/N$b;->i(J)V

    return-void
.end method

.method public abstract f()V
.end method

.method public abstract g()V
.end method

.method public final h(JJ)J
    .locals 4

    long-to-int v0, p3

    ushr-long v0, p1, v0

    const-wide/16 v2, 0x40

    sub-long/2addr v2, p3

    long-to-int p3, v2

    shl-long/2addr p1, p3

    or-long/2addr p1, v0

    return-wide p1
.end method

.method public i(J)V
    .locals 19

    move-object/from16 v0, p0

    iget-wide v1, v0, LLi/N$b;->f:J

    iget-wide v3, v0, LLi/N$b;->g:J

    xor-long v5, v1, v3

    iget-wide v7, v0, LLi/N$b;->h:J

    xor-long/2addr v5, v7

    iget-wide v9, v0, LLi/N$b;->i:J

    xor-long/2addr v5, v9

    xor-long v5, v5, p1

    xor-long v11, v1, v7

    iget-wide v13, v0, LLi/N$b;->j:J

    xor-long/2addr v11, v13

    xor-long v11, v11, p1

    and-long/2addr v11, v3

    xor-long/2addr v5, v11

    iput-wide v5, v0, LLi/N$b;->k:J

    xor-long v11, v1, v7

    xor-long/2addr v11, v9

    xor-long/2addr v11, v13

    xor-long v11, v11, p1

    xor-long v15, v3, v7

    xor-long v15, v15, p1

    xor-long v17, v3, v9

    and-long v15, v15, v17

    xor-long/2addr v11, v15

    iput-wide v11, v0, LLi/N$b;->l:J

    xor-long v11, v3, v7

    xor-long/2addr v11, v13

    xor-long v11, v11, p1

    and-long v15, v9, v13

    xor-long/2addr v11, v15

    iput-wide v11, v0, LLi/N$b;->m:J

    xor-long v11, v1, v3

    xor-long/2addr v7, v11

    xor-long v7, v7, p1

    not-long v11, v1

    xor-long v15, v9, v13

    and-long/2addr v11, v15

    xor-long/2addr v7, v11

    iput-wide v7, v0, LLi/N$b;->n:J

    xor-long v7, v3, v9

    xor-long/2addr v7, v13

    xor-long/2addr v1, v13

    and-long/2addr v1, v3

    xor-long/2addr v1, v7

    iput-wide v1, v0, LLi/N$b;->o:J

    const-wide/16 v1, 0x13

    invoke-virtual {v0, v5, v6, v1, v2}, LLi/N$b;->h(JJ)J

    move-result-wide v1

    xor-long/2addr v1, v5

    iget-wide v3, v0, LLi/N$b;->k:J

    const-wide/16 v5, 0x1c

    invoke-virtual {v0, v3, v4, v5, v6}, LLi/N$b;->h(JJ)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iput-wide v1, v0, LLi/N$b;->f:J

    iget-wide v1, v0, LLi/N$b;->l:J

    const-wide/16 v3, 0x27

    invoke-virtual {v0, v1, v2, v3, v4}, LLi/N$b;->h(JJ)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iget-wide v3, v0, LLi/N$b;->l:J

    const-wide/16 v5, 0x3d

    invoke-virtual {v0, v3, v4, v5, v6}, LLi/N$b;->h(JJ)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iput-wide v1, v0, LLi/N$b;->g:J

    iget-wide v1, v0, LLi/N$b;->m:J

    const-wide/16 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, LLi/N$b;->h(JJ)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iget-wide v3, v0, LLi/N$b;->m:J

    const-wide/16 v5, 0x6

    invoke-virtual {v0, v3, v4, v5, v6}, LLi/N$b;->h(JJ)J

    move-result-wide v3

    xor-long/2addr v1, v3

    not-long v1, v1

    iput-wide v1, v0, LLi/N$b;->h:J

    iget-wide v1, v0, LLi/N$b;->n:J

    const-wide/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3, v4}, LLi/N$b;->h(JJ)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iget-wide v3, v0, LLi/N$b;->n:J

    const-wide/16 v5, 0x11

    invoke-virtual {v0, v3, v4, v5, v6}, LLi/N$b;->h(JJ)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iput-wide v1, v0, LLi/N$b;->i:J

    iget-wide v1, v0, LLi/N$b;->o:J

    const-wide/16 v3, 0x7

    invoke-virtual {v0, v1, v2, v3, v4}, LLi/N$b;->h(JJ)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iget-wide v3, v0, LLi/N$b;->o:J

    const-wide/16 v5, 0x29

    invoke-virtual {v0, v3, v4, v5, v6}, LLi/N$b;->h(JJ)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iput-wide v1, v0, LLi/N$b;->j:J

    return-void
.end method

.method public init()V
    .locals 6

    iget-object v0, p0, LLi/N$b;->p:LLi/N;

    invoke-static {v0}, LLi/N;->p(LLi/N;)[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p0, v0}, LLi/N$b;->k(I)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, LLi/N$b;->b:[J

    iget-object v0, p0, LLi/N$b;->p:LLi/N;

    invoke-static {v0}, LLi/N;->p(LLi/N;)[B

    move-result-object v0

    iget-object v1, p0, LLi/N$b;->b:[J

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Lorg/bouncycastle/util/p;->z([BI[JII)V

    iget-object v0, p0, LLi/N$b;->b:[J

    aget-wide v1, v0, v3

    invoke-virtual {p0, v1, v2}, LLi/N$b;->j(J)J

    move-result-wide v1

    aput-wide v1, v0, v3

    iget-object v0, p0, LLi/N$b;->b:[J

    const/4 v1, 0x1

    aget-wide v4, v0, v1

    invoke-virtual {p0, v4, v5}, LLi/N$b;->j(J)J

    move-result-wide v4

    aput-wide v4, v0, v1

    iget-object v0, p0, LLi/N$b;->p:LLi/N;

    invoke-static {v0}, LLi/N;->q(LLi/N;)[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p0, v0}, LLi/N$b;->k(I)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, LLi/N$b;->a:[J

    iget-object v0, p0, LLi/N$b;->p:LLi/N;

    invoke-static {v0}, LLi/N;->q(LLi/N;)[B

    move-result-object v0

    iget-object v2, p0, LLi/N$b;->a:[J

    array-length v4, v2

    invoke-static {v0, v3, v2, v3, v4}, Lorg/bouncycastle/util/p;->z([BI[JII)V

    iget-object v0, p0, LLi/N$b;->a:[J

    aget-wide v4, v0, v3

    invoke-virtual {p0, v4, v5}, LLi/N$b;->j(J)J

    move-result-wide v4

    aput-wide v4, v0, v3

    iget-object v0, p0, LLi/N$b;->a:[J

    aget-wide v2, v0, v1

    invoke-virtual {p0, v2, v3}, LLi/N$b;->j(J)J

    move-result-wide v2

    aput-wide v2, v0, v1

    invoke-virtual {p0}, LLi/N$b;->reset()V

    return-void
.end method

.method public j(J)J
    .locals 6

    const-wide/16 v0, 0x8

    invoke-virtual {p0, p1, p2, v0, v1}, LLi/N$b;->h(JJ)J

    move-result-wide v0

    const-wide v2, -0xffffff01000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x18

    invoke-virtual {p0, p1, p2, v2, v3}, LLi/N$b;->h(JJ)J

    move-result-wide v2

    const-wide v4, 0xff000000ff0000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/16 v2, 0x28

    invoke-virtual {p0, p1, p2, v2, v3}, LLi/N$b;->h(JJ)J

    move-result-wide v2

    const-wide v4, 0xff000000ff00L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/16 v2, 0x38

    invoke-virtual {p0, p1, p2, v2, v3}, LLi/N$b;->h(JJ)J

    move-result-wide p1

    const-wide v2, 0xff000000ffL

    and-long/2addr p1, v2

    or-long/2addr p1, v0

    return-wide p1
.end method

.method public final k(I)I
    .locals 1

    ushr-int/lit8 v0, p1, 0x3

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    add-int/2addr v0, p1

    return v0
.end method

.method public l(J[BI)V
    .locals 7

    iget-object v0, p0, LLi/N$b;->a:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    iput-wide v2, p0, LLi/N$b;->f:J

    const/4 v2, 0x1

    aget-wide v3, v0, v2

    iput-wide v3, p0, LLi/N$b;->g:J

    iput-wide p1, p0, LLi/N$b;->h:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, LLi/N$b;->j:J

    iput-wide p1, p0, LLi/N$b;->i:J

    invoke-virtual {p0}, LLi/N$b;->d()V

    :goto_0
    shl-int/lit8 p1, p4, 0x3

    sub-int/2addr p1, v2

    if-ge v1, p1, :cond_0

    iget-wide p1, p0, LLi/N$b;->f:J

    ushr-int/lit8 v0, v1, 0x3

    aget-byte v0, p3, v0

    and-int/lit8 v3, v1, 0x7

    rsub-int/lit8 v3, v3, 0x7

    ushr-int/2addr v0, v3

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x7

    int-to-long v3, v0

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 v0, 0x38

    shl-long/2addr v3, v0

    xor-long/2addr p1, v3

    iput-wide p1, p0, LLi/N$b;->f:J

    invoke-virtual {p0}, LLi/N$b;->g()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-wide p1, p0, LLi/N$b;->f:J

    sub-int/2addr p4, v2

    aget-byte p3, p3, p4

    int-to-long p3, p3

    const-wide/16 v0, 0x1

    and-long/2addr p3, v0

    const/16 v0, 0x3f

    shl-long/2addr p3, v0

    xor-long/2addr p1, p3

    iput-wide p1, p0, LLi/N$b;->f:J

    invoke-virtual {p0}, LLi/N$b;->d()V

    return-void
.end method

.method public reset()V
    .locals 4

    iget-wide v0, p0, LLi/N$b;->e:J

    iget-object v2, p0, LLi/N$b;->p:LLi/N;

    invoke-static {v2}, LLi/N;->p(LLi/N;)[B

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {p0, v0, v1, v2, v3}, LLi/N$b;->l(J[BI)V

    iget-object v0, p0, LLi/N$b;->b:[J

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    iput-wide v1, p0, LLi/N$b;->i:J

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    iput-wide v1, p0, LLi/N$b;->j:J

    invoke-virtual {p0}, LLi/N$b;->f()V

    return-void
.end method
