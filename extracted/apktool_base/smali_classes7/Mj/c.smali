.class public LMj/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/crypto/interfaces/DHPrivateKey;
.implements Lfk/p;


# static fields
.field public static final g:J = 0x4511a58411962b4L


# instance fields
.field public b:Ljava/math/BigInteger;

.field public transient c:Ljavax/crypto/spec/DHParameterSpec;

.field public transient d:LXh/v;

.field public transient e:LXi/r;

.field public transient f:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object v0, p0, LMj/c;->f:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    return-void
.end method

.method public constructor <init>(LXh/v;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object v0, p0, LMj/c;->f:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-virtual {p1}, LXh/v;->y()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v0

    invoke-virtual {p1}, LXh/v;->E()Loh/g;

    move-result-object v1

    check-cast v1, Loh/s;

    invoke-virtual {p1}, LXh/v;->y()Lhi/b;

    move-result-object v2

    invoke-virtual {v2}, Lhi/b;->u()Loh/x;

    move-result-object v2

    iput-object p1, p0, LMj/c;->d:LXh/v;

    invoke-virtual {v1}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, LMj/c;->b:Ljava/math/BigInteger;

    sget-object p1, LXh/t;->Y0:Loh/x;

    invoke-virtual {v2, p1}, Loh/B;->A(Loh/B;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v0}, LXh/h;->v(Ljava/lang/Object;)LXh/h;

    move-result-object p1

    invoke-virtual {p1}, LXh/h;->x()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, LXh/h;->y()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, LXh/h;->u()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, LXh/h;->x()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iput-object v0, p0, LMj/c;->c:Ljavax/crypto/spec/DHParameterSpec;

    new-instance v0, LXi/r;

    iget-object v1, p0, LMj/c;->b:Ljava/math/BigInteger;

    new-instance v2, LXi/q;

    invoke-virtual {p1}, LXh/h;->y()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, LXh/h;->u()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, LXh/h;->x()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5, p1}, LXi/q;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v0, v1, v2}, LXi/r;-><init>(Ljava/math/BigInteger;LXi/q;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, LXh/h;->y()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, LXh/h;->u()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, LMj/c;->c:Ljavax/crypto/spec/DHParameterSpec;

    new-instance v0, LXi/r;

    iget-object v1, p0, LMj/c;->b:Ljava/math/BigInteger;

    new-instance v2, LXi/q;

    invoke-virtual {p1}, LXh/h;->y()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, LXh/h;->u()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v2, v3, p1}, LXi/q;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, LXi/r;-><init>(Ljava/math/BigInteger;LXi/q;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lki/r;->z6:Loh/x;

    invoke-virtual {v2, p1}, Loh/B;->A(Loh/B;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v0}, Lki/d;->v(Ljava/lang/Object;)Lki/d;

    move-result-object p1

    new-instance v6, Lck/c;

    invoke-virtual {p1}, Lki/d;->z()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lki/d;->A()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lki/d;->u()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lki/d;->x()Ljava/math/BigInteger;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lck/c;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iput-object v6, p0, LMj/c;->c:Ljavax/crypto/spec/DHParameterSpec;

    new-instance v0, LXi/r;

    iget-object v1, p0, LMj/c;->b:Ljava/math/BigInteger;

    new-instance v8, LXi/q;

    invoke-virtual {p1}, Lki/d;->z()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lki/d;->u()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Lki/d;->A()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1}, Lki/d;->x()Ljava/math/BigInteger;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, LXi/q;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;LXi/v;)V

    invoke-direct {v0, v1, v8}, LXi/r;-><init>(Ljava/math/BigInteger;LXi/q;)V

    :goto_0
    iput-object v0, p0, LMj/c;->e:LXi/r;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown algorithm type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(LXi/r;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object v0, p0, LMj/c;->f:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-virtual {p1}, LXi/r;->e()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LMj/c;->b:Ljava/math/BigInteger;

    new-instance v0, Lck/c;

    invoke-virtual {p1}, LXi/n;->d()LXi/q;

    move-result-object p1

    invoke-direct {v0, p1}, Lck/c;-><init>(LXi/q;)V

    iput-object v0, p0, LMj/c;->c:Ljavax/crypto/spec/DHParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/interfaces/DHPrivateKey;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object v0, p0, LMj/c;->f:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LMj/c;->b:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p1

    iput-object p1, p0, LMj/c;->c:Ljavax/crypto/spec/DHParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/spec/DHPrivateKeySpec;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object v0, p0, LMj/c;->f:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LMj/c;->b:Ljava/math/BigInteger;

    instance-of v0, p1, Lck/d;

    if-eqz v0, :cond_0

    check-cast p1, Lck/d;

    invoke-virtual {p1}, Lck/d;->a()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p1

    iput-object p1, p0, LMj/c;->c:Ljavax/crypto/spec/DHParameterSpec;

    goto :goto_0

    :cond_0
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, LMj/c;->c:Ljavax/crypto/spec/DHParameterSpec;

    :goto_0
    return-void
.end method

.method private g(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iput-object v0, p0, LMj/c;->c:Ljavax/crypto/spec/DHParameterSpec;

    const/4 p1, 0x0

    iput-object p1, p0, LMj/c;->d:LXh/v;

    new-instance p1, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object p1, p0, LMj/c;->f:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    return-void
.end method

.method private h(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, LMj/c;->c:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, LMj/c;->c:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, LMj/c;->c:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public a(Loh/x;Loh/g;)V
    .locals 1

    iget-object v0, p0, LMj/c;->f:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;->a(Loh/x;Loh/g;)V

    return-void
.end method

.method public b()LXi/r;
    .locals 7

    iget-object v0, p0, LMj/c;->e:LXi/r;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, LMj/c;->c:Ljavax/crypto/spec/DHParameterSpec;

    instance-of v1, v0, Lck/c;

    if-eqz v1, :cond_1

    new-instance v1, LXi/r;

    iget-object v2, p0, LMj/c;->b:Ljava/math/BigInteger;

    check-cast v0, Lck/c;

    invoke-virtual {v0}, Lck/c;->a()LXi/q;

    move-result-object v0

    invoke-direct {v1, v2, v0}, LXi/r;-><init>(Ljava/math/BigInteger;LXi/q;)V

    return-object v1

    :cond_1
    new-instance v1, LXi/r;

    iget-object v2, p0, LMj/c;->b:Ljava/math/BigInteger;

    new-instance v3, LXi/q;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v4, p0, LMj/c;->c:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, LMj/c;->c:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v5}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v0, v4, v6, v5}, LXi/q;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v1, v2, v3}, LXi/r;-><init>(Ljava/math/BigInteger;LXi/q;)V

    return-object v1
.end method

.method public c(Loh/x;)Loh/g;
    .locals 1

    iget-object v0, p0, LMj/c;->f:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;->c(Loh/x;)Loh/g;

    move-result-object p1

    return-object p1
.end method

.method public d()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, LMj/c;->f:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;->d()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljavax/crypto/interfaces/DHPrivateKey;

    invoke-virtual {p0}, LMj/c;->getX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LMj/c;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LMj/c;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LMj/c;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result p1

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "DH"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 13

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, LMj/c;->d:LXh/v;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "DER"

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1, v2}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, LMj/c;->c:Ljavax/crypto/spec/DHParameterSpec;

    instance-of v3, v1, Lck/c;

    if-eqz v3, :cond_2

    check-cast v1, Lck/c;

    invoke-virtual {v1}, Lck/c;->d()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LMj/c;->c:Ljavax/crypto/spec/DHParameterSpec;

    check-cast v1, Lck/c;

    invoke-virtual {v1}, Lck/c;->a()LXi/q;

    move-result-object v1

    invoke-virtual {v1}, LXi/q;->h()LXi/v;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v4, Lki/h;

    invoke-virtual {v3}, LXi/v;->b()[B

    move-result-object v5

    invoke-virtual {v3}, LXi/v;->a()I

    move-result v3

    invoke-direct {v4, v5, v3}, Lki/h;-><init>([BI)V

    move-object v11, v4

    goto :goto_0

    :cond_1
    move-object v11, v0

    :goto_0
    new-instance v3, LXh/v;

    new-instance v4, Lhi/b;

    sget-object v5, Lki/r;->z6:Loh/x;

    new-instance v12, Lki/d;

    invoke-virtual {v1}, LXi/q;->f()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, LXi/q;->b()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v1}, LXi/q;->g()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v1}, LXi/q;->c()Ljava/math/BigInteger;

    move-result-object v10

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lki/d;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lki/h;)V

    invoke-virtual {v12}, Lki/d;->r()Loh/B;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    new-instance v1, Loh/s;

    invoke-virtual {p0}, LMj/c;->getX()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v1, v5}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v3, v4, v1}, LXh/v;-><init>(Lhi/b;Loh/g;)V

    goto :goto_1

    :cond_2
    new-instance v3, LXh/v;

    new-instance v1, Lhi/b;

    sget-object v4, LXh/t;->Y0:Loh/x;

    new-instance v5, LXh/h;

    iget-object v6, p0, LMj/c;->c:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v6}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v6

    iget-object v7, p0, LMj/c;->c:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v7}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v7

    iget-object v8, p0, LMj/c;->c:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v8}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v8

    invoke-direct {v5, v6, v7, v8}, LXh/h;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-virtual {v5}, LXh/h;->r()Loh/B;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    new-instance v4, Loh/s;

    invoke-virtual {p0}, LMj/c;->getX()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v4, v5}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v3, v1, v4}, LXh/v;-><init>(Lhi/b;Loh/g;)V

    :goto_1
    invoke-virtual {v3, v2}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public getParams()Ljavax/crypto/spec/DHParameterSpec;
    .locals 1

    iget-object v0, p0, LMj/c;->c:Ljavax/crypto/spec/DHParameterSpec;

    return-object v0
.end method

.method public getX()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LMj/c;->b:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, LMj/c;->getX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, LMj/c;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, LMj/c;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, LMj/c;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, LMj/c;->b:Ljava/math/BigInteger;

    new-instance v1, LXi/q;

    iget-object v2, p0, LMj/c;->c:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, LMj/c;->c:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LXi/q;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string v2, "DH"

    invoke-static {v2, v0, v1}, LMj/e;->b(Ljava/lang/String;Ljava/math/BigInteger;LXi/q;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
