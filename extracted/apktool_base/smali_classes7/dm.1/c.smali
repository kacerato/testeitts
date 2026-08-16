.class public Ldm/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lci/b;

.field public final b:LQk/p;

.field public final c:Lorg/bouncycastle/tsp/h;

.field public final d:[B

.field public e:Ldm/p;


# direct methods
.method public constructor <init>(Lci/b;LQk/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldm/a;

    invoke-direct {v0}, Ldm/a;-><init>()V

    iput-object v0, p0, Ldm/c;->e:Ldm/p;

    const/4 v0, 0x0

    iput-object v0, p0, Ldm/c;->d:[B

    :try_start_0
    iput-object p1, p0, Ldm/c;->a:Lci/b;

    new-instance v0, Lorg/bouncycastle/tsp/h;

    invoke-virtual {p1}, Lci/b;->A()Luh/o;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/tsp/h;-><init>(Luh/o;)V

    iput-object v0, p0, Ldm/c;->c:Lorg/bouncycastle/tsp/h;

    iput-object p2, p0, Ldm/c;->b:LQk/p;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/tsp/ers/ERSException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>(Lci/b;LQk/q;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldm/a;

    invoke-direct {v0}, Ldm/a;-><init>()V

    iput-object v0, p0, Ldm/c;->e:Ldm/p;

    const/4 v0, 0x0

    iput-object v0, p0, Ldm/c;->d:[B

    :try_start_0
    iput-object p1, p0, Ldm/c;->a:Lci/b;

    new-instance v0, Lorg/bouncycastle/tsp/h;

    invoke-virtual {p1}, Lci/b;->A()Luh/o;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/h;-><init>(Luh/o;)V

    iput-object v0, p0, Ldm/c;->c:Lorg/bouncycastle/tsp/h;

    invoke-virtual {p1}, Lci/b;->v()Lhi/b;

    move-result-object p1

    invoke-interface {p2, p1}, LQk/q;->a(Lhi/b;)LQk/p;

    move-result-object p1

    iput-object p1, p0, Ldm/c;->b:LQk/p;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance p2, Lorg/bouncycastle/tsp/ers/ERSException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    new-instance p2, Lorg/bouncycastle/tsp/ers/ERSException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
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
    invoke-static {p1}, Lci/b;->y(Ljava/lang/Object;)Lci/b;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ldm/c;-><init>(Lci/b;LQk/q;)V

    return-void
.end method

.method public constructor <init>([BLci/b;LQk/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldm/a;

    invoke-direct {v0}, Ldm/a;-><init>()V

    iput-object v0, p0, Ldm/c;->e:Ldm/p;

    iput-object p1, p0, Ldm/c;->d:[B

    :try_start_0
    iput-object p2, p0, Ldm/c;->a:Lci/b;

    new-instance p1, Lorg/bouncycastle/tsp/h;

    invoke-virtual {p2}, Lci/b;->A()Luh/o;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bouncycastle/tsp/h;-><init>(Luh/o;)V

    iput-object p1, p0, Ldm/c;->c:Lorg/bouncycastle/tsp/h;

    invoke-virtual {p2}, Lci/b;->v()Lhi/b;

    move-result-object p1

    invoke-interface {p3, p1}, LQk/q;->a(Lhi/b;)LQk/p;

    move-result-object p1

    iput-object p1, p0, Ldm/c;->b:LQk/p;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

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
.end method

.method public static c(Lorg/bouncycastle/tsp/h;LQk/q;)Ldm/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    new-instance v0, Ldm/c;

    new-instance v1, Lci/b;

    invoke-virtual {p0}, Lorg/bouncycastle/tsp/h;->l()Lorg/bouncycastle/cms/O;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/cms/O;->s()Luh/o;

    move-result-object p0

    invoke-direct {v1, p0}, Lci/b;-><init>(Luh/o;)V

    invoke-direct {v0, v1, p1}, Ldm/c;-><init>(Lci/b;LQk/q;)V

    return-object v0
.end method


# virtual methods
.method public a(Z[BLQk/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;
        }
    .end annotation

    iget-object v0, p0, Ldm/c;->a:Lci/b;

    invoke-virtual {v0}, Lci/b;->z()[Lci/i;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez p1, :cond_0

    invoke-virtual {v0, p2}, Lci/i;->u([B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lci/i;->x()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    invoke-virtual {v0}, Lci/i;->y()[[B

    move-result-object p1

    invoke-static {p3, p1}, Ldm/q;->e(LQk/p;[[B)[B

    move-result-object p1

    invoke-static {p2, p1}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;

    const-string p2, "object hash not found"

    invoke-direct {p1, p2}, Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, p0, Ldm/c;->c:Lorg/bouncycastle/tsp/h;

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/h;->i()Lorg/bouncycastle/tsp/j;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/j;->h()[B

    move-result-object p1

    invoke-static {p2, p1}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    new-instance p1, Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;

    const-string p2, "object hash not found in wrapped timestamp"

    invoke-direct {p1, p2}, Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lorg/bouncycastle/tsp/h;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/h;->i()Lorg/bouncycastle/tsp/j;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/j;->h()[B

    move-result-object p1

    invoke-static {p2, p1}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;

    const-string p2, "timestamp hash does not match root"

    invoke-direct {p1, p2}, Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public d()Lhi/b;
    .locals 1

    iget-object v0, p0, Ldm/c;->a:Lci/b;

    invoke-virtual {v0}, Lci/b;->v()Lhi/b;

    move-result-object v0

    return-object v0
.end method

.method public e()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ldm/c;->a:Lci/b;

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/Date;
    .locals 1

    invoke-virtual {p0}, Ldm/c;->h()Lli/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lli/h;->g()Ljava/util/Date;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Ldm/c;->c:Lorg/bouncycastle/tsp/h;

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/h;->i()Lorg/bouncycastle/tsp/j;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/j;->d()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public h()Lli/h;
    .locals 2

    iget-object v0, p0, Ldm/c;->c:Lorg/bouncycastle/tsp/h;

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/h;->c()Lorg/bouncycastle/util/t;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ldm/c;->c:Lorg/bouncycastle/tsp/h;

    invoke-virtual {v1}, Lorg/bouncycastle/tsp/h;->f()Lorg/bouncycastle/cms/K0;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/util/t;->a(Lorg/bouncycastle/util/r;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lli/h;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Lorg/bouncycastle/tsp/h;
    .locals 1

    iget-object v0, p0, Ldm/c;->c:Lorg/bouncycastle/tsp/h;

    return-object v0
.end method

.method public j(Ldm/g;Ljava/util/Date;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    iget-object v0, p0, Ldm/c;->c:Lorg/bouncycastle/tsp/h;

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/h;->i()Lorg/bouncycastle/tsp/j;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/j;->d()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ldm/c;->m(Ldm/g;Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p1, Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;

    const-string p2, "timestamp generation time is in the future"

    invoke-direct {p1, p2}, Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k()Lci/b;
    .locals 1

    iget-object v0, p0, Ldm/c;->a:Lci/b;

    return-object v0
.end method

.method public l(Lorg/bouncycastle/cms/P0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    iget-object v0, p0, Ldm/c;->c:Lorg/bouncycastle/tsp/h;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/tsp/h;->m(Lorg/bouncycastle/cms/P0;)V

    return-void
.end method

.method public m(Ldm/g;Ljava/util/Date;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    instance-of v0, p1, Ldm/h;

    iget-object v1, p0, Ldm/c;->b:LQk/p;

    iget-object v2, p0, Ldm/c;->d:[B

    invoke-interface {p1, v1, v2}, Ldm/g;->a(LQk/p;[B)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Ldm/c;->n(Z[BLjava/util/Date;)V

    return-void
.end method

.method public n(Z[BLjava/util/Date;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    iget-object v0, p0, Ldm/c;->c:Lorg/bouncycastle/tsp/h;

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/h;->i()Lorg/bouncycastle/tsp/j;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/j;->d()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Ldm/c;->b:LQk/p;

    invoke-virtual {p0, p1, p2, p3}, Ldm/c;->a(Z[BLQk/p;)V

    iget-object p1, p0, Ldm/c;->a:Lci/b;

    invoke-virtual {p1}, Lci/b;->z()[Lci/i;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ldm/c;->e:Ldm/p;

    iget-object p2, p0, Ldm/c;->b:LQk/p;

    iget-object p3, p0, Ldm/c;->a:Lci/b;

    invoke-virtual {p3}, Lci/b;->z()[Lci/i;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ldm/p;->a(LQk/p;[Lci/i;)[B

    move-result-object p2

    :cond_0
    iget-object p1, p0, Ldm/c;->c:Lorg/bouncycastle/tsp/h;

    invoke-virtual {p0, p1, p2}, Ldm/c;->b(Lorg/bouncycastle/tsp/h;[B)V

    return-void

    :cond_1
    new-instance p1, Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;

    const-string p2, "timestamp generation time is in the future"

    invoke-direct {p1, p2}, Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
