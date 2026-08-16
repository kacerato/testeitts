.class public final LLg/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/w;


# static fields
.field public static final f:I = 0x14


# instance fields
.field public final a:Lokhttp3/z;

.field public final b:Z

.field public volatile c:LKg/f;

.field public d:Ljava/lang/Object;

.field public volatile e:Z


# direct methods
.method public constructor <init>(Lokhttp3/z;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LLg/j;->a:Lokhttp3/z;

    iput-boolean p2, p0, LLg/j;->b:Z

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/w$a;)Lokhttp3/E;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lokhttp3/w$a;->b0()Lokhttp3/C;

    move-result-object v0

    check-cast p1, LLg/g;

    invoke-virtual {p1}, LLg/g;->call()Lokhttp3/e;

    move-result-object v7

    invoke-virtual {p1}, LLg/g;->i()Lokhttp3/r;

    move-result-object v8

    new-instance v9, LKg/f;

    iget-object v1, p0, LLg/j;->a:Lokhttp3/z;

    invoke-virtual {v1}, Lokhttp3/z;->h()Lokhttp3/k;

    move-result-object v2

    invoke-virtual {v0}, Lokhttp3/C;->k()Lokhttp3/v;

    move-result-object v1

    invoke-virtual {p0, v1}, LLg/j;->c(Lokhttp3/v;)Lokhttp3/a;

    move-result-object v3

    iget-object v6, p0, LLg/j;->d:Ljava/lang/Object;

    move-object v1, v9

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, LKg/f;-><init>(Lokhttp3/k;Lokhttp3/a;Lokhttp3/e;Lokhttp3/r;Ljava/lang/Object;)V

    iput-object v9, p0, LLg/j;->c:LKg/f;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v2, v10

    move-object v1, v11

    :goto_0
    iget-boolean v3, p0, LLg/j;->e:Z

    if-nez v3, :cond_8

    :try_start_0
    invoke-virtual {p1, v0, v9, v11, v11}, LLg/g;->k(Lokhttp3/C;LKg/f;LLg/c;LKg/c;)Lokhttp3/E;

    move-result-object v0
    :try_end_0
    .catch Lokhttp3/internal/connection/RouteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lokhttp3/E;->r()Lokhttp3/E$a;

    move-result-object v0

    invoke-virtual {v1}, Lokhttp3/E;->r()Lokhttp3/E$a;

    move-result-object v1

    invoke-virtual {v1, v11}, Lokhttp3/E$a;->b(Lokhttp3/F;)Lokhttp3/E$a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/E$a;->c()Lokhttp3/E;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/E$a;->m(Lokhttp3/E;)Lokhttp3/E$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/E$a;->c()Lokhttp3/E;

    move-result-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v9}, LKg/f;->o()Lokhttp3/G;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LLg/j;->d(Lokhttp3/E;Lokhttp3/G;)Lokhttp3/C;

    move-result-object v12
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v12, :cond_1

    invoke-virtual {v9}, LKg/f;->k()V

    return-object v0

    :cond_1
    invoke-virtual {v0}, Lokhttp3/E;->c()Lokhttp3/F;

    move-result-object v1

    invoke-static {v1}, LGg/c;->g(Ljava/io/Closeable;)V

    add-int/lit8 v13, v2, 0x1

    const/16 v1, 0x14

    if-gt v13, v1, :cond_5

    invoke-virtual {v12}, Lokhttp3/C;->a()Lokhttp3/D;

    move-result-object v1

    instance-of v1, v1, LLg/l;

    if-nez v1, :cond_4

    invoke-virtual {v12}, Lokhttp3/C;->k()Lokhttp3/v;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LLg/j;->i(Lokhttp3/E;Lokhttp3/v;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v9}, LKg/f;->k()V

    new-instance v9, LKg/f;

    iget-object v1, p0, LLg/j;->a:Lokhttp3/z;

    invoke-virtual {v1}, Lokhttp3/z;->h()Lokhttp3/k;

    move-result-object v2

    invoke-virtual {v12}, Lokhttp3/C;->k()Lokhttp3/v;

    move-result-object v1

    invoke-virtual {p0, v1}, LLg/j;->c(Lokhttp3/v;)Lokhttp3/a;

    move-result-object v3

    iget-object v6, p0, LLg/j;->d:Ljava/lang/Object;

    move-object v1, v9

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, LKg/f;-><init>(Lokhttp3/k;Lokhttp3/a;Lokhttp3/e;Lokhttp3/r;Ljava/lang/Object;)V

    iput-object v9, p0, LLg/j;->c:LKg/f;

    goto :goto_1

    :cond_2
    invoke-virtual {v9}, LKg/f;->c()LLg/c;

    move-result-object v1

    if-nez v1, :cond_3

    :goto_1
    move-object v1, v0

    move-object v0, v12

    move v2, v13

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing the body of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-virtual {v9}, LKg/f;->k()V

    new-instance p1, Ljava/net/HttpRetryException;

    const-string v1, "Cannot retry streamed HTTP body"

    invoke-virtual {v0}, Lokhttp3/E;->g()I

    move-result v0

    invoke-direct {p1, v1, v0}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_5
    invoke-virtual {v9}, LKg/f;->k()V

    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many follow-up requests: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    invoke-virtual {v9}, LKg/f;->k()V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_2
    instance-of v4, v3, Lokhttp3/internal/http2/ConnectionShutdownException;

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v3, v9, v4, v0}, LLg/j;->g(Ljava/io/IOException;LKg/f;ZLokhttp3/C;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto/16 :goto_0

    :cond_6
    throw v3

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Lokhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v4

    invoke-virtual {p0, v4, v9, v10, v0}, LLg/j;->g(Ljava/io/IOException;LKg/f;ZLokhttp3/C;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v3}, Lokhttp3/internal/connection/RouteException;->getFirstConnectException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    invoke-virtual {v9, v11}, LKg/f;->q(Ljava/io/IOException;)V

    invoke-virtual {v9}, LKg/f;->k()V

    throw p1

    :cond_8
    invoke-virtual {v9}, LKg/f;->k()V

    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LLg/j;->e:Z

    iget-object v0, p0, LLg/j;->c:LKg/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LKg/f;->b()V

    :cond_0
    return-void
.end method

.method public final c(Lokhttp3/v;)Lokhttp3/a;
    .locals 14

    invoke-virtual {p1}, Lokhttp3/v;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLg/j;->a:Lokhttp3/z;

    invoke-virtual {v0}, Lokhttp3/z;->D()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iget-object v1, p0, LLg/j;->a:Lokhttp3/z;

    invoke-virtual {v1}, Lokhttp3/z;->p()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    iget-object v2, p0, LLg/j;->a:Lokhttp3/z;

    invoke-virtual {v2}, Lokhttp3/z;->f()Lokhttp3/g;

    move-result-object v2

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v6, v0

    move-object v7, v6

    move-object v8, v7

    :goto_0
    new-instance v0, Lokhttp3/a;

    invoke-virtual {p1}, Lokhttp3/v;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lokhttp3/v;->E()I

    move-result v3

    iget-object p1, p0, LLg/j;->a:Lokhttp3/z;

    invoke-virtual {p1}, Lokhttp3/z;->l()Lokhttp3/q;

    move-result-object v4

    iget-object p1, p0, LLg/j;->a:Lokhttp3/z;

    invoke-virtual {p1}, Lokhttp3/z;->C()Ljavax/net/SocketFactory;

    move-result-object v5

    iget-object p1, p0, LLg/j;->a:Lokhttp3/z;

    invoke-virtual {p1}, Lokhttp3/z;->y()Lokhttp3/b;

    move-result-object v9

    iget-object p1, p0, LLg/j;->a:Lokhttp3/z;

    invoke-virtual {p1}, Lokhttp3/z;->x()Ljava/net/Proxy;

    move-result-object v10

    iget-object p1, p0, LLg/j;->a:Lokhttp3/z;

    invoke-virtual {p1}, Lokhttp3/z;->w()Ljava/util/List;

    move-result-object v11

    iget-object p1, p0, LLg/j;->a:Lokhttp3/z;

    invoke-virtual {p1}, Lokhttp3/z;->i()Ljava/util/List;

    move-result-object v12

    iget-object p1, p0, LLg/j;->a:Lokhttp3/z;

    invoke-virtual {p1}, Lokhttp3/z;->z()Ljava/net/ProxySelector;

    move-result-object v13

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lokhttp3/a;-><init>(Ljava/lang/String;ILokhttp3/q;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/g;Lokhttp3/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v0
.end method

.method public final d(Lokhttp3/E;Lokhttp3/G;)Lokhttp3/C;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lokhttp3/E;->g()I

    move-result v0

    invoke-virtual {p1}, Lokhttp3/E;->w()Lokhttp3/C;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/C;->g()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x133

    const-string v3, "GET"

    const/4 v4, 0x0

    if-eq v0, v2, :cond_c

    const/16 v2, 0x134

    if-eq v0, v2, :cond_c

    const/16 v2, 0x191

    if-eq v0, v2, :cond_b

    const/16 v2, 0x1f7

    if-eq v0, v2, :cond_8

    const/16 v2, 0x197

    if-eq v0, v2, :cond_5

    const/16 p2, 0x198

    if-eq v0, p2, :cond_0

    packed-switch v0, :pswitch_data_0

    return-object v4

    :cond_0
    iget-object v0, p0, LLg/j;->a:Lokhttp3/z;

    invoke-virtual {v0}, Lokhttp3/z;->B()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v4

    :cond_1
    invoke-virtual {p1}, Lokhttp3/E;->w()Lokhttp3/C;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/C;->a()Lokhttp3/D;

    move-result-object v0

    instance-of v0, v0, LLg/l;

    if-eqz v0, :cond_2

    return-object v4

    :cond_2
    invoke-virtual {p1}, Lokhttp3/E;->t()Lokhttp3/E;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lokhttp3/E;->t()Lokhttp3/E;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/E;->g()I

    move-result v0

    if-ne v0, p2, :cond_3

    return-object v4

    :cond_3
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, LLg/j;->h(Lokhttp3/E;I)I

    move-result p2

    if-lez p2, :cond_4

    return-object v4

    :cond_4
    invoke-virtual {p1}, Lokhttp3/E;->w()Lokhttp3/C;

    move-result-object p1

    return-object p1

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lokhttp3/G;->b()Ljava/net/Proxy;

    move-result-object v0

    goto :goto_0

    :cond_6
    iget-object v0, p0, LLg/j;->a:Lokhttp3/z;

    invoke-virtual {v0}, Lokhttp3/z;->x()Ljava/net/Proxy;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, LLg/j;->a:Lokhttp3/z;

    invoke-virtual {v0}, Lokhttp3/z;->y()Lokhttp3/b;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lokhttp3/b;->a(Lokhttp3/G;Lokhttp3/E;)Lokhttp3/C;

    move-result-object p1

    return-object p1

    :cond_7
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    invoke-virtual {p1}, Lokhttp3/E;->t()Lokhttp3/E;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Lokhttp3/E;->t()Lokhttp3/E;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/E;->g()I

    move-result p2

    if-ne p2, v2, :cond_9

    return-object v4

    :cond_9
    const p2, 0x7fffffff

    invoke-virtual {p0, p1, p2}, LLg/j;->h(Lokhttp3/E;I)I

    move-result p2

    if-nez p2, :cond_a

    invoke-virtual {p1}, Lokhttp3/E;->w()Lokhttp3/C;

    move-result-object p1

    return-object p1

    :cond_a
    return-object v4

    :cond_b
    iget-object v0, p0, LLg/j;->a:Lokhttp3/z;

    invoke-virtual {v0}, Lokhttp3/z;->c()Lokhttp3/b;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lokhttp3/b;->a(Lokhttp3/G;Lokhttp3/E;)Lokhttp3/C;

    move-result-object p1

    return-object p1

    :cond_c
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    const-string p2, "HEAD"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    return-object v4

    :cond_d
    :pswitch_0
    iget-object p2, p0, LLg/j;->a:Lokhttp3/z;

    invoke-virtual {p2}, Lokhttp3/z;->n()Z

    move-result p2

    if-nez p2, :cond_e

    return-object v4

    :cond_e
    const-string p2, "Location"

    invoke-virtual {p1, p2}, Lokhttp3/E;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_f

    return-object v4

    :cond_f
    invoke-virtual {p1}, Lokhttp3/E;->w()Lokhttp3/C;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/C;->k()Lokhttp3/v;

    move-result-object v0

    invoke-virtual {v0, p2}, Lokhttp3/v;->O(Ljava/lang/String;)Lokhttp3/v;

    move-result-object p2

    if-nez p2, :cond_10

    return-object v4

    :cond_10
    invoke-virtual {p2}, Lokhttp3/v;->P()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/E;->w()Lokhttp3/C;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/C;->k()Lokhttp3/v;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/v;->P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, LLg/j;->a:Lokhttp3/z;

    invoke-virtual {v0}, Lokhttp3/z;->o()Z

    move-result v0

    if-nez v0, :cond_11

    return-object v4

    :cond_11
    invoke-virtual {p1}, Lokhttp3/E;->w()Lokhttp3/C;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/C;->h()Lokhttp3/C$a;

    move-result-object v0

    invoke-static {v1}, LLg/f;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {v1}, LLg/f;->d(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1}, LLg/f;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual {v0, v3, v4}, Lokhttp3/C$a;->j(Ljava/lang/String;Lokhttp3/D;)Lokhttp3/C$a;

    goto :goto_1

    :cond_12
    if-eqz v2, :cond_13

    invoke-virtual {p1}, Lokhttp3/E;->w()Lokhttp3/C;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/C;->a()Lokhttp3/D;

    move-result-object v4

    :cond_13
    invoke-virtual {v0, v1, v4}, Lokhttp3/C$a;->j(Ljava/lang/String;Lokhttp3/D;)Lokhttp3/C$a;

    :goto_1
    if-nez v2, :cond_14

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Lokhttp3/C$a;->n(Ljava/lang/String;)Lokhttp3/C$a;

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Lokhttp3/C$a;->n(Ljava/lang/String;)Lokhttp3/C$a;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lokhttp3/C$a;->n(Ljava/lang/String;)Lokhttp3/C$a;

    :cond_14
    invoke-virtual {p0, p1, p2}, LLg/j;->i(Lokhttp3/E;Lokhttp3/v;)Z

    move-result p1

    if-nez p1, :cond_15

    const-string p1, "Authorization"

    invoke-virtual {v0, p1}, Lokhttp3/C$a;->n(Ljava/lang/String;)Lokhttp3/C$a;

    :cond_15
    invoke-virtual {v0, p2}, Lokhttp3/C$a;->s(Lokhttp3/v;)Lokhttp3/C$a;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/C$a;->b()Lokhttp3/C;

    move-result-object p1

    return-object p1

    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, LLg/j;->e:Z

    return v0
.end method

.method public final f(Ljava/io/IOException;Z)Z
    .locals 3

    instance-of v0, p1, Ljava/net/ProtocolException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    instance-of p2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/security/cert/CertificateException;

    if-eqz p2, :cond_3

    return v1

    :cond_3
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p1, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method public final g(Ljava/io/IOException;LKg/f;ZLokhttp3/C;)Z
    .locals 2

    invoke-virtual {p2, p1}, LKg/f;->q(Ljava/io/IOException;)V

    iget-object v0, p0, LLg/j;->a:Lokhttp3/z;

    invoke-virtual {v0}, Lokhttp3/z;->B()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p4}, Lokhttp3/C;->a()Lokhttp3/D;

    move-result-object p4

    instance-of p4, p4, LLg/l;

    if-eqz p4, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1, p3}, LLg/j;->f(Ljava/io/IOException;Z)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p2}, LKg/f;->h()Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public final h(Lokhttp3/E;I)I
    .locals 1

    const-string v0, "Retry-After"

    invoke-virtual {p1, v0}, Lokhttp3/E;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    :cond_0
    const-string p2, "\\d+"

    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    const p1, 0x7fffffff

    return p1
.end method

.method public final i(Lokhttp3/E;Lokhttp3/v;)Z
    .locals 2

    invoke-virtual {p1}, Lokhttp3/E;->w()Lokhttp3/C;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/C;->k()Lokhttp3/v;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/v;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lokhttp3/v;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lokhttp3/v;->E()I

    move-result v0

    invoke-virtual {p2}, Lokhttp3/v;->E()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lokhttp3/v;->P()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lokhttp3/v;->P()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public j(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, LLg/j;->d:Ljava/lang/Object;

    return-void
.end method

.method public k()LKg/f;
    .locals 1

    iget-object v0, p0, LLg/j;->c:LKg/f;

    return-object v0
.end method
