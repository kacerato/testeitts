.class public Lli/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lhi/u0;

.field public b:Lhi/D;


# direct methods
.method public constructor <init>(Lfi/d;Ljava/math/BigInteger;Lhi/o0;Lhi/o0;Lfi/d;Lhi/h0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lhi/u0;

    invoke-direct {v0}, Lhi/u0;-><init>()V

    iput-object v0, p0, Lli/n;->a:Lhi/u0;

    new-instance v1, Loh/s;

    invoke-direct {v1, p2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lhi/u0;->k(Loh/s;)V

    iget-object p2, p0, Lli/n;->a:Lhi/u0;

    invoke-virtual {p2, p1}, Lhi/u0;->h(Lfi/d;)V

    iget-object p1, p0, Lli/n;->a:Lhi/u0;

    invoke-virtual {p1, p3}, Lhi/u0;->m(Lhi/o0;)V

    iget-object p1, p0, Lli/n;->a:Lhi/u0;

    invoke-virtual {p1, p4}, Lhi/u0;->d(Lhi/o0;)V

    iget-object p1, p0, Lli/n;->a:Lhi/u0;

    invoke-virtual {p1, p5}, Lhi/u0;->o(Lfi/d;)V

    iget-object p1, p0, Lli/n;->a:Lhi/u0;

    invoke-virtual {p1, p6}, Lhi/u0;->q(Lhi/h0;)V

    new-instance p1, Lhi/D;

    invoke-direct {p1}, Lhi/D;-><init>()V

    iput-object p1, p0, Lli/n;->b:Lhi/D;

    return-void
.end method

.method public constructor <init>(Lfi/d;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lfi/d;Lhi/h0;)V
    .locals 7

    .line 2
    new-instance v3, Lhi/o0;

    invoke-direct {v3, p3}, Lhi/o0;-><init>(Ljava/util/Date;)V

    new-instance v4, Lhi/o0;

    invoke-direct {v4, p4}, Lhi/o0;-><init>(Ljava/util/Date;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lli/n;-><init>(Lfi/d;Ljava/math/BigInteger;Lhi/o0;Lhi/o0;Lfi/d;Lhi/h0;)V

    return-void
.end method

.method public constructor <init>(Lfi/d;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Ljava/util/Locale;Lfi/d;Lhi/h0;)V
    .locals 7

    .line 3
    new-instance v3, Lhi/o0;

    invoke-direct {v3, p3, p5}, Lhi/o0;-><init>(Ljava/util/Date;Ljava/util/Locale;)V

    new-instance v4, Lhi/o0;

    invoke-direct {v4, p4, p5}, Lhi/o0;-><init>(Ljava/util/Date;Ljava/util/Locale;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lli/n;-><init>(Lfi/d;Ljava/math/BigInteger;Lhi/o0;Lhi/o0;Lfi/d;Lhi/h0;)V

    return-void
.end method

.method public constructor <init>(Lli/h;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lhi/u0;

    invoke-direct {v0}, Lhi/u0;-><init>()V

    iput-object v0, p0, Lli/n;->a:Lhi/u0;

    new-instance v1, Loh/s;

    invoke-virtual {p1}, Lli/h;->i()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lhi/u0;->k(Loh/s;)V

    iget-object v0, p0, Lli/n;->a:Lhi/u0;

    invoke-virtual {p1}, Lli/h;->e()Lfi/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhi/u0;->h(Lfi/d;)V

    iget-object v0, p0, Lli/n;->a:Lhi/u0;

    new-instance v1, Lhi/o0;

    invoke-virtual {p1}, Lli/h;->h()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v1, v2}, Lhi/o0;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lhi/u0;->m(Lhi/o0;)V

    iget-object v0, p0, Lli/n;->a:Lhi/u0;

    new-instance v1, Lhi/o0;

    invoke-virtual {p1}, Lli/h;->g()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v1, v2}, Lhi/o0;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lhi/u0;->d(Lhi/o0;)V

    iget-object v0, p0, Lli/n;->a:Lhi/u0;

    invoke-virtual {p1}, Lli/h;->l()Lfi/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhi/u0;->o(Lfi/d;)V

    iget-object v0, p0, Lli/n;->a:Lhi/u0;

    invoke-virtual {p1}, Lli/h;->m()Lhi/h0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhi/u0;->q(Lhi/h0;)V

    new-instance v0, Lhi/D;

    invoke-direct {v0}, Lhi/D;-><init>()V

    iput-object v0, p0, Lli/n;->b:Lhi/D;

    invoke-virtual {p1}, Lli/h;->d()Lhi/C;

    move-result-object p1

    invoke-virtual {p1}, Lhi/C;->F()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loh/x;

    sget-object v2, Lhi/B;->K:Loh/x;

    invoke-virtual {v2, v1}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lhi/B;->L:Loh/x;

    invoke-virtual {v2, v1}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lhi/B;->M:Loh/x;

    invoke-virtual {v2, v1}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lli/n;->b:Lhi/D;

    invoke-virtual {p1, v1}, Lhi/C;->x(Loh/x;)Lhi/B;

    move-result-object v1

    invoke-virtual {v2, v1}, Lhi/D;->a(Lhi/B;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static d([Z)Loh/r0;
    .locals 7

    array-length v0, p0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-eq v2, v3, :cond_1

    div-int/lit8 v3, v2, 0x8

    aget-byte v4, v0, v3

    aget-boolean v5, p0, v2

    if-eqz v5, :cond_0

    rem-int/lit8 v5, v2, 0x8

    rsub-int/lit8 v5, v5, 0x7

    const/4 v6, 0x1

    shl-int v5, v6, v5

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    array-length p0, p0

    rem-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_2

    new-instance p0, Loh/r0;

    invoke-direct {p0, v0}, Loh/r0;-><init>([B)V

    return-object p0

    :cond_2
    new-instance v1, Loh/r0;

    rsub-int/lit8 p0, p0, 0x8

    invoke-direct {v1, v0, p0}, Loh/r0;-><init>([BI)V

    return-object v1
.end method

.method public static i(LQk/f;Loh/v;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, LQk/f;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {p1, v0, v1}, Loh/v;->f(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    invoke-interface {p0}, LQk/f;->getSignature()[B

    move-result-object p0

    return-object p0
.end method

.method public static j(Lhi/j0;Lhi/b;[B)Lhi/q;
    .locals 1

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    invoke-virtual {v0, p0}, Loh/h;->a(Loh/g;)V

    invoke-virtual {v0, p1}, Loh/h;->a(Loh/g;)V

    new-instance p0, Loh/r0;

    invoke-direct {p0, p2}, Loh/r0;-><init>([B)V

    invoke-virtual {v0, p0}, Loh/h;->a(Loh/g;)V

    new-instance p0, Loh/G0;

    invoke-direct {p0, v0}, Loh/G0;-><init>(Loh/h;)V

    invoke-static {p0}, Lhi/q;->v(Ljava/lang/Object;)Lhi/q;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lhi/B;)Lli/n;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/CertIOException;
        }
    .end annotation

    iget-object v0, p0, Lli/n;->b:Lhi/D;

    invoke-virtual {v0, p1}, Lhi/D;->a(Lhi/B;)V

    return-object p0
.end method

.method public b(Loh/x;ZLoh/g;)Lli/n;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/CertIOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lli/n;->b:Lhi/D;

    invoke-virtual {v0, p1, p2, p3}, Lhi/D;->c(Loh/x;ZLoh/g;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cert/CertIOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot encode extension: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public c(Loh/x;Z[B)Lli/n;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/CertIOException;
        }
    .end annotation

    iget-object v0, p0, Lli/n;->b:Lhi/D;

    invoke-virtual {v0, p1, p2, p3}, Lhi/D;->d(Loh/x;Z[B)V

    return-object p0
.end method

.method public e(LQk/f;)Lli/h;
    .locals 6

    iget-object v0, p0, Lli/n;->a:Lhi/u0;

    invoke-interface {p1}, LQk/f;->a()Lhi/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhi/u0;->l(Lhi/b;)V

    iget-object v0, p0, Lli/n;->b:Lhi/D;

    invoke-virtual {v0}, Lhi/D;->h()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lli/n;->b:Lhi/D;

    sget-object v1, Lhi/B;->N:Loh/x;

    invoke-virtual {v0, v1}, Lhi/D;->g(Loh/x;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lli/n;->b:Lhi/D;

    invoke-virtual {v0, v1}, Lhi/D;->f(Loh/x;)Lhi/B;

    move-result-object v0

    invoke-virtual {v0}, Lhi/B;->A()Loh/g;

    move-result-object v2

    invoke-static {v2}, Lhi/v;->y(Ljava/lang/Object;)Lhi/v;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lli/n;->b:Lhi/D;

    invoke-virtual {v0}, Lhi/B;->B()Z

    move-result v0

    iget-object v4, p0, Lli/n;->a:Lhi/u0;

    invoke-virtual {v4}, Lhi/u0;->b()Lhi/j0;

    move-result-object v4

    iget-object v5, p0, Lli/n;->b:Lhi/D;

    invoke-virtual {v5}, Lhi/D;->e()Lhi/C;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lhi/v;->G(Lhi/j0;Lhi/C;)Lhi/v;

    move-result-object v2

    invoke-virtual {v3, v1, v0, v2}, Lhi/D;->k(Loh/x;ZLoh/g;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to replace deltaCertificateDescriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lli/n;->a:Lhi/u0;

    iget-object v1, p0, Lli/n;->b:Lhi/D;

    invoke-virtual {v1}, Lhi/D;->e()Lhi/C;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhi/u0;->f(Lhi/C;)V

    :cond_1
    :try_start_1
    iget-object v0, p0, Lli/n;->a:Lhi/u0;

    invoke-virtual {v0}, Lhi/u0;->b()Lhi/j0;

    move-result-object v0

    new-instance v1, Lli/h;

    invoke-interface {p1}, LQk/f;->a()Lhi/b;

    move-result-object v2

    invoke-static {p1, v0}, Lli/n;->i(LQk/f;Loh/v;)[B

    move-result-object p1

    invoke-static {v0, v2, p1}, Lli/n;->j(Lhi/j0;Lhi/b;[B)Lhi/q;

    move-result-object p1

    invoke-direct {v1, p1}, Lli/h;-><init>(Lhi/q;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :catch_1
    move-exception p1

    const-string v0, "cannot produce certificate signature"

    invoke-static {v0, p1}, Lorg/bouncycastle/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1
.end method

.method public f(LQk/f;ZLQk/f;)Lli/h;
    .locals 7

    :try_start_0
    iget-object v0, p0, Lli/n;->b:Lhi/D;

    sget-object v1, Lhi/B;->L:Loh/x;

    invoke-interface {p3}, LQk/f;->a()Lhi/b;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Lhi/D;->c(Loh/x;ZLoh/g;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    iget-object v0, p0, Lli/n;->b:Lhi/D;

    sget-object v1, Lhi/B;->N:Loh/x;

    invoke-virtual {v0, v1}, Lhi/D;->g(Loh/x;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lli/n;->a:Lhi/u0;

    invoke-interface {p1}, LQk/f;->a()Lhi/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lhi/u0;->l(Lhi/b;)V

    iget-object v0, p0, Lli/n;->b:Lhi/D;

    invoke-virtual {v0, v1}, Lhi/D;->f(Loh/x;)Lhi/B;

    move-result-object v0

    invoke-virtual {v0}, Lhi/B;->A()Loh/g;

    move-result-object v2

    invoke-static {v2}, Lhi/v;->y(Ljava/lang/Object;)Lhi/v;

    move-result-object v2

    :try_start_1
    new-instance v3, Lhi/D;

    invoke-direct {v3}, Lhi/D;-><init>()V

    iget-object v4, p0, Lli/n;->b:Lhi/D;

    invoke-virtual {v4}, Lhi/D;->e()Lhi/C;

    move-result-object v4

    invoke-virtual {v3, v4}, Lhi/D;->b(Lhi/C;)V

    sget-object v4, Lhi/B;->M:Loh/x;

    sget-object v5, Loh/A0;->c:Loh/A0;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Lhi/D;->c(Loh/x;ZLoh/g;)V

    iget-object v4, p0, Lli/n;->b:Lhi/D;

    invoke-virtual {v0}, Lhi/B;->B()Z

    move-result v0

    iget-object v5, p0, Lli/n;->a:Lhi/u0;

    invoke-virtual {v5}, Lhi/u0;->b()Lhi/j0;

    move-result-object v5

    invoke-virtual {v3}, Lhi/D;->e()Lhi/C;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lhi/v;->G(Lhi/j0;Lhi/C;)Lhi/v;

    move-result-object v2

    invoke-virtual {v4, v1, v0, v2}, Lhi/D;->k(Loh/x;ZLoh/g;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unable to replace deltaCertificateDescriptor: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    :goto_0
    iget-object v0, p0, Lli/n;->a:Lhi/u0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhi/u0;->l(Lhi/b;)V

    iget-object v0, p0, Lli/n;->a:Lhi/u0;

    iget-object v1, p0, Lli/n;->b:Lhi/D;

    invoke-virtual {v1}, Lhi/D;->e()Lhi/C;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhi/u0;->f(Lhi/C;)V

    :try_start_2
    iget-object v0, p0, Lli/n;->b:Lhi/D;

    sget-object v1, Lhi/B;->M:Loh/x;

    new-instance v2, Loh/r0;

    iget-object v3, p0, Lli/n;->a:Lhi/u0;

    invoke-virtual {v3}, Lhi/u0;->a()Loh/E;

    move-result-object v3

    invoke-static {p3, v3}, Lli/n;->i(LQk/f;Loh/v;)[B

    move-result-object p3

    invoke-direct {v2, p3}, Loh/r0;-><init>([B)V

    invoke-virtual {v0, v1, p2, v2}, Lhi/D;->c(Loh/x;ZLoh/g;)V

    iget-object p2, p0, Lli/n;->a:Lhi/u0;

    invoke-interface {p1}, LQk/f;->a()Lhi/b;

    move-result-object p3

    invoke-virtual {p2, p3}, Lhi/u0;->l(Lhi/b;)V

    iget-object p2, p0, Lli/n;->a:Lhi/u0;

    iget-object p3, p0, Lli/n;->b:Lhi/D;

    invoke-virtual {p3}, Lhi/D;->e()Lhi/C;

    move-result-object p3

    invoke-virtual {p2, p3}, Lhi/u0;->f(Lhi/C;)V

    iget-object p2, p0, Lli/n;->a:Lhi/u0;

    invoke-virtual {p2}, Lhi/u0;->b()Lhi/j0;

    move-result-object p2

    new-instance p3, Lli/h;

    invoke-interface {p1}, LQk/f;->a()Lhi/b;

    move-result-object v0

    invoke-static {p1, p2}, Lli/n;->i(LQk/f;Loh/v;)[B

    move-result-object p1

    invoke-static {p2, v0, p1}, Lli/n;->j(Lhi/j0;Lhi/b;[B)Lhi/q;

    move-result-object p1

    invoke-direct {p3, p1}, Lli/h;-><init>(Lhi/q;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p3

    :catch_1
    move-exception p1

    const-string p2, "cannot produce certificate signature"

    invoke-static {p2, p1}, Lorg/bouncycastle/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :catch_2
    move-exception p1

    const-string p2, "cannot add altSignatureAlgorithm extension"

    invoke-static {p2, p1}, Lorg/bouncycastle/util/h;->b(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public g(Loh/x;ZLli/h;)Lli/n;
    .locals 1

    invoke-virtual {p3}, Lli/h;->x()Lhi/q;

    move-result-object p3

    invoke-virtual {p3}, Lhi/q;->E()Lhi/j0;

    move-result-object p3

    invoke-virtual {p3}, Lhi/j0;->v()Lhi/C;

    move-result-object p3

    invoke-virtual {p3, p1}, Lhi/C;->x(Loh/x;)Lhi/B;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object v0, p0, Lli/n;->b:Lhi/D;

    invoke-virtual {p3}, Lhi/B;->y()Loh/y;

    move-result-object p3

    invoke-virtual {p3}, Loh/y;->H()[B

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lhi/D;->d(Loh/x;Z[B)V

    return-object p0

    :cond_0
    new-instance p2, Ljava/lang/NullPointerException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "extension "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not present"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final h(Loh/x;)Lhi/B;
    .locals 1

    iget-object v0, p0, Lli/n;->b:Lhi/D;

    invoke-virtual {v0}, Lhi/D;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lli/n;->b:Lhi/D;

    invoke-virtual {v0}, Lhi/D;->e()Lhi/C;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhi/C;->x(Loh/x;)Lhi/B;

    move-result-object p1

    return-object p1
.end method

.method public k(Loh/x;)Lhi/B;
    .locals 0

    invoke-virtual {p0, p1}, Lli/n;->h(Loh/x;)Lhi/B;

    move-result-object p1

    return-object p1
.end method

.method public l(Loh/x;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lli/n;->h(Loh/x;)Lhi/B;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public m(Loh/x;)Lli/n;
    .locals 1

    iget-object v0, p0, Lli/n;->b:Lhi/D;

    invoke-static {v0, p1}, Lli/c;->d(Lhi/D;Loh/x;)Lhi/D;

    move-result-object p1

    iput-object p1, p0, Lli/n;->b:Lhi/D;

    return-object p0
.end method

.method public n(Lhi/B;)Lli/n;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/CertIOException;
        }
    .end annotation

    iget-object v0, p0, Lli/n;->b:Lhi/D;

    invoke-static {v0, p1}, Lli/c;->e(Lhi/D;Lhi/B;)Lhi/D;

    move-result-object p1

    iput-object p1, p0, Lli/n;->b:Lhi/D;

    return-object p0
.end method

.method public o(Loh/x;ZLoh/g;)Lli/n;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/CertIOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lli/n;->b:Lhi/D;

    new-instance v1, Lhi/B;

    invoke-interface {p3}, Loh/g;->r()Loh/B;

    move-result-object p3

    const-string v2, "DER"

    invoke-virtual {p3, v2}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object p3

    invoke-direct {v1, p1, p2, p3}, Lhi/B;-><init>(Loh/x;Z[B)V

    invoke-static {v0, v1}, Lli/c;->e(Lhi/D;Lhi/B;)Lhi/D;

    move-result-object p1

    iput-object p1, p0, Lli/n;->b:Lhi/D;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cert/CertIOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot encode extension: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public p(Loh/x;Z[B)Lli/n;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/CertIOException;
        }
    .end annotation

    iget-object v0, p0, Lli/n;->b:Lhi/D;

    new-instance v1, Lhi/B;

    invoke-direct {v1, p1, p2, p3}, Lhi/B;-><init>(Loh/x;Z[B)V

    invoke-static {v0, v1}, Lli/c;->e(Lhi/D;Lhi/B;)Lhi/D;

    move-result-object p1

    iput-object p1, p0, Lli/n;->b:Lhi/D;

    return-object p0
.end method

.method public q([Z)Lli/n;
    .locals 1

    iget-object v0, p0, Lli/n;->a:Lhi/u0;

    invoke-static {p1}, Lli/n;->d([Z)Loh/r0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lhi/u0;->j(Loh/r0;)V

    return-object p0
.end method

.method public r([Z)Lli/n;
    .locals 1

    iget-object v0, p0, Lli/n;->a:Lhi/u0;

    invoke-static {p1}, Lli/n;->d([Z)Loh/r0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lhi/u0;->r(Loh/r0;)V

    return-object p0
.end method
