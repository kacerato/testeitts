.class public LOi/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/w;


# instance fields
.field public a:LSi/k;

.field public b:I

.field public c:[B

.field public d:[B

.field public e:I


# direct methods
.method public constructor <init>(LBi/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LSi/k;

    invoke-direct {v0, p1}, LSi/k;-><init>(LBi/y;)V

    iput-object v0, p0, LOi/x;->a:LSi/k;

    invoke-interface {p1}, LBi/y;->f()I

    move-result p1

    iput p1, p0, LOi/x;->b:I

    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, LOi/x;->e:I

    add-int v1, v0, p3

    iget v2, p0, LOi/x;->b:I

    mul-int/lit16 v3, v2, 0xff

    if-gt v1, v3, :cond_2

    rem-int/2addr v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, LOi/x;->d()V

    :cond_0
    iget v0, p0, LOi/x;->e:I

    iget v1, p0, LOi/x;->b:I

    rem-int v2, v0, v1

    rem-int/2addr v0, v1

    sub-int/2addr v1, v0

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, LOi/x;->d:[B

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, LOi/x;->e:I

    add-int/2addr v1, v0

    iput v1, p0, LOi/x;->e:I

    sub-int v1, p3, v0

    :goto_0
    add-int/2addr p2, v0

    if-lez v1, :cond_1

    invoke-virtual {p0}, LOi/x;->d()V

    iget v0, p0, LOi/x;->b:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, LOi/x;->d:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, LOi/x;->e:I

    add-int/2addr v2, v0

    iput v2, p0, LOi/x;->e:I

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_1
    return p3

    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "HKDF may only be used for 255 * HashLen bytes of output"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()LBi/y;
    .locals 1

    iget-object v0, p0, LOi/x;->a:LSi/k;

    invoke-virtual {v0}, LSi/k;->f()LBi/y;

    move-result-object v0

    return-object v0
.end method

.method public c(LBi/x;)V
    .locals 4

    instance-of v0, p1, LXi/g0;

    if-eqz v0, :cond_1

    check-cast p1, LXi/g0;

    invoke-virtual {p1}, LXi/g0;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LOi/x;->a:LSi/k;

    new-instance v1, LXi/o0;

    invoke-virtual {p1}, LXi/g0;->b()[B

    move-result-object v2

    invoke-direct {v1, v2}, LXi/o0;-><init>([B)V

    :goto_0
    invoke-virtual {v0, v1}, LSi/k;->a(LBi/k;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, LOi/x;->a:LSi/k;

    new-instance v1, LXi/o0;

    invoke-virtual {p1}, LXi/g0;->d()[B

    move-result-object v2

    invoke-virtual {p1}, LXi/g0;->b()[B

    move-result-object v3

    invoke-virtual {p0, v2, v3}, LOi/x;->f([B[B)[B

    move-result-object v2

    invoke-direct {v1, v2}, LXi/o0;-><init>([B)V

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, LXi/g0;->c()[B

    move-result-object p1

    iput-object p1, p0, LOi/x;->c:[B

    const/4 p1, 0x0

    iput p1, p0, LOi/x;->e:I

    iget p1, p0, LOi/x;->b:I

    new-array p1, p1, [B

    iput-object p1, p0, LOi/x;->d:[B

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "HKDF parameters required for HKDFBytesGenerator"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    iget v0, p0, LOi/x;->e:I

    iget v1, p0, LOi/x;->b:I

    div-int v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x100

    if-ge v2, v3, :cond_1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, LOi/x;->a:LSi/k;

    iget-object v4, p0, LOi/x;->d:[B

    invoke-virtual {v0, v4, v3, v1}, LSi/k;->update([BII)V

    :cond_0
    iget-object v0, p0, LOi/x;->a:LSi/k;

    iget-object v1, p0, LOi/x;->c:[B

    array-length v4, v1

    invoke-virtual {v0, v1, v3, v4}, LSi/k;->update([BII)V

    iget-object v0, p0, LOi/x;->a:LSi/k;

    int-to-byte v1, v2

    invoke-virtual {v0, v1}, LSi/k;->update(B)V

    iget-object v0, p0, LOi/x;->a:LSi/k;

    iget-object v1, p0, LOi/x;->d:[B

    invoke-virtual {v0, v1, v3}, LSi/k;->c([BI)I

    return-void

    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "HKDF cannot generate more than 255 blocks of HashLen size"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f([B[B)[B
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, LOi/x;->a:LSi/k;

    new-instance v0, LXi/o0;

    iget v1, p0, LOi/x;->b:I

    new-array v1, v1, [B

    invoke-direct {v0, v1}, LXi/o0;-><init>([B)V

    invoke-virtual {p1, v0}, LSi/k;->a(LBi/k;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LOi/x;->a:LSi/k;

    new-instance v1, LXi/o0;

    invoke-direct {v1, p1}, LXi/o0;-><init>([B)V

    invoke-virtual {v0, v1}, LSi/k;->a(LBi/k;)V

    :goto_0
    iget-object p1, p0, LOi/x;->a:LSi/k;

    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, LSi/k;->update([BII)V

    iget p1, p0, LOi/x;->b:I

    new-array p1, p1, [B

    iget-object p2, p0, LOi/x;->a:LSi/k;

    invoke-virtual {p2, p1, v1}, LSi/k;->c([BI)I

    return-object p1
.end method
