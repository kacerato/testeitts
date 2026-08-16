.class public LNl/j;
.super Ljava/security/Signature;
.source "SourceFile"

# interfaces
.implements Lsl/F;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LNl/j$a;,
        LNl/j$b;,
        LNl/j$c;,
        LNl/j$d;,
        LNl/j$e;,
        LNl/j$f;,
        LNl/j$g;,
        LNl/j$h;,
        LNl/j$i;,
        LNl/j$j;,
        LNl/j$k;
    }
.end annotation


# instance fields
.field public b:LBi/y;

.field public c:Lql/D;

.field public d:Loh/x;

.field public e:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LBi/y;Lql/D;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, LNl/j;->b:LBi/y;

    iput-object p3, p0, LNl/j;->c:Lql/D;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    iget-object v0, p0, LNl/j;->d:Loh/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, LNl/j;->c:Lql/D;

    invoke-virtual {v0}, Lql/D;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Ljava/security/PrivateKey;
    .locals 3

    iget-object v0, p0, LNl/j;->d:Loh/x;

    if-eqz v0, :cond_0

    new-instance v1, LNl/a;

    iget-object v2, p0, LNl/j;->c:Lql/D;

    invoke-virtual {v2}, Lql/D;->c()LXi/c;

    move-result-object v2

    check-cast v2, Lql/A;

    invoke-direct {v1, v0, v2}, LNl/a;-><init>(Loh/x;Lql/A;)V

    const/4 v0, 0x0

    iput-object v0, p0, LNl/j;->d:Loh/x;

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "signature object not in a signing state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "engineSetParameter unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineInitSign(Ljava/security/PrivateKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, LNl/a;

    if-eqz v0, :cond_1

    check-cast p1, LNl/a;

    invoke-virtual {p1}, LNl/a;->c()LBi/k;

    move-result-object v0

    invoke-virtual {p1}, LNl/a;->d()Loh/x;

    move-result-object p1

    iput-object p1, p0, LNl/j;->d:Loh/x;

    iget-object p1, p0, LNl/j;->e:Ljava/security/SecureRandom;

    if-eqz p1, :cond_0

    new-instance v1, LXi/x0;

    invoke-direct {v1, v0, p1}, LXi/x0;-><init>(LBi/k;Ljava/security/SecureRandom;)V

    move-object v0, v1

    :cond_0
    iget-object p1, p0, LNl/j;->b:LBi/y;

    invoke-interface {p1}, LBi/y;->reset()V

    iget-object p1, p0, LNl/j;->c:Lql/D;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lql/D;->a(ZLBi/k;)V

    return-void

    :cond_1
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "unknown private key passed to XMSSMT"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 2
    iput-object p2, p0, LNl/j;->e:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1}, LNl/j;->engineInitSign(Ljava/security/PrivateKey;)V

    return-void
.end method

.method public engineInitVerify(Ljava/security/PublicKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p1, LNl/b;

    if-eqz v0, :cond_0

    check-cast p1, LNl/b;

    invoke-virtual {p1}, LNl/b;->c()LBi/k;

    move-result-object p1

    const/4 v0, 0x0

    iput-object v0, p0, LNl/j;->d:Loh/x;

    iget-object v0, p0, LNl/j;->b:LBi/y;

    invoke-interface {v0}, LBi/y;->reset()V

    iget-object v0, p0, LNl/j;->c:Lql/D;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lql/D;->a(ZLBi/k;)V

    return-void

    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "unknown public key passed to XMSSMT"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "engineSetParameter unsupported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "engineSetParameter unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineSign()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, LNl/j;->b:LBi/y;

    invoke-static {v0}, LNl/e;->c(LBi/y;)[B

    move-result-object v0

    :try_start_0
    iget-object v1, p0, LNl/j;->c:Lql/D;

    invoke-virtual {v1, v0}, Lql/D;->b([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    instance-of v1, v0, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/security/SignatureException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v1, Ljava/security/SignatureException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public engineUpdate(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, LNl/j;->b:LBi/y;

    invoke-interface {v0, p1}, LBi/y;->update(B)V

    return-void
.end method

.method public engineUpdate([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, LNl/j;->b:LBi/y;

    invoke-interface {v0, p1, p2, p3}, LBi/y;->update([BII)V

    return-void
.end method

.method public engineVerify([B)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, LNl/j;->b:LBi/y;

    invoke-static {v0}, LNl/e;->c(LBi/y;)[B

    move-result-object v0

    iget-object v1, p0, LNl/j;->c:Lql/D;

    invoke-virtual {v1, v0, p1}, Lql/D;->d([B[B)Z

    move-result p1

    return p1
.end method
