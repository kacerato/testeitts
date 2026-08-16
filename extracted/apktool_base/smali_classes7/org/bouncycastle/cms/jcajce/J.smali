.class public abstract Lorg/bouncycastle/cms/jcajce/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/p0;


# instance fields
.field public c:Ljava/security/PrivateKey;

.field public d:Lorg/bouncycastle/cms/jcajce/c;

.field public e:Lorg/bouncycastle/cms/jcajce/c;

.field public f:Ljava/util/Map;

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/cms/jcajce/c;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/b;

    invoke-direct {v1}, Lorg/bouncycastle/cms/jcajce/b;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/c;-><init>(Lorg/bouncycastle/cms/jcajce/d;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/J;->d:Lorg/bouncycastle/cms/jcajce/c;

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/J;->e:Lorg/bouncycastle/cms/jcajce/c;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/J;->f:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/cms/jcajce/J;->g:Z

    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/a;->a(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/J;->c:Ljava/security/PrivateKey;

    return-void
.end method


# virtual methods
.method public g(Lhi/b;Lhi/b;[B)Ljava/security/Key;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cms/jcajce/a;->l(Loh/x;)Z

    move-result v0

    const-string v1, "exception unwrapping key: "

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p3}, Lyh/j;->u(Ljava/lang/Object;)Lyh/j;

    move-result-object p3

    invoke-virtual {p3}, Lyh/j;->x()Lyh/k;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/cms/jcajce/J;->d:Lorg/bouncycastle/cms/jcajce/c;

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/cms/jcajce/c;->k(Loh/x;)Ljava/security/KeyFactory;

    move-result-object v2

    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v0}, Lyh/k;->v()Lhi/h0;

    move-result-object v4

    invoke-virtual {v4}, Loh/v;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/J;->d:Lorg/bouncycastle/cms/jcajce/c;

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/bouncycastle/cms/jcajce/c;->j(Loh/x;)Ljavax/crypto/KeyAgreement;

    move-result-object p1

    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/J;->c:Ljava/security/PrivateKey;

    new-instance v4, Lck/D;

    invoke-virtual {v0}, Lyh/k;->y()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lck/D;-><init>([B)V

    invoke-virtual {p1, v3, v4}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    sget-object v2, Lyh/a;->e:Loh/x;

    invoke-virtual {v2}, Loh/x;->J()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljavax/crypto/KeyAgreement;->generateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p1

    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/J;->d:Lorg/bouncycastle/cms/jcajce/c;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/cms/jcajce/c;->f(Loh/x;)Ljavax/crypto/Cipher;

    move-result-object v2

    new-instance v3, Lck/k;

    invoke-virtual {v0}, Lyh/k;->u()Loh/x;

    move-result-object v4

    invoke-virtual {v0}, Lyh/k;->y()[B

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lck/k;-><init>(Loh/x;[B)V

    const/4 v0, 0x4

    invoke-virtual {v2, v0, p1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p3}, Lyh/j;->v()Lyh/h;

    move-result-object p1

    invoke-virtual {p1}, Lyh/h;->u()[B

    move-result-object p3

    invoke-virtual {p1}, Lyh/h;->x()[B

    move-result-object p1

    invoke-static {p3, p1}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object p1

    iget-object p3, p0, Lorg/bouncycastle/cms/jcajce/J;->d:Lorg/bouncycastle/cms/jcajce/c;

    invoke-virtual {p2}, Lhi/b;->u()Loh/x;

    move-result-object p2

    invoke-virtual {p3, p2}, Lorg/bouncycastle/cms/jcajce/c;->v(Loh/x;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x3

    invoke-virtual {v2, p1, p2, p3}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :cond_0
    sget-object v0, Luh/l;->H8:Loh/x;

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object v2

    invoke-virtual {v0, v2}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lhi/b;->x()Loh/g;

    move-result-object p1

    invoke-static {p1}, Luh/C;->v(Ljava/lang/Object;)Luh/C;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/J;->d:Lorg/bouncycastle/cms/jcajce/c;

    invoke-virtual {p1}, Luh/C;->y()Lhi/b;

    move-result-object p1

    iget-object v2, p0, Lorg/bouncycastle/cms/jcajce/J;->c:Ljava/security/PrivateKey;

    invoke-virtual {v0, p1, v2}, Lorg/bouncycastle/cms/jcajce/c;->d(Lhi/b;Ljava/security/PrivateKey;)Lorg/bouncycastle/operator/jcajce/e;

    move-result-object p1

    iget-boolean v0, p0, Lorg/bouncycastle/cms/jcajce/J;->h:Z

    invoke-virtual {p1, v0}, Lorg/bouncycastle/operator/jcajce/e;->d(Z)Lorg/bouncycastle/operator/jcajce/e;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/J;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/J;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loh/x;

    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/J;->f:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/bouncycastle/operator/jcajce/e;->c(Loh/x;Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/e;

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/J;->d:Lorg/bouncycastle/cms/jcajce/c;

    invoke-virtual {p1, p2, p3}, Lorg/bouncycastle/operator/jcajce/e;->b(Lhi/b;[B)LQk/r;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lorg/bouncycastle/cms/jcajce/c;->x(Lhi/b;LQk/r;)Ljava/security/Key;

    move-result-object p1

    iget-boolean p3, p0, Lorg/bouncycastle/cms/jcajce/J;->g:Z

    if-eqz p3, :cond_2

    iget-object p3, p0, Lorg/bouncycastle/cms/jcajce/J;->d:Lorg/bouncycastle/cms/jcajce/c;

    invoke-virtual {p3, p2, p1}, Lorg/bouncycastle/cms/jcajce/c;->A(Lhi/b;Ljava/security/Key;)V
    :try_end_1
    .catch Lorg/bouncycastle/operator/OperatorException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    return-object p1

    :goto_2
    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/J;->d:Lorg/bouncycastle/cms/jcajce/c;

    iget-object v2, p0, Lorg/bouncycastle/cms/jcajce/J;->c:Ljava/security/PrivateKey;

    invoke-virtual {v0, p1, v2}, Lorg/bouncycastle/cms/jcajce/c;->d(Lhi/b;Ljava/security/PrivateKey;)Lorg/bouncycastle/operator/jcajce/e;

    move-result-object p1

    iget-boolean v0, p0, Lorg/bouncycastle/cms/jcajce/J;->h:Z

    invoke-virtual {p1, v0}, Lorg/bouncycastle/operator/jcajce/e;->d(Z)Lorg/bouncycastle/operator/jcajce/e;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/J;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/J;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loh/x;

    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/J;->f:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/bouncycastle/operator/jcajce/e;->c(Loh/x;Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/e;

    goto :goto_3

    :cond_4
    :try_start_2
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/J;->d:Lorg/bouncycastle/cms/jcajce/c;

    invoke-virtual {p1, p2, p3}, Lorg/bouncycastle/operator/jcajce/e;->b(Lhi/b;[B)LQk/r;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lorg/bouncycastle/cms/jcajce/c;->x(Lhi/b;LQk/r;)Ljava/security/Key;

    move-result-object p1

    iget-boolean v0, p0, Lorg/bouncycastle/cms/jcajce/J;->g:Z

    if-eqz v0, :cond_6

    sget-object v0, Luh/l;->I8:Loh/x;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    iget-object p3, p0, Lorg/bouncycastle/cms/jcajce/J;->d:Lorg/bouncycastle/cms/jcajce/c;

    invoke-virtual {p2}, Lhi/b;->x()Loh/g;

    move-result-object p2

    invoke-static {p2}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object p2

    :goto_4
    invoke-virtual {p3, p2, p1}, Lorg/bouncycastle/cms/jcajce/c;->A(Lhi/b;Ljava/security/Key;)V

    goto :goto_5

    :catch_2
    move-exception p1

    goto :goto_6

    :cond_5
    iget-object p3, p0, Lorg/bouncycastle/cms/jcajce/J;->d:Lorg/bouncycastle/cms/jcajce/c;
    :try_end_2
    .catch Lorg/bouncycastle/operator/OperatorException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :cond_6
    :goto_5
    return-object p1

    :goto_6
    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public h(Loh/x;Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/J;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/J;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public i(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/J;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/a;->c(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/c;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/J;->e:Lorg/bouncycastle/cms/jcajce/c;

    return-object p0
.end method

.method public j(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/J;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/a;->d(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/c;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/J;->e:Lorg/bouncycastle/cms/jcajce/c;

    return-object p0
.end method

.method public k(Z)Lorg/bouncycastle/cms/jcajce/J;
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/cms/jcajce/J;->g:Z

    return-object p0
.end method

.method public l(Z)Lorg/bouncycastle/cms/jcajce/J;
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/cms/jcajce/J;->h:Z

    return-object p0
.end method

.method public m(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/J;
    .locals 2

    new-instance v0, Lorg/bouncycastle/cms/jcajce/c;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/S;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cms/jcajce/S;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/c;-><init>(Lorg/bouncycastle/cms/jcajce/d;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/J;->d:Lorg/bouncycastle/cms/jcajce/c;

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/J;->e:Lorg/bouncycastle/cms/jcajce/c;

    return-object p0
.end method

.method public n(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/J;
    .locals 2

    new-instance v0, Lorg/bouncycastle/cms/jcajce/c;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/T;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cms/jcajce/T;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/c;-><init>(Lorg/bouncycastle/cms/jcajce/d;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/J;->d:Lorg/bouncycastle/cms/jcajce/c;

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/J;->e:Lorg/bouncycastle/cms/jcajce/c;

    return-object p0
.end method
