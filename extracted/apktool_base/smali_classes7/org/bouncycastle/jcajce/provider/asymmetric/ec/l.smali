.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/util/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l$i;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l$a;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l$b;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l$c;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l$d;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l$e;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l$f;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l$g;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l$h;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l$n;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l$j;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l$k;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l$l;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l$m;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l$o;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l$p;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l$q;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l$r;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l$s;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l$t;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l$u;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l$v;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l$A;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l$w;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l$x;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l$y;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l$z;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l$B;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l$C;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l$D;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l$E;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l$J;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l$F;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l$G;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l$H;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l$I;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l$K;
    }
.end annotation


# direct methods
.method public constructor <init>(LBi/y;LBi/t;Lbj/b;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/f;-><init>(LBi/y;LBi/t;Lbj/b;)V

    return-void
.end method


# virtual methods
.method public engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public engineInitSign(Ljava/security/PrivateKey;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/d;->a(Ljava/security/PrivateKey;)LXi/c;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/f;->b:LBi/y;

    invoke-interface {v0}, LBi/y;->reset()V

    iget-object v0, p0, Ljava/security/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/f;->c:LBi/t;

    new-instance v3, LXi/x0;

    invoke-direct {v3, p1, v0}, LXi/x0;-><init>(LBi/k;Ljava/security/SecureRandom;)V

    invoke-interface {v2, v1, v3}, LBi/s;->a(ZLBi/k;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/f;->c:LBi/t;

    invoke-interface {v0, v1, p1}, LBi/s;->a(ZLBi/k;)V

    :goto_0
    return-void
.end method

.method public engineInitVerify(Ljava/security/PublicKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/d;->b(Ljava/security/PublicKey;)LXi/c;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/f;->b:LBi/y;

    invoke-interface {v0}, LBi/y;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/f;->c:LBi/t;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, LBi/s;->a(ZLBi/k;)V

    return-void
.end method
