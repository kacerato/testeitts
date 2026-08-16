.class public Lorg/bouncycastle/jce/provider/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfk/h;
.implements Ljavax/crypto/interfaces/DHPublicKey;


# static fields
.field public static final d:J = 0x78e9d455552c6634L


# instance fields
.field public b:Ljava/math/BigInteger;

.field public c:Lhk/j;


# direct methods
.method public constructor <init>(LXi/Y;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, LXi/Y;->e()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/p;->b:Ljava/math/BigInteger;

    new-instance v0, Lhk/j;

    invoke-virtual {p1}, LXi/V;->d()LXi/W;

    move-result-object v1

    invoke-virtual {v1}, LXi/W;->c()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, LXi/V;->d()LXi/W;

    move-result-object p1

    invoke-virtual {p1}, LXi/W;->a()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lhk/j;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/p;->c:Lhk/j;

    return-void
.end method

.method public constructor <init>(Lfk/h;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lfk/h;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/p;->b:Ljava/math/BigInteger;

    invoke-interface {p1}, Lfk/f;->getParameters()Lhk/j;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/p;->c:Lhk/j;

    return-void
.end method

.method public constructor <init>(Lhi/h0;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lhi/h0;->u()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, LBj/a;->v(Ljava/lang/Object;)LBj/a;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Lhi/h0;->A()Loh/B;

    move-result-object p1

    check-cast p1, Loh/s;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/p;->b:Ljava/math/BigInteger;

    new-instance p1, Lhk/j;

    invoke-virtual {v0}, LBj/a;->x()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, LBj/a;->u()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lhk/j;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/p;->c:Lhk/j;

    return-void

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid info structure in DSA public key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lhk/l;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lhk/l;->b()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/p;->b:Ljava/math/BigInteger;

    new-instance v0, Lhk/j;

    invoke-virtual {p1}, Lhk/i;->a()Lhk/j;

    move-result-object v1

    invoke-virtual {v1}, Lhk/j;->b()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lhk/i;->a()Lhk/j;

    move-result-object p1

    invoke-virtual {p1}, Lhk/j;->a()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lhk/j;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/p;->c:Lhk/j;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Lhk/j;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/p;->b:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/bouncycastle/jce/provider/p;->c:Lhk/j;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/interfaces/DHPublicKey;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/p;->b:Ljava/math/BigInteger;

    new-instance v0, Lhk/j;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lhk/j;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/p;->c:Lhk/j;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/spec/DHPublicKeySpec;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/p;->b:Ljava/math/BigInteger;

    new-instance v0, Lhk/j;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lhk/j;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/p;->c:Lhk/j;

    return-void
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/p;->b:Ljava/math/BigInteger;

    new-instance v0, Lhk/j;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/math/BigInteger;

    invoke-direct {v0, v1, p1}, Lhk/j;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/p;->c:Lhk/j;

    return-void
.end method

.method private b(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/p;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/p;->c:Lhk/j;

    invoke-virtual {v0}, Lhk/j;->b()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/p;->c:Lhk/j;

    invoke-virtual {v0}, Lhk/j;->a()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "ElGamal"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 5

    new-instance v0, Lhi/b;

    sget-object v1, LBj/b;->l:Loh/x;

    new-instance v2, LBj/a;

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/p;->c:Lhk/j;

    invoke-virtual {v3}, Lhk/j;->b()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/jce/provider/p;->c:Lhk/j;

    invoke-virtual {v4}, Lhk/j;->a()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v2, v3, v4}, LBj/a;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    new-instance v1, Loh/s;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/p;->b:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/l;->c(Lhi/b;Loh/g;)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "X.509"

    return-object v0
.end method

.method public getParameters()Lhk/j;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/p;->c:Lhk/j;

    return-object v0
.end method

.method public getParams()Ljavax/crypto/spec/DHParameterSpec;
    .locals 3

    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/p;->c:Lhk/j;

    invoke-virtual {v1}, Lhk/j;->b()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/p;->c:Lhk/j;

    invoke-virtual {v2}, Lhk/j;->a()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/p;->b:Ljava/math/BigInteger;

    return-object v0
.end method
