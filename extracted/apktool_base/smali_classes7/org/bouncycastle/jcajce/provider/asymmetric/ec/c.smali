.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/interfaces/ECPublicKey;
.implements Lfk/e;
.implements Lfk/c;


# static fields
.field public static final i:J = 0x219f7a8aa3ea4824L


# instance fields
.field public b:Ljava/lang/String;

.field public c:Z

.field public transient d:LXi/M;

.field public transient e:Ljava/security/spec/ECParameterSpec;

.field public transient f:LTj/c;

.field public transient g:[B

.field public transient h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;LXi/M;LTj/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->b:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->d:LXi/M;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->e:Ljava/security/spec/ECParameterSpec;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->f:LTj/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LXi/M;Lhk/e;LTj/c;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->b:Ljava/lang/String;

    invoke-virtual {p2}, LXi/J;->d()LXi/G;

    move-result-object v0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->b:Ljava/lang/String;

    if-nez p3, :cond_0

    invoke-virtual {v0}, LXi/G;->a()Ljk/e;

    move-result-object p1

    invoke-virtual {v0}, LXi/G;->f()[B

    move-result-object p3

    invoke-static {p1, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->a(Ljk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->a(Ljava/security/spec/EllipticCurve;LXi/G;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->e:Ljava/security/spec/ECParameterSpec;

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Lhk/e;->a()Ljk/e;

    move-result-object p1

    invoke-virtual {p3}, Lhk/e;->e()[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->a(Ljk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-static {p1, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->h(Ljava/security/spec/EllipticCurve;Lhk/e;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    goto :goto_0

    :goto_1
    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->d:LXi/M;

    iput-object p4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->f:LTj/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LXi/M;Ljava/security/spec/ECParameterSpec;LTj/c;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->b:Ljava/lang/String;

    invoke-virtual {p2}, LXi/J;->d()LXi/G;

    move-result-object v0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->b:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->d:LXi/M;

    if-nez p3, :cond_0

    invoke-virtual {v0}, LXi/G;->a()Ljk/e;

    move-result-object p1

    invoke-virtual {v0}, LXi/G;->f()[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->a(Ljk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->a(Ljava/security/spec/EllipticCurve;LXi/G;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->e:Ljava/security/spec/ECParameterSpec;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->e:Ljava/security/spec/ECParameterSpec;

    :goto_0
    iput-object p4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->f:LTj/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lhi/h0;LTj/c;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->f:LTj/c;

    invoke-direct {p0, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->e(Lhi/h0;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lhk/g;LTj/c;)V
    .locals 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->b:Ljava/lang/String;

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

    new-instance v0, LXi/M;

    invoke-virtual {p2}, Lhk/g;->b()Ljk/i;

    move-result-object v1

    invoke-virtual {p2}, Lhk/a;->a()Lhk/e;

    move-result-object v2

    invoke-static {p3, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->f(LTj/c;Lhk/e;)LXi/G;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LXi/M;-><init>(Ljk/i;LXi/G;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->d:LXi/M;

    invoke-virtual {p2}, Lhk/a;->a()Lhk/e;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->h(Ljava/security/spec/EllipticCurve;Lhk/e;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->e:Ljava/security/spec/ECParameterSpec;

    goto :goto_0

    :cond_0
    invoke-interface {p3}, LTj/c;->b()Lhk/e;

    move-result-object p1

    new-instance v0, LXi/M;

    invoke-virtual {p1}, Lhk/e;->a()Ljk/e;

    move-result-object p1

    invoke-virtual {p2}, Lhk/g;->b()Ljk/i;

    move-result-object v1

    invoke-virtual {v1}, Ljk/i;->f()Ljk/f;

    move-result-object v1

    invoke-virtual {v1}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2}, Lhk/g;->b()Ljk/i;

    move-result-object p2

    invoke-virtual {p2}, Ljk/i;->g()Ljk/f;

    move-result-object p2

    invoke-virtual {p2}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Ljk/e;->i(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljk/i;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p3, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->m(LTj/c;Ljava/security/spec/ECParameterSpec;)LXi/G;

    move-result-object v1

    invoke-direct {v0, p1, v1}, LXi/M;-><init>(Ljk/i;LXi/G;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->d:LXi/M;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->e:Ljava/security/spec/ECParameterSpec;

    :goto_0
    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->f:LTj/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/ECPublicKeySpec;LTj/c;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->b:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/security/spec/ECPublicKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->e:Ljava/security/spec/ECParameterSpec;

    new-instance v0, LXi/M;

    invoke-virtual {p2}, Ljava/security/spec/ECPublicKeySpec;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->e(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)Ljk/i;

    move-result-object p1

    invoke-virtual {p2}, Ljava/security/spec/ECPublicKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p2

    invoke-static {p3, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->m(LTj/c;Ljava/security/spec/ECParameterSpec;)LXi/G;

    move-result-object p2

    invoke-direct {v0, p1, p2}, LXi/M;-><init>(Ljk/i;LXi/G;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->d:LXi/M;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->f:LTj/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->b:Ljava/lang/String;

    iget-object p1, p2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->d:LXi/M;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->d:LXi/M;

    iget-object p1, p2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->e:Ljava/security/spec/ECParameterSpec;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->e:Ljava/security/spec/ECParameterSpec;

    iget-boolean p1, p2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->c:Z

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->c:Z

    iget-object p1, p2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->f:LTj/c;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->f:LTj/c;

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;LTj/c;)V
    .locals 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->b:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->b:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->e:Ljava/security/spec/ECParameterSpec;

    new-instance v1, LXi/M;

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->e(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)Ljk/i;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->m(LTj/c;Ljava/security/spec/ECParameterSpec;)LXi/G;

    move-result-object p1

    invoke-direct {v1, v0, p1}, LXi/M;-><init>(Ljk/i;LXi/G;)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->d:LXi/M;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->f:LTj/c;

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

.method private e(Lhi/h0;)V
    .locals 6

    invoke-virtual {p1}, Lhi/h0;->u()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, Lki/j;->u(Ljava/lang/Object;)Lki/j;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->f:LTj/c;

    invoke-static {v1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->l(LTj/c;Lki/j;)Ljk/e;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->j(Lki/j;Ljk/e;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->e:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p1}, Lhi/h0;->z()Loh/c;

    move-result-object p1

    invoke-virtual {p1}, Loh/c;->F()[B

    move-result-object p1

    new-instance v2, Loh/C0;

    invoke-direct {v2, p1}, Loh/C0;-><init>([B)V

    const/4 v3, 0x0

    aget-byte v3, p1, v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    array-length v4, p1

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    if-ne v3, v4, :cond_1

    aget-byte v3, p1, v5

    const/4 v4, 0x3

    if-eq v3, v5, :cond_0

    if-ne v3, v4, :cond_1

    :cond_0
    new-instance v3, Lki/q;

    invoke-direct {v3}, Lki/q;-><init>()V

    invoke-virtual {v3, v1}, Lki/q;->a(Ljk/e;)I

    move-result v3

    array-length v5, p1

    sub-int/2addr v5, v4

    if-lt v3, v5, :cond_1

    :try_start_0
    invoke-static {p1}, Loh/B;->B([B)Loh/B;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Loh/y;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "error recovering public key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance p1, Lki/n;

    invoke-direct {p1, v1, v2}, Lki/n;-><init>(Ljk/e;Loh/y;)V

    new-instance v1, LXi/M;

    invoke-virtual {p1}, Lki/n;->u()Ljk/i;

    move-result-object p1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->f:LTj/c;

    invoke-static {v2, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->g(LTj/c;Lki/j;)LXi/G;

    move-result-object v0

    invoke-direct {v1, p1, v0}, LXi/M;-><init>(Ljk/i;LXi/G;)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->d:LXi/M;

    return-void
.end method

.method private f(Ljava/io/ObjectInputStream;)V
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

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->f:LTj/c;

    invoke-static {p1}, Loh/B;->B([B)Loh/B;

    move-result-object p1

    invoke-static {p1}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->e(Lhi/h0;)V

    return-void
.end method

.method private g(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public Ne()Ljk/i;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->d:LXi/M;

    invoke-virtual {v0}, LXi/M;->e()Ljk/i;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->e:Ljava/security/spec/ECParameterSpec;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljk/i;->k()Ljk/i;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UNCOMPRESSED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->c:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->g:[B

    return-void
.end method

.method public c()LXi/M;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->d:LXi/M;

    return-object v0
.end method

.method public d()Lhk/e;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->e:Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->g(Ljava/security/spec/ECParameterSpec;)Lhk/e;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->f:LTj/c;

    invoke-interface {v0}, LTj/c;->b()Lhk/e;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->d:LXi/M;

    invoke-virtual {v0}, LXi/M;->e()Ljk/i;

    move-result-object v0

    iget-object v2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->d:LXi/M;

    invoke-virtual {v2}, LXi/M;->e()Ljk/i;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljk/i;->e(Ljk/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->d()Lhk/e;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->d()Lhk/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Lhk/e;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    instance-of v0, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/security/interfaces/ECPublicKey;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->getEncoded()[B

    move-result-object v0

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 5

    const-string v0, "org.bouncycastle.ec.enable_pc"

    invoke-static {v0}, Lorg/bouncycastle/util/q;->f(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->g:[B

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->h:Z

    if-eq v1, v0, :cond_3

    :cond_0
    iget-boolean v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->c:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    new-instance v2, Lhi/b;

    sget-object v3, Lki/r;->I5:Loh/x;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->e:Ljava/security/spec/ECParameterSpec;

    invoke-static {v4, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/d;->d(Ljava/security/spec/ECParameterSpec;Z)Lki/j;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->d:LXi/M;

    invoke-virtual {v3}, LXi/M;->e()Ljk/i;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljk/i;->l(Z)[B

    move-result-object v1

    invoke-static {v2, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/l;->d(Lhi/b;[B)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->g:[B

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->h:Z

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->g:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

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

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->e:Ljava/security/spec/ECParameterSpec;

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

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->e:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getW()Ljava/security/spec/ECPoint;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->d:LXi/M;

    invoke-virtual {v0}, LXi/M;->e()Ljk/i;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->d(Ljk/i;)Ljava/security/spec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->d:LXi/M;

    invoke-virtual {v0}, LXi/M;->e()Ljk/i;

    move-result-object v0

    invoke-virtual {v0}, Ljk/i;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->d()Lhk/e;

    move-result-object v1

    invoke-virtual {v1}, Lhk/e;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->d:LXi/M;

    invoke-virtual {v0}, LXi/M;->e()Ljk/i;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->d()Lhk/e;

    move-result-object v1

    const-string v2, "EC"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->p(Ljava/lang/String;Ljk/i;Lhk/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
