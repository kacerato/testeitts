.class public LUk/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lorg/bouncycastle/crypto/util/m;

.field public b:Ldk/f;

.field public c:Loh/x;

.field public d:Loh/x;

.field public e:Ljava/security/SecureRandom;

.field public f:LQk/I;

.field public g:LQk/b;

.field public h:I

.field public i:Lorg/bouncycastle/crypto/util/l$b;


# direct methods
.method public constructor <init>(Loh/x;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldk/d;

    invoke-direct {v0}, Ldk/d;-><init>()V

    iput-object v0, p0, LUk/j;->b:Ldk/f;

    sget-object v0, LQk/l;->a:LQk/I;

    iput-object v0, p0, LUk/j;->f:LQk/I;

    new-instance v0, LQk/i;

    invoke-direct {v0}, LQk/i;-><init>()V

    iput-object v0, p0, LUk/j;->g:LQk/b;

    const/16 v0, 0x400

    iput v0, p0, LUk/j;->h:I

    new-instance v0, Lorg/bouncycastle/crypto/util/l$b;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/util/l$b;-><init>()V

    iput-object v0, p0, LUk/j;->i:Lorg/bouncycastle/crypto/util/l$b;

    const/4 v0, 0x0

    iput-object v0, p0, LUk/j;->a:Lorg/bouncycastle/crypto/util/m;

    invoke-virtual {p0, p1}, LUk/j;->g(Loh/x;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LUk/j;->c:Loh/x;

    :goto_0
    iput-object p1, p0, LUk/j;->d:Loh/x;

    goto :goto_1

    :cond_0
    sget-object v0, LXh/t;->j1:Loh/x;

    iput-object v0, p0, LUk/j;->c:Loh/x;

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/util/m;Loh/x;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldk/d;

    invoke-direct {v0}, Ldk/d;-><init>()V

    iput-object v0, p0, LUk/j;->b:Ldk/f;

    sget-object v0, LQk/l;->a:LQk/I;

    iput-object v0, p0, LUk/j;->f:LQk/I;

    new-instance v0, LQk/i;

    invoke-direct {v0}, LQk/i;-><init>()V

    iput-object v0, p0, LUk/j;->g:LQk/b;

    const/16 v0, 0x400

    iput v0, p0, LUk/j;->h:I

    new-instance v0, Lorg/bouncycastle/crypto/util/l$b;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/util/l$b;-><init>()V

    iput-object v0, p0, LUk/j;->i:Lorg/bouncycastle/crypto/util/l$b;

    sget-object v0, LXh/t;->j1:Loh/x;

    iput-object v0, p0, LUk/j;->c:Loh/x;

    iput-object p1, p0, LUk/j;->a:Lorg/bouncycastle/crypto/util/m;

    iput-object p2, p0, LUk/j;->d:Loh/x;

    return-void
.end method

.method public static a([C)[B
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    array-length v1, p0

    if-lez v1, :cond_1

    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    :goto_0
    array-length v2, p0

    if-eq v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    aget-char v3, p0, v0

    ushr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    new-array p0, v0, [B

    return-object p0
.end method

.method public static b([C)[B
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    array-length v1, p0

    new-array v2, v1, [B

    :goto_0
    if-eq v0, v1, :cond_0

    aget-char v3, p0, v0

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    :cond_1
    new-array p0, v0, [B

    return-object p0
.end method

.method public static synthetic c(LUk/j;Loh/x;)Z
    .locals 0

    invoke-virtual {p0, p1}, LUk/j;->g(Loh/x;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d([C)[B
    .locals 0

    invoke-static {p0}, LUk/j;->a([C)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e([C)[B
    .locals 0

    invoke-static {p0}, LUk/j;->b([C)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public f([C)LQk/F;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    iget-object v0, p0, LUk/j;->e:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, LUk/j;->e:Ljava/security/SecureRandom;

    :cond_0
    :try_start_0
    iget-object v0, p0, LUk/j;->c:Loh/x;

    invoke-virtual {p0, v0}, LUk/j;->g(Loh/x;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/16 v0, 0x14

    new-array v0, v0, [B

    iget-object v2, p0, LUk/j;->e:Ljava/security/SecureRandom;

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v2, p0, LUk/j;->b:Ldk/f;

    iget-object v3, p0, LUk/j;->c:Loh/x;

    invoke-virtual {v3}, Loh/x;->J()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ldk/f;->e(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    new-instance v3, LHj/m;

    iget v4, p0, LUk/j;->h:I

    invoke-direct {v3, p1, v0, v4}, LHj/m;-><init>([C[BI)V

    invoke-virtual {v2, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    new-instance v1, Lhi/b;

    iget-object v3, p0, LUk/j;->c:Loh/x;

    new-instance v4, LXh/s;

    iget v5, p0, LUk/j;->h:I

    invoke-direct {v4, v0, v5}, LXh/s;-><init>([BI)V

    invoke-direct {v1, v3, v4}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    goto/16 :goto_3

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_1
    iget-object v0, p0, LUk/j;->c:Loh/x;

    sget-object v2, LXh/t;->j1:Loh/x;

    invoke-virtual {v0, v2}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, LUk/j;->a:Lorg/bouncycastle/crypto/util/m;

    if-nez v0, :cond_2

    iget-object v0, p0, LUk/j;->i:Lorg/bouncycastle/crypto/util/l$b;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/l$b;->d()Lorg/bouncycastle/crypto/util/l;

    move-result-object v0

    :cond_2
    sget-object v2, LQh/c;->O:Loh/x;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/m;->a()Loh/x;

    move-result-object v3

    invoke-virtual {v2, v3}, Loh/B;->A(Loh/B;)Z

    move-result v3

    if-eqz v3, :cond_4

    check-cast v0, Lorg/bouncycastle/crypto/util/v;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/v;->e()I

    move-result v3

    new-array v6, v3, [B

    iget-object v3, p0, LUk/j;->e:Ljava/security/SecureRandom;

    invoke-virtual {v3, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v3, LQh/f;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/v;->c()I

    move-result v4

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/v;->b()I

    move-result v5

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/v;->d()I

    move-result v7

    invoke-direct {v3, v6, v4, v5, v7}, LQh/f;-><init>([BIII)V

    iget-object v4, p0, LUk/j;->b:Ldk/f;

    const-string v5, "SCRYPT"

    invoke-interface {v4, v5}, Ldk/f;->s(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v11

    new-instance v12, Lck/z;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/v;->c()I

    move-result v7

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/v;->b()I

    move-result v8

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/v;->d()I

    move-result v9

    iget-object v0, p0, LUk/j;->f:LQk/I;

    new-instance v4, Lhi/b;

    iget-object v5, p0, LUk/j;->d:Loh/x;

    invoke-direct {v4, v5}, Lhi/b;-><init>(Loh/x;)V

    invoke-interface {v0, v4}, LQk/I;->a(Lhi/b;)I

    move-result v10

    move-object v4, v12

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lck/z;-><init>([C[BIIII)V

    invoke-virtual {v11, v12}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    iget-object v4, p0, LUk/j;->b:Ldk/f;

    iget-object v5, p0, LUk/j;->d:Loh/x;

    invoke-virtual {v5}, Loh/x;->J()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ldk/f;->e(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    invoke-virtual {p0, v0}, LUk/j;->n(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    move-result-object v0

    iget-object v5, p0, LUk/j;->e:Ljava/security/SecureRandom;

    invoke-virtual {v4, v1, v0, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    invoke-virtual {v4}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, LXh/p;

    new-instance v1, LXh/m;

    invoke-direct {v1, v2, v3}, LXh/m;-><init>(Loh/x;Loh/g;)V

    new-instance v2, LXh/k;

    iget-object v3, p0, LUk/j;->d:Loh/x;

    invoke-virtual {v4}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    move-result-object v5

    invoke-static {v5}, Loh/B;->B([B)Loh/B;

    move-result-object v5

    invoke-direct {v2, v3, v5}, LXh/k;-><init>(Loh/x;Loh/g;)V

    invoke-direct {v0, v1, v2}, LXh/p;-><init>(LXh/m;LXh/k;)V

    goto :goto_0

    :cond_3
    new-instance v0, LXh/p;

    new-instance v1, LXh/m;

    invoke-direct {v1, v2, v3}, LXh/m;-><init>(Loh/x;Loh/g;)V

    new-instance v2, LXh/k;

    iget-object v3, p0, LUk/j;->d:Loh/x;

    invoke-direct {v2, v3}, LXh/k;-><init>(Loh/x;)V

    invoke-direct {v0, v1, v2}, LXh/p;-><init>(LXh/m;LXh/k;)V

    :goto_0
    new-instance v1, Lhi/b;

    iget-object v2, p0, LUk/j;->c:Loh/x;

    invoke-direct {v1, v2, v0}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    :goto_1
    move-object v2, v4

    goto/16 :goto_3

    :cond_4
    check-cast v0, Lorg/bouncycastle/crypto/util/l;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/l;->d()I

    move-result v2

    new-array v2, v2, [B

    iget-object v3, p0, LUk/j;->e:Ljava/security/SecureRandom;

    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v3, p0, LUk/j;->b:Ldk/f;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/l;->c()Lhi/b;

    move-result-object v4

    invoke-virtual {v4}, Lhi/b;->u()Loh/x;

    move-result-object v4

    invoke-static {v4}, LUk/k;->a(Loh/x;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ldk/f;->s(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    new-instance v4, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/l;->b()I

    move-result v5

    iget-object v6, p0, LUk/j;->f:LQk/I;

    new-instance v7, Lhi/b;

    iget-object v8, p0, LUk/j;->d:Loh/x;

    invoke-direct {v7, v8}, Lhi/b;-><init>(Loh/x;)V

    invoke-interface {v6, v7}, LQk/I;->a(Lhi/b;)I

    move-result v6

    invoke-direct {v4, p1, v2, v5, v6}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {v3, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v3

    iget-object v4, p0, LUk/j;->b:Ldk/f;

    iget-object v5, p0, LUk/j;->d:Loh/x;

    invoke-virtual {v5}, Loh/x;->J()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ldk/f;->e(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    invoke-virtual {p0, v3}, LUk/j;->n(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    move-result-object v3

    iget-object v5, p0, LUk/j;->e:Ljava/security/SecureRandom;

    invoke-virtual {v4, v1, v3, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    invoke-virtual {v4}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, LXh/p;

    new-instance v3, LXh/m;

    sget-object v5, LXh/t;->h1:Loh/x;

    new-instance v6, LXh/q;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/l;->b()I

    move-result v7

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/l;->c()Lhi/b;

    move-result-object v0

    invoke-direct {v6, v2, v7, v0}, LXh/q;-><init>([BILhi/b;)V

    invoke-direct {v3, v5, v6}, LXh/m;-><init>(Loh/x;Loh/g;)V

    new-instance v0, LXh/k;

    iget-object v2, p0, LUk/j;->d:Loh/x;

    invoke-virtual {v4}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    move-result-object v5

    invoke-static {v5}, Loh/B;->B([B)Loh/B;

    move-result-object v5

    invoke-direct {v0, v2, v5}, LXh/k;-><init>(Loh/x;Loh/g;)V

    invoke-direct {v1, v3, v0}, LXh/p;-><init>(LXh/m;LXh/k;)V

    goto :goto_2

    :cond_5
    new-instance v1, LXh/p;

    new-instance v3, LXh/m;

    sget-object v5, LXh/t;->h1:Loh/x;

    new-instance v6, LXh/q;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/l;->b()I

    move-result v7

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/l;->c()Lhi/b;

    move-result-object v0

    invoke-direct {v6, v2, v7, v0}, LXh/q;-><init>([BILhi/b;)V

    invoke-direct {v3, v5, v6}, LXh/m;-><init>(Loh/x;Loh/g;)V

    new-instance v0, LXh/k;

    iget-object v2, p0, LUk/j;->d:Loh/x;

    invoke-direct {v0, v2}, LXh/k;-><init>(Loh/x;)V

    invoke-direct {v1, v3, v0}, LXh/p;-><init>(LXh/m;LXh/k;)V

    :goto_2
    new-instance v0, Lhi/b;

    iget-object v2, p0, LUk/j;->c:Loh/x;

    invoke-direct {v0, v2, v1}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    move-object v1, v0

    goto/16 :goto_1

    :goto_3
    new-instance v0, LUk/j$a;

    invoke-direct {v0, p0, v1, v2, p1}, LUk/j$a;-><init>(LUk/j;Lhi/b;Ljavax/crypto/Cipher;[C)V

    return-object v0

    :cond_6
    new-instance p1, Lorg/bouncycastle/operator/OperatorCreationException;

    const-string v0, "unrecognised algorithm"

    invoke-direct {p1, v0}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    new-instance v0, Lorg/bouncycastle/operator/OperatorCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to create OutputEncryptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final g(Loh/x;)Z
    .locals 1

    sget-object v0, LXh/t;->d4:Loh/x;

    invoke-virtual {p1, v0}, Loh/x;->O(Loh/x;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lqh/a;->i:Loh/x;

    invoke-virtual {p1, v0}, Loh/x;->O(Loh/x;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lqh/a;->k:Loh/x;

    invoke-virtual {p1, v0}, Loh/x;->O(Loh/x;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public h(I)LUk/j;
    .locals 1

    iget-object v0, p0, LUk/j;->a:Lorg/bouncycastle/crypto/util/m;

    if-nez v0, :cond_0

    iput p1, p0, LUk/j;->h:I

    iget-object v0, p0, LUk/j;->i:Lorg/bouncycastle/crypto/util/l$b;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/util/l$b;->e(I)Lorg/bouncycastle/crypto/util/l$b;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "set iteration count using PBKDFDef"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(LQk/I;)LUk/j;
    .locals 0

    iput-object p1, p0, LUk/j;->f:LQk/I;

    return-object p0
.end method

.method public j(Lhi/b;)LUk/j;
    .locals 1

    iget-object v0, p0, LUk/j;->a:Lorg/bouncycastle/crypto/util/m;

    if-nez v0, :cond_0

    iget-object v0, p0, LUk/j;->i:Lorg/bouncycastle/crypto/util/l$b;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/util/l$b;->f(Lhi/b;)Lorg/bouncycastle/crypto/util/l$b;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "set PRF count using PBKDFDef"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k(Ljava/lang/String;)LUk/j;
    .locals 1

    new-instance v0, Ldk/i;

    invoke-direct {v0, p1}, Ldk/i;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LUk/j;->b:Ldk/f;

    return-object p0
.end method

.method public l(Ljava/security/Provider;)LUk/j;
    .locals 1

    new-instance v0, Ldk/k;

    invoke-direct {v0, p1}, Ldk/k;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, LUk/j;->b:Ldk/f;

    return-object p0
.end method

.method public m(Ljava/security/SecureRandom;)LUk/j;
    .locals 0

    iput-object p1, p0, LUk/j;->e:Ljava/security/SecureRandom;

    return-object p0
.end method

.method public final n(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .locals 2

    iget-object v0, p0, LUk/j;->g:LQk/b;

    iget-object v1, p0, LUk/j;->d:Loh/x;

    invoke-interface {v0, v1}, LQk/b;->a(Loh/x;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LUk/j;->g:LQk/b;

    iget-object v1, p0, LUk/j;->d:Loh/x;

    invoke-interface {v0, v1}, LQk/b;->c(Loh/x;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object p1, v0

    :cond_0
    return-object p1
.end method
