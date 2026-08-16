.class public Ldm/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldm/d$b;
    }
.end annotation


# instance fields
.field public final a:LQk/p;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldm/g;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ldm/p;

.field public d:[B


# direct methods
.method public constructor <init>(LQk/p;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldm/d;->b:Ljava/util/List;

    new-instance v0, Ldm/a;

    invoke-direct {v0}, Ldm/a;-><init>()V

    iput-object v0, p0, Ldm/d;->c:Ldm/p;

    iput-object p1, p0, Ldm/d;->a:LQk/p;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldm/g;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Ldm/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public b(Ldm/g;)V
    .locals 1

    iget-object v0, p0, Ldm/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Lci/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ldm/d;->a:LQk/p;

    invoke-interface {v0}, LQk/p;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {p1, v1}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object p1, p0, Ldm/d;->a:LQk/p;

    invoke-interface {p1}, LQk/p;->b()[B

    move-result-object p1

    iput-object p1, p0, Ldm/d;->d:[B

    return-void
.end method

.method public d(Lorg/bouncycastle/tsp/f;)Ldm/c;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    invoke-virtual {p0}, Ldm/d;->h()[Ldm/d$b;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Ldm/d;->c:Ldm/p;

    iget-object v3, p0, Ldm/d;->a:LQk/p;

    invoke-interface {v1, v3, v0}, Ldm/p;->b(LQk/p;[Lci/i;)[B

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/f;->d()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/f;->f()Lorg/bouncycastle/tsp/h;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/tsp/h;->i()Lorg/bouncycastle/tsp/j;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/tsp/j;->n()Lci/j;

    move-result-object v3

    invoke-virtual {v3}, Lci/j;->z()Lci/h;

    move-result-object v4

    invoke-virtual {v4}, Lci/h;->u()Lhi/b;

    move-result-object v4

    iget-object v5, p0, Ldm/d;->a:LQk/p;

    invoke-interface {v5}, LQk/p;->a()Lhi/b;

    move-result-object v5

    invoke-virtual {v4, v5}, Loh/v;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lci/j;->z()Lci/h;

    move-result-object v3

    invoke-virtual {v3}, Lci/h;->v()[B

    move-result-object v3

    invoke-static {v3, v1}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Lci/i;->x()I

    move-result v1

    if-ne v1, v2, :cond_0

    new-instance v0, Ldm/c;

    new-instance v1, Lci/b;

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/f;->f()Lorg/bouncycastle/tsp/h;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/h;->l()Lorg/bouncycastle/cms/O;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/cms/O;->s()Luh/o;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p1}, Lci/b;-><init>(Lhi/b;[Lci/i;Luh/o;)V

    iget-object p1, p0, Ldm/d;->a:LQk/p;

    invoke-direct {v0, v1, p1}, Ldm/c;-><init>(Lci/b;LQk/p;)V

    return-object v0

    :cond_0
    new-instance v1, Ldm/c;

    new-instance v2, Lci/b;

    iget-object v3, p0, Ldm/d;->a:LQk/p;

    invoke-interface {v3}, LQk/p;->a()Lhi/b;

    move-result-object v3

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/f;->f()Lorg/bouncycastle/tsp/h;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/h;->l()Lorg/bouncycastle/cms/O;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/cms/O;->s()Luh/o;

    move-result-object p1

    invoke-direct {v2, v3, v0, p1}, Lci/b;-><init>(Lhi/b;[Lci/i;Luh/o;)V

    iget-object p1, p0, Ldm/d;->a:LQk/p;

    invoke-direct {v1, v2, p1}, Ldm/c;-><init>(Lci/b;LQk/p;)V

    return-object v1

    :cond_1
    new-instance p1, Lorg/bouncycastle/tsp/ers/ERSException;

    const-string v0, "time stamp imprint for wrong root hash"

    invoke-direct {p1, v0}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/bouncycastle/tsp/ers/ERSException;

    const-string v0, "time stamp imprint for wrong algorithm"

    invoke-direct {p1, v0}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance v0, Lorg/bouncycastle/tsp/TSPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TSP response error status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/f;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance p1, Lorg/bouncycastle/tsp/ers/ERSException;

    const-string v0, "multiple reduced hash trees found"

    invoke-direct {p1, v0}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Lorg/bouncycastle/tsp/f;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/tsp/f;",
            ")",
            "Ljava/util/List<",
            "Ldm/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    invoke-virtual {p0}, Ldm/d;->h()[Ldm/d$b;

    move-result-object v0

    iget-object v1, p0, Ldm/d;->c:Ldm/p;

    iget-object v2, p0, Ldm/d;->a:LQk/p;

    invoke-interface {v1, v2, v0}, Ldm/p;->b(LQk/p;[Lci/i;)[B

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/f;->d()I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/f;->f()Lorg/bouncycastle/tsp/h;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/tsp/h;->i()Lorg/bouncycastle/tsp/j;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/tsp/j;->n()Lci/j;

    move-result-object v2

    invoke-virtual {v2}, Lci/j;->z()Lci/h;

    move-result-object v3

    invoke-virtual {v3}, Lci/h;->u()Lhi/b;

    move-result-object v3

    iget-object v4, p0, Ldm/d;->a:LQk/p;

    invoke-interface {v4}, LQk/p;->a()Lhi/b;

    move-result-object v4

    invoke-virtual {v3, v4}, Loh/v;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lci/j;->z()Lci/h;

    move-result-object v2

    invoke-virtual {v2}, Lci/h;->v()[B

    move-result-object v2

    invoke-static {v2, v1}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/f;->f()Lorg/bouncycastle/tsp/h;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/h;->l()Lorg/bouncycastle/cms/O;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/cms/O;->s()Luh/o;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    aget-object v2, v0, v3

    invoke-virtual {v2}, Lci/i;->x()I

    move-result v2

    if-ne v2, v4, :cond_0

    new-instance v0, Ldm/c;

    new-instance v2, Lci/b;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, p1}, Lci/b;-><init>(Lhi/b;[Lci/i;Luh/o;)V

    iget-object p1, p0, Ldm/d;->a:LQk/p;

    invoke-direct {v0, v2, p1}, Ldm/c;-><init>(Lci/b;LQk/p;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    array-length v2, v0

    new-array v2, v2, [Ldm/c;

    move v4, v3

    :goto_0
    array-length v5, v0

    if-eq v4, v5, :cond_1

    iget-object v5, p0, Ldm/d;->c:Ldm/p;

    iget-object v6, p0, Ldm/d;->a:LQk/p;

    aget-object v7, v0, v4

    invoke-interface {v5, v6, v7, v4}, Ldm/p;->c(LQk/p;Lci/i;I)[Lci/i;

    move-result-object v5

    aget-object v6, v0, v4

    iget v6, v6, Ldm/d$b;->c:I

    new-instance v7, Ldm/c;

    new-instance v8, Lci/b;

    iget-object v9, p0, Ldm/d;->a:LQk/p;

    invoke-interface {v9}, LQk/p;->a()Lhi/b;

    move-result-object v9

    invoke-direct {v8, v9, v5, p1}, Lci/b;-><init>(Lhi/b;[Lci/i;Luh/o;)V

    iget-object v5, p0, Ldm/d;->a:LQk/p;

    invoke-direct {v7, v8, v5}, Ldm/c;-><init>(Lci/b;LQk/p;)V

    aput-object v7, v2, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    array-length p1, v0

    if-eq v3, p1, :cond_2

    aget-object p1, v2, v3

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object v1

    :cond_3
    new-instance p1, Lorg/bouncycastle/tsp/ers/ERSException;

    const-string v0, "time stamp imprint for wrong root hash"

    invoke-direct {p1, v0}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lorg/bouncycastle/tsp/ers/ERSException;

    const-string v0, "time stamp imprint for wrong algorithm"

    invoke-direct {p1, v0}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance v0, Lorg/bouncycastle/tsp/TSPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TSP response error status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/f;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f(Lorg/bouncycastle/tsp/e;)Lorg/bouncycastle/tsp/d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ldm/d;->h()[Ldm/d$b;

    move-result-object v0

    iget-object v1, p0, Ldm/d;->c:Ldm/p;

    iget-object v2, p0, Ldm/d;->a:LQk/p;

    invoke-interface {v1, v2, v0}, Ldm/p;->b(LQk/p;[Lci/i;)[B

    move-result-object v0

    iget-object v1, p0, Ldm/d;->a:LQk/p;

    invoke-interface {v1}, LQk/p;->a()Lhi/b;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lorg/bouncycastle/tsp/e;->e(Lhi/b;[B)Lorg/bouncycastle/tsp/d;

    move-result-object p1

    return-object p1
.end method

.method public g(Lorg/bouncycastle/tsp/e;Ljava/math/BigInteger;)Lorg/bouncycastle/tsp/d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ldm/d;->h()[Ldm/d$b;

    move-result-object v0

    iget-object v1, p0, Ldm/d;->c:Ldm/p;

    iget-object v2, p0, Ldm/d;->a:LQk/p;

    invoke-interface {v1, v2, v0}, Ldm/p;->b(LQk/p;[Lci/i;)[B

    move-result-object v0

    iget-object v1, p0, Ldm/d;->a:LQk/p;

    invoke-interface {v1}, LQk/p;->a()Lhi/b;

    move-result-object v1

    invoke-virtual {p1, v1, v0, p2}, Lorg/bouncycastle/tsp/e;->f(Lhi/b;[BLjava/math/BigInteger;)Lorg/bouncycastle/tsp/d;

    move-result-object p1

    return-object p1
.end method

.method public final h()[Ldm/d$b;
    .locals 8

    iget-object v0, p0, Ldm/d;->a:LQk/p;

    iget-object v1, p0, Ldm/d;->b:Ljava/util/List;

    iget-object v2, p0, Ldm/d;->d:[B

    invoke-static {v0, v1, v2}, Ldm/q;->b(LQk/p;Ljava/util/List;[B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ldm/d$b;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget-object v5, p0, Ldm/d;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_1

    iget-object v5, p0, Ldm/d;->b:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ldm/h;

    if-eqz v5, :cond_0

    iget-object v5, p0, Ldm/d;->b:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldm/h;

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eq v3, v2, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldm/s;

    iget-object v2, v2, Ldm/s;->b:[B

    iget-object v4, p0, Ldm/d;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldm/s;

    iget v5, v5, Ldm/s;->a:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldm/g;

    instance-of v5, v4, Ldm/h;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    check-cast v4, Ldm/h;

    iget-object v2, p0, Ldm/d;->a:LQk/p;

    iget-object v5, p0, Ldm/d;->d:[B

    invoke-virtual {v4, v2, v5}, Ldm/h;->c(LQk/p;[B)Ljava/util/List;

    move-result-object v2

    new-instance v4, Ldm/d$b;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldm/s;

    iget v5, v5, Ldm/s;->a:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [[B

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    invoke-direct {v4, v5, v2, v6}, Ldm/d$b;-><init>(I[[BLdm/d$a;)V

    aput-object v4, v1, v3

    goto :goto_2

    :cond_2
    new-instance v4, Ldm/d$b;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldm/s;

    iget v5, v5, Ldm/s;->a:I

    invoke-direct {v4, v5, v2, v6}, Ldm/d$b;-><init>(I[BLdm/d$a;)V

    aput-object v4, v1, v3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method
