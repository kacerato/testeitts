.class public Lorg/bouncycastle/operator/jcajce/f;
.super LQk/d;
.source "SourceFile"


# static fields
.field public static final f:Ljava/util/Set;

.field public static final g:Ljava/util/Map;


# instance fields
.field public b:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

.field public c:Ljava/util/Map;

.field public d:Ljava/security/PublicKey;

.field public e:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/operator/jcajce/f;->f:Ljava/util/Set;

    sget-object v1, Lyh/a;->C:Loh/x;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lyh/a;->m:Loh/x;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, LYh/a;->l:Loh/x;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, LYh/a;->m:Loh/x;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, LYh/a;->g:Loh/x;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, LYh/a;->h:Loh/x;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/operator/jcajce/f;->g:Ljava/util/Map;

    new-instance v1, Lhi/b;

    sget-object v2, LWh/b;->i:Loh/x;

    sget-object v3, Loh/A0;->c:Loh/A0;

    invoke-direct {v1, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    const-string v4, "SHA1"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lhi/b;

    invoke-direct {v1, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    const-string v2, "SHA-1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lhi/b;

    sget-object v2, LSh/d;->f:Loh/x;

    invoke-direct {v1, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    const-string v4, "SHA224"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lhi/b;

    invoke-direct {v1, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    const-string v2, "SHA-224"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lhi/b;

    sget-object v2, LSh/d;->c:Loh/x;

    invoke-direct {v1, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    const-string v4, "SHA256"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lhi/b;

    invoke-direct {v1, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    const-string v2, "SHA-256"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lhi/b;

    sget-object v2, LSh/d;->d:Loh/x;

    invoke-direct {v1, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    const-string v4, "SHA384"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lhi/b;

    invoke-direct {v1, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    const-string v2, "SHA-384"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lhi/b;

    sget-object v2, LSh/d;->e:Loh/x;

    invoke-direct {v1, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    const-string v4, "SHA512"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lhi/b;

    invoke-direct {v1, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    const-string v2, "SHA-512"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lhi/b;

    sget-object v2, LSh/d;->g:Loh/x;

    invoke-direct {v1, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    const-string v4, "SHA512/224"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lhi/b;

    invoke-direct {v1, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    const-string v4, "SHA-512/224"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lhi/b;

    invoke-direct {v1, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    const-string v2, "SHA-512(224)"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lhi/b;

    sget-object v2, LSh/d;->h:Loh/x;

    invoke-direct {v1, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    const-string v4, "SHA512/256"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lhi/b;

    invoke-direct {v1, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    const-string v4, "SHA-512/256"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lhi/b;

    invoke-direct {v1, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    const-string v2, "SHA-512(256)"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lhi/b;Ljava/security/PublicKey;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, LQk/d;-><init>(Lhi/b;)V

    new-instance p1, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v0, Ldk/d;

    invoke-direct {v0}, Ldk/d;-><init>()V

    invoke-direct {p1, v0}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Ldk/f;)V

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/f;->b:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/f;->c:Ljava/util/Map;

    iput-object p2, p0, Lorg/bouncycastle/operator/jcajce/f;->d:Ljava/security/PublicKey;

    return-void
.end method

.method public constructor <init>(Ljava/security/AlgorithmParameters;Ljava/security/PublicKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 2
    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p1, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/bouncycastle/operator/jcajce/f;->c(Ljava/security/PublicKey;Ljava/security/spec/AlgorithmParameterSpec;)Lhi/b;

    move-result-object p1

    invoke-direct {p0, p1}, LQk/d;-><init>(Lhi/b;)V

    new-instance p1, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v0, Ldk/d;

    invoke-direct {v0}, Ldk/d;-><init>()V

    invoke-direct {p1, v0}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Ldk/f;)V

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/f;->b:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/f;->c:Ljava/util/Map;

    iput-object p2, p0, Lorg/bouncycastle/operator/jcajce/f;->d:Ljava/security/PublicKey;

    return-void
.end method

.method public constructor <init>(Ljava/security/PublicKey;)V
    .locals 2

    .line 3
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object v0

    invoke-virtual {v0}, Lhi/h0;->u()Lhi/b;

    move-result-object v0

    invoke-direct {p0, v0}, LQk/d;-><init>(Lhi/b;)V

    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Ldk/d;

    invoke-direct {v1}, Ldk/d;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Ldk/f;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/f;->b:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/f;->c:Ljava/util/Map;

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/f;->d:Ljava/security/PublicKey;

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 0

    .line 4
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/operator/jcajce/f;-><init>(Ljava/security/PublicKey;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/PublicKey;)V
    .locals 1

    .line 5
    invoke-static {p2, p1}, Lorg/bouncycastle/operator/jcajce/f;->c(Ljava/security/PublicKey;Ljava/security/spec/AlgorithmParameterSpec;)Lhi/b;

    move-result-object p1

    invoke-direct {p0, p1}, LQk/d;-><init>(Lhi/b;)V

    new-instance p1, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v0, Ldk/d;

    invoke-direct {v0}, Ldk/d;-><init>()V

    invoke-direct {p1, v0}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Ldk/f;)V

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/f;->b:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/f;->c:Ljava/util/Map;

    iput-object p2, p0, Lorg/bouncycastle/operator/jcajce/f;->d:Ljava/security/PublicKey;

    return-void
.end method

.method public static c(Ljava/security/PublicKey;Ljava/security/spec/AlgorithmParameterSpec;)Lhi/b;
    .locals 7

    instance-of p0, p1, Ljavax/crypto/spec/OAEPParameterSpec;

    if-eqz p0, :cond_2

    check-cast p1, Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljavax/crypto/spec/OAEPParameterSpec;->DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object p0

    instance-of p0, p0, Ljavax/crypto/spec/PSource$PSpecified;

    if-eqz p0, :cond_0

    new-instance p0, Lhi/b;

    sget-object v0, LXh/t;->N0:Loh/x;

    new-instance v1, LXh/x;

    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/operator/jcajce/f;->d(Ljava/lang/String;)Lhi/b;

    move-result-object v2

    new-instance v3, Lhi/b;

    sget-object v4, LXh/t;->O0:Loh/x;

    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v5

    check-cast v5, Ljava/security/spec/MGF1ParameterSpec;

    invoke-virtual {v5}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/operator/jcajce/f;->d(Ljava/lang/String;)Lhi/b;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    new-instance v4, Lhi/b;

    sget-object v5, LXh/t;->P0:Loh/x;

    new-instance v6, Loh/C0;

    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object p1

    check-cast p1, Ljavax/crypto/spec/PSource$PSpecified;

    invoke-virtual {p1}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object p1

    invoke-direct {v6, p1}, Loh/C0;-><init>([B)V

    invoke-direct {v4, v5, v6}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    invoke-direct {v1, v2, v3, v4}, LXh/x;-><init>(Lhi/b;Lhi/b;Lhi/b;)V

    invoke-direct {p0, v0, v1}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown PSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/crypto/spec/PSource;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown MGF: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown spec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Ljava/lang/String;)Lhi/b;
    .locals 3

    sget-object v0, Lorg/bouncycastle/operator/jcajce/f;->g:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhi/b;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown digest name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static e(Loh/x;)Z
    .locals 1

    sget-object v0, Lorg/bouncycastle/operator/jcajce/f;->f:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public b(LQk/r;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorException;
        }
    .end annotation

    invoke-virtual {p0}, LQk/d;->a()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/operator/jcajce/f;->e(Loh/x;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/f;->e:Ljava/security/SecureRandom;

    invoke-static {v0}, LBi/r;->i(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/f;->e:Ljava/security/SecureRandom;

    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/f;->b:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    invoke-virtual {p0}, LQk/d;->a()Lhi/b;

    move-result-object v3

    invoke-virtual {v3}, Lhi/b;->u()Loh/x;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->h(Loh/x;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    iget-object v3, p0, Lorg/bouncycastle/operator/jcajce/f;->d:Ljava/security/PublicKey;

    check-cast v3, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v3}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/operator/jcajce/f;->e:Ljava/security/SecureRandom;

    invoke-virtual {v0, v3, v4}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    const/16 v3, 0x8

    new-array v3, v3, [B

    iget-object v4, p0, Lorg/bouncycastle/operator/jcajce/f;->e:Ljava/security/SecureRandom;

    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/Key;->getEncoded()[B

    move-result-object v4

    invoke-static {v4}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object v4

    invoke-virtual {v4}, Lhi/h0;->u()Lhi/b;

    move-result-object v5

    invoke-virtual {v5}, Lhi/b;->u()Loh/x;

    move-result-object v5

    sget-object v6, LYh/a;->b:Loh/x;

    invoke-virtual {v5, v6}, Loh/x;->O(Loh/x;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lyh/k;

    sget-object v6, LYh/a;->w:Loh/x;

    invoke-direct {v5, v6, v4, v3}, Lyh/k;-><init>(Loh/x;Lhi/h0;[B)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance v5, Lyh/k;

    sget-object v6, Lyh/a;->h:Loh/x;

    invoke-direct {v5, v6, v4, v3}, Lyh/k;-><init>(Loh/x;Lhi/h0;[B)V

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/operator/jcajce/f;->b:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    invoke-virtual {p0}, LQk/d;->a()Lhi/b;

    move-result-object v4

    invoke-virtual {v4}, Lhi/b;->u()Loh/x;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->g(Loh/x;)Ljavax/crypto/KeyAgreement;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    new-instance v4, Lck/D;

    invoke-virtual {v5}, Lyh/k;->y()[B

    move-result-object v6

    invoke-direct {v4, v6}, Lck/D;-><init>([B)V

    invoke-virtual {v3, v0, v4}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/f;->d:Ljava/security/PublicKey;

    invoke-virtual {v3, v0, v2}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    sget-object v0, Lyh/a;->e:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljavax/crypto/KeyAgreement;->generateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v2

    invoke-static {p1}, Lorg/bouncycastle/operator/jcajce/m;->a(LQk/r;)Ljava/security/Key;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    iget-object v3, p0, Lorg/bouncycastle/operator/jcajce/f;->b:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    invoke-virtual {v3, v0}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->e(Loh/x;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v3, Lck/k;

    invoke-virtual {v5}, Lyh/k;->u()Loh/x;

    move-result-object v4

    invoke-virtual {v5}, Lyh/k;->y()[B

    move-result-object v6

    invoke-direct {v3, v4, v6}, Lck/k;-><init>(Loh/x;[B)V

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "GOST"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object p1

    new-instance v0, Lyh/j;

    new-instance v1, Lyh/h;

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-static {p1, v2, v3}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v2

    const/16 v4, 0x24

    invoke-static {p1, v3, v4}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lyh/h;-><init>([B[B)V

    invoke-direct {v0, v1, v5}, Lyh/j;-><init>(Lyh/h;Lyh/k;)V

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    new-instance v0, Lorg/bouncycastle/operator/OperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception wrapping key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/operator/OperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/f;->b:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    invoke-virtual {p0}, LQk/d;->a()Lhi/b;

    move-result-object v3

    invoke-virtual {v3}, Lhi/b;->u()Loh/x;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/operator/jcajce/f;->c:Ljava/util/Map;

    invoke-virtual {v0, v3, v4}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->d(Loh/x;Ljava/util/Map;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0}, LQk/d;->a()Lhi/b;

    move-result-object v4

    invoke-virtual {v4}, Lhi/b;->u()Loh/x;

    move-result-object v4

    sget-object v5, LWh/b;->l:Loh/x;

    invoke-virtual {v4, v5}, Loh/B;->A(Loh/B;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/bouncycastle/operator/jcajce/f;->b:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    invoke-virtual {p0}, LQk/d;->a()Lhi/b;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->c(Lhi/b;)Ljava/security/AlgorithmParameters;

    move-result-object v4
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/ProviderException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-object v4, v3

    goto :goto_4

    :cond_2
    move-object v4, v3

    :goto_2
    if-eqz v4, :cond_3

    :try_start_2
    iget-object v5, p0, Lorg/bouncycastle/operator/jcajce/f;->d:Ljava/security/PublicKey;

    iget-object v6, p0, Lorg/bouncycastle/operator/jcajce/f;->e:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1, v5, v4, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    goto :goto_3

    :cond_3
    iget-object v5, p0, Lorg/bouncycastle/operator/jcajce/f;->d:Ljava/security/PublicKey;

    iget-object v6, p0, Lorg/bouncycastle/operator/jcajce/f;->e:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1, v5, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    :goto_3
    invoke-static {p1}, Lorg/bouncycastle/operator/jcajce/m;->a(LQk/r;)Ljava/security/Key;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v3
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/ProviderException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :goto_4
    if-nez v3, :cond_5

    const-string v1, "unable to encrypt contents key"

    if-eqz v4, :cond_4

    :try_start_3
    iget-object v3, p0, Lorg/bouncycastle/operator/jcajce/f;->d:Ljava/security/PublicKey;

    iget-object v5, p0, Lorg/bouncycastle/operator/jcajce/f;->e:Ljava/security/SecureRandom;

    invoke-virtual {v0, v2, v3, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    goto :goto_5

    :catch_3
    move-exception p1

    goto :goto_6

    :catch_4
    move-exception p1

    goto :goto_7

    :cond_4
    iget-object v3, p0, Lorg/bouncycastle/operator/jcajce/f;->d:Ljava/security/PublicKey;

    iget-object v4, p0, Lorg/bouncycastle/operator/jcajce/f;->e:Ljava/security/SecureRandom;

    invoke-virtual {v0, v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    :goto_5
    invoke-static {p1}, Lorg/bouncycastle/operator/jcajce/m;->a(LQk/r;)Ljava/security/Key;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_8

    :goto_6
    new-instance v0, Lorg/bouncycastle/operator/OperatorException;

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/operator/OperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_7
    new-instance v0, Lorg/bouncycastle/operator/OperatorException;

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/operator/OperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    :goto_8
    return-object v3
.end method

.method public f(Loh/x;Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/f;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/f;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/f;
    .locals 2

    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Ldk/i;

    invoke-direct {v1, p1}, Ldk/i;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Ldk/f;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/f;->b:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public h(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/f;
    .locals 2

    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Ldk/k;

    invoke-direct {v1, p1}, Ldk/k;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Ldk/f;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/f;->b:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public i(Ljava/security/SecureRandom;)Lorg/bouncycastle/operator/jcajce/f;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/f;->e:Ljava/security/SecureRandom;

    return-object p0
.end method
