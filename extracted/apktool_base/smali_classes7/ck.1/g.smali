.class public Lck/g;
.super Ljava/security/spec/ECParameterSpec;
.source "SourceFile"


# instance fields
.field public final b:[B

.field public final c:LXi/G;


# direct methods
.method public constructor <init>(LXi/G;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->i(LXi/G;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {}, Ldi/d;->v()[B

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lck/g;-><init>(LXi/G;Ljava/security/spec/ECParameterSpec;[B)V

    return-void
.end method

.method public constructor <init>(LXi/G;Ljava/security/spec/ECParameterSpec;[B)V
    .locals 3

    .line 2
    invoke-virtual {p2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-virtual {p2}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-virtual {p2}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result p2

    invoke-direct {p0, v0, v1, v2, p2}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object p1, p0, Lck/g;->c:LXi/G;

    invoke-static {p3}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Lck/g;->b:[B

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    iget-object v0, p0, Lck/g;->b:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lck/g;

    if-eqz v0, :cond_0

    check-cast p1, Lck/g;

    iget-object v0, p0, Lck/g;->c:LXi/G;

    iget-object p1, p1, Lck/g;->c:LXi/G;

    invoke-virtual {v0, p1}, LXi/G;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lck/g;->c:LXi/G;

    invoke-virtual {v0}, LXi/G;->hashCode()I

    move-result v0

    return v0
.end method
