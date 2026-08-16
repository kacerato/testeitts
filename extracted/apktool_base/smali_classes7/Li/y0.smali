.class public LLi/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/Y;


# instance fields
.field public a:B

.field public b:[B

.field public c:B

.field public d:[B

.field public e:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, LLi/y0;->a:B

    const/4 v1, 0x0

    iput-object v1, p0, LLi/y0;->b:[B

    iput-byte v0, p0, LLi/y0;->c:B

    return-void
.end method


# virtual methods
.method public a(ZLBi/k;)V
    .locals 5

    instance-of v0, p2, LXi/w0;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, LXi/w0;

    invoke-virtual {v0}, LXi/w0;->b()LBi/k;

    move-result-object v1

    instance-of v1, v1, LXi/o0;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, LXi/w0;->b()LBi/k;

    move-result-object v1

    check-cast v1, LXi/o0;

    invoke-virtual {v0}, LXi/w0;->a()[B

    move-result-object v0

    iput-object v0, p0, LLi/y0;->d:[B

    if-eqz v0, :cond_1

    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1

    array-length v0, v0

    const/16 v2, 0x300

    if-gt v0, v2, :cond_1

    invoke-virtual {v1}, LXi/o0;->b()[B

    move-result-object v0

    iput-object v0, p0, LLi/y0;->e:[B

    iget-object v1, p0, LLi/y0;->d:[B

    invoke-virtual {p0, v0, v1}, LLi/y0;->c([B[B)V

    new-instance v0, LHi/c;

    invoke-virtual {p0}, LLi/y0;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LLi/y0;->e:[B

    array-length v3, v2

    const/16 v4, 0x20

    if-lt v3, v4, :cond_0

    const/16 v2, 0x100

    goto :goto_0

    :cond_0
    array-length v2, v2

    mul-int/lit8 v2, v2, 0x8

    :goto_0
    invoke-static {p1}, LLi/x0;->a(Z)LBi/o;

    move-result-object p1

    invoke-direct {v0, v1, v2, p2, p1}, LHi/c;-><init>(Ljava/lang/String;ILjava/lang/Object;LBi/o;)V

    invoke-static {v0}, LBi/r;->a(LBi/n;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "VMPC requires 1 to 768 bytes of IV"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "VMPC init parameters must include a key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "VMPC init parameters must include an IV"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "VMPC"

    return-object v0
.end method

.method public c([B[B)V
    .locals 7

    const/4 v0, 0x0

    iput-byte v0, p0, LLi/y0;->c:B

    const/16 v1, 0x100

    new-array v2, v1, [B

    iput-object v2, p0, LLi/y0;->b:[B

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, LLi/y0;->b:[B

    int-to-byte v4, v2

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    const/16 v2, 0x300

    if-ge v1, v2, :cond_1

    iget-object v2, p0, LLi/y0;->b:[B

    iget-byte v3, p0, LLi/y0;->c:B

    and-int/lit16 v4, v1, 0xff

    aget-byte v5, v2, v4

    add-int/2addr v3, v5

    array-length v6, p1

    rem-int v6, v1, v6

    aget-byte v6, p1, v6

    add-int/2addr v3, v6

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v2, v3

    iput-byte v3, p0, LLi/y0;->c:B

    and-int/lit16 v6, v3, 0xff

    aget-byte v6, v2, v6

    aput-byte v6, v2, v4

    and-int/lit16 v3, v3, 0xff

    aput-byte v5, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_2
    if-ge p1, v2, :cond_2

    iget-object v1, p0, LLi/y0;->b:[B

    iget-byte v3, p0, LLi/y0;->c:B

    and-int/lit16 v4, p1, 0xff

    aget-byte v5, v1, v4

    add-int/2addr v3, v5

    array-length v6, p2

    rem-int v6, p1, v6

    aget-byte v6, p2, v6

    add-int/2addr v3, v6

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v1, v3

    iput-byte v3, p0, LLi/y0;->c:B

    and-int/lit16 v6, v3, 0xff

    aget-byte v6, v1, v6

    aput-byte v6, v1, v4

    and-int/lit16 v3, v3, 0xff

    aput-byte v5, v1, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    iput-byte v0, p0, LLi/y0;->a:B

    return-void
.end method

.method public f([BII[BI)I
    .locals 8

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    iget-object v1, p0, LLi/y0;->b:[B

    iget-byte v2, p0, LLi/y0;->c:B

    iget-byte v3, p0, LLi/y0;->a:B

    and-int/lit16 v4, v3, 0xff

    aget-byte v4, v1, v4

    add-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v1, v2

    iput-byte v2, p0, LLi/y0;->c:B

    and-int/lit16 v4, v2, 0xff

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v1, v4

    add-int/lit8 v4, v4, 0x1

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v1, v4

    and-int/lit16 v5, v3, 0xff

    aget-byte v5, v1, v5

    and-int/lit16 v6, v3, 0xff

    and-int/lit16 v7, v2, 0xff

    aget-byte v7, v1, v7

    aput-byte v7, v1, v6

    and-int/lit16 v2, v2, 0xff

    aput-byte v5, v1, v2

    add-int/lit8 v3, v3, 0x1

    and-int/lit16 v1, v3, 0xff

    int-to-byte v1, v1

    iput-byte v1, p0, LLi/y0;->a:B

    add-int v1, v0, p5

    add-int v2, v0, p2

    aget-byte v2, p1, v2

    xor-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p3

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

.method public i(B)B
    .locals 7

    iget-object v0, p0, LLi/y0;->b:[B

    iget-byte v1, p0, LLi/y0;->c:B

    iget-byte v2, p0, LLi/y0;->a:B

    and-int/lit16 v3, v2, 0xff

    aget-byte v3, v0, v3

    add-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v0, v1

    iput-byte v1, p0, LLi/y0;->c:B

    and-int/lit16 v3, v1, 0xff

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v0, v3

    add-int/lit8 v3, v3, 0x1

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v0, v3

    and-int/lit16 v4, v2, 0xff

    aget-byte v4, v0, v4

    and-int/lit16 v5, v2, 0xff

    and-int/lit16 v6, v1, 0xff

    aget-byte v6, v0, v6

    aput-byte v6, v0, v5

    and-int/lit16 v1, v1, 0xff

    aput-byte v4, v0, v1

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v0, v2, 0xff

    int-to-byte v0, v0

    iput-byte v0, p0, LLi/y0;->a:B

    xor-int/2addr p1, v3

    int-to-byte p1, p1

    return p1
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, LLi/y0;->e:[B

    iget-object v1, p0, LLi/y0;->d:[B

    invoke-virtual {p0, v0, v1}, LLi/y0;->c([B[B)V

    return-void
.end method
