.class public Lorg/bouncycastle/cms/jcajce/p;
.super Lorg/bouncycastle/cms/h0;
.source "SourceFile"


# static fields
.field public static j:Ljava/util/Map;


# instance fields
.field public final b:Lhi/b;

.field public final c:I

.field public d:Lorg/bouncycastle/cms/jcajce/d;

.field public e:Ljava/util/Map;

.field public f:Ljava/security/PublicKey;

.field public g:Ljava/security/SecureRandom;

.field public h:Lhi/b;

.field public i:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/cms/jcajce/p;->j:Ljava/util/Map;

    sget-object v1, LOl/g;->c:LOl/g;

    invoke-virtual {v1}, LOl/g;->b()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x300

    invoke-static {v2}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/jcajce/p;->j:Ljava/util/Map;

    sget-object v1, LOl/g;->d:LOl/g;

    invoke-virtual {v1}, LOl/g;->b()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x440

    invoke-static {v2}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/jcajce/p;->j:Ljava/util/Map;

    sget-object v1, LOl/g;->e:LOl/g;

    invoke-virtual {v1}, LOl/g;->b()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x620

    invoke-static {v2}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/jcajce/p;->j:Ljava/util/Map;

    sget-object v1, LOl/o;->c:LOl/o;

    invoke-virtual {v1}, LOl/o;->b()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2bb

    invoke-static {v2}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/jcajce/p;->j:Ljava/util/Map;

    sget-object v1, LOl/o;->d:LOl/o;

    invoke-virtual {v1}, LOl/o;->b()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3a2

    invoke-static {v2}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/jcajce/p;->j:Ljava/util/Map;

    sget-object v1, LOl/o;->e:LOl/o;

    invoke-virtual {v1}, LOl/o;->b()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4ce

    invoke-static {v2}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/jcajce/p;->j:Ljava/util/Map;

    sget-object v1, LOl/o;->g:LOl/o;

    invoke-virtual {v1}, LOl/o;->b()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x472

    invoke-static {v2}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/security/PublicKey;Loh/x;)V
    .locals 5

    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_0

    new-instance v0, Lhi/b;

    sget-object v1, LNh/a;->h:Loh/x;

    invoke-direct {v0, v1}, Lhi/b;-><init>(Loh/x;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object v0

    invoke-virtual {v0}, Lhi/h0;->u()Lhi/b;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/h0;-><init>(Lhi/b;)V

    new-instance v0, Lorg/bouncycastle/cms/jcajce/b;

    invoke-direct {v0}, Lorg/bouncycastle/cms/jcajce/b;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/p;->d:Lorg/bouncycastle/cms/jcajce/d;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/p;->e:Ljava/util/Map;

    new-instance v0, Lhi/b;

    sget-object v1, Lki/r;->P6:Loh/x;

    new-instance v2, Lhi/b;

    sget-object v3, LSh/d;->c:Loh/x;

    sget-object v4, Loh/A0;->c:Loh/A0;

    invoke-direct {v2, v3, v4}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/p;->h:Lhi/b;

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/p;->f:Ljava/security/PublicKey;

    new-instance p1, Lhi/b;

    invoke-direct {p1, p2}, Lhi/b;-><init>(Loh/x;)V

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/p;->b:Lhi/b;

    invoke-static {p2}, Lorg/bouncycastle/cms/jcajce/a;->h(Loh/x;)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/cms/jcajce/p;->c:I

    return-void
.end method


# virtual methods
.method public b(LQk/r;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Luh/k;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/p;->b:Lhi/b;

    iget v2, p0, Lorg/bouncycastle/cms/jcajce/p;->c:I

    invoke-direct {v0, v1, v2}, Luh/k;-><init>(Lhi/b;I)V

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/p;->f:Ljava/security/PublicKey;

    instance-of v1, v1, Ljava/security/interfaces/RSAPublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v2, "Unable to wrap contents key: "

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/p;->d:Lorg/bouncycastle/cms/jcajce/d;

    invoke-virtual {p0}, LQk/d;->a()Lhi/b;

    move-result-object v5

    invoke-virtual {v5}, Lhi/b;->u()Loh/x;

    move-result-object v5

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v5, v6}, Lorg/bouncycastle/cms/jcajce/a;->b(Ldk/f;Loh/x;Ljava/util/Map;)Ljavax/crypto/Cipher;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    new-instance v5, Lck/r$a;

    iget-object v6, p0, Lorg/bouncycastle/cms/jcajce/p;->b:Lhi/b;

    invoke-virtual {v6}, Lhi/b;->u()Loh/x;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/cms/jcajce/a;->j(Loh/x;)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lorg/bouncycastle/cms/jcajce/p;->c:I

    mul-int/lit8 v7, v7, 0x8

    invoke-direct {v5, v6, v7, v0}, Lck/r$a;-><init>(Ljava/lang/String;I[B)V

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/p;->h:Lhi/b;

    invoke-virtual {v5, v0}, Lck/r$a;->b(Lhi/b;)Lck/r$a;

    move-result-object v0

    invoke-virtual {v0}, Lck/r$a;->a()Lck/r;

    move-result-object v0

    iget-object v5, p0, Lorg/bouncycastle/cms/jcajce/p;->f:Ljava/security/PublicKey;

    iget-object v6, p0, Lorg/bouncycastle/cms/jcajce/p;->g:Ljava/security/SecureRandom;

    invoke-virtual {v1, v4, v5, v0, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/a;->g(LQk/r;)Ljava/security/Key;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/p;->f:Ljava/security/PublicKey;

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    invoke-static {p1, v3, v0}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/cms/jcajce/p;->i:[B

    array-length v1, p1

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    :try_start_3
    new-instance v0, Lorg/bouncycastle/operator/OperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/operator/OperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/p;->d:Lorg/bouncycastle/cms/jcajce/d;

    invoke-virtual {p0}, LQk/d;->a()Lhi/b;

    move-result-object v5

    invoke-virtual {v5}, Lhi/b;->u()Loh/x;

    move-result-object v5

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v5, v6}, Lorg/bouncycastle/cms/jcajce/a;->b(Ldk/f;Loh/x;Ljava/util/Map;)Ljavax/crypto/Cipher;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    new-instance v5, Lck/r$a;

    iget-object v6, p0, Lorg/bouncycastle/cms/jcajce/p;->b:Lhi/b;

    invoke-virtual {v6}, Lhi/b;->u()Loh/x;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/cms/jcajce/a;->j(Loh/x;)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lorg/bouncycastle/cms/jcajce/p;->c:I

    mul-int/lit8 v7, v7, 0x8

    invoke-direct {v5, v6, v7, v0}, Lck/r$a;-><init>(Ljava/lang/String;I[B)V

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/p;->h:Lhi/b;

    invoke-virtual {v5, v0}, Lck/r$a;->b(Lhi/b;)Lck/r$a;

    move-result-object v0

    invoke-virtual {v0}, Lck/r$a;->a()Lck/r;

    move-result-object v0

    iget-object v5, p0, Lorg/bouncycastle/cms/jcajce/p;->f:Ljava/security/PublicKey;

    iget-object v6, p0, Lorg/bouncycastle/cms/jcajce/p;->g:Ljava/security/SecureRandom;

    invoke-virtual {v1, v4, v5, v0, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/a;->g(LQk/r;)Ljava/security/Key;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/p;->f:Ljava/security/PublicKey;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/cms/jcajce/p;->g(Ljava/security/PublicKey;)I

    move-result v0

    invoke-static {p1, v3, v0}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/cms/jcajce/p;->i:[B

    array-length v1, p1

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-object p1

    :catch_2
    move-exception p1

    :try_start_5
    new-instance v0, Lorg/bouncycastle/operator/OperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/operator/OperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_0
    new-instance v0, Lorg/bouncycastle/operator/OperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to wrap contents key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/operator/OperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public c()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/p;->i:[B

    return-object v0
.end method

.method public d()Lhi/b;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/p;->h:Lhi/b;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/cms/jcajce/p;->c:I

    return v0
.end method

.method public f()Lhi/b;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/p;->b:Lhi/b;

    return-object v0
.end method

.method public final g(Ljava/security/PublicKey;)I
    .locals 1

    instance-of v0, p1, Lsl/m;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/bouncycastle/cms/jcajce/p;->j:Ljava/util/Map;

    check-cast p1, Lsl/m;

    invoke-interface {p1}, Lsl/k;->t()LOl/g;

    move-result-object p1

    invoke-virtual {p1}, LOl/g;->b()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    instance-of v0, p1, Lsl/s;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/bouncycastle/cms/jcajce/p;->j:Ljava/util/Map;

    check-cast p1, Lsl/s;

    invoke-interface {p1}, Lsl/s;->t()LOl/o;

    move-result-object p1

    invoke-virtual {p1}, LOl/o;->b()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public h(Loh/x;Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/p;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/p;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public i(Lhi/b;)Lorg/bouncycastle/cms/jcajce/p;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/p;->h:Lhi/b;

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/p;
    .locals 1

    new-instance v0, Lorg/bouncycastle/cms/jcajce/S;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cms/jcajce/S;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/p;->d:Lorg/bouncycastle/cms/jcajce/d;

    return-object p0
.end method

.method public k(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/p;
    .locals 1

    new-instance v0, Lorg/bouncycastle/cms/jcajce/T;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cms/jcajce/T;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/p;->d:Lorg/bouncycastle/cms/jcajce/d;

    return-object p0
.end method

.method public l(Ljava/security/SecureRandom;)Lorg/bouncycastle/cms/jcajce/p;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/p;->g:Ljava/security/SecureRandom;

    return-object p0
.end method
