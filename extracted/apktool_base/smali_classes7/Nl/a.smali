.class public LNl/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivateKey;
.implements Lsl/I;


# static fields
.field public static final e:J = 0x6a9c720efa7851b3L


# instance fields
.field public transient b:Loh/x;

.field public transient c:Lql/A;

.field public transient d:Loh/G;


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

    invoke-virtual {p0, p1}, LNl/a;->g(LXh/v;)V

    return-void
.end method

.method public constructor <init>(Loh/x;Lql/A;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LNl/a;->b:Loh/x;

    iput-object p2, p0, LNl/a;->c:Lql/A;

    return-void
.end method


# virtual methods
.method public S0()J
    .locals 2

    iget-object v0, p0, LNl/a;->c:Lql/A;

    invoke-virtual {v0}, Lql/A;->S0()J

    move-result-wide v0

    return-wide v0
.end method

.method public T0(I)Lsl/I;
    .locals 3

    new-instance v0, LNl/a;

    iget-object v1, p0, LNl/a;->b:Loh/x;

    iget-object v2, p0, LNl/a;->c:Lql/A;

    invoke-virtual {v2, p1}, Lql/A;->e(I)Lql/A;

    move-result-object p1

    invoke-direct {v0, v1, p1}, LNl/a;-><init>(Loh/x;Lql/A;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LNl/a;->b:Loh/x;

    invoke-static {v0}, LNl/e;->d(Loh/x;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, LNl/a;->c:Lql/A;

    invoke-virtual {v0}, Lql/A;->i()Lql/z;

    move-result-object v0

    invoke-virtual {v0}, Lql/z;->b()I

    move-result v0

    return v0
.end method

.method public c()LBi/k;
    .locals 1

    iget-object v0, p0, LNl/a;->c:Lql/A;

    return-object v0
.end method

.method public d()Loh/x;
    .locals 1

    iget-object v0, p0, LNl/a;->b:Loh/x;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LNl/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, LNl/a;

    iget-object v1, p0, LNl/a;->b:Loh/x;

    iget-object v3, p1, LNl/a;->b:Loh/x;

    invoke-virtual {v1, v3}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LNl/a;->c:Lql/A;

    invoke-virtual {v1}, Lql/A;->toByteArray()[B

    move-result-object v1

    iget-object p1, p1, LNl/a;->c:Lql/A;

    invoke-virtual {p1}, Lql/A;->toByteArray()[B

    move-result-object p1

    invoke-static {v1, p1}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final g(LXh/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, LXh/v;->u()Loh/G;

    move-result-object v0

    iput-object v0, p0, LNl/a;->d:Loh/G;

    invoke-virtual {p1}, LXh/v;->y()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, LXk/w;->v(Ljava/lang/Object;)LXk/w;

    move-result-object v0

    invoke-virtual {v0}, LXk/w;->y()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    iput-object v0, p0, LNl/a;->b:Loh/x;

    invoke-static {p1}, Lpl/b;->b(LXh/v;)LXi/c;

    move-result-object p1

    check-cast p1, Lql/A;

    iput-object p1, p0, LNl/a;->c:Lql/A;

    return-void
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "XMSSMT"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    :try_start_0
    iget-object v0, p0, LNl/a;->c:Lql/A;

    iget-object v1, p0, LNl/a;->d:Loh/G;

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

.method public getHeight()I
    .locals 1

    iget-object v0, p0, LNl/a;->c:Lql/A;

    invoke-virtual {v0}, Lql/A;->i()Lql/z;

    move-result-object v0

    invoke-virtual {v0}, Lql/z;->a()I

    move-result v0

    return v0
.end method

.method public getIndex()J
    .locals 4

    invoke-virtual {p0}, LNl/a;->S0()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, LNl/a;->c:Lql/A;

    invoke-virtual {v0}, Lql/A;->g()J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "key exhausted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h(Ljava/io/ObjectInputStream;)V
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

    invoke-virtual {p0, p1}, LNl/a;->g(LXh/v;)V

    return-void
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, LNl/a;->b:Loh/x;

    invoke-virtual {v0}, Loh/x;->hashCode()I

    move-result v0

    iget-object v1, p0, LNl/a;->c:Lql/A;

    invoke-virtual {v1}, Lql/A;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/a;->t0([B)I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method

.method public final i(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, LNl/a;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
