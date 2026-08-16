.class public LOj/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LIj/c;


# static fields
.field public static final g:J = 0x1L


# instance fields
.field public transient b:LXi/c;

.field public transient c:LXi/c;

.field public transient d:I

.field public final e:Z

.field public final f:[B


# direct methods
.method public constructor <init>(LXh/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, LXh/v;->D()Z

    move-result v0

    iput-boolean v0, p0, LOj/a;->e:Z

    invoke-virtual {p1}, LXh/v;->u()Loh/G;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LXh/v;->u()Loh/G;

    move-result-object v0

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, LOj/a;->f:[B

    invoke-virtual {p0, p1}, LOj/a;->d(LXh/v;)V

    return-void
.end method

.method public constructor <init>(LXi/c;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LOj/a;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, LOj/a;->f:[B

    iput-object p1, p0, LOj/a;->b:LXi/c;

    instance-of v0, p1, LXi/S;

    if-eqz v0, :cond_0

    check-cast p1, LXi/S;

    invoke-virtual {p1}, LXi/S;->e()LXi/T;

    move-result-object p1

    :goto_0
    iput-object p1, p0, LOj/a;->c:LXi/c;

    goto :goto_1

    :cond_0
    check-cast p1, LXi/O;

    invoke-virtual {p1}, LXi/O;->e()LXi/P;

    move-result-object p1

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, LOj/a;->a()I

    move-result p1

    iput p1, p0, LOj/a;->d:I

    return-void
.end method


# virtual methods
.method public A0()LIj/d;
    .locals 2

    new-instance v0, LOj/b;

    iget-object v1, p0, LOj/a;->c:LXi/c;

    invoke-direct {v0, v1}, LOj/b;-><init>(LXi/c;)V

    return-object v0
.end method

.method public final a()I
    .locals 2

    iget-object v0, p0, LOj/a;->c:LXi/c;

    instance-of v1, v0, LXi/T;

    if-eqz v1, :cond_0

    check-cast v0, LXi/T;

    invoke-virtual {v0}, LXi/T;->getEncoded()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    check-cast v0, LXi/P;

    invoke-virtual {v0}, LXi/P;->getEncoded()[B

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, LOj/a;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    invoke-static {v0}, Lorg/bouncycastle/util/a;->t0([B)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public b()LXi/c;
    .locals 1

    iget-object v0, p0, LOj/a;->b:LXi/c;

    return-object v0
.end method

.method public final c()LXh/v;
    .locals 4

    :try_start_0
    iget-object v0, p0, LOj/a;->f:[B

    invoke-static {v0}, Loh/G;->F(Ljava/lang/Object;)Loh/G;

    move-result-object v0

    iget-object v1, p0, LOj/a;->b:LXi/c;

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/util/p;->b(LXi/c;Loh/G;)LXh/v;

    move-result-object v1

    iget-boolean v2, p0, LOj/a;->e:Z

    if-eqz v2, :cond_0

    const-string v2, "org.bouncycastle.pkcs8.v1_info_only"

    invoke-static {v2}, Lorg/bouncycastle/util/q;->f(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    new-instance v2, LXh/v;

    invoke-virtual {v1}, LXh/v;->y()Lhi/b;

    move-result-object v3

    invoke-virtual {v1}, LXh/v;->E()Loh/g;

    move-result-object v1

    invoke-direct {v2, v3, v1, v0}, LXh/v;-><init>(Lhi/b;Loh/g;Loh/G;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d(LXh/v;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, LXh/v;->E()Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    sget-object v1, Lqj/a;->e:Loh/x;

    invoke-virtual {p1}, LXh/v;->y()Lhi/b;

    move-result-object p1

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object p1

    invoke-virtual {v1, p1}, Loh/B;->A(Loh/B;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, LXi/S;

    invoke-direct {p1, v0}, LXi/S;-><init>([B)V

    iput-object p1, p0, LOj/a;->b:LXi/c;

    invoke-virtual {p1}, LXi/S;->e()LXi/T;

    move-result-object p1

    :goto_0
    iput-object p1, p0, LOj/a;->c:LXi/c;

    goto :goto_1

    :cond_0
    new-instance p1, LXi/O;

    invoke-direct {p1, v0}, LXi/O;-><init>([B)V

    iput-object p1, p0, LOj/a;->b:LXi/c;

    invoke-virtual {p1}, LXi/O;->e()LXi/P;

    move-result-object p1

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, LOj/a;->a()I

    move-result p1

    iput p1, p0, LOj/a;->d:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Ljava/security/PrivateKey;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Ljava/security/PrivateKey;

    invoke-virtual {p0}, LOj/a;->c()LXh/v;

    move-result-object v0

    instance-of v2, p1, LOj/a;

    if-eqz v2, :cond_2

    check-cast p1, LOj/a;

    invoke-virtual {p1}, LOj/a;->c()LXh/v;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, LXh/v;->v(Ljava/lang/Object;)LXh/v;

    move-result-object p1

    :goto_0
    if-eqz v0, :cond_4

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    :try_start_0
    invoke-virtual {v0}, LXh/v;->y()Lhi/b;

    move-result-object v2

    invoke-virtual {v2}, Loh/v;->getEncoded()[B

    move-result-object v2

    invoke-virtual {p1}, LXh/v;->y()Lhi/b;

    move-result-object v3

    invoke-virtual {v3}, Loh/v;->getEncoded()[B

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bouncycastle/util/a;->I([B[B)Z

    move-result v2

    invoke-virtual {v0}, LXh/v;->x()Loh/y;

    move-result-object v0

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1}, LXh/v;->x()Loh/y;

    move-result-object p1

    invoke-virtual {p1}, Loh/v;->getEncoded()[B

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/util/a;->I([B[B)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr p1, v2

    return p1

    :catch_0
    :cond_4
    :goto_1
    return v1
.end method

.method public final g(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1}, LXh/v;->v(Ljava/lang/Object;)LXh/v;

    move-result-object p1

    invoke-virtual {p0, p1}, LOj/a;->d(LXh/v;)V

    return-void
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "org.bouncycastle.emulate.oracle"

    invoke-static {v0}, Lorg/bouncycastle/util/q;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EdDSA"

    return-object v0

    :cond_0
    iget-object v0, p0, LOj/a;->b:LXi/c;

    instance-of v0, v0, LXi/S;

    if-eqz v0, :cond_1

    const-string v0, "Ed448"

    goto :goto_0

    :cond_1
    const-string v0, "Ed25519"

    :goto_0
    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, LOj/a;->c()LXh/v;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Loh/v;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public final h(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, LOj/a;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, LOj/a;->d:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, LOj/a;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LOj/a;->c:LXi/c;

    const-string v2, "Private Key"

    invoke-static {v2, v0, v1}, LOj/k;->c(Ljava/lang/String;Ljava/lang/String;LXi/c;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
