.class public Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/asymmetric/util/h$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljk/e;[B)Ljava/security/spec/EllipticCurve;
    .locals 3

    invoke-virtual {p0}, Ljk/e;->v()Lrk/b;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->c(Lrk/b;)Ljava/security/spec/ECField;

    move-result-object p1

    invoke-virtual {p0}, Ljk/e;->p()Ljk/f;

    move-result-object v0

    invoke-virtual {v0}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Ljk/e;->r()Ljk/f;

    move-result-object p0

    invoke-virtual {p0}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object p0

    new-instance v1, Ljava/security/spec/EllipticCurve;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, p0, v2}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v1
.end method

.method public static b(Ljava/security/spec/EllipticCurve;)Ljk/e;
    .locals 10

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v7

    instance-of p0, v0, Ljava/security/spec/ECFieldFp;

    if-eqz p0, :cond_0

    new-instance p0, Ljk/e$f;

    check-cast v0, Ljava/security/spec/ECFieldFp;

    invoke-virtual {v0}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v0, 0x0

    move-object v1, p0

    move-object v3, v6

    move-object v4, v7

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Ljk/e$f;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h$a;->b(Ljk/e;)Ljk/e;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast v0, Ljava/security/spec/ECFieldF2m;

    invoke-virtual {v0}, Ljava/security/spec/ECFieldF2m;->getM()I

    move-result v2

    invoke-virtual {v0}, Ljava/security/spec/ECFieldF2m;->getMidTermsOfReductionPolynomial()[I

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->a([I)[I

    move-result-object p0

    new-instance v0, Ljk/e$e;

    const/4 v1, 0x0

    aget v3, p0, v1

    const/4 v1, 0x1

    aget v4, p0, v1

    const/4 v1, 0x2

    aget v5, p0, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Ljk/e$e;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public static c(Lrk/b;)Ljava/security/spec/ECField;
    .locals 3

    invoke-static {p0}, Ljk/c;->p(Lrk/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/security/spec/ECFieldFp;

    invoke-interface {p0}, Lrk/b;->b()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    :cond_0
    check-cast p0, Lrk/g;

    invoke-interface {p0}, Lrk/g;->d()Lrk/f;

    move-result-object p0

    invoke-interface {p0}, Lrk/f;->b()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/util/a;->Z([III)[I

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->R0([I)[I

    move-result-object v0

    new-instance v1, Ljava/security/spec/ECFieldF2m;

    invoke-interface {p0}, Lrk/f;->a()I

    move-result p0

    invoke-direct {v1, p0, v0}, Ljava/security/spec/ECFieldF2m;-><init>(I[I)V

    return-object v1
.end method

.method public static d(Ljk/i;)Ljava/security/spec/ECPoint;
    .locals 2

    invoke-virtual {p0}, Ljk/i;->B()Ljk/i;

    move-result-object p0

    new-instance v0, Ljava/security/spec/ECPoint;

    invoke-virtual {p0}, Ljk/i;->f()Ljk/f;

    move-result-object v1

    invoke-virtual {v1}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Ljk/i;->g()Ljk/f;

    move-result-object p0

    invoke-virtual {p0}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public static e(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)Ljk/i;
    .locals 0

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->b(Ljava/security/spec/EllipticCurve;)Ljk/e;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->f(Ljk/e;Ljava/security/spec/ECPoint;)Ljk/i;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljk/e;Ljava/security/spec/ECPoint;)Ljk/i;
    .locals 1

    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljk/e;->i(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljk/i;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/security/spec/ECParameterSpec;)Lhk/e;
    .locals 9

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->b(Ljava/security/spec/EllipticCurve;)Ljk/e;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->f(Ljk/e;Ljava/security/spec/ECPoint;)Ljk/i;

    move-result-object v4

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v7

    instance-of v1, p0, Lhk/d;

    if-eqz v1, :cond_0

    new-instance v8, Lhk/c;

    check-cast p0, Lhk/d;

    invoke-virtual {p0}, Lhk/d;->c()Ljava/lang/String;

    move-result-object v2

    move-object v1, v8

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lhk/c;-><init>(Ljava/lang/String;Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v8

    :cond_0
    new-instance p0, Lhk/e;

    move-object v1, p0

    move-object v2, v0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lhk/e;-><init>(Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object p0
.end method

.method public static h(Ljava/security/spec/EllipticCurve;Lhk/e;)Ljava/security/spec/ECParameterSpec;
    .locals 7

    invoke-virtual {p1}, Lhk/e;->b()Ljk/i;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->d(Ljk/i;)Ljava/security/spec/ECPoint;

    move-result-object v4

    instance-of v0, p1, Lhk/c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lhk/c;

    invoke-virtual {v0}, Lhk/c;->f()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lhk/d;

    invoke-virtual {p1}, Lhk/e;->d()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1}, Lhk/e;->c()Ljava/math/BigInteger;

    move-result-object v6

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lhk/d;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p1}, Lhk/e;->d()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lhk/e;->c()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-direct {v0, p0, v4, v1, p1}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public static i(LXi/G;)Ljava/security/spec/ECParameterSpec;
    .locals 4

    new-instance v0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p0}, LXi/G;->a()Ljk/e;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->a(Ljk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {p0}, LXi/G;->b()Ljk/i;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->d(Ljk/i;)Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-virtual {p0}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, LXi/G;->c()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public static j(Lki/j;Ljk/e;)Ljava/security/spec/ECParameterSpec;
    .locals 8

    invoke-virtual {p0}, Lki/j;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lki/j;->x()Loh/B;

    move-result-object p0

    check-cast p0, Loh/x;

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->j(Loh/x;)Lki/l;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lorg/bouncycastle/jce/provider/a;->f:LTj/c;

    invoke-interface {v1}, LTj/c;->d()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lki/l;

    :cond_0
    invoke-virtual {v0}, Lki/l;->D()[B

    move-result-object v1

    invoke-static {p1, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->a(Ljk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v4

    new-instance p1, Lhk/d;

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->e(Loh/x;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lki/l;->z()Ljk/i;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->d(Ljk/i;)Ljava/security/spec/ECPoint;

    move-result-object v5

    invoke-virtual {v0}, Lki/l;->C()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0}, Lki/l;->A()Ljava/math/BigInteger;

    move-result-object v7

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lhk/d;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0}, Lki/j;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p0}, Lki/j;->x()Loh/B;

    move-result-object p0

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-virtual {p0}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_4

    invoke-static {p0}, Lki/l;->B(Ljava/lang/Object;)Lki/l;

    move-result-object p0

    invoke-virtual {p0}, Lki/l;->D()[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->a(Ljk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-virtual {p0}, Lki/l;->A()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p0}, Lki/l;->z()Ljk/i;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->d(Ljk/i;)Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-virtual {p0}, Lki/l;->C()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lki/l;->A()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-direct {v0, p1, v1, v2, p0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p0}, Lki/l;->z()Ljk/i;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->d(Ljk/i;)Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-virtual {p0}, Lki/l;->C()Ljava/math/BigInteger;

    move-result-object p0

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, p0, v2}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lyh/g;->w(Ljava/lang/Object;)Lyh/g;

    move-result-object p0

    invoke-virtual {p0}, Lyh/g;->y()Loh/x;

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

    move-result-object v4

    new-instance v0, Lhk/d;

    invoke-virtual {p0}, Lyh/g;->y()Loh/x;

    move-result-object p0

    invoke-static {p0}, Lyh/b;->l(Loh/x;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lhk/e;->b()Ljk/i;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->d(Ljk/i;)Ljava/security/spec/ECPoint;

    move-result-object v5

    invoke-virtual {p1}, Lhk/e;->d()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p1}, Lhk/e;->c()Ljava/math/BigInteger;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lhk/d;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :goto_0
    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method public static k(Lki/l;)Ljava/security/spec/ECParameterSpec;
    .locals 4

    new-instance v0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p0}, Lki/l;->v()Ljk/e;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->a(Ljk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {p0}, Lki/l;->z()Ljk/i;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->d(Ljk/i;)Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-virtual {p0}, Lki/l;->C()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lki/l;->A()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public static l(LTj/c;Lki/j;)Ljk/e;
    .locals 2

    invoke-interface {p0}, LTj/c;->c()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lki/j;->z()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lki/j;->x()Loh/B;

    move-result-object p1

    invoke-static {p1}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "named curve not acceptable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->j(Loh/x;)Lki/l;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {p0}, LTj/c;->d()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lki/l;

    :cond_2
    invoke-virtual {v0}, Lki/l;->v()Ljk/e;

    move-result-object p0

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lki/j;->y()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, LTj/c;->b()Lhk/e;

    move-result-object p0

    invoke-virtual {p0}, Lhk/e;->a()Ljk/e;

    move-result-object p0

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lki/j;->x()Loh/B;

    move-result-object p0

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Loh/E;->size()I

    move-result p1

    const/4 v0, 0x3

    if-le p1, v0, :cond_5

    invoke-static {p0}, Lki/l;->B(Ljava/lang/Object;)Lki/l;

    move-result-object p0

    :goto_1
    invoke-virtual {p0}, Lki/l;->v()Ljk/e;

    move-result-object p0

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Loh/E;->I(I)Loh/g;

    move-result-object p0

    invoke-static {p0}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object p0

    invoke-static {p0}, Lyh/b;->k(Loh/x;)Lki/l;

    move-result-object p0

    goto :goto_1

    :goto_2
    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "encoded parameters not acceptable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static m(LTj/c;Ljava/security/spec/ECParameterSpec;)LXi/G;
    .locals 6

    if-nez p1, :cond_0

    invoke-interface {p0}, LTj/c;->b()Lhk/e;

    move-result-object p0

    new-instance p1, LXi/G;

    invoke-virtual {p0}, Lhk/e;->a()Ljk/e;

    move-result-object v1

    invoke-virtual {p0}, Lhk/e;->b()Ljk/i;

    move-result-object v2

    invoke-virtual {p0}, Lhk/e;->d()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lhk/e;->c()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Lhk/e;->e()[B

    move-result-object v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, LXi/G;-><init>(Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->g(Ljava/security/spec/ECParameterSpec;)Lhk/e;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->f(LTj/c;Lhk/e;)LXi/G;

    move-result-object p1

    :goto_0
    return-object p1
.end method
