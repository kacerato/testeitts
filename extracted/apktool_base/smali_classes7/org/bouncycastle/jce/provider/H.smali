.class public Lorg/bouncycastle/jce/provider/H;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lhi/U;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lhi/U;

    invoke-direct {v0}, Lhi/U;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/H;->a:Lhi/U;

    return-void
.end method


# virtual methods
.method public a(Lhi/H;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/H;->a:Lhi/U;

    invoke-virtual {v0, p1}, Lhi/U;->e(Lhi/H;)V

    return-void
.end method

.method public b(Lhi/E;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/H;->a:Lhi/U;

    invoke-virtual {v0, p1}, Lhi/U;->d(Lhi/E;)V
    :try_end_0
    .catch Lorg/bouncycastle/asn1/x509/NameConstraintValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public c(Loh/E;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/H;->a:Lhi/U;

    invoke-static {p1}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lhi/U;->h(Lfi/d;)V
    :try_end_0
    .catch Lorg/bouncycastle/asn1/x509/NameConstraintValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public d(Lhi/E;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/H;->a:Lhi/U;

    invoke-virtual {v0, p1}, Lhi/U;->f(Lhi/E;)V
    :try_end_0
    .catch Lorg/bouncycastle/asn1/x509/NameConstraintValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public e(Loh/E;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/H;->a:Lhi/U;

    invoke-static {p1}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lhi/U;->o(Lfi/d;)V
    :try_end_0
    .catch Lorg/bouncycastle/asn1/x509/NameConstraintValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/jce/provider/H;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lorg/bouncycastle/jce/provider/H;

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/H;->a:Lhi/U;

    iget-object p1, p1, Lorg/bouncycastle/jce/provider/H;->a:Lhi/U;

    invoke-virtual {v0, p1}, Lhi/U;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(I)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/H;->a:Lhi/U;

    invoke-virtual {v0, p1}, Lhi/U;->c(I)V

    return-void
.end method

.method public g(Lhi/H;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/H;->a:Lhi/U;

    invoke-virtual {v0, p1}, Lhi/U;->a(Lhi/H;)V

    return-void
.end method

.method public h([Lhi/H;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/H;->a:Lhi/U;

    invoke-virtual {v0, p1}, Lhi/U;->b([Lhi/H;)V

    return-void
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/H;->a:Lhi/U;

    invoke-virtual {v0}, Lhi/U;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/H;->a:Lhi/U;

    invoke-virtual {v0}, Lhi/U;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
