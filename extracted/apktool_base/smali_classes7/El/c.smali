.class public LEl/c;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/util/a;
.source "SourceFile"


# instance fields
.field public k:Lhl/c;

.field public l:LEl/b;

.field public m:Lhl/d;

.field public n:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "NH"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/a;-><init>(Ljava/lang/String;LBi/w;)V

    return-void
.end method


# virtual methods
.method public b()[B
    .locals 1

    invoke-virtual {p0}, LEl/c;->engineGenerateSecret()[B

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "NewHope does not require parameters"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-eqz p2, :cond_1

    check-cast p1, LEl/b;

    iput-object p1, p0, LEl/c;->l:LEl/b;

    iget-object p2, p0, LEl/c;->m:Lhl/d;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, LEl/b;->a()LBi/k;

    move-result-object p1

    check-cast p1, LXi/c;

    invoke-virtual {p2, p1}, Lhl/d;->a(LXi/c;)LYk/c;

    move-result-object p1

    invoke-virtual {p1}, LYk/c;->b()[B

    move-result-object p2

    iput-object p2, p0, LEl/c;->n:[B

    new-instance p2, LEl/b;

    invoke-virtual {p1}, LYk/c;->a()LXi/c;

    move-result-object p1

    check-cast p1, Lhl/h;

    invoke-direct {p2, p1}, LEl/b;-><init>(Lhl/h;)V

    return-object p2

    :cond_0
    iget-object p2, p0, LEl/c;->k:Lhl/c;

    invoke-virtual {p1}, LEl/b;->a()LBi/k;

    move-result-object p1

    invoke-virtual {p2, p1}, Lhl/c;->a(LBi/k;)[B

    move-result-object p1

    iput-object p1, p0, LEl/c;->n:[B

    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "NewHope can only be between two parties."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineGenerateSecret([BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, LEl/c;->n:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, LEl/c;->n:[B

    invoke-static {p1, v2}, Lorg/bouncycastle/util/a;->e0([BB)V

    iget-object p1, p0, LEl/c;->n:[B

    array-length p1, p1

    return p1
.end method

.method public engineGenerateSecret()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, LEl/c;->n:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    iget-object v1, p0, LEl/c;->n:[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/bouncycastle/util/a;->e0([BB)V

    return-object v0
.end method

.method public engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance p2, Lhl/c;

    invoke-direct {p2}, Lhl/c;-><init>()V

    iput-object p2, p0, LEl/c;->k:Lhl/c;

    check-cast p1, LEl/a;

    invoke-virtual {p1}, LEl/a;->a()LBi/k;

    move-result-object p1

    invoke-virtual {p2, p1}, Lhl/c;->b(LBi/k;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lhl/d;

    invoke-direct {p1, p2}, Lhl/d;-><init>(Ljava/security/SecureRandom;)V

    iput-object p1, p0, LEl/c;->m:Lhl/d;

    :goto_0
    return-void
.end method
