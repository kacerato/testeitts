.class public LSj/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/interfaces/RSAPrivateKey;
.implements Lfk/p;


# static fields
.field public static final h:J = 0x46eb09c007cf411cL

.field public static i:Ljava/math/BigInteger;


# instance fields
.field public b:Ljava/math/BigInteger;

.field public c:Ljava/math/BigInteger;

.field public d:[B

.field public transient e:Lhi/b;

.field public transient f:LXi/F0;

.field public transient g:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, LSj/c;->i:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(LXi/F0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LSj/d;->f:Lhi/b;

    invoke-static {v0}, LSj/c;->g(Lhi/b;)[B

    move-result-object v1

    iput-object v1, p0, LSj/c;->d:[B

    iput-object v0, p0, LSj/c;->e:Lhi/b;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object v0, p0, LSj/c;->g:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-virtual {p1}, LXi/F0;->f()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LSj/c;->b:Ljava/math/BigInteger;

    invoke-virtual {p1}, LXi/F0;->d()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LSj/c;->c:Ljava/math/BigInteger;

    iput-object p1, p0, LSj/c;->f:LXi/F0;

    return-void
.end method

.method public constructor <init>(Lhi/b;LXh/y;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LSj/d;->f:Lhi/b;

    invoke-static {v0}, LSj/c;->g(Lhi/b;)[B

    move-result-object v1

    iput-object v1, p0, LSj/c;->d:[B

    iput-object v0, p0, LSj/c;->e:Lhi/b;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object v0, p0, LSj/c;->g:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    iput-object p1, p0, LSj/c;->e:Lhi/b;

    invoke-static {p1}, LSj/c;->g(Lhi/b;)[B

    move-result-object p1

    iput-object p1, p0, LSj/c;->d:[B

    invoke-virtual {p2}, LXh/y;->A()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, LSj/c;->b:Ljava/math/BigInteger;

    invoke-virtual {p2}, LXh/y;->D()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, LSj/c;->c:Ljava/math/BigInteger;

    new-instance p1, LXi/F0;

    iget-object p2, p0, LSj/c;->b:Ljava/math/BigInteger;

    iget-object v0, p0, LSj/c;->c:Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p1, v1, p2, v0}, LXi/F0;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object p1, p0, LSj/c;->f:LXi/F0;

    return-void
.end method

.method public constructor <init>(Lhi/b;LXi/F0;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LSj/d;->f:Lhi/b;

    invoke-static {v0}, LSj/c;->g(Lhi/b;)[B

    move-result-object v1

    iput-object v1, p0, LSj/c;->d:[B

    iput-object v0, p0, LSj/c;->e:Lhi/b;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object v0, p0, LSj/c;->g:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    iput-object p1, p0, LSj/c;->e:Lhi/b;

    invoke-static {p1}, LSj/c;->g(Lhi/b;)[B

    move-result-object p1

    iput-object p1, p0, LSj/c;->d:[B

    invoke-virtual {p2}, LXi/F0;->f()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, LSj/c;->b:Ljava/math/BigInteger;

    invoke-virtual {p2}, LXi/F0;->d()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, LSj/c;->c:Ljava/math/BigInteger;

    iput-object p2, p0, LSj/c;->f:LXi/F0;

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/RSAPrivateKey;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LSj/d;->f:Lhi/b;

    invoke-static {v0}, LSj/c;->g(Lhi/b;)[B

    move-result-object v1

    iput-object v1, p0, LSj/c;->d:[B

    iput-object v0, p0, LSj/c;->e:Lhi/b;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object v0, p0, LSj/c;->g:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-interface {p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LSj/c;->b:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, LSj/c;->c:Ljava/math/BigInteger;

    new-instance p1, LXi/F0;

    iget-object v0, p0, LSj/c;->b:Ljava/math/BigInteger;

    iget-object v1, p0, LSj/c;->c:Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {p1, v2, v0, v1}, LXi/F0;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object p1, p0, LSj/c;->f:LXi/F0;

    return-void
.end method

.method public constructor <init>(Ljava/security/spec/RSAPrivateKeySpec;)V
    .locals 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LSj/d;->f:Lhi/b;

    invoke-static {v0}, LSj/c;->g(Lhi/b;)[B

    move-result-object v1

    iput-object v1, p0, LSj/c;->d:[B

    iput-object v0, p0, LSj/c;->e:Lhi/b;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object v0, p0, LSj/c;->g:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LSj/c;->b:Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateKeySpec;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, LSj/c;->c:Ljava/math/BigInteger;

    new-instance p1, LXi/F0;

    iget-object v0, p0, LSj/c;->b:Ljava/math/BigInteger;

    iget-object v1, p0, LSj/c;->c:Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {p1, v2, v0, v1}, LXi/F0;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object p1, p0, LSj/c;->f:LXi/F0;

    return-void
.end method

.method public static g(Lhi/b;)[B
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Loh/v;->getEncoded()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private h(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object p1, p0, LSj/c;->d:[B

    if-nez p1, :cond_0

    sget-object p1, LSj/d;->f:Lhi/b;

    invoke-static {p1}, LSj/c;->g(Lhi/b;)[B

    move-result-object p1

    iput-object p1, p0, LSj/c;->d:[B

    :cond_0
    iget-object p1, p0, LSj/c;->d:[B

    invoke-static {p1}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object p1

    iput-object p1, p0, LSj/c;->e:Lhi/b;

    new-instance p1, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object p1, p0, LSj/c;->g:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    new-instance p1, LXi/F0;

    iget-object v0, p0, LSj/c;->b:Ljava/math/BigInteger;

    iget-object v1, p0, LSj/c;->c:Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {p1, v2, v0, v1}, LXi/F0;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

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
.method public a(Loh/x;Loh/g;)V
    .locals 1

    iget-object v0, p0, LSj/c;->g:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;->a(Loh/x;Loh/g;)V

    return-void
.end method

.method public b()LXi/F0;
    .locals 1

    iget-object v0, p0, LSj/c;->f:LXi/F0;

    return-object v0
.end method

.method public c(Loh/x;)Loh/g;
    .locals 1

    iget-object v0, p0, LSj/c;->g:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;->c(Loh/x;)Loh/g;

    move-result-object p1

    return-object p1
.end method

.method public d()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, LSj/c;->g:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;->d()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    invoke-virtual {p0}, LSj/c;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, LSj/c;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v1, v0

    :cond_2
    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LSj/c;->e:Lhi/b;

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
    .locals 11

    iget-object v0, p0, LSj/c;->e:Lhi/b;

    new-instance v10, LXh/y;

    invoke-virtual {p0}, LSj/c;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, LSj/c;->i:Ljava/math/BigInteger;

    invoke-virtual {p0}, LSj/c;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    sget-object v9, LSj/c;->i:Ljava/math/BigInteger;

    move-object v1, v10

    move-object v5, v9

    move-object v6, v9

    move-object v7, v9

    move-object v8, v9

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

.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LSj/c;->b:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrivateExponent()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LSj/c;->c:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, LSj/c;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

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

    const-string v2, "RSA Private Key ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, LSj/c;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, LSj/l;->b(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "],[]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "            modulus: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, LSj/c;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
