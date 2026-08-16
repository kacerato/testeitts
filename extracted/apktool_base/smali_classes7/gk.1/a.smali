.class public Lgk/a;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Lhi/b;

.field public c:Lhi/b;

.field public d:[B

.field public e:Ljava/lang/String;

.field public f:Loh/r0;

.field public g:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lhi/b;Ljava/security/PublicKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lgk/a;->e:Ljava/lang/String;

    iput-object p2, p0, Lgk/a;->b:Lhi/b;

    iput-object p3, p0, Lgk/a;->g:Ljava/security/PublicKey;

    new-instance p2, Loh/h;

    invoke-direct {p2}, Loh/h;-><init>()V

    invoke-virtual {p0}, Lgk/a;->x()Loh/B;

    move-result-object p3

    invoke-virtual {p2, p3}, Loh/h;->a(Loh/g;)V

    new-instance p3, Loh/z0;

    invoke-direct {p3, p1}, Loh/z0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Loh/h;->a(Loh/g;)V

    :try_start_0
    new-instance p1, Loh/r0;

    new-instance p3, Loh/G0;

    invoke-direct {p3, p2}, Loh/G0;-><init>(Loh/h;)V

    invoke-direct {p1, p3}, Loh/r0;-><init>(Loh/g;)V

    iput-object p1, p0, Lgk/a;->f:Loh/r0;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/security/spec/InvalidKeySpecException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception encoding key: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Loh/E;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v1

    iput-object v1, p0, Lgk/a;->b:Lhi/b;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    check-cast v2, Loh/r0;

    invoke-virtual {v2}, Loh/c;->J()[B

    move-result-object v2

    iput-object v2, p0, Lgk/a;->d:[B

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    check-cast p1, Loh/E;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/q;

    invoke-virtual {v0}, Loh/q;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgk/a;->e:Ljava/lang/String;

    new-instance v0, Loh/r0;

    invoke-direct {v0, p1}, Loh/r0;-><init>(Loh/g;)V

    iput-object v0, p0, Lgk/a;->f:Loh/r0;

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object p1

    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    const-string v1, "DER"

    invoke-virtual {p1, v1}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {p1}, Lhi/h0;->u()Lhi/b;

    move-result-object p1

    iput-object p1, p0, Lgk/a;->c:Lhi/b;

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object p1

    invoke-virtual {p1}, Loh/x;->J()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BC"

    invoke-static {p1, v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    iput-object p1, p0, Lgk/a;->g:Ljava/security/PublicKey;

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid PKAC (len): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid SPKAC (size):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lgk/a;->z([B)Loh/E;

    move-result-object p1

    invoke-direct {p0, p1}, Lgk/a;-><init>(Loh/E;)V

    return-void
.end method

.method public static z([B)Loh/E;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Loh/r;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Loh/r;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Loh/r;->k()Loh/B;

    move-result-object p0

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()Lhi/b;
    .locals 1

    iget-object v0, p0, Lgk/a;->b:Lhi/b;

    return-object v0
.end method

.method public B(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lgk/a;->e:Ljava/lang/String;

    return-void
.end method

.method public C(Lhi/b;)V
    .locals 0

    iput-object p1, p0, Lgk/a;->c:Lhi/b;

    return-void
.end method

.method public D(Ljava/security/PublicKey;)V
    .locals 0

    iput-object p1, p0, Lgk/a;->g:Ljava/security/PublicKey;

    return-void
.end method

.method public E(Lhi/b;)V
    .locals 0

    iput-object p1, p0, Lgk/a;->b:Lhi/b;

    return-void
.end method

.method public F(Ljava/security/PrivateKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lgk/a;->G(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public G(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    iget-object v0, p0, Lgk/a;->b:Lhi/b;

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BC"

    invoke-static {v0, v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    :goto_0
    new-instance p1, Loh/h;

    invoke-direct {p1}, Loh/h;-><init>()V

    invoke-virtual {p0}, Lgk/a;->x()Loh/B;

    move-result-object p2

    invoke-virtual {p1, p2}, Loh/h;->a(Loh/g;)V

    new-instance p2, Loh/z0;

    iget-object v1, p0, Lgk/a;->e:Ljava/lang/String;

    invoke-direct {p2, v1}, Loh/z0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Loh/h;->a(Loh/g;)V

    :try_start_0
    new-instance p2, Loh/G0;

    invoke-direct {p2, p1}, Loh/G0;-><init>(Loh/h;)V

    const-string p1, "DER"

    invoke-virtual {p2, p1}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object p1

    iput-object p1, p0, Lgk/a;->d:[B

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/security/SignatureException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public H(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    iget-object v0, p0, Lgk/a;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Lgk/a;->b:Lhi/b;

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object p1

    invoke-virtual {p1}, Loh/x;->J()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BC"

    invoke-static {p1, v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    iget-object v0, p0, Lgk/a;->g:Ljava/security/PublicKey;

    invoke-virtual {p1, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    iget-object v0, p0, Lgk/a;->f:Loh/r0;

    invoke-virtual {v0}, Loh/c;->J()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/Signature;->update([B)V

    iget-object v0, p0, Lgk/a;->d:[B

    invoke-virtual {p1, v0}, Ljava/security/Signature;->verify([B)Z

    move-result p1

    return p1
.end method

.method public r()Loh/B;
    .locals 4

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    new-instance v1, Loh/h;

    invoke-direct {v1}, Loh/h;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lgk/a;->x()Loh/B;

    move-result-object v2

    invoke-virtual {v1, v2}, Loh/h;->a(Loh/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v2, Loh/z0;

    iget-object v3, p0, Lgk/a;->e:Ljava/lang/String;

    invoke-direct {v2, v3}, Loh/z0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Loh/h;->a(Loh/g;)V

    new-instance v2, Loh/G0;

    invoke-direct {v2, v1}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lgk/a;->b:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/r0;

    iget-object v2, p0, Lgk/a;->d:[B

    invoke-direct {v1, v2}, Loh/r0;-><init>([B)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgk/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public v()Lhi/b;
    .locals 1

    iget-object v0, p0, Lgk/a;->c:Lhi/b;

    return-object v0
.end method

.method public final x()Loh/B;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    iget-object v1, p0, Lgk/a;->g:Ljava/security/PublicKey;

    invoke-interface {v1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    new-instance v1, Loh/r;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Loh/r;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Loh/r;->k()Loh/B;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public y()Ljava/security/PublicKey;
    .locals 1

    iget-object v0, p0, Lgk/a;->g:Ljava/security/PublicKey;

    return-object v0
.end method
