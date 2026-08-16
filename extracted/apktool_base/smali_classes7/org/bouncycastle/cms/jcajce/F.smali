.class public Lorg/bouncycastle/cms/jcajce/F;
.super Lorg/bouncycastle/cms/n0;
.source "SourceFile"


# static fields
.field public static m:Lorg/bouncycastle/cms/jcajce/Q;


# instance fields
.field public d:LQk/I;

.field public e:Ljava/util/List;

.field public f:Ljava/util/List;

.field public g:Ljava/security/PublicKey;

.field public h:Ljava/security/PrivateKey;

.field public i:Lorg/bouncycastle/cms/jcajce/c;

.field public j:Ljava/security/SecureRandom;

.field public k:Ljava/security/KeyPair;

.field public l:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/cms/jcajce/U;

    invoke-direct {v0}, Lorg/bouncycastle/cms/jcajce/U;-><init>()V

    sput-object v0, Lorg/bouncycastle/cms/jcajce/F;->m:Lorg/bouncycastle/cms/jcajce/Q;

    return-void
.end method

.method public constructor <init>(Loh/x;Ljava/security/PrivateKey;Ljava/security/PublicKey;Loh/x;)V
    .locals 1

    invoke-interface {p3}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, Lorg/bouncycastle/cms/n0;-><init>(Loh/x;Lhi/h0;Loh/x;)V

    new-instance p1, LQk/l;

    invoke-direct {p1}, LQk/l;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/F;->d:LQk/I;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/F;->e:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/F;->f:Ljava/util/List;

    new-instance p1, Lorg/bouncycastle/cms/jcajce/c;

    new-instance p4, Lorg/bouncycastle/cms/jcajce/b;

    invoke-direct {p4}, Lorg/bouncycastle/cms/jcajce/b;-><init>()V

    invoke-direct {p1, p4}, Lorg/bouncycastle/cms/jcajce/c;-><init>(Lorg/bouncycastle/cms/jcajce/d;)V

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/F;->i:Lorg/bouncycastle/cms/jcajce/c;

    iput-object p3, p0, Lorg/bouncycastle/cms/jcajce/F;->g:Ljava/security/PublicKey;

    invoke-static {p2}, Lorg/bouncycastle/cms/jcajce/a;->a(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/F;->h:Ljava/security/PrivateKey;

    return-void
.end method


# virtual methods
.method public c(Lhi/b;Lhi/b;LQk/r;)Loh/E;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/F;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/cms/jcajce/F;->g(Loh/x;)V

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/F;->h:Ljava/security/PrivateKey;

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object p1

    new-instance v1, Loh/h;

    invoke-direct {v1}, Loh/h;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/cms/jcajce/F;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_9

    iget-object v4, p0, Lorg/bouncycastle/cms/jcajce/F;->f:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/PublicKey;

    iget-object v5, p0, Lorg/bouncycastle/cms/jcajce/F;->e:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Luh/D;

    :try_start_0
    invoke-virtual {p2}, Lhi/b;->u()Loh/x;

    move-result-object v6

    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/a;->m(Loh/x;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Lck/s;

    iget-object v8, p0, Lorg/bouncycastle/cms/jcajce/F;->k:Ljava/security/KeyPair;

    iget-object v9, p0, Lorg/bouncycastle/cms/jcajce/F;->l:[B

    invoke-direct {v7, v8, v4, v9}, Lck/s;-><init>(Ljava/security/KeyPair;Ljava/security/PublicKey;[B)V

    goto :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_5

    :catch_1
    move-exception p1

    goto/16 :goto_6

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/a;->k(Loh/x;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lorg/bouncycastle/cms/jcajce/F;->m:Lorg/bouncycastle/cms/jcajce/Q;

    iget-object v8, p0, Lorg/bouncycastle/cms/jcajce/F;->d:LQk/I;

    invoke-interface {v8, v6}, LQk/I;->b(Loh/x;)I

    move-result v8

    iget-object v9, p0, Lorg/bouncycastle/cms/jcajce/F;->l:[B

    invoke-interface {v7, p2, v8, v9}, Lorg/bouncycastle/cms/jcajce/Q;->a(Lhi/b;I[B)[B

    move-result-object v7

    new-instance v8, Lck/D;

    invoke-direct {v8, v7}, Lck/D;-><init>([B)V

    :goto_1
    move-object v7, v8

    goto :goto_2

    :cond_1
    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/a;->n(Loh/x;)Z

    move-result v7
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "User keying material must be set for static keys."

    if-eqz v7, :cond_4

    :try_start_1
    iget-object v7, p0, Lorg/bouncycastle/cms/jcajce/F;->l:[B

    if-eqz v7, :cond_2

    new-instance v8, Lck/D;

    invoke-direct {v8, v7}, Lck/D;-><init>([B)V

    goto :goto_1

    :cond_2
    sget-object v7, LXh/t;->O2:Loh/x;

    invoke-virtual {p1, v7}, Loh/B;->A(Loh/B;)Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v7, 0x0

    goto :goto_2

    :cond_3
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    invoke-direct {p1, v8}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/a;->l(Loh/x;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lorg/bouncycastle/cms/jcajce/F;->l:[B

    if-eqz v7, :cond_7

    new-instance v8, Lck/D;

    invoke-direct {v8, v7}, Lck/D;-><init>([B)V

    goto :goto_1

    :goto_2
    iget-object v8, p0, Lorg/bouncycastle/cms/jcajce/F;->i:Lorg/bouncycastle/cms/jcajce/c;

    invoke-virtual {v8, p1}, Lorg/bouncycastle/cms/jcajce/c;->j(Loh/x;)Ljavax/crypto/KeyAgreement;

    move-result-object v8

    iget-object v9, p0, Lorg/bouncycastle/cms/jcajce/F;->j:Ljava/security/SecureRandom;

    invoke-virtual {v8, v0, v7, v9}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    const/4 v7, 0x1

    invoke-virtual {v8, v4, v7}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    invoke-virtual {v6}, Loh/x;->J()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljavax/crypto/KeyAgreement;->generateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v4

    iget-object v7, p0, Lorg/bouncycastle/cms/jcajce/F;->i:Lorg/bouncycastle/cms/jcajce/c;

    invoke-virtual {v7, v6}, Lorg/bouncycastle/cms/jcajce/c;->f(Loh/x;)Ljavax/crypto/Cipher;

    move-result-object v7

    sget-object v8, Lyh/a;->d:Loh/x;

    invoke-virtual {v6, v8}, Loh/B;->A(Loh/B;)Z

    move-result v8

    const/4 v9, 0x3

    if-nez v8, :cond_6

    sget-object v8, Lyh/a;->e:Loh/x;

    invoke-virtual {v6, v8}, Loh/B;->A(Loh/B;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    iget-object v6, p0, Lorg/bouncycastle/cms/jcajce/F;->j:Ljava/security/SecureRandom;

    invoke-virtual {v7, v9, v4, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    iget-object v4, p0, Lorg/bouncycastle/cms/jcajce/F;->i:Lorg/bouncycastle/cms/jcajce/c;

    invoke-virtual {v4, p3}, Lorg/bouncycastle/cms/jcajce/c;->w(LQk/r;)Ljava/security/Key;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v4

    new-instance v6, Loh/C0;

    invoke-direct {v6, v4}, Loh/C0;-><init>([B)V

    goto :goto_4

    :cond_6
    :goto_3
    new-instance v6, Lck/k;

    sget-object v8, Lyh/a;->h:Loh/x;

    iget-object v10, p0, Lorg/bouncycastle/cms/jcajce/F;->l:[B

    invoke-direct {v6, v8, v10}, Lck/k;-><init>(Loh/x;[B)V

    invoke-virtual {v7, v9, v4, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    iget-object v4, p0, Lorg/bouncycastle/cms/jcajce/F;->i:Lorg/bouncycastle/cms/jcajce/c;

    invoke-virtual {v4, p3}, Lorg/bouncycastle/cms/jcajce/c;->w(LQk/r;)Ljava/security/Key;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v4

    new-instance v6, Lyh/h;

    array-length v7, v4

    add-int/lit8 v7, v7, -0x4

    invoke-static {v4, v2, v7}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v7

    array-length v8, v4

    add-int/lit8 v8, v8, -0x4

    array-length v9, v4

    invoke-static {v4, v8, v9}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v4

    invoke-direct {v6, v7, v4}, Lyh/h;-><init>([B[B)V

    new-instance v4, Loh/C0;

    const-string v7, "DER"

    invoke-virtual {v6, v7}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v4, v6}, Loh/C0;-><init>([B)V

    move-object v6, v4

    :goto_4
    new-instance v4, Luh/O;

    invoke-direct {v4, v5, v6}, Luh/O;-><init>(Luh/D;Loh/y;)V

    invoke-virtual {v1, v4}, Loh/h;->a(Loh/g;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    invoke-direct {p1, v8}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown key agreement algorithm: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_5
    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unable to encode wrapped key: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :goto_6
    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot perform agreement step: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :cond_9
    new-instance p1, Loh/G0;

    invoke-direct {p1, v1}, Loh/G0;-><init>(Loh/h;)V

    return-object p1

    :cond_a
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    const-string p2, "No recipients associated with generator - use addRecipient()"

    invoke-direct {p1, p2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Lhi/b;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/cms/jcajce/F;->g(Loh/x;)V

    iget-object p1, p0, Lorg/bouncycastle/cms/jcajce/F;->k:Ljava/security/KeyPair;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/cms/n0;->b(Lhi/h0;)Luh/J;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/F;->l:[B

    if-eqz v0, :cond_0

    new-instance v0, Lvh/b;

    new-instance v1, Loh/C0;

    iget-object v2, p0, Lorg/bouncycastle/cms/jcajce/F;->l:[B

    invoke-direct {v1, v2}, Loh/C0;-><init>([B)V

    invoke-direct {v0, p1, v1}, Lvh/b;-><init>(Luh/J;Loh/y;)V

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance v0, Lvh/b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lvh/b;-><init>(Luh/J;Loh/y;)V

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_0
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to encode user keying material: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :cond_1
    iget-object p1, p0, Lorg/bouncycastle/cms/jcajce/F;->l:[B

    return-object p1
.end method

.method public e(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/cms/jcajce/F;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/F;->e:Ljava/util/List;

    new-instance v1, Luh/D;

    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/a;->f(Ljava/security/cert/X509Certificate;)Luh/z;

    move-result-object v2

    invoke-direct {v1, v2}, Luh/D;-><init>(Luh/z;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/F;->f:Ljava/util/List;

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public f([BLjava/security/PublicKey;)Lorg/bouncycastle/cms/jcajce/F;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/F;->e:Ljava/util/List;

    new-instance v1, Luh/D;

    new-instance v2, Luh/S;

    invoke-direct {v2, p1}, Luh/S;-><init>([B)V

    invoke-direct {v1, v2}, Luh/D;-><init>(Luh/S;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/bouncycastle/cms/jcajce/F;->f:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final g(Loh/x;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/F;->j:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/F;->j:Ljava/security/SecureRandom;

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/a;->m(Loh/x;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/F;->k:Ljava/security/KeyPair;

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/F;->g:Ljava/security/PublicKey;

    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/F;->i:Lorg/bouncycastle/cms/jcajce/c;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/cms/jcajce/c;->c(Loh/x;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    invoke-virtual {v0}, Lhi/h0;->u()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/AlgorithmParameters;->init([B)V

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/F;->i:Lorg/bouncycastle/cms/jcajce/c;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/jcajce/c;->m(Loh/x;)Ljava/security/KeyPairGenerator;

    move-result-object p1

    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v1, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/F;->j:Ljava/security/SecureRandom;

    invoke-virtual {p1, v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    invoke-virtual {p1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/F;->k:Ljava/security/KeyPair;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot determine MQV ephemeral key pair parameters from public key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public h(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/F;
    .locals 2

    new-instance v0, Lorg/bouncycastle/cms/jcajce/c;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/S;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cms/jcajce/S;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/c;-><init>(Lorg/bouncycastle/cms/jcajce/d;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/F;->i:Lorg/bouncycastle/cms/jcajce/c;

    return-object p0
.end method

.method public i(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/F;
    .locals 2

    new-instance v0, Lorg/bouncycastle/cms/jcajce/c;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/T;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cms/jcajce/T;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/c;-><init>(Lorg/bouncycastle/cms/jcajce/d;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/F;->i:Lorg/bouncycastle/cms/jcajce/c;

    return-object p0
.end method

.method public j(Ljava/security/SecureRandom;)Lorg/bouncycastle/cms/jcajce/F;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/F;->j:Ljava/security/SecureRandom;

    return-object p0
.end method

.method public k([B)Lorg/bouncycastle/cms/jcajce/F;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/F;->l:[B

    return-object p0
.end method
