.class public LPk/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LPk/f;->b([C)LQk/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[C

.field public final synthetic b:LPk/f;


# direct methods
.method public constructor <init>(LPk/f;[C)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LPk/f$a;->b:LPk/f;

    iput-object p2, p0, LPk/f$a;->a:[C

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhi/b;)LQk/t;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    const-string v0, " not available: "

    :try_start_0
    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object v1

    invoke-static {v1}, LPk/j;->m(Loh/x;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lhi/b;->x()Loh/g;

    move-result-object v1

    invoke-static {v1}, LXh/p;->v(Ljava/lang/Object;)LXh/p;

    move-result-object v1

    invoke-virtual {v1}, LXh/p;->x()LXh/m;

    move-result-object v3

    invoke-virtual {v1}, LXh/p;->u()LXh/k;

    move-result-object v1

    invoke-virtual {v3}, LXh/m;->x()Loh/g;

    move-result-object v3

    check-cast v3, LXh/q;

    invoke-virtual {v3}, LXh/q;->v()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v9

    invoke-virtual {v3}, LXh/q;->z()[B

    move-result-object v8

    invoke-virtual {v1}, LXh/k;->u()Loh/x;

    move-result-object v4

    invoke-virtual {v4}, Loh/x;->J()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, LXh/q;->y()Lhi/b;

    move-result-object v5

    invoke-static {v5}, LPk/j;->j(Lhi/b;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v3, p0, LPk/f$a;->b:LPk/f;

    invoke-static {v3}, LPk/f;->a(LPk/f;)Ldk/f;

    move-result-object v3

    iget-object v5, p0, LPk/f$a;->a:[C

    invoke-static {v3, v4, v5, v8, v9}, LPk/j;->b(Ldk/f;Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_3

    :catch_1
    move-exception v1

    goto/16 :goto_4

    :cond_0
    iget-object v5, p0, LPk/f$a;->b:LPk/f;

    invoke-static {v5}, LPk/f;->a(LPk/f;)Ldk/f;

    move-result-object v5

    iget-object v7, p0, LPk/f$a;->a:[C

    invoke-virtual {v3}, LXh/q;->y()Lhi/b;

    move-result-object v10

    move-object v6, v4

    invoke-static/range {v5 .. v10}, LPk/j;->c(Ldk/f;Ljava/lang/String;[C[BILhi/b;)Ljavax/crypto/SecretKey;

    move-result-object v3

    :goto_0
    iget-object v5, p0, LPk/f$a;->b:LPk/f;

    invoke-static {v5}, LPk/f;->a(LPk/f;)Ldk/f;

    move-result-object v5

    invoke-virtual {v1}, LXh/k;->u()Loh/x;

    move-result-object v6

    invoke-static {v6}, LPk/j;->e(Loh/x;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ldk/f;->e(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    iget-object v6, p0, LPk/f$a;->b:LPk/f;

    invoke-static {v6}, LPk/f;->a(LPk/f;)Ldk/f;

    move-result-object v6

    invoke-interface {v6, v4}, Ldk/f;->l(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v4

    invoke-virtual {v1}, LXh/k;->x()Loh/g;

    move-result-object v1

    invoke-interface {v1}, Loh/g;->r()Loh/B;

    move-result-object v1

    invoke-virtual {v1}, Loh/v;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/security/AlgorithmParameters;->init([B)V

    invoke-virtual {v5, v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object v1

    invoke-static {v1}, LPk/j;->k(Loh/x;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lhi/b;->x()Loh/g;

    move-result-object v1

    invoke-static {v1}, LXh/s;->v(Ljava/lang/Object;)LXh/s;

    move-result-object v1

    iget-object v3, p0, LPk/f$a;->b:LPk/f;

    invoke-static {v3}, LPk/f;->a(LPk/f;)Ldk/f;

    move-result-object v3

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object v4

    invoke-static {v4}, LPk/j;->e(Loh/x;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ldk/f;->e(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    new-instance v3, LHj/m;

    iget-object v4, p0, LPk/f$a;->a:[C

    invoke-virtual {v1}, LXh/s;->u()[B

    move-result-object v6

    invoke-virtual {v1}, LXh/s;->x()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-direct {v3, v4, v6, v1}, LHj/m;-><init>([C[BI)V

    :goto_1
    invoke-virtual {v5, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object v1

    invoke-static {v1}, LPk/j;->l(Loh/x;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lhi/b;->x()Loh/g;

    move-result-object v1

    invoke-static {v1}, LXh/o;->u(Ljava/lang/Object;)LXh/o;

    move-result-object v1

    iget-object v3, p0, LPk/f$a;->b:LPk/f;

    invoke-static {v3}, LPk/f;->a(LPk/f;)Ldk/f;

    move-result-object v3

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object v4

    invoke-static {v4}, LPk/j;->e(Loh/x;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ldk/f;->e(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    new-instance v3, LHj/h;

    iget-object v4, p0, LPk/f$a;->a:[C

    new-instance v6, LPk/f$a$a;

    invoke-direct {v6, p0}, LPk/f$a$a;-><init>(LPk/f$a;)V

    invoke-virtual {v1}, LXh/o;->x()[B

    move-result-object v7

    invoke-virtual {v1}, LXh/o;->v()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-direct {v3, v4, v6, v7, v1}, LHj/h;-><init>([CLBi/i;[BI)V

    goto :goto_1

    :goto_2
    new-instance v1, LPk/f$a$b;

    invoke-direct {v1, p0, p1, v5}, LPk/f$a$b;-><init>(LPk/f$a;Lhi/b;Ljavax/crypto/Cipher;)V

    return-object v1

    :cond_3
    new-instance v1, Lorg/bouncycastle/openssl/PEMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    new-instance v2, Lorg/bouncycastle/operator/OperatorCreationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :goto_4
    new-instance v2, Lorg/bouncycastle/operator/OperatorCreationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
