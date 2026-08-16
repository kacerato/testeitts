.class public LSi/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[B

.field public b:[B

.field public c:[B

.field public d:I

.field public e:LBi/f;


# direct methods
.method public constructor <init>(LBi/f;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LSi/o;->e:LBi/f;

    div-int/lit8 p2, p2, 0x8

    iput p2, p0, LSi/o;->d:I

    invoke-interface {p1}, LBi/f;->c()I

    move-result p2

    new-array p2, p2, [B

    iput-object p2, p0, LSi/o;->a:[B

    invoke-interface {p1}, LBi/f;->c()I

    move-result p2

    new-array p2, p2, [B

    iput-object p2, p0, LSi/o;->b:[B

    invoke-interface {p1}, LBi/f;->c()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, LSi/o;->c:[B

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LSi/o;->e:LBi/f;

    invoke-interface {v1}, LBi/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/CFB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LSi/o;->d:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, LSi/o;->d:I

    return v0
.end method

.method public c([B)V
    .locals 3

    iget-object v0, p0, LSi/o;->e:LBi/f;

    iget-object v1, p0, LSi/o;->b:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1, v2}, LBi/f;->g([BI[BI)I

    return-void
.end method

.method public d(LBi/k;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of v0, p1, LXi/w0;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    check-cast p1, LXi/w0;

    invoke-virtual {p1}, LXi/w0;->a()[B

    move-result-object v0

    array-length v2, v0

    iget-object v3, p0, LSi/o;->a:[B

    array-length v4, v3

    const/4 v5, 0x0

    if-ge v2, v4, :cond_0

    array-length v2, v3

    array-length v4, v0

    sub-int/2addr v2, v4

    array-length v4, v0

    invoke-static {v0, v5, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    array-length v2, v3

    invoke-static {v0, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    invoke-virtual {p0}, LSi/o;->f()V

    iget-object v0, p0, LSi/o;->e:LBi/f;

    invoke-virtual {p1}, LXi/w0;->b()LBi/k;

    move-result-object p1

    :goto_1
    invoke-interface {v0, v1, p1}, LBi/f;->a(ZLBi/k;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, LSi/o;->f()V

    iget-object v0, p0, LSi/o;->e:LBi/f;

    goto :goto_1

    :goto_2
    return-void
.end method

.method public e([BI[BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget v0, p0, LSi/o;->d:I

    add-int v1, p2, v0

    array-length v2, p1

    if-gt v1, v2, :cond_2

    add-int/2addr v0, p4

    array-length v1, p3

    if-gt v0, v1, :cond_1

    iget-object v0, p0, LSi/o;->e:LBi/f;

    iget-object v1, p0, LSi/o;->b:[B

    iget-object v2, p0, LSi/o;->c:[B

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2, v3}, LBi/f;->g([BI[BI)I

    move v0, v3

    :goto_0
    iget v1, p0, LSi/o;->d:I

    if-ge v0, v1, :cond_0

    add-int v1, p4, v0

    iget-object v2, p0, LSi/o;->c:[B

    aget-byte v2, v2, v0

    add-int v4, p2, v0

    aget-byte v4, p1, v4

    xor-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, LSi/o;->b:[B

    array-length p2, p1

    sub-int/2addr p2, v1

    invoke-static {p1, v1, p1, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, LSi/o;->b:[B

    array-length p2, p1

    iget v0, p0, LSi/o;->d:I

    sub-int/2addr p2, v0

    invoke-static {p3, p4, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, LSi/o;->d:I

    return p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f()V
    .locals 4

    iget-object v0, p0, LSi/o;->a:[B

    iget-object v1, p0, LSi/o;->b:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, LSi/o;->e:LBi/f;

    invoke-interface {v0}, LBi/f;->reset()V

    return-void
.end method
