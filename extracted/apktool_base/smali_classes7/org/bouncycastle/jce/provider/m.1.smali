.class public Lorg/bouncycastle/jce/provider/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/interfaces/ECPrivateKey;
.implements Lfk/d;
.implements Lfk/p;
.implements Lfk/c;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/math/BigInteger;

.field public d:Ljava/security/spec/ECParameterSpec;

.field public e:Z

.field public f:Loh/c;

.field public g:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/m;->b:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/m;->g:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    return-void
.end method

.method public constructor <init>(LXh/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/m;->b:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/m;->g:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/m;->i(LXh/v;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LXi/L;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/m;->b:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/m;->g:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/m;->b:Ljava/lang/String;

    invoke-virtual {p2}, LXi/L;->e()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/m;->c:Ljava/math/BigInteger;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/m;->d:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LXi/L;Lorg/bouncycastle/jce/provider/n;Lhk/e;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/m;->b:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/m;->g:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/m;->b:Ljava/lang/String;

    invoke-virtual {p2}, LXi/L;->e()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/m;->c:Ljava/math/BigInteger;

    if-nez p4, :cond_0

    invoke-virtual {p2}, LXi/J;->d()LXi/G;

    move-result-object p1

    invoke-virtual {p1}, LXi/G;->a()Ljk/e;

    move-result-object p2

    invoke-virtual {p1}, LXi/G;->f()[B

    move-result-object p4

    invoke-static {p2, p4}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->a(Ljk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p2

    new-instance p4, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p1}, LXi/G;->b()Ljk/i;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->d(Ljk/i;)Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-virtual {p1}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, LXi/G;->c()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-direct {p4, p2, v0, v1, p1}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object p4, p0, Lorg/bouncycastle/jce/provider/m;->d:Ljava/security/spec/ECParameterSpec;

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Lhk/e;->a()Ljk/e;

    move-result-object p1

    invoke-virtual {p4}, Lhk/e;->e()[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->a(Ljk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    new-instance p2, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p4}, Lhk/e;->b()Ljk/i;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->d(Ljk/i;)Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-virtual {p4}, Lhk/e;->d()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p4}, Lhk/e;->c()Ljava/math/BigInteger;

    move-result-object p4

    invoke-virtual {p4}, Ljava/math/BigInteger;->intValue()I

    move-result p4

    invoke-direct {p2, p1, v0, v1, p4}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object p2, p0, Lorg/bouncycastle/jce/provider/m;->d:Ljava/security/spec/ECParameterSpec;

    :goto_0
    invoke-virtual {p0, p3}, Lorg/bouncycastle/jce/provider/m;->h(Lorg/bouncycastle/jce/provider/n;)Loh/c;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/m;->f:Loh/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LXi/L;Lorg/bouncycastle/jce/provider/n;Ljava/security/spec/ECParameterSpec;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/m;->b:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/m;->g:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/m;->b:Ljava/lang/String;

    invoke-virtual {p2}, LXi/L;->e()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/m;->c:Ljava/math/BigInteger;

    if-nez p4, :cond_0

    invoke-virtual {p2}, LXi/J;->d()LXi/G;

    move-result-object p1

    invoke-virtual {p1}, LXi/G;->a()Ljk/e;

    move-result-object p2

    invoke-virtual {p1}, LXi/G;->f()[B

    move-result-object p4

    invoke-static {p2, p4}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->a(Ljk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p2

    new-instance p4, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p1}, LXi/G;->b()Ljk/i;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->d(Ljk/i;)Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-virtual {p1}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, LXi/G;->c()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-direct {p4, p2, v0, v1, p1}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    :cond_0
    iput-object p4, p0, Lorg/bouncycastle/jce/provider/m;->d:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p0, p3}, Lorg/bouncycastle/jce/provider/m;->h(Lorg/bouncycastle/jce/provider/n;)Loh/c;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/m;->f:Loh/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lhk/f;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/m;->b:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/m;->g:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/m;->b:Ljava/lang/String;

    invoke-virtual {p2}, Lhk/f;->b()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/m;->c:Ljava/math/BigInteger;

    invoke-virtual {p2}, Lhk/a;->a()Lhk/e;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lhk/a;->a()Lhk/e;

    move-result-object p1

    invoke-virtual {p1}, Lhk/e;->a()Ljk/e;

    move-result-object p1

    invoke-virtual {p2}, Lhk/a;->a()Lhk/e;

    move-result-object v0

    invoke-virtual {v0}, Lhk/e;->e()[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->a(Ljk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-virtual {p2}, Lhk/a;->a()Lhk/e;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->h(Ljava/security/spec/EllipticCurve;Lhk/e;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/m;->d:Ljava/security/spec/ECParameterSpec;

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/ECPrivateKeySpec;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/m;->b:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/m;->g:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/m;->b:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/security/spec/ECPrivateKeySpec;->getS()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/m;->c:Ljava/math/BigInteger;

    invoke-virtual {p2}, Ljava/security/spec/ECPrivateKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/m;->d:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/jce/provider/m;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/m;->b:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/m;->g:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/m;->b:Ljava/lang/String;

    iget-object p1, p2, Lorg/bouncycastle/jce/provider/m;->c:Ljava/math/BigInteger;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/m;->c:Ljava/math/BigInteger;

    iget-object p1, p2, Lorg/bouncycastle/jce/provider/m;->d:Ljava/security/spec/ECParameterSpec;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/m;->d:Ljava/security/spec/ECParameterSpec;

    iget-boolean p1, p2, Lorg/bouncycastle/jce/provider/m;->e:Z

    iput-boolean p1, p0, Lorg/bouncycastle/jce/provider/m;->e:Z

    iget-object p1, p2, Lorg/bouncycastle/jce/provider/m;->g:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/m;->g:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    iget-object p1, p2, Lorg/bouncycastle/jce/provider/m;->f:Loh/c;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/m;->f:Loh/c;

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/m;->b:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/m;->g:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/m;->c:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/m;->b:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/m;->d:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method private i(LXh/v;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, LXh/v;->y()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, Lki/j;->u(Ljava/lang/Object;)Lki/j;

    move-result-object v0

    invoke-virtual {v0}, Lki/j;->z()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lki/j;->x()Loh/B;

    move-result-object v0

    invoke-static {v0}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->j(Loh/x;)Lki/l;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lki/l;->v()Ljk/e;

    move-result-object v2

    invoke-virtual {v1}, Lki/l;->D()[B

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->a(Ljk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v6

    new-instance v2, Lhk/d;

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->e(Loh/x;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lki/l;->z()Ljk/i;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->d(Ljk/i;)Ljava/security/spec/ECPoint;

    move-result-object v7

    invoke-virtual {v1}, Lki/l;->C()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v1}, Lki/l;->A()Ljava/math/BigInteger;

    move-result-object v9

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lhk/d;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lki/j;->y()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/m;->d:Ljava/security/spec/ECParameterSpec;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lki/j;->x()Loh/B;

    move-result-object v0

    invoke-static {v0}, Lki/l;->B(Ljava/lang/Object;)Lki/l;

    move-result-object v0

    invoke-virtual {v0}, Lki/l;->v()Ljk/e;

    move-result-object v1

    invoke-virtual {v0}, Lki/l;->D()[B

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->a(Ljk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Lki/l;->z()Ljk/i;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->d(Ljk/i;)Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-virtual {v0}, Lki/l;->C()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lki/l;->A()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-direct {v2, v1, v3, v4, v0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    :goto_0
    iput-object v2, p0, Lorg/bouncycastle/jce/provider/m;->d:Ljava/security/spec/ECParameterSpec;

    :cond_2
    :goto_1
    invoke-virtual {p1}, LXh/v;->E()Loh/g;

    move-result-object p1

    instance-of v0, p1, Loh/s;

    if-eqz v0, :cond_3

    invoke-static {p1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p1

    invoke-virtual {p1}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/m;->c:Ljava/math/BigInteger;

    goto :goto_2

    :cond_3
    invoke-static {p1}, LZh/a;->u(Ljava/lang/Object;)LZh/a;

    move-result-object p1

    invoke-virtual {p1}, LZh/a;->v()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/m;->c:Ljava/math/BigInteger;

    invoke-virtual {p1}, LZh/a;->z()Loh/c;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/m;->f:Loh/c;

    :goto_2
    return-void
.end method

.method private j(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Loh/B;->B([B)Loh/B;

    move-result-object v0

    invoke-static {v0}, LXh/v;->v(Ljava/lang/Object;)LXh/v;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/m;->i(LXh/v;)V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/m;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/jce/provider/m;->e:Z

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/m;->g:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;->f(Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method private k(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/m;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/m;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lorg/bouncycastle/jce/provider/m;->e:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/m;->g:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;->h(Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method public a(Loh/x;Loh/g;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/m;->g:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;->a(Loh/x;Loh/g;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UNCOMPRESSED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jce/provider/m;->e:Z

    return-void
.end method

.method public c(Loh/x;)Loh/g;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/m;->g:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;->c(Loh/x;)Loh/g;

    move-result-object p1

    return-object p1
.end method

.method public d()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/m;->g:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;->d()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/bouncycastle/jce/provider/m;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/jce/provider/m;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/m;->m1()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/m;->m1()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/m;->g()Lhk/e;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/m;->g()Lhk/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Lhk/e;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public g()Lhk/e;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/m;->d:Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->g(Ljava/security/spec/ECParameterSpec;)Lhk/e;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lorg/bouncycastle/jce/provider/a;->f:LTj/c;

    invoke-interface {v0}, LTj/c;->b()Lhk/e;

    move-result-object v0

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/m;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/m;->d:Ljava/security/spec/ECParameterSpec;

    instance-of v1, v0, Lhk/d;

    if-eqz v1, :cond_1

    check-cast v0, Lhk/d;

    invoke-virtual {v0}, Lhk/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->l(Ljava/lang/String;)Loh/x;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Loh/x;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/m;->d:Ljava/security/spec/ECParameterSpec;

    check-cast v1, Lhk/d;

    invoke-virtual {v1}, Lhk/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Loh/x;-><init>(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lki/j;

    invoke-direct {v1, v0}, Lki/j;-><init>(Loh/x;)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    new-instance v1, Lki/j;

    sget-object v0, Loh/A0;->c:Loh/A0;

    invoke-direct {v1, v0}, Lki/j;-><init>(Loh/t;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->b(Ljava/security/spec/EllipticCurve;)Ljk/e;

    move-result-object v2

    new-instance v0, Lki/l;

    new-instance v3, Lki/n;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/m;->d:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->f(Ljk/e;Ljava/security/spec/ECPoint;)Ljk/i;

    move-result-object v1

    iget-boolean v4, p0, Lorg/bouncycastle/jce/provider/m;->e:Z

    invoke-direct {v3, v1, v4}, Lki/n;-><init>(Ljk/i;Z)V

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/m;->d:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/m;->d:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v1

    int-to-long v5, v1

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/m;->d:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lki/l;-><init>(Ljk/e;Lki/n;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    new-instance v1, Lki/j;

    invoke-direct {v1, v0}, Lki/j;-><init>(Lki/l;)V

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/m;->d:Ljava/security/spec/ECParameterSpec;

    const/4 v2, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/m;->getS()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v2, v2, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->n(LTj/c;Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/m;->getS()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->n(LTj/c;Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result v0

    :goto_1
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/m;->f:Loh/c;

    if-eqz v3, :cond_4

    new-instance v3, LZh/a;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/m;->getS()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/jce/provider/m;->f:Loh/c;

    invoke-direct {v3, v0, v4, v5, v1}, LZh/a;-><init>(ILjava/math/BigInteger;Loh/c;Loh/g;)V

    goto :goto_2

    :cond_4
    new-instance v3, LZh/a;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/m;->getS()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v0, v4, v1}, LZh/a;-><init>(ILjava/math/BigInteger;Loh/g;)V

    :goto_2
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/m;->b:Ljava/lang/String;

    const-string v4, "ECGOST3410"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, LXh/v;

    new-instance v4, Lhi/b;

    sget-object v5, Lyh/a;->m:Loh/x;

    invoke-virtual {v1}, Lki/j;->r()Loh/B;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    invoke-virtual {v3}, LZh/a;->r()Loh/B;

    move-result-object v1

    invoke-direct {v0, v4, v1}, LXh/v;-><init>(Lhi/b;Loh/g;)V

    goto :goto_3

    :cond_5
    new-instance v0, LXh/v;

    new-instance v4, Lhi/b;

    sget-object v5, Lki/r;->I5:Loh/x;

    invoke-virtual {v1}, Lki/j;->r()Loh/B;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    invoke-virtual {v3}, LZh/a;->r()Loh/B;

    move-result-object v1

    invoke-direct {v0, v4, v1}, LXh/v;-><init>(Lhi/b;Loh/g;)V

    :goto_3
    const-string v1, "DER"

    invoke-virtual {v0, v1}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v2
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public getParameters()Lhk/e;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/m;->d:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->g(Ljava/security/spec/ECParameterSpec;)Lhk/e;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/m;->d:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getS()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/m;->c:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final h(Lorg/bouncycastle/jce/provider/n;)Loh/c;
    .locals 0

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/n;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Loh/B;->B([B)Loh/B;

    move-result-object p1

    invoke-static {p1}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object p1

    invoke-virtual {p1}, Lhi/h0;->z()Loh/c;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/m;->m1()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/m;->g()Lhk/e;

    move-result-object v1

    invoke-virtual {v1}, Lhk/e;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public m1()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/m;->c:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lorg/bouncycastle/util/w;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EC Private Key"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "             S: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/m;->c:Ljava/math/BigInteger;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
