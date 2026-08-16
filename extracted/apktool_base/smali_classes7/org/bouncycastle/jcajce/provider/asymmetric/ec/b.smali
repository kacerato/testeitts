.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/interfaces/ECPrivateKey;
.implements Lfk/d;
.implements Lfk/p;
.implements Lfk/c;


# static fields
.field public static final l:J = 0xdcd5cdd2909ced4L


# instance fields
.field public b:Ljava/lang/String;

.field public c:Z

.field public transient d:Ljava/math/BigInteger;

.field public transient e:Ljava/security/spec/ECParameterSpec;

.field public transient f:LTj/c;

.field public transient g:Loh/c;

.field public transient h:LXh/v;

.field public transient i:[B

.field public transient j:LXi/L;

.field public transient k:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->b:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->k:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LXh/v;LTj/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->b:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->k:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->f:LTj/c;

    invoke-direct {p0, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->l(LXh/v;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LXi/L;LTj/c;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->b:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->k:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->b:Ljava/lang/String;

    invoke-virtual {p2}, LXi/L;->e()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->d:Ljava/math/BigInteger;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->e:Ljava/security/spec/ECParameterSpec;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->f:LTj/c;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->j:LXi/L;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LXi/L;Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;Lhk/e;LTj/c;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->b:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->k:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->b:Ljava/lang/String;

    invoke-virtual {p2}, LXi/L;->e()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->d:Ljava/math/BigInteger;

    iput-object p5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->f:LTj/c;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->j:LXi/L;

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

    move-result-object p5

    invoke-static {p5}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->d(Ljk/i;)Ljava/security/spec/ECPoint;

    move-result-object p5

    invoke-virtual {p1}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, LXi/G;->c()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-direct {p4, p2, p5, v0, p1}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object p4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->e:Ljava/security/spec/ECParameterSpec;

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Lhk/e;->a()Ljk/e;

    move-result-object p1

    invoke-virtual {p4}, Lhk/e;->e()[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->a(Ljk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-static {p1, p4}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->h(Ljava/security/spec/EllipticCurve;Lhk/e;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->e:Ljava/security/spec/ECParameterSpec;

    :goto_0
    :try_start_0
    invoke-virtual {p0, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->k(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;)Loh/c;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->g:Loh/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->g:Loh/c;

    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LXi/L;Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;Ljava/security/spec/ECParameterSpec;LTj/c;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->b:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->k:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->b:Ljava/lang/String;

    invoke-virtual {p2}, LXi/L;->e()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->d:Ljava/math/BigInteger;

    iput-object p5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->f:LTj/c;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->j:LXi/L;

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

    move-result-object p5

    invoke-static {p5}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->d(Ljk/i;)Ljava/security/spec/ECPoint;

    move-result-object p5

    invoke-virtual {p1}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, LXi/G;->c()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-direct {p4, p2, p5, v0, p1}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    :cond_0
    iput-object p4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->e:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p0, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->k(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;)Loh/c;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->g:Loh/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lhk/f;LTj/c;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->b:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->k:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->b:Ljava/lang/String;

    invoke-virtual {p2}, Lhk/f;->b()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->d:Ljava/math/BigInteger;

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
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->e:Ljava/security/spec/ECParameterSpec;

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->f:LTj/c;

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->g(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;)LXi/L;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->j:LXi/L;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/ECPrivateKeySpec;LTj/c;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->b:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->k:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->b:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/security/spec/ECPrivateKeySpec;->getS()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->d:Ljava/math/BigInteger;

    invoke-virtual {p2}, Ljava/security/spec/ECPrivateKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->e:Ljava/security/spec/ECParameterSpec;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->f:LTj/c;

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->g(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;)LXi/L;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->j:LXi/L;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->b:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->k:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->b:Ljava/lang/String;

    iget-object p1, p2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->d:Ljava/math/BigInteger;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->d:Ljava/math/BigInteger;

    iget-object p1, p2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->e:Ljava/security/spec/ECParameterSpec;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->e:Ljava/security/spec/ECParameterSpec;

    iget-boolean p1, p2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->c:Z

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->c:Z

    iget-object p1, p2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->k:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->k:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    iget-object p1, p2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->g:Loh/c;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->g:Loh/c;

    iget-object p1, p2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->f:LTj/c;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->f:LTj/c;

    iget-object p1, p2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->j:LXi/L;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->j:LXi/L;

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;LTj/c;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->b:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->k:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->d:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->b:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->e:Ljava/security/spec/ECParameterSpec;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->f:LTj/c;

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->g(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;)LXi/L;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->j:LXi/L;

    return-void
.end method

.method public static g(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;)LXi/L;
    .locals 11

    invoke-interface {p0}, Lfk/b;->getParameters()Lhk/e;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/bouncycastle/jce/provider/a;->f:LTj/c;

    invoke-interface {v0}, LTj/c;->b()Lhk/e;

    move-result-object v0

    :cond_0
    invoke-interface {p0}, Lfk/b;->getParameters()Lhk/e;

    move-result-object v1

    instance-of v1, v1, Lhk/c;

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lfk/b;->getParameters()Lhk/e;

    move-result-object v1

    check-cast v1, Lhk/c;

    invoke-virtual {v1}, Lhk/c;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, LXi/L;

    invoke-interface {p0}, Lfk/d;->m1()Ljava/math/BigInteger;

    move-result-object p0

    new-instance v10, LXi/K;

    invoke-static {v1}, Lki/e;->h(Ljava/lang/String;)Loh/x;

    move-result-object v4

    invoke-virtual {v0}, Lhk/e;->a()Ljk/e;

    move-result-object v5

    invoke-virtual {v0}, Lhk/e;->b()Ljk/i;

    move-result-object v6

    invoke-virtual {v0}, Lhk/e;->d()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0}, Lhk/e;->c()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v0}, Lhk/e;->e()[B

    move-result-object v9

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, LXi/K;-><init>(Loh/x;Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v2, p0, v10}, LXi/L;-><init>(Ljava/math/BigInteger;LXi/G;)V

    return-object v2

    :cond_1
    new-instance v1, LXi/L;

    invoke-interface {p0}, Lfk/d;->m1()Ljava/math/BigInteger;

    move-result-object p0

    new-instance v8, LXi/G;

    invoke-virtual {v0}, Lhk/e;->a()Ljk/e;

    move-result-object v3

    invoke-virtual {v0}, Lhk/e;->b()Ljk/i;

    move-result-object v4

    invoke-virtual {v0}, Lhk/e;->d()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Lhk/e;->c()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0}, Lhk/e;->e()[B

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, LXi/G;-><init>(Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v1, p0, v8}, LXi/L;-><init>(Ljava/math/BigInteger;LXi/G;)V

    return-object v1
.end method

.method private l(LXh/v;)V
    .locals 2
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

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->f:LTj/c;

    invoke-static {v1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->l(LTj/c;Lki/j;)Ljk/e;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->j(Lki/j;Ljk/e;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->e:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p1}, LXh/v;->E()Loh/g;

    move-result-object p1

    instance-of v0, p1, Loh/s;

    if-eqz v0, :cond_0

    invoke-static {p1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p1

    invoke-virtual {p1}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->d:Ljava/math/BigInteger;

    goto :goto_0

    :cond_0
    invoke-static {p1}, LZh/a;->u(Ljava/lang/Object;)LZh/a;

    move-result-object p1

    invoke-virtual {p1}, LZh/a;->v()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->d:Ljava/math/BigInteger;

    invoke-virtual {p1}, LZh/a;->z()Loh/c;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->g:Loh/c;

    :goto_0
    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->g(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;)LXi/L;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->j:LXi/L;

    return-void
.end method

.method private m(Ljava/io/ObjectInputStream;)V
    .locals 1
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

    sget-object v0, Lorg/bouncycastle/jce/provider/a;->f:LTj/c;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->f:LTj/c;

    invoke-static {p1}, Loh/B;->B([B)Loh/B;

    move-result-object p1

    invoke-static {p1}, LXh/v;->v(Ljava/lang/Object;)LXh/v;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->l(LXh/v;)V

    new-instance p1, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-direct {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->k:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    return-void
.end method

.method private n(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Loh/x;Loh/g;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->k:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;->a(Loh/x;Loh/g;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UNCOMPRESSED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->c:Z

    return-void
.end method

.method public c(Loh/x;)Loh/g;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->k:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;->c(Loh/x;)Loh/g;

    move-result-object p1

    return-object p1
.end method

.method public d()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->k:Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/m;->d()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/security/interfaces/ECPrivateKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Ljava/security/interfaces/ECPrivateKey;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->j()LXh/v;

    move-result-object v0

    instance-of v2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;

    invoke-virtual {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->j()LXh/v;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, LXh/v;->v(Ljava/lang/Object;)LXh/v;

    move-result-object v2

    :goto_0
    if-eqz v0, :cond_2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-virtual {v0}, LXh/v;->y()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v2}, LXh/v;->y()Lhi/b;

    move-result-object v2

    invoke-virtual {v2}, Loh/v;->getEncoded()[B

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bouncycastle/util/a;->I([B[B)Z

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->getS()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {v2, p1}, Lorg/bouncycastle/util/a;->I([B[B)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr p1, v0

    return p1

    :catch_0
    :cond_2
    :goto_1
    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->i:[B

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->j()LXh/v;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v2, "DER"

    invoke-virtual {v0, v2}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->i:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-object v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->i:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public getParameters()Lhk/e;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->e:Ljava/security/spec/ECParameterSpec;

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

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->e:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getS()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public h()LXi/L;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->j:LXi/L;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->m1()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->i()Lhk/e;

    move-result-object v1

    invoke-virtual {v1}, Lhk/e;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public i()Lhk/e;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->e:Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->g(Ljava/security/spec/ECParameterSpec;)Lhk/e;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->f:LTj/c;

    invoke-interface {v0}, LTj/c;->b()Lhk/e;

    move-result-object v0

    return-object v0
.end method

.method public final j()LXh/v;
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->h:LXh/v;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->e:Ljava/security/spec/ECParameterSpec;

    iget-boolean v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->c:Z

    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/d;->d(Ljava/security/spec/ECParameterSpec;Z)Lki/j;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->e:Ljava/security/spec/ECParameterSpec;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->f:LTj/c;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->getS()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->n(LTj/c;Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->f:LTj/c;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->getS()Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->n(LTj/c;Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result v1

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->g:Loh/c;

    if-eqz v3, :cond_1

    new-instance v3, LZh/a;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->getS()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->g:Loh/c;

    invoke-direct {v3, v1, v4, v5, v0}, LZh/a;-><init>(ILjava/math/BigInteger;Loh/c;Loh/g;)V

    goto :goto_1

    :cond_1
    new-instance v3, LZh/a;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->getS()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v1, v4, v0}, LZh/a;-><init>(ILjava/math/BigInteger;Loh/g;)V

    :goto_1
    :try_start_0
    new-instance v1, LXh/v;

    new-instance v4, Lhi/b;

    sget-object v5, Lki/r;->I5:Loh/x;

    invoke-direct {v4, v5, v0}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    invoke-direct {v1, v4, v3}, LXh/v;-><init>(Lhi/b;Loh/g;)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->h:LXh/v;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    return-object v2

    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->h:LXh/v;

    return-object v0
.end method

.method public final k(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;)Loh/c;
    .locals 0

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->getEncoded()[B

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

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->d:Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->i()Lhk/e;

    move-result-object v1

    const-string v2, "EC"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->o(Ljava/lang/String;Ljava/math/BigInteger;Lhk/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
