.class public LZj/i$m;
.super Lak/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, LOi/f;

    invoke-direct {v0}, LOi/f;-><init>()V

    const-string v1, "DES"

    const/16 v2, 0x40

    invoke-direct {p0, v1, v2, v0}, Lak/d;-><init>(Ljava/lang/String;ILBi/j;)V

    return-void
.end method


# virtual methods
.method public engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 4

    iget-boolean v0, p0, Lak/d;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lak/d;->d:LBi/j;

    new-instance v1, LBi/G;

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v2

    iget v3, p0, Lak/d;->c:I

    invoke-direct {v1, v2, v3}, LBi/G;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, LBi/j;->b(LBi/G;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lak/d;->e:Z

    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lak/d;->d:LBi/j;

    invoke-virtual {v1}, LBi/j;->a()[B

    move-result-object v1

    iget-object v2, p0, Lak/d;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public engineInit(ILjava/security/SecureRandom;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lak/d;->engineInit(ILjava/security/SecureRandom;)V

    return-void
.end method
