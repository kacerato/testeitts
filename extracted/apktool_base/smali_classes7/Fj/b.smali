.class public LFj/b;
.super Ljava/lang/Object;
.source "SourceFile"


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

    invoke-static {p1}, LFj/b;->b(Lrk/b;)Ljava/security/spec/ECField;

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

.method public static b(Lrk/b;)Ljava/security/spec/ECField;
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

.method public static c(Ljk/i;)Ljava/security/spec/ECPoint;
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

.method public static d(Lki/l;)Ljava/security/spec/ECParameterSpec;
    .locals 4

    new-instance v0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p0}, Lki/l;->v()Ljk/e;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, LFj/b;->a(Ljk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {p0}, Lki/l;->z()Ljk/i;

    move-result-object v2

    invoke-static {v2}, LFj/b;->c(Ljk/i;)Ljava/security/spec/ECPoint;

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
