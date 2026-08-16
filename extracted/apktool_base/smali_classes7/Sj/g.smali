.class public LSj/g;
.super Ljava/security/SignatureSpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LSj/g$a;,
        LSj/g$b;,
        LSj/g$c;,
        LSj/g$d;,
        LSj/g$e;,
        LSj/g$f;,
        LSj/g$g;,
        LSj/g$h;,
        LSj/g$i;,
        LSj/g$j;,
        LSj/g$k;,
        LSj/g$l;,
        LSj/g$m;,
        LSj/g$n;,
        LSj/g$o;,
        LSj/g$p;,
        LSj/g$q;,
        LSj/g$r;
    }
.end annotation


# instance fields
.field public a:LBi/y;

.field public b:LBi/b;

.field public c:Lhi/b;


# direct methods
.method public constructor <init>(LBi/y;LBi/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    iput-object p1, p0, LSj/g;->a:LBi/y;

    iput-object p2, p0, LSj/g;->b:LBi/b;

    const/4 p1, 0x0

    iput-object p1, p0, LSj/g;->c:Lhi/b;

    return-void
.end method

.method public constructor <init>(Loh/x;LBi/y;LBi/b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    iput-object p2, p0, LSj/g;->a:LBi/y;

    iput-object p3, p0, LSj/g;->b:LBi/b;

    new-instance p2, Lhi/b;

    sget-object p3, Loh/A0;->c:Loh/A0;

    invoke-direct {p2, p1, p3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    iput-object p2, p0, LSj/g;->c:Lhi/b;

    return-void
.end method


# virtual methods
.method public final a([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LSj/g;->c:Lhi/b;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    new-instance v1, Lhi/w;

    invoke-direct {v1, v0, p1}, Lhi/w;-><init>(Lhi/b;[B)V

    const-string p1, "DER"

    invoke-virtual {v1, p1}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public engineInitSign(Ljava/security/PrivateKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    invoke-static {p1}, LSj/l;->c(Ljava/security/interfaces/RSAPrivateKey;)LXi/F0;

    move-result-object p1

    iget-object v0, p0, LSj/g;->a:LBi/y;

    invoke-interface {v0}, LBi/y;->reset()V

    iget-object v0, p0, LSj/g;->b:LBi/b;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, LBi/b;->a(ZLBi/k;)V

    return-void

    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supplied key ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, LSj/g;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is not a RSAPrivateKey instance"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineInitVerify(Ljava/security/PublicKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    invoke-static {p1}, LSj/l;->d(Ljava/security/interfaces/RSAPublicKey;)LXi/F0;

    move-result-object p1

    iget-object v0, p0, LSj/g;->a:LBi/y;

    invoke-interface {v0}, LBi/y;->reset()V

    iget-object v0, p0, LSj/g;->b:LBi/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, LBi/b;->a(ZLBi/k;)V

    return-void

    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supplied key ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, LSj/g;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is not a RSAPublicKey instance"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, LSj/g;->a:LBi/y;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, LSj/g;->a:LBi/y;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, LBi/y;->c([BI)I

    :try_start_0
    invoke-virtual {p0, v0}, LSj/g;->a([B)[B

    move-result-object v0

    iget-object v1, p0, LSj/g;->b:LBi/b;

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, LBi/b;->b([BII)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/SignatureException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "key too small for signature type"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineUpdate(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, LSj/g;->a:LBi/y;

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
    iget-object v0, p0, LSj/g;->a:LBi/y;

    invoke-interface {v0, p1, p2, p3}, LBi/y;->update([BII)V

    return-void
.end method

.method public engineVerify([B)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, LSj/g;->a:LBi/y;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, LSj/g;->a:LBi/y;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, LBi/y;->c([BI)I

    :try_start_0
    iget-object v1, p0, LSj/g;->b:LBi/b;

    array-length v3, p1

    invoke-interface {v1, p1, v2, v3}, LBi/b;->b([BII)[B

    move-result-object p1

    invoke-virtual {p0, v0}, LSj/g;->a([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    array-length v1, p1

    array-length v3, v0

    if-ne v1, v3, :cond_0

    invoke-static {p1, v0}, Lorg/bouncycastle/util/a;->I([B[B)Z

    move-result p1

    return p1

    :cond_0
    array-length v1, p1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x2

    if-ne v1, v3, :cond_4

    const/4 v1, 0x1

    aget-byte v3, v0, v1

    add-int/lit8 v3, v3, -0x2

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    const/4 v3, 0x3

    aget-byte v4, v0, v3

    add-int/lit8 v4, v4, -0x2

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v4, 0x4

    add-int/lit8 v4, v4, 0x6

    move v5, v2

    move v6, v5

    :goto_0
    array-length v7, v0

    sub-int/2addr v7, v4

    if-ge v5, v7, :cond_1

    add-int v7, v3, v5

    aget-byte v7, p1, v7

    add-int v8, v4, v5

    aget-byte v8, v0, v8

    xor-int/2addr v7, v8

    or-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_2

    aget-byte v5, p1, v4

    aget-byte v7, v0, v4

    xor-int/2addr v5, v7

    or-int/2addr v6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-nez v6, :cond_3

    move v2, v1

    :cond_3
    return v2

    :cond_4
    invoke-static {v0, v0}, Lorg/bouncycastle/util/a;->I([B[B)Z

    :catch_0
    return v2
.end method
