.class public LOj/g;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/util/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOj/g$a;,
        LOj/g$b;,
        LOj/g$c;,
        LOj/g$d;,
        LOj/g$e;,
        LOj/g$f;,
        LOj/g$g;,
        LOj/g$h;,
        LOj/g$i;,
        LOj/g$j;,
        LOj/g$k;,
        LOj/g$l;,
        LOj/g$m;,
        LOj/g$n;,
        LOj/g$o;,
        LOj/g$p;,
        LOj/g$q;
    }
.end annotation


# instance fields
.field public k:LBi/N;

.field public l:Lck/f;

.field public m:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "org.bouncycastle.emulate.oracle"

    invoke-static {v0}, Lorg/bouncycastle/util/q;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "XDH"

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/a;-><init>(Ljava/lang/String;LBi/w;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LBi/w;)V
    .locals 1

    .line 2
    const-string v0, "org.bouncycastle.emulate.oracle"

    invoke-static {v0}, Lorg/bouncycastle/util/q;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "XDH"

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/a;-><init>(Ljava/lang/String;LBi/w;)V

    return-void
.end method


# virtual methods
.method public b()[B
    .locals 1

    iget-object v0, p0, LOj/g;->m:[B

    return-object v0
.end method

.method public c(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of p3, p1, Ljava/security/PrivateKey;

    if-eqz p3, :cond_8

    check-cast p1, Ljava/security/PrivateKey;

    invoke-static {p1}, LOj/e;->a(Ljava/security/PrivateKey;)LXi/c;

    move-result-object p1

    instance-of p3, p1, LXi/N0;

    if-eqz p3, :cond_0

    const-string p3, "X25519"

    :goto_0
    invoke-virtual {p0, p3}, LOj/g;->h(Ljava/lang/String;)LBi/N;

    move-result-object p3

    iput-object p3, p0, LOj/g;->k:LBi/N;

    goto :goto_1

    :cond_0
    instance-of p3, p1, LXi/Q0;

    if-eqz p3, :cond_7

    const-string p3, "X448"

    goto :goto_0

    :goto_1
    const/4 p3, 0x0

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/a;->c:[B

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/a;->d:[B

    instance-of p3, p2, Lck/f;

    if-eqz p3, :cond_2

    iget-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/a;->a:Ljava/lang/String;

    const/16 v0, 0x55

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p3

    if-ltz p3, :cond_1

    check-cast p2, Lck/f;

    iput-object p2, p0, LOj/g;->l:Lck/f;

    invoke-virtual {p2}, Lck/f;->d()[B

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/a;->c:[B

    iget-object p2, p0, LOj/g;->k:LBi/N;

    new-instance p3, LXi/S0;

    iget-object v0, p0, LOj/g;->l:Lck/f;

    invoke-virtual {v0}, Lck/f;->a()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, LOj/c;

    invoke-virtual {v0}, LOj/c;->b()LXi/c;

    move-result-object v0

    iget-object v1, p0, LOj/g;->l:Lck/f;

    invoke-virtual {v1}, Lck/f;->b()Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, LOj/d;

    invoke-virtual {v1}, LOj/d;->a()LXi/c;

    move-result-object v1

    invoke-direct {p3, p1, v0, v1}, LXi/S0;-><init>(LXi/c;LXi/c;LXi/c;)V

    invoke-interface {p2, p3}, LBi/N;->a(LBi/k;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "agreement algorithm not DHU based"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-eqz p2, :cond_5

    iget-object p3, p0, LOj/g;->k:LBi/N;

    invoke-interface {p3, p1}, LBi/N;->a(LBi/k;)V

    instance-of p1, p2, Lck/D;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/a;->b:LBi/w;

    if-eqz p1, :cond_3

    check-cast p2, Lck/D;

    invoke-virtual {p2}, Lck/D;->b()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/a;->c:[B

    invoke-virtual {p2}, Lck/D;->a()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/a;->d:[B

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "no KDF specified for UserKeyingMaterialSpec"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "unknown ParameterSpec"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iget-object p2, p0, LOj/g;->k:LBi/N;

    invoke-interface {p2, p1}, LBi/N;->a(LBi/k;)V

    :goto_2
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/a;->b:LBi/w;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/a;->c:[B

    if-nez p1, :cond_6

    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/a;->c:[B

    :cond_6
    return-void

    :cond_7
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "unsupported private key type"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "private XDH key required"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    instance-of v0, p1, Ljava/security/PublicKey;

    if-eqz v0, :cond_3

    iget-object v0, p0, LOj/g;->k:LBi/N;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    check-cast p1, Ljava/security/PublicKey;

    invoke-static {p1}, LOj/e;->b(Ljava/security/PublicKey;)LXi/c;

    move-result-object p1

    iget-object p2, p0, LOj/g;->k:LBi/N;

    invoke-interface {p2}, LBi/N;->c()I

    move-result p2

    new-array p2, p2, [B

    iput-object p2, p0, LOj/g;->m:[B

    iget-object v0, p0, LOj/g;->l:Lck/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p2, p0, LOj/g;->k:LBi/N;

    new-instance v2, LXi/T0;

    invoke-virtual {v0}, Lck/f;->c()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, LOj/d;

    invoke-virtual {v0}, LOj/d;->a()LXi/c;

    move-result-object v0

    invoke-direct {v2, p1, v0}, LXi/T0;-><init>(LXi/c;LXi/c;)V

    iget-object p1, p0, LOj/g;->m:[B

    invoke-interface {p2, v2, p1, v1}, LBi/N;->b(LBi/k;[BI)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LOj/g;->k:LBi/N;

    invoke-interface {v0, p1, p2, v1}, LBi/N;->b(LBi/k;[BI)V

    :goto_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/a;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " can only be between two parties."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/a;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not initialised."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "public XDH key required"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h(Ljava/lang/String;)LBi/N;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/a;->a:Ljava/lang/String;

    const-string v1, "XDH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inappropriate key for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/a;->a:Ljava/lang/String;

    const/16 v1, 0x55

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const-string v1, "X448"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-lez v0, :cond_3

    if-eqz p1, :cond_2

    new-instance p1, LCi/q;

    new-instance v0, LCi/o;

    invoke-direct {v0}, LCi/o;-><init>()V

    invoke-direct {p1, v0}, LCi/q;-><init>(LBi/N;)V

    return-object p1

    :cond_2
    new-instance p1, LCi/q;

    new-instance v0, LCi/n;

    invoke-direct {v0}, LCi/n;-><init>()V

    invoke-direct {p1, v0}, LCi/q;-><init>(LBi/N;)V

    return-object p1

    :cond_3
    if-eqz p1, :cond_4

    new-instance p1, LCi/o;

    invoke-direct {p1}, LCi/o;-><init>()V

    return-object p1

    :cond_4
    new-instance p1, LCi/n;

    invoke-direct {p1}, LCi/n;-><init>()V

    return-object p1
.end method
