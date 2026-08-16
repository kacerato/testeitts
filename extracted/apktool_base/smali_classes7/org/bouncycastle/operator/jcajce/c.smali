.class public Lorg/bouncycastle/operator/jcajce/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/operator/jcajce/c$c;,
        Lorg/bouncycastle/operator/jcajce/c$d;,
        Lorg/bouncycastle/operator/jcajce/c$e;
    }
.end annotation


# instance fields
.field public a:Lorg/bouncycastle/operator/jcajce/OperatorHelper;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Ldk/d;

    invoke-direct {v1}, Ldk/d;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Ldk/f;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/c;->a:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    return-void
.end method

.method public static synthetic a(Lorg/bouncycastle/operator/jcajce/c;Lhi/b;Ljava/security/PublicKey;)LQk/g;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/operator/jcajce/c;->i(Lhi/b;Ljava/security/PublicKey;)LQk/g;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/bouncycastle/operator/jcajce/c;)Lorg/bouncycastle/operator/jcajce/OperatorHelper;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/operator/jcajce/c;->a:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public static synthetic c(Lorg/bouncycastle/operator/jcajce/c;Lhi/b;Ljava/security/PublicKey;)Ljava/security/Signature;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/operator/jcajce/c;->j(Lhi/b;Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/bouncycastle/operator/jcajce/c;Lhi/b;Ljava/security/PublicKey;)Ljava/security/Signature;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/operator/jcajce/c;->k(Lhi/b;Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public e(Lhi/h0;)LQk/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/c;->a:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->b(Lhi/h0;)Ljava/security/PublicKey;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/operator/jcajce/c;->f(Ljava/security/PublicKey;)LQk/h;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/security/PublicKey;)LQk/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/operator/jcajce/c$b;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/operator/jcajce/c$b;-><init>(Lorg/bouncycastle/operator/jcajce/c;Ljava/security/PublicKey;)V

    return-object v0
.end method

.method public g(Ljava/security/cert/X509Certificate;)LQk/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/bouncycastle/cert/jcajce/i;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cert/jcajce/i;-><init>(Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lorg/bouncycastle/operator/jcajce/c$a;

    invoke-direct {v1, p0, v0, p1}, Lorg/bouncycastle/operator/jcajce/c$a;-><init>(Lorg/bouncycastle/operator/jcajce/c;Lli/h;Ljava/security/cert/X509Certificate;)V

    return-object v1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/operator/OperatorCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot process certificate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public h(Lli/h;)LQk/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/c;->a:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->a(Lli/h;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/operator/jcajce/c;->g(Ljava/security/cert/X509Certificate;)LQk/h;

    move-result-object p1

    return-object p1
.end method

.method public final i(Lhi/b;Ljava/security/PublicKey;)LQk/g;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    instance-of v0, p2, LHj/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, LHj/e;

    invoke-virtual {p2}, LHj/e;->b()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Lhi/b;->x()Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p1

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/Signature;

    :goto_0
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/PublicKey;

    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/operator/jcajce/c;->k(Lhi/b;Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_1

    :cond_0
    aput-object v1, v0, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/bouncycastle/operator/jcajce/c$c;

    invoke-direct {p1, v0}, Lorg/bouncycastle/operator/jcajce/c$c;-><init>([Ljava/security/Signature;)V

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lhi/b;->x()Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p1

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/Signature;

    :goto_2
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v3

    :try_start_0
    invoke-virtual {p0, v3, p2}, Lorg/bouncycastle/operator/jcajce/c;->k(Lhi/b;Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object v3

    aput-object v3, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    aput-object v1, v0, v2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    new-instance p1, Lorg/bouncycastle/operator/jcajce/c$c;

    invoke-direct {p1, v0}, Lorg/bouncycastle/operator/jcajce/c$c;-><init>([Ljava/security/Signature;)V

    return-object p1
.end method

.method public final j(Lhi/b;Ljava/security/PublicKey;)Ljava/security/Signature;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/c;->a:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->i(Lhi/b;)Ljava/security/Signature;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :cond_0
    :goto_0
    return-object p1
.end method

.method public final k(Lhi/b;Ljava/security/PublicKey;)Ljava/security/Signature;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/c;->a:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->j(Lhi/b;)Ljava/security/Signature;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/operator/OperatorCreationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception on setup: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public l(Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/c;
    .locals 2

    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Ldk/i;

    invoke-direct {v1, p1}, Ldk/i;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Ldk/f;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/c;->a:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public m(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/c;
    .locals 2

    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Ldk/k;

    invoke-direct {v1, p1}, Ldk/k;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Ldk/f;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/c;->a:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method
