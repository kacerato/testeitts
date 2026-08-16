.class public Lorg/bouncycastle/jce/provider/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LHj/q;


# instance fields
.field public final b:Ldk/f;

.field public c:LHj/r;

.field public d:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ldk/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/K;->d:Ljava/util/Date;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/K;->b:Ldk/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public b(LHj/r;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/K;->c:LHj/r;

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/K;->d:Ljava/util/Date;

    return-void
.end method

.method public c(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/K;->c:LHj/r;

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/K;->d:Ljava/util/Date;

    return-void

    :cond_0
    new-instance p1, Ljava/security/cert/CertPathValidatorException;

    const-string v0, "forward checking not supported"

    invoke-direct {p1, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public check(Ljava/security/cert/Certificate;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/K;->c:LHj/r;

    invoke-virtual {v0}, LHj/r;->c()LHj/v;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/K;->d:Ljava/util/Date;

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/K;->c:LHj/r;

    invoke-virtual {v3}, LHj/r;->e()Ljava/util/Date;

    move-result-object v3

    move-object v4, p1

    check-cast v4, Ljava/security/cert/X509Certificate;

    iget-object p1, p0, Lorg/bouncycastle/jce/provider/K;->c:LHj/r;

    invoke-virtual {p1}, LHj/r;->d()Ljava/security/cert/X509Certificate;

    move-result-object v5

    iget-object p1, p0, Lorg/bouncycastle/jce/provider/K;->c:LHj/r;

    invoke-virtual {p1}, LHj/r;->f()Ljava/security/PublicKey;

    move-result-object v6

    iget-object p1, p0, Lorg/bouncycastle/jce/provider/K;->c:LHj/r;

    invoke-virtual {p1}, LHj/r;->a()Ljava/security/cert/CertPath;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lorg/bouncycastle/jce/provider/K;->b:Ldk/f;

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/jce/provider/N;->b(LHj/r;LHj/v;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;Ldk/f;)V
    :try_end_0
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/K;->c:LHj/r;

    invoke-virtual {v2}, LHj/r;->a()Ljava/security/cert/CertPath;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/K;->c:LHj/r;

    invoke-virtual {v3}, LHj/r;->b()I

    move-result v3

    invoke-direct {v1, p1, v0, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1
.end method
