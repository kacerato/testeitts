.class public LMj/g;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/util/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LMj/g$a;,
        LMj/g$b;,
        LMj/g$c;,
        LMj/g$d;,
        LMj/g$e;,
        LMj/g$f;,
        LMj/g$g;,
        LMj/g$h;,
        LMj/g$i;,
        LMj/g$j;,
        LMj/g$k;,
        LMj/g$l;,
        LMj/g$m;,
        LMj/g$n;,
        LMj/g$o;,
        LMj/g$p;,
        LMj/g$q;,
        LMj/g$r;,
        LMj/g$s;,
        LMj/g$t;,
        LMj/g$u;,
        LMj/g$v;,
        LMj/g$w;,
        LMj/g$x;,
        LMj/g$y;,
        LMj/g$z;,
        LMj/g$A;,
        LMj/g$B;,
        LMj/g$C;,
        LMj/g$D;,
        LMj/g$E;
    }
.end annotation


# static fields
.field public static final s:Ljava/math/BigInteger;

.field public static final t:Ljava/math/BigInteger;


# instance fields
.field public final k:LCi/d;

.field public final l:LBi/e;

.field public m:Lck/f;

.field public n:Lck/s;

.field public o:Ljava/math/BigInteger;

.field public p:Ljava/math/BigInteger;

.field public q:Ljava/math/BigInteger;

.field public r:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, LMj/g;->s:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, LMj/g;->t:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "Diffie-Hellman"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LMj/g;-><init>(Ljava/lang/String;LBi/w;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LBi/e;LBi/w;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/a;-><init>(Ljava/lang/String;LBi/w;)V

    const/4 p1, 0x0

    iput-object p1, p0, LMj/g;->k:LCi/d;

    iput-object p2, p0, LMj/g;->l:LBi/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LBi/w;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/a;-><init>(Ljava/lang/String;LBi/w;)V

    const/4 p1, 0x0

    iput-object p1, p0, LMj/g;->k:LCi/d;

    iput-object p1, p0, LMj/g;->l:LBi/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LCi/d;LBi/w;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/a;-><init>(Ljava/lang/String;LBi/w;)V

    iput-object p2, p0, LMj/g;->k:LCi/d;

    const/4 p1, 0x0

    iput-object p1, p0, LMj/g;->l:LBi/e;

    return-void
.end method


# virtual methods
.method public b()[B
    .locals 1

    iget-object v0, p0, LMj/g;->r:[B

    return-object v0
.end method

.method public c(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of p3, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz p3, :cond_a

    check-cast p1, Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz p2, :cond_9

    instance-of p3, p2, Ljavax/crypto/spec/DHParameterSpec;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    check-cast p2, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object p3

    iput-object p3, p0, LMj/g;->p:Ljava/math/BigInteger;

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p2

    iput-object p2, p0, LMj/g;->q:Ljava/math/BigInteger;

    iput-object v0, p0, LMj/g;->m:Lck/f;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/a;->c:[B

    goto/16 :goto_2

    :cond_0
    instance-of p3, p2, Lck/f;

    if-eqz p3, :cond_3

    iget-object p3, p0, LMj/g;->k:LCi/d;

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p3

    invoke-virtual {p3}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object p3

    iput-object p3, p0, LMj/g;->p:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p3

    invoke-virtual {p3}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p3

    iput-object p3, p0, LMj/g;->q:Ljava/math/BigInteger;

    check-cast p2, Lck/f;

    iput-object p2, p0, LMj/g;->m:Lck/f;

    invoke-virtual {p2}, Lck/f;->d()[B

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/a;->c:[B

    iget-object p2, p0, LMj/g;->m:Lck/f;

    invoke-virtual {p2}, Lck/f;->b()Ljava/security/PublicKey;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, LMj/g;->k:LCi/d;

    new-instance p3, LXi/t;

    invoke-virtual {p0, p1}, LMj/g;->i(Ljava/security/PrivateKey;)LXi/r;

    move-result-object v0

    iget-object v1, p0, LMj/g;->m:Lck/f;

    invoke-virtual {v1}, Lck/f;->a()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-virtual {p0, v1}, LMj/g;->i(Ljava/security/PrivateKey;)LXi/r;

    move-result-object v1

    iget-object v2, p0, LMj/g;->m:Lck/f;

    invoke-virtual {v2}, Lck/f;->b()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {p0, v2}, LMj/g;->j(Ljava/security/PublicKey;)LXi/s;

    move-result-object v2

    invoke-direct {p3, v0, v1, v2}, LXi/t;-><init>(LXi/r;LXi/r;LXi/s;)V

    :goto_0
    invoke-virtual {p2, p3}, LCi/d;->c(LBi/k;)V

    goto/16 :goto_2

    :cond_1
    iget-object p2, p0, LMj/g;->k:LCi/d;

    new-instance p3, LXi/t;

    invoke-virtual {p0, p1}, LMj/g;->i(Ljava/security/PrivateKey;)LXi/r;

    move-result-object v0

    iget-object v1, p0, LMj/g;->m:Lck/f;

    invoke-virtual {v1}, Lck/f;->a()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-virtual {p0, v1}, LMj/g;->i(Ljava/security/PrivateKey;)LXi/r;

    move-result-object v1

    invoke-direct {p3, v0, v1}, LXi/t;-><init>(LXi/r;LXi/r;)V

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "agreement algorithm not DHU based"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    instance-of p3, p2, Lck/s;

    if-eqz p3, :cond_6

    iget-object p3, p0, LMj/g;->l:LBi/e;

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p3

    invoke-virtual {p3}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object p3

    iput-object p3, p0, LMj/g;->p:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p3

    invoke-virtual {p3}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p3

    iput-object p3, p0, LMj/g;->q:Ljava/math/BigInteger;

    check-cast p2, Lck/s;

    iput-object p2, p0, LMj/g;->n:Lck/s;

    invoke-virtual {p2}, Lck/s;->d()[B

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/a;->c:[B

    iget-object p2, p0, LMj/g;->n:Lck/s;

    invoke-virtual {p2}, Lck/s;->b()Ljava/security/PublicKey;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, LMj/g;->l:LBi/e;

    new-instance p3, LXi/o;

    invoke-virtual {p0, p1}, LMj/g;->i(Ljava/security/PrivateKey;)LXi/r;

    move-result-object v0

    iget-object v1, p0, LMj/g;->n:Lck/s;

    invoke-virtual {v1}, Lck/s;->a()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-virtual {p0, v1}, LMj/g;->i(Ljava/security/PrivateKey;)LXi/r;

    move-result-object v1

    iget-object v2, p0, LMj/g;->n:Lck/s;

    invoke-virtual {v2}, Lck/s;->b()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {p0, v2}, LMj/g;->j(Ljava/security/PublicKey;)LXi/s;

    move-result-object v2

    invoke-direct {p3, v0, v1, v2}, LXi/o;-><init>(LXi/r;LXi/r;LXi/s;)V

    :goto_1
    invoke-interface {p2, p3}, LBi/e;->a(LBi/k;)V

    goto :goto_2

    :cond_4
    iget-object p2, p0, LMj/g;->l:LBi/e;

    new-instance p3, LXi/o;

    invoke-virtual {p0, p1}, LMj/g;->i(Ljava/security/PrivateKey;)LXi/r;

    move-result-object v0

    iget-object v1, p0, LMj/g;->n:Lck/s;

    invoke-virtual {v1}, Lck/s;->a()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-virtual {p0, v1}, LMj/g;->i(Ljava/security/PrivateKey;)LXi/r;

    move-result-object v1

    invoke-direct {p3, v0, v1}, LXi/o;-><init>(LXi/r;LXi/r;)V

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "agreement algorithm not MQV based"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    instance-of p3, p2, Lck/D;

    if-eqz p3, :cond_8

    iget-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/a;->b:LBi/w;

    if-eqz p3, :cond_7

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p3

    invoke-virtual {p3}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object p3

    iput-object p3, p0, LMj/g;->p:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p3

    invoke-virtual {p3}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p3

    iput-object p3, p0, LMj/g;->q:Ljava/math/BigInteger;

    iput-object v0, p0, LMj/g;->m:Lck/f;

    check-cast p2, Lck/D;

    invoke-virtual {p2}, Lck/D;->b()[B

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/a;->c:[B

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "no KDF specified for UserKeyingMaterialSpec"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "DHKeyAgreement only accepts DHParameterSpec"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p2

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object p2

    iput-object p2, p0, LMj/g;->p:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p2

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p2

    iput-object p2, p0, LMj/g;->q:Ljava/math/BigInteger;

    :goto_2
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, LMj/g;->o:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, LMj/g;->h(Ljava/math/BigInteger;)[B

    move-result-object p1

    iput-object p1, p0, LMj/g;->r:[B

    return-void

    :cond_a
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "DHKeyAgreement requires DHPrivateKey for initialisation"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, LMj/g;->o:Ljava/math/BigInteger;

    if-eqz v0, :cond_9

    instance-of v0, p1, Ljavax/crypto/interfaces/DHPublicKey;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, LMj/g;->q:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, LMj/g;->p:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_6

    sget-object v2, LMj/g;->t:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_6

    iget-object v2, p0, LMj/g;->p:Ljava/math/BigInteger;

    sget-object v3, LMj/g;->s:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_6

    iget-object v2, p0, LMj/g;->k:LCi/d;

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    if-eqz p2, :cond_0

    check-cast p1, Ljava/security/PublicKey;

    invoke-virtual {p0, p1}, LMj/g;->j(Ljava/security/PublicKey;)LXi/s;

    move-result-object p1

    iget-object p2, p0, LMj/g;->m:Lck/f;

    invoke-virtual {p2}, Lck/f;->c()Ljava/security/PublicKey;

    move-result-object p2

    invoke-virtual {p0, p2}, LMj/g;->j(Ljava/security/PublicKey;)LXi/s;

    move-result-object p2

    new-instance v0, LXi/u;

    invoke-direct {v0, p1, p2}, LXi/u;-><init>(LXi/s;LXi/s;)V

    iget-object p1, p0, LMj/g;->k:LCi/d;

    invoke-virtual {p1, v0}, LCi/d;->a(LBi/k;)[B

    move-result-object p1

    iput-object p1, p0, LMj/g;->r:[B

    return-object v4

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unified Diffie-Hellman can use only two key pairs"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v2, p0, LMj/g;->l:LBi/e;

    if-eqz v2, :cond_3

    if-eqz p2, :cond_2

    check-cast p1, Ljava/security/PublicKey;

    invoke-virtual {p0, p1}, LMj/g;->j(Ljava/security/PublicKey;)LXi/s;

    move-result-object p1

    iget-object p2, p0, LMj/g;->n:Lck/s;

    invoke-virtual {p2}, Lck/s;->c()Ljava/security/PublicKey;

    move-result-object p2

    invoke-virtual {p0, p2}, LMj/g;->j(Ljava/security/PublicKey;)LXi/s;

    move-result-object p2

    new-instance v0, LXi/p;

    invoke-direct {v0, p1, p2}, LXi/p;-><init>(LXi/s;LXi/s;)V

    iget-object p1, p0, LMj/g;->l:LBi/e;

    invoke-interface {p1, v0}, LBi/e;->b(LBi/k;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, LMj/g;->h(Ljava/math/BigInteger;)[B

    move-result-object p1

    iput-object p1, p0, LMj/g;->r:[B

    return-object v4

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "MQV Diffie-Hellman can use only two key pairs"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-object p1, p0, LMj/g;->o:Ljava/math/BigInteger;

    iget-object v2, p0, LMj/g;->p:Ljava/math/BigInteger;

    invoke-virtual {v1, p1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, p1}, LMj/g;->h(Ljava/math/BigInteger;)[B

    move-result-object v1

    iput-object v1, p0, LMj/g;->r:[B

    if-eqz p2, :cond_4

    return-object v4

    :cond_4
    new-instance p2, LMj/d;

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-direct {p2, p1, v0}, LMj/d;-><init>(Ljava/math/BigInteger;Ljavax/crypto/spec/DHParameterSpec;)V

    return-object p2

    :cond_5
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "Shared key can\'t be 1"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "Invalid DH PublicKey"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "DHPublicKey not for this KeyAgreement!"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "DHKeyAgreement doPhase requires DHPublicKey"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Diffie-Hellman not initialised."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineGenerateSecret([BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, LMj/g;->o:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/a;->engineGenerateSecret([BI)I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Diffie-Hellman not initialised."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, LMj/g;->o:Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    const-string v0, "TlsPremasterSecret"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, LMj/g;->r:[B

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/a;->g([B)[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/a;->engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Diffie-Hellman not initialised."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineGenerateSecret()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, LMj/g;->o:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    invoke-super {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/a;->engineGenerateSecret()[B

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Diffie-Hellman not initialised."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of p2, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz p2, :cond_0

    check-cast p1, Ljavax/crypto/interfaces/DHPrivateKey;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p2

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object p2

    iput-object p2, p0, LMj/g;->p:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p2

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p2

    iput-object p2, p0, LMj/g;->q:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, LMj/g;->o:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, LMj/g;->h(Ljava/math/BigInteger;)[B

    move-result-object p1

    iput-object p1, p0, LMj/g;->r:[B

    return-void

    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "DHKeyAgreement requires DHPrivateKey"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(Ljava/math/BigInteger;)[B
    .locals 1

    iget-object v0, p0, LMj/g;->p:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0, p1}, Lorg/bouncycastle/util/b;->b(ILjava/math/BigInteger;)[B

    move-result-object p1

    return-object p1
.end method

.method public final i(Ljava/security/PrivateKey;)LXi/r;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz v0, :cond_1

    instance-of v0, p1, LMj/c;

    if-eqz v0, :cond_0

    check-cast p1, LMj/c;

    invoke-virtual {p1}, LMj/c;->b()LXi/r;

    move-result-object p1

    return-object p1

    :cond_0
    check-cast p1, Ljavax/crypto/interfaces/DHPrivateKey;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    new-instance v1, LXi/r;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object p1

    new-instance v2, LXi/q;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v0

    invoke-direct {v2, v3, v4, v5, v0}, LXi/q;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v1, p1, v2}, LXi/r;-><init>(Ljava/math/BigInteger;LXi/q;)V

    return-object v1

    :cond_1
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "private key not a DHPrivateKey"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j(Ljava/security/PublicKey;)LXi/s;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p1, Ljavax/crypto/interfaces/DHPublicKey;

    if-eqz v0, :cond_2

    instance-of v0, p1, LMj/d;

    if-eqz v0, :cond_0

    check-cast p1, LMj/d;

    invoke-virtual {p1}, LMj/d;->a()LXi/s;

    move-result-object p1

    return-object p1

    :cond_0
    check-cast p1, Ljavax/crypto/interfaces/DHPublicKey;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    instance-of v1, v0, Lck/c;

    if-eqz v1, :cond_1

    new-instance v1, LXi/s;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object p1

    check-cast v0, Lck/c;

    invoke-virtual {v0}, Lck/c;->a()LXi/q;

    move-result-object v0

    invoke-direct {v1, p1, v0}, LXi/s;-><init>(Ljava/math/BigInteger;LXi/q;)V

    return-object v1

    :cond_1
    new-instance v1, LXi/s;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object p1

    new-instance v2, LXi/q;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v0

    invoke-direct {v2, v3, v4, v5, v0}, LXi/q;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v1, p1, v2}, LXi/s;-><init>(Ljava/math/BigInteger;LXi/q;)V

    return-object v1

    :cond_2
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "public key not a DHPublicKey"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
