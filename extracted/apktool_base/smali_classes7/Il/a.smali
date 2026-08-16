.class public LIl/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsl/x;


# static fields
.field public static final f:J = 0x1L


# instance fields
.field public transient b:Lll/i;

.field public transient c:Ljava/lang/String;

.field public transient d:[B

.field public transient e:Loh/G;


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

    invoke-virtual {p0, p1}, LIl/a;->b(LXh/v;)V

    return-void
.end method

.method public constructor <init>(Lll/i;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LIl/a;->c(Lll/i;Loh/G;)V

    return-void
.end method


# virtual methods
.method public A0()Lsl/y;
    .locals 4

    new-instance v0, LIl/b;

    new-instance v1, Lll/j;

    iget-object v2, p0, LIl/a;->b:Lll/i;

    invoke-virtual {v2}, Lll/g;->e()Lll/h;

    move-result-object v2

    iget-object v3, p0, LIl/a;->b:Lll/i;

    invoke-virtual {v3}, Lll/i;->n()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lll/j;-><init>(Lll/h;[B)V

    invoke-direct {v0, v1}, LIl/b;-><init>(Lll/j;)V

    return-object v0
.end method

.method public a()Lll/i;
    .locals 1

    iget-object v0, p0, LIl/a;->b:Lll/i;

    return-object v0
.end method

.method public final b(LXh/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lpl/b;->b(LXh/v;)LXi/c;

    move-result-object v0

    check-cast v0, Lll/i;

    invoke-virtual {p1}, LXh/v;->u()Loh/G;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, LIl/a;->c(Lll/i;Loh/G;)V

    return-void
.end method

.method public final c(Lll/i;Loh/G;)V
    .locals 0

    iput-object p2, p0, LIl/a;->e:Loh/G;

    iput-object p1, p0, LIl/a;->b:Lll/i;

    invoke-virtual {p1}, Lll/g;->e()Lll/h;

    move-result-object p1

    invoke-virtual {p1}, Lll/h;->g()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/w;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LIl/a;->c:Ljava/lang/String;

    return-void
.end method

.method public final d(Ljava/io/ObjectInputStream;)V
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

    invoke-virtual {p0, p1}, LIl/a;->b(LXh/v;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, LIl/a;

    if-eqz v0, :cond_1

    check-cast p1, LIl/a;

    invoke-virtual {p0}, LIl/a;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1}, LIl/a;->getEncoded()[B

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final g(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, LIl/a;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LIl/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    iget-object v0, p0, LIl/a;->d:[B

    if-nez v0, :cond_0

    iget-object v0, p0, LIl/a;->b:Lll/i;

    iget-object v1, p0, LIl/a;->e:Loh/G;

    invoke-static {v0, v1}, LMl/e;->b(LXi/c;Loh/G;)[B

    move-result-object v0

    iput-object v0, p0, LIl/a;->d:[B

    :cond_0
    iget-object v0, p0, LIl/a;->d:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, LIl/a;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->t0([B)I

    move-result v0

    return v0
.end method

.method public t()LOl/r;
    .locals 1

    iget-object v0, p0, LIl/a;->b:Lll/i;

    invoke-virtual {v0}, Lll/g;->e()Lll/h;

    move-result-object v0

    invoke-virtual {v0}, Lll/h;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LOl/r;->a(Ljava/lang/String;)LOl/r;

    move-result-object v0

    return-object v0
.end method
