.class public Lli/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LQk/p;


# direct methods
.method public constructor <init>(LQk/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lli/j;->a:LQk/p;

    return-void
.end method


# virtual methods
.method public final a(Lhi/h0;)[B
    .locals 3

    invoke-virtual {p1}, Lhi/h0;->z()Loh/c;

    move-result-object p1

    invoke-virtual {p1}, Loh/c;->F()[B

    move-result-object p1

    iget-object v0, p0, Lli/j;->a:LQk/p;

    invoke-interface {v0}, LQk/p;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lli/j;->a:LQk/p;

    invoke-interface {p1}, LQk/p;->b()[B

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/cert/CertRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to calculate identifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cert/CertRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public b(Lhi/h0;)Lhi/k;
    .locals 1

    new-instance v0, Lhi/k;

    invoke-virtual {p0, p1}, Lli/j;->a(Lhi/h0;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lhi/k;-><init>([B)V

    return-object v0
.end method

.method public c(Lhi/h0;Lhi/F;Ljava/math/BigInteger;)Lhi/k;
    .locals 1

    new-instance v0, Lhi/k;

    invoke-virtual {p0, p1}, Lli/j;->a(Lhi/h0;)[B

    move-result-object p1

    invoke-direct {v0, p1, p2, p3}, Lhi/k;-><init>([BLhi/F;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public d(Lli/h;)Lhi/k;
    .locals 4

    new-instance v0, Lhi/E;

    invoke-virtual {p1}, Lli/h;->e()Lfi/d;

    move-result-object v1

    invoke-direct {v0, v1}, Lhi/E;-><init>(Lfi/d;)V

    new-instance v1, Lhi/k;

    invoke-virtual {p0, p1}, Lli/j;->g(Lli/h;)[B

    move-result-object v2

    new-instance v3, Lhi/F;

    invoke-direct {v3, v0}, Lhi/F;-><init>(Lhi/E;)V

    invoke-virtual {p1}, Lli/h;->i()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lhi/k;-><init>([BLhi/F;Ljava/math/BigInteger;)V

    return-object v1
.end method

.method public e(Lhi/h0;)Lhi/g0;
    .locals 1

    new-instance v0, Lhi/g0;

    invoke-virtual {p0, p1}, Lli/j;->a(Lhi/h0;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lhi/g0;-><init>([B)V

    return-object v0
.end method

.method public f(Lhi/h0;)Lhi/g0;
    .locals 4

    invoke-virtual {p0, p1}, Lli/j;->a(Lhi/h0;)[B

    move-result-object p1

    const/16 v0, 0x8

    new-array v1, v0, [B

    array-length v2, p1

    sub-int/2addr v2, v0

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte p1, v1, v3

    and-int/lit8 p1, p1, 0xf

    int-to-byte p1, p1

    aput-byte p1, v1, v3

    or-int/lit8 p1, p1, 0x40

    int-to-byte p1, p1

    aput-byte p1, v1, v3

    new-instance p1, Lhi/g0;

    invoke-direct {p1, v1}, Lhi/g0;-><init>([B)V

    return-object p1
.end method

.method public final g(Lli/h;)[B
    .locals 2

    invoke-virtual {p1}, Lli/h;->o()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lli/h;->m()Lhi/h0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lli/j;->a(Lhi/h0;)[B

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lhi/B;->f:Loh/x;

    invoke-virtual {p1, v0}, Lli/h;->b(Loh/x;)Lhi/B;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lhi/B;->A()Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lli/h;->m()Lhi/h0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lli/j;->a(Lhi/h0;)[B

    move-result-object p1

    return-object p1
.end method
