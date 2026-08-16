.class public Lvg/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvg/d;


# instance fields
.field public a:Lxg/a;

.field public b:Lwg/b;

.field public c:I

.field public d:[B

.field public e:[B


# direct methods
.method public constructor <init>(LBg/a;[C[B[BZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lvg/a;->c:I

    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lvg/a;->d:[B

    new-array v0, v0, [B

    iput-object v0, p0, Lvg/a;->e:[B

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p2

    move-object v4, p1

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lvg/a;->c([B[B[CLBg/a;Z)V

    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_2

    add-int/lit8 v2, v0, 0x10

    if-gt v2, v1, :cond_0

    const/16 v1, 0x10

    goto :goto_1

    :cond_0
    sub-int/2addr v1, v0

    :goto_1
    iget-object v3, p0, Lvg/a;->b:Lwg/b;

    invoke-virtual {v3, p1, v0, v1}, Lwg/b;->h([BII)V

    iget-object v3, p0, Lvg/a;->d:[B

    iget v4, p0, Lvg/a;->c:I

    invoke-static {v3, v4}, Lvg/c;->e([BI)V

    iget-object v3, p0, Lvg/a;->a:Lxg/a;

    iget-object v4, p0, Lvg/a;->d:[B

    iget-object v5, p0, Lvg/a;->e:[B

    invoke-virtual {v3, v4, v5}, Lxg/a;->e([B[B)I

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_1

    add-int v4, v0, v3

    aget-byte v5, p1, v4

    iget-object v6, p0, Lvg/a;->e:[B

    aget-byte v6, v6, v3

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    iget v0, p0, Lvg/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lvg/a;->c:I

    move v0, v2

    goto :goto_0

    :cond_2
    return p3
.end method

.method public b(I)[B
    .locals 1

    iget-object v0, p0, Lvg/a;->b:Lwg/b;

    invoke-virtual {v0, p1}, Lwg/b;->e(I)[B

    move-result-object p1

    return-object p1
.end method

.method public final c([B[B[CLBg/a;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p3, :cond_1

    array-length v0, p3

    if-lez v0, :cond_1

    invoke-virtual {p4}, LBg/a;->c()LCg/a;

    move-result-object p4

    invoke-static {p1, p3, p4, p5}, Lvg/c;->a([B[CLCg/a;Z)[B

    move-result-object p1

    invoke-static {p1, p4}, Lvg/c;->b([BLCg/a;)[B

    move-result-object p3

    invoke-static {p2, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1, p4}, Lvg/c;->c([BLCg/a;)Lxg/a;

    move-result-object p2

    iput-object p2, p0, Lvg/a;->a:Lxg/a;

    invoke-static {p1, p4}, Lvg/c;->d([BLCg/a;)Lwg/b;

    move-result-object p1

    iput-object p1, p0, Lvg/a;->b:Lwg/b;

    return-void

    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Wrong Password"

    sget-object p3, Lnet/lingala/zip4j/exception/ZipException$a;->WRONG_PASSWORD:Lnet/lingala/zip4j/exception/ZipException$a;

    invoke-direct {p1, p2, p3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$a;)V

    throw p1

    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "empty or null password provided for AES decryption"

    sget-object p3, Lnet/lingala/zip4j/exception/ZipException$a;->WRONG_PASSWORD:Lnet/lingala/zip4j/exception/ZipException$a;

    invoke-direct {p1, p2, p3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$a;)V

    throw p1
.end method
