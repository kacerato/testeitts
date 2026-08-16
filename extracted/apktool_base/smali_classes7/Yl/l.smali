.class public LYl/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LYl/m;


# static fields
.field public static final d:I = 0xb


# instance fields
.field public a:I

.field public b:[I

.field public c:[I


# direct methods
.method public constructor <init>(I[I[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LYl/l;->a:I

    iput-object p2, p0, LYl/l;->b:[I

    iput-object p3, p0, LYl/l;->c:[I

    return-void
.end method

.method public constructor <init>(LYl/e;)V
    .locals 0

    .line 2
    iget-object p1, p1, LYl/e;->a:[I

    invoke-direct {p0, p1}, LYl/l;-><init>([I)V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    iput v0, p0, LYl/l;->a:I

    new-array v1, v0, [I

    iput-object v1, p0, LYl/l;->b:[I

    new-array v0, v0, [I

    iput-object v0, p0, LYl/l;->c:[I

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget v3, p0, LYl/l;->a:I

    if-ge v0, v3, :cond_3

    aget v3, p1, v0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, LYl/l;->b:[I

    add-int/lit8 v4, v1, 0x1

    aput v0, v3, v1

    move v1, v4

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", must be one of {-1, 0, 1}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v3, p0, LYl/l;->c:[I

    add-int/lit8 v4, v2, 0x1

    aput v0, v3, v2

    move v2, v4

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, LYl/l;->b:[I

    invoke-static {p1, v1}, Lorg/bouncycastle/util/a;->S([II)[I

    move-result-object p1

    iput-object p1, p0, LYl/l;->b:[I

    iget-object p1, p0, LYl/l;->c:[I

    invoke-static {p1, v2}, Lorg/bouncycastle/util/a;->S([II)[I

    move-result-object p1

    iput-object p1, p0, LYl/l;->c:[I

    return-void
.end method

.method public static g(Ljava/io/InputStream;III)LYl/l;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x7ff

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    mul-int v1, p2, v0

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    invoke-static {p0, v1}, LZl/b;->g(Ljava/io/InputStream;I)[B

    move-result-object v1

    const/16 v2, 0x800

    invoke-static {v1, p2, v2}, LZl/a;->e([BII)[I

    move-result-object p2

    mul-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    invoke-static {p0, v0}, LZl/b;->g(Ljava/io/InputStream;I)[B

    move-result-object p0

    invoke-static {p0, p3, v2}, LZl/a;->e([BII)[I

    move-result-object p0

    new-instance p3, LYl/l;

    invoke-direct {p3, p1, p2, p0}, LYl/l;-><init>(I[I[I)V

    return-object p3
.end method

.method public static h(IIILjava/security/SecureRandom;)LYl/l;
    .locals 0

    invoke-static {p0, p1, p2, p3}, LZl/b;->b(IIILjava/security/SecureRandom;)[I

    move-result-object p0

    new-instance p1, LYl/l;

    invoke-direct {p1, p0}, LYl/l;-><init>([I)V

    return-object p1
.end method


# virtual methods
.method public a(LYl/e;)LYl/e;
    .locals 7

    iget-object p1, p1, LYl/e;->a:[I

    array-length v0, p1

    iget v1, p0, LYl/l;->a:I

    if-ne v0, v1, :cond_6

    new-array v0, v1, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, LYl/l;->b:[I

    array-length v4, v3

    if-eq v2, v4, :cond_2

    aget v3, v3, v2

    iget v4, p0, LYl/l;->a:I

    add-int/lit8 v5, v4, -0x1

    sub-int/2addr v5, v3

    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-ltz v4, :cond_1

    aget v3, v0, v4

    aget v6, p1, v5

    add-int/2addr v3, v6

    aput v3, v0, v4

    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_0

    iget v3, p0, LYl/l;->a:I

    add-int/lit8 v3, v3, -0x1

    move v5, v3

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    iget-object v2, p0, LYl/l;->c:[I

    array-length v3, v2

    if-eq v1, v3, :cond_5

    aget v2, v2, v1

    iget v3, p0, LYl/l;->a:I

    add-int/lit8 v4, v3, -0x1

    sub-int/2addr v4, v2

    add-int/lit8 v3, v3, -0x1

    :goto_3
    if-ltz v3, :cond_4

    aget v2, v0, v3

    aget v5, p1, v4

    sub-int/2addr v2, v5

    aput v2, v0, v3

    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_3

    iget v2, p0, LYl/l;->a:I

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    new-instance p1, LYl/e;

    invoke-direct {p1, v0}, LYl/e;-><init>([I)V

    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number of coefficients must be the same"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()LYl/e;
    .locals 5

    iget v0, p0, LYl/l;->a:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, LYl/l;->b:[I

    array-length v4, v3

    if-eq v2, v4, :cond_0

    aget v3, v3, v2

    const/4 v4, 0x1

    aput v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v2, p0, LYl/l;->c:[I

    array-length v3, v2

    if-eq v1, v3, :cond_1

    aget v2, v2, v1

    const/4 v3, -0x1

    aput v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v1, LYl/e;

    invoke-direct {v1, v0}, LYl/e;-><init>([I)V

    return-object v1
.end method

.method public c(LYl/b;)LYl/b;
    .locals 7

    iget-object p1, p1, LYl/b;->a:[Ljava/math/BigInteger;

    array-length v0, p1

    iget v1, p0, LYl/l;->a:I

    if-ne v0, v1, :cond_7

    new-array v0, v1, [Ljava/math/BigInteger;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, LYl/l;->a:I

    if-ge v2, v3, :cond_0

    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_1
    iget-object v3, p0, LYl/l;->b:[I

    array-length v4, v3

    if-eq v2, v4, :cond_3

    aget v3, v3, v2

    iget v4, p0, LYl/l;->a:I

    add-int/lit8 v5, v4, -0x1

    sub-int/2addr v5, v3

    add-int/lit8 v4, v4, -0x1

    :goto_2
    if-ltz v4, :cond_2

    aget-object v3, v0, v4

    aget-object v6, p1, v5

    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v0, v4

    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_1

    iget v3, p0, LYl/l;->a:I

    add-int/lit8 v3, v3, -0x1

    move v5, v3

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    iget-object v2, p0, LYl/l;->c:[I

    array-length v3, v2

    if-eq v1, v3, :cond_6

    aget v2, v2, v1

    iget v3, p0, LYl/l;->a:I

    add-int/lit8 v4, v3, -0x1

    sub-int/2addr v4, v2

    add-int/lit8 v3, v3, -0x1

    :goto_4
    if-ltz v3, :cond_5

    aget-object v2, v0, v3

    aget-object v5, p1, v4

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v0, v3

    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_4

    iget v2, p0, LYl/l;->a:I

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    new-instance p1, LYl/b;

    invoke-direct {p1, v0}, LYl/b;-><init>([Ljava/math/BigInteger;)V

    return-object p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number of coefficients must be the same"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, LYl/l;->b:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    iget-object v2, p0, LYl/l;->c:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public d()[I
    .locals 1

    iget-object v0, p0, LYl/l;->b:[I

    return-object v0
.end method

.method public e(LYl/e;I)LYl/e;
    .locals 0

    invoke-virtual {p0, p1}, LYl/l;->a(LYl/e;)LYl/e;

    move-result-object p1

    invoke-virtual {p1, p2}, LYl/e;->z(I)V

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, LYl/l;

    iget v2, p0, LYl/l;->a:I

    iget v3, p1, LYl/l;->a:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, LYl/l;->c:[I

    iget-object v3, p1, LYl/l;->c:[I

    invoke-static {v2, v3}, Lorg/bouncycastle/util/a;->i([I[I)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, LYl/l;->b:[I

    iget-object p1, p1, LYl/l;->b:[I

    invoke-static {v2, p1}, Lorg/bouncycastle/util/a;->i([I[I)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public f()[I
    .locals 1

    iget-object v0, p0, LYl/l;->c:[I

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, LYl/l;->a:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, LYl/l;->c:[I

    invoke-static {v2}, Lorg/bouncycastle/util/a;->w0([I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, LYl/l;->b:[I

    invoke-static {v1}, Lorg/bouncycastle/util/a;->w0([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public i()[B
    .locals 5

    iget-object v0, p0, LYl/l;->b:[I

    const/16 v1, 0x800

    invoke-static {v0, v1}, LZl/a;->h([II)[B

    move-result-object v0

    iget-object v2, p0, LYl/l;->c:[I

    invoke-static {v2, v1}, LZl/a;->h([II)[B

    move-result-object v1

    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Lorg/bouncycastle/util/a;->Q([BI)[B

    move-result-object v2

    array-length v0, v0

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public size()I
    .locals 1

    iget v0, p0, LYl/l;->a:I

    return v0
.end method
