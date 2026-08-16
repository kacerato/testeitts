.class public LSl/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LSl/n;

.field public b:LBi/y;

.field public c:LSl/o;

.field public d:LSl/p;


# direct methods
.method public constructor <init>(LSl/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LSl/j;->a:LSl/n;

    return-void
.end method


# virtual methods
.method public a([BI)LYl/e;
    .locals 8

    iget-object v0, p0, LSl/j;->a:LSl/n;

    iget v1, v0, LSl/n;->b:I

    iget v0, v0, LSl/n;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v2, v0, 0x1f

    rsub-int/lit8 v0, v0, 0x26

    div-int/lit8 v0, v0, 0x8

    new-instance v3, LYl/e;

    invoke-direct {v3, v1}, LYl/e;-><init>(I)V

    array-length v4, p1

    const/4 v5, 0x4

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v4, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    new-instance p1, LSl/k;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    iget-object v4, p0, LSl/j;->a:LSl/n;

    iget-object v4, v4, LSl/n;->o:LBi/y;

    invoke-direct {p1, p2, v4}, LSl/k;-><init>([BLBi/y;)V

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v1, :cond_0

    invoke-virtual {p1, v0}, LSl/k;->a(I)[B

    move-result-object v4

    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    aget-byte v6, v4, v6

    mul-int/lit8 v7, v0, 0x8

    sub-int/2addr v7, v2

    shr-int/2addr v6, v7

    shl-int/2addr v6, v7

    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    int-to-byte v6, v6

    aput-byte v6, v4, v7

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    iget-object v4, v3, LYl/e;->a:[I

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v6

    aput v6, v4, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public b()[B
    .locals 3

    iget-object v0, p0, LSl/j;->b:LBi/y;

    if-eqz v0, :cond_0

    iget-object v1, p0, LSl/j;->c:LSl/o;

    if-eqz v1, :cond_0

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, LSl/j;->b:LBi/y;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, LBi/y;->c([BI)I

    iget-object v1, p0, LSl/j;->c:LSl/o;

    invoke-virtual {p0, v0, v1}, LSl/j;->e([BLSl/o;)[B

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call initSign first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(ZLBi/k;)V
    .locals 0

    if-eqz p1, :cond_0

    check-cast p2, LSl/o;

    iput-object p2, p0, LSl/j;->c:LSl/o;

    goto :goto_0

    :cond_0
    check-cast p2, LSl/p;

    iput-object p2, p0, LSl/j;->d:LSl/p;

    :goto_0
    iget-object p1, p0, LSl/j;->a:LSl/n;

    iget-object p1, p1, LSl/n;->o:LBi/y;

    iput-object p1, p0, LSl/j;->b:LBi/y;

    invoke-interface {p1}, LBi/y;->reset()V

    return-void
.end method

.method public final d(LYl/e;LSl/o;)LYl/e;
    .locals 8

    iget-object v0, p0, LSl/j;->a:LSl/n;

    iget v1, v0, LSl/n;->b:I

    iget v2, v0, LSl/n;->c:I

    iget v0, v0, LSl/n;->h:I

    invoke-virtual {p2}, LSl/o;->f()LSl/p;

    move-result-object v3

    new-instance v4, LYl/e;

    invoke-direct {v4, v1}, LYl/e;-><init>(I)V

    :goto_0
    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    invoke-virtual {p2, v0}, LSl/o;->e(I)LSl/o$a;

    move-result-object v5

    iget-object v5, v5, LSl/o$a;->a:LYl/i;

    invoke-virtual {p2, v0}, LSl/o;->e(I)LSl/o$a;

    move-result-object v6

    iget-object v6, v6, LSl/o$a;->b:LYl/i;

    invoke-interface {v5, p1}, LYl/i;->a(LYl/e;)LYl/e;

    move-result-object v7

    invoke-virtual {v7, v2}, LYl/e;->n(I)V

    invoke-interface {v6, v7}, LYl/i;->a(LYl/e;)LYl/e;

    move-result-object v7

    invoke-interface {v6, p1}, LYl/i;->a(LYl/e;)LYl/e;

    move-result-object p1

    invoke-virtual {p1, v2}, LYl/e;->n(I)V

    invoke-interface {v5, p1}, LYl/i;->a(LYl/e;)LYl/e;

    move-result-object p1

    invoke-virtual {v7, p1}, LYl/e;->R(LYl/e;)V

    invoke-virtual {v4, v7}, LYl/e;->h(LYl/e;)V

    invoke-virtual {p2, v0}, LSl/o;->e(I)LSl/o$a;

    move-result-object p1

    iget-object p1, p1, LSl/o$a;->c:LYl/e;

    invoke-virtual {p1}, LYl/e;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LYl/e;

    if-le v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, LSl/o;->e(I)LSl/o$a;

    move-result-object v1

    iget-object v1, v1, LSl/o$a;->c:LYl/e;

    :goto_1
    invoke-virtual {p1, v1}, LYl/e;->R(LYl/e;)V

    goto :goto_2

    :cond_0
    iget-object v1, v3, LSl/p;->d:LYl/e;

    goto :goto_1

    :goto_2
    invoke-virtual {v7, p1, v2}, LYl/e;->e(LYl/e;I)LYl/e;

    move-result-object p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, LSl/o;->e(I)LSl/o$a;

    move-result-object v1

    iget-object v1, v1, LSl/o$a;->a:LYl/i;

    invoke-virtual {p2, v0}, LSl/o;->e(I)LSl/o$a;

    move-result-object p2

    iget-object p2, p2, LSl/o$a;->b:LYl/i;

    invoke-interface {v1, p1}, LYl/i;->a(LYl/e;)LYl/e;

    move-result-object v0

    invoke-virtual {v0, v2}, LYl/e;->n(I)V

    invoke-interface {p2, v0}, LYl/i;->a(LYl/e;)LYl/e;

    move-result-object v0

    invoke-interface {p2, p1}, LYl/i;->a(LYl/e;)LYl/e;

    move-result-object p1

    invoke-virtual {p1, v2}, LYl/e;->n(I)V

    invoke-interface {v1, p1}, LYl/i;->a(LYl/e;)LYl/e;

    move-result-object p1

    invoke-virtual {v0, p1}, LYl/e;->R(LYl/e;)V

    invoke-virtual {v4, v0}, LYl/e;->h(LYl/e;)V

    invoke-virtual {v4, v2}, LYl/e;->D(I)V

    return-object v4
.end method

.method public final e([BLSl/o;)[B
    .locals 5

    invoke-virtual {p2}, LSl/o;->f()LSl/p;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, LSl/j;->a:LSl/n;

    iget v2, v2, LSl/n;->m:I

    if-gt v1, v2, :cond_1

    invoke-virtual {p0, p1, v1}, LSl/j;->a([BI)LYl/e;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, LSl/j;->d(LYl/e;LSl/o;)LYl/e;

    move-result-object v3

    iget-object v4, v0, LSl/p;->d:LYl/e;

    invoke-virtual {p0, v2, v3, v4}, LSl/j;->h(LYl/e;LYl/e;LYl/e;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, LSl/j;->a:LSl/n;

    iget p1, p1, LSl/n;->c:I

    invoke-virtual {v3, p1}, LYl/e;->U(I)[B

    move-result-object p1

    array-length p2, p1

    add-int/lit8 p2, p2, 0x4

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Signing failed: too many retries (max="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, LSl/j;->a:LSl/n;

    iget v0, v0, LSl/n;->m:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(B)V
    .locals 1

    iget-object v0, p0, LSl/j;->b:LBi/y;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, LBi/y;->update(B)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Call initSign or initVerify first!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g([BII)V
    .locals 1

    iget-object v0, p0, LSl/j;->b:LBi/y;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, LBi/y;->update([BII)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Call initSign or initVerify first!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h(LYl/e;LYl/e;LYl/e;)Z
    .locals 6

    iget-object v0, p0, LSl/j;->a:LSl/n;

    iget v1, v0, LSl/n;->c:I

    iget-wide v2, v0, LSl/n;->l:D

    iget-wide v4, v0, LSl/n;->j:D

    invoke-virtual {p3, p2, v1}, LYl/e;->e(LYl/e;I)LYl/e;

    move-result-object p3

    invoke-virtual {p3, p1}, LYl/e;->R(LYl/e;)V

    invoke-virtual {p2, v1}, LYl/e;->k(I)J

    move-result-wide p1

    long-to-double p1, p1

    invoke-virtual {p3, v1}, LYl/e;->k(I)J

    move-result-wide v0

    long-to-double v0, v0

    mul-double/2addr v4, v0

    add-double/2addr p1, v4

    double-to-long p1, p1

    long-to-double p1, p1

    cmpg-double p1, p1, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final i([B[BLSl/p;)Z
    .locals 3

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length p2, p2

    add-int/lit8 p2, p2, -0x4

    new-array p2, p2, [B

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, LSl/j;->a:LSl/n;

    iget v2, v1, LSl/n;->b:I

    iget v1, v1, LSl/n;->c:I

    invoke-static {p2, v2, v1}, LYl/e;->t([BII)LYl/e;

    move-result-object p2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-virtual {p0, p1, v0}, LSl/j;->a([BI)LYl/e;

    move-result-object p1

    iget-object p3, p3, LSl/p;->d:LYl/e;

    invoke-virtual {p0, p1, p2, p3}, LSl/j;->h(LYl/e;LYl/e;LYl/e;)Z

    move-result p1

    return p1
.end method

.method public j([B)Z
    .locals 3

    iget-object v0, p0, LSl/j;->b:LBi/y;

    if-eqz v0, :cond_0

    iget-object v1, p0, LSl/j;->d:LSl/p;

    if-eqz v1, :cond_0

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, LSl/j;->b:LBi/y;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, LBi/y;->c([BI)I

    iget-object v1, p0, LSl/j;->d:LSl/p;

    invoke-virtual {p0, v0, p1, v1}, LSl/j;->i([B[BLSl/p;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Call initVerify first!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
