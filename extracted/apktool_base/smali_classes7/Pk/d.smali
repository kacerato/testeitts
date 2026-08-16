.class public LPk/d;
.super Lorg/bouncycastle/openssl/k;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;LQk/F;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/util/io/pem/PemGenerationException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, LXh/v;->v(Ljava/lang/Object;)LXh/v;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/openssl/k;-><init>(LXh/v;LQk/F;)V

    return-void
.end method
