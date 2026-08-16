.class public Lwi/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvi/c;


# instance fields
.field public a:Lorg/bouncycastle/util/t;

.field public b:Lfi/d;


# direct methods
.method public constructor <init>(Lfi/d;Lorg/bouncycastle/util/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwi/b;->b:Lfi/d;

    iput-object p2, p0, Lwi/b;->a:Lorg/bouncycastle/util/t;

    return-void
.end method

.method public static synthetic a(Lwi/b;)Lfi/d;
    .locals 0

    iget-object p0, p0, Lwi/b;->b:Lfi/d;

    return-object p0
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/n;
    .locals 3

    new-instance v0, Lwi/b;

    iget-object v1, p0, Lwi/b;->b:Lfi/d;

    iget-object v2, p0, Lwi/b;->a:Lorg/bouncycastle/util/t;

    invoke-direct {v0, v1, v2}, Lwi/b;-><init>(Lfi/d;Lorg/bouncycastle/util/t;)V

    return-object v0
.end method

.method public g(Lvi/d;Lli/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/path/CertPathValidationException;
        }
    .end annotation

    iget-object p1, p0, Lwi/b;->a:Lorg/bouncycastle/util/t;

    new-instance v0, Lwi/b$a;

    invoke-direct {v0, p0}, Lwi/b$a;-><init>(Lwi/b;)V

    invoke-interface {p1, v0}, Lorg/bouncycastle/util/t;->a(Lorg/bouncycastle/util/r;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lli/g;

    invoke-virtual {p2}, Lli/h;->i()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lli/g;->h(Ljava/math/BigInteger;)Lli/f;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/cert/path/CertPathValidationException;

    const-string p2, "Certificate revoked"

    invoke-direct {p1, p2}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p2}, Lli/h;->l()Lfi/d;

    move-result-object p1

    iput-object p1, p0, Lwi/b;->b:Lfi/d;

    return-void

    :cond_2
    new-instance p1, Lorg/bouncycastle/cert/path/CertPathValidationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CRL for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lwi/b;->b:Lfi/d;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not found"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j(Lorg/bouncycastle/util/n;)V
    .locals 1

    check-cast p1, Lwi/b;

    iget-object v0, p1, Lwi/b;->b:Lfi/d;

    iput-object v0, p0, Lwi/b;->b:Lfi/d;

    iget-object p1, p1, Lwi/b;->a:Lorg/bouncycastle/util/t;

    iput-object p1, p0, Lwi/b;->a:Lorg/bouncycastle/util/t;

    return-void
.end method
