.class public LLi/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/Y;


# static fields
.field public static final f:I = 0x100


# instance fields
.field public a:[B

.field public b:I

.field public c:I

.field public d:[B

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LLi/X;->a:[B

    const/4 v1, 0x0

    iput v1, p0, LLi/X;->b:I

    iput v1, p0, LLi/X;->c:I

    iput-object v0, p0, LLi/X;->d:[B

    new-instance v0, LHi/c;

    invoke-virtual {p0}, LLi/X;->b()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, LHi/c;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, LBi/r;->a(LBi/n;)V

    return-void
.end method

.method private c([B)V
    .locals 7

    iput-object p1, p0, LLi/X;->d:[B

    const/4 v0, 0x0

    iput v0, p0, LLi/X;->b:I

    iput v0, p0, LLi/X;->c:I

    iget-object v1, p0, LLi/X;->a:[B

    const/16 v2, 0x100

    if-nez v1, :cond_0

    new-array v1, v2, [B

    iput-object v1, p0, LLi/X;->a:[B

    :cond_0
    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, LLi/X;->a:[B

    int-to-byte v4, v1

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    move v3, v1

    :goto_1
    if-ge v0, v2, :cond_2

    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    iget-object v5, p0, LLi/X;->a:[B

    aget-byte v6, v5, v0

    add-int/2addr v4, v6

    add-int/2addr v4, v3

    and-int/lit16 v3, v4, 0xff

    aget-byte v4, v5, v3

    aput-byte v4, v5, v0

    aput-byte v6, v5, v3

    add-int/lit8 v1, v1, 0x1

    array-length v4, p1

    rem-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public a(ZLBi/k;)V
    .locals 3

    instance-of v0, p2, LXi/o0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LXi/o0;

    invoke-virtual {v0}, LXi/o0;->b()[B

    move-result-object v0

    iput-object v0, p0, LLi/X;->d:[B

    iput-boolean p1, p0, LLi/X;->e:Z

    invoke-direct {p0, v0}, LLi/X;->c([B)V

    new-instance v0, LHi/c;

    invoke-virtual {p0}, LLi/X;->b()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {p1}, LLi/x0;->a(Z)LBi/o;

    move-result-object p1

    invoke-direct {v0, v1, v2, p2, p1}, LHi/c;-><init>(Ljava/lang/String;ILjava/lang/Object;LBi/o;)V

    invoke-static {v0}, LBi/r;->a(LBi/n;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid parameter passed to RC4 init - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "RC4"

    return-object v0
.end method

.method public f([BII[BI)I
    .locals 6

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    iget v1, p0, LLi/X;->b:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, LLi/X;->b:I

    iget-object v2, p0, LLi/X;->a:[B

    aget-byte v3, v2, v1

    iget v4, p0, LLi/X;->c:I

    add-int/2addr v4, v3

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, LLi/X;->c:I

    aget-byte v5, v2, v4

    aput-byte v5, v2, v1

    aput-byte v3, v2, v4

    add-int v4, v0, p5

    add-int v5, v0, p2

    aget-byte v5, p1, v5

    aget-byte v1, v2, v1

    add-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v2, v1

    xor-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, p4, v4

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
    .locals 5

    iget v0, p0, LLi/X;->b:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, LLi/X;->b:I

    iget-object v1, p0, LLi/X;->a:[B

    aget-byte v2, v1, v0

    iget v3, p0, LLi/X;->c:I

    add-int/2addr v3, v2

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, LLi/X;->c:I

    aget-byte v4, v1, v3

    aput-byte v4, v1, v0

    aput-byte v2, v1, v3

    aget-byte v0, v1, v0

    add-int/2addr v0, v2

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v1, v0

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    return p1
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, LLi/X;->d:[B

    invoke-direct {p0, v0}, LLi/X;->c([B)V

    return-void
.end method
