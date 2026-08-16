.class public Lwi/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvi/c;


# instance fields
.field public a:Lli/i;

.field public b:Lfi/d;

.field public c:Lhi/h0;

.field public d:Lhi/b;


# direct methods
.method public constructor <init>(Lli/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwi/f;->a:Lli/i;

    return-void
.end method


# virtual methods
.method public final a(Loh/g;)Z
    .locals 0

    if-eqz p1, :cond_1

    instance-of p1, p1, Loh/t;

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

.method public copy()Lorg/bouncycastle/util/n;
    .locals 2

    new-instance v0, Lwi/f;

    iget-object v1, p0, Lwi/f;->a:Lli/i;

    invoke-direct {v0, v1}, Lwi/f;-><init>(Lli/i;)V

    iget-object v1, p0, Lwi/f;->d:Lhi/b;

    iput-object v1, v0, Lwi/f;->d:Lhi/b;

    iget-object v1, p0, Lwi/f;->b:Lfi/d;

    iput-object v1, v0, Lwi/f;->b:Lfi/d;

    iget-object v1, p0, Lwi/f;->c:Lhi/h0;

    iput-object v1, v0, Lwi/f;->c:Lhi/h0;

    return-object v0
.end method

.method public g(Lvi/d;Lli/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/path/CertPathValidationException;
        }
    .end annotation

    iget-object p1, p0, Lwi/f;->b:Lfi/d;

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lli/h;->e()Lfi/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfi/d;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/cert/path/CertPathValidationException;

    const-string p2, "Certificate issue does not match parent"

    invoke-direct {p1, p2}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lwi/f;->c:Lhi/h0;

    if-eqz p1, :cond_4

    :try_start_0
    invoke-virtual {p1}, Lhi/h0;->u()Lhi/b;

    move-result-object p1

    iget-object v0, p0, Lwi/f;->d:Lhi/b;

    invoke-virtual {p1, v0}, Loh/v;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lwi/f;->c:Lhi/h0;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    goto :goto_4

    :cond_2
    new-instance p1, Lhi/h0;

    iget-object v0, p0, Lwi/f;->d:Lhi/b;

    iget-object v1, p0, Lwi/f;->c:Lhi/h0;

    invoke-virtual {v1}, Lhi/h0;->A()Loh/B;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lhi/h0;-><init>(Lhi/b;Loh/g;)V

    :goto_1
    iget-object v0, p0, Lwi/f;->a:Lli/i;

    invoke-interface {v0, p1}, Lli/i;->a(Lhi/h0;)LQk/h;

    move-result-object p1

    invoke-virtual {p2, p1}, Lli/h;->s(LQk/h;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_5

    :cond_3
    new-instance p1, Lorg/bouncycastle/cert/path/CertPathValidationException;

    const-string p2, "Certificate signature not for public key in parent"

    invoke-direct {p1, p2}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/bouncycastle/cert/CertException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    new-instance p2, Lorg/bouncycastle/cert/path/CertPathValidationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to build public key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :goto_3
    new-instance p2, Lorg/bouncycastle/cert/path/CertPathValidationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to validate signature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :goto_4
    new-instance p2, Lorg/bouncycastle/cert/path/CertPathValidationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create verifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :cond_4
    :goto_5
    invoke-virtual {p2}, Lli/h;->l()Lfi/d;

    move-result-object p1

    iput-object p1, p0, Lwi/f;->b:Lfi/d;

    invoke-virtual {p2}, Lli/h;->m()Lhi/h0;

    move-result-object p1

    iput-object p1, p0, Lwi/f;->c:Lhi/h0;

    iget-object p2, p0, Lwi/f;->d:Lhi/b;

    invoke-virtual {p1}, Lhi/h0;->u()Lhi/b;

    move-result-object p1

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object p1

    iget-object p2, p0, Lwi/f;->d:Lhi/b;

    invoke-virtual {p2}, Lhi/b;->u()Loh/x;

    move-result-object p2

    invoke-virtual {p1, p2}, Loh/B;->A(Loh/B;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lwi/f;->c:Lhi/h0;

    invoke-virtual {p1}, Lhi/h0;->u()Lhi/b;

    move-result-object p1

    invoke-virtual {p1}, Lhi/b;->x()Loh/g;

    move-result-object p1

    invoke-virtual {p0, p1}, Lwi/f;->a(Loh/g;)Z

    move-result p1

    if-nez p1, :cond_7

    :cond_5
    iget-object p1, p0, Lwi/f;->c:Lhi/h0;

    invoke-virtual {p1}, Lhi/h0;->u()Lhi/b;

    move-result-object p1

    :cond_6
    iput-object p1, p0, Lwi/f;->d:Lhi/b;

    :cond_7
    return-void
.end method

.method public j(Lorg/bouncycastle/util/n;)V
    .locals 1

    check-cast p1, Lwi/f;

    iget-object v0, p1, Lwi/f;->a:Lli/i;

    iput-object v0, p0, Lwi/f;->a:Lli/i;

    iget-object v0, p1, Lwi/f;->d:Lhi/b;

    iput-object v0, p0, Lwi/f;->d:Lhi/b;

    iget-object v0, p1, Lwi/f;->b:Lfi/d;

    iput-object v0, p0, Lwi/f;->b:Lfi/d;

    iget-object p1, p1, Lwi/f;->c:Lhi/h0;

    iput-object p1, p0, Lwi/f;->c:Lhi/h0;

    return-void
.end method
