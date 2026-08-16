.class public LCl/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivateKey;
.implements Lsl/o;


# static fields
.field public static final d:J = 0x76ea24cf15920952L


# instance fields
.field public transient b:Lorg/bouncycastle/pqc/crypto/lms/t;

.field public transient c:Loh/G;


# direct methods
.method public constructor <init>(LXh/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, LCl/a;->b(LXh/v;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/lms/t;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LCl/a;->b:Lorg/bouncycastle/pqc/crypto/lms/t;

    return-void
.end method


# virtual methods
.method public S0()J
    .locals 2

    iget-object v0, p0, LCl/a;->b:Lorg/bouncycastle/pqc/crypto/lms/t;

    instance-of v1, v0, Lorg/bouncycastle/pqc/crypto/lms/v;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/lms/v;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/v;->S0()J

    move-result-wide v0

    return-wide v0

    :cond_0
    check-cast v0, Lorg/bouncycastle/pqc/crypto/lms/f;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/f;->S0()J

    move-result-wide v0

    return-wide v0
.end method

.method public T0(I)Lsl/o;
    .locals 2

    iget-object v0, p0, LCl/a;->b:Lorg/bouncycastle/pqc/crypto/lms/t;

    instance-of v1, v0, Lorg/bouncycastle/pqc/crypto/lms/v;

    if-eqz v1, :cond_0

    new-instance v1, LCl/a;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/lms/v;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/lms/v;->e(I)Lorg/bouncycastle/pqc/crypto/lms/v;

    move-result-object p1

    invoke-direct {v1, p1}, LCl/a;-><init>(Lorg/bouncycastle/pqc/crypto/lms/t;)V

    return-object v1

    :cond_0
    new-instance v1, LCl/a;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/lms/f;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/lms/f;->d(I)Lorg/bouncycastle/pqc/crypto/lms/f;

    move-result-object p1

    invoke-direct {v1, p1}, LCl/a;-><init>(Lorg/bouncycastle/pqc/crypto/lms/t;)V

    return-object v1
.end method

.method public a()LBi/k;
    .locals 1

    iget-object v0, p0, LCl/a;->b:Lorg/bouncycastle/pqc/crypto/lms/t;

    return-object v0
.end method

.method public final b(LXh/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, LXh/v;->u()Loh/G;

    move-result-object v0

    iput-object v0, p0, LCl/a;->c:Loh/G;

    invoke-static {p1}, Lpl/b;->b(LXh/v;)LXi/c;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/lms/t;

    iput-object p1, p0, LCl/a;->b:Lorg/bouncycastle/pqc/crypto/lms/t;

    return-void
.end method

.method public final c(Ljava/io/ObjectInputStream;)V
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

    invoke-virtual {p0, p1}, LCl/a;->b(LXh/v;)V

    return-void
.end method

.method public final d(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, LCl/a;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, LCl/a;

    if-eqz v0, :cond_1

    check-cast p1, LCl/a;

    :try_start_0
    iget-object v0, p0, LCl/a;->b:Lorg/bouncycastle/pqc/crypto/lms/t;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/t;->getEncoded()[B

    move-result-object v0

    iget-object p1, p1, LCl/a;->b:Lorg/bouncycastle/pqc/crypto/lms/t;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/lms/t;->getEncoded()[B

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unable to perform equals"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "LMS"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    :try_start_0
    iget-object v0, p0, LCl/a;->b:Lorg/bouncycastle/pqc/crypto/lms/t;

    iget-object v1, p0, LCl/a;->c:Loh/G;

    invoke-static {v0, v1}, Lpl/c;->b(LXi/c;Loh/G;)LXh/v;

    move-result-object v0

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public getIndex()J
    .locals 4

    invoke-virtual {p0}, LCl/a;->S0()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, LCl/a;->b:Lorg/bouncycastle/pqc/crypto/lms/t;

    instance-of v1, v0, Lorg/bouncycastle/pqc/crypto/lms/v;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/lms/v;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/v;->j()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    check-cast v0, Lorg/bouncycastle/pqc/crypto/lms/f;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/f;->e()J

    move-result-wide v0

    return-wide v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "key exhausted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLevels()I
    .locals 2

    iget-object v0, p0, LCl/a;->b:Lorg/bouncycastle/pqc/crypto/lms/t;

    instance-of v1, v0, Lorg/bouncycastle/pqc/crypto/lms/v;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    check-cast v0, Lorg/bouncycastle/pqc/crypto/lms/f;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/f;->j()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    :try_start_0
    iget-object v0, p0, LCl/a;->b:Lorg/bouncycastle/pqc/crypto/lms/t;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/t;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->t0([B)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unable to calculate hashCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
