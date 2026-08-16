.class public LLl/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivateKey;
.implements Lsl/D;


# static fields
.field public static final d:J = 0x1L


# instance fields
.field public transient b:Lol/u;

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

    invoke-virtual {p0, p1}, LLl/a;->b(LXh/v;)V

    return-void
.end method

.method public constructor <init>(Lol/u;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LLl/a;->b:Lol/u;

    return-void
.end method


# virtual methods
.method public A0()Lsl/E;
    .locals 4

    new-instance v0, LLl/b;

    new-instance v1, Lol/v;

    iget-object v2, p0, LLl/a;->b:Lol/u;

    invoke-virtual {v2}, Lol/s;->d()Lol/t;

    move-result-object v2

    iget-object v3, p0, LLl/a;->b:Lol/u;

    invoke-virtual {v3}, Lol/u;->g()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lol/v;-><init>(Lol/t;[B)V

    invoke-direct {v0, v1}, LLl/b;-><init>(Lol/v;)V

    return-object v0
.end method

.method public a()Lol/u;
    .locals 1

    iget-object v0, p0, LLl/a;->b:Lol/u;

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

    iput-object v0, p0, LLl/a;->c:Loh/G;

    invoke-static {p1}, Lpl/b;->b(LXh/v;)LXi/c;

    move-result-object p1

    check-cast p1, Lol/u;

    iput-object p1, p0, LLl/a;->b:Lol/u;

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

    invoke-virtual {p0, p1}, LLl/a;->b(LXh/v;)V

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

    invoke-virtual {p0}, LLl/a;->getEncoded()[B

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
    instance-of v0, p1, LLl/a;

    if-eqz v0, :cond_1

    check-cast p1, LLl/a;

    iget-object v0, p0, LLl/a;->b:Lol/u;

    invoke-virtual {v0}, Lol/u;->getEncoded()[B

    move-result-object v0

    iget-object p1, p1, LLl/a;->b:Lol/u;

    invoke-virtual {p1}, Lol/u;->getEncoded()[B

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "SPHINCS+"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    :try_start_0
    iget-object v0, p0, LLl/a;->b:Lol/u;

    iget-object v1, p0, LLl/a;->c:Loh/G;

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

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LLl/a;->b:Lol/u;

    invoke-virtual {v0}, Lol/u;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->t0([B)I

    move-result v0

    return v0
.end method

.method public t()LOl/v;
    .locals 1

    iget-object v0, p0, LLl/a;->b:Lol/u;

    invoke-virtual {v0}, Lol/s;->d()Lol/t;

    move-result-object v0

    invoke-virtual {v0}, Lol/t;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LOl/v;->a(Ljava/lang/String;)LOl/v;

    move-result-object v0

    return-object v0
.end method
