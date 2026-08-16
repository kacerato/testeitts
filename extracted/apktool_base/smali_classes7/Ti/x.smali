.class public LTi/x;
.super LBi/X;
.source "SourceFile"


# instance fields
.field public b:[B

.field public c:[B

.field public d:[B

.field public e:I

.field public f:Z

.field public g:LBi/f;


# direct methods
.method public constructor <init>(LBi/f;)V
    .locals 1

    invoke-direct {p0, p1}, LBi/X;-><init>(LBi/f;)V

    iput-object p1, p0, LTi/x;->g:LBi/f;

    invoke-interface {p1}, LBi/f;->c()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, LTi/x;->b:[B

    invoke-interface {p1}, LBi/f;->c()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, LTi/x;->c:[B

    invoke-interface {p1}, LBi/f;->c()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, LTi/x;->d:[B

    return-void
.end method

.method private l()V
    .locals 0

    return-void
.end method

.method private m(I)V
    .locals 3

    :goto_0
    iget-object v0, p0, LTi/x;->c:[B

    array-length v1, v0

    if-ge p1, v1, :cond_1

    add-int/lit8 v1, p1, 0x1

    aget-byte v2, v0, p1

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, p1

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move p1, v1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public a(ZLBi/k;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, LTi/x;->f:Z

    instance-of v0, p2, LXi/w0;

    if-eqz v0, :cond_1

    check-cast p2, LXi/w0;

    invoke-virtual {p2}, LXi/w0;->a()[B

    move-result-object v0

    iget-object v1, p0, LTi/x;->b:[B

    array-length v2, v1

    array-length v3, v0

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lorg/bouncycastle/util/a;->e0([BB)V

    iget-object v1, p0, LTi/x;->b:[B

    array-length v4, v0

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p2}, LXi/w0;->b()LBi/k;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object v0, p0, LTi/x;->g:LBi/f;

    invoke-interface {v0, p1, p2}, LBi/f;->a(ZLBi/k;)V

    :cond_0
    invoke-virtual {p0}, LTi/x;->reset()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid parameter passed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LTi/x;->g:LBi/f;

    invoke-interface {v1}, LBi/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/KCTR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, LTi/x;->g:LBi/f;

    invoke-interface {v0}, LBi/f;->c()I

    move-result v0

    return v0
.end method

.method public g([BI[BI)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-virtual {p0}, LTi/x;->c()I

    move-result v1

    if-lt v0, v1, :cond_1

    array-length v0, p3

    sub-int/2addr v0, p4

    invoke-virtual {p0}, LTi/x;->c()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, LTi/x;->c()I

    move-result v5

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, LBi/X;->f([BII[BI)I

    invoke-virtual {p0}, LTi/x;->c()I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k(B)B
    .locals 4

    iget v0, p0, LTi/x;->e:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, LTi/x;->m(I)V

    invoke-direct {p0}, LTi/x;->l()V

    iget-object v0, p0, LTi/x;->g:LBi/f;

    iget-object v2, p0, LTi/x;->c:[B

    iget-object v3, p0, LTi/x;->d:[B

    invoke-interface {v0, v2, v1, v3, v1}, LBi/f;->g([BI[BI)I

    iget-object v0, p0, LTi/x;->d:[B

    iget v1, p0, LTi/x;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, LTi/x;->e:I

    aget-byte v0, v0, v1

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    return p1

    :cond_0
    iget-object v2, p0, LTi/x;->d:[B

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, LTi/x;->e:I

    aget-byte v0, v2, v0

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    iget-object v0, p0, LTi/x;->c:[B

    array-length v0, v0

    if-ne v3, v0, :cond_1

    iput v1, p0, LTi/x;->e:I

    :cond_1
    return p1
.end method

.method public reset()V
    .locals 4

    iget-boolean v0, p0, LTi/x;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, LTi/x;->g:LBi/f;

    iget-object v2, p0, LTi/x;->b:[B

    iget-object v3, p0, LTi/x;->c:[B

    invoke-interface {v0, v2, v1, v3, v1}, LBi/f;->g([BI[BI)I

    :cond_0
    iget-object v0, p0, LTi/x;->g:LBi/f;

    invoke-interface {v0}, LBi/f;->reset()V

    iput v1, p0, LTi/x;->e:I

    return-void
.end method
