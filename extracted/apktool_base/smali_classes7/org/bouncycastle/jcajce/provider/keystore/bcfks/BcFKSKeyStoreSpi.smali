.class public Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;
.super Ljava/security/KeyStoreSpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$b;,
        Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$c;,
        Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$d;,
        Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$e;,
        Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;,
        Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$f;,
        Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$g;,
        Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$h;,
        Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$i;,
        Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$j;
    }
.end annotation


# static fields
.field public static final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Loh/x;",
            ">;"
        }
    .end annotation
.end field

.field public static final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Loh/x;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final o:Ljava/math/BigInteger;

.field public static final p:Ljava/math/BigInteger;

.field public static final q:Ljava/math/BigInteger;

.field public static final r:Ljava/math/BigInteger;

.field public static final s:Ljava/math/BigInteger;


# instance fields
.field public b:Ljava/security/PublicKey;

.field public c:LHj/a$c;

.field public final d:Ldk/f;

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lqh/g;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/PrivateKey;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lhi/b;

.field public h:LXh/m;

.field public i:Lhi/b;

.field public j:Ljava/util/Date;

.field public k:Ljava/util/Date;

.field public l:Loh/x;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->m:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->n:Ljava/util/Map;

    sget-object v2, LBj/b;->h:Loh/x;

    const-string v3, "DESEDE"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "TRIPLEDES"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "TDEA"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "HMACSHA1"

    sget-object v3, LXh/t;->w1:Loh/x;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "HMACSHA224"

    sget-object v3, LXh/t;->x1:Loh/x;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "HMACSHA256"

    sget-object v3, LXh/t;->z1:Loh/x;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "HMACSHA384"

    sget-object v3, LXh/t;->A1:Loh/x;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "HMACSHA512"

    sget-object v3, LXh/t;->B1:Loh/x;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SEED"

    sget-object v3, Lwj/a;->a:Loh/x;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "CAMELLIA.128"

    sget-object v3, LAj/a;->a:Loh/x;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "CAMELLIA.192"

    sget-object v3, LAj/a;->b:Loh/x;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "CAMELLIA.256"

    sget-object v3, LAj/a;->c:Loh/x;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ARIA.128"

    sget-object v3, Lzj/a;->h:Loh/x;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ARIA.192"

    sget-object v3, Lzj/a;->m:Loh/x;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ARIA.256"

    sget-object v3, Lzj/a;->r:Loh/x;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LXh/t;->H0:Loh/x;

    const-string v2, "RSA"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lki/r;->I5:Loh/x;

    const-string v2, "EC"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LBj/b;->l:Loh/x;

    const-string v2, "DH"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LXh/t;->Y0:Loh/x;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lki/r;->s6:Loh/x;

    const-string v2, "DSA"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->o:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->p:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->q:Ljava/math/BigInteger;

    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->r:Ljava/math/BigInteger;

    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->s:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Ldk/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->f:Ljava/util/Map;

    sget-object v0, LSh/d;->V:Loh/x;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->l:Loh/x;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->d:Ldk/f;

    return-void
.end method

.method public static n(Loh/x;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->n:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Loh/x;->J()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a([BLhi/b;LXh/m;[C)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    invoke-virtual {p2}, Lhi/b;->u()Loh/x;

    move-result-object p2

    invoke-virtual {p2}, Loh/x;->J()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->d:Ldk/f;

    invoke-interface {v0, p2}, Ldk/f;->w(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "INTEGRITY_CHECK"

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    new-array p4, p4, [C

    :goto_0
    const/4 v3, -0x1

    invoke-virtual {p0, p3, v2, p4, v3}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->g(LXh/m;Ljava/lang/String;[CI)[B

    move-result-object p3

    invoke-direct {v1, p3, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Cannot set up MAC calculation: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final b(Ljava/lang/String;[B)Ljavax/crypto/Cipher;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->d:Ldk/f;

    invoke-interface {v0, p1}, Ldk/f;->e(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    return-object p1
.end method

.method public final c(LXh/j;[Ljava/security/cert/Certificate;)Lqh/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    array-length v0, p2

    new-array v0, v0, [Lhi/q;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-eq v1, v2, :cond_0

    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lhi/q;->v(Ljava/lang/Object;)Lhi/q;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Lqh/c;

    invoke-direct {p2, p1, v0}, Lqh/c;-><init>(LXh/j;[Lhi/q;)V

    return-object p2
.end method

.method public final d(Ljava/lang/Object;)Ljava/security/cert/Certificate;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->d:Ldk/f;

    const/4 v1, 0x0

    const-string v2, "X.509"

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, v2}, Ldk/f;->r(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-static {p1}, Lhi/q;->v(Ljava/lang/Object;)Lhi/q;

    move-result-object p1

    invoke-virtual {p1}, Loh/v;->getEncoded()[B

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1

    :cond_0
    :try_start_1
    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-static {p1}, Lhi/q;->v(Ljava/lang/Object;)Lhi/q;

    move-result-object p1

    invoke-virtual {p1}, Loh/v;->getEncoded()[B

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    return-object v1
.end method

.method public final e(Ljava/lang/String;Lhi/b;[C[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lhi/b;->u()Loh/x;

    move-result-object v0

    sget-object v1, LXh/t;->j1:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lhi/b;->x()Loh/g;

    move-result-object p2

    invoke-static {p2}, LXh/p;->v(Ljava/lang/Object;)LXh/p;

    move-result-object p2

    invoke-virtual {p2}, LXh/p;->u()LXh/k;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, LXh/k;->u()Loh/x;

    move-result-object v1

    sget-object v2, LSh/d;->V:Loh/x;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->d:Ldk/f;

    const-string v2, "AES/CCM/NoPadding"

    invoke-interface {v1, v2}, Ldk/f;->e(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->d:Ldk/f;

    const-string v3, "CCM"

    invoke-interface {v2, v3}, Ldk/f;->l(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    invoke-virtual {v0}, LXh/k;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, Lnj/a;->v(Ljava/lang/Object;)Lnj/a;

    move-result-object v0

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/AlgorithmParameters;->init([B)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_0
    invoke-virtual {v0}, LXh/k;->u()Loh/x;

    move-result-object v0

    sget-object v1, LSh/d;->W:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->d:Ldk/f;

    const-string v1, "AESKWP"

    invoke-interface {v0, v1}, Ldk/f;->e(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2}, LXh/p;->x()LXh/m;

    move-result-object p2

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    new-array p3, p3, [C

    :goto_1
    const/16 v0, 0x20

    invoke-virtual {p0, p2, p1, p3, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->g(LXh/m;Ljava/lang/String;[CI)[B

    move-result-object p1

    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    const-string p3, "AES"

    invoke-direct {p2, p1, p3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 p1, 0x2

    invoke-virtual {v1, p1, p2, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    invoke-virtual {v1, p4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "BCFKS KeyStore cannot recognize protection encryption algorithm."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :goto_3
    throw p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "BCFKS KeyStore cannot recognize protection algorithm."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineAliases()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$a;

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$a;-><init>(Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "alias value is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqh/g;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->k:Ljava/util/Date;

    return-void
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lqh/g;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lqh/g;->B()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->p:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lqh/g;->B()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->r:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lqh/g;->B()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->o:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lqh/g;->x()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->d(Ljava/lang/Object;)Ljava/security/cert/Certificate;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lqh/g;->x()[B

    move-result-object p1

    invoke-static {p1}, Lqh/c;->w(Ljava/lang/Object;)Lqh/c;

    move-result-object p1

    invoke-virtual {p1}, Lqh/c;->u()[Lhi/q;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->d(Ljava/lang/Object;)Ljava/security/cert/Certificate;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->e:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lqh/g;

    invoke-virtual {v3}, Lqh/g;->B()Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->o:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lqh/g;->x()[B

    move-result-object v3

    invoke-static {v3, p1}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    invoke-virtual {v3}, Lqh/g;->B()Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->p:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lqh/g;->B()Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->r:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_3
    :try_start_1
    invoke-virtual {v3}, Lqh/g;->x()[B

    move-result-object v3

    invoke-static {v3}, Lqh/c;->w(Ljava/lang/Object;)Lqh/c;

    move-result-object v3

    invoke-virtual {v3}, Lqh/c;->u()[Lhi/q;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lhi/q;->r()Loh/B;

    move-result-object v3

    invoke-virtual {v3}, Loh/v;->getEncoded()[B

    move-result-object v3

    invoke-static {v3, p1}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_1

    return-object v2

    :catch_1
    :cond_4
    return-object v0
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lqh/g;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lqh/g;->B()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->p:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lqh/g;->B()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->r:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Lqh/g;->x()[B

    move-result-object p1

    invoke-static {p1}, Lqh/c;->w(Ljava/lang/Object;)Lqh/c;

    move-result-object p1

    invoke-virtual {p1}, Lqh/c;->u()[Lhi/q;

    move-result-object p1

    array-length v0, p1

    new-array v1, v0, [Ljava/security/cert/X509Certificate;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->d(Ljava/lang/Object;)Ljava/security/cert/Certificate;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lqh/g;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lqh/g;->A()Loh/n;

    move-result-object p1

    invoke-virtual {p1}, Loh/n;->I()Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqh/g;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lqh/g;->B()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->p:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "): "

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lqh/g;->B()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v3, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->r:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0}, Lqh/g;->B()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v3, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->q:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "BCFKS KeyStore unable to recover secret key ("

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lqh/g;->B()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v4, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->s:Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/security/UnrecoverableKeyException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): type not recognized"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_0
    invoke-virtual {v0}, Lqh/g;->x()[B

    move-result-object v0

    invoke-static {v0}, Lqh/d;->v(Ljava/lang/Object;)Lqh/d;

    move-result-object v0

    :try_start_0
    const-string v1, "SECRET_KEY_ENCRYPTION"

    invoke-virtual {v0}, Lqh/d;->x()Lhi/b;

    move-result-object v4

    invoke-virtual {v0}, Lqh/d;->u()[B

    move-result-object v0

    invoke-virtual {p0, v1, v4, p2, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->e(Ljava/lang/String;Lhi/b;[C[B)[B

    move-result-object p2

    invoke-static {p2}, Lqh/m;->u(Ljava/lang/Object;)Lqh/m;

    move-result-object p2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->d:Ldk/f;

    invoke-virtual {p2}, Lqh/m;->v()Loh/x;

    move-result-object v1

    invoke-virtual {v1}, Loh/x;->J()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ldk/f;->s(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lqh/m;->x()[B

    move-result-object v4

    invoke-virtual {p2}, Lqh/m;->v()Loh/x;

    move-result-object p2

    invoke-virtual {p2}, Loh/x;->J()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v4, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    new-instance v0, Ljava/security/UnrecoverableKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/PrivateKey;

    if-eqz v1, :cond_4

    return-object v1

    :cond_4
    invoke-virtual {v0}, Lqh/g;->x()[B

    move-result-object v0

    invoke-static {v0}, Lqh/c;->w(Ljava/lang/Object;)Lqh/c;

    move-result-object v0

    invoke-virtual {v0}, Lqh/c;->v()LXh/j;

    move-result-object v0

    invoke-static {v0}, LXh/j;->w(Ljava/lang/Object;)LXh/j;

    move-result-object v0

    :try_start_1
    const-string v1, "PRIVATE_KEY_ENCRYPTION"

    invoke-virtual {v0}, LXh/j;->v()Lhi/b;

    move-result-object v3

    invoke-virtual {v0}, LXh/j;->u()[B

    move-result-object v0

    invoke-virtual {p0, v1, v3, p2, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->e(Ljava/lang/String;Lhi/b;[C[B)[B

    move-result-object p2

    invoke-static {p2}, LXh/v;->v(Ljava/lang/Object;)LXh/v;

    move-result-object p2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->d:Ldk/f;

    invoke-virtual {p2}, LXh/v;->y()Lhi/b;

    move-result-object v1

    invoke-virtual {v1}, Lhi/b;->u()Loh/x;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->n(Loh/x;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ldk/f;->b(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {p2}, Loh/v;->getEncoded()[B

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p2

    :catch_1
    move-exception p2

    new-instance v0, Ljava/security/UnrecoverableKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BCFKS KeyStore unable to recover private key ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lqh/g;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lqh/g;->B()Ljava/math/BigInteger;

    move-result-object p1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->o:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lqh/g;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lqh/g;->B()Ljava/math/BigInteger;

    move-result-object p1

    sget-object v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->p:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->q:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->r:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->s:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->j:Ljava/util/Date;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->k:Ljava/util/Date;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->g:Lhi/b;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->j:Ljava/util/Date;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->k:Ljava/util/Date;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->b:Ljava/security/PublicKey;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->c:LHj/a$c;

    new-instance p1, Lhi/b;

    sget-object p2, LXh/t;->B1:Loh/x;

    sget-object v0, Loh/A0;->c:Loh/A0;

    invoke-direct {p1, p2, v0}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->g:Lhi/b;

    sget-object p1, LXh/t;->h1:Loh/x;

    const/16 p2, 0x40

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->i(Loh/x;I)LXh/m;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->h:LXh/m;

    return-void

    :cond_0
    new-instance v0, Loh/r;

    invoke-direct {v0, p1}, Loh/r;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v0}, Loh/r;->k()Loh/B;

    move-result-object p1

    invoke-static {p1}, Lqh/i;->u(Ljava/lang/Object;)Lqh/i;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    invoke-virtual {p1}, Lqh/i;->v()Lqh/k;

    move-result-object v0

    invoke-virtual {v0}, Lqh/k;->x()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lqh/k;->v()Loh/v;

    move-result-object v0

    invoke-static {v0}, Lqh/l;->u(Ljava/lang/Object;)Lqh/l;

    move-result-object v0

    invoke-virtual {v0}, Lqh/l;->x()Lhi/b;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->g:Lhi/b;

    invoke-virtual {v0}, Lqh/l;->y()LXh/m;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->h:LXh/m;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->g:Lhi/b;

    :try_start_1
    invoke-virtual {p1}, Lqh/i;->x()Loh/g;

    move-result-object v2

    invoke-interface {v2}, Loh/g;->r()Loh/B;

    move-result-object v2

    invoke-virtual {v2}, Loh/v;->getEncoded()[B

    move-result-object v2

    invoke-virtual {p0, v2, v0, p2}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->p([BLqh/l;[C)V
    :try_end_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    invoke-virtual {v0}, Lqh/k;->x()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    invoke-virtual {v0}, Lqh/k;->v()Loh/v;

    move-result-object v0

    invoke-static {v0}, Lqh/n;->v(Ljava/lang/Object;)Lqh/n;

    move-result-object v0

    invoke-virtual {v0}, Lqh/n;->y()Lhi/b;

    move-result-object v1

    :try_start_2
    invoke-virtual {v0}, Lqh/n;->u()[Lhi/q;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->c:LHj/a$c;

    if-eqz v3, :cond_5

    if-eqz v2, :cond_4

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->d:Ldk/f;

    const-string v4, "X.509"

    invoke-interface {v3, v4}, Ldk/f;->r(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    array-length v4, v2

    new-array v5, v4, [Ljava/security/cert/X509Certificate;

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-eq v7, v4, :cond_2

    new-instance v8, Ljava/io/ByteArrayInputStream;

    aget-object v9, v2, v7

    invoke-virtual {v9}, Loh/v;->getEncoded()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v8}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catch_1
    move-exception p1

    goto/16 :goto_5

    :cond_2
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->c:LHj/a$c;

    invoke-interface {v2, v5}, LHj/a$c;->a([Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lqh/i;->x()Loh/g;

    move-result-object v2

    aget-object v3, v5, v6

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    :goto_1
    invoke-virtual {p0, v2, v0, v3}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->q(Loh/g;Lqh/n;Ljava/security/PublicKey;)V

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "certificate chain in key store signature not valid"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "validator specified but no certifcates in store"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-virtual {p1}, Lqh/i;->x()Loh/g;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->b:Ljava/security/PublicKey;
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :goto_2
    invoke-virtual {p1}, Lqh/i;->x()Loh/g;

    move-result-object p1

    instance-of v0, p1, Lqh/b;

    if-eqz v0, :cond_6

    check-cast p1, Lqh/b;

    invoke-virtual {p1}, Lqh/b;->v()Lhi/b;

    move-result-object v0

    invoke-virtual {p1}, Lqh/b;->u()Loh/y;

    move-result-object p1

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    const-string v2, "STORE_ENCRYPTION"

    invoke-virtual {p0, v2, v0, p2, p1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->e(Ljava/lang/String;Lhi/b;[C[B)[B

    move-result-object p1

    invoke-static {p1}, Lqh/j;->w(Ljava/lang/Object;)Lqh/j;

    move-result-object p1

    goto :goto_3

    :cond_6
    invoke-static {p1}, Lqh/j;->w(Ljava/lang/Object;)Lqh/j;

    move-result-object p1

    :goto_3
    :try_start_3
    invoke-virtual {p1}, Lqh/j;->v()Loh/n;

    move-result-object p2

    invoke-virtual {p2}, Loh/n;->I()Ljava/util/Date;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->j:Ljava/util/Date;

    invoke-virtual {p1}, Lqh/j;->y()Loh/n;

    move-result-object p2

    invoke-virtual {p2}, Loh/n;->I()Ljava/util/Date;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->k:Ljava/util/Date;
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_2

    invoke-virtual {p1}, Lqh/j;->x()Lhi/b;

    move-result-object p2

    invoke-virtual {p2, v1}, Loh/v;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Lqh/j;->z()Lqh/h;

    move-result-object p1

    invoke-virtual {p1}, Lqh/h;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lqh/g;->z(Ljava/lang/Object;)Lqh/g;

    move-result-object p2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->e:Ljava/util/Map;

    invoke-virtual {p2}, Lqh/g;->y()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    return-void

    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string p2, "BCFKS KeyStore storeData integrity algorithm does not match store integrity algorithm."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "BCFKS KeyStore unable to parse store data information."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_5
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error verifying signature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_9
    new-instance p1, Ljava/io/IOException;

    const-string p2, "BCFKS KeyStore unable to recognize integrity check."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_3
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    goto/16 :goto_4

    :cond_0
    instance-of v0, p1, LHj/a;

    if-eqz v0, :cond_4

    check-cast p1, LHj/a;

    invoke-static {p1}, LYj/c;->a(Ljava/security/KeyStore$LoadStoreParameter;)[C

    move-result-object v0

    invoke-virtual {p1}, LHj/a;->g()Lorg/bouncycastle/crypto/util/m;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->j(Lorg/bouncycastle/crypto/util/m;I)LXh/m;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->h:LXh/m;

    invoke-virtual {p1}, LHj/a;->e()LHj/a$d;

    move-result-object v1

    sget-object v2, LHj/a$d;->AES256_CCM:LHj/a$d;

    if-ne v1, v2, :cond_1

    sget-object v1, LSh/d;->V:Loh/x;

    :goto_0
    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->l:Loh/x;

    goto :goto_1

    :cond_1
    sget-object v1, LSh/d;->W:Loh/x;

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, LHj/a;->f()LHj/a$e;

    move-result-object v1

    sget-object v2, LHj/a$e;->HmacSHA512:LHj/a$e;

    if-ne v1, v2, :cond_2

    new-instance v1, Lhi/b;

    sget-object v2, LXh/t;->B1:Loh/x;

    sget-object v3, Loh/A0;->c:Loh/A0;

    invoke-direct {v1, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    :goto_2
    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->g:Lhi/b;

    goto :goto_3

    :cond_2
    new-instance v1, Lhi/b;

    sget-object v2, LSh/d;->r:Loh/x;

    sget-object v3, Loh/A0;->c:Loh/A0;

    invoke-direct {v1, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    goto :goto_2

    :goto_3
    invoke-virtual {p1}, LHj/a;->i()Ljava/security/Key;

    move-result-object v1

    check-cast v1, Ljava/security/PublicKey;

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->b:Ljava/security/PublicKey;

    invoke-virtual {p1}, LHj/a;->c()LHj/a$c;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->c:LHj/a$c;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->b:Ljava/security/PublicKey;

    invoke-virtual {p1}, LHj/a;->h()LHj/a$f;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->k(Ljava/security/Key;LHj/a$f;)Lhi/b;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->i:Lhi/b;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->l:Loh/x;

    invoke-virtual {p1}, LHj/c;->a()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    if-eqz v2, :cond_5

    invoke-virtual {p1}, LHj/a;->g()Lorg/bouncycastle/crypto/util/m;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->h:LXh/m;

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->o(Lorg/bouncycastle/crypto/util/m;LXh/m;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->l:Loh/x;

    invoke-virtual {v1, p1}, Loh/B;->A(Loh/B;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_4

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "configuration parameters do not match existing store"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    instance-of v0, p1, LHj/c;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, LHj/c;

    invoke-virtual {v0}, LHj/c;->a()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {p1}, LYj/c;->a(Ljava/security/KeyStore$LoadStoreParameter;)[C

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    :cond_5
    :goto_4
    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no support for \'parameter\' of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqh/g;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lqh/g;->B()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->o:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v8}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->f(Lqh/g;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/security/KeyStoreException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BCFKS KeyStore already has a key entry with alias "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    move-object v4, v8

    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->e:Ljava/util/Map;

    new-instance v9, Lqh/g;

    sget-object v2, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->o:Ljava/math/BigInteger;

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, v9

    move-object v3, p1

    move-object v5, v8

    invoke-direct/range {v1 .. v7}, Lqh/g;-><init>(Ljava/math/BigInteger;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;[BLjava/lang/String;)V

    invoke-interface {v0, p1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v8, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->k:Ljava/util/Date;

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BCFKS KeyStore unable to handle certificate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqh/g;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, v7}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->f(Lqh/g;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v7

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p2, Ljava/security/PrivateKey;

    const-string v8, "BCFKS KeyStore exception storing private key: "

    const-string v1, "AESKWP"

    const-string v2, "AES/CCM/NoPadding"

    const/4 v4, 0x0

    const/16 v5, 0x20

    if-eqz v0, :cond_4

    if-eqz p4, :cond_3

    :try_start_0
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object p2

    sget-object v0, LXh/t;->h1:Loh/x;

    invoke-virtual {p0, v0, v5}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->i(Loh/x;I)LXh/m;

    move-result-object v0

    const-string v6, "PRIVATE_KEY_ENCRYPTION"

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    new-array p3, v4, [C

    :goto_1
    invoke-virtual {p0, v0, v6, p3, v5}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->g(LXh/m;Ljava/lang/String;[CI)[B

    move-result-object p3

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->l:Loh/x;

    sget-object v5, LSh/d;->V:Loh/x;

    invoke-virtual {v4, v5}, Loh/B;->A(Loh/B;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v2, p3}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->b(Ljava/lang/String;[B)Ljavax/crypto/Cipher;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    invoke-virtual {p3}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object p3

    new-instance v1, LXh/p;

    new-instance v2, LXh/k;

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    move-result-object p3

    invoke-static {p3}, Lnj/a;->v(Ljava/lang/Object;)Lnj/a;

    move-result-object p3

    invoke-direct {v2, v5, p3}, LXh/k;-><init>(Loh/x;Loh/g;)V

    invoke-direct {v1, v0, v2}, LXh/p;-><init>(LXh/m;LXh/k;)V

    new-instance p3, LXh/j;

    new-instance v0, Lhi/b;

    sget-object v2, LXh/t;->j1:Loh/x;

    invoke-direct {v0, v2, v1}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    invoke-direct {p3, v0, p2}, LXh/j;-><init>(Lhi/b;[B)V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_2
    invoke-virtual {p0, v1, p3}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->b(Ljava/lang/String;[B)Ljavax/crypto/Cipher;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    new-instance p3, LXh/p;

    new-instance v1, LXh/k;

    sget-object v2, LSh/d;->W:Loh/x;

    invoke-direct {v1, v2}, LXh/k;-><init>(Loh/x;)V

    invoke-direct {p3, v0, v1}, LXh/p;-><init>(LXh/m;LXh/k;)V

    new-instance v0, LXh/j;

    new-instance v1, Lhi/b;

    sget-object v2, LXh/t;->j1:Loh/x;

    invoke-direct {v1, v2, p3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    invoke-direct {v0, v1, p2}, LXh/j;-><init>(Lhi/b;[B)V

    move-object p3, v0

    :goto_2
    invoke-virtual {p0, p3, p4}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->c(LXh/j;[Ljava/security/cert/Certificate;)Lqh/c;

    move-result-object p2

    iget-object p3, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->e:Ljava/util/Map;

    new-instance p4, Lqh/g;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->p:Ljava/math/BigInteger;

    invoke-virtual {p2}, Loh/v;->getEncoded()[B

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p4

    move-object v2, p1

    move-object v4, v7

    invoke-direct/range {v0 .. v6}, Lqh/g;-><init>(Ljava/math/BigInteger;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;[BLjava/lang/String;)V

    invoke-interface {p3, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    :goto_3
    new-instance p2, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    new-instance p1, Ljava/security/KeyStoreException;

    const-string p2, "BCFKS KeyStore requires a certificate chain for private key storage."

    invoke-direct {p1, p2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    instance-of v0, p2, Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_b

    if-nez p4, :cond_a

    :try_start_1
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object p4

    sget-object v0, LXh/t;->h1:Loh/x;

    invoke-virtual {p0, v0, v5}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->i(Loh/x;I)LXh/m;

    move-result-object v0

    const-string v6, "SECRET_KEY_ENCRYPTION"

    if-eqz p3, :cond_5

    goto :goto_4

    :cond_5
    new-array p3, v4, [C

    :goto_4
    invoke-virtual {p0, v0, v6, p3, v5}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->g(LXh/m;Ljava/lang/String;[CI)[B

    move-result-object p3

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/util/w;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v4, "AES"

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_6

    new-instance p2, Lqh/m;

    sget-object v4, LSh/d;->w:Loh/x;

    invoke-direct {p2, v4, p4}, Lqh/m;-><init>(Loh/x;[B)V

    goto :goto_5

    :catch_1
    move-exception p1

    goto/16 :goto_8

    :cond_6
    sget-object v4, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->m:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Loh/x;

    if-eqz v5, :cond_7

    new-instance p2, Lqh/m;

    invoke-direct {p2, v5, p4}, Lqh/m;-><init>(Loh/x;[B)V

    goto :goto_5

    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, p4

    mul-int/lit8 v6, v6, 0x8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Loh/x;

    if-eqz v4, :cond_9

    new-instance p2, Lqh/m;

    invoke-direct {p2, v4, p4}, Lqh/m;-><init>(Loh/x;[B)V

    :goto_5
    iget-object p4, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->l:Loh/x;

    sget-object v4, LSh/d;->V:Loh/x;

    invoke-virtual {p4, v4}, Loh/B;->A(Loh/B;)Z

    move-result p4

    if-eqz p4, :cond_8

    invoke-virtual {p0, v2, p3}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->b(Ljava/lang/String;[B)Ljavax/crypto/Cipher;

    move-result-object p3

    invoke-virtual {p2}, Loh/v;->getEncoded()[B

    move-result-object p2

    invoke-virtual {p3, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    invoke-virtual {p3}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object p3

    new-instance p4, LXh/p;

    new-instance v1, LXh/k;

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    move-result-object p3

    invoke-static {p3}, Lnj/a;->v(Ljava/lang/Object;)Lnj/a;

    move-result-object p3

    invoke-direct {v1, v4, p3}, LXh/k;-><init>(Loh/x;Loh/g;)V

    invoke-direct {p4, v0, v1}, LXh/p;-><init>(LXh/m;LXh/k;)V

    new-instance p3, Lqh/d;

    new-instance v0, Lhi/b;

    sget-object v1, LXh/t;->j1:Loh/x;

    invoke-direct {v0, v1, p4}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    invoke-direct {p3, v0, p2}, Lqh/d;-><init>(Lhi/b;[B)V

    goto :goto_6

    :cond_8
    invoke-virtual {p0, v1, p3}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->b(Ljava/lang/String;[B)Ljavax/crypto/Cipher;

    move-result-object p3

    invoke-virtual {p2}, Loh/v;->getEncoded()[B

    move-result-object p2

    invoke-virtual {p3, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    new-instance p3, LXh/p;

    new-instance p4, LXh/k;

    sget-object v1, LSh/d;->W:Loh/x;

    invoke-direct {p4, v1}, LXh/k;-><init>(Loh/x;)V

    invoke-direct {p3, v0, p4}, LXh/p;-><init>(LXh/m;LXh/k;)V

    new-instance p4, Lqh/d;

    new-instance v0, Lhi/b;

    sget-object v1, LXh/t;->j1:Loh/x;

    invoke-direct {v0, v1, p3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    invoke-direct {p4, v0, p2}, Lqh/d;-><init>(Lhi/b;[B)V

    move-object p3, p4

    :goto_6
    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->e:Ljava/util/Map;

    new-instance p4, Lqh/g;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->q:Ljava/math/BigInteger;

    invoke-virtual {p3}, Loh/v;->getEncoded()[B

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p4

    move-object v2, p1

    move-object v4, v7

    invoke-direct/range {v0 .. v6}, Lqh/g;-><init>(Ljava/math/BigInteger;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;[BLjava/lang/String;)V

    invoke-interface {p2, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_7
    iput-object v7, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->k:Ljava/util/Date;

    return-void

    :cond_9
    :try_start_2
    new-instance p1, Ljava/security/KeyStoreException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "BCFKS KeyStore cannot recognize secret key ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") for storage."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_8
    new-instance p2, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_a
    new-instance p1, Ljava/security/KeyStoreException;

    const-string p2, "BCFKS KeyStore cannot store certificate chain with secret key."

    invoke-direct {p1, p2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Ljava/security/KeyStoreException;

    const-string p2, "BCFKS KeyStore unable to recognize key."

    invoke-direct {p1, p2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 2
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqh/g;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, v7}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->f(Lqh/g;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v7

    :goto_0
    const-string v8, "BCFKS KeyStore exception storing protected private key: "

    if-eqz p3, :cond_1

    :try_start_0
    invoke-static {p2}, LXh/j;->w(Ljava/lang/Object;)LXh/j;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->e:Ljava/util/Map;

    new-instance v10, Lqh/g;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->r:Ljava/math/BigInteger;

    invoke-virtual {p0, p2, p3}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->c(LXh/j;[Ljava/security/cert/Certificate;)Lqh/c;

    move-result-object p2

    invoke-virtual {p2}, Loh/v;->getEncoded()[B

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, v10

    move-object v2, p1

    move-object v4, v7

    invoke-direct/range {v0 .. v6}, Lqh/g;-><init>(Ljava/math/BigInteger;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;[BLjava/lang/String;)V

    invoke-interface {v9, p1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;

    const-string p3, "BCFKS KeyStore private key encoding must be an EncryptedPrivateKeyInfo."

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    :try_start_2
    iget-object p3, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->e:Ljava/util/Map;

    new-instance v9, Lqh/g;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->s:Ljava/math/BigInteger;

    const/4 v6, 0x0

    move-object v0, v9

    move-object v2, p1

    move-object v4, v7

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lqh/g;-><init>(Ljava/math/BigInteger;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;[BLjava/lang/String;)V

    invoke-interface {p3, p1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    iput-object v7, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->k:Ljava/util/Date;

    return-void

    :catch_2
    move-exception p1

    new-instance p2, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public engineSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->j:Ljava/util/Date;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->g:Lhi/b;

    invoke-virtual {p0, v0, p2}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->m(Lhi/b;[C)Lqh/b;

    move-result-object v0

    sget-object v1, Lyj/c;->O:Loh/x;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->h:LXh/m;

    invoke-virtual {v2}, LXh/m;->u()Loh/x;

    move-result-object v2

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->h:LXh/m;

    invoke-virtual {v1}, LXh/m;->x()Loh/g;

    move-result-object v1

    invoke-static {v1}, Lyj/f;->w(Ljava/lang/Object;)Lyj/f;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->h:LXh/m;

    invoke-virtual {v1}, Lyj/f;->x()Ljava/math/BigInteger;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->h(LXh/m;I)LXh/m;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->h:LXh/m;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->h:LXh/m;

    invoke-virtual {v1}, LXh/m;->x()Loh/g;

    move-result-object v1

    invoke-static {v1}, LXh/q;->u(Ljava/lang/Object;)LXh/q;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->h:LXh/m;

    invoke-virtual {v1}, LXh/q;->x()Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0

    :goto_1
    :try_start_0
    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->g:Lhi/b;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->h:LXh/m;

    invoke-virtual {p0, v1, v2, v3, p2}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->a([BLhi/b;LXh/m;[C)[B

    move-result-object p2
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lqh/i;

    new-instance v2, Lqh/k;

    new-instance v3, Lqh/l;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->g:Lhi/b;

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->h:LXh/m;

    invoke-direct {v3, v4, v5, p2}, Lqh/l;-><init>(Lhi/b;LXh/m;[B)V

    invoke-direct {v2, v3}, Lqh/k;-><init>(Lqh/l;)V

    invoke-direct {v1, v0, v2}, Lqh/i;-><init>(Lqh/b;Lqh/k;)V

    invoke-virtual {v1}, Loh/v;->getEncoded()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot calculate mac: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "KeyStore not initialized"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineStore(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    if-eqz p1, :cond_a

    instance-of v0, p1, LHj/b;

    const/16 v1, 0x40

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, LHj/b;

    invoke-static {p1}, LYj/c;->a(Ljava/security/KeyStore$LoadStoreParameter;)[C

    move-result-object p1

    invoke-virtual {v0}, LHj/b;->b()Lorg/bouncycastle/crypto/util/m;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->j(Lorg/bouncycastle/crypto/util/m;I)LXh/m;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->h:LXh/m;

    invoke-virtual {v0}, LHj/b;->a()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->engineStore(Ljava/io/OutputStream;[C)V

    goto/16 :goto_b

    :cond_0
    instance-of v0, p1, LHj/a;

    if-eqz v0, :cond_8

    check-cast p1, LHj/a;

    invoke-virtual {p1}, LHj/a;->i()Ljava/security/Key;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, LHj/a;->i()Ljava/security/Key;

    move-result-object v0

    invoke-virtual {p1}, LHj/a;->h()LHj/a$f;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->k(Ljava/security/Key;LHj/a$f;)Lhi/b;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->i:Lhi/b;

    invoke-virtual {p1}, LHj/a;->g()Lorg/bouncycastle/crypto/util/m;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->j(Lorg/bouncycastle/crypto/util/m;I)LXh/m;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->h:LXh/m;

    invoke-virtual {p1}, LHj/a;->e()LHj/a$d;

    move-result-object v0

    sget-object v1, LHj/a$d;->AES256_CCM:LHj/a$d;

    if-ne v0, v1, :cond_1

    sget-object v0, LSh/d;->V:Loh/x;

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->l:Loh/x;

    goto :goto_1

    :cond_1
    sget-object v0, LSh/d;->W:Loh/x;

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, LHj/a;->f()LHj/a$e;

    move-result-object v0

    sget-object v1, LHj/a$e;->HmacSHA512:LHj/a$e;

    if-ne v0, v1, :cond_2

    new-instance v0, Lhi/b;

    sget-object v1, LXh/t;->B1:Loh/x;

    sget-object v2, Loh/A0;->c:Loh/A0;

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    :goto_2
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->g:Lhi/b;

    goto :goto_3

    :cond_2
    new-instance v0, Lhi/b;

    sget-object v1, LSh/d;->r:Loh/x;

    sget-object v2, Loh/A0;->c:Loh/A0;

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    goto :goto_2

    :goto_3
    invoke-static {p1}, LYj/c;->a(Ljava/security/KeyStore$LoadStoreParameter;)[C

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->i:Lhi/b;

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->m(Lhi/b;[C)Lqh/b;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->d:Ldk/f;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->i:Lhi/b;

    invoke-virtual {v2}, Lhi/b;->u()Loh/x;

    move-result-object v2

    invoke-virtual {v2}, Loh/x;->J()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ldk/f;->a(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    invoke-virtual {p1}, LHj/a;->i()Ljava/security/Key;

    move-result-object v2

    check-cast v2, Ljava/security/PrivateKey;

    invoke-virtual {v1, v2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    invoke-virtual {p1}, LHj/a;->d()[Ljava/security/cert/X509Certificate;

    move-result-object v2

    if-eqz v2, :cond_4

    array-length v3, v2

    new-array v4, v3, [Lhi/q;

    const/4 v5, 0x0

    :goto_4
    if-eq v5, v3, :cond_3

    aget-object v6, v2, v5

    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v6

    invoke-static {v6}, Lhi/q;->v(Ljava/lang/Object;)Lhi/q;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_6

    :cond_3
    new-instance v2, Lqh/n;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->i:Lhi/b;

    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Lqh/n;-><init>(Lhi/b;[Lhi/q;[B)V

    goto :goto_5

    :cond_4
    new-instance v2, Lqh/n;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->i:Lhi/b;

    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lqh/n;-><init>(Lhi/b;[B)V

    :goto_5
    new-instance v1, Lqh/i;

    new-instance v3, Lqh/k;

    invoke-direct {v3, v2}, Lqh/k;-><init>(Lqh/n;)V

    invoke-direct {v1, v0, v3}, Lqh/i;-><init>(Lqh/b;Lqh/k;)V

    invoke-virtual {p1}, LHj/c;->b()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v1}, Loh/v;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, LHj/c;->b()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_b

    :goto_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error creating signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    invoke-static {p1}, LYj/c;->a(Ljava/security/KeyStore$LoadStoreParameter;)[C

    move-result-object v0

    invoke-virtual {p1}, LHj/a;->g()Lorg/bouncycastle/crypto/util/m;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->j(Lorg/bouncycastle/crypto/util/m;I)LXh/m;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->h:LXh/m;

    invoke-virtual {p1}, LHj/a;->e()LHj/a$d;

    move-result-object v1

    sget-object v2, LHj/a$d;->AES256_CCM:LHj/a$d;

    if-ne v1, v2, :cond_6

    sget-object v1, LSh/d;->V:Loh/x;

    :goto_7
    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->l:Loh/x;

    goto :goto_8

    :cond_6
    sget-object v1, LSh/d;->W:Loh/x;

    goto :goto_7

    :goto_8
    invoke-virtual {p1}, LHj/a;->f()LHj/a$e;

    move-result-object v1

    sget-object v2, LHj/a$e;->HmacSHA512:LHj/a$e;

    if-ne v1, v2, :cond_7

    new-instance v1, Lhi/b;

    sget-object v2, LXh/t;->B1:Loh/x;

    sget-object v3, Loh/A0;->c:Loh/A0;

    invoke-direct {v1, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    :goto_9
    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->g:Lhi/b;

    goto :goto_a

    :cond_7
    new-instance v1, Lhi/b;

    sget-object v2, LSh/d;->r:Loh/x;

    sget-object v3, Loh/A0;->c:Loh/A0;

    invoke-direct {v1, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    goto :goto_9

    :goto_a
    invoke-virtual {p1}, LHj/c;->b()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->engineStore(Ljava/io/OutputStream;[C)V

    goto :goto_b

    :cond_8
    instance-of v0, p1, LHj/c;

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, LHj/c;

    invoke-virtual {v0}, LHj/c;->b()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {p1}, LYj/c;->a(Ljava/security/KeyStore$LoadStoreParameter;)[C

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->engineStore(Ljava/io/OutputStream;[C)V

    :goto_b
    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no support for \'parameter\' of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'parameter\' arg cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(Lqh/g;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    :try_start_0
    invoke-virtual {p1}, Lqh/g;->v()Loh/n;

    move-result-object p1

    invoke-virtual {p1}, Loh/n;->I()Ljava/util/Date;

    move-result-object p2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p2
.end method

.method public final g(LXh/m;Ljava/lang/String;[CI)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p3}, LBi/L;->a([C)[B

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-static {p2}, LBi/L;->a([C)[B

    move-result-object p2

    sget-object v0, Lyj/c;->O:Loh/x;

    invoke-virtual {p1}, LXh/m;->u()Loh/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, LXh/m;->x()Loh/g;

    move-result-object p1

    invoke-static {p1}, Lyj/f;->w(Ljava/lang/Object;)Lyj/f;

    move-result-object p1

    invoke-virtual {p1}, Lyj/f;->x()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lyj/f;->x()Ljava/math/BigInteger;

    move-result-object p4

    invoke-virtual {p4}, Ljava/math/BigInteger;->intValue()I

    move-result p4

    :goto_0
    move v5, p4

    goto :goto_1

    :cond_0
    if-eq p4, v1, :cond_1

    goto :goto_0

    :goto_1
    invoke-static {p3, p2}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object v0

    invoke-virtual {p1}, Lyj/f;->z()[B

    move-result-object v1

    invoke-virtual {p1}, Lyj/f;->v()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    invoke-virtual {p1}, Lyj/f;->u()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    invoke-virtual {p1}, Lyj/f;->u()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    invoke-static/range {v0 .. v5}, LOi/N;->i([B[BIIII)[B

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "no keyLength found in ScryptParams"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p1}, LXh/m;->u()Loh/x;

    move-result-object v0

    sget-object v2, LXh/t;->h1:Loh/x;

    invoke-virtual {v0, v2}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, LXh/m;->x()Loh/g;

    move-result-object p1

    invoke-static {p1}, LXh/q;->u(Ljava/lang/Object;)LXh/q;

    move-result-object p1

    invoke-virtual {p1}, LXh/q;->x()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, LXh/q;->x()Ljava/math/BigInteger;

    move-result-object p4

    invoke-virtual {p4}, Ljava/math/BigInteger;->intValue()I

    move-result p4

    goto :goto_2

    :cond_3
    if-eq p4, v1, :cond_6

    :goto_2
    invoke-virtual {p1}, LXh/q;->y()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    sget-object v1, LXh/t;->B1:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, LOi/J;

    new-instance v1, LIi/O;

    invoke-direct {v1}, LIi/O;-><init>()V

    invoke-direct {v0, v1}, LOi/J;-><init>(LBi/y;)V

    invoke-static {p3, p2}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object p2

    invoke-virtual {p1}, LXh/q;->z()[B

    move-result-object p3

    invoke-virtual {p1}, LXh/q;->v()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-virtual {v0, p2, p3, p1}, LBi/L;->j([B[BI)V

    mul-int/lit8 p4, p4, 0x8

    invoke-virtual {v0, p4}, LOi/J;->e(I)LBi/k;

    move-result-object p1

    check-cast p1, LXi/o0;

    invoke-virtual {p1}, LXi/o0;->b()[B

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {p1}, LXh/q;->y()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    sget-object v1, LSh/d;->r:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, LOi/J;

    new-instance v1, LIi/N;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, LIi/N;-><init>(I)V

    invoke-direct {v0, v1}, LOi/J;-><init>(LBi/y;)V

    invoke-static {p3, p2}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object p2

    invoke-virtual {p1}, LXh/q;->z()[B

    move-result-object p3

    invoke-virtual {p1}, LXh/q;->v()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-virtual {v0, p2, p3, p1}, LBi/L;->j([B[BI)V

    mul-int/lit8 p4, p4, 0x8

    invoke-virtual {v0, p4}, LOi/J;->e(I)LBi/k;

    move-result-object p1

    check-cast p1, LXi/o0;

    invoke-virtual {p1}, LXi/o0;->b()[B

    move-result-object p1

    return-object p1

    :cond_5
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "BCFKS KeyStore: unrecognized MAC PBKD PRF: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LXh/q;->y()Lhi/b;

    move-result-object p1

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "no keyLength found in PBKDF2Params"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string p2, "BCFKS KeyStore: unrecognized MAC PBKD."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h(LXh/m;I)LXh/m;
    .locals 8

    sget-object v0, Lyj/c;->O:Loh/x;

    invoke-virtual {p1}, LXh/m;->u()Loh/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v1

    invoke-virtual {p1}, LXh/m;->x()Loh/g;

    move-result-object p1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lyj/f;->w(Ljava/lang/Object;)Lyj/f;

    move-result-object p1

    invoke-virtual {p1}, Lyj/f;->z()[B

    move-result-object v1

    array-length v1, v1

    new-array v3, v1, [B

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->l()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Lyj/f;

    invoke-virtual {p1}, Lyj/f;->v()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Lyj/f;->u()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1}, Lyj/f;->y()Ljava/math/BigInteger;

    move-result-object v6

    int-to-long p1, p2

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lyj/f;-><init>([BLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance p1, LXh/m;

    invoke-direct {p1, v0, v1}, LXh/m;-><init>(Loh/x;Loh/g;)V

    return-object p1

    :cond_0
    invoke-static {p1}, LXh/q;->u(Ljava/lang/Object;)LXh/q;

    move-result-object p1

    invoke-virtual {p1}, LXh/q;->z()[B

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [B

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->l()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, LXh/q;

    invoke-virtual {p1}, LXh/q;->v()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    invoke-virtual {p1}, LXh/q;->y()Lhi/b;

    move-result-object p1

    invoke-direct {v1, v0, v2, p2, p1}, LXh/q;-><init>([BIILhi/b;)V

    new-instance p1, LXh/m;

    sget-object p2, LXh/t;->h1:Loh/x;

    invoke-direct {p1, p2, v1}, LXh/m;-><init>(Loh/x;Loh/g;)V

    return-object p1
.end method

.method public final i(Loh/x;I)LXh/m;
    .locals 6

    const/16 v0, 0x40

    new-array v0, v0, [B

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->l()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v1, LXh/t;->h1:Loh/x;

    invoke-virtual {v1, p1}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p1, LXh/m;

    new-instance v2, LXh/q;

    new-instance v3, Lhi/b;

    sget-object v4, LXh/t;->B1:Loh/x;

    sget-object v5, Loh/A0;->c:Loh/A0;

    invoke-direct {v3, v4, v5}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    const v4, 0xc800

    invoke-direct {v2, v0, v4, p2, v3}, LXh/q;-><init>([BIILhi/b;)V

    invoke-direct {p1, v1, v2}, LXh/m;-><init>(Loh/x;Loh/g;)V

    return-object p1

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown derivation algorithm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final j(Lorg/bouncycastle/crypto/util/m;I)LXh/m;
    .locals 8

    sget-object v0, Lyj/c;->O:Loh/x;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/m;->a()Loh/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast p1, Lorg/bouncycastle/crypto/util/v;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/v;->e()I

    move-result v1

    new-array v3, v1, [B

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->l()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Lyj/f;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/v;->c()I

    move-result v4

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/v;->b()I

    move-result v5

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/v;->d()I

    move-result v6

    move-object v2, v1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lyj/f;-><init>([BIIII)V

    new-instance p1, LXh/m;

    invoke-direct {p1, v0, v1}, LXh/m;-><init>(Loh/x;Loh/g;)V

    return-object p1

    :cond_0
    check-cast p1, Lorg/bouncycastle/crypto/util/l;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/l;->d()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->l()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, LXh/m;

    sget-object v2, LXh/t;->h1:Loh/x;

    new-instance v3, LXh/q;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/l;->b()I

    move-result v4

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/l;->c()Lhi/b;

    move-result-object p1

    invoke-direct {v3, v0, v4, p2, p1}, LXh/q;-><init>([BIILhi/b;)V

    invoke-direct {v1, v2, v3}, LXh/m;-><init>(Loh/x;Loh/g;)V

    return-object v1
.end method

.method public final k(Ljava/security/Key;LHj/a$f;)Lhi/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    instance-of v0, p1, Lfk/b;

    if-eqz v0, :cond_2

    sget-object v0, LHj/a$f;->SHA512withECDSA:LHj/a$f;

    if-ne p2, v0, :cond_1

    new-instance p1, Lhi/b;

    sget-object p2, Lki/r;->N5:Loh/x;

    invoke-direct {p1, p2}, Lhi/b;-><init>(Loh/x;)V

    return-object p1

    :cond_1
    sget-object v0, LHj/a$f;->SHA3_512withECDSA:LHj/a$f;

    if-ne p2, v0, :cond_2

    new-instance p1, Lhi/b;

    sget-object p2, LSh/d;->l0:Loh/x;

    invoke-direct {p1, p2}, Lhi/b;-><init>(Loh/x;)V

    return-object p1

    :cond_2
    instance-of v0, p1, Ljava/security/interfaces/DSAKey;

    if-eqz v0, :cond_4

    sget-object v0, LHj/a$f;->SHA512withDSA:LHj/a$f;

    if-ne p2, v0, :cond_3

    new-instance p1, Lhi/b;

    sget-object p2, LSh/d;->d0:Loh/x;

    invoke-direct {p1, p2}, Lhi/b;-><init>(Loh/x;)V

    return-object p1

    :cond_3
    sget-object v0, LHj/a$f;->SHA3_512withDSA:LHj/a$f;

    if-ne p2, v0, :cond_4

    new-instance p1, Lhi/b;

    sget-object p2, LSh/d;->h0:Loh/x;

    invoke-direct {p1, p2}, Lhi/b;-><init>(Loh/x;)V

    return-object p1

    :cond_4
    instance-of p1, p1, Ljava/security/interfaces/RSAKey;

    if-eqz p1, :cond_6

    sget-object p1, LHj/a$f;->SHA512withRSA:LHj/a$f;

    if-ne p2, p1, :cond_5

    new-instance p1, Lhi/b;

    sget-object p2, LXh/t;->T0:Loh/x;

    sget-object v0, Loh/A0;->c:Loh/A0;

    invoke-direct {p1, p2, v0}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    return-object p1

    :cond_5
    sget-object p1, LHj/a$f;->SHA3_512withRSA:LHj/a$f;

    if-ne p2, p1, :cond_6

    new-instance p1, Lhi/b;

    sget-object p2, LSh/d;->p0:Loh/x;

    sget-object v0, Loh/A0;->c:Loh/A0;

    invoke-direct {p1, p2, v0}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    return-object p1

    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "unknown signature algorithm"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final l()Ljava/security/SecureRandom;
    .locals 1

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method

.method public final m(Lhi/b;[C)Lqh/b;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lqh/g;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lqh/g;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->h:LXh/m;

    const/16 v2, 0x20

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->h(LXh/m;I)LXh/m;

    move-result-object v1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    new-array p2, p2, [C

    :goto_0
    const-string v3, "STORE_ENCRYPTION"

    invoke-virtual {p0, v1, v3, p2, v2}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->g(LXh/m;Ljava/lang/String;[CI)[B

    move-result-object p2

    new-instance v8, Lqh/j;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->j:Ljava/util/Date;

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->k:Ljava/util/Date;

    new-instance v6, Lqh/h;

    invoke-direct {v6, v0}, Lqh/h;-><init>([Lqh/g;)V

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lqh/j;-><init>(Lhi/b;Ljava/util/Date;Ljava/util/Date;Lqh/h;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->l:Loh/x;

    sget-object v0, LSh/d;->V:Loh/x;

    invoke-virtual {p1, v0}, Loh/B;->A(Loh/B;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "AES/CCM/NoPadding"

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->b(Ljava/lang/String;[B)Ljavax/crypto/Cipher;

    move-result-object p1

    invoke-virtual {v8}, Loh/v;->getEncoded()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    invoke-virtual {p1}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object p1

    new-instance v2, LXh/p;

    new-instance v3, LXh/k;

    invoke-virtual {p1}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lnj/a;->v(Ljava/lang/Object;)Lnj/a;

    move-result-object p1

    invoke-direct {v3, v0, p1}, LXh/k;-><init>(Loh/x;Loh/g;)V

    invoke-direct {v2, v1, v3}, LXh/p;-><init>(LXh/m;LXh/k;)V

    new-instance p1, Lqh/b;

    new-instance v0, Lhi/b;

    sget-object v1, LXh/t;->j1:Loh/x;

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    invoke-direct {p1, v0, p2}, Lqh/b;-><init>(Lhi/b;[B)V

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

    :catch_3
    move-exception p1

    goto :goto_5

    :catch_4
    move-exception p1

    goto :goto_6

    :cond_1
    const-string p1, "AESKWP"

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->b(Ljava/lang/String;[B)Ljavax/crypto/Cipher;

    move-result-object p1

    invoke-virtual {v8}, Loh/v;->getEncoded()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    new-instance p2, LXh/p;

    new-instance v0, LXh/k;

    sget-object v2, LSh/d;->W:Loh/x;

    invoke-direct {v0, v2}, LXh/k;-><init>(Loh/x;)V

    invoke-direct {p2, v1, v0}, LXh/p;-><init>(LXh/m;LXh/k;)V

    new-instance v0, Lqh/b;

    new-instance v1, Lhi/b;

    sget-object v2, LXh/t;->j1:Loh/x;

    invoke-direct {v1, v2, p2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    invoke-direct {v0, v1, p1}, Lqh/b;-><init>(Lhi/b;[B)V
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    :goto_1
    return-object p1

    :goto_2
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :goto_3
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :goto_4
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :goto_5
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :goto_6
    new-instance p2, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final o(Lorg/bouncycastle/crypto/util/m;LXh/m;)Z
    .locals 3

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/m;->a()Loh/x;

    move-result-object v0

    invoke-virtual {p2}, LXh/m;->u()Loh/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lyj/c;->O:Loh/x;

    invoke-virtual {p2}, LXh/m;->u()Loh/x;

    move-result-object v2

    invoke-virtual {v0, v2}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p1, Lorg/bouncycastle/crypto/util/v;

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lorg/bouncycastle/crypto/util/v;

    invoke-virtual {p2}, LXh/m;->x()Loh/g;

    move-result-object p2

    invoke-static {p2}, Lyj/f;->w(Ljava/lang/Object;)Lyj/f;

    move-result-object p2

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/v;->e()I

    move-result v0

    invoke-virtual {p2}, Lyj/f;->z()[B

    move-result-object v2

    array-length v2, v2

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/v;->b()I

    move-result v0

    invoke-virtual {p2}, Lyj/f;->u()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/v;->c()I

    move-result v0

    invoke-virtual {p2}, Lyj/f;->v()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/v;->d()I

    move-result p1

    invoke-virtual {p2}, Lyj/f;->y()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result p2

    if-eq p1, p2, :cond_5

    :cond_2
    return v1

    :cond_3
    instance-of v0, p1, Lorg/bouncycastle/crypto/util/l;

    if-nez v0, :cond_4

    return v1

    :cond_4
    check-cast p1, Lorg/bouncycastle/crypto/util/l;

    invoke-virtual {p2}, LXh/m;->x()Loh/g;

    move-result-object p2

    invoke-static {p2}, LXh/q;->u(Ljava/lang/Object;)LXh/q;

    move-result-object p2

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/l;->d()I

    move-result v0

    invoke-virtual {p2}, LXh/q;->z()[B

    move-result-object v2

    array-length v2, v2

    if-ne v0, v2, :cond_6

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/l;->b()I

    move-result p1

    invoke-virtual {p2}, LXh/q;->v()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result p2

    if-eq p1, p2, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    return p1

    :cond_6
    :goto_0
    return v1
.end method

.method public final p([BLqh/l;[C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    invoke-virtual {p2}, Lqh/l;->x()Lhi/b;

    move-result-object v0

    invoke-virtual {p2}, Lqh/l;->y()LXh/m;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p3}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->a([BLhi/b;LXh/m;[C)[B

    move-result-object p1

    invoke-virtual {p2}, Lqh/l;->v()[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/util/a;->I([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "BCFKS KeyStore corrupted: MAC calculation failed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final q(Loh/g;Lqh/n;Ljava/security/PublicKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->d:Ldk/f;

    invoke-virtual {p2}, Lqh/n;->y()Lhi/b;

    move-result-object v1

    invoke-virtual {v1}, Lhi/b;->u()Loh/x;

    move-result-object v1

    invoke-virtual {v1}, Loh/x;->J()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ldk/f;->a(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-interface {p1}, Loh/g;->r()Loh/B;

    move-result-object p1

    const-string p3, "DER"

    invoke-virtual {p1, p3}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    invoke-virtual {p2}, Lqh/n;->x()Loh/c;

    move-result-object p1

    invoke-virtual {p1}, Loh/c;->J()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "BCFKS KeyStore corrupted: signature calculation failed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
