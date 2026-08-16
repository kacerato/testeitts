.class public Lcm/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Luh/c0;

.field public b:Luh/o;

.field public c:Lcm/f;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "Malformed content: "

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v1, Loh/r;

    invoke-direct {v1, p1}, Loh/r;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Loh/r;->k()Loh/B;

    move-result-object p1

    invoke-static {p1}, Luh/o;->w(Ljava/lang/Object;)Luh/o;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcm/a;->l(Luh/o;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Luh/o;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcm/a;->l(Luh/o;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lcm/a;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/bouncycastle/tsp/h;)Lcm/a;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lcm/a;->c:Lcm/f;

    invoke-virtual {v0}, Lcm/f;->i()[Luh/a0;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Luh/a0;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    new-instance v2, Luh/a0;

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/h;->l()Lorg/bouncycastle/cms/O;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/cms/O;->s()Luh/o;

    move-result-object p1

    invoke-direct {v2, p1}, Luh/a0;-><init>(Luh/o;)V

    aput-object v2, v1, v0

    new-instance p1, Lcm/a;

    new-instance v0, Luh/o;

    sget-object v2, Luh/l;->v8:Loh/x;

    new-instance v3, Luh/c0;

    iget-object v4, p0, Lcm/a;->a:Luh/c0;

    invoke-virtual {v4}, Luh/c0;->x()Loh/q;

    move-result-object v4

    iget-object v5, p0, Lcm/a;->a:Luh/c0;

    invoke-virtual {v5}, Luh/c0;->z()Luh/G;

    move-result-object v5

    iget-object v6, p0, Lcm/a;->a:Luh/c0;

    invoke-virtual {v6}, Luh/c0;->u()Loh/y;

    move-result-object v6

    new-instance v7, Luh/w;

    new-instance v8, Luh/b0;

    invoke-direct {v8, v1}, Luh/b0;-><init>([Luh/a0;)V

    invoke-direct {v7, v8}, Luh/w;-><init>(Luh/b0;)V

    invoke-direct {v3, v4, v5, v6, v7}, Luh/c0;-><init>(Loh/q;Luh/G;Loh/y;Luh/w;)V

    invoke-direct {v0, v2, v3}, Luh/o;-><init>(Loh/x;Loh/g;)V

    invoke-direct {p1, v0}, Lcm/a;-><init>(Luh/o;)V

    return-object p1
.end method

.method public b(LQk/p;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lcm/a;->c:Lcm/f;

    invoke-virtual {v0, p1}, Lcm/f;->a(LQk/p;)[B

    move-result-object p1

    return-object p1
.end method

.method public c()[B
    .locals 1

    iget-object v0, p0, Lcm/a;->a:Luh/c0;

    invoke-virtual {v0}, Luh/c0;->u()Loh/y;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/a;->a:Luh/c0;

    invoke-virtual {v0}, Luh/c0;->u()Loh/y;

    move-result-object v0

    invoke-virtual {v0}, Loh/y;->H()[B

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

    iget-object v0, p0, Lcm/a;->a:Luh/c0;

    invoke-virtual {v0}, Luh/c0;->x()Loh/q;

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

.method public e()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcm/a;->b:Luh/o;

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/a;->c:Lcm/f;

    invoke-virtual {v0}, Lcm/f;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/a;->c:Lcm/f;

    invoke-virtual {v0}, Lcm/f;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(LQk/q;)LQk/p;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    iget-object v0, p0, Lcm/a;->c:Lcm/f;

    invoke-virtual {v0, p1}, Lcm/f;->e(LQk/q;)LQk/p;

    move-result-object p1

    return-object p1
.end method

.method public i()Luh/b;
    .locals 1

    iget-object v0, p0, Lcm/a;->c:Lcm/f;

    invoke-virtual {v0}, Lcm/f;->f()Luh/b;

    move-result-object v0

    return-object v0
.end method

.method public j()[Lorg/bouncycastle/tsp/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lcm/a;->c:Lcm/f;

    invoke-virtual {v0}, Lcm/f;->h()[Lorg/bouncycastle/tsp/h;

    move-result-object v0

    return-object v0
.end method

.method public k(LQk/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lcm/a;->c:Lcm/f;

    invoke-virtual {v0, p1}, Lcm/f;->j(LQk/p;)V

    return-void
.end method

.method public final l(Luh/o;)V
    .locals 3

    iput-object p1, p0, Lcm/a;->b:Luh/o;

    sget-object v0, Luh/l;->v8:Loh/x;

    invoke-virtual {p1}, Luh/o;->v()Loh/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Luh/o;->u()Loh/g;

    move-result-object p1

    invoke-static {p1}, Luh/c0;->y(Ljava/lang/Object;)Luh/c0;

    move-result-object p1

    iput-object p1, p0, Lcm/a;->a:Luh/c0;

    new-instance v0, Lcm/f;

    invoke-direct {v0, p1}, Lcm/f;-><init>(Luh/c0;)V

    iput-object v0, p0, Lcm/a;->c:Lcm/f;

    return-void

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
.end method

.method public m(LQk/q;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/cms/ImprintDigestInvalidException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lcm/a;->c:Lcm/f;

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

    iget-object v0, p0, Lcm/a;->c:Lcm/f;

    invoke-virtual {v0, p1, p2, p3}, Lcm/f;->l(LQk/q;[BLorg/bouncycastle/tsp/h;)V

    return-void
.end method
