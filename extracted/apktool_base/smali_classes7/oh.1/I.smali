.class public Loh/I;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/InputStream;

.field public final b:I

.field public final c:[[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    invoke-static {p1}, Loh/j1;->a(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Loh/I;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    const/16 v0, 0xb

    .line 2
    new-array v0, v0, [[B

    invoke-direct {p0, p1, p2, v0}, Loh/I;-><init>(Ljava/io/InputStream;I[[B)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I[[B)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loh/I;->a:Ljava/io/InputStream;

    iput p2, p0, Loh/I;->b:I

    iput-object p3, p0, Loh/I;->c:[[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 4
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    invoke-direct {p0, v0, p1}, Loh/I;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method


# virtual methods
.method public a(I)Loh/g;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Loh/I;->l(Z)V

    iget-object v1, p0, Loh/I;->a:Ljava/io/InputStream;

    invoke-static {v1, p1}, Loh/r;->l(Ljava/io/InputStream;I)I

    move-result v1

    iget-object v2, p0, Loh/I;->a:Ljava/io/InputStream;

    iget v3, p0, Loh/I;->b:I

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v1, v4, :cond_1

    const/4 v4, 0x4

    if-eq v1, v4, :cond_1

    const/16 v4, 0x10

    if-eq v1, v4, :cond_1

    const/16 v4, 0x11

    if-eq v1, v4, :cond_1

    const/16 v4, 0x8

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v5

    :goto_1
    invoke-static {v2, v3, v4}, Loh/r;->j(Ljava/io/InputStream;IZ)I

    move-result v2

    if-gez v2, :cond_4

    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_3

    new-instance v0, Loh/d1;

    iget-object v2, p0, Loh/I;->a:Ljava/io/InputStream;

    iget v3, p0, Loh/I;->b:I

    invoke-direct {v0, v2, v3}, Loh/d1;-><init>(Ljava/io/InputStream;I)V

    new-instance v2, Loh/I;

    iget v3, p0, Loh/I;->b:I

    iget-object v4, p0, Loh/I;->c:[[B

    invoke-direct {v2, v0, v3, v4}, Loh/I;-><init>(Ljava/io/InputStream;I[[B)V

    and-int/lit16 p1, p1, 0xc0

    if-eqz p1, :cond_2

    new-instance v0, Loh/m0;

    invoke-direct {v0, p1, v1, v2}, Loh/m0;-><init>(IILoh/I;)V

    return-object v0

    :cond_2
    invoke-virtual {v2, v1}, Loh/I;->e(I)Loh/g;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "indefinite-length primitive encoding encountered"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance v3, Loh/b1;

    iget-object v4, p0, Loh/I;->a:Ljava/io/InputStream;

    iget v6, p0, Loh/I;->b:I

    invoke-direct {v3, v4, v2, v6}, Loh/b1;-><init>(Ljava/io/InputStream;II)V

    and-int/lit16 v2, p1, 0xe0

    if-nez v2, :cond_5

    invoke-virtual {p0, v1, v3}, Loh/I;->g(ILoh/b1;)Loh/g;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance v2, Loh/I;

    invoke-virtual {v3}, Loh/g1;->c()I

    move-result v4

    iget-object v6, p0, Loh/I;->c:[[B

    invoke-direct {v2, v3, v4, v6}, Loh/I;-><init>(Ljava/io/InputStream;I[[B)V

    and-int/lit16 v3, p1, 0xc0

    if-eqz v3, :cond_7

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_6

    move v0, v5

    :cond_6
    new-instance p1, Loh/a1;

    invoke-direct {p1, v3, v1, v0, v2}, Loh/a1;-><init>(IIZLoh/I;)V

    return-object p1

    :cond_7
    invoke-virtual {v2, v1}, Loh/I;->d(I)Loh/g;

    move-result-object p1

    return-object p1
.end method

.method public b(IIZ)Loh/B;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    iget-object p3, p0, Loh/I;->a:Ljava/io/InputStream;

    check-cast p3, Loh/b1;

    invoke-virtual {p3}, Loh/b1;->g()[B

    move-result-object p3

    invoke-static {p1, p2, p3}, Loh/M;->J(II[B)Loh/B;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Loh/I;->k()Loh/h;

    move-result-object p3

    invoke-static {p1, p2, p3}, Loh/M;->H(IILoh/h;)Loh/B;

    move-result-object p1

    return-object p1
.end method

.method public c(II)Loh/B;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Loh/I;->k()Loh/h;

    move-result-object v0

    invoke-static {p1, p2, v0}, Loh/M;->I(IILoh/h;)Loh/B;

    move-result-object p1

    return-object p1
.end method

.method public d(I)Loh/g;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    new-instance p1, Loh/Y0;

    invoke-direct {p1, p0}, Loh/Y0;-><init>(Loh/I;)V

    return-object p1

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown DL object encountered: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Loh/W0;

    invoke-direct {p1, p0}, Loh/W0;-><init>(Loh/I;)V

    return-object p1

    :cond_2
    new-instance p1, Loh/t0;

    invoke-direct {p1, p0}, Loh/t0;-><init>(Loh/I;)V

    return-object p1

    :cond_3
    new-instance p1, Loh/e0;

    invoke-direct {p1, p0}, Loh/e0;-><init>(Loh/I;)V

    return-object p1

    :cond_4
    new-instance p1, Loh/Z;

    invoke-direct {p1, p0}, Loh/Z;-><init>(Loh/I;)V

    return-object p1
.end method

.method public e(I)Loh/g;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    new-instance p1, Loh/k0;

    invoke-direct {p1, p0}, Loh/k0;-><init>(Loh/I;)V

    return-object p1

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown BER object encountered: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Loh/i0;

    invoke-direct {p1, p0}, Loh/i0;-><init>(Loh/I;)V

    return-object p1

    :cond_2
    new-instance p1, Loh/t0;

    invoke-direct {p1, p0}, Loh/t0;-><init>(Loh/I;)V

    return-object p1

    :cond_3
    new-instance p1, Loh/e0;

    invoke-direct {p1, p0}, Loh/e0;-><init>(Loh/I;)V

    return-object p1

    :cond_4
    new-instance p1, Loh/Z;

    invoke-direct {p1, p0}, Loh/Z;-><init>(Loh/I;)V

    return-object p1
.end method

.method public f(I)Loh/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Loh/I;->a:Ljava/io/InputStream;

    check-cast v0, Loh/b1;

    invoke-virtual {p0, p1, v0}, Loh/I;->g(ILoh/b1;)Loh/g;

    move-result-object p1

    return-object p1
.end method

.method public g(ILoh/b1;)Loh/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Loh/I;->c:[[B

    invoke-static {p1, p2, v0}, Loh/r;->d(ILoh/b1;[[B)Loh/B;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/asn1/ASN1Exception;

    const-string v0, "corrupted stream detected"

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    new-instance p1, Lorg/bouncycastle/asn1/ASN1Exception;

    const-string p2, "sequences must use constructed encoding (see X.690 8.9.1/8.10.1)"

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/asn1/ASN1Exception;

    const-string p2, "sets must use constructed encoding (see X.690 8.11.1/8.12.1)"

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/bouncycastle/asn1/ASN1Exception;

    const-string p2, "externals must use constructed encoding (see X.690 8.18)"

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Loh/D0;

    invoke-direct {p1, p2}, Loh/D0;-><init>(Loh/b1;)V

    return-object p1

    :cond_4
    new-instance p1, Loh/R0;

    invoke-direct {p1, p2}, Loh/R0;-><init>(Loh/b1;)V

    return-object p1
.end method

.method public h(I)Loh/g;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_2

    const/16 v0, 0x1e

    if-gt p1, v0, :cond_2

    iget-object v0, p0, Loh/I;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    and-int/lit8 v1, v0, -0x21

    if-ne v1, p1, :cond_1

    invoke-virtual {p0, v0}, Loh/I;->a(I)Loh/g;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected identifier encountered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid universal tag number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()Loh/N;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Loh/I;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    and-int/lit16 v1, v0, 0xc0

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Loh/I;->a(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/N;

    return-object v0

    :cond_1
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Exception;

    const-string v1, "no tagged object found"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j()Loh/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Loh/I;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Loh/I;->a(I)Loh/g;

    move-result-object v0

    return-object v0
.end method

.method public k()Loh/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Loh/I;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Loh/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    return-object v0

    :cond_0
    new-instance v1, Loh/h;

    invoke-direct {v1}, Loh/h;-><init>()V

    :cond_1
    invoke-virtual {p0, v0}, Loh/I;->a(I)Loh/g;

    move-result-object v0

    instance-of v2, v0, Loh/c1;

    if-eqz v2, :cond_2

    check-cast v0, Loh/c1;

    invoke-interface {v0}, Loh/c1;->c()Loh/B;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Loh/h;->a(Loh/g;)V

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Loh/I;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_1

    return-object v1
.end method

.method public final l(Z)V
    .locals 2

    iget-object v0, p0, Loh/I;->a:Ljava/io/InputStream;

    instance-of v1, v0, Loh/d1;

    if-eqz v1, :cond_0

    check-cast v0, Loh/d1;

    invoke-virtual {v0, p1}, Loh/d1;->f(Z)V

    :cond_0
    return-void
.end method
