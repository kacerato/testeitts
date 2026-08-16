.class public LRj/a;
.super Ljava/security/AlgorithmParametersSpi;
.source "SourceFile"


# instance fields
.field public a:Lhk/s;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/security/AlgorithmParametersSpi;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "ASN.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public b(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    const-class v0, Lhk/s;

    if-eq p1, v0, :cond_1

    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/spec/InvalidParameterSpecException;

    const-string v0, "unknown parameter spec passed to ElGamal parameters object."

    invoke-direct {p1, v0}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p0, LRj/a;->a:Lhk/s;

    return-object p1
.end method

.method public engineGetEncoded()[B
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    iget-object v1, p0, LRj/a;->a:Lhk/s;

    invoke-virtual {v1}, Lhk/s;->b()[B

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Loh/K0;

    new-instance v3, Loh/C0;

    iget-object v4, p0, LRj/a;->a:Lhk/s;

    invoke-virtual {v4}, Lhk/s;->b()[B

    move-result-object v4

    invoke-direct {v3, v4}, Loh/C0;-><init>([B)V

    invoke-direct {v1, v2, v2, v3}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, LRj/a;->a:Lhk/s;

    invoke-virtual {v1}, Lhk/s;->c()[B

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Loh/K0;

    new-instance v3, Loh/C0;

    iget-object v4, p0, LRj/a;->a:Lhk/s;

    invoke-virtual {v4}, Lhk/s;->c()[B

    move-result-object v4

    invoke-direct {v3, v4}, Loh/C0;-><init>([B)V

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_1
    new-instance v1, Loh/s;

    iget-object v2, p0, LRj/a;->a:Lhk/s;

    invoke-virtual {v2}, Lhk/s;->d()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Loh/s;-><init>(J)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LRj/a;->a:Lhk/s;

    invoke-virtual {v1}, Lhk/s;->e()[B

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Loh/h;

    invoke-direct {v2}, Loh/h;-><init>()V

    new-instance v3, Loh/s;

    iget-object v4, p0, LRj/a;->a:Lhk/s;

    invoke-virtual {v4}, Lhk/s;->a()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {v3, v4, v5}, Loh/s;-><init>(J)V

    invoke-virtual {v2, v3}, Loh/h;->a(Loh/g;)V

    new-instance v3, Loh/C0;

    invoke-direct {v3, v1}, Loh/C0;-><init>([B)V

    invoke-virtual {v2, v3}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v2}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_2
    iget-object v1, p0, LRj/a;->a:Lhk/s;

    invoke-virtual {v1}, Lhk/s;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Loh/e;->g:Loh/e;

    goto :goto_0

    :cond_3
    sget-object v1, Loh/e;->f:Loh/e;

    :goto_0
    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    const-string v0, "DER"

    invoke-virtual {v1, v0}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error encoding IESParameters"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineGetEncoded(Ljava/lang/String;)[B
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, LRj/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "X.509"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, LRj/a;->engineGetEncoded()[B

    move-result-object p1

    return-object p1
.end method

.method public engineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, LRj/a;->b(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "argument to getParameterSpec must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lhk/s;

    if-eqz v0, :cond_0

    check-cast p1, Lhk/s;

    iput-object p1, p0, LRj/a;->a:Lhk/s;

    return-void

    :cond_0
    new-instance p1, Ljava/security/spec/InvalidParameterSpecException;

    const-string v0, "IESParameterSpec required to initialise a IES algorithm parameters object"

    invoke-direct {p1, v0}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineInit([B)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    const-string v0, "Not a valid IES Parameter encoding."

    :try_start_0
    invoke-static {p1}, Loh/B;->B([B)Loh/B;

    move-result-object p1

    check-cast p1, Loh/E;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v1

    const/4 v2, 0x5

    if-gt v1, v2, :cond_7

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v9, v1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v8, v5

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Loh/M;

    const/4 v10, 0x1

    if-eqz v7, :cond_2

    invoke-static {v6}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object v6

    invoke-virtual {v6}, Loh/M;->g()I

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v6, v1}, Loh/y;->G(Loh/M;Z)Loh/y;

    move-result-object v4

    invoke-virtual {v4}, Loh/y;->H()[B

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Loh/M;->g()I

    move-result v7

    if-ne v7, v10, :cond_0

    invoke-static {v6, v1}, Loh/y;->G(Loh/M;Z)Loh/y;

    move-result-object v5

    invoke-virtual {v5}, Loh/y;->H()[B

    move-result-object v5

    goto :goto_0

    :cond_2
    instance-of v7, v6, Loh/s;

    if-eqz v7, :cond_3

    invoke-static {v6}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v3

    invoke-virtual {v3}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_0

    :cond_3
    instance-of v7, v6, Loh/E;

    if-eqz v7, :cond_4

    invoke-static {v6}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v2

    invoke-virtual {v2, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v6

    invoke-static {v6}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v6

    invoke-virtual {v6}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2, v10}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v2

    invoke-virtual {v2}, Loh/y;->H()[B

    move-result-object v2

    move-object v8, v2

    move-object v2, v6

    goto :goto_0

    :cond_4
    instance-of v7, v6, Loh/e;

    if-eqz v7, :cond_0

    invoke-static {v6}, Loh/e;->G(Ljava/lang/Object;)Loh/e;

    move-result-object v6

    invoke-virtual {v6}, Loh/e;->J()Z

    move-result v9

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    new-instance p1, Lhk/s;

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lhk/s;-><init>([B[BII[BZ)V

    :goto_1
    iput-object p1, p0, LRj/a;->a:Lhk/s;

    goto :goto_2

    :cond_6
    new-instance p1, Lhk/s;

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lhk/s;-><init>([B[BII[BZ)V

    goto :goto_1

    :goto_2
    return-void

    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string v1, "sequence too big"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineInit([BLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p2}, LRj/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "X.509"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown parameter format "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, LRj/a;->engineInit([B)V

    return-void
.end method

.method public engineToString()Ljava/lang/String;
    .locals 1

    const-string v0, "IES Parameters"

    return-object v0
.end method
