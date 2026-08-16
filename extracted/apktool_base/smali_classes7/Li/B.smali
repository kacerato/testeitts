.class public LLi/B;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLi/B$a;
    }
.end annotation


# instance fields
.field public a:LBi/e;

.field public b:LBi/w;

.field public c:LBi/I;

.field public d:LBi/h;

.field public e:[B

.field public f:[B

.field public g:Z

.field public h:LBi/k;

.field public i:LBi/k;

.field public j:LXi/h0;

.field public k:[B

.field public l:LOi/u;

.field public m:LBi/H;

.field public n:[B


# direct methods
.method public constructor <init>(LBi/e;LBi/w;LBi/I;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LLi/B;->a:LBi/e;

    iput-object p2, p0, LLi/B;->b:LBi/w;

    iput-object p3, p0, LLi/B;->c:LBi/I;

    invoke-interface {p3}, LBi/I;->d()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, LLi/B;->e:[B

    iput-object p4, p0, LLi/B;->f:[B

    const/4 p1, 0x0

    iput-object p1, p0, LLi/B;->d:LBi/h;

    return-void
.end method

.method public constructor <init>(LBi/e;LBi/w;LBi/I;[BLBi/h;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LLi/B;->a:LBi/e;

    iput-object p2, p0, LLi/B;->b:LBi/w;

    iput-object p3, p0, LLi/B;->c:LBi/I;

    invoke-interface {p3}, LBi/I;->d()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, LLi/B;->e:[B

    iput-object p4, p0, LLi/B;->f:[B

    iput-object p5, p0, LLi/B;->d:LBi/h;

    return-void
.end method


# virtual methods
.method public final a([BII)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-object v0, p0, LLi/B;->k:[B

    array-length v0, v0

    iget-object v1, p0, LLi/B;->c:LBi/I;

    invoke-interface {v1}, LBi/I;->d()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p3, v0, :cond_9

    iget-object v0, p0, LLi/B;->d:LBi/h;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, LLi/B;->k:[B

    array-length v0, v0

    sub-int v0, p3, v0

    iget-object v2, p0, LLi/B;->c:LBi/I;

    invoke-interface {v2}, LBi/I;->d()I

    move-result v2

    sub-int/2addr v0, v2

    new-array v2, v0, [B

    iget-object v3, p0, LLi/B;->j:LXi/h0;

    invoke-virtual {v3}, LXi/h0;->c()I

    move-result v3

    div-int/lit8 v3, v3, 0x8

    new-array v4, v3, [B

    add-int v5, v0, v3

    new-array v6, v5, [B

    iget-object v7, p0, LLi/B;->b:LBi/w;

    invoke-interface {v7, v6, v1, v5}, LBi/w;->a([BII)I

    iget-object v5, p0, LLi/B;->k:[B

    array-length v5, v5

    if-eqz v5, :cond_0

    invoke-static {v6, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6, v3, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    invoke-static {v6, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6, v0, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    new-array v3, v0, [B

    move v5, v1

    :goto_1
    if-eq v5, v0, :cond_1

    iget-object v6, p0, LLi/B;->k:[B

    array-length v6, v6

    add-int/2addr v6, p2

    add-int/2addr v6, v5

    aget-byte v6, p1, v6

    aget-byte v7, v2, v5

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    iget-object v0, p0, LLi/B;->j:LXi/h0;

    check-cast v0, LXi/i0;

    invoke-virtual {v0}, LXi/i0;->d()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    new-array v2, v0, [B

    iget-object v3, p0, LLi/B;->j:LXi/h0;

    invoke-virtual {v3}, LXi/h0;->c()I

    move-result v3

    div-int/lit8 v3, v3, 0x8

    new-array v4, v3, [B

    add-int v5, v0, v3

    new-array v6, v5, [B

    iget-object v7, p0, LLi/B;->b:LBi/w;

    invoke-interface {v7, v6, v1, v5}, LBi/w;->a([BII)I

    invoke-static {v6, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6, v0, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, LXi/o0;

    invoke-direct {v0, v2}, LXi/o0;-><init>([B)V

    iget-object v2, p0, LLi/B;->n:[B

    if-eqz v2, :cond_3

    new-instance v3, LXi/w0;

    invoke-direct {v3, v0, v2}, LXi/w0;-><init>(LBi/k;[B)V

    move-object v0, v3

    :cond_3
    iget-object v2, p0, LLi/B;->d:LBi/h;

    invoke-virtual {v2, v1, v0}, LBi/h;->f(ZLBi/k;)V

    iget-object v0, p0, LLi/B;->d:LBi/h;

    iget-object v2, p0, LLi/B;->k:[B

    array-length v2, v2

    sub-int v2, p3, v2

    iget-object v3, p0, LLi/B;->c:LBi/I;

    invoke-interface {v3}, LBi/I;->d()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, LBi/h;->c(I)I

    move-result v0

    new-array v3, v0, [B

    iget-object v5, p0, LLi/B;->d:LBi/h;

    iget-object v0, p0, LLi/B;->k:[B

    array-length v2, v0

    add-int v7, p2, v2

    array-length v0, v0

    sub-int v0, p3, v0

    iget-object v2, p0, LLi/B;->c:LBi/I;

    invoke-interface {v2}, LBi/I;->d()I

    move-result v2

    sub-int v8, v0, v2

    const/4 v10, 0x0

    move-object v6, p1

    move-object v9, v3

    invoke-virtual/range {v5 .. v10}, LBi/h;->h([BII[BI)I

    move-result v0

    :goto_2
    iget-object v2, p0, LLi/B;->j:LXi/h0;

    invoke-virtual {v2}, LXi/h0;->b()[B

    move-result-object v2

    iget-object v5, p0, LLi/B;->k:[B

    array-length v5, v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, v2}, LLi/B;->e([B)[B

    move-result-object v5

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    add-int v6, p2, p3

    iget-object v7, p0, LLi/B;->c:LBi/I;

    invoke-interface {v7}, LBi/I;->d()I

    move-result v7

    sub-int v7, v6, v7

    invoke-static {p1, v7, v6}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v6

    array-length v7, v6

    new-array v8, v7, [B

    invoke-static {}, LIi/L;->x()LBi/O;

    move-result-object v9

    invoke-interface {v9}, LBi/y;->f()I

    move-result v10

    new-array v10, v10, [B

    invoke-interface {v9}, LBi/y;->reset()V

    array-length v11, v4

    invoke-interface {v9, v4, v1, v11}, LBi/y;->update([BII)V

    invoke-interface {v9, v10, v1}, LBi/y;->c([BI)I

    iget-object v4, p0, LLi/B;->c:LBi/I;

    new-instance v9, LXi/o0;

    invoke-direct {v9, v10}, LXi/o0;-><init>([B)V

    invoke-interface {v4, v9}, LBi/I;->a(LBi/k;)V

    iget-object v4, p0, LLi/B;->c:LBi/I;

    iget-object v9, p0, LLi/B;->n:[B

    array-length v10, v9

    invoke-interface {v4, v9, v1, v10}, LBi/I;->update([BII)V

    iget-object v4, p0, LLi/B;->c:LBi/I;

    iget-object v9, p0, LLi/B;->k:[B

    array-length v10, v9

    add-int/2addr p2, v10

    array-length v9, v9

    sub-int/2addr p3, v9

    sub-int/2addr p3, v7

    invoke-interface {v4, p1, p2, p3}, LBi/I;->update([BII)V

    if-eqz v2, :cond_5

    iget-object p1, p0, LLi/B;->c:LBi/I;

    array-length p2, v2

    invoke-interface {p1, v2, v1, p2}, LBi/I;->update([BII)V

    :cond_5
    iget-object p1, p0, LLi/B;->k:[B

    array-length p1, p1

    if-eqz p1, :cond_6

    iget-object p1, p0, LLi/B;->c:LBi/I;

    array-length p2, v5

    invoke-interface {p1, v5, v1, p2}, LBi/I;->update([BII)V

    :cond_6
    iget-object p1, p0, LLi/B;->c:LBi/I;

    iget-object p2, p0, LLi/B;->f:[B

    array-length p3, p2

    invoke-interface {p1, p2, v1, p3}, LBi/I;->update([BII)V

    iget-object p1, p0, LLi/B;->c:LBi/I;

    invoke-interface {p1, v8, v1}, LBi/I;->c([BI)I

    invoke-static {v6, v8}, Lorg/bouncycastle/util/a;->I([B[B)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, LLi/B;->d:LBi/h;

    if-nez p1, :cond_7

    return-object v3

    :cond_7
    invoke-virtual {p1, v3, v0}, LBi/h;->a([BI)I

    move-result p1

    add-int/2addr v0, p1

    invoke-static {v3, v1, v0}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object p1

    return-object p1

    :cond_8
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p2, "invalid MAC"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p2, "length of input must be greater than the MAC and V combined"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b([BII)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-object v0, p0, LLi/B;->d:LBi/h;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-array v0, p3, [B

    iget-object v2, p0, LLi/B;->j:LXi/h0;

    invoke-virtual {v2}, LXi/h0;->c()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    new-array v3, v2, [B

    add-int v4, p3, v2

    new-array v5, v4, [B

    iget-object v6, p0, LLi/B;->b:LBi/w;

    invoke-interface {v6, v5, v1, v4}, LBi/w;->a([BII)I

    iget-object v4, p0, LLi/B;->k:[B

    array-length v4, v4

    if-eqz v4, :cond_0

    invoke-static {v5, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v5, v2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    invoke-static {v5, v1, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v5, p3, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    new-array v2, p3, [B

    move v4, v1

    :goto_1
    if-eq v4, p3, :cond_3

    add-int v5, p2, v4

    aget-byte v5, p1, v5

    aget-byte v6, v0, v4

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, LLi/B;->j:LXi/h0;

    check-cast v0, LXi/i0;

    invoke-virtual {v0}, LXi/i0;->d()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    new-array v2, v0, [B

    iget-object v3, p0, LLi/B;->j:LXi/h0;

    invoke-virtual {v3}, LXi/h0;->c()I

    move-result v3

    div-int/lit8 v3, v3, 0x8

    new-array v4, v3, [B

    add-int v5, v0, v3

    new-array v6, v5, [B

    iget-object v7, p0, LLi/B;->b:LBi/w;

    invoke-interface {v7, v6, v1, v5}, LBi/w;->a([BII)I

    invoke-static {v6, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6, v0, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, LLi/B;->n:[B

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, LLi/B;->d:LBi/h;

    new-instance v5, LXi/w0;

    new-instance v6, LXi/o0;

    invoke-direct {v6, v2}, LXi/o0;-><init>([B)V

    iget-object v2, p0, LLi/B;->n:[B

    invoke-direct {v5, v6, v2}, LXi/w0;-><init>(LBi/k;[B)V

    :goto_2
    invoke-virtual {v0, v3, v5}, LBi/h;->f(ZLBi/k;)V

    goto :goto_3

    :cond_2
    iget-object v0, p0, LLi/B;->d:LBi/h;

    new-instance v5, LXi/o0;

    invoke-direct {v5, v2}, LXi/o0;-><init>([B)V

    goto :goto_2

    :goto_3
    iget-object v0, p0, LLi/B;->d:LBi/h;

    invoke-virtual {v0, p3}, LBi/h;->c(I)I

    move-result v0

    new-array v2, v0, [B

    iget-object v5, p0, LLi/B;->d:LBi/h;

    const/4 v10, 0x0

    move-object v6, p1

    move v7, p2

    move v8, p3

    move-object v9, v2

    invoke-virtual/range {v5 .. v10}, LBi/h;->h([BII[BI)I

    move-result p1

    iget-object p2, p0, LLi/B;->d:LBi/h;

    invoke-virtual {p2, v2, p1}, LBi/h;->a([BI)I

    move-result p2

    add-int p3, p1, p2

    move-object v3, v4

    :cond_3
    iget-object p1, p0, LLi/B;->j:LXi/h0;

    invoke-virtual {p1}, LXi/h0;->b()[B

    move-result-object p1

    iget-object p2, p0, LLi/B;->k:[B

    array-length p2, p2

    if-eqz p2, :cond_4

    invoke-virtual {p0, p1}, LLi/B;->e([B)[B

    move-result-object p2

    goto :goto_4

    :cond_4
    const/4 p2, 0x0

    :goto_4
    iget-object v0, p0, LLi/B;->c:LBi/I;

    invoke-interface {v0}, LBi/I;->d()I

    move-result v0

    new-array v4, v0, [B

    invoke-static {}, LIi/L;->x()LBi/O;

    move-result-object v5

    invoke-interface {v5}, LBi/y;->f()I

    move-result v6

    new-array v6, v6, [B

    invoke-interface {v5}, LBi/y;->reset()V

    array-length v7, v3

    invoke-interface {v5, v3, v1, v7}, LBi/y;->update([BII)V

    invoke-interface {v5, v6, v1}, LBi/y;->c([BI)I

    iget-object v3, p0, LLi/B;->c:LBi/I;

    new-instance v5, LXi/o0;

    invoke-direct {v5, v6}, LXi/o0;-><init>([B)V

    invoke-interface {v3, v5}, LBi/I;->a(LBi/k;)V

    iget-object v3, p0, LLi/B;->c:LBi/I;

    iget-object v5, p0, LLi/B;->n:[B

    array-length v6, v5

    invoke-interface {v3, v5, v1, v6}, LBi/I;->update([BII)V

    iget-object v3, p0, LLi/B;->c:LBi/I;

    array-length v5, v2

    invoke-interface {v3, v2, v1, v5}, LBi/I;->update([BII)V

    if-eqz p1, :cond_5

    iget-object v3, p0, LLi/B;->c:LBi/I;

    array-length v5, p1

    invoke-interface {v3, p1, v1, v5}, LBi/I;->update([BII)V

    :cond_5
    iget-object p1, p0, LLi/B;->k:[B

    array-length p1, p1

    if-eqz p1, :cond_6

    iget-object p1, p0, LLi/B;->c:LBi/I;

    array-length v3, p2

    invoke-interface {p1, p2, v1, v3}, LBi/I;->update([BII)V

    :cond_6
    iget-object p1, p0, LLi/B;->c:LBi/I;

    iget-object p2, p0, LLi/B;->f:[B

    array-length v3, p2

    invoke-interface {p1, p2, v1, v3}, LBi/I;->update([BII)V

    iget-object p1, p0, LLi/B;->c:LBi/I;

    invoke-interface {p1, v4, v1}, LBi/I;->c([BI)I

    iget-object p1, p0, LLi/B;->k:[B

    array-length p2, p1

    add-int/2addr p2, p3

    add-int/2addr p2, v0

    new-array p2, p2, [B

    array-length v3, p1

    invoke-static {p1, v1, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, LLi/B;->k:[B

    array-length p1, p1

    invoke-static {v2, v1, p2, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, LLi/B;->k:[B

    array-length p1, p1

    add-int/2addr p1, p3

    invoke-static {v4, v1, p2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method

.method public final c(LBi/k;)V
    .locals 1

    instance-of v0, p1, LXi/w0;

    if-eqz v0, :cond_0

    check-cast p1, LXi/w0;

    invoke-virtual {p1}, LXi/w0;->a()[B

    move-result-object v0

    iput-object v0, p0, LLi/B;->n:[B

    invoke-virtual {p1}, LXi/w0;->b()LBi/k;

    move-result-object p1

    :goto_0
    check-cast p1, LXi/h0;

    iput-object p1, p0, LLi/B;->j:LXi/h0;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, LLi/B;->n:[B

    goto :goto_0

    :goto_1
    return-void
.end method

.method public d()LBi/h;
    .locals 1

    iget-object v0, p0, LLi/B;->d:LBi/h;

    return-object v0
.end method

.method public e([B)[B
    .locals 5

    const/16 v0, 0x8

    new-array v0, v0, [B

    if-eqz p1, :cond_0

    array-length p1, p1

    int-to-long v1, p1

    const-wide/16 v3, 0x8

    mul-long/2addr v1, v3

    const/4 p1, 0x0

    invoke-static {v1, v2, v0, p1}, Lorg/bouncycastle/util/p;->D(J[BI)V

    :cond_0
    return-object v0
.end method

.method public f()LBi/I;
    .locals 1

    iget-object v0, p0, LLi/B;->c:LBi/I;

    return-object v0
.end method

.method public g(LXi/c;LBi/k;LBi/H;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, LLi/B;->g:Z

    iput-object p1, p0, LLi/B;->h:LBi/k;

    iput-object p3, p0, LLi/B;->m:LBi/H;

    invoke-virtual {p0, p2}, LLi/B;->c(LBi/k;)V

    return-void
.end method

.method public h(LXi/c;LBi/k;LOi/u;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LLi/B;->g:Z

    iput-object p1, p0, LLi/B;->i:LBi/k;

    iput-object p3, p0, LLi/B;->l:LOi/u;

    invoke-virtual {p0, p2}, LLi/B;->c(LBi/k;)V

    return-void
.end method

.method public i(ZLBi/k;LBi/k;LBi/k;)V
    .locals 0

    iput-boolean p1, p0, LLi/B;->g:Z

    iput-object p2, p0, LLi/B;->h:LBi/k;

    iput-object p3, p0, LLi/B;->i:LBi/k;

    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, LLi/B;->k:[B

    invoke-virtual {p0, p4}, LLi/B;->c(LBi/k;)V

    return-void
.end method

.method public j([BII)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const-string v0, "unable to recover ephemeral public key: "

    iget-boolean v1, p0, LLi/B;->g:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, LLi/B;->l:LOi/u;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LOi/u;->a()LBi/C;

    move-result-object v0

    invoke-virtual {v0}, LBi/C;->b()LBi/c;

    move-result-object v1

    invoke-virtual {v1}, LBi/c;->a()LXi/c;

    move-result-object v1

    iput-object v1, p0, LLi/B;->h:LBi/k;

    invoke-virtual {v0}, LBi/C;->a()[B

    move-result-object v0

    iput-object v0, p0, LLi/B;->k:[B

    goto :goto_2

    :cond_0
    iget-object v1, p0, LLi/B;->m:LBi/H;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    :try_start_0
    iget-object v2, p0, LLi/B;->m:LBi/H;

    invoke-interface {v2, v1}, LBi/H;->a(Ljava/io/InputStream;)LXi/c;

    move-result-object v2

    iput-object v2, p0, LLi/B;->i:LBi/k;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    sub-int v0, p3, v0

    add-int/2addr v0, p2

    invoke-static {p1, p2, v0}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v0

    iput-object v0, p0, LLi/B;->k:[B

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance p2, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    new-instance p2, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    :goto_2
    iget-object v0, p0, LLi/B;->a:LBi/e;

    iget-object v1, p0, LLi/B;->h:LBi/k;

    invoke-interface {v0, v1}, LBi/e;->a(LBi/k;)V

    iget-object v0, p0, LLi/B;->a:LBi/e;

    iget-object v1, p0, LLi/B;->i:LBi/k;

    invoke-interface {v0, v1}, LBi/e;->b(LBi/k;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, LLi/B;->a:LBi/e;

    invoke-interface {v1}, LBi/e;->c()I

    move-result v1

    invoke-static {v1, v0}, Lorg/bouncycastle/util/b;->b(ILjava/math/BigInteger;)[B

    move-result-object v0

    iget-object v1, p0, LLi/B;->k:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-static {v1, v0}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object v1

    invoke-static {v0, v3}, Lorg/bouncycastle/util/a;->e0([BB)V

    move-object v0, v1

    :cond_2
    :try_start_1
    new-instance v1, LXi/n0;

    iget-object v2, p0, LLi/B;->j:LXi/h0;

    invoke-virtual {v2}, LXi/h0;->a()[B

    move-result-object v2

    invoke-direct {v1, v0, v2}, LXi/n0;-><init>([B[B)V

    iget-object v2, p0, LLi/B;->b:LBi/w;

    invoke-interface {v2, v1}, LBi/w;->c(LBi/x;)V

    iget-boolean v1, p0, LLi/B;->g:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, p2, p3}, LLi/B;->b([BII)[B

    move-result-object p1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_3
    invoke-virtual {p0, p1, p2, p3}, LLi/B;->a([BII)[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-static {v0, v3}, Lorg/bouncycastle/util/a;->e0([BB)V

    return-object p1

    :goto_4
    invoke-static {v0, v3}, Lorg/bouncycastle/util/a;->e0([BB)V

    throw p1
.end method
