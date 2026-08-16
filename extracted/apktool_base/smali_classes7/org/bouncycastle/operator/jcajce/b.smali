.class public Lorg/bouncycastle/operator/jcajce/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Ljava/util/Set;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

.field public c:Ljava/security/SecureRandom;

.field public d:Lhi/b;

.field public e:Ljava/security/spec/AlgorithmParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/operator/jcajce/b;->f:Ljava/util/Set;

    const-string v1, "DILITHIUM"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "SPHINCS+"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "SPHINCSPlus"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Ldk/d;

    invoke-direct {v1}, Ldk/d;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Ldk/f;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/b;->b:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Ldk/d;

    invoke-direct {v1}, Ldk/d;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Ldk/f;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/b;->b:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/b;->a:Ljava/lang/String;

    instance-of p1, p2, Ljava/security/spec/PSSParameterSpec;

    if-eqz p1, :cond_0

    check-cast p2, Ljava/security/spec/PSSParameterSpec;

    iput-object p2, p0, Lorg/bouncycastle/operator/jcajce/b;->e:Ljava/security/spec/AlgorithmParameterSpec;

    new-instance p1, Lhi/b;

    sget-object v0, LXh/t;->Q0:Loh/x;

    invoke-static {p2}, Lorg/bouncycastle/operator/jcajce/b;->e(Ljava/security/spec/PSSParameterSpec;)LXh/B;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/b;->d:Lhi/b;

    goto :goto_1

    :cond_0
    instance-of p1, p2, Lck/b;

    if-eqz p1, :cond_1

    check-cast p2, Lck/b;

    iput-object p2, p0, Lorg/bouncycastle/operator/jcajce/b;->e:Ljava/security/spec/AlgorithmParameterSpec;

    new-instance p1, Lhi/b;

    sget-object v0, LQh/c;->P:Loh/x;

    invoke-static {p2}, Lorg/bouncycastle/operator/jcajce/b;->d(Lck/b;)Loh/E;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    goto :goto_0

    :goto_1
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown sigParamSpec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_2

    const-string p2, "null"

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    :goto_2
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic a(Lorg/bouncycastle/operator/jcajce/b;)Lhi/b;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/operator/jcajce/b;->d:Lhi/b;

    return-object p0
.end method

.method public static d(Lck/b;)Loh/E;
    .locals 7

    new-instance v0, LQk/m;

    invoke-direct {v0}, LQk/m;-><init>()V

    new-instance v1, Loh/h;

    invoke-direct {v1}, Loh/h;-><init>()V

    invoke-virtual {p0}, Lck/b;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lck/b;->b()Ljava/util/List;

    move-result-object p0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/spec/AlgorithmParameterSpec;

    if-nez v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4}, LQk/J;->a(Ljava/lang/String;)Lhi/b;

    move-result-object v4

    invoke-virtual {v1, v4}, Loh/h;->a(Loh/g;)V

    goto :goto_1

    :cond_0
    instance-of v5, v4, Ljava/security/spec/PSSParameterSpec;

    if-eqz v5, :cond_1

    new-instance v5, Lhi/b;

    sget-object v6, LXh/t;->Q0:Loh/x;

    check-cast v4, Ljava/security/spec/PSSParameterSpec;

    invoke-static {v4}, Lorg/bouncycastle/operator/jcajce/b;->e(Ljava/security/spec/PSSParameterSpec;)LXh/B;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    invoke-virtual {v1, v5}, Loh/h;->a(Loh/g;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unrecognized parameterSpec"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Loh/G0;

    invoke-direct {p0, v1}, Loh/G0;-><init>(Loh/h;)V

    return-object p0
.end method

.method public static e(Ljava/security/spec/PSSParameterSpec;)LXh/B;
    .locals 7

    new-instance v0, LQk/j;

    invoke-direct {v0}, LQk/j;-><init>()V

    invoke-virtual {p0}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, LQk/o;->a(Ljava/lang/String;)Lhi/b;

    move-result-object v1

    invoke-virtual {v1}, Lhi/b;->x()Loh/g;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lhi/b;

    invoke-virtual {v1}, Lhi/b;->u()Loh/x;

    move-result-object v1

    sget-object v3, Loh/A0;->c:Loh/A0;

    invoke-direct {v2, v1, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {p0}, Ljava/security/spec/PSSParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v2

    check-cast v2, Ljava/security/spec/MGF1ParameterSpec;

    invoke-virtual {v2}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, LQk/o;->a(Ljava/lang/String;)Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Lhi/b;

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    sget-object v3, Loh/A0;->c:Loh/A0;

    invoke-direct {v2, v0, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    move-object v0, v2

    :cond_1
    new-instance v2, LXh/B;

    new-instance v3, Lhi/b;

    sget-object v4, LXh/t;->O0:Loh/x;

    invoke-direct {v3, v4, v0}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    new-instance v0, Loh/s;

    invoke-virtual {p0}, Ljava/security/spec/PSSParameterSpec;->getSaltLength()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {v0, v4, v5}, Loh/s;-><init>(J)V

    new-instance v4, Loh/s;

    invoke-virtual {p0}, Ljava/security/spec/PSSParameterSpec;->getTrailerField()I

    move-result p0

    int-to-long v5, p0

    invoke-direct {v4, v5, v6}, Loh/s;-><init>(J)V

    invoke-direct {v2, v1, v3, v0, v4}, LXh/B;-><init>(Lhi/b;Lhi/b;Loh/s;Loh/s;)V

    return-object v2
.end method


# virtual methods
.method public b(Ljava/security/PrivateKey;)LQk/f;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    instance-of v0, p1, LHj/d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, LHj/d;

    invoke-virtual {v0}, LHj/d;->a()Loh/x;

    move-result-object v1

    sget-object v2, LQh/c;->Q:Loh/x;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/operator/jcajce/b;->c(LHj/d;)LQk/f;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/b;->e:Ljava/security/spec/AlgorithmParameterSpec;

    if-nez v0, :cond_2

    sget-object v0, Lorg/bouncycastle/operator/jcajce/b;->f:Ljava/util/Set;

    iget-object v1, p0, Lorg/bouncycastle/operator/jcajce/b;->a:Ljava/lang/String;

    invoke-static {v1}, Lorg/bouncycastle/util/w;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, LXh/v;->v(Ljava/lang/Object;)LXh/v;

    move-result-object v0

    invoke-virtual {v0}, LXh/v;->y()Lhi/b;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/b;->d:Lhi/b;

    :goto_0
    iput-object v1, p0, Lorg/bouncycastle/operator/jcajce/b;->e:Ljava/security/spec/AlgorithmParameterSpec;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_1
    new-instance v0, LQk/m;

    invoke-direct {v0}, LQk/m;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/operator/jcajce/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, LQk/m;->a(Ljava/lang/String;)Lhi/b;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/b;->d:Lhi/b;

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/b;->d:Lhi/b;

    iget-object v1, p0, Lorg/bouncycastle/operator/jcajce/b;->b:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->j(Lhi/b;)Ljava/security/Signature;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/operator/jcajce/b;->c:Ljava/security/SecureRandom;

    if-eqz v2, :cond_3

    invoke-virtual {v1, p1, v2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    :goto_2
    new-instance p1, Lorg/bouncycastle/operator/jcajce/b$a;

    invoke-direct {p1, p0, v1, v0}, Lorg/bouncycastle/operator/jcajce/b$a;-><init>(Lorg/bouncycastle/operator/jcajce/b;Ljava/security/Signature;Lhi/b;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_3
    new-instance v0, Lorg/bouncycastle/operator/OperatorCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot create signer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final c(LHj/d;)LQk/f;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, LHj/d;->b()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/b;->d:Lhi/b;

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v0

    invoke-virtual {v0}, Loh/E;->size()I

    move-result v1

    new-array v2, v1, [Ljava/security/Signature;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual {v0}, Loh/E;->size()I

    move-result v5

    if-eq v4, v5, :cond_1

    iget-object v5, p0, Lorg/bouncycastle/operator/jcajce/b;->b:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    invoke-virtual {v0, v4}, Loh/E;->I(I)Loh/g;

    move-result-object v6

    invoke-static {v6}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->j(Lhi/b;)Ljava/security/Signature;

    move-result-object v5

    aput-object v5, v2, v4

    iget-object v6, p0, Lorg/bouncycastle/operator/jcajce/b;->c:Ljava/security/SecureRandom;

    if-eqz v6, :cond_0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/PrivateKey;

    iget-object v7, p0, Lorg/bouncycastle/operator/jcajce/b;->c:Ljava/security/SecureRandom;

    invoke-virtual {v5, v6, v7}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/PrivateKey;

    invoke-virtual {v5, v6}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    aget-object p1, v2, v3

    invoke-static {p1}, LJj/f;->b(Ljava/security/Signature;)Ljava/io/OutputStream;

    move-result-object p1

    const/4 v0, 0x1

    :goto_2
    if-eq v0, v1, :cond_2

    new-instance v3, Lfm/f;

    aget-object v4, v2, v0

    invoke-static {v4}, LJj/f;->b(Ljava/security/Signature;)Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lfm/f;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    add-int/lit8 v0, v0, 0x1

    move-object p1, v3

    goto :goto_2

    :cond_2
    new-instance v0, Lorg/bouncycastle/operator/jcajce/b$b;

    invoke-direct {v0, p0, p1, v2}, Lorg/bouncycastle/operator/jcajce/b$b;-><init>(Lorg/bouncycastle/operator/jcajce/b;Ljava/io/OutputStream;[Ljava/security/Signature;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_3
    new-instance v0, Lorg/bouncycastle/operator/OperatorCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot create signer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public f(Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/b;
    .locals 2

    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Ldk/i;

    invoke-direct {v1, p1}, Ldk/i;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Ldk/f;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/b;->b:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public g(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/b;
    .locals 2

    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Ldk/k;

    invoke-direct {v1, p1}, Ldk/k;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Ldk/f;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/b;->b:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public h(Ljava/security/SecureRandom;)Lorg/bouncycastle/operator/jcajce/b;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/b;->c:Ljava/security/SecureRandom;

    return-object p0
.end method
