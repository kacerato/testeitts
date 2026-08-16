.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/interfaces/ECPrivateKey;
.implements Lfk/d;
.implements Lfk/p;
.implements Lfk/c;


# static fields
.field public static final i:J = 0x648ee5f4b1b13042L


# instance fields
.field public b:Ljava/lang/String;

.field public c:Z

.field public transient d:Loh/g;

.field public transient e:Ljava/math/BigInteger;

.field public transient f:Ljava/security/spec/ECParameterSpec;

.field public transient g:Loh/c;

.field public transient h:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->b:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->h:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

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

    const-string v0, "ECGOST3410"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->b:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->h:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->j(LXh/v;)V

    return-void
.end method

.method public constructor <init>(Lhk/f;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->b:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->h:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-virtual {p1}, Lhk/f;->b()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->e:Ljava/math/BigInteger;

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

    invoke-virtual {p1}, Lhk/a;->a()Lhk/e;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->h(Ljava/security/spec/EllipticCurve;Lhk/e;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->f:Ljava/security/spec/ECParameterSpec;

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LXi/L;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->b:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->h:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->b:Ljava/lang/String;

    invoke-virtual {p2}, LXi/L;->e()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->e:Ljava/math/BigInteger;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->f:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LXi/L;Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/b;Lhk/e;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->b:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->h:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->b:Ljava/lang/String;

    invoke-virtual {p2}, LXi/L;->e()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->e:Ljava/math/BigInteger;

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

    iput-object p4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->f:Ljava/security/spec/ECParameterSpec;

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

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->f:Ljava/security/spec/ECParameterSpec;

    :goto_0
    invoke-virtual {p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/b;->f()Loh/g;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->d:Loh/g;

    invoke-virtual {p0, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->i(Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/b;)Loh/c;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->g:Loh/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LXi/L;Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/b;Ljava/security/spec/ECParameterSpec;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->b:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->h:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->b:Ljava/lang/String;

    invoke-virtual {p2}, LXi/L;->e()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->e:Ljava/math/BigInteger;

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
    iput-object p4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->f:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/b;->f()Loh/g;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->d:Loh/g;

    invoke-virtual {p0, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->i(Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/b;)Loh/c;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->g:Loh/c;

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->b:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->h:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->e:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->b:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->f:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/security/spec/ECPrivateKeySpec;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->b:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->h:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-virtual {p1}, Ljava/security/spec/ECPrivateKeySpec;->getS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->e:Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/security/spec/ECPrivateKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->f:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->b:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->h:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    iget-object v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->e:Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->e:Ljava/math/BigInteger;

    iget-object v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->f:Ljava/security/spec/ECParameterSpec;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->f:Ljava/security/spec/ECParameterSpec;

    iget-boolean v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->c:Z

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->c:Z

    iget-object v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->h:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->h:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    iget-object v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->g:Loh/c;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->g:Loh/c;

    iget-object p1, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->d:Loh/g;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->d:Loh/g;

    return-void
.end method

.method private j(LXh/v;)V
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

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v1

    instance-of v2, v1, Loh/E;

    if-eqz v2, :cond_3

    invoke-static {v1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v2

    invoke-virtual {v2}, Loh/E;->size()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    invoke-static {v1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v1

    invoke-virtual {v1}, Loh/E;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-static {v0}, Lyh/g;->w(Ljava/lang/Object;)Lyh/g;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->d:Loh/g;

    invoke-virtual {v0}, Lyh/g;->y()Loh/x;

    move-result-object v1

    invoke-static {v1}, Lyh/b;->l(Loh/x;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/jce/a;->b(Ljava/lang/String;)Lhk/c;

    move-result-object v1

    invoke-virtual {v1}, Lhk/e;->a()Ljk/e;

    move-result-object v2

    invoke-virtual {v1}, Lhk/e;->e()[B

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->a(Ljk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v6

    new-instance v2, Lhk/d;

    invoke-virtual {v0}, Lyh/g;->y()Loh/x;

    move-result-object v0

    invoke-static {v0}, Lyh/b;->l(Loh/x;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lhk/e;->b()Ljk/i;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->d(Ljk/i;)Ljava/security/spec/ECPoint;

    move-result-object v7

    invoke-virtual {v1}, Lhk/e;->d()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v1}, Lhk/e;->c()Ljava/math/BigInteger;

    move-result-object v9

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lhk/d;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->f:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p1}, LXh/v;->E()Loh/g;

    move-result-object p1

    instance-of v0, p1, Loh/s;

    if-eqz v0, :cond_1

    invoke-static {p1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p1

    invoke-virtual {p1}, Loh/s;->H()Ljava/math/BigInteger;

    move-result-object p1

    goto/16 :goto_3

    :cond_1
    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    array-length v0, p1

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    array-length v2, p1

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    goto/16 :goto_3

    :cond_3
    invoke-static {v0}, Lki/j;->u(Ljava/lang/Object;)Lki/j;

    move-result-object v0

    invoke-virtual {v0}, Lki/j;->z()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lki/j;->x()Loh/B;

    move-result-object v0

    invoke-static {v0}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->j(Loh/x;)Lki/l;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->e(Loh/x;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lki/l;->v()Ljk/e;

    move-result-object v0

    invoke-virtual {v1}, Lki/l;->D()[B

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->a(Ljk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v4

    new-instance v0, Lhk/d;

    invoke-virtual {v1}, Lki/l;->z()Ljk/i;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->d(Ljk/i;)Ljava/security/spec/ECPoint;

    move-result-object v5

    invoke-virtual {v1}, Lki/l;->C()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v1}, Lki/l;->A()Ljava/math/BigInteger;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lhk/d;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :goto_1
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->f:Ljava/security/spec/ECParameterSpec;

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_5
    invoke-virtual {v0}, Lki/j;->y()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x0

    goto :goto_1

    :cond_6
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

    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->f:Ljava/security/spec/ECParameterSpec;

    :goto_2
    invoke-virtual {p1}, LXh/v;->E()Loh/g;

    move-result-object p1

    instance-of v0, p1, Loh/s;

    if-eqz v0, :cond_7

    invoke-static {p1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p1

    invoke-virtual {p1}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object p1

    :goto_3
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->e:Ljava/math/BigInteger;

    goto :goto_4

    :cond_7
    invoke-static {p1}, LZh/a;->u(Ljava/lang/Object;)LZh/a;

    move-result-object p1

    invoke-virtual {p1}, LZh/a;->v()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->e:Ljava/math/BigInteger;

    invoke-virtual {p1}, LZh/a;->z()Loh/c;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->g:Loh/c;

    :goto_4
    return-void
.end method

.method private k(Ljava/io/ObjectInputStream;)V
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

    invoke-static {p1}, LXh/v;->v(Ljava/lang/Object;)LXh/v;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->j(LXh/v;)V

    new-instance p1, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->h:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    return-void
.end method

.method private l(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Loh/x;Loh/g;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->h:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;->a(Loh/x;Loh/g;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UNCOMPRESSED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->c:Z

    return-void
.end method

.method public c(Loh/x;)Loh/g;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->h:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;->c(Loh/x;)Loh/g;

    move-result-object p1

    return-object p1
.end method

.method public d()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->h:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;->d()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->m1()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->m1()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->g()Lhk/e;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->g()Lhk/e;

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

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->f:Ljava/security/spec/ECParameterSpec;

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

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->d:Loh/g;

    const-string v1, "DER"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    new-array v0, v0, [B

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->getS()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0, v0, v3, v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->h([BILjava/math/BigInteger;)V

    :try_start_0
    new-instance v3, LXh/v;

    new-instance v4, Lhi/b;

    sget-object v5, Lyh/a;->m:Loh/x;

    iget-object v6, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->d:Loh/g;

    invoke-direct {v4, v5, v6}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    new-instance v5, Loh/C0;

    invoke-direct {v5, v0}, Loh/C0;-><init>([B)V

    invoke-direct {v3, v4, v5}, LXh/v;-><init>(Lhi/b;Loh/g;)V

    invoke-virtual {v3, v1}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v2

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->f:Ljava/security/spec/ECParameterSpec;

    instance-of v3, v0, Lhk/d;

    if-eqz v3, :cond_2

    check-cast v0, Lhk/d;

    invoke-virtual {v0}, Lhk/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->l(Ljava/lang/String;)Loh/x;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Loh/x;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->f:Ljava/security/spec/ECParameterSpec;

    check-cast v3, Lhk/d;

    invoke-virtual {v3}, Lhk/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Loh/x;-><init>(Ljava/lang/String;)V

    :cond_1
    new-instance v3, Lki/j;

    invoke-direct {v3, v0}, Lki/j;-><init>(Loh/x;)V

    :goto_0
    sget-object v0, Lorg/bouncycastle/jce/provider/a;->f:LTj/c;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->f:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->getS()Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->n(LTj/c;Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result v0

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    new-instance v3, Lki/j;

    sget-object v0, Loh/A0;->c:Loh/A0;

    invoke-direct {v3, v0}, Lki/j;-><init>(Loh/t;)V

    sget-object v0, Lorg/bouncycastle/jce/provider/a;->f:LTj/c;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->getS()Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->n(LTj/c;Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->b(Ljava/security/spec/EllipticCurve;)Ljk/e;

    move-result-object v4

    new-instance v0, Lki/l;

    new-instance v5, Lki/n;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->f:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-static {v4, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->f(Ljk/e;Ljava/security/spec/ECPoint;)Ljk/i;

    move-result-object v3

    iget-boolean v6, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->c:Z

    invoke-direct {v5, v3, v6}, Lki/n;-><init>(Ljk/i;Z)V

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->f:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v6

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->f:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v3

    int-to-long v7, v3

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->f:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v8

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lki/l;-><init>(Ljk/e;Lki/n;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    new-instance v3, Lki/j;

    invoke-direct {v3, v0}, Lki/j;-><init>(Lki/l;)V

    goto :goto_0

    :goto_1
    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->g:Loh/c;

    if-eqz v4, :cond_4

    new-instance v4, LZh/a;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->getS()Ljava/math/BigInteger;

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->g:Loh/c;

    invoke-direct {v4, v0, v5, v6, v3}, LZh/a;-><init>(ILjava/math/BigInteger;Loh/c;Loh/g;)V

    goto :goto_2

    :cond_4
    new-instance v4, LZh/a;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->getS()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v4, v0, v5, v3}, LZh/a;-><init>(ILjava/math/BigInteger;Loh/g;)V

    :goto_2
    :try_start_1
    new-instance v0, LXh/v;

    new-instance v5, Lhi/b;

    sget-object v6, Lyh/a;->m:Loh/x;

    invoke-virtual {v3}, Lki/j;->r()Loh/B;

    move-result-object v3

    invoke-direct {v5, v6, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    invoke-virtual {v4}, LZh/a;->r()Loh/B;

    move-result-object v3

    invoke-direct {v0, v5, v3}, LXh/v;-><init>(Lhi/b;Loh/g;)V

    invoke-virtual {v0, v1}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    return-object v2
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public getParameters()Lhk/e;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->f:Ljava/security/spec/ECParameterSpec;

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

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->f:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getS()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->e:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final h([BILjava/math/BigInteger;)V
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

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->m1()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->g()Lhk/e;

    move-result-object v1

    invoke-virtual {v1}, Lhk/e;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final i(Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/b;)Loh/c;
    .locals 0

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/b;->getEncoded()[B

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

.method public m1()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->e:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->e:Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;->g()Lhk/e;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->o(Ljava/lang/String;Ljava/math/BigInteger;Lhk/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
