.class public LFj/k;
.super LDj/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LFj/k$a;
    }
.end annotation


# instance fields
.field public final b:Ldk/f;


# direct methods
.method public constructor <init>(LFk/S;Ldk/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LDj/n;-><init>(LFk/S;)V

    iput-object p2, p0, LFj/k;->b:Ldk/f;

    return-void
.end method

.method public constructor <init>(Ljava/security/PublicKey;Ldk/f;)V
    .locals 0

    .line 2
    invoke-static {p1}, LFj/k;->b(Ljava/security/PublicKey;)LFk/S;

    move-result-object p1

    invoke-direct {p0, p1}, LDj/n;-><init>(LFk/S;)V

    iput-object p2, p0, LFj/k;->b:Ldk/f;

    return-void
.end method

.method public static b(Ljava/security/PublicKey;)LFk/S;
    .locals 4

    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object p0

    invoke-virtual {p0}, Lhi/h0;->u()Lhi/b;

    move-result-object p0

    invoke-virtual {p0}, Lhi/b;->x()Loh/g;

    move-result-object p0

    invoke-static {p0}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object p0

    sget-object v1, LZh/d;->H:Loh/x;

    invoke-virtual {p0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, LFk/S;

    sget-object v1, LFk/m0;->f:LFk/m0;

    new-instance v2, LFk/a$a;

    invoke-direct {v2}, LFk/a$a;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, LFk/a$a;->b(I)LFk/a$a;

    move-result-object v2

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v3, v0}, LFk/k;->G(Ljava/math/BigInteger;Ljava/math/BigInteger;)LFk/k;

    move-result-object v0

    invoke-virtual {v2, v0}, LFk/a$a;->c(LFk/j;)LFk/a$a;

    move-result-object v0

    invoke-virtual {v0}, LFk/a$a;->a()LFk/a;

    move-result-object v0

    invoke-direct {p0, v1, v0}, LFk/S;-><init>(LFk/m0;LFk/a;)V

    return-object p0

    :cond_0
    sget-object v1, Lbi/b;->u:Loh/x;

    invoke-virtual {p0, v1}, Loh/B;->A(Loh/B;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, LFk/S;

    sget-object v1, LFk/m0;->f:LFk/m0;

    new-instance v2, LFk/a$a;

    invoke-direct {v2}, LFk/a$a;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, LFk/a$a;->b(I)LFk/a$a;

    move-result-object v2

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v3, v0}, LFk/k;->G(Ljava/math/BigInteger;Ljava/math/BigInteger;)LFk/k;

    move-result-object v0

    invoke-virtual {v2, v0}, LFk/a$a;->c(LFk/j;)LFk/a$a;

    move-result-object v0

    invoke-virtual {v0}, LFk/a$a;->a()LFk/a;

    move-result-object v0

    invoke-direct {p0, v1, v0}, LFk/S;-><init>(LFk/m0;LFk/a;)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown curve in public encryption key"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "must be ECPublicKey instance"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public c()Ljava/security/PublicKey;
    .locals 5

    iget-object v0, p0, LDj/n;->a:LFk/S;

    invoke-virtual {v0}, LFk/S;->x()LFk/a;

    move-result-object v0

    invoke-virtual {v0}, LFk/a;->y()I

    move-result v1

    const-string v2, "unknown key type"

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    sget-object v1, Lbi/b;->u:Loh/x;

    invoke-static {v1}, Lbi/a;->j(Loh/x;)Lki/l;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v1, LZh/d;->H:Loh/x;

    invoke-static {v1}, LSh/c;->d(Loh/x;)Lki/l;

    move-result-object v1

    :goto_0
    iget-object v3, p0, LDj/n;->a:LFk/S;

    invoke-virtual {v3}, LFk/S;->x()LFk/a;

    move-result-object v3

    invoke-virtual {v3}, LFk/a;->x()Loh/g;

    move-result-object v3

    instance-of v3, v3, LFk/j;

    if-eqz v3, :cond_4

    invoke-virtual {v0}, LFk/a;->x()Loh/g;

    move-result-object v0

    check-cast v0, LFk/j;

    invoke-virtual {v1}, Lki/l;->v()Ljk/e;

    move-result-object v3

    instance-of v4, v0, LFk/k;

    if-eqz v4, :cond_2

    :goto_1
    invoke-virtual {v0}, LFk/j;->u()[B

    move-result-object v0

    goto :goto_2

    :cond_2
    instance-of v4, v0, LFk/l;

    if-eqz v4, :cond_3

    goto :goto_1

    :goto_2
    invoke-virtual {v3, v0}, Ljk/e;->l([B)Ljk/i;

    move-result-object v0

    invoke-virtual {v0}, Ljk/i;->B()Ljk/i;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, LFj/k;->b:Ldk/f;

    const-string v3, "EC"

    invoke-interface {v2, v3}, Ldk/f;->b(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    invoke-static {v1}, LFj/b;->d(Lki/l;)Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-static {v0}, LFj/b;->c(Ljk/i;)Ljava/security/spec/ECPoint;

    move-result-object v0

    new-instance v3, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v3, v0, v1}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

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

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "extension to public verification key not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
