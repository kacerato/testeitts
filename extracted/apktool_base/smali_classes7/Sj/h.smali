.class public LSj/h;
.super Ljava/security/SignatureSpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LSj/h$a;,
        LSj/h$b;,
        LSj/h$c;,
        LSj/h$d;,
        LSj/h$e;,
        LSj/h$f;,
        LSj/h$g;,
        LSj/h$h;,
        LSj/h$i;,
        LSj/h$j;
    }
.end annotation


# instance fields
.field public a:Lbj/s;


# direct methods
.method public constructor <init>(LBi/y;LBi/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    new-instance v0, Lbj/s;

    const/4 v1, 0x1

    invoke-direct {v0, p2, p1, v1}, Lbj/s;-><init>(LBi/b;LBi/y;Z)V

    iput-object v0, p0, LSj/h;->a:Lbj/s;

    return-void
.end method


# virtual methods
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

    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    invoke-static {p1}, LSj/l;->c(Ljava/security/interfaces/RSAPrivateKey;)LXi/F0;

    move-result-object p1

    iget-object v0, p0, LSj/h;->a:Lbj/s;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lbj/s;->a(ZLBi/k;)V

    return-void
.end method

.method public engineInitVerify(Ljava/security/PublicKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    invoke-static {p1}, LSj/l;->d(Ljava/security/interfaces/RSAPublicKey;)LXi/F0;

    move-result-object p1

    iget-object v0, p0, LSj/h;->a:Lbj/s;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lbj/s;->a(ZLBi/k;)V

    return-void
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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, LSj/h;->a:Lbj/s;

    invoke-virtual {v0}, Lbj/s;->c()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

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
    iget-object v0, p0, LSj/h;->a:Lbj/s;

    invoke-virtual {v0, p1}, Lbj/s;->update(B)V

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
    iget-object v0, p0, LSj/h;->a:Lbj/s;

    invoke-virtual {v0, p1, p2, p3}, Lbj/s;->update([BII)V

    return-void
.end method

.method public engineVerify([B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, LSj/h;->a:Lbj/s;

    invoke-virtual {v0, p1}, Lbj/s;->b([B)Z

    move-result p1

    return p1
.end method
