.class public LQj/f;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/util/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhi/h0;)Ljava/security/PublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lhi/h0;->u()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    sget-object v1, Lyh/a;->l:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, LQj/d;

    invoke-direct {v0, p1}, LQj/d;-><init>(Lhi/h0;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "algorithm identifier "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " in key not recognised"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(LXh/v;)Ljava/security/PrivateKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, LXh/v;->y()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    sget-object v1, Lyh/a;->l:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, LQj/c;

    invoke-direct {v0, p1}, LQj/c;-><init>(LXh/v;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "algorithm identifier "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " in key not recognised"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    instance-of v0, p1, Lhk/o;

    if-eqz v0, :cond_0

    new-instance v0, LQj/c;

    check-cast p1, Lhk/o;

    invoke-direct {v0, p1}, LQj/c;-><init>(Lhk/o;)V

    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/c;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    instance-of v0, p1, Lhk/q;

    if-eqz v0, :cond_0

    new-instance v0, LQj/d;

    check-cast p1, Lhk/q;

    invoke-direct {v0, p1}, LQj/d;-><init>(Lhk/q;)V

    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/c;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    return-object p1
.end method

.method public engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    const-class v0, Lhk/q;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lfk/l;

    if-eqz v0, :cond_0

    check-cast p1, Lfk/l;

    invoke-interface {p1}, Lfk/i;->getParameters()Lfk/j;

    move-result-object p2

    invoke-interface {p2}, Lfk/j;->a()Lhk/p;

    move-result-object p2

    new-instance v0, Lhk/q;

    invoke-interface {p1}, Lfk/l;->getY()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2}, Lhk/p;->b()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2}, Lhk/p;->c()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2}, Lhk/p;->a()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {v0, p1, v1, v2, p2}, Lhk/q;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    :cond_0
    const-class v0, Lhk/o;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lfk/k;

    if-eqz v0, :cond_1

    check-cast p1, Lfk/k;

    invoke-interface {p1}, Lfk/i;->getParameters()Lfk/j;

    move-result-object p2

    invoke-interface {p2}, Lfk/j;->a()Lhk/p;

    move-result-object p2

    new-instance v0, Lhk/o;

    invoke-interface {p1}, Lfk/k;->getX()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2}, Lhk/p;->b()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2}, Lhk/p;->c()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2}, Lhk/p;->a()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {v0, p1, v1, v2, p2}, Lhk/o;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/c;->engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object p1

    return-object p1
.end method

.method public engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p1, Lfk/l;

    if-eqz v0, :cond_0

    new-instance v0, LQj/d;

    check-cast p1, Lfk/l;

    invoke-direct {v0, p1}, LQj/d;-><init>(Lfk/l;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Lfk/k;

    if-eqz v0, :cond_1

    new-instance v0, LQj/c;

    check-cast p1, Lfk/k;

    invoke-direct {v0, p1}, LQj/c;-><init>(Lfk/k;)V

    return-object v0

    :cond_1
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "key type unknown"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
