.class public LFj/h;
.super LDj/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LFj/h$a;
    }
.end annotation


# instance fields
.field public final b:Ldk/f;


# direct methods
.method public constructor <init>(LFk/T;Ldk/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LDj/o;-><init>(LFk/T;)V

    iput-object p2, p0, LFj/h;->b:Ldk/f;

    return-void
.end method

.method public constructor <init>(Ljava/security/PublicKey;Ldk/f;)V
    .locals 0

    .line 2
    check-cast p1, Ljava/security/interfaces/ECPublicKey;

    invoke-static {p1}, LFj/h;->b(Ljava/security/interfaces/ECPublicKey;)LFk/T;

    move-result-object p1

    invoke-direct {p0, p1}, LDj/o;-><init>(LFk/T;)V

    iput-object p2, p0, LFj/h;->b:Ldk/f;

    return-void
.end method

.method public static b(Ljava/security/interfaces/ECPublicKey;)LFk/T;
    .locals 3

    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object v0

    invoke-virtual {v0}, Lhi/h0;->u()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object v0

    sget-object v1, LZh/d;->H:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, LFk/T;

    invoke-static {}, LFk/L;->u()LFk/L$a;

    move-result-object v1

    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, LFk/L$a;->b(Ljava/math/BigInteger;)LFk/L$a;

    move-result-object v1

    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v1, p0}, LFk/L$a;->e(Ljava/math/BigInteger;)LFk/L$a;

    move-result-object p0

    invoke-virtual {p0}, LFk/L$a;->a()LFk/L;

    move-result-object p0

    invoke-static {p0}, LFk/k;->F(LFk/L;)LFk/k;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, LFk/T;-><init>(ILoh/g;)V

    return-object v0

    :cond_0
    sget-object v1, Lbi/b;->u:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, LFk/T;

    invoke-static {}, LFk/L;->u()LFk/L$a;

    move-result-object v1

    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, LFk/L$a;->b(Ljava/math/BigInteger;)LFk/L$a;

    move-result-object v1

    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v1, p0}, LFk/L$a;->e(Ljava/math/BigInteger;)LFk/L$a;

    move-result-object p0

    invoke-virtual {p0}, LFk/L$a;->a()LFk/L;

    move-result-object p0

    invoke-static {p0}, LFk/k;->F(LFk/L;)LFk/k;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, LFk/T;-><init>(ILoh/g;)V

    return-object v0

    :cond_1
    sget-object v1, Lbi/b;->y:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, LFk/T;

    invoke-static {}, LFk/M;->u()LFk/M$a;

    move-result-object v1

    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, LFk/M$a;->b(Ljava/math/BigInteger;)LFk/M$a;

    move-result-object v1

    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v1, p0}, LFk/M$a;->e(Ljava/math/BigInteger;)LFk/M$a;

    move-result-object p0

    invoke-virtual {p0}, LFk/M$a;->a()LFk/M;

    move-result-object p0

    invoke-static {p0}, LFk/l;->D(LFk/M;)LFk/l;

    move-result-object p0

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, LFk/T;-><init>(ILoh/g;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown curve in public encryption key"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public c()Ljava/security/PublicKey;
    .locals 5

    iget-object v0, p0, LDj/o;->a:LFk/T;

    invoke-virtual {v0}, LFk/T;->y()I

    move-result v0

    const-string v1, "unknown key type"

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    sget-object v0, Lbi/b;->y:Loh/x;

    :goto_0
    invoke-static {v0}, Lbi/a;->j(Loh/x;)Lki/l;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lbi/b;->u:Loh/x;

    goto :goto_0

    :cond_2
    sget-object v0, LZh/d;->H:Loh/x;

    invoke-static {v0}, LSh/c;->d(Loh/x;)Lki/l;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Lki/l;->v()Ljk/e;

    move-result-object v2

    iget-object v3, p0, LDj/o;->a:LFk/T;

    invoke-virtual {v3}, LFk/T;->A()Loh/g;

    move-result-object v3

    instance-of v3, v3, LFk/j;

    if-eqz v3, :cond_5

    iget-object v3, p0, LDj/o;->a:LFk/T;

    invoke-virtual {v3}, LFk/T;->A()Loh/g;

    move-result-object v3

    check-cast v3, LFk/j;

    instance-of v4, v3, LFk/k;

    if-eqz v4, :cond_3

    :goto_2
    invoke-virtual {v3}, LFk/j;->u()[B

    move-result-object v1

    goto :goto_3

    :cond_3
    instance-of v4, v3, LFk/l;

    if-eqz v4, :cond_4

    goto :goto_2

    :goto_3
    invoke-virtual {v2, v1}, Ljk/e;->l([B)Ljk/i;

    move-result-object v1

    invoke-virtual {v1}, Ljk/i;->B()Ljk/i;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, LFj/h;->b:Ldk/f;

    const-string v3, "EC"

    invoke-interface {v2, v3}, Ldk/f;->b(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    invoke-static {v0}, LFj/b;->d(Lki/l;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v1}, LFj/b;->c(Ljk/i;)Ljava/security/spec/ECPoint;

    move-result-object v1

    new-instance v3, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v3, v1, v0}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "extension to public verification key not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
