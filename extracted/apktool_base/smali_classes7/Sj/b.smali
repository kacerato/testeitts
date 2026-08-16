.class public LSj/b;
.super LSj/c;
.source "SourceFile"

# interfaces
.implements Ljava/security/interfaces/RSAPrivateCrtKey;


# static fields
.field public static final p:J = 0x6cba87ce0273552eL


# instance fields
.field public j:Ljava/math/BigInteger;

.field public k:Ljava/math/BigInteger;

.field public l:Ljava/math/BigInteger;

.field public m:Ljava/math/BigInteger;

.field public n:Ljava/math/BigInteger;

.field public o:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(LXh/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, LXh/v;->y()Lhi/b;

    move-result-object v0

    invoke-virtual {p1}, LXh/v;->E()Loh/g;

    move-result-object p1

    invoke-static {p1}, LXh/y;->y(Ljava/lang/Object;)LXh/y;

    move-result-object p1

    invoke-direct {p0, v0, p1}, LSj/b;-><init>(Lhi/b;LXh/y;)V

    return-void
.end method

.method public constructor <init>(LXh/y;)V
    .locals 1

    .line 2
    sget-object v0, LSj/d;->f:Lhi/b;

    invoke-direct {p0, v0, p1}, LSj/b;-><init>(Lhi/b;LXh/y;)V

    return-void
.end method

.method public constructor <init>(LXi/G0;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, LSj/c;-><init>(LXi/F0;)V

    invoke-virtual {p1}, LXi/G0;->l()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LSj/b;->j:Ljava/math/BigInteger;

    invoke-virtual {p1}, LXi/G0;->k()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LSj/b;->k:Ljava/math/BigInteger;

    invoke-virtual {p1}, LXi/G0;->m()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LSj/b;->l:Ljava/math/BigInteger;

    invoke-virtual {p1}, LXi/G0;->i()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LSj/b;->m:Ljava/math/BigInteger;

    invoke-virtual {p1}, LXi/G0;->j()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LSj/b;->n:Ljava/math/BigInteger;

    invoke-virtual {p1}, LXi/G0;->n()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, LSj/b;->o:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lhi/b;LXh/y;)V
    .locals 10

    .line 4
    new-instance v9, LXi/G0;

    invoke-virtual {p2}, LXh/y;->A()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2}, LXh/y;->E()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2}, LXh/y;->D()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p2}, LXh/y;->B()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p2}, LXh/y;->C()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p2}, LXh/y;->v()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p2}, LXh/y;->x()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p2}, LXh/y;->u()Ljava/math/BigInteger;

    move-result-object v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, LXi/G0;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p0, p1, v9}, LSj/c;-><init>(Lhi/b;LXi/F0;)V

    invoke-virtual {p2}, LXh/y;->A()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, LSj/c;->b:Ljava/math/BigInteger;

    invoke-virtual {p2}, LXh/y;->E()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, LSj/b;->j:Ljava/math/BigInteger;

    invoke-virtual {p2}, LXh/y;->D()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, LSj/c;->c:Ljava/math/BigInteger;

    invoke-virtual {p2}, LXh/y;->B()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, LSj/b;->k:Ljava/math/BigInteger;

    invoke-virtual {p2}, LXh/y;->C()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, LSj/b;->l:Ljava/math/BigInteger;

    invoke-virtual {p2}, LXh/y;->v()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, LSj/b;->m:Ljava/math/BigInteger;

    invoke-virtual {p2}, LXh/y;->x()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, LSj/b;->n:Ljava/math/BigInteger;

    invoke-virtual {p2}, LXh/y;->u()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, LSj/b;->o:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lhi/b;LXi/G0;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, LSj/c;-><init>(Lhi/b;LXi/F0;)V

    invoke-virtual {p2}, LXi/G0;->l()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, LSj/b;->j:Ljava/math/BigInteger;

    invoke-virtual {p2}, LXi/G0;->k()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, LSj/b;->k:Ljava/math/BigInteger;

    invoke-virtual {p2}, LXi/G0;->m()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, LSj/b;->l:Ljava/math/BigInteger;

    invoke-virtual {p2}, LXi/G0;->i()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, LSj/b;->m:Ljava/math/BigInteger;

    invoke-virtual {p2}, LXi/G0;->j()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, LSj/b;->n:Ljava/math/BigInteger;

    invoke-virtual {p2}, LXi/G0;->n()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, LSj/b;->o:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/RSAPrivateCrtKey;)V
    .locals 10

    .line 6
    new-instance v9, LXi/G0;

    invoke-interface {p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, LXi/G0;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p0, v9}, LSj/c;-><init>(LXi/F0;)V

    invoke-interface {p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LSj/c;->b:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LSj/b;->j:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LSj/c;->c:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LSj/b;->k:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LSj/b;->l:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LSj/b;->m:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LSj/b;->n:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, LSj/b;->o:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Ljava/security/spec/RSAPrivateCrtKeySpec;)V
    .locals 10

    .line 7
    new-instance v9, LXi/G0;

    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateKeySpec;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, LXi/G0;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p0, v9}, LSj/c;-><init>(LXi/F0;)V

    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LSj/c;->b:Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LSj/b;->j:Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateKeySpec;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LSj/c;->c:Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LSj/b;->k:Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LSj/b;->l:Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LSj/b;->m:Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LSj/b;->n:Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, LSj/b;->o:Ljava/math/BigInteger;

    return-void
.end method

.method private h(Ljava/io/ObjectInputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    new-instance p1, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object p1, p0, LSj/c;->g:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    new-instance p1, LXi/G0;

    invoke-virtual {p0}, LSj/c;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, LSj/b;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, LSj/c;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, LSj/b;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, LSj/b;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0}, LSj/b;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p0}, LSj/b;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p0}, LSj/b;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v8

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, LXi/G0;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object p1, p0, LSj/c;->f:LXi/F0;

    return-void
.end method

.method private i(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    invoke-virtual {p0}, LSj/c;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, LSj/b;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, LSj/c;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, LSj/b;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, LSj/b;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, LSj/b;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, LSj/b;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, LSj/b;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getCrtCoefficient()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LSj/b;->o:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 11

    iget-object v0, p0, LSj/c;->e:Lhi/b;

    new-instance v10, LXh/y;

    invoke-virtual {p0}, LSj/c;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, LSj/b;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, LSj/c;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, LSj/b;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0}, LSj/b;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p0}, LSj/b;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p0}, LSj/b;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p0}, LSj/b;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v9

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, LXh/y;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v0, v10}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/l;->b(Lhi/b;Loh/g;)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public getPrimeExponentP()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LSj/b;->m:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrimeExponentQ()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LSj/b;->n:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrimeP()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LSj/b;->k:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrimeQ()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LSj/b;->l:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LSj/b;->j:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, LSj/c;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, LSj/b;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, LSj/c;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lorg/bouncycastle/util/w;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RSA Private CRT Key ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, LSj/c;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, LSj/l;->b(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ",["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, LSj/b;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3}, LSj/l;->a(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "             modulus: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, LSj/c;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "     public exponent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, LSj/b;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
