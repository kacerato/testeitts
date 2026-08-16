.class public LSj/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/interfaces/RSAPublicKey;


# static fields
.field public static final f:Lhi/b;

.field public static final g:J = 0x25226a0e5bfa6c84L


# instance fields
.field public b:Ljava/math/BigInteger;

.field public c:Ljava/math/BigInteger;

.field public transient d:Lhi/b;

.field public transient e:LXi/F0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lhi/b;

    sget-object v1, LXh/t;->H0:Loh/x;

    sget-object v2, Loh/A0;->c:Loh/A0;

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    sput-object v0, LSj/d;->f:Lhi/b;

    return-void
.end method

.method public constructor <init>(LXi/F0;)V
    .locals 1

    .line 1
    sget-object v0, LSj/d;->f:Lhi/b;

    invoke-direct {p0, v0, p1}, LSj/d;-><init>(Lhi/b;LXi/F0;)V

    return-void
.end method

.method public constructor <init>(Lhi/b;LXi/F0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LSj/d;->d:Lhi/b;

    invoke-virtual {p2}, LXi/F0;->f()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, LSj/d;->b:Ljava/math/BigInteger;

    invoke-virtual {p2}, LXi/F0;->d()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, LSj/d;->c:Ljava/math/BigInteger;

    iput-object p2, p0, LSj/d;->e:LXi/F0;

    return-void
.end method

.method public constructor <init>(Lhi/h0;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, LSj/d;->b(Lhi/h0;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/RSAPublicKey;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LSj/d;->f:Lhi/b;

    iput-object v0, p0, LSj/d;->d:Lhi/b;

    invoke-interface {p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LSj/d;->b:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, LSj/d;->c:Ljava/math/BigInteger;

    new-instance p1, LXi/F0;

    iget-object v0, p0, LSj/d;->b:Ljava/math/BigInteger;

    iget-object v1, p0, LSj/d;->c:Ljava/math/BigInteger;

    const/4 v2, 0x0

    invoke-direct {p1, v2, v0, v1}, LXi/F0;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object p1, p0, LSj/d;->e:LXi/F0;

    return-void
.end method

.method public constructor <init>(Ljava/security/spec/RSAPublicKeySpec;)V
    .locals 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LSj/d;->f:Lhi/b;

    iput-object v0, p0, LSj/d;->d:Lhi/b;

    invoke-virtual {p1}, Ljava/security/spec/RSAPublicKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LSj/d;->b:Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/security/spec/RSAPublicKeySpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, LSj/d;->c:Ljava/math/BigInteger;

    new-instance p1, LXi/F0;

    iget-object v0, p0, LSj/d;->b:Ljava/math/BigInteger;

    iget-object v1, p0, LSj/d;->c:Ljava/math/BigInteger;

    const/4 v2, 0x0

    invoke-direct {p1, v2, v0, v1}, LXi/F0;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object p1, p0, LSj/d;->e:LXi/F0;

    return-void
.end method


# virtual methods
.method public a()LXi/F0;
    .locals 1

    iget-object v0, p0, LSj/d;->e:LXi/F0;

    return-object v0
.end method

.method public final b(Lhi/h0;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Lhi/h0;->A()Loh/B;

    move-result-object v0

    invoke-static {v0}, LXh/A;->u(Ljava/lang/Object;)LXh/A;

    move-result-object v0

    invoke-virtual {p1}, Lhi/h0;->u()Lhi/b;

    move-result-object p1

    iput-object p1, p0, LSj/d;->d:Lhi/b;

    invoke-virtual {v0}, LXh/A;->x()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, LSj/d;->b:Ljava/math/BigInteger;

    invoke-virtual {v0}, LXh/A;->y()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, LSj/d;->c:Ljava/math/BigInteger;

    new-instance p1, LXi/F0;

    iget-object v0, p0, LSj/d;->b:Ljava/math/BigInteger;

    iget-object v1, p0, LSj/d;->c:Ljava/math/BigInteger;

    const/4 v2, 0x0

    invoke-direct {p1, v2, v0, v1}, LXi/F0;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object p1, p0, LSj/d;->e:LXi/F0;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid info structure in RSA public key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object p1

    iput-object p1, p0, LSj/d;->d:Lhi/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, LSj/d;->f:Lhi/b;

    iput-object p1, p0, LSj/d;->d:Lhi/b;

    :goto_0
    new-instance p1, LXi/F0;

    iget-object v0, p0, LSj/d;->b:Ljava/math/BigInteger;

    iget-object v1, p0, LSj/d;->c:Ljava/math/BigInteger;

    const/4 v2, 0x0

    invoke-direct {p1, v2, v0, v1}, LXi/F0;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object p1, p0, LSj/d;->e:LXi/F0;

    return-void
.end method

.method public final d(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, LSj/d;->d:Lhi/b;

    sget-object v1, LSj/d;->f:Lhi/b;

    invoke-virtual {v0, v1}, Loh/v;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LSj/d;->d:Lhi/b;

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljava/security/interfaces/RSAPublicKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    invoke-virtual {p0}, LSj/d;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, LSj/d;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

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

.method public getAlgorithm()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LSj/d;->d:Lhi/b;

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    sget-object v1, LXh/t;->Q0:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RSASSA-PSS"

    return-object v0

    :cond_0
    const-string v0, "RSA"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 4

    iget-object v0, p0, LSj/d;->d:Lhi/b;

    new-instance v1, LXh/A;

    invoke-virtual {p0}, LSj/d;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, LSj/d;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LXh/A;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/l;->c(Lhi/b;Loh/g;)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "X.509"

    return-object v0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LSj/d;->b:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LSj/d;->c:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, LSj/d;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, LSj/d;->getPublicExponent()Ljava/math/BigInteger;

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

    const-string v2, "RSA Public Key ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, LSj/d;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, LSj/l;->b(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ",["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, LSj/d;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3}, LSj/l;->a(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "        modulus: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, LSj/d;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "public exponent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, LSj/d;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
