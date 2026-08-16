.class public Loh/r;
.super Ljava/io/FilterInputStream;
.source "SourceFile"

# interfaces
.implements Loh/n0;


# instance fields
.field public final b:I

.field public final c:Z

.field public final d:[[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    invoke-static {p1}, Loh/j1;->a(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Loh/r;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Loh/r;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .locals 1

    const/16 v0, 0xb

    .line 3
    new-array v0, v0, [[B

    invoke-direct {p0, p1, p2, p3, v0}, Loh/r;-><init>(Ljava/io/InputStream;IZ[[B)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ[[B)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput p2, p0, Loh/r;->b:I

    iput-boolean p3, p0, Loh/r;->c:Z

    iput-object p4, p0, Loh/r;->d:[[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1

    .line 5
    invoke-static {p1}, Loh/j1;->a(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Loh/r;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 6
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    invoke-direct {p0, v0, p1}, Loh/r;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 1

    .line 7
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    invoke-direct {p0, v0, p1, p2}, Loh/r;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method public static d(ILoh/b1;[[B)Loh/B;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, " encountered"

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    :try_start_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown tag "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p0

    goto/16 :goto_0

    :catch_1
    move-exception p0

    goto/16 :goto_1

    :pswitch_1
    invoke-static {p1}, Loh/r;->e(Loh/b1;)[C

    move-result-object p0

    invoke-static {p0}, Loh/b;->F([C)Loh/b;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p1}, Loh/b1;->g()[B

    move-result-object p0

    invoke-static {p0}, Loh/S;->E([B)Loh/S;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p1}, Loh/b1;->g()[B

    move-result-object p0

    invoke-static {p0}, Loh/m;->E([B)Loh/m;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p1}, Loh/b1;->g()[B

    move-result-object p0

    invoke-static {p0}, Loh/X;->E([B)Loh/X;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p1}, Loh/b1;->g()[B

    move-result-object p0

    invoke-static {p0}, Loh/p;->E([B)Loh/p;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p1}, Loh/b1;->g()[B

    move-result-object p0

    invoke-static {p0}, Loh/n;->H([B)Loh/n;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p1}, Loh/b1;->g()[B

    move-result-object p0

    invoke-static {p0}, Loh/P;->E([B)Loh/P;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p1}, Loh/b1;->g()[B

    move-result-object p0

    invoke-static {p0}, Loh/q;->E([B)Loh/q;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-virtual {p1}, Loh/b1;->g()[B

    move-result-object p0

    invoke-static {p0}, Loh/W;->E([B)Loh/W;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-virtual {p1}, Loh/b1;->g()[B

    move-result-object p0

    invoke-static {p0}, Loh/K;->E([B)Loh/K;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-virtual {p1}, Loh/b1;->g()[B

    move-result-object p0

    invoke-static {p0}, Loh/C;->E([B)Loh/C;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-virtual {p1}, Loh/b1;->g()[B

    move-result-object p0

    invoke-static {p0}, Loh/u;->E([B)Loh/u;

    move-result-object p0

    return-object p0

    :pswitch_d
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported tag "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_e
    invoke-virtual {p1}, Loh/b1;->e()I

    move-result p0

    invoke-static {p0}, Loh/D;->F(I)V

    invoke-static {p1, p2}, Loh/r;->f(Loh/b1;[[B)[B

    move-result-object p0

    invoke-static {p0, v1}, Loh/D;->H([BZ)Loh/D;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-virtual {p1}, Loh/b1;->g()[B

    move-result-object p0

    invoke-static {p0}, Loh/Q;->E([B)Loh/Q;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-static {p1, p2}, Loh/r;->f(Loh/b1;[[B)[B

    move-result-object p0

    invoke-static {p0, v1}, Loh/j;->E([BZ)Loh/j;

    move-result-object p0

    return-object p0

    :pswitch_11
    invoke-virtual {p1}, Loh/b1;->g()[B

    move-result-object p0

    invoke-static {p0}, Loh/w;->E([B)Loh/w;

    move-result-object p0

    return-object p0

    :pswitch_12
    invoke-virtual {p1}, Loh/b1;->e()I

    move-result p0

    invoke-static {p0}, Loh/x;->F(I)V

    invoke-static {p1, p2}, Loh/r;->f(Loh/b1;[[B)[B

    move-result-object p0

    invoke-static {p0, v1}, Loh/x;->H([BZ)Loh/x;

    move-result-object p0

    return-object p0

    :pswitch_13
    invoke-virtual {p1}, Loh/b1;->g()[B

    move-result-object p0

    invoke-static {p0}, Loh/t;->E([B)Loh/t;

    move-result-object p0

    return-object p0

    :pswitch_14
    invoke-virtual {p1}, Loh/b1;->g()[B

    move-result-object p0

    invoke-static {p0}, Loh/y;->E([B)Loh/y;

    move-result-object p0

    return-object p0

    :pswitch_15
    invoke-virtual {p1}, Loh/b1;->g()[B

    move-result-object p0

    invoke-static {p0}, Loh/c;->E([B)Loh/c;

    move-result-object p0

    return-object p0

    :pswitch_16
    invoke-virtual {p1}, Loh/b1;->g()[B

    move-result-object p0

    invoke-static {p0}, Loh/s;->E([B)Loh/s;

    move-result-object p0

    return-object p0

    :pswitch_17
    invoke-static {p1, p2}, Loh/r;->f(Loh/b1;[[B)[B

    move-result-object p0

    invoke-static {p0}, Loh/e;->E([B)Loh/e;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    new-instance p1, Lorg/bouncycastle/asn1/ASN1Exception;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :goto_1
    new-instance p1, Lorg/bouncycastle/asn1/ASN1Exception;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method public static e(Loh/b1;)[C
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Loh/b1;->e()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_6

    div-int/lit8 v1, v0, 0x2

    new-array v2, v1, [C

    const/16 v3, 0x8

    new-array v4, v3, [B

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const-string v7, "EOF encountered in middle of BMPString"

    const/4 v8, 0x2

    if-lt v0, v3, :cond_1

    invoke-static {p0, v4, v5, v3}, Lfm/d;->h(Ljava/io/InputStream;[BII)I

    move-result v9

    if-ne v9, v3, :cond_0

    aget-byte v7, v4, v5

    shl-int/2addr v7, v3

    const/4 v9, 0x1

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v7, v9

    int-to-char v7, v7

    aput-char v7, v2, v6

    add-int/lit8 v7, v6, 0x1

    aget-byte v8, v4, v8

    shl-int/2addr v8, v3

    const/4 v9, 0x3

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v2, v7

    add-int/lit8 v7, v6, 0x2

    const/4 v8, 0x4

    aget-byte v8, v4, v8

    shl-int/2addr v8, v3

    const/4 v9, 0x5

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v2, v7

    add-int/lit8 v7, v6, 0x3

    const/4 v8, 0x6

    aget-byte v8, v4, v8

    shl-int/2addr v8, v3

    const/4 v9, 0x7

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v2, v7

    add-int/lit8 v6, v6, 0x4

    add-int/lit8 v0, v0, -0x8

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0, v7}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-lez v0, :cond_4

    invoke-static {p0, v4, v5, v0}, Lfm/d;->h(Ljava/io/InputStream;[BII)I

    move-result v9

    if-ne v9, v0, :cond_3

    :cond_2
    add-int/lit8 v7, v5, 0x1

    aget-byte v9, v4, v5

    shl-int/2addr v9, v3

    add-int/2addr v5, v8

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v10, v6, 0x1

    or-int/2addr v7, v9

    int-to-char v7, v7

    aput-char v7, v2, v6

    move v6, v10

    if-lt v5, v0, :cond_2

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0, v7}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    invoke-virtual {p0}, Loh/b1;->e()I

    move-result p0

    if-nez p0, :cond_5

    if-ne v1, v6, :cond_5

    return-object v2

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string v0, "malformed BMPString encoding encountered"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Loh/b1;[[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Loh/b1;->e()I

    move-result v0

    array-length v1, p1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Loh/b1;->g()[B

    move-result-object p0

    return-object p0

    :cond_0
    aget-object v1, p1, v0

    if-nez v1, :cond_1

    new-array v1, v0, [B

    aput-object v1, p1, v0

    :cond_1
    invoke-virtual {p0, v1}, Loh/b1;->f([B)V

    return-object v1
.end method

.method public static j(Ljava/io/InputStream;IZ)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x80

    if-ne v1, v0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    if-ltz v0, :cond_8

    const/16 v1, 0xff

    if-eq v1, v0, :cond_7

    and-int/lit8 v0, v0, 0x7f

    const/4 v1, 0x0

    move v2, v1

    :cond_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    if-ltz v3, :cond_6

    ushr-int/lit8 v4, v1, 0x17

    if-nez v4, :cond_5

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_2

    if-lt v1, p1, :cond_4

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "corrupted stream - out of bounds length found: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " >= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    return v1

    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string p1, "long form definite-length more than 31 bits"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "EOF found reading length"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string p1, "invalid long form definite-length 0xFF"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "EOF found when length expected"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static l(Ljava/io/InputStream;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1f

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p1

    const-string v1, "EOF found inside tag value."

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_0

    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "corrupted stream - high tag number < 31 found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    and-int/lit8 v0, p1, 0x7f

    if-eqz v0, :cond_5

    :goto_0
    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_4

    ushr-int/lit8 p1, v0, 0x18

    if-nez p1, :cond_3

    shl-int/lit8 p1, v0, 0x7

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_2

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr p1, v2

    move v3, v0

    move v0, p1

    move p1, v3

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Tag number more than 31 bits"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    move p1, v0

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string p1, "corrupted stream - invalid high tag number found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    return p1
.end method


# virtual methods
.method public a(Loh/h;)Loh/c;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Loh/h;->i()I

    move-result v0

    new-array v1, v0, [Loh/c;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_1

    invoke-virtual {p1, v2}, Loh/h;->g(I)Loh/g;

    move-result-object v3

    instance-of v4, v3, Loh/c;

    if-eqz v4, :cond_0

    check-cast v3, Loh/c;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/asn1/ASN1Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown object encountered in constructed BIT STRING: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Loh/Y;

    invoke-direct {p1, v1}, Loh/Y;-><init>([Loh/c;)V

    return-object p1
.end method

.method public b(Loh/h;)Loh/y;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Loh/h;->i()I

    move-result v0

    new-array v1, v0, [Loh/y;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_1

    invoke-virtual {p1, v2}, Loh/h;->g(I)Loh/g;

    move-result-object v3

    instance-of v4, v3, Loh/y;

    if-eqz v4, :cond_0

    check-cast v3, Loh/y;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/asn1/ASN1Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown object encountered in constructed OCTET STRING: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Loh/c0;

    invoke-direct {p1, v1}, Loh/c0;-><init>([Loh/y;)V

    return-object p1
.end method

.method public c(III)Loh/B;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Loh/b1;

    iget v1, p0, Loh/r;->b:I

    invoke-direct {v0, p0, p3, v1}, Loh/b1;-><init>(Ljava/io/InputStream;II)V

    and-int/lit16 p3, p1, 0xe0

    if-nez p3, :cond_0

    iget-object p1, p0, Loh/r;->d:[[B

    invoke-static {p2, v0, p1}, Loh/r;->d(ILoh/b1;[[B)Loh/B;

    move-result-object p1

    return-object p1

    :cond_0
    and-int/lit16 p3, p1, 0xc0

    const/4 v1, 0x1

    if-eqz p3, :cond_2

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p3, p2, v1, v0}, Loh/r;->m(IIZLoh/b1;)Loh/B;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x3

    if-eq p2, p1, :cond_9

    const/4 p1, 0x4

    if-eq p2, p1, :cond_8

    const/16 p1, 0x8

    if-eq p2, p1, :cond_7

    const/16 p1, 0x10

    if-eq p2, p1, :cond_4

    const/16 p1, 0x11

    if-ne p2, p1, :cond_3

    invoke-virtual {p0, v0}, Loh/r;->o(Loh/b1;)Loh/h;

    move-result-object p1

    invoke-static {p1}, Loh/T0;->b(Loh/h;)Loh/X0;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown tag "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " encountered"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-virtual {v0}, Loh/b1;->e()I

    move-result p1

    if-ge p1, v1, :cond_5

    sget-object p1, Loh/T0;->a:Loh/V0;

    return-object p1

    :cond_5
    iget-boolean p1, p0, Loh/r;->c:Z

    if-eqz p1, :cond_6

    new-instance p1, Loh/f1;

    invoke-virtual {v0}, Loh/b1;->g()[B

    move-result-object p2

    invoke-direct {p1, p2}, Loh/f1;-><init>([B)V

    return-object p1

    :cond_6
    invoke-virtual {p0, v0}, Loh/r;->o(Loh/b1;)Loh/h;

    move-result-object p1

    invoke-static {p1}, Loh/T0;->a(Loh/h;)Loh/V0;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-virtual {p0, v0}, Loh/r;->o(Loh/b1;)Loh/h;

    move-result-object p1

    invoke-static {p1}, Loh/T0;->a(Loh/h;)Loh/V0;

    move-result-object p1

    invoke-virtual {p1}, Loh/V0;->N()Loh/k;

    move-result-object p1

    return-object p1

    :cond_8
    invoke-virtual {p0, v0}, Loh/r;->o(Loh/b1;)Loh/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Loh/r;->b(Loh/h;)Loh/y;

    move-result-object p1

    return-object p1

    :cond_9
    invoke-virtual {p0, v0}, Loh/r;->o(Loh/b1;)Loh/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Loh/r;->a(Loh/h;)Loh/c;

    move-result-object p1

    return-object p1
.end method

.method public g()I
    .locals 1

    iget v0, p0, Loh/r;->b:I

    return v0
.end method

.method public h()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Loh/r;->b:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Loh/r;->j(Ljava/io/InputStream;IZ)I

    move-result v0

    return v0
.end method

.method public k()Loh/B;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gtz v0, :cond_1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected end-of-contents marker"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0, v0}, Loh/r;->l(Ljava/io/InputStream;I)I

    move-result v1

    invoke-virtual {p0}, Loh/r;->h()I

    move-result v2

    if-ltz v2, :cond_2

    :try_start_0
    invoke-virtual {p0, v0, v1, v2}, Loh/r;->c(III)Loh/B;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Exception;

    const-string v2, "corrupted stream detected"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_9

    new-instance v2, Loh/d1;

    iget v3, p0, Loh/r;->b:I

    invoke-direct {v2, p0, v3}, Loh/d1;-><init>(Ljava/io/InputStream;I)V

    new-instance v3, Loh/I;

    iget v4, p0, Loh/r;->b:I

    iget-object v5, p0, Loh/r;->d:[[B

    invoke-direct {v3, v2, v4, v5}, Loh/I;-><init>(Ljava/io/InputStream;I[[B)V

    and-int/lit16 v0, v0, 0xc0

    if-eqz v0, :cond_3

    invoke-virtual {v3, v0, v1}, Loh/I;->c(II)Loh/B;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x3

    if-eq v1, v0, :cond_8

    const/4 v0, 0x4

    if-eq v1, v0, :cond_7

    const/16 v0, 0x8

    if-eq v1, v0, :cond_6

    const/16 v0, 0x10

    if-eq v1, v0, :cond_5

    const/16 v0, 0x11

    if-ne v1, v0, :cond_4

    invoke-static {v3}, Loh/k0;->e(Loh/I;)Loh/j0;

    move-result-object v0

    return-object v0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unknown BER object encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-static {v3}, Loh/i0;->e(Loh/I;)Loh/g0;

    move-result-object v0

    return-object v0

    :cond_6
    invoke-static {v3}, Loh/t0;->e(Loh/I;)Loh/S0;

    move-result-object v0

    return-object v0

    :cond_7
    invoke-static {v3}, Loh/e0;->e(Loh/I;)Loh/c0;

    move-result-object v0

    return-object v0

    :cond_8
    invoke-static {v3}, Loh/Z;->e(Loh/I;)Loh/Y;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "indefinite-length primitive encoding encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public m(IIZLoh/b1;)Loh/B;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    invoke-virtual {p4}, Loh/b1;->g()[B

    move-result-object p3

    invoke-static {p1, p2, p3}, Loh/M;->J(II[B)Loh/B;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p4}, Loh/r;->o(Loh/b1;)Loh/h;

    move-result-object p3

    invoke-static {p1, p2, p3}, Loh/M;->H(IILoh/h;)Loh/B;

    move-result-object p1

    return-object p1
.end method

.method public n()Loh/h;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Loh/r;->k()Loh/B;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Loh/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    return-object v0

    :cond_0
    new-instance v1, Loh/h;

    invoke-direct {v1}, Loh/h;-><init>()V

    :cond_1
    invoke-virtual {v1, v0}, Loh/h;->a(Loh/g;)V

    invoke-virtual {p0}, Loh/r;->k()Loh/B;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1
.end method

.method public o(Loh/b1;)Loh/h;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Loh/b1;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    new-instance p1, Loh/h;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Loh/h;-><init>(I)V

    return-object p1

    :cond_0
    new-instance v1, Loh/r;

    iget-boolean v2, p0, Loh/r;->c:Z

    iget-object v3, p0, Loh/r;->d:[[B

    invoke-direct {v1, p1, v0, v2, v3}, Loh/r;-><init>(Ljava/io/InputStream;IZ[[B)V

    invoke-virtual {v1}, Loh/r;->n()Loh/h;

    move-result-object p1

    return-object p1
.end method

.method public readFully([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lfm/d;->h(Ljava/io/InputStream;[BII)I

    move-result v0

    array-length p1, p1

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "EOF encountered in middle of object"

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
