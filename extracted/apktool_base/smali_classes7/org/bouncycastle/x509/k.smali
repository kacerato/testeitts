.class public Lorg/bouncycastle/x509/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/r;


# instance fields
.field public b:Lorg/bouncycastle/x509/a;

.field public c:Lorg/bouncycastle/x509/b;

.field public d:Ljava/math/BigInteger;

.field public e:Ljava/util/Date;

.field public f:Lorg/bouncycastle/x509/l;

.field public g:Ljava/util/Collection;

.field public h:Ljava/util/Collection;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/k;->g:Ljava/util/Collection;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/k;->h:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public Z2(Ljava/lang/Object;)Z
    .locals 8

    instance-of v0, p1, Lorg/bouncycastle/x509/l;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/x509/l;

    iget-object v0, p0, Lorg/bouncycastle/x509/k;->f:Lorg/bouncycastle/x509/l;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/x509/k;->d:Ljava/math/BigInteger;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/bouncycastle/x509/l;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/x509/k;->d:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/x509/k;->b:Lorg/bouncycastle/x509/a;

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lorg/bouncycastle/x509/l;->getHolder()Lorg/bouncycastle/x509/a;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/x509/k;->b:Lorg/bouncycastle/x509/a;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/x509/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/x509/k;->c:Lorg/bouncycastle/x509/b;

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lorg/bouncycastle/x509/l;->f()Lorg/bouncycastle/x509/b;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/x509/k;->c:Lorg/bouncycastle/x509/b;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/x509/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/x509/k;->e:Ljava/util/Date;

    if-eqz v0, :cond_5

    :try_start_0
    invoke-interface {p1, v0}, Lorg/bouncycastle/x509/l;->checkValidity(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v1

    :cond_5
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/x509/k;->g:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/bouncycastle/x509/k;->h:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_6
    sget-object v0, Lhi/B;->I:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_e

    :try_start_1
    new-instance v0, Loh/r;

    invoke-static {p1}, Loh/B;->B([B)Loh/B;

    move-result-object p1

    check-cast p1, Loh/C0;

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    invoke-direct {v0, p1}, Loh/r;-><init>([B)V

    invoke-virtual {v0}, Loh/r;->k()Loh/B;

    move-result-object p1

    invoke-static {p1}, Lhi/m0;->u(Ljava/lang/Object;)Lhi/m0;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {p1}, Lhi/m0;->v()[Lhi/n0;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/x509/k;->g:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    move v3, v0

    :goto_1
    array-length v4, p1

    if-ge v0, v4, :cond_9

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lhi/n0;->v()[Lhi/l0;

    move-result-object v4

    move v5, v1

    :goto_2
    array-length v6, v4

    if-ge v5, v6, :cond_8

    iget-object v6, p0, Lorg/bouncycastle/x509/k;->g:Ljava/util/Collection;

    aget-object v7, v4, v5

    invoke-virtual {v7}, Lhi/l0;->x()Lhi/E;

    move-result-object v7

    invoke-static {v7}, Lhi/E;->v(Ljava/lang/Object;)Lhi/E;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v3, v2

    goto :goto_3

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_9
    if-nez v3, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lorg/bouncycastle/x509/k;->h:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v1

    move v3, v0

    :goto_4
    array-length v4, p1

    if-ge v0, v4, :cond_d

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lhi/n0;->v()[Lhi/l0;

    move-result-object v4

    move v5, v1

    :goto_5
    array-length v6, v4

    if-ge v5, v6, :cond_c

    iget-object v6, p0, Lorg/bouncycastle/x509/k;->h:Ljava/util/Collection;

    aget-object v7, v4, v5

    invoke-virtual {v7}, Lhi/l0;->v()Lhi/E;

    move-result-object v7

    invoke-static {v7}, Lhi/E;->v(Ljava/lang/Object;)Lhi/E;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    move v3, v2

    goto :goto_6

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_c
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_d
    if-nez v3, :cond_e

    :catch_1
    return v1

    :cond_e
    return v2
.end method

.method public a(Lhi/E;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/k;->h:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Loh/B;->B([B)Loh/B;

    move-result-object p1

    invoke-static {p1}, Lhi/E;->v(Ljava/lang/Object;)Lhi/E;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/x509/k;->a(Lhi/E;)V

    return-void
.end method

.method public c(Lhi/E;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/k;->g:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/bouncycastle/x509/k;

    invoke-direct {v0}, Lorg/bouncycastle/x509/k;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/x509/k;->f:Lorg/bouncycastle/x509/l;

    iput-object v1, v0, Lorg/bouncycastle/x509/k;->f:Lorg/bouncycastle/x509/l;

    invoke-virtual {p0}, Lorg/bouncycastle/x509/k;->g()Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/x509/k;->e:Ljava/util/Date;

    iget-object v1, p0, Lorg/bouncycastle/x509/k;->b:Lorg/bouncycastle/x509/a;

    iput-object v1, v0, Lorg/bouncycastle/x509/k;->b:Lorg/bouncycastle/x509/a;

    iget-object v1, p0, Lorg/bouncycastle/x509/k;->c:Lorg/bouncycastle/x509/b;

    iput-object v1, v0, Lorg/bouncycastle/x509/k;->c:Lorg/bouncycastle/x509/b;

    iget-object v1, p0, Lorg/bouncycastle/x509/k;->d:Ljava/math/BigInteger;

    iput-object v1, v0, Lorg/bouncycastle/x509/k;->d:Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/bouncycastle/x509/k;->k()Ljava/util/Collection;

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/x509/k;->h:Ljava/util/Collection;

    invoke-virtual {p0}, Lorg/bouncycastle/x509/k;->l()Ljava/util/Collection;

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/x509/k;->g:Ljava/util/Collection;

    return-object v0
.end method

.method public d([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Loh/B;->B([B)Loh/B;

    move-result-object p1

    invoke-static {p1}, Lhi/E;->v(Ljava/lang/Object;)Lhi/E;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/x509/k;->c(Lhi/E;)V

    return-void
.end method

.method public final e(Ljava/util/Collection;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lhi/E;

    if-eqz v2, :cond_1

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    check-cast v1, [B

    invoke-static {v1}, Loh/B;->B([B)Loh/B;

    move-result-object v1

    invoke-static {v1}, Lhi/E;->v(Ljava/lang/Object;)Lhi/E;

    move-result-object v1

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    :goto_2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    return-object p1
.end method

.method public f()Lorg/bouncycastle/x509/l;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/k;->f:Lorg/bouncycastle/x509/l;

    return-object v0
.end method

.method public g()Ljava/util/Date;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/x509/k;->e:Ljava/util/Date;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lorg/bouncycastle/x509/k;->e:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Lorg/bouncycastle/x509/a;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/k;->b:Lorg/bouncycastle/x509/a;

    return-object v0
.end method

.method public i()Lorg/bouncycastle/x509/b;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/k;->c:Lorg/bouncycastle/x509/b;

    return-object v0
.end method

.method public j()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/k;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public k()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/k;->h:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/k;->g:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public m(Lorg/bouncycastle/x509/l;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/x509/k;->f:Lorg/bouncycastle/x509/l;

    return-void
.end method

.method public n(Ljava/util/Date;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/x509/k;->e:Ljava/util/Date;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/x509/k;->e:Ljava/util/Date;

    :goto_0
    return-void
.end method

.method public o(Lorg/bouncycastle/x509/a;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/x509/k;->b:Lorg/bouncycastle/x509/a;

    return-void
.end method

.method public p(Lorg/bouncycastle/x509/b;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/x509/k;->c:Lorg/bouncycastle/x509/b;

    return-void
.end method

.method public q(Ljava/math/BigInteger;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/x509/k;->d:Ljava/math/BigInteger;

    return-void
.end method

.method public r(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/bouncycastle/x509/k;->e(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/x509/k;->h:Ljava/util/Collection;

    return-void
.end method

.method public s(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/bouncycastle/x509/k;->e(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/x509/k;->g:Ljava/util/Collection;

    return-void
.end method
