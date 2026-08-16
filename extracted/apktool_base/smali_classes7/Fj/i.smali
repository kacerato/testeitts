.class public LFj/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LGj/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LFj/i$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/security/SecureRandom;

.field public final b:Ldk/f;

.field public c:[B

.field public d:[B


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Ldk/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LFj/i;->a:Ljava/security/SecureRandom;

    iput-object p2, p0, LFj/i;->b:Ldk/f;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/security/SecureRandom;Ldk/f;LFj/i$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, LFj/i;-><init>(Ljava/security/SecureRandom;Ldk/f;)V

    return-void
.end method


# virtual methods
.method public a([B)[B
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, LFj/i;->d:[B

    iget-object v1, p0, LFj/i;->a:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 v0, 0xc

    new-array v0, v0, [B

    iput-object v0, p0, LFj/i;->c:[B

    iget-object v1, p0, LFj/i;->a:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, LFj/i;->d:[B

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iget-object v1, p0, LFj/i;->b:Ldk/f;

    const-string v2, "CCM"

    invoke-interface {v1, v2}, Ldk/f;->e(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iget-object v2, p0, LFj/i;->c:[B

    const/16 v3, 0x80

    invoke-static {v2, v3}, LFj/a;->a([BI)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, LFj/i;->c:[B

    return-object v0
.end method

.method public getKey()[B
    .locals 1

    iget-object v0, p0, LFj/i;->d:[B

    return-object v0
.end method
