.class public LZj/l$a;
.super Lak/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public d:[B

.field public e:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lak/b;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, LZj/l$a;->d:[B

    const-string v0, "E-A"

    invoke-static {v0}, LLi/C;->m(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, LZj/l$a;->e:[B

    return-void
.end method


# virtual methods
.method public engineGenerateParameters()Ljava/security/AlgorithmParameters;
    .locals 4

    iget-object v0, p0, Lak/b;->b:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lak/b;->b:Ljava/security/SecureRandom;

    :cond_0
    iget-object v0, p0, Lak/b;->b:Ljava/security/SecureRandom;

    iget-object v1, p0, LZj/l$a;->d:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    :try_start_0
    const-string v0, "GOST28147"

    invoke-virtual {p0, v0}, Lak/b;->a(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    new-instance v1, Lck/j;

    iget-object v2, p0, LZj/l$a;->e:[B

    iget-object v3, p0, LZj/l$a;->d:[B

    invoke-direct {v1, v2, v3}, Lck/j;-><init>([B[B)V

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of p2, p1, Lck/j;

    if-eqz p2, :cond_0

    check-cast p1, Lck/j;

    invoke-virtual {p1}, Lck/j;->c()[B

    move-result-object p1

    iput-object p1, p0, LZj/l$a;->e:[B

    return-void

    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "parameter spec not supported"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
