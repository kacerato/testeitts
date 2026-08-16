.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/interfaces/ECPublicKey;
.implements Lfk/e;
.implements Lfk/c;


# static fields
.field public static final g:J = 0x61823879c4d16022L


# instance fields
.field public b:Ljava/lang/String;

.field public c:Z

.field public transient d:LXi/M;

.field public transient e:Ljava/security/spec/ECParameterSpec;

.field public transient f:Lyh/g;


# direct methods
.method public constructor <init>(Lhi/h0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410-2012"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->g(Lhi/h0;)V

    return-void
.end method

.method public constructor <init>(Lhk/g;LTj/c;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410-2012"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lhk/a;->a()Lhk/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lhk/a;->a()Lhk/e;

    move-result-object v0

    invoke-virtual {v0}, Lhk/e;->a()Ljk/e;

    move-result-object v0

    invoke-virtual {p1}, Lhk/a;->a()Lhk/e;

    move-result-object v1

    invoke-virtual {v1}, Lhk/e;->e()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->a(Ljk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v0

    new-instance v1, LXi/M;

    invoke-virtual {p1}, Lhk/g;->b()Ljk/i;

    move-result-object v2

    invoke-virtual {p1}, Lhk/a;->a()Lhk/e;

    move-result-object v3

    invoke-static {p2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->f(LTj/c;Lhk/e;)LXi/G;

    move-result-object p2

    invoke-direct {v1, v2, p2}, LXi/M;-><init>(Ljk/i;LXi/G;)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->d:LXi/M;

    invoke-virtual {p1}, Lhk/a;->a()Lhk/e;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->h(Ljava/security/spec/EllipticCurve;Lhk/e;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->e:Ljava/security/spec/ECParameterSpec;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, LTj/c;->b()Lhk/e;

    move-result-object v0

    new-instance v1, LXi/M;

    invoke-virtual {v0}, Lhk/e;->a()Ljk/e;

    move-result-object v0

    invoke-virtual {p1}, Lhk/g;->b()Ljk/i;

    move-result-object v2

    invoke-virtual {v2}, Ljk/i;->f()Ljk/f;

    move-result-object v2

    invoke-virtual {v2}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lhk/g;->b()Ljk/i;

    move-result-object p1

    invoke-virtual {p1}, Ljk/i;->g()Ljk/f;

    move-result-object p1

    invoke-virtual {p1}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljk/e;->i(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljk/i;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->m(LTj/c;Ljava/security/spec/ECParameterSpec;)LXi/G;

    move-result-object p2

    invoke-direct {v1, p1, p2}, LXi/M;-><init>(Ljk/i;LXi/G;)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->d:LXi/M;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->e:Ljava/security/spec/ECParameterSpec;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LXi/M;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->b:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->d:LXi/M;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->e:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LXi/M;Lhk/e;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410-2012"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->b:Ljava/lang/String;

    invoke-virtual {p2}, LXi/J;->d()LXi/G;

    move-result-object v0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->b:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->d:LXi/M;

    if-nez p3, :cond_0

    invoke-virtual {v0}, LXi/G;->a()Ljk/e;

    move-result-object p1

    invoke-virtual {v0}, LXi/G;->f()[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->a(Ljk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->a(Ljava/security/spec/EllipticCurve;LXi/G;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->e:Ljava/security/spec/ECParameterSpec;

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
    .locals 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410-2012"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->b:Ljava/lang/String;

    invoke-virtual {p2}, LXi/J;->d()LXi/G;

    move-result-object v0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->b:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->d:LXi/M;

    instance-of p1, v0, LXi/H;

    if-eqz p1, :cond_0

    move-object p1, v0

    check-cast p1, LXi/H;

    new-instance p2, Lyh/g;

    invoke-virtual {p1}, LXi/H;->m()Loh/x;

    move-result-object v1

    invoke-virtual {p1}, LXi/H;->k()Loh/x;

    move-result-object v2

    invoke-virtual {p1}, LXi/H;->l()Loh/x;

    move-result-object p1

    invoke-direct {p2, v1, v2, p1}, Lyh/g;-><init>(Loh/x;Loh/x;Loh/x;)V

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->f:Lyh/g;

    :cond_0
    if-nez p3, :cond_1

    invoke-virtual {v0}, LXi/G;->a()Ljk/e;

    move-result-object p1

    invoke-virtual {v0}, LXi/G;->f()[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->a(Ljk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->a(Ljava/security/spec/EllipticCurve;LXi/G;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->e:Ljava/security/spec/ECParameterSpec;

    goto :goto_0

    :cond_1
    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->e:Ljava/security/spec/ECParameterSpec;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;)V
    .locals 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410-2012"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->b:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->b:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->e:Ljava/security/spec/ECParameterSpec;

    new-instance v1, LXi/M;

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->e(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)Ljk/i;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->m(LTj/c;Ljava/security/spec/ECParameterSpec;)LXi/G;

    move-result-object p1

    invoke-direct {v1, v0, p1}, LXi/M;-><init>(Ljk/i;LXi/G;)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->d:LXi/M;

    return-void
.end method

.method public constructor <init>(Ljava/security/spec/ECPublicKeySpec;)V
    .locals 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410-2012"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/security/spec/ECPublicKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->e:Ljava/security/spec/ECParameterSpec;

    new-instance v1, LXi/M;

    invoke-virtual {p1}, Ljava/security/spec/ECPublicKeySpec;->getW()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->e(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)Ljk/i;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/security/spec/ECPublicKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->m(LTj/c;Ljava/security/spec/ECParameterSpec;)LXi/G;

    move-result-object p1

    invoke-direct {v1, v0, p1}, LXi/M;-><init>(Ljk/i;LXi/G;)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->d:LXi/M;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410-2012"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->b:Ljava/lang/String;

    iget-object v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->d:LXi/M;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->d:LXi/M;

    iget-object v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->e:Ljava/security/spec/ECParameterSpec;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->e:Ljava/security/spec/ECParameterSpec;

    iget-boolean v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->c:Z

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->c:Z

    iget-object p1, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->f:Lyh/g;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->f:Lyh/g;

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

.method private e([BIILjava/math/BigInteger;)V
    .locals 4

    invoke-virtual {p4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p4

    array-length v0, p4

    const/4 v1, 0x0

    if-ge v0, p2, :cond_0

    new-array v0, p2, [B

    array-length v2, p4

    sub-int v2, p2, v2

    array-length v3, p4

    invoke-static {p4, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p4, v0

    :cond_0
    :goto_0
    if-eq v1, p2, :cond_1

    add-int v0, p3, v1

    array-length v2, p4

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    aget-byte v2, p4, v2

    aput-byte v2, p1, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private g(Lhi/h0;)V
    .locals 10

    invoke-virtual {p1}, Lhi/h0;->u()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-virtual {p1}, Lhi/h0;->z()Loh/c;

    move-result-object v1

    const-string v2, "ECGOST3410-2012"

    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->b:Ljava/lang/String;

    :try_start_0
    invoke-virtual {v1}, Loh/c;->F()[B

    move-result-object v1

    invoke-static {v1}, Loh/B;->B([B)Loh/B;

    move-result-object v1

    check-cast v1, Loh/y;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Loh/y;->H()[B

    move-result-object v1

    sget-object v2, LCj/a;->h:Loh/x;

    invoke-virtual {v0, v2}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x40

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    :goto_0
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/4 v5, 0x4

    aput-byte v5, v3, v4

    const/4 v4, 0x1

    :goto_1
    if-gt v4, v0, :cond_1

    sub-int v5, v0, v4

    aget-byte v5, v1, v5

    aput-byte v5, v3, v4

    add-int v5, v4, v0

    sub-int v6, v2, v4

    aget-byte v6, v1, v6

    aput-byte v6, v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lhi/h0;->u()Lhi/b;

    move-result-object p1

    invoke-virtual {p1}, Lhi/b;->x()Loh/g;

    move-result-object p1

    invoke-static {p1}, Lyh/g;->w(Ljava/lang/Object;)Lyh/g;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->f:Lyh/g;

    invoke-virtual {p1}, Lyh/g;->y()Loh/x;

    move-result-object p1

    invoke-static {p1}, Lyh/b;->l(Loh/x;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/jce/a;->b(Ljava/lang/String;)Lhk/c;

    move-result-object p1

    invoke-virtual {p1}, Lhk/e;->a()Ljk/e;

    move-result-object v0

    invoke-virtual {p1}, Lhk/e;->e()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->a(Ljk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v6

    new-instance v1, LXi/M;

    invoke-virtual {v0, v3}, Ljk/e;->l([B)Ljk/i;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->f(LTj/c;Lhk/e;)LXi/G;

    move-result-object v2

    invoke-direct {v1, v0, v2}, LXi/M;-><init>(Ljk/i;LXi/G;)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->d:LXi/M;

    new-instance v0, Lhk/d;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->f:Lyh/g;

    invoke-virtual {v1}, Lyh/g;->y()Loh/x;

    move-result-object v1

    invoke-static {v1}, Lyh/b;->l(Loh/x;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lhk/e;->b()Ljk/i;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->d(Ljk/i;)Ljava/security/spec/ECPoint;

    move-result-object v7

    invoke-virtual {p1}, Lhk/e;->d()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p1}, Lhk/e;->c()Ljava/math/BigInteger;

    move-result-object v9

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lhk/d;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->e:Ljava/security/spec/ECParameterSpec;

    return-void

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "error recovering public key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private h(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1}, Loh/B;->B([B)Loh/B;

    move-result-object p1

    invoke-static {p1}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->g(Lhi/h0;)V

    return-void
.end method

.method private i(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public Ne()Ljk/i;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->e:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->d:LXi/M;

    invoke-virtual {v0}, LXi/M;->e()Ljk/i;

    move-result-object v0

    invoke-virtual {v0}, Ljk/i;->k()Ljk/i;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->d:LXi/M;

    invoke-virtual {v0}, LXi/M;->e()Ljk/i;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UNCOMPRESSED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->c:Z

    return-void
.end method

.method public c()LXi/M;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->d:LXi/M;

    return-object v0
.end method

.method public d()Lhk/e;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->e:Ljava/security/spec/ECParameterSpec;

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

    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->d:LXi/M;

    invoke-virtual {v0}, LXi/M;->e()Ljk/i;

    move-result-object v0

    iget-object v2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->d:LXi/M;

    invoke-virtual {v2}, LXi/M;->e()Ljk/i;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljk/i;->e(Ljk/i;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->d()Lhk/e;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->d()Lhk/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Lhk/e;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public f()Lyh/g;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->f:Lyh/g;

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->e:Ljava/security/spec/ECParameterSpec;

    instance-of v0, v0, Lhk/d;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->d:LXi/M;

    invoke-virtual {v0}, LXi/M;->e()Ljk/i;

    move-result-object v0

    invoke-virtual {v0}, Ljk/i;->f()Ljk/f;

    move-result-object v0

    invoke-virtual {v0}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->e:Ljava/security/spec/ECParameterSpec;

    check-cast v1, Lhk/d;

    invoke-virtual {v1}, Lhk/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lyh/b;->n(Ljava/lang/String;)Loh/x;

    move-result-object v1

    if-eqz v0, :cond_1

    new-instance v0, Lyh/g;

    sget-object v2, LCj/a;->d:Loh/x;

    invoke-direct {v0, v1, v2}, Lyh/g;-><init>(Loh/x;Loh/x;)V

    :goto_1
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->f:Lyh/g;

    goto :goto_3

    :cond_1
    sget-object v0, LCj/a;->p:Loh/x;

    invoke-virtual {v1, v0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, LCj/a;->q:Loh/x;

    invoke-virtual {v1, v0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, LCj/a;->r:Loh/x;

    invoke-virtual {v1, v0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Lyh/g;

    sget-object v2, LCj/a;->c:Loh/x;

    invoke-direct {v0, v1, v2}, Lyh/g;-><init>(Loh/x;Loh/x;)V

    goto :goto_1

    :cond_3
    :goto_2
    new-instance v0, Lyh/g;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyh/g;-><init>(Loh/x;Loh/x;)V

    goto :goto_1

    :cond_4
    :goto_3
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->f:Lyh/g;

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 13

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->d:LXi/M;

    invoke-virtual {v0}, LXi/M;->e()Ljk/i;

    move-result-object v0

    invoke-virtual {v0}, Ljk/i;->f()Ljk/f;

    move-result-object v0

    invoke-virtual {v0}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->d:LXi/M;

    invoke-virtual {v1}, LXi/M;->e()Ljk/i;

    move-result-object v1

    invoke-virtual {v1}, Ljk/i;->g()Ljk/f;

    move-result-object v1

    invoke-virtual {v1}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    const/16 v3, 0x100

    const/4 v4, 0x0

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->f()Lyh/g;

    move-result-object v3

    const/4 v5, 0x0

    if-nez v3, :cond_5

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->e:Ljava/security/spec/ECParameterSpec;

    instance-of v6, v3, Lhk/d;

    if-eqz v6, :cond_4

    check-cast v3, Lhk/d;

    invoke-virtual {v3}, Lhk/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lyh/b;->n(Ljava/lang/String;)Loh/x;

    move-result-object v3

    if-eqz v2, :cond_1

    new-instance v6, Lyh/g;

    sget-object v7, LCj/a;->d:Loh/x;

    invoke-direct {v6, v3, v7}, Lyh/g;-><init>(Loh/x;Loh/x;)V

    goto :goto_2

    :cond_1
    sget-object v6, LCj/a;->p:Loh/x;

    invoke-virtual {v3, v6}, Loh/B;->A(Loh/B;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, LCj/a;->q:Loh/x;

    invoke-virtual {v3, v6}, Loh/B;->A(Loh/B;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, LCj/a;->r:Loh/x;

    invoke-virtual {v3, v6}, Loh/B;->A(Loh/B;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    new-instance v6, Lyh/g;

    sget-object v7, LCj/a;->c:Loh/x;

    invoke-direct {v6, v3, v7}, Lyh/g;-><init>(Loh/x;Loh/x;)V

    goto :goto_2

    :cond_3
    :goto_1
    new-instance v6, Lyh/g;

    invoke-direct {v6, v3, v5}, Lyh/g;-><init>(Loh/x;Loh/x;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->b(Ljava/security/spec/EllipticCurve;)Ljk/e;

    move-result-object v7

    new-instance v3, Lki/l;

    new-instance v8, Lki/n;

    iget-object v6, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->e:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v6}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v6

    invoke-static {v7, v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->f(Ljk/e;Ljava/security/spec/ECPoint;)Ljk/i;

    move-result-object v6

    iget-boolean v9, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->c:Z

    invoke-direct {v8, v6, v9}, Lki/n;-><init>(Ljk/i;Z)V

    iget-object v6, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->e:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v6}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v9

    iget-object v6, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->e:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v6}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v6

    int-to-long v10, v6

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    iget-object v6, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->e:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v6}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v6

    invoke-virtual {v6}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v11

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Lki/l;-><init>(Ljk/e;Lki/n;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    new-instance v6, Lki/j;

    invoke-direct {v6, v3}, Lki/j;-><init>(Lki/l;)V

    :goto_2
    move-object v3, v6

    :cond_5
    const/16 v6, 0x40

    if-eqz v2, :cond_6

    sget-object v2, LCj/a;->h:Loh/x;

    const/16 v7, 0x80

    move v12, v7

    move v7, v6

    move v6, v12

    goto :goto_3

    :cond_6
    sget-object v2, LCj/a;->g:Loh/x;

    const/16 v7, 0x20

    :goto_3
    new-array v8, v6, [B

    div-int/lit8 v6, v6, 0x2

    invoke-direct {p0, v8, v6, v4, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->e([BIILjava/math/BigInteger;)V

    invoke-direct {p0, v8, v6, v7, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->e([BIILjava/math/BigInteger;)V

    :try_start_0
    new-instance v0, Lhi/h0;

    new-instance v1, Lhi/b;

    invoke-direct {v1, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    new-instance v2, Loh/C0;

    invoke-direct {v2, v8}, Loh/C0;-><init>([B)V

    invoke-direct {v0, v1, v2}, Lhi/h0;-><init>(Lhi/b;Loh/g;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/l;->e(Lhi/h0;)[B

    move-result-object v0

    return-object v0

    :catch_0
    return-object v5
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "X.509"

    return-object v0
.end method

.method public getParameters()Lhk/e;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->e:Ljava/security/spec/ECParameterSpec;

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

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->e:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getW()Ljava/security/spec/ECPoint;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->d:LXi/M;

    invoke-virtual {v0}, LXi/M;->e()Ljk/i;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->d(Ljk/i;)Ljava/security/spec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->d:LXi/M;

    invoke-virtual {v0}, LXi/M;->e()Ljk/i;

    move-result-object v0

    invoke-virtual {v0}, Ljk/i;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->d()Lhk/e;

    move-result-object v1

    invoke-virtual {v1}, Lhk/e;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->b:Ljava/lang/String;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->d:LXi/M;

    invoke-virtual {v1}, LXi/M;->e()Ljk/i;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->d()Lhk/e;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->p(Ljava/lang/String;Ljk/i;Lhk/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
