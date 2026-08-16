.class public LCl/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PublicKey;
.implements Lsl/n;


# static fields
.field public static final c:J = -0x4df536aca40a3826L


# instance fields
.field public transient b:Lorg/bouncycastle/pqc/crypto/lms/t;


# direct methods
.method public constructor <init>(Lhi/h0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, LCl/b;->b(Lhi/h0;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/lms/t;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LCl/b;->b:Lorg/bouncycastle/pqc/crypto/lms/t;

    return-void
.end method

.method private c(Ljava/io/ObjectInputStream;)V
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

    invoke-static {p1}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object p1

    invoke-virtual {p0, p1}, LCl/b;->b(Lhi/h0;)V

    return-void
.end method

.method private d(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, LCl/b;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()LBi/k;
    .locals 1

    iget-object v0, p0, LCl/b;->b:Lorg/bouncycastle/pqc/crypto/lms/t;

    return-object v0
.end method

.method public final b(Lhi/h0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lpl/d;->a(Lhi/h0;)LXi/c;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/lms/t;

    iput-object p1, p0, LCl/b;->b:Lorg/bouncycastle/pqc/crypto/lms/t;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, LCl/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, LCl/b;

    :try_start_0
    iget-object v0, p0, LCl/b;->b:Lorg/bouncycastle/pqc/crypto/lms/t;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/t;->getEncoded()[B

    move-result-object v0

    iget-object p1, p1, LCl/b;->b:Lorg/bouncycastle/pqc/crypto/lms/t;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/lms/t;->getEncoded()[B

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_1
    return v1
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "LMS"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    :try_start_0
    iget-object v0, p0, LCl/b;->b:Lorg/bouncycastle/pqc/crypto/lms/t;

    invoke-static {v0}, Lpl/f;->a(LXi/c;)Lhi/h0;

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

    const-string v0, "X.509"

    return-object v0
.end method

.method public getLevels()I
    .locals 2

    iget-object v0, p0, LCl/b;->b:Lorg/bouncycastle/pqc/crypto/lms/t;

    instance-of v1, v0, Lorg/bouncycastle/pqc/crypto/lms/w;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    check-cast v0, Lorg/bouncycastle/pqc/crypto/lms/g;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/g;->e()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    :try_start_0
    iget-object v0, p0, LCl/b;->b:Lorg/bouncycastle/pqc/crypto/lms/t;

    invoke-interface {v0}, Lorg/bouncycastle/util/g;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->t0([B)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, -0x1

    return v0
.end method
