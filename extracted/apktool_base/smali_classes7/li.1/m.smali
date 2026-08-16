.class public Lli/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lhi/t0;

.field public b:Lhi/D;


# direct methods
.method public constructor <init>(Lfi/d;Lhi/o0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lhi/t0;

    invoke-direct {v0}, Lhi/t0;-><init>()V

    iput-object v0, p0, Lli/m;->a:Lhi/t0;

    new-instance v0, Lhi/D;

    invoke-direct {v0}, Lhi/D;-><init>()V

    iput-object v0, p0, Lli/m;->b:Lhi/D;

    iget-object v0, p0, Lli/m;->a:Lhi/t0;

    invoke-virtual {v0, p1}, Lhi/t0;->n(Lfi/d;)V

    iget-object p1, p0, Lli/m;->a:Lhi/t0;

    invoke-virtual {p1, p2}, Lhi/t0;->s(Lhi/o0;)V

    return-void
.end method

.method public constructor <init>(Lfi/d;Ljava/util/Date;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lhi/t0;

    invoke-direct {v0}, Lhi/t0;-><init>()V

    iput-object v0, p0, Lli/m;->a:Lhi/t0;

    new-instance v0, Lhi/D;

    invoke-direct {v0}, Lhi/D;-><init>()V

    iput-object v0, p0, Lli/m;->b:Lhi/D;

    iget-object v0, p0, Lli/m;->a:Lhi/t0;

    invoke-virtual {v0, p1}, Lhi/t0;->n(Lfi/d;)V

    iget-object p1, p0, Lli/m;->a:Lhi/t0;

    new-instance v0, Lhi/o0;

    invoke-direct {v0, p2}, Lhi/o0;-><init>(Ljava/util/Date;)V

    invoke-virtual {p1, v0}, Lhi/t0;->s(Lhi/o0;)V

    return-void
.end method

.method public constructor <init>(Lfi/d;Ljava/util/Date;Ljava/util/Locale;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lhi/t0;

    invoke-direct {v0}, Lhi/t0;-><init>()V

    iput-object v0, p0, Lli/m;->a:Lhi/t0;

    new-instance v0, Lhi/D;

    invoke-direct {v0}, Lhi/D;-><init>()V

    iput-object v0, p0, Lli/m;->b:Lhi/D;

    iget-object v0, p0, Lli/m;->a:Lhi/t0;

    invoke-virtual {v0, p1}, Lhi/t0;->n(Lfi/d;)V

    iget-object p1, p0, Lli/m;->a:Lhi/t0;

    new-instance v0, Lhi/o0;

    invoke-direct {v0, p2, p3}, Lhi/o0;-><init>(Ljava/util/Date;Ljava/util/Locale;)V

    invoke-virtual {p1, v0}, Lhi/t0;->s(Lhi/o0;)V

    return-void
.end method

.method public constructor <init>(Lli/g;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lhi/t0;

    invoke-direct {v0}, Lhi/t0;-><init>()V

    iput-object v0, p0, Lli/m;->a:Lhi/t0;

    invoke-virtual {p1}, Lli/g;->e()Lfi/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhi/t0;->n(Lfi/d;)V

    iget-object v0, p0, Lli/m;->a:Lhi/t0;

    new-instance v1, Lhi/o0;

    invoke-virtual {p1}, Lli/g;->j()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v1, v2}, Lhi/o0;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lhi/t0;->s(Lhi/o0;)V

    invoke-virtual {p1}, Lli/g;->f()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lli/m;->a:Lhi/t0;

    new-instance v2, Lhi/o0;

    invoke-direct {v2, v0}, Lhi/o0;-><init>(Ljava/util/Date;)V

    invoke-virtual {v1, v2}, Lhi/t0;->p(Lhi/o0;)V

    :cond_0
    invoke-virtual {p0, p1}, Lli/m;->a(Lli/g;)Lli/m;

    new-instance v0, Lhi/D;

    invoke-direct {v0}, Lhi/D;-><init>()V

    iput-object v0, p0, Lli/m;->b:Lhi/D;

    invoke-virtual {p1}, Lli/g;->d()Lhi/C;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lhi/C;->F()Ljava/util/Enumeration;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loh/x;

    sget-object v2, Lhi/B;->L:Loh/x;

    invoke-virtual {v2, v1}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lhi/B;->M:Loh/x;

    invoke-virtual {v2, v1}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lli/m;->b:Lhi/D;

    invoke-virtual {p1, v1}, Lhi/C;->x(Loh/x;)Lhi/B;

    move-result-object v1

    invoke-virtual {v2, v1}, Lhi/D;->a(Lhi/B;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static k(Lhi/i0;Lhi/b;[B)Lhi/r;
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

    invoke-static {p0}, Lhi/r;->u(Ljava/lang/Object;)Lhi/r;

    move-result-object p0

    return-object p0
.end method

.method public static l(LQk/f;Lhi/i0;)Lli/g;
    .locals 2

    :try_start_0
    new-instance v0, Lli/g;

    invoke-interface {p0}, LQk/f;->a()Lhi/b;

    move-result-object v1

    invoke-static {p0, p1}, Lli/m;->m(LQk/f;Loh/v;)[B

    move-result-object p0

    invoke-static {p1, v1, p0}, Lli/m;->k(Lhi/i0;Lhi/b;[B)Lhi/r;

    move-result-object p0

    invoke-direct {v0, p0}, Lli/g;-><init>(Lhi/r;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const-string p1, "cannot produce certificate signature"

    invoke-static {p1, p0}, Lorg/bouncycastle/util/h;->b(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0
.end method

.method public static m(LQk/f;Loh/v;)[B
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


# virtual methods
.method public a(Lli/g;)Lli/m;
    .locals 2

    invoke-virtual {p1}, Lli/g;->r()Lhi/r;

    move-result-object p1

    invoke-virtual {p1}, Lhi/r;->D()Lhi/i0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lhi/i0;->z()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lli/m;->a:Lhi/t0;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loh/g;

    invoke-interface {v1}, Loh/g;->r()Loh/B;

    move-result-object v1

    invoke-static {v1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhi/t0;->e(Loh/E;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public b(Ljava/math/BigInteger;Ljava/util/Date;I)Lli/m;
    .locals 2

    iget-object v0, p0, Lli/m;->a:Lhi/t0;

    new-instance v1, Loh/s;

    invoke-direct {v1, p1}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    new-instance p1, Lhi/o0;

    invoke-direct {p1, p2}, Lhi/o0;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1, p1, p3}, Lhi/t0;->a(Loh/s;Lhi/o0;I)V

    return-object p0
.end method

.method public c(Ljava/math/BigInteger;Ljava/util/Date;ILjava/util/Date;)Lli/m;
    .locals 2

    iget-object v0, p0, Lli/m;->a:Lhi/t0;

    new-instance v1, Loh/s;

    invoke-direct {v1, p1}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    new-instance p1, Lhi/o0;

    invoke-direct {p1, p2}, Lhi/o0;-><init>(Ljava/util/Date;)V

    new-instance p2, Loh/n;

    invoke-direct {p2, p4}, Loh/n;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1, p1, p3, p2}, Lhi/t0;->b(Loh/s;Lhi/o0;ILoh/n;)V

    return-object p0
.end method

.method public d(Ljava/math/BigInteger;Ljava/util/Date;Lhi/C;)Lli/m;
    .locals 2

    iget-object v0, p0, Lli/m;->a:Lhi/t0;

    new-instance v1, Loh/s;

    invoke-direct {v1, p1}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    new-instance p1, Lhi/o0;

    invoke-direct {p1, p2}, Lhi/o0;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1, p1, p3}, Lhi/t0;->c(Loh/s;Lhi/o0;Lhi/C;)V

    return-object p0
.end method

.method public e(Lhi/B;)Lli/m;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/CertIOException;
        }
    .end annotation

    iget-object v0, p0, Lli/m;->b:Lhi/D;

    invoke-virtual {v0, p1}, Lhi/D;->a(Lhi/B;)V

    return-object p0
.end method

.method public f(Loh/x;ZLoh/g;)Lli/m;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/CertIOException;
        }
    .end annotation

    iget-object v0, p0, Lli/m;->b:Lhi/D;

    invoke-static {v0, p1, p2, p3}, Lli/c;->a(Lhi/D;Loh/x;ZLoh/g;)V

    return-object p0
.end method

.method public g(Loh/x;Z[B)Lli/m;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/CertIOException;
        }
    .end annotation

    iget-object v0, p0, Lli/m;->b:Lhi/D;

    invoke-virtual {v0, p1, p2, p3}, Lhi/D;->d(Loh/x;Z[B)V

    return-object p0
.end method

.method public h(LQk/f;)Lli/g;
    .locals 2

    iget-object v0, p0, Lli/m;->a:Lhi/t0;

    invoke-interface {p1}, LQk/f;->a()Lhi/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhi/t0;->r(Lhi/b;)V

    iget-object v0, p0, Lli/m;->b:Lhi/D;

    invoke-virtual {v0}, Lhi/D;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lli/m;->a:Lhi/t0;

    iget-object v1, p0, Lli/m;->b:Lhi/D;

    invoke-virtual {v1}, Lhi/D;->e()Lhi/C;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhi/t0;->l(Lhi/C;)V

    :cond_0
    iget-object v0, p0, Lli/m;->a:Lhi/t0;

    invoke-virtual {v0}, Lhi/t0;->i()Lhi/i0;

    move-result-object v0

    invoke-static {p1, v0}, Lli/m;->l(LQk/f;Lhi/i0;)Lli/g;

    move-result-object p1

    return-object p1
.end method

.method public i(LQk/f;ZLQk/f;)Lli/g;
    .locals 4

    iget-object v0, p0, Lli/m;->a:Lhi/t0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhi/t0;->r(Lhi/b;)V

    :try_start_0
    iget-object v0, p0, Lli/m;->b:Lhi/D;

    sget-object v1, Lhi/B;->L:Loh/x;

    invoke-interface {p3}, LQk/f;->a()Lhi/b;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Lhi/D;->c(Loh/x;ZLoh/g;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v0, p0, Lli/m;->a:Lhi/t0;

    iget-object v1, p0, Lli/m;->b:Lhi/D;

    invoke-virtual {v1}, Lhi/D;->e()Lhi/C;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhi/t0;->l(Lhi/C;)V

    :try_start_1
    iget-object v0, p0, Lli/m;->b:Lhi/D;

    sget-object v1, Lhi/B;->M:Loh/x;

    new-instance v2, Loh/r0;

    iget-object v3, p0, Lli/m;->a:Lhi/t0;

    invoke-virtual {v3}, Lhi/t0;->h()Loh/E;

    move-result-object v3

    invoke-static {p3, v3}, Lli/m;->m(LQk/f;Loh/v;)[B

    move-result-object p3

    invoke-direct {v2, p3}, Loh/r0;-><init>([B)V

    invoke-virtual {v0, v1, p2, v2}, Lhi/D;->c(Loh/x;ZLoh/g;)V

    iget-object p2, p0, Lli/m;->a:Lhi/t0;

    invoke-interface {p1}, LQk/f;->a()Lhi/b;

    move-result-object p3

    invoke-virtual {p2, p3}, Lhi/t0;->r(Lhi/b;)V

    iget-object p2, p0, Lli/m;->a:Lhi/t0;

    iget-object p3, p0, Lli/m;->b:Lhi/D;

    invoke-virtual {p3}, Lhi/D;->e()Lhi/C;

    move-result-object p3

    invoke-virtual {p2, p3}, Lhi/t0;->l(Lhi/C;)V

    iget-object p2, p0, Lli/m;->a:Lhi/t0;

    invoke-virtual {p2}, Lhi/t0;->i()Lhi/i0;

    move-result-object p2

    new-instance p3, Lli/g;

    invoke-interface {p1}, LQk/f;->a()Lhi/b;

    move-result-object v0

    invoke-static {p1, p2}, Lli/m;->m(LQk/f;Loh/v;)[B

    move-result-object p1

    invoke-static {p2, v0, p1}, Lli/m;->k(Lhi/i0;Lhi/b;[B)Lhi/r;

    move-result-object p1

    invoke-direct {p3, p1}, Lli/g;-><init>(Lhi/r;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p3

    :catch_0
    move-exception p1

    const-string p2, "cannot produce certificate signature"

    invoke-static {p2, p1}, Lorg/bouncycastle/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    const-string p2, "cannot add altSignatureAlgorithm extension"

    invoke-static {p2, p1}, Lorg/bouncycastle/util/h;->b(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public final j(Loh/x;)Lhi/B;
    .locals 1

    iget-object v0, p0, Lli/m;->b:Lhi/D;

    invoke-virtual {v0}, Lhi/D;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lli/m;->b:Lhi/D;

    invoke-virtual {v0}, Lhi/D;->e()Lhi/C;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhi/C;->x(Loh/x;)Lhi/B;

    move-result-object p1

    return-object p1
.end method

.method public n(Loh/x;)Lhi/B;
    .locals 0

    invoke-virtual {p0, p1}, Lli/m;->j(Loh/x;)Lhi/B;

    move-result-object p1

    return-object p1
.end method

.method public o(Loh/x;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lli/m;->j(Loh/x;)Lhi/B;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public p(Loh/x;)Lli/m;
    .locals 1

    iget-object v0, p0, Lli/m;->b:Lhi/D;

    invoke-static {v0, p1}, Lli/c;->d(Lhi/D;Loh/x;)Lhi/D;

    move-result-object p1

    iput-object p1, p0, Lli/m;->b:Lhi/D;

    return-object p0
.end method

.method public q(Lhi/B;)Lli/m;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/CertIOException;
        }
    .end annotation

    iget-object v0, p0, Lli/m;->b:Lhi/D;

    invoke-static {v0, p1}, Lli/c;->e(Lhi/D;Lhi/B;)Lhi/D;

    move-result-object p1

    iput-object p1, p0, Lli/m;->b:Lhi/D;

    return-object p0
.end method

.method public r(Loh/x;ZLoh/g;)Lli/m;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/CertIOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lli/m;->b:Lhi/D;

    new-instance v1, Lhi/B;

    invoke-interface {p3}, Loh/g;->r()Loh/B;

    move-result-object p3

    const-string v2, "DER"

    invoke-virtual {p3, v2}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object p3

    invoke-direct {v1, p1, p2, p3}, Lhi/B;-><init>(Loh/x;Z[B)V

    invoke-static {v0, v1}, Lli/c;->e(Lhi/D;Lhi/B;)Lhi/D;

    move-result-object p1

    iput-object p1, p0, Lli/m;->b:Lhi/D;
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

.method public s(Loh/x;Z[B)Lli/m;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/CertIOException;
        }
    .end annotation

    iget-object v0, p0, Lli/m;->b:Lhi/D;

    new-instance v1, Lhi/B;

    invoke-direct {v1, p1, p2, p3}, Lhi/B;-><init>(Loh/x;Z[B)V

    invoke-static {v0, v1}, Lli/c;->e(Lhi/D;Lhi/B;)Lhi/D;

    move-result-object p1

    iput-object p1, p0, Lli/m;->b:Lhi/D;

    return-object p0
.end method

.method public t(Lhi/o0;)Lli/m;
    .locals 1

    iget-object v0, p0, Lli/m;->a:Lhi/t0;

    invoke-virtual {v0, p1}, Lhi/t0;->p(Lhi/o0;)V

    return-object p0
.end method

.method public u(Ljava/util/Date;)Lli/m;
    .locals 1

    new-instance v0, Lhi/o0;

    invoke-direct {v0, p1}, Lhi/o0;-><init>(Ljava/util/Date;)V

    invoke-virtual {p0, v0}, Lli/m;->t(Lhi/o0;)Lli/m;

    move-result-object p1

    return-object p1
.end method

.method public v(Ljava/util/Date;Ljava/util/Locale;)Lli/m;
    .locals 1

    new-instance v0, Lhi/o0;

    invoke-direct {v0, p1, p2}, Lhi/o0;-><init>(Ljava/util/Date;Ljava/util/Locale;)V

    invoke-virtual {p0, v0}, Lli/m;->t(Lhi/o0;)Lli/m;

    move-result-object p1

    return-object p1
.end method

.method public w(Lhi/o0;)Lli/m;
    .locals 1

    iget-object v0, p0, Lli/m;->a:Lhi/t0;

    invoke-virtual {v0, p1}, Lhi/t0;->s(Lhi/o0;)V

    return-object p0
.end method

.method public x(Ljava/util/Date;)Lli/m;
    .locals 1

    new-instance v0, Lhi/o0;

    invoke-direct {v0, p1}, Lhi/o0;-><init>(Ljava/util/Date;)V

    invoke-virtual {p0, v0}, Lli/m;->w(Lhi/o0;)Lli/m;

    move-result-object p1

    return-object p1
.end method

.method public y(Ljava/util/Date;Ljava/util/Locale;)Lli/m;
    .locals 1

    new-instance v0, Lhi/o0;

    invoke-direct {v0, p1, p2}, Lhi/o0;-><init>(Ljava/util/Date;Ljava/util/Locale;)V

    invoke-virtual {p0, v0}, Lli/m;->w(Lhi/o0;)Lli/m;

    move-result-object p1

    return-object p1
.end method
