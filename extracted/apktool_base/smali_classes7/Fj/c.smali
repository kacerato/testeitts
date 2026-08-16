.class public LFj/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LGj/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LFj/c$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/security/PrivateKey;

.field public final b:Ldk/f;

.field public final c:[B

.field public d:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;[BLdk/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LFj/c;->d:Ljavax/crypto/SecretKey;

    iput-object p1, p0, LFj/c;->a:Ljava/security/PrivateKey;

    iput-object p3, p0, LFj/c;->b:Ldk/f;

    iput-object p2, p0, LFj/c;->c:[B

    return-void
.end method

.method public static b(Ljava/security/PrivateKey;[B)LFj/c$a;
    .locals 1

    new-instance v0, LFj/c$a;

    invoke-direct {v0, p0, p1}, LFj/c$a;-><init>(Ljava/security/PrivateKey;[B)V

    return-object v0
.end method


# virtual methods
.method public a([B[B[B)[B
    .locals 4

    :try_start_0
    iget-object v0, p0, LFj/c;->b:Ldk/f;

    const-string v1, "ETSIKEMwithSHA256"

    invoke-interface {v0, v1}, Ldk/f;->e(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iget-object v1, p0, LFj/c;->a:Ljava/security/PrivateKey;

    new-instance v2, Lck/n;

    iget-object v3, p0, LFj/c;->c:[B

    invoke-direct {v2, v3}, Lck/n;-><init>([B)V

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const-string v1, "AES"

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v1, v2}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object p1

    check-cast p1, Ljavax/crypto/SecretKey;

    iput-object p1, p0, LFj/c;->d:Ljavax/crypto/SecretKey;

    iget-object p1, p0, LFj/c;->b:Ldk/f;

    const-string v0, "CCM"

    invoke-interface {p1, v0}, Ldk/f;->e(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    iget-object v0, p0, LFj/c;->d:Ljavax/crypto/SecretKey;

    const/16 v1, 0x80

    invoke-static {p3, v1}, LFj/a;->a([BI)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p3

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getKey()[B
    .locals 2

    iget-object v0, p0, LFj/c;->d:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no secret key recovered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
