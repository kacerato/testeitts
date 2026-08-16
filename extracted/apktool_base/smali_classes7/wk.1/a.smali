.class public Lwk/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/g;


# instance fields
.field public final b:LRh/b;


# direct methods
.method public constructor <init>(LRh/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwk/a;->b:LRh/b;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LRh/b;->u(Ljava/lang/Object;)LRh/b;

    move-result-object p1

    iput-object p1, p0, Lwk/a;->b:LRh/b;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lwk/a;->b:LRh/b;

    invoke-virtual {v0}, LRh/b;->v()LRh/a;

    move-result-object v0

    invoke-virtual {v0}, LRh/a;->u()Loh/z0;

    move-result-object v0

    invoke-virtual {v0}, Loh/q;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iget-object v0, p0, Lwk/a;->b:LRh/b;

    invoke-virtual {v0}, LRh/b;->v()LRh/a;

    move-result-object v0

    invoke-virtual {v0}, LRh/a;->x()Lhi/h0;

    move-result-object v0

    :try_start_0
    new-instance v1, Loh/r0;

    invoke-direct {v1, v0}, Loh/r0;-><init>(Loh/g;)V

    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v1}, Loh/c;->J()[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0}, Lhi/h0;->u()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "error encoding public key"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()LRh/a;
    .locals 1

    iget-object v0, p0, Lwk/a;->b:LRh/b;

    invoke-virtual {v0}, LRh/b;->v()LRh/a;

    move-result-object v0

    return-object v0
.end method

.method public d()Lhi/h0;
    .locals 1

    iget-object v0, p0, Lwk/a;->b:LRh/b;

    invoke-virtual {v0}, LRh/b;->v()LRh/a;

    move-result-object v0

    invoke-virtual {v0}, LRh/a;->x()Lhi/h0;

    move-result-object v0

    return-object v0
.end method

.method public e(LQk/h;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lwk/a;->b:LRh/b;

    invoke-virtual {v0}, LRh/b;->y()Lhi/b;

    move-result-object v0

    invoke-interface {p1, v0}, LQk/h;->a(Lhi/b;)LQk/g;

    move-result-object p1

    invoke-interface {p1}, LQk/g;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iget-object v1, p0, Lwk/a;->b:LRh/b;

    invoke-virtual {v1}, LRh/b;->v()LRh/a;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v1, v0, v2}, Loh/v;->f(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lwk/a;->b:LRh/b;

    invoke-virtual {v0}, LRh/b;->x()Loh/c;

    move-result-object v0

    invoke-virtual {v0}, Loh/c;->J()[B

    move-result-object v0

    invoke-interface {p1, v0}, LQk/g;->verify([B)Z

    move-result p1

    return p1
.end method

.method public f()Loh/B;
    .locals 1

    iget-object v0, p0, Lwk/a;->b:LRh/b;

    invoke-virtual {v0}, LRh/b;->r()Loh/B;

    move-result-object v0

    return-object v0
.end method

.method public g()LRh/b;
    .locals 1

    iget-object v0, p0, Lwk/a;->b:LRh/b;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lwk/a;->g()LRh/b;

    move-result-object v0

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lwk/a;->i(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public i(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iget-object v0, p0, Lwk/a;->b:LRh/b;

    invoke-virtual {v0}, LRh/b;->y()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1}, Lwk/a;->b(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    :try_start_0
    iget-object p1, p0, Lwk/a;->b:LRh/b;

    invoke-virtual {p1}, LRh/b;->v()LRh/a;

    move-result-object p1

    invoke-virtual {p1}, Loh/v;->getEncoded()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    iget-object p1, p0, Lwk/a;->b:LRh/b;

    invoke-virtual {p1}, LRh/b;->x()Loh/c;

    move-result-object p1

    invoke-virtual {p1}, Loh/c;->J()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "error encoding public key"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
