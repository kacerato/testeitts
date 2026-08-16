.class public Lorg/bouncycastle/openssl/j;
.super Lgm/f;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 0

    invoke-direct {p0, p1}, Lgm/f;-><init>(Ljava/io/Writer;)V

    return-void
.end method


# virtual methods
.method public c(Lgm/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lgm/f;->c(Lgm/c;)V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/openssl/j;->g(Ljava/lang/Object;Lorg/bouncycastle/openssl/f;)V

    return-void
.end method

.method public g(Ljava/lang/Object;Lorg/bouncycastle/openssl/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, LPk/a;

    invoke-direct {v0, p1, p2}, LPk/a;-><init>(Ljava/lang/Object;Lorg/bouncycastle/openssl/f;)V

    invoke-super {p0, v0}, Lgm/f;->c(Lgm/c;)V
    :try_end_0
    .catch Lorg/bouncycastle/util/io/pem/PemGenerationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/bouncycastle/util/io/pem/PemGenerationException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/IOException;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/util/io/pem/PemGenerationException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    :cond_0
    throw p1
.end method
