.class public LQj/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfk/l;


# static fields
.field public static final d:J = -0x56c0189c9719fcd6L


# instance fields
.field public b:Ljava/math/BigInteger;

.field public transient c:Lfk/j;


# direct methods
.method public constructor <init>(LXi/e0;Lhk/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, LXi/e0;->e()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, LQj/d;->b:Ljava/math/BigInteger;

    iput-object p2, p0, LQj/d;->c:Lfk/j;

    return-void
.end method

.method public constructor <init>(Lfk/l;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lfk/l;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LQj/d;->b:Ljava/math/BigInteger;

    invoke-interface {p1}, Lfk/i;->getParameters()Lfk/j;

    move-result-object p1

    iput-object p1, p0, LQj/d;->c:Lfk/j;

    return-void
.end method

.method public constructor <init>(Lhi/h0;)V
    .locals 5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lhi/h0;->u()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, Lyh/g;->w(Ljava/lang/Object;)Lyh/g;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Lhi/h0;->A()Loh/B;

    move-result-object p1

    check-cast p1, Loh/C0;

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    array-length v1, p1

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    array-length v3, p1

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v4, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object p1, p0, LQj/d;->b:Ljava/math/BigInteger;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0}, Lhk/n;->e(Lyh/g;)Lhk/n;

    move-result-object p1

    iput-object p1, p0, LQj/d;->c:Lfk/j;

    return-void

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid info structure in GOST3410 public key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lhk/q;)V
    .locals 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lhk/q;->d()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LQj/d;->b:Ljava/math/BigInteger;

    new-instance v0, Lhk/n;

    new-instance v1, Lhk/p;

    invoke-virtual {p1}, Lhk/q;->b()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lhk/q;->c()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lhk/q;->a()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lhk/p;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1}, Lhk/n;-><init>(Lhk/p;)V

    iput-object v0, p0, LQj/d;->c:Lfk/j;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Lhk/n;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQj/d;->b:Ljava/math/BigInteger;

    iput-object p2, p0, LQj/d;->c:Lfk/j;

    return-void
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Lhk/n;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v1, v0, v2, p1}, Lhk/n;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, LQj/d;->c:Lfk/j;

    goto :goto_0

    :cond_0
    new-instance v0, Lhk/n;

    new-instance v1, Lhk/p;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3, v4}, Lhk/p;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1}, Lhk/n;-><init>(Lhk/p;)V

    iput-object v0, p0, LQj/d;->c:Lfk/j;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private b(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, LQj/d;->c:Lfk/j;

    invoke-interface {v0}, Lfk/j;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQj/d;->c:Lfk/j;

    invoke-interface {v0}, Lfk/j;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, LQj/d;->c:Lfk/j;

    invoke-interface {v0}, Lfk/j;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, LQj/d;->c:Lfk/j;

    invoke-interface {v0}, Lfk/j;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, LQj/d;->c:Lfk/j;

    invoke-interface {v0}, Lfk/j;->a()Lhk/p;

    move-result-object v0

    invoke-virtual {v0}, Lhk/p;->b()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, LQj/d;->c:Lfk/j;

    invoke-interface {v0}, Lfk/j;->a()Lhk/p;

    move-result-object v0

    invoke-virtual {v0}, Lhk/p;->c()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, LQj/d;->c:Lfk/j;

    invoke-interface {v0}, Lfk/j;->a()Lhk/p;

    move-result-object v0

    invoke-virtual {v0}, Lhk/p;->a()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, LQj/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, LQj/d;

    iget-object v0, p0, LQj/d;->b:Ljava/math/BigInteger;

    iget-object v2, p1, LQj/d;->b:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQj/d;->c:Lfk/j;

    iget-object p1, p1, LQj/d;->c:Lfk/j;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "GOST3410"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 9

    invoke-virtual {p0}, LQj/d;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    if-nez v2, :cond_0

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    :goto_0
    new-array v2, v2, [B

    goto :goto_1

    :cond_0
    array-length v2, v0

    goto :goto_0

    :goto_1
    array-length v3, v2

    if-eq v1, v3, :cond_1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    aget-byte v3, v0, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :try_start_0
    iget-object v0, p0, LQj/d;->c:Lfk/j;

    instance-of v1, v0, Lhk/n;

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lfk/j;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Lhi/h0;

    new-instance v1, Lhi/b;

    sget-object v3, Lyh/a;->l:Loh/x;

    new-instance v4, Lyh/g;

    new-instance v5, Loh/x;

    iget-object v6, p0, LQj/d;->c:Lfk/j;

    invoke-interface {v6}, Lfk/j;->b()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Loh/x;-><init>(Ljava/lang/String;)V

    new-instance v6, Loh/x;

    iget-object v7, p0, LQj/d;->c:Lfk/j;

    invoke-interface {v7}, Lfk/j;->d()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Loh/x;-><init>(Ljava/lang/String;)V

    new-instance v7, Loh/x;

    iget-object v8, p0, LQj/d;->c:Lfk/j;

    invoke-interface {v8}, Lfk/j;->c()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Loh/x;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6, v7}, Lyh/g;-><init>(Loh/x;Loh/x;Loh/x;)V

    invoke-direct {v1, v3, v4}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    new-instance v3, Loh/C0;

    invoke-direct {v3, v2}, Loh/C0;-><init>([B)V

    invoke-direct {v0, v1, v3}, Lhi/h0;-><init>(Lhi/b;Loh/g;)V

    goto :goto_2

    :cond_2
    new-instance v0, Lhi/h0;

    new-instance v1, Lhi/b;

    sget-object v3, Lyh/a;->l:Loh/x;

    new-instance v4, Lyh/g;

    new-instance v5, Loh/x;

    iget-object v6, p0, LQj/d;->c:Lfk/j;

    invoke-interface {v6}, Lfk/j;->b()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Loh/x;-><init>(Ljava/lang/String;)V

    new-instance v6, Loh/x;

    iget-object v7, p0, LQj/d;->c:Lfk/j;

    invoke-interface {v7}, Lfk/j;->d()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Loh/x;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lyh/g;-><init>(Loh/x;Loh/x;)V

    invoke-direct {v1, v3, v4}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    new-instance v3, Loh/C0;

    invoke-direct {v3, v2}, Loh/C0;-><init>([B)V

    invoke-direct {v0, v1, v3}, Lhi/h0;-><init>(Lhi/b;Loh/g;)V

    goto :goto_2

    :cond_3
    new-instance v0, Lhi/h0;

    new-instance v1, Lhi/b;

    sget-object v3, Lyh/a;->l:Loh/x;

    invoke-direct {v1, v3}, Lhi/b;-><init>(Loh/x;)V

    new-instance v3, Loh/C0;

    invoke-direct {v3, v2}, Loh/C0;-><init>([B)V

    invoke-direct {v0, v1, v3}, Lhi/h0;-><init>(Lhi/b;Loh/g;)V

    :goto_2
    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/l;->e(Lhi/h0;)[B

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

.method public getParameters()Lfk/j;
    .locals 1

    iget-object v0, p0, LQj/d;->c:Lfk/j;

    return-object v0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LQj/d;->b:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, LQj/d;->b:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, LQj/d;->c:Lfk/j;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "GOST3410"

    iget-object v1, p0, LQj/d;->b:Ljava/math/BigInteger;

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/j;->b(Ljava/security/PublicKey;)LXi/c;

    move-result-object v2

    check-cast v2, LXi/e0;

    invoke-virtual {v2}, LXi/b0;->d()LXi/c0;

    move-result-object v2

    invoke-static {v0, v1, v2}, LQj/e;->c(Ljava/lang/String;Ljava/math/BigInteger;LXi/c0;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
