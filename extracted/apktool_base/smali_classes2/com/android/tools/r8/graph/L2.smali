.class public Lcom/android/tools/r8/graph/L2;
.super Lcom/android/tools/r8/graph/d4;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/n5;
.implements Lcom/android/tools/r8/internal/YS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/graph/d4;",
        "Lcom/android/tools/r8/graph/n5;",
        "Lcom/android/tools/r8/internal/YS;"
    }
.end annotation


# static fields
.field public static final g:[Lcom/android/tools/r8/graph/L2;

.field public static final synthetic h:Z = true


# instance fields
.field public final e:I

.field public final f:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/tools/r8/graph/L2;

    sput-object v0, Lcom/android/tools/r8/graph/L2;->g:[Lcom/android/tools/r8/graph/L2;

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/graph/d4;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/tools/r8/graph/L2;->e:I

    .line 3
    iput-object p2, p0, Lcom/android/tools/r8/graph/L2;->f:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/android/tools/r8/graph/d4;-><init>()V

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/android/tools/r8/graph/L2;->e:I

    .line 6
    invoke-static {p1}, Lcom/android/tools/r8/graph/L2;->a(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/L2;->f:[B

    return-void
.end method

.method public static a(C[BI)I
    .locals 3

    if-eqz p0, :cond_0

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p2, 0x1

    int-to-byte p0, p0

    .line 35
    aput-byte p0, p1, p2

    return v0

    :cond_0
    const/16 v0, 0x7ff

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x6

    and-int/lit8 v1, v1, 0x1f

    or-int/lit16 v1, v1, 0xc0

    int-to-byte v1, v1

    .line 36
    aput-byte v1, p1, p2

    add-int/lit8 p2, p2, 0x2

    and-int/lit8 p0, p0, 0x3f

    or-int/lit16 p0, p0, 0x80

    int-to-byte p0, p0

    .line 37
    aput-byte p0, p1, v0

    return p2

    :cond_1
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0xc

    and-int/lit8 v1, v1, 0xf

    or-int/lit16 v1, v1, 0xe0

    int-to-byte v1, v1

    .line 38
    aput-byte v1, p1, p2

    add-int/lit8 v1, p2, 0x2

    shr-int/lit8 v2, p0, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    .line 39
    aput-byte v2, p1, v0

    add-int/lit8 p2, p2, 0x3

    and-int/lit8 p0, p0, 0x3f

    or-int/lit16 p0, p0, 0x80

    int-to-byte p0, p0

    .line 40
    aput-byte p0, p1, v1

    return p2
.end method

.method public static a([B[C)I
    .locals 10

    .line 13
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    add-int/lit8 v3, v1, 0x1

    .line 14
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    if-nez v4, :cond_1

    return v2

    .line 15
    :cond_1
    aput-char v4, p1, v2

    const/16 v5, 0x80

    if-ge v4, v5, :cond_3

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v0, :cond_2

    return v2

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    and-int/lit16 v6, v4, 0xe0

    const/16 v7, 0xc0

    if-ne v6, v7, :cond_5

    add-int/lit8 v1, v1, 0x2

    .line 16
    aget-byte v3, p0, v3

    and-int/lit16 v6, v3, 0xff

    and-int/lit16 v7, v3, 0xc0

    if-ne v7, v5, :cond_4

    and-int/lit8 v4, v4, 0x1f

    shl-int/lit8 v4, v4, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v4

    int-to-char v3, v3

    .line 17
    aput-char v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v0, :cond_0

    return v2

    .line 18
    :cond_4
    invoke-static {v4, v6}, Lcom/android/tools/r8/graph/L2;->e(II)Ljava/io/UTFDataFormatException;

    move-result-object p0

    throw p0

    :cond_5
    and-int/lit16 v6, v4, 0xf0

    const/16 v7, 0xe0

    if-ne v6, v7, :cond_7

    add-int/lit8 v6, v1, 0x2

    .line 19
    aget-byte v3, p0, v3

    and-int/lit16 v7, v3, 0xff

    add-int/lit8 v1, v1, 0x3

    .line 20
    aget-byte v6, p0, v6

    and-int/lit16 v8, v6, 0xff

    and-int/lit16 v9, v3, 0xc0

    if-ne v9, v5, :cond_6

    and-int/lit16 v9, v6, 0xc0

    if-ne v9, v5, :cond_6

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0xc

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v3, v4

    and-int/lit8 v4, v6, 0x3f

    or-int/2addr v3, v4

    int-to-char v3, v3

    .line 21
    aput-char v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v0, :cond_0

    return v2

    .line 22
    :cond_6
    invoke-static {v4, v7, v8}, Lcom/android/tools/r8/graph/L2;->a(III)Ljava/io/UTFDataFormatException;

    move-result-object p0

    throw p0

    .line 23
    :cond_7
    invoke-static {v4}, Lcom/android/tools/r8/graph/L2;->k(I)Ljava/io/UTFDataFormatException;

    move-result-object p0

    throw p0
.end method

.method public static a(III)Ljava/io/UTFDataFormatException;
    .locals 3

    .line 24
    new-instance v0, Ljava/io/UTFDataFormatException;

    and-int/lit16 p0, p0, 0xff

    int-to-char p0, p0

    .line 25
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    and-int/lit16 p2, p2, 0xff

    int-to-char p2, p2

    .line 27
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad second or third byte (first: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", second: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", third: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(I[B)Ljava/lang/String;
    .locals 2

    .line 10
    new-array p0, p0, [C

    .line 11
    invoke-static {p1, p0}, Lcom/android/tools/r8/graph/L2;->a([B[C)I

    move-result p1

    .line 12
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/internal/C2;Ljava/lang/String;)Z
    .locals 3

    .line 47
    sget-object v0, Lcom/android/tools/r8/internal/C2;->F:Lcom/android/tools/r8/internal/C2;

    invoke-interface {p0, v0}, Lcom/android/tools/r8/internal/C40;->b(Lcom/android/tools/r8/internal/C40;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    move v0, p0

    .line 48
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 50
    invoke-static {v1}, Lcom/android/tools/r8/internal/zB;->b(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return p0

    .line 51
    :cond_0
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    .line 28
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 29
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0x7f

    if-gt v4, v5, :cond_0

    move v4, v0

    goto :goto_1

    :cond_0
    const/16 v5, 0x7ff

    if-gt v4, v5, :cond_1

    const/4 v4, 0x2

    goto :goto_1

    :cond_1
    const/4 v4, 0x3

    :goto_1
    add-int/2addr v3, v4

    .line 30
    sget-boolean v4, Lcom/android/tools/r8/graph/L2;->h:Z

    if-nez v4, :cond_3

    if-lez v3, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 31
    :cond_4
    new-array v0, v3, [B

    move v2, v1

    move v3, v2

    .line 32
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 33
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v0, v3}, Lcom/android/tools/r8/graph/L2;->a(C[BI)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 34
    :cond_5
    aput-byte v1, v0, v3

    return-object v0
.end method

.method public static e(II)Ljava/io/UTFDataFormatException;
    .locals 3

    .line 2
    new-instance v0, Ljava/io/UTFDataFormatException;

    and-int/lit16 p0, p0, 0xff

    int-to-char p0, p0

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad second byte (first: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", second: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static k(I)Ljava/io/UTFDataFormatException;
    .locals 3

    new-instance v0, Ljava/io/UTFDataFormatException;

    and-int/lit16 p0, p0, 0xff

    int-to-char p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad byte: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final R()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/android/tools/r8/graph/L2;)I
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 43
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/graph/L2;->f:[B

    aget-byte v3, v2, v1

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    .line 44
    iget-object v4, p1, Lcom/android/tools/r8/graph/L2;->f:[B

    aget-byte v5, v4, v1

    and-int/lit16 v5, v5, 0xff

    int-to-char v5, v5

    sub-int v6, v3, v5

    if-eqz v6, :cond_5

    if-eqz v3, :cond_4

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    const/16 p1, 0x80

    const/16 v0, 0xc0

    if-ne v3, v0, :cond_1

    add-int/lit8 v7, v1, 0x1

    .line 45
    aget-byte v7, v2, v7

    and-int/lit16 v7, v7, 0xff

    if-eq v7, p1, :cond_2

    :cond_1
    if-ne v5, v0, :cond_4

    add-int/lit8 v5, v1, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    if-ne v4, p1, :cond_4

    :cond_2
    const/4 v4, 0x1

    if-ne v3, v0, :cond_3

    add-int/2addr v1, v4

    .line 46
    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    if-ne v0, p1, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    return v4

    :cond_4
    :goto_1
    return v6

    :cond_5
    if-nez v3, :cond_6

    return v0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final a(Lcom/android/tools/r8/graph/L2;I)I
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/w5;)I
    .locals 0

    .line 41
    iget-object p1, p1, Lcom/android/tools/r8/graph/w5;->j:Lcom/android/tools/r8/internal/gd0;

    .line 42
    invoke-static {p0, p1}, Lcom/android/tools/r8/graph/w5;->a(Lcom/android/tools/r8/graph/d4;Lcom/android/tools/r8/internal/x1;)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/Mq0;)I
    .locals 0

    .line 3
    check-cast p1, Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/L2;->a(Lcom/android/tools/r8/graph/L2;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/pf;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/graph/L2;

    .line 2
    invoke-virtual {p2, p0, p1}, Lcom/android/tools/r8/internal/pf;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/YS;Lcom/android/tools/r8/internal/pf;)I
    .locals 0

    .line 8
    check-cast p1, Lcom/android/tools/r8/graph/L2;

    .line 9
    invoke-virtual {p2, p0, p1}, Lcom/android/tools/r8/internal/pf;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;)I

    move-result p1

    return p1
.end method

.method public final a(ILcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/L2;
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/android/tools/r8/graph/L2;->f:[B

    array-length v0, v0

    add-int/2addr v0, p1

    new-array v0, v0, [B

    const/16 v1, 0x5b

    const/4 v2, 0x0

    .line 73
    invoke-static {v0, v2, p1, v1}, Ljava/util/Arrays;->fill([BIIB)V

    .line 74
    iget-object v1, p0, Lcom/android/tools/r8/graph/L2;->f:[B

    array-length v3, v1

    invoke-static {v1, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    iget v1, p0, Lcom/android/tools/r8/graph/L2;->e:I

    add-int/2addr v1, p1

    invoke-virtual {p2, v1, v0}, Lcom/android/tools/r8/graph/u1;->a(I[B)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/L2;
    .locals 10

    .line 55
    sget-boolean v0, Lcom/android/tools/r8/graph/L2;->h:Z

    if-nez v0, :cond_1

    const-string v0, "L"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/L2;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/L2;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 56
    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/E;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    .line 57
    :cond_2
    iget v0, p1, Lcom/android/tools/r8/graph/L2;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object v0, p3, Lcom/android/tools/r8/graph/u1;->F:Lcom/android/tools/r8/graph/L2;

    .line 58
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    iget-object v0, v0, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/L2;->a([B)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    .line 60
    :goto_1
    iget v3, p2, Lcom/android/tools/r8/graph/L2;->e:I

    if-ne v3, v2, :cond_4

    iget-object v3, p3, Lcom/android/tools/r8/graph/u1;->F:Lcom/android/tools/r8/graph/L2;

    .line 61
    iget-object v3, v3, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/graph/L2;->a([B)Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v2

    goto :goto_2

    :cond_4
    move v3, v1

    :goto_2
    if-eqz v0, :cond_5

    move v4, v2

    goto :goto_3

    :cond_5
    if-eqz v3, :cond_6

    const/4 v4, -0x1

    goto :goto_3

    :cond_6
    move v4, v1

    :goto_3
    move v5, v1

    .line 62
    :goto_4
    iget-object v6, p0, Lcom/android/tools/r8/graph/L2;->f:[B

    aget-byte v7, v6, v5

    const/16 v8, 0x5b

    if-ne v7, v8, :cond_7

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 63
    :cond_7
    iget v7, p2, Lcom/android/tools/r8/graph/L2;->e:I

    iget v9, p0, Lcom/android/tools/r8/graph/L2;->e:I

    add-int/2addr v7, v9

    iget v9, p1, Lcom/android/tools/r8/graph/L2;->e:I

    sub-int/2addr v7, v9

    add-int/2addr v7, v4

    .line 64
    iget-object v9, p2, Lcom/android/tools/r8/graph/L2;->f:[B

    array-length v9, v9

    array-length v6, v6

    add-int/2addr v9, v6

    iget-object v6, p1, Lcom/android/tools/r8/graph/L2;->f:[B

    array-length v6, v6

    sub-int/2addr v9, v6

    add-int/2addr v9, v4

    new-array v4, v9, [B

    move v6, v1

    :goto_5
    if-ge v6, v5, :cond_8

    .line 65
    aput-byte v8, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 66
    :cond_8
    iget-object v6, p2, Lcom/android/tools/r8/graph/L2;->f:[B

    array-length v8, v6

    sub-int/2addr v8, v2

    invoke-static {v6, v1, v4, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    iget-object p1, p1, Lcom/android/tools/r8/graph/L2;->f:[B

    array-length p1, p1

    add-int/lit8 v1, p1, -0x1

    .line 68
    iget-object p2, p2, Lcom/android/tools/r8/graph/L2;->f:[B

    array-length p2, p2

    add-int/lit8 v2, p2, -0x1

    if-eqz v3, :cond_9

    :goto_6
    move p2, v2

    goto :goto_7

    :cond_9
    if-eqz v0, :cond_a

    const/16 p1, 0x2f

    .line 69
    aput-byte p1, v4, v2

    move p1, v1

    goto :goto_7

    :cond_a
    move p1, v1

    goto :goto_6

    .line 70
    :goto_7
    iget-object v0, p0, Lcom/android/tools/r8/graph/L2;->f:[B

    array-length v1, v0

    sub-int/2addr v1, p1

    invoke-static {v0, p1, v4, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    invoke-virtual {p3, v7, v4}, Lcom/android/tools/r8/graph/u1;->a(I[B)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 1

    .line 5
    check-cast p1, Lcom/android/tools/r8/internal/tA;

    .line 6
    iget-object p1, p1, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/nA;->a([B)V

    return-void
.end method

.method public final a([B)Z
    .locals 5

    .line 52
    iget-object v0, p0, Lcom/android/tools/r8/graph/L2;->f:[B

    array-length v1, v0

    array-length v2, p1

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    return v3

    .line 53
    :cond_0
    array-length v0, v0

    array-length v1, p1

    sub-int/2addr v0, v1

    move v1, v3

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/graph/L2;->f:[B

    array-length v4, v2

    if-ge v0, v4, :cond_2

    .line 54
    aget-byte v2, v2, v0

    aget-byte v4, p1, v1

    if-eq v2, v4, :cond_1

    return v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/L2;)I
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/L2;I)I
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/rA;)V
    .locals 1

    .line 9
    check-cast p1, Lcom/android/tools/r8/internal/tA;

    .line 10
    iget-object p1, p1, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/nA;->a([B)V

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/tools/r8/graph/L2;->e:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/K2;

    invoke-direct {v0, v2, p0}, Lcom/android/tools/r8/graph/K2;-><init>(ILcom/android/tools/r8/graph/L2;)V

    move v1, v2

    .line 3
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/K2;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4
    :try_start_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/K2;->b()C

    move-result v3
    :try_end_0
    .catch Ljava/io/UTFDataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    return v2

    .line 6
    :cond_2
    sget-boolean p1, Lcom/android/tools/r8/graph/L2;->h:Z

    if-nez p1, :cond_4

    iget p1, p0, Lcom/android/tools/r8/graph/L2;->e:I

    if-ne v1, p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final b([B)Z
    .locals 4

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/graph/L2;->f:[B

    array-length v0, v0

    array-length v1, p1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    .line 13
    :goto_0
    array-length v1, p1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_2

    .line 14
    iget-object v1, p0, Lcom/android/tools/r8/graph/L2;->f:[B

    aget-byte v1, v1, v0

    aget-byte v3, p1, v0

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public final c(Lcom/android/tools/r8/graph/L2;)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/graph/L2;->f:[B

    array-length v2, v2

    sub-int/2addr v2, v1

    iget-object v3, p1, Lcom/android/tools/r8/graph/L2;->f:[B

    array-length v3, v3

    if-lt v2, v3, :cond_2

    move v2, v0

    .line 9
    :goto_1
    iget-object v3, p1, Lcom/android/tools/r8/graph/L2;->f:[B

    array-length v4, v3

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lcom/android/tools/r8/graph/L2;->f:[B

    add-int v6, v1, v2

    aget-byte v4, v4, v6

    aget-byte v6, v3, v2

    if-ne v4, v6, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 10
    :cond_0
    array-length v3, v3

    sub-int/2addr v3, v5

    if-ne v2, v3, :cond_1

    return v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final c(Lcom/android/tools/r8/internal/C2;)Z
    .locals 2

    .line 4
    sget-object v0, Lcom/android/tools/r8/internal/C2;->F:Lcom/android/tools/r8/internal/C2;

    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/C40;->b(Lcom/android/tools/r8/internal/C40;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/L2;->f:[B

    iget v1, p0, Lcom/android/tools/r8/graph/L2;->e:I

    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/L2;->a(I[B)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {p1, v0}, Lcom/android/tools/r8/graph/L2;->a(Lcom/android/tools/r8/internal/C2;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/UTFDataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/tools/r8/graph/L2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/android/tools/r8/graph/L2;

    .line 3
    iget v0, p0, Lcom/android/tools/r8/graph/L2;->e:I

    iget v2, p1, Lcom/android/tools/r8/graph/L2;->e:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/graph/L2;->f:[B

    iget-object p1, p1, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public c(Ljava/lang/String;)Z
    .locals 0

    .line 7
    invoke-static {p1}, Lcom/android/tools/r8/graph/L2;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/L2;->b([B)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic compareTo(Lcom/android/tools/r8/internal/C40;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/L2;->a(Lcom/android/tools/r8/graph/L2;)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/L2;->a(Lcom/android/tools/r8/graph/L2;)I

    move-result p1

    return p1
.end method

.method public final d(Lcom/android/tools/r8/graph/L2;)Z
    .locals 0

    iget-object p1, p1, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/L2;->a([B)Z

    move-result p1

    return p1
.end method

.method public final e(Lcom/android/tools/r8/graph/L2;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final f(II)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    return p1
.end method

.method public final f(Lcom/android/tools/r8/graph/L2;)I
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final g(II)I
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result p1

    return p1
.end method

.method public final g(Lcom/android/tools/r8/graph/L2;)Z
    .locals 0

    .line 1
    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final h(Lcom/android/tools/r8/graph/L2;)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final i(Lcom/android/tools/r8/graph/L2;)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/graph/L2;->e:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j(Lcom/android/tools/r8/graph/L2;)Z
    .locals 0

    iget-object p1, p1, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/L2;->b([B)Z

    move-result p1

    return p1
.end method

.method public final k0()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/graph/L2;->e:I

    mul-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final l(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    return p1
.end method

.method public final l0()I
    .locals 9

    iget v0, p0, Lcom/android/tools/r8/graph/L2;->e:I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    sget-boolean v2, Lcom/android/tools/r8/graph/L2;->h:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-static {v0, v2}, Lcom/android/tools/r8/graph/L2;->a(I[B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return v1

    :cond_2
    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/android/tools/r8/graph/L2;->f:[B

    add-int/lit8 v3, v1, 0x1

    aget-byte v4, v2, v1

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    if-nez v4, :cond_5

    sget-boolean v1, Lcom/android/tools/r8/graph/L2;->h:Z

    if-nez v1, :cond_4

    iget v1, p0, Lcom/android/tools/r8/graph/L2;->e:I

    invoke-static {v1, v2}, Lcom/android/tools/r8/graph/L2;->a(I[B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    :goto_2
    return v0

    :cond_5
    const/16 v5, 0x80

    if-ge v4, v5, :cond_6

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v4

    move v1, v3

    goto :goto_1

    :cond_6
    and-int/lit16 v6, v4, 0xe0

    const/16 v7, 0xc0

    if-ne v6, v7, :cond_8

    add-int/lit8 v1, v1, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v3, v2, 0xff

    and-int/lit16 v6, v2, 0xc0

    if-ne v6, v5, :cond_7

    mul-int/lit8 v0, v0, 0x1f

    and-int/lit8 v3, v4, 0x1f

    shl-int/lit8 v3, v3, 0x6

    :goto_3
    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-char v2, v2

    add-int/2addr v0, v2

    goto :goto_1

    :cond_7
    invoke-static {v4, v3}, Lcom/android/tools/r8/graph/L2;->e(II)Ljava/io/UTFDataFormatException;

    move-result-object v0

    throw v0

    :cond_8
    and-int/lit16 v6, v4, 0xf0

    const/16 v7, 0xe0

    if-ne v6, v7, :cond_a

    add-int/lit8 v6, v1, 0x2

    aget-byte v3, v2, v3

    and-int/lit16 v7, v3, 0xff

    add-int/lit8 v1, v1, 0x3

    aget-byte v2, v2, v6

    and-int/lit16 v6, v2, 0xff

    and-int/lit16 v8, v3, 0xc0

    if-ne v8, v5, :cond_9

    and-int/lit16 v8, v2, 0xc0

    if-ne v8, v5, :cond_9

    mul-int/lit8 v0, v0, 0x1f

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0xc

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v3, v4

    goto :goto_3

    :cond_9
    invoke-static {v4, v7, v6}, Lcom/android/tools/r8/graph/L2;->a(III)Ljava/io/UTFDataFormatException;

    move-result-object v0

    throw v0

    :cond_a
    invoke-static {v4}, Lcom/android/tools/r8/graph/L2;->k(I)Ljava/io/UTFDataFormatException;

    move-result-object v0

    throw v0
.end method

.method public final m(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    return p1
.end method

.method public final m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public m0()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/graph/L2;->f:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/graph/L2;->f:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final n0()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final o0()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/graph/L2;->e:I

    return v0
.end method

.method public p0()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/L2;->f:[B

    iget v1, p0, Lcom/android/tools/r8/graph/L2;->e:I

    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/L2;->a(I[B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/zq0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UTFDataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Bad format"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/L2;->f:[B

    iget v1, p0, Lcom/android/tools/r8/graph/L2;->e:I

    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/L2;->a(I[B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UTFDataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Bad format"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
