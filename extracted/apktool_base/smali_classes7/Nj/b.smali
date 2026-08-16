.class public LNj/b;
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

.field public transient f:Ldi/d;


# direct methods
.method public constructor <init>(LNj/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DSTU4145"

    iput-object v0, p0, LNj/b;->b:Ljava/lang/String;

    iget-object v0, p1, LNj/b;->d:LXi/M;

    iput-object v0, p0, LNj/b;->d:LXi/M;

    iget-object v0, p1, LNj/b;->e:Ljava/security/spec/ECParameterSpec;

    iput-object v0, p0, LNj/b;->e:Ljava/security/spec/ECParameterSpec;

    iget-boolean v0, p1, LNj/b;->c:Z

    iput-boolean v0, p0, LNj/b;->c:Z

    iget-object p1, p1, LNj/b;->f:Ldi/d;

    iput-object p1, p0, LNj/b;->f:Ldi/d;

    return-void
.end method

.method public constructor <init>(Lhi/h0;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DSTU4145"

    iput-object v0, p0, LNj/b;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, LNj/b;->f(Lhi/h0;)V

    return-void
.end method

.method public constructor <init>(Lhk/g;LTj/c;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DSTU4145"

    iput-object v0, p0, LNj/b;->b:Ljava/lang/String;

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

    iput-object v1, p0, LNj/b;->d:LXi/M;

    invoke-virtual {p1}, Lhk/a;->a()Lhk/e;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->h(Ljava/security/spec/EllipticCurve;Lhk/e;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, LNj/b;->e:Ljava/security/spec/ECParameterSpec;

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

    iput-object v1, p0, LNj/b;->d:LXi/M;

    iput-object v0, p0, LNj/b;->e:Ljava/security/spec/ECParameterSpec;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LXi/M;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LNj/b;->b:Ljava/lang/String;

    iput-object p2, p0, LNj/b;->d:LXi/M;

    const/4 p1, 0x0

    iput-object p1, p0, LNj/b;->e:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LXi/M;Lhk/e;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DSTU4145"

    iput-object v0, p0, LNj/b;->b:Ljava/lang/String;

    invoke-virtual {p2}, LXi/J;->d()LXi/G;

    move-result-object v0

    iput-object p1, p0, LNj/b;->b:Ljava/lang/String;

    if-nez p3, :cond_0

    invoke-virtual {v0}, LXi/G;->a()Ljk/e;

    move-result-object p1

    invoke-virtual {v0}, LXi/G;->f()[B

    move-result-object p3

    invoke-static {p1, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->a(Ljk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, LNj/b;->a(Ljava/security/spec/EllipticCurve;LXi/G;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    :goto_0
    iput-object p1, p0, LNj/b;->e:Ljava/security/spec/ECParameterSpec;

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
    iput-object p2, p0, LNj/b;->d:LXi/M;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LXi/M;Ljava/security/spec/ECParameterSpec;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DSTU4145"

    iput-object v0, p0, LNj/b;->b:Ljava/lang/String;

    invoke-virtual {p2}, LXi/J;->d()LXi/G;

    move-result-object v0

    iput-object p1, p0, LNj/b;->b:Ljava/lang/String;

    iput-object p2, p0, LNj/b;->d:LXi/M;

    if-nez p3, :cond_0

    invoke-virtual {v0}, LXi/G;->a()Ljk/e;

    move-result-object p1

    invoke-virtual {v0}, LXi/G;->f()[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->a(Ljk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, LNj/b;->a(Ljava/security/spec/EllipticCurve;LXi/G;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, LNj/b;->e:Ljava/security/spec/ECParameterSpec;

    goto :goto_0

    :cond_0
    iput-object p3, p0, LNj/b;->e:Ljava/security/spec/ECParameterSpec;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/security/spec/ECPublicKeySpec;)V
    .locals 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DSTU4145"

    iput-object v0, p0, LNj/b;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/security/spec/ECPublicKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, LNj/b;->e:Ljava/security/spec/ECParameterSpec;

    new-instance v1, LXi/M;

    invoke-virtual {p1}, Ljava/security/spec/ECPublicKeySpec;->getW()Ljava/security/spec/ECPoint;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->e(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)Ljk/i;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v2, p0, LNj/b;->e:Ljava/security/spec/ECParameterSpec;

    invoke-static {v0, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->m(LTj/c;Ljava/security/spec/ECParameterSpec;)LXi/G;

    move-result-object v0

    invoke-direct {v1, p1, v0}, LXi/M;-><init>(Ljk/i;LXi/G;)V

    iput-object v1, p0, LNj/b;->d:LXi/M;

    return-void
.end method

.method private g(Ljava/io/ObjectInputStream;)V
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

    invoke-virtual {p0, p1}, LNj/b;->f(Lhi/h0;)V

    return-void
.end method

.method private h([B)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    aget-byte v1, p1, v0

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    aget-byte v2, p1, v2

    aput-byte v2, p1, v0

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    aput-byte v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
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

    invoke-virtual {p0}, LNj/b;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public Ne()Ljk/i;
    .locals 2

    iget-object v0, p0, LNj/b;->d:LXi/M;

    invoke-virtual {v0}, LXi/M;->e()Ljk/i;

    move-result-object v0

    iget-object v1, p0, LNj/b;->e:Ljava/security/spec/ECParameterSpec;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljk/i;->k()Ljk/i;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final a(Ljava/security/spec/EllipticCurve;LXi/G;)Ljava/security/spec/ECParameterSpec;
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

.method public b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UNCOMPRESSED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, LNj/b;->c:Z

    return-void
.end method

.method public c()LXi/M;
    .locals 1

    iget-object v0, p0, LNj/b;->d:LXi/M;

    return-object v0
.end method

.method public d()Lhk/e;
    .locals 1

    iget-object v0, p0, LNj/b;->e:Ljava/security/spec/ECParameterSpec;

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

.method public e()[B
    .locals 1

    iget-object v0, p0, LNj/b;->f:Ldi/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldi/d;->u()[B

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Ldi/d;->v()[B

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, LNj/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, LNj/b;

    iget-object v0, p0, LNj/b;->d:LXi/M;

    invoke-virtual {v0}, LXi/M;->e()Ljk/i;

    move-result-object v0

    iget-object v2, p1, LNj/b;->d:LXi/M;

    invoke-virtual {v2}, LXi/M;->e()Ljk/i;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljk/i;->e(Ljk/i;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LNj/b;->d()Lhk/e;

    move-result-object v0

    invoke-virtual {p1}, LNj/b;->d()Lhk/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Lhk/e;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final f(Lhi/h0;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lhi/h0;->z()Loh/c;

    move-result-object v1

    const-string v2, "DSTU4145"

    iput-object v2, v0, LNj/b;->b:Ljava/lang/String;

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

    invoke-virtual/range {p1 .. p1}, Lhi/h0;->u()Lhi/b;

    move-result-object v2

    invoke-virtual {v2}, Lhi/b;->u()Loh/x;

    move-result-object v2

    sget-object v3, Ldi/g;->b:Loh/x;

    invoke-virtual {v2, v3}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {v0, v1}, LNj/b;->h([B)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lhi/h0;->u()Lhi/b;

    move-result-object v2

    invoke-virtual {v2}, Lhi/b;->x()Loh/g;

    move-result-object v2

    invoke-static {v2}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Loh/E;->I(I)Loh/g;

    move-result-object v4

    instance-of v4, v4, Loh/s;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-static {v2}, Lki/l;->B(Ljava/lang/Object;)Lki/l;

    move-result-object v2

    new-instance v3, Lhk/e;

    invoke-virtual {v2}, Lki/l;->v()Ljk/e;

    move-result-object v7

    invoke-virtual {v2}, Lki/l;->z()Ljk/i;

    move-result-object v8

    invoke-virtual {v2}, Lki/l;->C()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v2}, Lki/l;->A()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v2}, Lki/l;->D()[B

    move-result-object v11

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Lhk/e;-><init>(Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto/16 :goto_1

    :cond_1
    invoke-static {v2}, Ldi/d;->y(Ljava/lang/Object;)Ldi/d;

    move-result-object v2

    iput-object v2, v0, LNj/b;->f:Ldi/d;

    invoke-virtual {v2}, Ldi/d;->A()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, LNj/b;->f:Ldi/d;

    invoke-virtual {v2}, Ldi/d;->z()Loh/x;

    move-result-object v2

    invoke-static {v2}, Ldi/c;->a(Loh/x;)LXi/G;

    move-result-object v3

    new-instance v4, Lhk/c;

    invoke-virtual {v2}, Loh/x;->J()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, LXi/G;->a()Ljk/e;

    move-result-object v8

    invoke-virtual {v3}, LXi/G;->b()Ljk/i;

    move-result-object v9

    invoke-virtual {v3}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v3}, LXi/G;->c()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v3}, LXi/G;->f()[B

    move-result-object v12

    move-object v6, v4

    invoke-direct/range {v6 .. v12}, Lhk/c;-><init>(Ljava/lang/String;Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    move-object v3, v4

    :goto_0
    move-object v2, v5

    goto :goto_1

    :cond_2
    iget-object v2, v0, LNj/b;->f:Ldi/d;

    invoke-virtual {v2}, Ldi/d;->x()Ldi/b;

    move-result-object v2

    invoke-virtual {v2}, Ldi/b;->v()[B

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lhi/h0;->u()Lhi/b;

    move-result-object v6

    invoke-virtual {v6}, Lhi/b;->u()Loh/x;

    move-result-object v6

    invoke-virtual {v6, v3}, Loh/B;->A(Loh/B;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-direct {v0, v4}, LNj/b;->h([B)V

    :cond_3
    invoke-virtual {v2}, Ldi/b;->x()Ldi/a;

    move-result-object v6

    new-instance v15, Ljk/e$e;

    invoke-virtual {v6}, Ldi/a;->z()I

    move-result v8

    invoke-virtual {v6}, Ldi/a;->v()I

    move-result v9

    invoke-virtual {v6}, Ldi/a;->x()I

    move-result v10

    invoke-virtual {v6}, Ldi/a;->y()I

    move-result v11

    invoke-virtual {v2}, Ldi/b;->u()Ljava/math/BigInteger;

    move-result-object v12

    new-instance v13, Ljava/math/BigInteger;

    const/4 v6, 0x1

    invoke-direct {v13, v6, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 v14, 0x0

    const/4 v4, 0x0

    move-object v7, v15

    move-object v6, v15

    move-object v15, v4

    invoke-direct/range {v7 .. v15}, Ljk/e$e;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v2}, Ldi/b;->y()[B

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lhi/h0;->u()Lhi/b;

    move-result-object v7

    invoke-virtual {v7}, Lhi/b;->u()Loh/x;

    move-result-object v7

    invoke-virtual {v7, v3}, Loh/B;->A(Loh/B;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {v0, v4}, LNj/b;->h([B)V

    :cond_4
    new-instance v3, Lhk/e;

    invoke-static {v6, v4}, Ldi/e;->a(Ljk/e;[B)Ljk/i;

    move-result-object v4

    invoke-virtual {v2}, Ldi/b;->A()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v3, v6, v4, v2}, Lhk/e;-><init>(Ljk/e;Ljk/i;Ljava/math/BigInteger;)V

    goto :goto_0

    :goto_1
    invoke-virtual {v3}, Lhk/e;->a()Ljk/e;

    move-result-object v4

    invoke-virtual {v3}, Lhk/e;->e()[B

    move-result-object v6

    invoke-static {v4, v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->a(Ljk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v9

    iget-object v6, v0, LNj/b;->f:Ldi/d;

    if-eqz v6, :cond_6

    invoke-virtual {v3}, Lhk/e;->b()Ljk/i;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->d(Ljk/i;)Ljava/security/spec/ECPoint;

    move-result-object v10

    iget-object v2, v0, LNj/b;->f:Ldi/d;

    invoke-virtual {v2}, Ldi/d;->A()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, LNj/b;->f:Ldi/d;

    invoke-virtual {v2}, Ldi/d;->z()Loh/x;

    move-result-object v2

    invoke-virtual {v2}, Loh/x;->J()Ljava/lang/String;

    move-result-object v8

    new-instance v2, Lhk/d;

    invoke-virtual {v3}, Lhk/e;->d()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v3}, Lhk/e;->c()Ljava/math/BigInteger;

    move-result-object v12

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lhk/d;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_2

    :cond_5
    new-instance v2, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v3}, Lhk/e;->d()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v3}, Lhk/e;->c()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    invoke-direct {v2, v9, v10, v6, v3}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    goto :goto_2

    :cond_6
    invoke-static {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->k(Lki/l;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    :goto_2
    iput-object v2, v0, LNj/b;->e:Ljava/security/spec/ECParameterSpec;

    new-instance v2, LXi/M;

    invoke-static {v4, v1}, Ldi/e;->a(Ljk/e;[B)Ljk/i;

    move-result-object v1

    iget-object v3, v0, LNj/b;->e:Ljava/security/spec/ECParameterSpec;

    invoke-static {v5, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->m(LTj/c;Ljava/security/spec/ECParameterSpec;)LXi/G;

    move-result-object v3

    invoke-direct {v2, v1, v3}, LXi/M;-><init>(Ljk/i;LXi/G;)V

    iput-object v2, v0, LNj/b;->d:LXi/M;

    return-void

    :catch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "error recovering public key"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LNj/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 7

    iget-object v0, p0, LNj/b;->f:Ldi/d;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LNj/b;->e:Ljava/security/spec/ECParameterSpec;

    instance-of v1, v0, Lhk/d;

    if-eqz v1, :cond_1

    new-instance v0, Ldi/d;

    new-instance v1, Loh/x;

    iget-object v2, p0, LNj/b;->e:Ljava/security/spec/ECParameterSpec;

    check-cast v2, Lhk/d;

    invoke-virtual {v2}, Lhk/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Loh/x;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ldi/d;-><init>(Loh/x;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->b(Ljava/security/spec/EllipticCurve;)Ljk/e;

    move-result-object v2

    new-instance v0, Lki/l;

    new-instance v3, Lki/n;

    iget-object v1, p0, LNj/b;->e:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->f(Ljk/e;Ljava/security/spec/ECPoint;)Ljk/i;

    move-result-object v1

    iget-boolean v4, p0, LNj/b;->c:Z

    invoke-direct {v3, v1, v4}, Lki/n;-><init>(Ljk/i;Z)V

    iget-object v1, p0, LNj/b;->e:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v1, p0, LNj/b;->e:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v1

    int-to-long v5, v1

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    iget-object v1, p0, LNj/b;->e:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lki/l;-><init>(Ljk/e;Lki/n;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    new-instance v1, Lki/j;

    invoke-direct {v1, v0}, Lki/j;-><init>(Lki/l;)V

    move-object v0, v1

    :goto_0
    iget-object v1, p0, LNj/b;->d:LXi/M;

    invoke-virtual {v1}, LXi/M;->e()Ljk/i;

    move-result-object v1

    invoke-static {v1}, Ldi/e;->b(Ljk/i;)[B

    move-result-object v1

    :try_start_0
    new-instance v2, Lhi/h0;

    new-instance v3, Lhi/b;

    sget-object v4, Ldi/g;->c:Loh/x;

    invoke-direct {v3, v4, v0}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    new-instance v0, Loh/C0;

    invoke-direct {v0, v1}, Loh/C0;-><init>([B)V

    invoke-direct {v2, v3, v0}, Lhi/h0;-><init>(Lhi/b;Loh/g;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/l;->e(Lhi/h0;)[B

    move-result-object v0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "X.509"

    return-object v0
.end method

.method public getParameters()Lhk/e;
    .locals 1

    iget-object v0, p0, LNj/b;->e:Ljava/security/spec/ECParameterSpec;

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

    iget-object v0, p0, LNj/b;->e:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getW()Ljava/security/spec/ECPoint;
    .locals 1

    iget-object v0, p0, LNj/b;->d:LXi/M;

    invoke-virtual {v0}, LXi/M;->e()Ljk/i;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->d(Ljk/i;)Ljava/security/spec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, LNj/b;->d:LXi/M;

    invoke-virtual {v0}, LXi/M;->e()Ljk/i;

    move-result-object v0

    invoke-virtual {v0}, Ljk/i;->hashCode()I

    move-result v0

    invoke-virtual {p0}, LNj/b;->d()Lhk/e;

    move-result-object v1

    invoke-virtual {v1}, Lhk/e;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, LNj/b;->b:Ljava/lang/String;

    iget-object v1, p0, LNj/b;->d:LXi/M;

    invoke-virtual {v1}, LXi/M;->e()Ljk/i;

    move-result-object v1

    invoke-virtual {p0}, LNj/b;->d()Lhk/e;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->p(Ljava/lang/String;Ljk/i;Lhk/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
