.class public LTi/g;
.super LBi/X;
.source "SourceFile"

# interfaces
.implements LTi/h;


# instance fields
.field public b:[B

.field public c:[B

.field public d:[B

.field public e:[B

.field public f:I

.field public g:LBi/f;

.field public h:Z

.field public i:I


# direct methods
.method public constructor <init>(LBi/f;I)V
    .locals 2

    invoke-direct {p0, p1}, LBi/X;-><init>(LBi/f;)V

    const/4 v0, 0x0

    iput-object v0, p0, LTi/g;->g:LBi/f;

    invoke-interface {p1}, LBi/f;->c()I

    move-result v0

    const/16 v1, 0x8

    mul-int/2addr v0, v1

    if-gt p2, v0, :cond_0

    if-lt p2, v1, :cond_0

    rem-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_0

    iput-object p1, p0, LTi/g;->g:LBi/f;

    div-int/2addr p2, v1

    iput p2, p0, LTi/g;->f:I

    invoke-interface {p1}, LBi/f;->c()I

    move-result p2

    new-array p2, p2, [B

    iput-object p2, p0, LTi/g;->b:[B

    invoke-interface {p1}, LBi/f;->c()I

    move-result p2

    new-array p2, p2, [B

    iput-object p2, p0, LTi/g;->c:[B

    invoke-interface {p1}, LBi/f;->c()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, LTi/g;->d:[B

    iget p1, p0, LTi/g;->f:I

    new-array p1, p1, [B

    iput-object p1, p0, LTi/g;->e:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CFB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " not supported"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static q(LBi/f;I)LTi/h;
    .locals 1

    new-instance v0, LTi/g;

    invoke-direct {v0, p0, p1}, LTi/g;-><init>(LBi/f;I)V

    return-object v0
.end method


# virtual methods
.method public a(ZLBi/k;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iput-boolean p1, p0, LTi/g;->h:Z

    instance-of p1, p2, LXi/w0;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    check-cast p2, LXi/w0;

    invoke-virtual {p2}, LXi/w0;->a()[B

    move-result-object p1

    array-length v1, p1

    iget-object v2, p0, LTi/g;->b:[B

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v1, v3, :cond_0

    array-length v1, v2

    array-length v3, p1

    sub-int/2addr v1, v3

    array-length v3, p1

    invoke-static {p1, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v4

    :goto_0
    iget-object v2, p0, LTi/g;->b:[B

    array-length v3, v2

    array-length v5, p1

    sub-int/2addr v3, v5

    if-ge v1, v3, :cond_1

    aput-byte v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length v1, v2

    invoke-static {p1, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    invoke-virtual {p0}, LTi/g;->reset()V

    invoke-virtual {p2}, LXi/w0;->b()LBi/k;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, LTi/g;->g:LBi/f;

    invoke-virtual {p2}, LXi/w0;->b()LBi/k;

    move-result-object p2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, LTi/g;->reset()V

    if-eqz p2, :cond_3

    iget-object p1, p0, LTi/g;->g:LBi/f;

    :goto_1
    invoke-interface {p1, v0, p2}, LBi/f;->a(ZLBi/k;)V

    :cond_3
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LTi/g;->g:LBi/f;

    invoke-interface {v1}, LBi/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/CFB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LTi/g;->f:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, LTi/g;->f:I

    return v0
.end method

.method public g([BI[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget v3, p0, LTi/g;->f:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, LBi/X;->f([BII[BI)I

    iget p1, p0, LTi/g;->f:I

    return p1
.end method

.method public k(B)B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-boolean v0, p0, LTi/g;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, LTi/g;->o(B)B

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, LTi/g;->m(B)B

    move-result p1

    :goto_0
    return p1
.end method

.method public l([BI[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget v3, p0, LTi/g;->f:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, LBi/X;->f([BII[BI)I

    iget p1, p0, LTi/g;->f:I

    return p1
.end method

.method public final m(B)B
    .locals 5

    iget v0, p0, LTi/g;->i:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, LTi/g;->g:LBi/f;

    iget-object v2, p0, LTi/g;->c:[B

    iget-object v3, p0, LTi/g;->d:[B

    invoke-interface {v0, v2, v1, v3, v1}, LBi/f;->g([BI[BI)I

    :cond_0
    iget-object v0, p0, LTi/g;->e:[B

    iget v2, p0, LTi/g;->i:I

    aput-byte p1, v0, v2

    iget-object v0, p0, LTi/g;->d:[B

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, LTi/g;->i:I

    aget-byte v0, v0, v2

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    iget v0, p0, LTi/g;->f:I

    if-ne v3, v0, :cond_1

    iput v1, p0, LTi/g;->i:I

    iget-object v2, p0, LTi/g;->c:[B

    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-static {v2, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, LTi/g;->e:[B

    iget-object v2, p0, LTi/g;->c:[B

    array-length v3, v2

    iget v4, p0, LTi/g;->f:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return p1
.end method

.method public n([BI[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget v3, p0, LTi/g;->f:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, LBi/X;->f([BII[BI)I

    iget p1, p0, LTi/g;->f:I

    return p1
.end method

.method public final o(B)B
    .locals 5

    iget v0, p0, LTi/g;->i:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, LTi/g;->g:LBi/f;

    iget-object v2, p0, LTi/g;->c:[B

    iget-object v3, p0, LTi/g;->d:[B

    invoke-interface {v0, v2, v1, v3, v1}, LBi/f;->g([BI[BI)I

    :cond_0
    iget-object v0, p0, LTi/g;->d:[B

    iget v2, p0, LTi/g;->i:I

    aget-byte v0, v0, v2

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    iget-object v0, p0, LTi/g;->e:[B

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, LTi/g;->i:I

    aput-byte p1, v0, v2

    iget v0, p0, LTi/g;->f:I

    if-ne v3, v0, :cond_1

    iput v1, p0, LTi/g;->i:I

    iget-object v2, p0, LTi/g;->c:[B

    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-static {v2, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, LTi/g;->e:[B

    iget-object v2, p0, LTi/g;->c:[B

    array-length v3, v2

    iget v4, p0, LTi/g;->f:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return p1
.end method

.method public p()[B
    .locals 1

    iget-object v0, p0, LTi/g;->c:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 4

    iget-object v0, p0, LTi/g;->b:[B

    iget-object v1, p0, LTi/g;->c:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, LTi/g;->e:[B

    invoke-static {v0, v3}, Lorg/bouncycastle/util/a;->e0([BB)V

    iput v3, p0, LTi/g;->i:I

    iget-object v0, p0, LTi/g;->g:LBi/f;

    invoke-interface {v0}, LBi/f;->reset()V

    return-void
.end method
