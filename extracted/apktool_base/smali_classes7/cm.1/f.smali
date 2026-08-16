.class public Lcm/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Luh/a0;

.field public final b:Lcm/e;


# direct methods
.method public constructor <init>(Luh/c0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcm/e;

    invoke-virtual {p1}, Luh/c0;->z()Luh/G;

    move-result-object v1

    invoke-direct {v0, v1}, Lcm/e;-><init>(Luh/G;)V

    iput-object v0, p0, Lcm/f;->b:Lcm/e;

    invoke-virtual {p1}, Luh/c0;->A()Luh/w;

    move-result-object p1

    invoke-virtual {p1}, Luh/w;->x()Luh/b0;

    move-result-object p1

    invoke-virtual {p1}, Luh/b0;->x()[Luh/a0;

    move-result-object p1

    iput-object p1, p0, Lcm/f;->a:[Luh/a0;

    return-void
.end method

.method public constructor <init>(Luh/d0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcm/e;

    invoke-virtual {p1}, Luh/d0;->e()Luh/G;

    move-result-object v1

    invoke-direct {v0, v1}, Lcm/e;-><init>(Luh/G;)V

    iput-object v0, p0, Lcm/f;->b:Lcm/e;

    invoke-virtual {p1}, Luh/d0;->f()Luh/w;

    move-result-object p1

    invoke-virtual {p1}, Luh/w;->x()Luh/b0;

    move-result-object p1

    invoke-virtual {p1}, Luh/b0;->x()[Luh/a0;

    move-result-object p1

    iput-object p1, p0, Lcm/f;->a:[Luh/a0;

    return-void
.end method


# virtual methods
.method public a(LQk/p;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lcm/f;->a:[Luh/a0;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-interface {p1}, LQk/p;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    :try_start_0
    const-string v2, "DER"

    invoke-virtual {v0, v2}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-interface {p1}, LQk/p;->b()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception calculating hash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public final b(Lorg/bouncycastle/tsp/h;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/cms/ImprintDigestInvalidException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/h;->i()Lorg/bouncycastle/tsp/j;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/j;->h()[B

    move-result-object v0

    invoke-static {p2, v0}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Lorg/bouncycastle/tsp/cms/ImprintDigestInvalidException;

    const-string v0, "hash calculated is different from MessageImprintDigest found in TimeStampToken"

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/tsp/cms/ImprintDigestInvalidException;-><init>(Ljava/lang/String;Lorg/bouncycastle/tsp/h;)V

    throw p2
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/f;->b:Lcm/e;

    invoke-virtual {v0}, Lcm/e;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/f;->b:Lcm/e;

    invoke-virtual {v0}, Lcm/e;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(LQk/q;)LQk/p;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcm/f;->a:[Luh/a0;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcm/f;->g(Luh/a0;)Lorg/bouncycastle/tsp/h;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/h;->i()Lorg/bouncycastle/tsp/j;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/j;->g()Loh/x;

    move-result-object v0

    new-instance v1, Lhi/b;

    invoke-direct {v1, v0}, Lhi/b;-><init>(Loh/x;)V

    invoke-interface {p1, v1}, LQk/q;->a(Lhi/b;)LQk/p;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcm/f;->j(LQk/p;)V
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/operator/OperatorCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to extract algorithm ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public f()Luh/b;
    .locals 2

    new-instance v0, Luh/b;

    iget-object v1, p0, Lcm/f;->b:Lcm/e;

    invoke-virtual {v1}, Lcm/e;->d()Luh/c;

    move-result-object v1

    invoke-direct {v0, v1}, Luh/b;-><init>(Luh/c;)V

    return-object v0
.end method

.method public g(Luh/a0;)Lorg/bouncycastle/tsp/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    const-string v0, "token data invalid: "

    invoke-virtual {p1}, Luh/a0;->x()Luh/o;

    move-result-object p1

    :try_start_0
    new-instance v1, Lorg/bouncycastle/tsp/h;

    invoke-direct {v1, p1}, Lorg/bouncycastle/tsp/h;-><init>(Luh/o;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/bouncycastle/tsp/TSPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :goto_0
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TSPException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/cms/CMSException;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TSPException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/cms/CMSException;

    throw p1

    :cond_0
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :goto_2
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to parse token data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public h()[Lorg/bouncycastle/tsp/h;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lcm/f;->a:[Luh/a0;

    array-length v0, v0

    new-array v0, v0, [Lorg/bouncycastle/tsp/h;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcm/f;->a:[Luh/a0;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lcm/f;->g(Luh/a0;)Lorg/bouncycastle/tsp/h;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public i()[Luh/a0;
    .locals 1

    iget-object v0, p0, Lcm/f;->a:[Luh/a0;

    return-object v0
.end method

.method public j(LQk/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lcm/f;->b:Lcm/e;

    invoke-virtual {v0, p1}, Lcm/e;->e(LQk/p;)V

    return-void
.end method

.method public k(LQk/q;[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/cms/ImprintDigestInvalidException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcm/f;->a:[Luh/a0;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    :try_start_0
    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcm/f;->g(Luh/a0;)Lorg/bouncycastle/tsp/h;

    move-result-object v1

    if-lez v0, :cond_0

    invoke-virtual {v1}, Lorg/bouncycastle/tsp/h;->i()Lorg/bouncycastle/tsp/j;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/tsp/j;->f()Lhi/b;

    move-result-object p2

    invoke-interface {p1, p2}, LQk/q;->a(Lhi/b;)LQk/p;

    move-result-object p2

    invoke-interface {p2}, LQk/p;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iget-object v3, p0, Lcm/f;->a:[Luh/a0;

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    const-string v4, "DER"

    invoke-virtual {v3, v4}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-interface {p2}, LQk/p;->b()[B

    move-result-object p2

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_1
    invoke-virtual {p0, v1, p2}, Lcm/f;->b(Lorg/bouncycastle/tsp/h;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :goto_2
    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot create digest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :goto_3
    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception calculating hash: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :cond_1
    return-void
.end method

.method public l(LQk/q;[BLorg/bouncycastle/tsp/h;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/cms/ImprintDigestInvalidException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p3}, Lorg/bouncycastle/tsp/h;->d()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcm/f;->a:[Luh/a0;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    :try_start_1
    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lcm/f;->g(Luh/a0;)Lorg/bouncycastle/tsp/h;

    move-result-object v2

    if-lez v1, :cond_0

    invoke-virtual {v2}, Lorg/bouncycastle/tsp/h;->i()Lorg/bouncycastle/tsp/j;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/tsp/j;->f()Lhi/b;

    move-result-object p2

    invoke-interface {p1, p2}, LQk/q;->a(Lhi/b;)LQk/p;

    move-result-object p2

    invoke-interface {p2}, LQk/p;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iget-object v4, p0, Lcm/f;->a:[Luh/a0;

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    const-string v5, "DER"

    invoke-virtual {v4, v5}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-interface {p2}, LQk/p;->b()[B

    move-result-object p2

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_1
    invoke-virtual {p0, v2, p2}, Lcm/f;->b(Lorg/bouncycastle/tsp/h;[B)V

    invoke-virtual {v2}, Lorg/bouncycastle/tsp/h;->d()[B

    move-result-object v2

    invoke-static {v2, v0}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_1

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_2
    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot create digest: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :goto_3
    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception calculating hash: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :cond_2
    new-instance p1, Lorg/bouncycastle/tsp/cms/ImprintDigestInvalidException;

    const-string p2, "passed in token not associated with timestamps present"

    invoke-direct {p1, p2, p3}, Lorg/bouncycastle/tsp/cms/ImprintDigestInvalidException;-><init>(Ljava/lang/String;Lorg/bouncycastle/tsp/h;)V

    throw p1

    :catch_2
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception encoding timeStampToken: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method
