.class public LSj/a$b;
.super LSj/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSj/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/security/spec/PSSParameterSpec;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LSj/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    const-class v0, Ljava/security/spec/PSSParameterSpec;

    if-eq p1, v0, :cond_1

    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/spec/InvalidParameterSpecException;

    const-string v0, "unknown parameter spec passed to PSS parameters object."

    invoke-direct {p1, v0}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p0, LSj/a$b;->a:Ljava/security/spec/PSSParameterSpec;

    return-object p1
.end method

.method public engineGetEncoded()[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, LSj/a$b;->a:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbk/d;->b(Ljava/lang/String;)Loh/x;

    move-result-object v1

    sget-object v2, LSh/d;->m:Loh/x;

    invoke-virtual {v2, v1}, Loh/B;->A(Loh/B;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, LSh/d;->n:Loh/x;

    invoke-virtual {v3, v1}, Loh/B;->A(Loh/B;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lhi/b;

    sget-object v4, Loh/A0;->c:Loh/A0;

    invoke-direct {v3, v1, v4}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v3, Lhi/b;

    invoke-direct {v3, v1}, Lhi/b;-><init>(Loh/x;)V

    :goto_1
    invoke-virtual {v0}, Ljava/security/spec/PSSParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    check-cast v1, Ljava/security/spec/MGF1ParameterSpec;

    const-string v4, "DER"

    if-eqz v1, :cond_2

    new-instance v2, Lhi/b;

    sget-object v5, LXh/t;->O0:Loh/x;

    new-instance v6, Lhi/b;

    invoke-virtual {v1}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbk/d;->b(Ljava/lang/String;)Loh/x;

    move-result-object v1

    sget-object v7, Loh/A0;->c:Loh/A0;

    invoke-direct {v6, v1, v7}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    invoke-direct {v2, v5, v6}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    new-instance v1, LXh/B;

    new-instance v5, Loh/s;

    invoke-virtual {v0}, Ljava/security/spec/PSSParameterSpec;->getSaltLength()I

    move-result v6

    int-to-long v6, v6

    invoke-direct {v5, v6, v7}, Loh/s;-><init>(J)V

    new-instance v6, Loh/s;

    invoke-virtual {v0}, Ljava/security/spec/PSSParameterSpec;->getTrailerField()I

    move-result v0

    int-to-long v7, v0

    invoke-direct {v6, v7, v8}, Loh/s;-><init>(J)V

    invoke-direct {v1, v3, v2, v5, v6}, LXh/B;-><init>(Lhi/b;Lhi/b;Loh/s;Loh/s;)V

    invoke-virtual {v1, v4}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v1, Lhi/b;

    invoke-virtual {v0}, Ljava/security/spec/PSSParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SHAKE128"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    sget-object v2, LSh/d;->n:Loh/x;

    :goto_2
    invoke-direct {v1, v2}, Lhi/b;-><init>(Loh/x;)V

    new-instance v2, LXh/B;

    new-instance v5, Loh/s;

    invoke-virtual {v0}, Ljava/security/spec/PSSParameterSpec;->getSaltLength()I

    move-result v6

    int-to-long v6, v6

    invoke-direct {v5, v6, v7}, Loh/s;-><init>(J)V

    new-instance v6, Loh/s;

    invoke-virtual {v0}, Ljava/security/spec/PSSParameterSpec;->getTrailerField()I

    move-result v0

    int-to-long v7, v0

    invoke-direct {v6, v7, v8}, Loh/s;-><init>(J)V

    invoke-direct {v2, v3, v1, v5, v6}, LXh/B;-><init>(Lhi/b;Lhi/b;Loh/s;Loh/s;)V

    invoke-virtual {v2, v4}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public engineGetEncoded(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    const-string v0, "X.509"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ASN.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, LSj/a$b;->engineGetEncoded()[B

    move-result-object p1

    return-object p1
.end method

.method public engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/security/spec/PSSParameterSpec;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/security/spec/PSSParameterSpec;

    iput-object p1, p0, LSj/a$b;->a:Ljava/security/spec/PSSParameterSpec;

    return-void

    :cond_0
    new-instance p1, Ljava/security/spec/InvalidParameterSpecException;

    const-string v0, "PSSParameterSpec required to initialise an PSS algorithm parameters object"

    invoke-direct {p1, v0}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineInit([B)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    const-string v0, "Not a valid PSS Parameter encoding."

    :try_start_0
    invoke-static {p1}, LXh/B;->v(Ljava/lang/Object;)LXh/B;

    move-result-object p1

    invoke-virtual {p1}, LXh/B;->x()Lhi/b;

    move-result-object v1

    invoke-virtual {v1}, Lhi/b;->u()Loh/x;

    move-result-object v1

    sget-object v2, LXh/t;->O0:Loh/x;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {p1}, LXh/B;->u()Lhi/b;

    move-result-object v2

    invoke-virtual {v2}, Lhi/b;->u()Loh/x;

    move-result-object v2

    invoke-static {v2}, Ldk/h;->b(Loh/x;)Ljava/lang/String;

    move-result-object v4

    sget-object v2, Ljava/security/spec/PSSParameterSpec;->DEFAULT:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v2}, Ljava/security/spec/PSSParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/security/spec/MGF1ParameterSpec;

    invoke-virtual {p1}, LXh/B;->x()Lhi/b;

    move-result-object v2

    invoke-virtual {v2}, Lhi/b;->x()Loh/g;

    move-result-object v2

    invoke-static {v2}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v2

    invoke-virtual {v2}, Lhi/b;->u()Loh/x;

    move-result-object v2

    invoke-static {v2}, Ldk/h;->b(Loh/x;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, LXh/B;->y()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    invoke-virtual {p1}, LXh/B;->z()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    iput-object v1, p0, LSj/a$b;->a:Ljava/security/spec/PSSParameterSpec;

    goto :goto_3

    :cond_0
    sget-object v2, LSh/d;->m:Loh/x;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, LSh/d;->n:Loh/x;

    invoke-virtual {v1, v3}, Loh/B;->A(Loh/B;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown mask generation function: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LXh/B;->x()Lhi/b;

    move-result-object p1

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    new-instance v8, Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {p1}, LXh/B;->u()Lhi/b;

    move-result-object v3

    invoke-virtual {v3}, Lhi/b;->u()Loh/x;

    move-result-object v3

    invoke-static {v3}, Ldk/h;->b(Loh/x;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "SHAKE128"

    :goto_1
    move-object v4, v1

    goto :goto_2

    :cond_3
    const-string v1, "SHAKE256"

    goto :goto_1

    :goto_2
    invoke-virtual {p1}, LXh/B;->y()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    invoke-virtual {p1}, LXh/B;->z()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    const/4 v5, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    iput-object v8, p0, LSj/a$b;->a:Ljava/security/spec/PSSParameterSpec;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-void

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
    invoke-virtual {p0, p2}, LSj/a;->a(Ljava/lang/String;)Z

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
    invoke-virtual {p0, p1}, LSj/a$b;->engineInit([B)V

    return-void
.end method

.method public engineToString()Ljava/lang/String;
    .locals 1

    const-string v0, "PSS Parameters"

    return-object v0
.end method
