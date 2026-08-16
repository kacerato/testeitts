.class public Lcm/c;
.super Lorg/bouncycastle/cms/t;
.source "SourceFile"


# instance fields
.field public c:Luh/d0;

.field public d:Lcm/f;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/t;-><init>(Ljava/io/InputStream;)V

    iget-object p1, p0, Lorg/bouncycastle/cms/t;->a:Luh/p;

    invoke-virtual {p0, p1}, Lcm/c;->k(Luh/p;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lcm/c;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public b(LQk/p;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lcm/c;->d:Lcm/f;

    invoke-virtual {v0, p1}, Lcm/f;->a(LQk/p;)[B

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcm/c;->c:Luh/d0;

    invoke-virtual {v0}, Luh/d0;->a()Loh/z;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/c;->c:Luh/d0;

    invoke-virtual {v0}, Luh/d0;->a()Loh/z;

    move-result-object v0

    invoke-interface {v0}, Loh/z;->a()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Ljava/net/URI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    iget-object v0, p0, Lcm/c;->c:Luh/d0;

    invoke-virtual {v0}, Luh/d0;->c()Loh/q;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/net/URI;

    invoke-virtual {v0}, Loh/q;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/c;->d:Lcm/f;

    invoke-virtual {v0}, Lcm/f;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/c;->d:Lcm/f;

    invoke-virtual {v0}, Lcm/f;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(LQk/q;)LQk/p;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcm/c;->l()V
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcm/c;->d:Lcm/f;

    invoke-virtual {v0, p1}, Lcm/f;->e(LQk/q;)LQk/p;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/operator/OperatorCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to extract algorithm ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public h()Luh/b;
    .locals 1

    iget-object v0, p0, Lcm/c;->d:Lcm/f;

    invoke-virtual {v0}, Lcm/f;->f()Luh/b;

    move-result-object v0

    return-object v0
.end method

.method public i()[Lorg/bouncycastle/tsp/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p0}, Lcm/c;->l()V

    iget-object v0, p0, Lcm/c;->d:Lcm/f;

    invoke-virtual {v0}, Lcm/f;->h()[Lorg/bouncycastle/tsp/h;

    move-result-object v0

    return-object v0
.end method

.method public j(LQk/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lcm/c;->d:Lcm/f;

    invoke-virtual {v0, p1}, Lcm/f;->j(LQk/p;)V

    return-void
.end method

.method public final k(Luh/p;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Luh/l;->v8:Loh/x;

    invoke-virtual {p1}, Luh/p;->b()Loh/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Luh/p;->a(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Luh/d0;->d(Ljava/lang/Object;)Luh/d0;

    move-result-object p1

    iput-object p1, p0, Lcm/c;->c:Luh/d0;

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed content - type must be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parsing exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public final l()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcm/c;->d:Lcm/f;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcm/c;->c()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lfm/d;->a(Ljava/io/InputStream;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v0, Lcm/f;

    iget-object v1, p0, Lcm/c;->c:Luh/d0;

    invoke-direct {v0, v1}, Lcm/f;-><init>(Luh/d0;)V

    iput-object v0, p0, Lcm/c;->d:Lcm/f;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :goto_1
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to parse evidence block: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public m(LQk/q;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/cms/ImprintDigestInvalidException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p0}, Lcm/c;->l()V

    iget-object v0, p0, Lcm/c;->d:Lcm/f;

    invoke-virtual {v0, p1, p2}, Lcm/f;->k(LQk/q;[B)V

    return-void
.end method

.method public n(LQk/q;[BLorg/bouncycastle/tsp/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/cms/ImprintDigestInvalidException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p0}, Lcm/c;->l()V

    iget-object v0, p0, Lcm/c;->d:Lcm/f;

    invoke-virtual {v0, p1, p2, p3}, Lcm/f;->l(LQk/q;[BLorg/bouncycastle/tsp/h;)V

    return-void
.end method
