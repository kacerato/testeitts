.class public Lcom/android/tools/r8/internal/ET;
.super Lcom/android/tools/r8/internal/l8;
.source "SourceFile"


# instance fields
.field public final d:[B

.field public e:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/l8;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/ET;->e:I

    iput-object p1, p0, Lcom/android/tools/r8/internal/ET;->d:[B

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final a(III)I
    .locals 3

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/ET;->d:[B

    move v1, p2

    :goto_0
    add-int v2, p2, p3

    if-ge v1, v2, :cond_0

    mul-int/lit8 p1, p1, 0x1f

    .line 15
    aget-byte v2, v0, v1

    add-int/2addr p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public final a(Ljava/io/OutputStream;II)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/ET;->d:[B

    invoke-virtual {p1, v0, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/ET;II)Z
    .locals 5

    .line 2
    iget-object v0, p1, Lcom/android/tools/r8/internal/ET;->d:[B

    .line 3
    array-length v1, v0

    if-gt p3, v1, :cond_3

    add-int v1, p2, p3

    .line 4
    array-length v2, v0

    if-gt v1, v2, :cond_2

    .line 5
    iget-object p1, p0, Lcom/android/tools/r8/internal/ET;->d:[B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p3, :cond_1

    .line 6
    aget-byte v3, p1, v2

    aget-byte v4, v0, p2

    if-eq v3, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 8
    iget-object p1, p1, Lcom/android/tools/r8/internal/ET;->d:[B

    array-length p1, p1

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x3b

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Ran off end of other: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    iget-object p2, p0, Lcom/android/tools/r8/internal/ET;->d:[B

    array-length p2, p2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Length too large: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(III)I
    .locals 8

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/ET;->d:[B

    add-int/2addr p3, p2

    if-eqz p1, :cond_15

    if-lt p2, p3, :cond_0

    return p1

    :cond_0
    int-to-byte v1, p1

    const/16 v2, -0x20

    const/4 v3, -0x1

    const/16 v4, -0x41

    if-ge v1, v2, :cond_3

    const/16 p1, -0x3e

    if-lt v1, p1, :cond_2

    add-int/lit8 p1, p2, 0x1

    .line 4
    aget-byte p2, v0, p2

    if-le p2, v4, :cond_1

    goto :goto_0

    :cond_1
    move p2, p1

    goto/16 :goto_5

    :cond_2
    :goto_0
    return v3

    :cond_3
    const/16 v5, -0x10

    const/16 v6, -0xc

    if-ge v1, v5, :cond_b

    shr-int/lit8 p1, p1, 0x8

    not-int p1, p1

    int-to-byte p1, p1

    if-nez p1, :cond_7

    add-int/lit8 p1, p2, 0x1

    .line 5
    aget-byte p2, v0, p2

    if-lt p1, p3, :cond_6

    if-gt v1, v6, :cond_5

    if-le p2, v4, :cond_4

    goto :goto_1

    :cond_4
    shl-int/lit8 p1, p2, 0x8

    xor-int/2addr p1, v1

    return p1

    :cond_5
    :goto_1
    return v3

    :cond_6
    move v7, p2

    move p2, p1

    move p1, v7

    :cond_7
    if-gt p1, v4, :cond_a

    const/16 v5, -0x60

    if-ne v1, v2, :cond_8

    if-lt p1, v5, :cond_a

    :cond_8
    const/16 v2, -0x13

    if-ne v1, v2, :cond_9

    if-ge p1, v5, :cond_a

    :cond_9
    add-int/lit8 p1, p2, 0x1

    .line 6
    aget-byte p2, v0, p2

    if-le p2, v4, :cond_1

    :cond_a
    return v3

    :cond_b
    shr-int/lit8 v2, p1, 0x8

    not-int v2, v2

    int-to-byte v2, v2

    if-nez v2, :cond_f

    add-int/lit8 p1, p2, 0x1

    .line 7
    aget-byte v2, v0, p2

    if-lt p1, p3, :cond_e

    if-gt v1, v6, :cond_d

    if-le v2, v4, :cond_c

    goto :goto_2

    :cond_c
    shl-int/lit8 p1, v2, 0x8

    xor-int/2addr p1, v1

    return p1

    :cond_d
    :goto_2
    return v3

    :cond_e
    const/4 p2, 0x0

    goto :goto_3

    :cond_f
    shr-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    move v7, p2

    move p2, p1

    move p1, v7

    :goto_3
    if-nez p2, :cond_13

    add-int/lit8 p2, p1, 0x1

    .line 8
    aget-byte p1, v0, p1

    if-lt p2, p3, :cond_12

    if-gt v1, v6, :cond_11

    if-gt v2, v4, :cond_11

    if-le p1, v4, :cond_10

    goto :goto_4

    :cond_10
    shl-int/lit8 p2, v2, 0x8

    xor-int/2addr p2, v1

    shl-int/lit8 p1, p1, 0x10

    xor-int/2addr p1, p2

    return p1

    :cond_11
    :goto_4
    return v3

    :cond_12
    move v7, p2

    move p2, p1

    move p1, v7

    :cond_13
    if-gt v2, v4, :cond_14

    shl-int/lit8 v1, v1, 0x1c

    add-int/lit8 v2, v2, 0x70

    add-int/2addr v2, v1

    shr-int/lit8 v1, v2, 0x1e

    if-nez v1, :cond_14

    if-gt p2, v4, :cond_14

    add-int/lit8 p2, p1, 0x1

    .line 9
    aget-byte p1, v0, p1

    if-le p1, v4, :cond_15

    :cond_14
    return v3

    .line 10
    :cond_15
    :goto_5
    invoke-static {v0, p2, p3}, Lcom/android/tools/r8/internal/sw0;->a([BII)I

    move-result p1

    return p1
.end method

.method public b([BIII)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/ET;->d:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final c()Z
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/ET;->d:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/tools/r8/internal/sw0;->a([BII)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/l8;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ET;->size()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lcom/android/tools/r8/internal/l8;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ET;->size()I

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    instance-of v0, p1, Lcom/android/tools/r8/internal/ET;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/android/tools/r8/internal/ET;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ET;->size()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/tools/r8/internal/ET;->a(Lcom/android/tools/r8/internal/ET;II)Z

    move-result p1

    return p1

    :cond_4
    instance-of v0, p1, Lcom/android/tools/r8/internal/Jk0;

    if-eqz v0, :cond_5

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x31

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Has a new type of ByteString been created? Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/ET;->e:I

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ET;->d:[B

    array-length v2, v1

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    invoke-direct {v0, v1, v3, v2, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/ET;->e:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ET;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lcom/android/tools/r8/internal/ET;->a(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lcom/android/tools/r8/internal/ET;->e:I

    :cond_1
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/DT;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/DT;-><init>(Lcom/android/tools/r8/internal/ET;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ET;->d:[B

    array-length v0, v0

    return v0
.end method
