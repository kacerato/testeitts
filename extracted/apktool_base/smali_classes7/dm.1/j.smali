.class public Ldm/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lci/g;

.field public final b:LQk/q;

.field public final c:Ldm/c;

.field public final d:Ldm/c;

.field public final e:[B

.field public final f:LQk/p;

.field public final g:Lci/b;


# direct methods
.method public constructor <init>(Lci/g;LQk/q;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldm/j;->a:Lci/g;

    iput-object p2, p0, Ldm/j;->b:LQk/q;

    invoke-virtual {p1}, Lci/g;->v()Lci/d;

    move-result-object p1

    invoke-virtual {p1}, Lci/d;->v()[Lci/c;

    move-result-object p1

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lci/c;->v()[Lci/b;

    move-result-object v1

    aget-object v1, v1, v0

    iput-object v1, p0, Ldm/j;->g:Lci/b;

    invoke-virtual {p0, p1}, Ldm/j;->r([Lci/c;)V

    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lci/c;->v()[Lci/b;

    move-result-object v1

    new-instance v3, Ldm/c;

    array-length v4, v1

    sub-int/2addr v4, v2

    aget-object v4, v1, v4

    invoke-direct {v3, v4, p2}, Ldm/c;-><init>(Lci/b;LQk/q;)V

    iput-object v3, p0, Ldm/j;->d:Ldm/c;

    array-length v3, p1

    if-le v3, v2, :cond_1

    :try_start_0
    new-instance v3, Loh/h;

    invoke-direct {v3}, Loh/h;-><init>()V

    move v4, v0

    :goto_0
    array-length v5, p1

    sub-int/2addr v5, v2

    if-eq v4, v5, :cond_0

    aget-object v5, p1, v4

    invoke-virtual {v3, v5}, Loh/h;->a(Loh/g;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Ldm/j;->d:Ldm/c;

    invoke-virtual {p1}, Ldm/c;->d()Lhi/b;

    move-result-object p1

    invoke-interface {p2, p1}, LQk/q;->a(Lhi/b;)LQk/p;

    move-result-object p1

    iput-object p1, p0, Ldm/j;->f:LQk/p;

    invoke-interface {p1}, LQk/p;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    new-instance v4, Loh/G0;

    invoke-direct {v4, v3}, Loh/G0;-><init>(Loh/h;)V

    const-string v3, "DER"

    invoke-virtual {v4, v3}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    invoke-interface {p1}, LQk/p;->b()[B

    move-result-object p1

    iput-object p1, p0, Ldm/j;->e:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance p2, Lorg/bouncycastle/tsp/ers/ERSException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Ldm/j;->f:LQk/p;

    iput-object p1, p0, Ldm/j;->e:[B

    :goto_2
    new-instance p1, Ldm/c;

    iget-object v2, p0, Ldm/j;->e:[B

    aget-object v0, v1, v0

    invoke-direct {p1, v2, v0, p2}, Ldm/c;-><init>([BLci/b;LQk/q;)V

    iput-object p1, p0, Ldm/j;->c:Ldm/c;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;LQk/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Lorg/bouncycastle/tsp/ers/ERSException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lfm/d;->e(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-static {p1}, Lci/g;->y(Ljava/lang/Object;)Lci/g;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ldm/j;-><init>(Lci/g;LQk/q;)V

    return-void
.end method

.method public constructor <init>([BLQk/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lci/g;->y(Ljava/lang/Object;)Lci/g;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ldm/j;-><init>(Lci/g;LQk/q;)V

    return-void
.end method


# virtual methods
.method public final a()Ldm/d;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ldm/j;->b:LQk/q;

    iget-object v1, p0, Ldm/j;->d:Ldm/c;

    invoke-virtual {v1}, Ldm/c;->d()Lhi/b;

    move-result-object v1

    invoke-interface {v0, v1}, LQk/q;->a(Lhi/b;)LQk/p;

    move-result-object v0
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p0}, Ldm/j;->g()[Lci/b;

    move-result-object v1

    invoke-interface {v0}, LQk/p;->a()Lhi/b;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lci/b;->v()Lhi/b;

    move-result-object v4

    invoke-virtual {v2, v4}, Loh/v;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ldm/d;

    invoke-direct {v2, v0}, Ldm/d;-><init>(LQk/p;)V

    new-instance v0, Ljava/util/ArrayList;

    array-length v4, v1

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    array-length v4, v1

    if-eq v3, v4, :cond_0

    :try_start_1
    new-instance v4, Ldm/e;

    aget-object v5, v1, v3

    invoke-virtual {v5}, Lci/b;->A()Luh/o;

    move-result-object v5

    const-string v6, "DER"

    invoke-virtual {v5, v6}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ldm/e;-><init>([B)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/tsp/ers/ERSException;

    const-string v2, "unable to process previous ArchiveTimeStamps"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v1, Ldm/h;

    invoke-direct {v1, v0}, Ldm/h;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v1}, Ldm/d;->b(Ldm/g;)V

    return-object v2

    :cond_1
    new-instance v0, Lorg/bouncycastle/tsp/ers/ERSException;

    const-string v1, "digest mismatch for timestamp renewal"

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Lorg/bouncycastle/tsp/ers/ERSException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final b(Luh/o;)Lci/j;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    invoke-virtual {p1}, Luh/o;->u()Loh/g;

    move-result-object p1

    invoke-static {p1}, Luh/V;->B(Ljava/lang/Object;)Luh/V;

    move-result-object p1

    invoke-virtual {p1}, Luh/V;->A()Luh/o;

    move-result-object v0

    invoke-virtual {v0}, Luh/o;->v()Loh/x;

    move-result-object v0

    sget-object v1, LXh/t;->z2:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Luh/V;->A()Luh/o;

    move-result-object p1

    invoke-virtual {p1}, Luh/o;->u()Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    invoke-static {p1}, Lci/j;->y(Ljava/lang/Object;)Lci/j;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lorg/bouncycastle/tsp/TSPException;

    const-string v0, "cannot parse time stamp"

    invoke-direct {p1, v0}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(LQk/p;Ldm/g;Lorg/bouncycastle/tsp/e;)Lorg/bouncycastle/tsp/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/ers/ERSException;,
            Lorg/bouncycastle/tsp/TSPException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ldm/j;->d(LQk/p;Ldm/g;Lorg/bouncycastle/tsp/e;Ljava/math/BigInteger;)Lorg/bouncycastle/tsp/d;

    move-result-object p1

    return-object p1
.end method

.method public d(LQk/p;Ldm/g;Lorg/bouncycastle/tsp/e;Ljava/math/BigInteger;)Lorg/bouncycastle/tsp/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/ers/ERSException;,
            Lorg/bouncycastle/tsp/TSPException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ldm/j;->c:Ldm/c;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p2, v1}, Ldm/c;->m(Ldm/g;Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Ldm/d;

    invoke-direct {v0, p1}, Ldm/d;-><init>(LQk/p;)V

    invoke-virtual {v0, p2}, Ldm/d;->b(Ldm/g;)V

    iget-object p1, p0, Ldm/j;->a:Lci/g;

    invoke-virtual {p1}, Lci/g;->v()Lci/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Ldm/d;->c(Lci/d;)V

    invoke-virtual {v0, p3, p4}, Ldm/d;->g(Lorg/bouncycastle/tsp/e;Ljava/math/BigInteger;)Lorg/bouncycastle/tsp/d;

    move-result-object p1

    return-object p1

    :catch_0
    new-instance p1, Lorg/bouncycastle/tsp/ers/ERSException;

    const-string p2, "attempt to hash renew on invalid data"

    invoke-direct {p1, p2}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Lorg/bouncycastle/tsp/e;)Lorg/bouncycastle/tsp/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ldm/j;->f(Lorg/bouncycastle/tsp/e;Ljava/math/BigInteger;)Lorg/bouncycastle/tsp/d;

    move-result-object p1

    return-object p1
.end method

.method public f(Lorg/bouncycastle/tsp/e;Ljava/math/BigInteger;)Lorg/bouncycastle/tsp/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/ers/ERSException;,
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    invoke-virtual {p0}, Ldm/j;->a()Ldm/d;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Ldm/d;->g(Lorg/bouncycastle/tsp/e;Ljava/math/BigInteger;)Lorg/bouncycastle/tsp/d;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/tsp/ers/ERSException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public g()[Lci/b;
    .locals 2

    iget-object v0, p0, Ldm/j;->a:Lci/g;

    invoke-virtual {v0}, Lci/g;->v()Lci/d;

    move-result-object v0

    invoke-virtual {v0}, Lci/d;->v()[Lci/c;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lci/c;->v()[Lci/b;

    move-result-object v0

    return-object v0
.end method

.method public h()LQk/q;
    .locals 1

    iget-object v0, p0, Ldm/j;->b:LQk/q;

    return-object v0
.end method

.method public i()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ldm/j;->a:Lci/g;

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public j()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    iget-object v0, p0, Ldm/j;->g:Lci/b;

    invoke-virtual {v0}, Lci/b;->A()Luh/o;

    move-result-object v0

    invoke-virtual {v0}, Luh/o;->v()Loh/x;

    move-result-object v1

    sget-object v2, Luh/l;->n8:Loh/x;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Ldm/j;->b(Luh/o;)Lci/j;

    move-result-object v0

    invoke-virtual {v0}, Lci/j;->z()Lci/h;

    move-result-object v0

    invoke-virtual {v0}, Lci/h;->v()[B

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/tsp/ers/ERSException;

    const-string v1, "cannot identify TSTInfo for digest"

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k()Lli/h;
    .locals 1

    iget-object v0, p0, Ldm/j;->d:Ldm/c;

    invoke-virtual {v0}, Ldm/c;->h()Lli/h;

    move-result-object v0

    return-object v0
.end method

.method public l(Ldm/g;Ljava/util/Date;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    iget-object v0, p0, Ldm/j;->c:Ldm/c;

    invoke-virtual {v0, p1, p2}, Ldm/c;->j(Ldm/g;Ljava/util/Date;)Z

    move-result p1

    return p1
.end method

.method public m(Ldm/j;)Z
    .locals 1

    iget-object v0, p0, Ldm/j;->g:Lci/b;

    invoke-virtual {v0}, Lci/b;->A()Luh/o;

    move-result-object v0

    iget-object p1, p1, Ldm/j;->g:Lci/b;

    invoke-virtual {p1}, Lci/b;->A()Luh/o;

    move-result-object p1

    invoke-virtual {v0, p1}, Loh/v;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public n(LQk/p;Ldm/g;Lorg/bouncycastle/tsp/f;)Ldm/j;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/ers/ERSException;,
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ldm/j;->c:Ldm/c;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p2, v1}, Ldm/c;->m(Ldm/g;Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v0, Ldm/d;

    invoke-direct {v0, p1}, Ldm/d;-><init>(LQk/p;)V

    invoke-virtual {v0, p2}, Ldm/d;->b(Ldm/g;)V

    iget-object p1, p0, Ldm/j;->a:Lci/g;

    invoke-virtual {p1}, Lci/g;->v()Lci/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Ldm/d;->c(Lci/d;)V

    invoke-virtual {v0, p3}, Ldm/d;->d(Lorg/bouncycastle/tsp/f;)Ldm/c;

    move-result-object p1

    invoke-virtual {p1}, Ldm/c;->k()Lci/b;

    move-result-object p1

    new-instance p2, Ldm/j;

    iget-object p3, p0, Ldm/j;->a:Lci/g;

    const/4 v0, 0x1

    invoke-virtual {p3, p1, v0}, Lci/g;->u(Lci/b;Z)Lci/g;

    move-result-object p1

    iget-object p3, p0, Ldm/j;->b:LQk/q;

    invoke-direct {p2, p1, p3}, Ldm/j;-><init>(Lci/g;LQk/q;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance p2, Lorg/bouncycastle/tsp/ers/ERSException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    new-instance p2, Lorg/bouncycastle/tsp/ers/ERSException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    new-instance p1, Lorg/bouncycastle/tsp/ers/ERSException;

    const-string p2, "attempt to hash renew on invalid data"

    invoke-direct {p1, p2}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public o(Lorg/bouncycastle/tsp/f;)Ldm/j;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/ers/ERSException;,
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    invoke-virtual {p0}, Ldm/j;->a()Ldm/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldm/d;->d(Lorg/bouncycastle/tsp/f;)Ldm/c;

    move-result-object p1

    invoke-virtual {p1}, Ldm/c;->k()Lci/b;

    move-result-object p1

    :try_start_0
    new-instance v0, Ldm/j;

    iget-object v1, p0, Ldm/j;->a:Lci/g;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lci/g;->u(Lci/b;Z)Lci/g;

    move-result-object p1

    iget-object v1, p0, Ldm/j;->b:LQk/q;

    invoke-direct {v0, p1, v1}, Ldm/j;-><init>(Lci/g;LQk/q;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/tsp/ers/ERSException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public p()Lci/g;
    .locals 1

    iget-object v0, p0, Ldm/j;->a:Lci/g;

    return-object v0
.end method

.method public q(Lorg/bouncycastle/cms/P0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    iget-object v0, p0, Ldm/j;->c:Ldm/c;

    iget-object v1, p0, Ldm/j;->d:Ldm/c;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ldm/j;->g()[Lci/b;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    :try_start_0
    iget-object v2, p0, Ldm/j;->d:Ldm/c;

    new-instance v3, Ldm/e;

    aget-object v4, v0, v1

    invoke-virtual {v4}, Lci/b;->A()Luh/o;

    move-result-object v4

    const-string v5, "DER"

    invoke-virtual {v4, v5}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ldm/e;-><init>([B)V

    iget-object v4, p0, Ldm/j;->d:Ldm/c;

    invoke-virtual {v4}, Ldm/c;->g()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ldm/c;->m(Ldm/g;Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/tsp/TSPException;

    const-string v1, "unable to process previous ArchiveTimeStamps"

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ldm/j;->d:Ldm/c;

    invoke-virtual {v0, p1}, Ldm/c;->l(Lorg/bouncycastle/cms/P0;)V

    return-void
.end method

.method public final r([Lci/c;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/ers/ERSException;,
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_3

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lci/c;->v()[Lci/b;

    move-result-object v2

    aget-object v3, v2, v0

    invoke-virtual {v3}, Lci/b;->v()Lhi/b;

    move-result-object v4

    const/4 v5, 0x1

    :goto_1
    array-length v6, v2

    if-eq v5, v6, :cond_2

    aget-object v6, v2, v5

    invoke-virtual {v6}, Lci/b;->v()Lhi/b;

    move-result-object v7

    invoke-virtual {v4, v7}, Loh/v;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Lci/b;->A()Luh/o;

    move-result-object v7

    invoke-virtual {v7}, Luh/o;->v()Loh/x;

    move-result-object v8

    sget-object v9, Luh/l;->n8:Loh/x;

    invoke-virtual {v8, v9}, Loh/B;->A(Loh/B;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0, v7}, Ldm/j;->b(Luh/o;)Lci/j;

    move-result-object v7

    :try_start_0
    iget-object v8, p0, Ldm/j;->b:LQk/q;

    invoke-interface {v8, v4}, LQk/q;->a(Lhi/b;)LQk/p;

    move-result-object v8

    new-instance v9, Ldm/c;

    invoke-direct {v9, v6, v8}, Ldm/c;-><init>(Lci/b;LQk/p;)V

    new-instance v8, Ldm/e;

    invoke-virtual {v3}, Lci/b;->A()Luh/o;

    move-result-object v3

    const-string v10, "DER"

    invoke-virtual {v3, v10}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v8, v3}, Ldm/e;-><init>([B)V

    invoke-virtual {v7}, Lci/j;->x()Loh/n;

    move-result-object v3

    invoke-virtual {v3}, Loh/n;->I()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v9, v8, v3}, Ldm/c;->m(Ldm/g;Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    move-object v3, v6

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/tsp/ers/ERSException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid timestamp renewal found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p1, Lorg/bouncycastle/tsp/TSPException;

    const-string v0, "cannot identify TSTInfo"

    invoke-direct {p1, v0}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/tsp/ers/ERSException;

    const-string v0, "invalid digest algorithm in chain"

    invoke-direct {p1, v0}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public s(Ldm/g;Ljava/util/Date;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    iget-object v0, p0, Ldm/j;->c:Ldm/c;

    invoke-virtual {v0, p1, p2}, Ldm/c;->m(Ldm/g;Ljava/util/Date;)V

    return-void
.end method

.method public t(Z[BLjava/util/Date;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    iget-object v0, p0, Ldm/j;->c:Ldm/c;

    invoke-virtual {v0, p1, p2, p3}, Ldm/c;->n(Z[BLjava/util/Date;)V

    return-void
.end method
