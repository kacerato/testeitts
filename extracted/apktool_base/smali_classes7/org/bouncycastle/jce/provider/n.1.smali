.class public Lorg/bouncycastle/jce/provider/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/interfaces/ECPublicKey;
.implements Lfk/e;
.implements Lfk/c;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljk/i;

.field public d:Ljava/security/spec/ECParameterSpec;

.field public e:Z

.field public f:Lyh/g;


# direct methods
.method public constructor <init>(Lhi/h0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/n;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/n;->f(Lhi/h0;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LXi/M;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/n;->b:Ljava/lang/String;

    invoke-virtual {p2}, LXi/M;->e()Ljk/i;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/n;->c:Ljk/i;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/n;->d:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LXi/M;Lhk/e;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/n;->b:Ljava/lang/String;

    invoke-virtual {p2}, LXi/J;->d()LXi/G;

    move-result-object v0

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/n;->b:Ljava/lang/String;

    invoke-virtual {p2}, LXi/M;->e()Ljk/i;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/n;->c:Ljk/i;

    if-nez p3, :cond_0

    invoke-virtual {v0}, LXi/G;->a()Ljk/e;

    move-result-object p1

    invoke-virtual {v0}, LXi/G;->f()[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->a(Ljk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jce/provider/n;->a(Ljava/security/spec/EllipticCurve;LXi/G;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/n;->d:Ljava/security/spec/ECParameterSpec;

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Lhk/e;->a()Ljk/e;

    move-result-object p1

    invoke-virtual {p3}, Lhk/e;->e()[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->a(Ljk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-static {p1, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->h(Ljava/security/spec/EllipticCurve;Lhk/e;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LXi/M;Ljava/security/spec/ECParameterSpec;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/n;->b:Ljava/lang/String;

    invoke-virtual {p2}, LXi/J;->d()LXi/G;

    move-result-object v0

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/n;->b:Ljava/lang/String;

    invoke-virtual {p2}, LXi/M;->e()Ljk/i;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/n;->c:Ljk/i;

    if-nez p3, :cond_0

    invoke-virtual {v0}, LXi/G;->a()Ljk/e;

    move-result-object p1

    invoke-virtual {v0}, LXi/G;->f()[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->a(Ljk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jce/provider/n;->a(Ljava/security/spec/EllipticCurve;LXi/G;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/n;->d:Ljava/security/spec/ECParameterSpec;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lorg/bouncycastle/jce/provider/n;->d:Ljava/security/spec/ECParameterSpec;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lhk/g;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/n;->b:Ljava/lang/String;

    invoke-virtual {p2}, Lhk/g;->b()Ljk/i;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/n;->c:Ljk/i;

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
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/n;->d:Ljava/security/spec/ECParameterSpec;

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/jce/provider/n;->c:Ljk/i;

    invoke-virtual {p1}, Ljk/i;->i()Ljk/e;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lorg/bouncycastle/jce/provider/a;->f:LTj/c;

    invoke-interface {p1}, LTj/c;->b()Lhk/e;

    move-result-object p1

    invoke-virtual {p1}, Lhk/e;->a()Ljk/e;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/jce/provider/n;->c:Ljk/i;

    invoke-virtual {p2}, Ljk/i;->f()Ljk/f;

    move-result-object p2

    invoke-virtual {p2}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object p2

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/n;->c:Ljk/i;

    invoke-virtual {v0}, Ljk/i;->g()Ljk/f;

    move-result-object v0

    invoke-virtual {v0}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljk/e;->i(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljk/i;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/n;->c:Ljk/i;

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/ECPublicKeySpec;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/n;->b:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/security/spec/ECPublicKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/n;->d:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p2}, Ljava/security/spec/ECPublicKeySpec;->getW()Ljava/security/spec/ECPoint;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->e(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)Ljk/i;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/n;->c:Ljk/i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/jce/provider/n;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/n;->b:Ljava/lang/String;

    iget-object p1, p2, Lorg/bouncycastle/jce/provider/n;->c:Ljk/i;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/n;->c:Ljk/i;

    iget-object p1, p2, Lorg/bouncycastle/jce/provider/n;->d:Ljava/security/spec/ECParameterSpec;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/n;->d:Ljava/security/spec/ECParameterSpec;

    iget-boolean p1, p2, Lorg/bouncycastle/jce/provider/n;->e:Z

    iput-boolean p1, p0, Lorg/bouncycastle/jce/provider/n;->e:Z

    iget-object p1, p2, Lorg/bouncycastle/jce/provider/n;->f:Lyh/g;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/n;->f:Lyh/g;

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/n;->b:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/n;->b:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/n;->d:Ljava/security/spec/ECParameterSpec;

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->e(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)Ljk/i;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/n;->c:Ljk/i;

    return-void
.end method

.method private a(Ljava/security/spec/EllipticCurve;LXi/G;)Ljava/security/spec/ECParameterSpec;
    .locals 3

    new-instance v0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p2}, LXi/G;->b()Ljk/i;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->d(Ljk/i;)Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-virtual {p2}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2}, LXi/G;->c()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result p2

    invoke-direct {v0, p1, v1, v2, p2}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method private e([BILjava/math/BigInteger;)V
    .locals 5

    invoke-virtual {p3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p3

    array-length v0, p3

    const/4 v1, 0x0

    const/16 v2, 0x20

    if-ge v0, v2, :cond_0

    new-array v0, v2, [B

    array-length v3, p3

    rsub-int/lit8 v3, v3, 0x20

    array-length v4, p3

    invoke-static {p3, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p3, v0

    :cond_0
    :goto_0
    if-eq v1, v2, :cond_1

    add-int v0, p2, v1

    array-length v3, p3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    aget-byte v3, p3, v3

    aput-byte v3, p1, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private f(Lhi/h0;)V
    .locals 14

    invoke-virtual {p1}, Lhi/h0;->u()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v1

    sget-object v2, Lyh/a;->m:Loh/x;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v1

    const-string v2, "error recovering public key"

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lhi/h0;->z()Loh/c;

    move-result-object p1

    const-string v1, "ECGOST3410"

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/n;->b:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1}, Loh/c;->F()[B

    move-result-object p1

    invoke-static {p1}, Loh/B;->B([B)Loh/B;

    move-result-object p1

    check-cast p1, Loh/y;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    const/16 v1, 0x41

    new-array v1, v1, [B

    aput-byte v3, v1, v4

    :goto_0
    const/16 v2, 0x20

    if-gt v5, v2, :cond_0

    rsub-int/lit8 v2, v5, 0x20

    aget-byte v2, p1, v2

    aput-byte v2, v1, v5

    add-int/lit8 v2, v5, 0x20

    rsub-int/lit8 v3, v5, 0x40

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object p1

    invoke-static {p1}, Lyh/g;->w(Ljava/lang/Object;)Lyh/g;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/n;->f:Lyh/g;

    invoke-virtual {p1}, Lyh/g;->y()Loh/x;

    move-result-object p1

    invoke-static {p1}, Lyh/b;->l(Loh/x;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/jce/a;->b(Ljava/lang/String;)Lhk/c;

    move-result-object p1

    invoke-virtual {p1}, Lhk/e;->a()Ljk/e;

    move-result-object v0

    invoke-virtual {p1}, Lhk/e;->e()[B

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->a(Ljk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v5

    invoke-virtual {v0, v1}, Ljk/e;->l([B)Ljk/i;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/n;->c:Ljk/i;

    new-instance v0, Lhk/d;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/n;->f:Lyh/g;

    invoke-virtual {v1}, Lyh/g;->y()Loh/x;

    move-result-object v1

    invoke-static {v1}, Lyh/b;->l(Loh/x;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lhk/e;->b()Ljk/i;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->d(Ljk/i;)Ljava/security/spec/ECPoint;

    move-result-object v6

    invoke-virtual {p1}, Lhk/e;->d()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p1}, Lhk/e;->c()Ljava/math/BigInteger;

    move-result-object v8

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lhk/d;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/n;->d:Ljava/security/spec/ECParameterSpec;

    goto/16 :goto_4

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, Lki/j;->u(Ljava/lang/Object;)Lki/j;

    move-result-object v0

    invoke-virtual {v0}, Lki/j;->z()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lki/j;->x()Loh/B;

    move-result-object v0

    check-cast v0, Loh/x;

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->j(Loh/x;)Lki/l;

    move-result-object v1

    invoke-virtual {v1}, Lki/l;->v()Ljk/e;

    move-result-object v6

    invoke-virtual {v1}, Lki/l;->D()[B

    move-result-object v7

    invoke-static {v6, v7}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->a(Ljk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v10

    new-instance v7, Lhk/d;

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->e(Loh/x;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lki/l;->z()Ljk/i;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->d(Ljk/i;)Ljava/security/spec/ECPoint;

    move-result-object v11

    invoke-virtual {v1}, Lki/l;->C()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v1}, Lki/l;->A()Ljava/math/BigInteger;

    move-result-object v13

    move-object v8, v7

    invoke-direct/range {v8 .. v13}, Lhk/d;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :goto_1
    iput-object v7, p0, Lorg/bouncycastle/jce/provider/n;->d:Ljava/security/spec/ECParameterSpec;

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lki/j;->y()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/n;->d:Ljava/security/spec/ECParameterSpec;

    sget-object v0, Lorg/bouncycastle/jce/provider/a;->f:LTj/c;

    invoke-interface {v0}, LTj/c;->b()Lhk/e;

    move-result-object v0

    invoke-virtual {v0}, Lhk/e;->a()Ljk/e;

    move-result-object v6

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lki/j;->x()Loh/B;

    move-result-object v0

    invoke-static {v0}, Lki/l;->B(Ljava/lang/Object;)Lki/l;

    move-result-object v0

    invoke-virtual {v0}, Lki/l;->v()Ljk/e;

    move-result-object v6

    invoke-virtual {v0}, Lki/l;->D()[B

    move-result-object v1

    invoke-static {v6, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->a(Ljk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    new-instance v7, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Lki/l;->z()Ljk/i;

    move-result-object v8

    invoke-static {v8}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->d(Ljk/i;)Ljava/security/spec/ECPoint;

    move-result-object v8

    invoke-virtual {v0}, Lki/l;->C()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v0}, Lki/l;->A()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-direct {v7, v1, v8, v9, v0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    goto :goto_1

    :goto_2
    invoke-virtual {p1}, Lhi/h0;->z()Loh/c;

    move-result-object p1

    invoke-virtual {p1}, Loh/c;->F()[B

    move-result-object p1

    new-instance v0, Loh/C0;

    invoke-direct {v0, p1}, Loh/C0;-><init>([B)V

    aget-byte v1, p1, v4

    if-ne v1, v3, :cond_5

    aget-byte v1, p1, v5

    array-length v3, p1

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    if-ne v1, v3, :cond_5

    aget-byte v1, p1, v4

    const/4 v3, 0x3

    if-eq v1, v4, :cond_4

    if-ne v1, v3, :cond_5

    :cond_4
    new-instance v1, Lki/q;

    invoke-direct {v1}, Lki/q;-><init>()V

    invoke-virtual {v1, v6}, Lki/q;->a(Ljk/e;)I

    move-result v1

    array-length v4, p1

    sub-int/2addr v4, v3

    if-lt v1, v4, :cond_5

    :try_start_1
    invoke-static {p1}, Loh/B;->B([B)Loh/B;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Loh/y;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_3
    new-instance p1, Lki/n;

    invoke-direct {p1, v6, v0}, Lki/n;-><init>(Ljk/e;Loh/y;)V

    invoke-virtual {p1}, Lki/n;->u()Ljk/i;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/n;->c:Ljk/i;

    :goto_4
    return-void
.end method

.method private g(Ljava/io/ObjectInputStream;)V
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

    invoke-static {v0}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/n;->f(Lhi/h0;)V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/n;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lorg/bouncycastle/jce/provider/n;->e:Z

    return-void
.end method

.method private h(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/n;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/n;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lorg/bouncycastle/jce/provider/n;->e:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    return-void
.end method


# virtual methods
.method public Ne()Ljk/i;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/n;->d:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/n;->c:Ljk/i;

    invoke-virtual {v0}, Ljk/i;->k()Ljk/i;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/n;->c:Ljk/i;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UNCOMPRESSED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jce/provider/n;->e:Z

    return-void
.end method

.method public c()Ljk/i;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/n;->c:Ljk/i;

    return-object v0
.end method

.method public d()Lhk/e;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/n;->d:Ljava/security/spec/ECParameterSpec;

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

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/bouncycastle/jce/provider/n;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/jce/provider/n;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/n;->c()Ljk/i;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/n;->c()Ljk/i;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljk/i;->e(Ljk/i;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/n;->d()Lhk/e;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/n;->d()Lhk/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Lhk/e;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/n;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/n;->b:Ljava/lang/String;

    const-string v1, "ECGOST3410"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/n;->f:Lyh/g;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/n;->d:Ljava/security/spec/ECParameterSpec;

    instance-of v1, v0, Lhk/d;

    if-eqz v1, :cond_1

    new-instance v1, Lyh/g;

    check-cast v0, Lhk/d;

    invoke-virtual {v0}, Lhk/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyh/b;->n(Ljava/lang/String;)Loh/x;

    move-result-object v0

    sget-object v2, Lyh/a;->p:Loh/x;

    invoke-direct {v1, v0, v2}, Lyh/g;-><init>(Loh/x;Loh/x;)V

    :goto_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->b(Ljava/security/spec/EllipticCurve;)Ljk/e;

    move-result-object v2

    new-instance v0, Lki/l;

    new-instance v3, Lki/n;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/n;->d:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->f(Ljk/e;Ljava/security/spec/ECPoint;)Ljk/i;

    move-result-object v1

    iget-boolean v4, p0, Lorg/bouncycastle/jce/provider/n;->e:Z

    invoke-direct {v3, v1, v4}, Lki/n;-><init>(Ljk/i;Z)V

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/n;->d:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/n;->d:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v1

    int-to-long v5, v1

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/n;->d:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lki/l;-><init>(Ljk/e;Lki/n;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    new-instance v1, Lki/j;

    invoke-direct {v1, v0}, Lki/j;-><init>(Lki/l;)V

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/n;->c:Ljk/i;

    invoke-virtual {v1}, Ljk/i;->f()Ljk/f;

    move-result-object v1

    invoke-virtual {v1}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/n;->c:Ljk/i;

    invoke-virtual {v2}, Ljk/i;->g()Ljk/f;

    move-result-object v2

    invoke-virtual {v2}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object v2

    const/16 v3, 0x40

    new-array v3, v3, [B

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v1}, Lorg/bouncycastle/jce/provider/n;->e([BILjava/math/BigInteger;)V

    const/16 v1, 0x20

    invoke-direct {p0, v3, v1, v2}, Lorg/bouncycastle/jce/provider/n;->e([BILjava/math/BigInteger;)V

    :try_start_0
    new-instance v1, Lhi/h0;

    new-instance v2, Lhi/b;

    sget-object v4, Lyh/a;->m:Loh/x;

    invoke-direct {v2, v4, v0}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    new-instance v0, Loh/C0;

    invoke-direct {v0, v3}, Loh/C0;-><init>([B)V

    invoke-direct {v1, v2, v0}, Lhi/h0;-><init>(Lhi/b;Loh/g;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    const/4 v0, 0x0

    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/n;->d:Ljava/security/spec/ECParameterSpec;

    instance-of v1, v0, Lhk/d;

    if-eqz v1, :cond_4

    check-cast v0, Lhk/d;

    invoke-virtual {v0}, Lhk/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->l(Ljava/lang/String;)Loh/x;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Loh/x;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/n;->d:Ljava/security/spec/ECParameterSpec;

    check-cast v1, Lhk/d;

    invoke-virtual {v1}, Lhk/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Loh/x;-><init>(Ljava/lang/String;)V

    :cond_3
    new-instance v1, Lki/j;

    invoke-direct {v1, v0}, Lki/j;-><init>(Loh/x;)V

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    new-instance v1, Lki/j;

    sget-object v0, Loh/A0;->c:Loh/A0;

    invoke-direct {v1, v0}, Lki/j;-><init>(Loh/t;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->b(Ljava/security/spec/EllipticCurve;)Ljk/e;

    move-result-object v2

    new-instance v0, Lki/l;

    new-instance v3, Lki/n;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/n;->d:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->f(Ljk/e;Ljava/security/spec/ECPoint;)Ljk/i;

    move-result-object v1

    iget-boolean v4, p0, Lorg/bouncycastle/jce/provider/n;->e:Z

    invoke-direct {v3, v1, v4}, Lki/n;-><init>(Ljk/i;Z)V

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/n;->d:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/n;->d:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v1

    int-to-long v5, v1

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/n;->d:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lki/l;-><init>(Ljk/e;Lki/n;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    new-instance v1, Lki/j;

    invoke-direct {v1, v0}, Lki/j;-><init>(Lki/l;)V

    :goto_2
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/n;->Ne()Ljk/i;

    move-result-object v0

    iget-boolean v2, p0, Lorg/bouncycastle/jce/provider/n;->e:Z

    invoke-virtual {v0, v2}, Ljk/i;->l(Z)[B

    move-result-object v0

    new-instance v2, Lhi/h0;

    new-instance v3, Lhi/b;

    sget-object v4, Lki/r;->I5:Loh/x;

    invoke-direct {v3, v4, v1}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    invoke-direct {v2, v3, v0}, Lhi/h0;-><init>(Lhi/b;[B)V

    move-object v1, v2

    :goto_3
    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/l;->e(Lhi/h0;)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "X.509"

    return-object v0
.end method

.method public getParameters()Lhk/e;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/n;->d:Ljava/security/spec/ECParameterSpec;

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

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/n;->d:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getW()Ljava/security/spec/ECPoint;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/n;->c:Ljk/i;

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->d(Ljk/i;)Ljava/security/spec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/n;->c()Ljk/i;

    move-result-object v0

    invoke-virtual {v0}, Ljk/i;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/n;->d()Lhk/e;

    move-result-object v1

    invoke-virtual {v1}, Lhk/e;->hashCode()I

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

    const-string v2, "EC Public Key"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "            X: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/n;->c:Ljk/i;

    invoke-virtual {v2}, Ljk/i;->f()Ljk/f;

    move-result-object v2

    invoke-virtual {v2}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "            Y: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/n;->c:Ljk/i;

    invoke-virtual {v2}, Ljk/i;->g()Ljk/f;

    move-result-object v2

    invoke-virtual {v2}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
