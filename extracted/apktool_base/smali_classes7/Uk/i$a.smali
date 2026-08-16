.class public LUk/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LUk/i;->e([C)LQk/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Ljavax/crypto/Cipher;

.field public b:Lhi/b;

.field public final synthetic c:[C

.field public final synthetic d:LUk/i;


# direct methods
.method public constructor <init>(LUk/i;[C)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LUk/i$a;->d:LUk/i;

    iput-object p2, p0, LUk/i$a;->c:[C

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(LUk/i$a;)Lhi/b;
    .locals 0

    iget-object p0, p0, LUk/i$a;->b:Lhi/b;

    return-object p0
.end method

.method public static synthetic c(LUk/i$a;)Ljavax/crypto/Cipher;
    .locals 0

    iget-object p0, p0, LUk/i$a;->a:Ljavax/crypto/Cipher;

    return-object p0
.end method


# virtual methods
.method public a(Lhi/b;)LQk/t;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object v0

    :try_start_0
    sget-object v1, LXh/t;->d4:Loh/x;

    invoke-virtual {v0, v1}, Loh/x;->O(Loh/x;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lhi/b;->x()Loh/g;

    move-result-object v1

    invoke-static {v1}, LXh/s;->v(Ljava/lang/Object;)LXh/s;

    move-result-object v1

    iget-object v3, p0, LUk/i$a;->d:LUk/i;

    invoke-static {v3}, LUk/i;->a(LUk/i;)Ldk/f;

    move-result-object v3

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ldk/f;->e(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, LUk/i$a;->a:Ljavax/crypto/Cipher;

    new-instance v3, LHj/m;

    iget-object v4, p0, LUk/i$a;->c:[C

    iget-object v5, p0, LUk/i$a;->d:LUk/i;

    invoke-static {v5}, LUk/i;->b(LUk/i;)Z

    move-result v5

    invoke-virtual {v1}, LXh/s;->u()[B

    move-result-object v6

    invoke-virtual {v1}, LXh/s;->x()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-direct {v3, v4, v5, v6, v1}, LHj/m;-><init>([CZ[BI)V

    invoke-virtual {v0, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    iput-object p1, p0, LUk/i$a;->b:Lhi/b;

    goto/16 :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    sget-object v1, LXh/t;->j1:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lhi/b;->x()Loh/g;

    move-result-object p1

    invoke-static {p1}, LXh/p;->v(Ljava/lang/Object;)LXh/p;

    move-result-object p1

    sget-object v0, LQh/c;->O:Loh/x;

    invoke-virtual {p1}, LXh/p;->x()LXh/m;

    move-result-object v1

    invoke-virtual {v1}, LXh/m;->u()Loh/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, LXh/p;->x()LXh/m;

    move-result-object v0

    invoke-virtual {v0}, LXh/m;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, LQh/f;->w(Ljava/lang/Object;)LQh/f;

    move-result-object v0

    invoke-virtual {p1}, LXh/p;->u()LXh/k;

    move-result-object v1

    invoke-static {v1}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v1

    iget-object v3, p0, LUk/i$a;->d:LUk/i;

    invoke-static {v3}, LUk/i;->a(LUk/i;)Ldk/f;

    move-result-object v3

    const-string v4, "SCRYPT"

    invoke-interface {v3, v4}, Ldk/f;->s(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    new-instance v11, Lck/z;

    iget-object v5, p0, LUk/i$a;->c:[C

    invoke-virtual {v0}, LQh/f;->z()[B

    move-result-object v6

    invoke-virtual {v0}, LQh/f;->v()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    invoke-virtual {v0}, LQh/f;->u()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    invoke-virtual {v0}, LQh/f;->y()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v9

    iget-object v0, p0, LUk/i$a;->d:LUk/i;

    invoke-static {v0}, LUk/i;->c(LUk/i;)LQk/I;

    move-result-object v0

    invoke-interface {v0, v1}, LQk/I;->a(Lhi/b;)I

    move-result v10

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lck/z;-><init>([C[BIIII)V

    invoke-virtual {v3, v11}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, LUk/i$a;->d:LUk/i;

    invoke-static {v0}, LUk/i;->a(LUk/i;)Ldk/f;

    move-result-object v0

    invoke-virtual {p1}, LXh/p;->x()LXh/m;

    move-result-object v1

    invoke-virtual {v1}, LXh/m;->u()Loh/x;

    move-result-object v1

    invoke-virtual {v1}, Loh/x;->J()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ldk/f;->s(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    invoke-virtual {p1}, LXh/p;->x()LXh/m;

    move-result-object v1

    invoke-virtual {v1}, LXh/m;->x()Loh/g;

    move-result-object v1

    invoke-static {v1}, LXh/q;->u(Ljava/lang/Object;)LXh/q;

    move-result-object v1

    invoke-virtual {p1}, LXh/p;->u()LXh/k;

    move-result-object v3

    invoke-static {v3}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v3

    invoke-virtual {v1}, LXh/q;->A()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v5, p0, LUk/i$a;->c:[C

    invoke-virtual {v1}, LXh/q;->z()[B

    move-result-object v6

    invoke-virtual {v1}, LXh/q;->v()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    iget-object v7, p0, LUk/i$a;->d:LUk/i;

    invoke-static {v7}, LUk/i;->c(LUk/i;)LQk/I;

    move-result-object v7

    invoke-interface {v7, v3}, LQk/I;->a(Lhi/b;)I

    move-result v3

    invoke-direct {v4, v5, v6, v1, v3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {v0, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v9, Lck/v;

    iget-object v4, p0, LUk/i$a;->c:[C

    invoke-virtual {v1}, LXh/q;->z()[B

    move-result-object v5

    invoke-virtual {v1}, LXh/q;->v()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    iget-object v7, p0, LUk/i$a;->d:LUk/i;

    invoke-static {v7}, LUk/i;->c(LUk/i;)LQk/I;

    move-result-object v7

    invoke-interface {v7, v3}, LQk/I;->a(Lhi/b;)I

    move-result v7

    invoke-virtual {v1}, LXh/q;->y()Lhi/b;

    move-result-object v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lck/v;-><init>([C[BIILhi/b;)V

    invoke-virtual {v0, v9}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    :goto_0
    iget-object v1, p0, LUk/i$a;->d:LUk/i;

    invoke-static {v1}, LUk/i;->a(LUk/i;)Ldk/f;

    move-result-object v1

    invoke-virtual {p1}, LXh/p;->u()LXh/k;

    move-result-object v3

    invoke-virtual {v3}, LXh/k;->u()Loh/x;

    move-result-object v3

    invoke-virtual {v3}, Loh/x;->J()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ldk/f;->e(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, LUk/i$a;->a:Ljavax/crypto/Cipher;

    invoke-virtual {p1}, LXh/p;->u()LXh/k;

    move-result-object v1

    invoke-static {v1}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v1

    iput-object v1, p0, LUk/i$a;->b:Lhi/b;

    invoke-virtual {p1}, LXh/p;->u()LXh/k;

    move-result-object v1

    invoke-virtual {v1}, LXh/k;->x()Loh/g;

    move-result-object v1

    instance-of v3, v1, Loh/y;

    if-eqz v3, :cond_3

    iget-object p1, p0, LUk/i$a;->a:Ljavax/crypto/Cipher;

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {v1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v1

    invoke-virtual {v1}, Loh/y;->H()[B

    move-result-object v1

    invoke-direct {v3, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p1, v2, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto/16 :goto_2

    :cond_3
    instance-of v3, v1, Loh/E;

    if-eqz v3, :cond_4

    iget-object v3, p0, LUk/i$a;->d:LUk/i;

    invoke-virtual {p1}, LXh/p;->u()LXh/k;

    move-result-object v4

    invoke-static {v3, v4}, LUk/i;->d(LUk/i;Loh/g;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, LXh/p;->u()LXh/k;

    move-result-object p1

    invoke-virtual {p1}, LXh/k;->u()Loh/x;

    move-result-object p1

    invoke-virtual {p1}, Loh/x;->J()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object p1

    check-cast v1, Loh/E;

    invoke-virtual {v1}, Loh/v;->getEncoded()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/AlgorithmParameters;->init([B)V

    iget-object v1, p0, LUk/i$a;->a:Ljavax/crypto/Cipher;

    invoke-virtual {v1, v2, v0, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    goto/16 :goto_2

    :cond_4
    if-nez v1, :cond_5

    iget-object p1, p0, LUk/i$a;->a:Ljavax/crypto/Cipher;

    invoke-virtual {p1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    goto/16 :goto_2

    :cond_5
    invoke-static {v1}, Lyh/d;->w(Ljava/lang/Object;)Lyh/d;

    move-result-object p1

    iget-object v1, p0, LUk/i$a;->a:Ljavax/crypto/Cipher;

    new-instance v3, Lck/j;

    invoke-virtual {p1}, Lyh/d;->u()Loh/x;

    move-result-object v4

    invoke-virtual {p1}, Lyh/d;->v()[B

    move-result-object p1

    invoke-direct {v3, v4, p1}, Lck/j;-><init>(Loh/x;[B)V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_2

    :cond_6
    sget-object v1, LXh/t;->d1:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, LXh/t;->f1:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_1

    :cond_7
    new-instance p1, Lorg/bouncycastle/operator/OperatorCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to create InputDecryptor: algorithm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " unknown."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_1
    invoke-virtual {p1}, Lhi/b;->x()Loh/g;

    move-result-object p1

    invoke-static {p1}, LXh/o;->u(Ljava/lang/Object;)LXh/o;

    move-result-object p1

    iget-object v1, p0, LUk/i$a;->d:LUk/i;

    invoke-static {v1}, LUk/i;->a(LUk/i;)Ldk/f;

    move-result-object v1

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ldk/f;->e(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, LUk/i$a;->a:Ljavax/crypto/Cipher;

    new-instance v1, LHj/g;

    iget-object v3, p0, LUk/i$a;->c:[C

    sget-object v4, LBi/M;->ASCII:LBi/M;

    invoke-direct {v1, v3, v4}, LHj/g;-><init>([CLBi/i;)V

    new-instance v3, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p1}, LXh/o;->x()[B

    move-result-object v4

    invoke-virtual {p1}, LXh/o;->v()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-direct {v3, v4, p1}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    invoke-virtual {v0, v2, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    new-instance p1, LUk/i$a$a;

    invoke-direct {p1, p0}, LUk/i$a$a;-><init>(LUk/i$a;)V

    return-object p1

    :goto_3
    new-instance v0, Lorg/bouncycastle/operator/OperatorCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to create InputDecryptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
