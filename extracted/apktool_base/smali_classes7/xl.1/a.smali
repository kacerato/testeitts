.class public Lxl/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsl/g;


# static fields
.field public static final f:J = 0x1L


# instance fields
.field public transient b:Ldl/n;

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

    invoke-virtual {p0, p1}, Lxl/a;->b(LXh/v;)V

    return-void
.end method

.method public constructor <init>(Ldl/n;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lxl/a;->c(Ldl/n;Loh/G;)V

    return-void
.end method


# virtual methods
.method public A0()Lsl/h;
    .locals 4

    new-instance v0, Lxl/b;

    new-instance v1, Ldl/o;

    iget-object v2, p0, Lxl/a;->b:Ldl/n;

    invoke-virtual {v2}, Ldl/k;->d()Ldl/m;

    move-result-object v2

    iget-object v3, p0, Lxl/a;->b:Ldl/n;

    invoke-virtual {v3}, Ldl/n;->f()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ldl/o;-><init>(Ldl/m;[B)V

    invoke-direct {v0, v1}, Lxl/b;-><init>(Ldl/o;)V

    return-object v0
.end method

.method public a()Ldl/n;
    .locals 1

    iget-object v0, p0, Lxl/a;->b:Ldl/n;

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

    check-cast v0, Ldl/n;

    invoke-virtual {p1}, LXh/v;->u()Loh/G;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lxl/a;->c(Ldl/n;Loh/G;)V

    return-void
.end method

.method public final c(Ldl/n;Loh/G;)V
    .locals 0

    iput-object p2, p0, Lxl/a;->e:Loh/G;

    iput-object p1, p0, Lxl/a;->b:Ldl/n;

    invoke-virtual {p1}, Ldl/k;->d()Ldl/m;

    move-result-object p1

    invoke-virtual {p1}, Ldl/m;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/w;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lxl/a;->c:Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Lxl/a;->b(LXh/v;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lxl/a;

    if-eqz v0, :cond_1

    check-cast p1, Lxl/a;

    invoke-virtual {p0}, Lxl/a;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1}, Lxl/a;->getEncoded()[B

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

    invoke-virtual {p0}, Lxl/a;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lxl/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    iget-object v0, p0, Lxl/a;->d:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lxl/a;->b:Ldl/n;

    iget-object v1, p0, Lxl/a;->e:Loh/G;

    invoke-static {v0, v1}, LMl/e;->b(LXi/c;Loh/G;)[B

    move-result-object v0

    iput-object v0, p0, Lxl/a;->d:[B

    :cond_0
    iget-object v0, p0, Lxl/a;->d:[B

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

    invoke-virtual {p0}, Lxl/a;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->t0([B)I

    move-result v0

    return v0
.end method

.method public t()LOl/d;
    .locals 1

    iget-object v0, p0, Lxl/a;->b:Ldl/n;

    invoke-virtual {v0}, Ldl/k;->d()Ldl/m;

    move-result-object v0

    invoke-virtual {v0}, Ldl/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LOl/d;->a(Ljava/lang/String;)LOl/d;

    move-result-object v0

    return-object v0
.end method
