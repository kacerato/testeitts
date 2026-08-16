.class public Lorg/bouncycastle/operator/jcajce/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Loh/x;Ljava/security/AlgorithmParameters;)Lhi/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p2}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    move-result-object p2

    invoke-static {p2}, Loh/B;->B([B)Loh/B;

    move-result-object p2

    new-instance v0, Lhi/b;

    invoke-direct {v0, p1, p2}, Lhi/b;-><init>(Loh/x;Loh/g;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to encode parameters object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public b(Loh/x;Ljava/security/spec/AlgorithmParameterSpec;)Lhi/b;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of v0, p2, Ljavax/crypto/spec/OAEPParameterSpec;

    if-eqz v0, :cond_4

    sget-object v0, Ljavax/crypto/spec/OAEPParameterSpec;->DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p2, Lhi/b;

    new-instance v0, LXh/x;

    sget-object v1, LXh/x;->e:Lhi/b;

    sget-object v2, LXh/x;->f:Lhi/b;

    sget-object v3, LXh/x;->g:Lhi/b;

    invoke-direct {v0, v1, v2, v3}, LXh/x;-><init>(Lhi/b;Lhi/b;Lhi/b;)V

    invoke-direct {p2, p1, v0}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    return-object p2

    :cond_0
    check-cast p2, Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {p2}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object v1

    invoke-virtual {p2}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, LQk/j;

    invoke-direct {v0}, LQk/j;-><init>()V

    invoke-virtual {p2}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, LQk/j;->a(Ljava/lang/String;)Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Lhi/b;

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    sget-object v3, Loh/A0;->c:Loh/A0;

    invoke-direct {v2, v0, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    move-object v0, v2

    :cond_1
    new-instance v2, LQk/j;

    invoke-direct {v2}, LQk/j;-><init>()V

    invoke-virtual {p2}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p2

    check-cast p2, Ljava/security/spec/MGF1ParameterSpec;

    invoke-virtual {p2}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, LQk/j;->a(Ljava/lang/String;)Lhi/b;

    move-result-object p2

    invoke-virtual {p2}, Lhi/b;->x()Loh/g;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Lhi/b;

    invoke-virtual {p2}, Lhi/b;->u()Loh/x;

    move-result-object p2

    sget-object v3, Loh/A0;->c:Loh/A0;

    invoke-direct {v2, p2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    move-object p2, v2

    :cond_2
    new-instance v2, Lhi/b;

    new-instance v3, LXh/x;

    new-instance v4, Lhi/b;

    sget-object v5, LXh/t;->O0:Loh/x;

    invoke-direct {v4, v5, p2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    new-instance p2, Lhi/b;

    sget-object v5, LXh/t;->P0:Loh/x;

    new-instance v6, Loh/C0;

    check-cast v1, Ljavax/crypto/spec/PSource$PSpecified;

    invoke-virtual {v1}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v1

    invoke-direct {v6, v1}, Loh/C0;-><init>([B)V

    invoke-direct {p2, v5, v6}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    invoke-direct {v3, v0, v4, p2}, LXh/x;-><init>(Lhi/b;Lhi/b;Lhi/b;)V

    invoke-direct {v2, p1, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    return-object v2

    :cond_3
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "only "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mask generator supported."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "unknown parameter spec passed."

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
