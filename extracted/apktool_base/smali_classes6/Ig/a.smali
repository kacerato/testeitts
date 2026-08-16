.class public final LIg/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/w;


# instance fields
.field public final a:LIg/f;


# direct methods
.method public constructor <init>(LIg/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LIg/a;->a:LIg/f;

    return-void
.end method

.method public static c(Lokhttp3/u;Lokhttp3/u;)Lokhttp3/u;
    .locals 7

    new-instance v0, Lokhttp3/u$a;

    invoke-direct {v0}, Lokhttp3/u$a;-><init>()V

    invoke-virtual {p0}, Lokhttp3/u;->l()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, Lokhttp3/u;->g(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Lokhttp3/u;->n(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Warning"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v4}, LIg/a;->d(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v4}, LIg/a;->e(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1, v4}, Lokhttp3/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    :cond_1
    sget-object v6, LGg/a;->a:LGg/a;

    invoke-virtual {v6, v0, v4, v5}, LGg/a;->b(Lokhttp3/u$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lokhttp3/u;->l()I

    move-result p0

    :goto_2
    if-ge v2, p0, :cond_5

    invoke-virtual {p1, v2}, Lokhttp3/u;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LIg/a;->d(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v1}, LIg/a;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, LGg/a;->a:LGg/a;

    invoke-virtual {p1, v2}, Lokhttp3/u;->n(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4}, LGg/a;->b(Lokhttp3/u$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lokhttp3/u$a;->h()Lokhttp3/u;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Content-Length"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Content-Encoding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Content-Type"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static f(Lokhttp3/E;)Lokhttp3/E;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lokhttp3/E;->c()Lokhttp3/F;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lokhttp3/E;->r()Lokhttp3/E$a;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokhttp3/E$a;->b(Lokhttp3/F;)Lokhttp3/E$a;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/E$a;->c()Lokhttp3/E;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public a(Lokhttp3/w$a;)Lokhttp3/E;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LIg/a;->a:LIg/f;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lokhttp3/w$a;->b0()Lokhttp3/C;

    move-result-object v1

    invoke-interface {v0, v1}, LIg/f;->c(Lokhttp3/C;)Lokhttp3/E;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, LIg/c$a;

    invoke-interface {p1}, Lokhttp3/w$a;->b0()Lokhttp3/C;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4, v0}, LIg/c$a;-><init>(JLokhttp3/C;Lokhttp3/E;)V

    invoke-virtual {v3}, LIg/c$a;->c()LIg/c;

    move-result-object v1

    iget-object v2, v1, LIg/c;->a:Lokhttp3/C;

    iget-object v3, v1, LIg/c;->b:Lokhttp3/E;

    iget-object v4, p0, LIg/a;->a:LIg/f;

    if-eqz v4, :cond_1

    invoke-interface {v4, v1}, LIg/f;->a(LIg/c;)V

    :cond_1
    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lokhttp3/E;->c()Lokhttp3/F;

    move-result-object v1

    invoke-static {v1}, LGg/c;->g(Ljava/io/Closeable;)V

    :cond_2
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    new-instance v0, Lokhttp3/E$a;

    invoke-direct {v0}, Lokhttp3/E$a;-><init>()V

    invoke-interface {p1}, Lokhttp3/w$a;->b0()Lokhttp3/C;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/E$a;->q(Lokhttp3/C;)Lokhttp3/E$a;

    move-result-object p1

    sget-object v0, Lokhttp3/A;->HTTP_1_1:Lokhttp3/A;

    invoke-virtual {p1, v0}, Lokhttp3/E$a;->n(Lokhttp3/A;)Lokhttp3/E$a;

    move-result-object p1

    const/16 v0, 0x1f8

    invoke-virtual {p1, v0}, Lokhttp3/E$a;->g(I)Lokhttp3/E$a;

    move-result-object p1

    const-string v0, "Unsatisfiable Request (only-if-cached)"

    invoke-virtual {p1, v0}, Lokhttp3/E$a;->k(Ljava/lang/String;)Lokhttp3/E$a;

    move-result-object p1

    sget-object v0, LGg/c;->c:Lokhttp3/F;

    invoke-virtual {p1, v0}, Lokhttp3/E$a;->b(Lokhttp3/F;)Lokhttp3/E$a;

    move-result-object p1

    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Lokhttp3/E$a;->r(J)Lokhttp3/E$a;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lokhttp3/E$a;->o(J)Lokhttp3/E$a;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/E$a;->c()Lokhttp3/E;

    move-result-object p1

    return-object p1

    :cond_3
    if-nez v2, :cond_4

    invoke-virtual {v3}, Lokhttp3/E;->r()Lokhttp3/E$a;

    move-result-object p1

    invoke-static {v3}, LIg/a;->f(Lokhttp3/E;)Lokhttp3/E;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/E$a;->d(Lokhttp3/E;)Lokhttp3/E$a;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/E$a;->c()Lokhttp3/E;

    move-result-object p1

    return-object p1

    :cond_4
    :try_start_0
    invoke-interface {p1, v2}, Lokhttp3/w$a;->c(Lokhttp3/C;)Lokhttp3/E;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lokhttp3/E;->c()Lokhttp3/F;

    move-result-object v0

    invoke-static {v0}, LGg/c;->g(Ljava/io/Closeable;)V

    :cond_5
    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lokhttp3/E;->g()I

    move-result v0

    const/16 v1, 0x130

    if-ne v0, v1, :cond_6

    invoke-virtual {v3}, Lokhttp3/E;->r()Lokhttp3/E$a;

    move-result-object v0

    invoke-virtual {v3}, Lokhttp3/E;->m()Lokhttp3/u;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/E;->m()Lokhttp3/u;

    move-result-object v2

    invoke-static {v1, v2}, LIg/a;->c(Lokhttp3/u;Lokhttp3/u;)Lokhttp3/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/E$a;->j(Lokhttp3/u;)Lokhttp3/E$a;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/E;->x()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lokhttp3/E$a;->r(J)Lokhttp3/E$a;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/E;->v()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lokhttp3/E$a;->o(J)Lokhttp3/E$a;

    move-result-object v0

    invoke-static {v3}, LIg/a;->f(Lokhttp3/E;)Lokhttp3/E;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/E$a;->d(Lokhttp3/E;)Lokhttp3/E$a;

    move-result-object v0

    invoke-static {p1}, LIg/a;->f(Lokhttp3/E;)Lokhttp3/E;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/E$a;->l(Lokhttp3/E;)Lokhttp3/E$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/E$a;->c()Lokhttp3/E;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/E;->c()Lokhttp3/F;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/F;->close()V

    iget-object p1, p0, LIg/a;->a:LIg/f;

    invoke-interface {p1}, LIg/f;->f()V

    iget-object p1, p0, LIg/a;->a:LIg/f;

    invoke-interface {p1, v3, v0}, LIg/f;->d(Lokhttp3/E;Lokhttp3/E;)V

    return-object v0

    :cond_6
    invoke-virtual {v3}, Lokhttp3/E;->c()Lokhttp3/F;

    move-result-object v0

    invoke-static {v0}, LGg/c;->g(Ljava/io/Closeable;)V

    :cond_7
    invoke-virtual {p1}, Lokhttp3/E;->r()Lokhttp3/E$a;

    move-result-object v0

    invoke-static {v3}, LIg/a;->f(Lokhttp3/E;)Lokhttp3/E;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/E$a;->d(Lokhttp3/E;)Lokhttp3/E$a;

    move-result-object v0

    invoke-static {p1}, LIg/a;->f(Lokhttp3/E;)Lokhttp3/E;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/E$a;->l(Lokhttp3/E;)Lokhttp3/E$a;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/E$a;->c()Lokhttp3/E;

    move-result-object p1

    iget-object v0, p0, LIg/a;->a:LIg/f;

    if-eqz v0, :cond_9

    invoke-static {p1}, LLg/e;->c(Lokhttp3/E;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1, v2}, LIg/c;->a(Lokhttp3/E;Lokhttp3/C;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, LIg/a;->a:LIg/f;

    invoke-interface {v0, p1}, LIg/f;->e(Lokhttp3/E;)LIg/b;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, LIg/a;->b(LIg/b;Lokhttp3/E;)Lokhttp3/E;

    move-result-object p1

    return-object p1

    :cond_8
    invoke-virtual {v2}, Lokhttp3/C;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LLg/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :try_start_1
    iget-object v0, p0, LIg/a;->a:LIg/f;

    invoke-interface {v0, v2}, LIg/f;->b(Lokhttp3/C;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_9
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lokhttp3/E;->c()Lokhttp3/F;

    move-result-object v0

    invoke-static {v0}, LGg/c;->g(Ljava/io/Closeable;)V

    :cond_a
    throw p1
.end method

.method public final b(LIg/b;Lokhttp3/E;)Lokhttp3/E;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    invoke-interface {p1}, LIg/b;->b()LTg/x;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p2

    :cond_1
    invoke-virtual {p2}, Lokhttp3/E;->c()Lokhttp3/F;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/F;->n()LTg/e;

    move-result-object v1

    invoke-static {v0}, LTg/p;->c(LTg/x;)LTg/d;

    move-result-object v0

    new-instance v2, LIg/a$a;

    invoke-direct {v2, p0, v1, p1, v0}, LIg/a$a;-><init>(LIg/a;LTg/e;LIg/b;LTg/d;)V

    const-string p1, "Content-Type"

    invoke-virtual {p2, p1}, Lokhttp3/E;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lokhttp3/E;->c()Lokhttp3/F;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/F;->g()J

    move-result-wide v0

    invoke-virtual {p2}, Lokhttp3/E;->r()Lokhttp3/E$a;

    move-result-object p2

    new-instance v3, LLg/h;

    invoke-static {v2}, LTg/p;->d(LTg/y;)LTg/e;

    move-result-object v2

    invoke-direct {v3, p1, v0, v1, v2}, LLg/h;-><init>(Ljava/lang/String;JLTg/e;)V

    invoke-virtual {p2, v3}, Lokhttp3/E$a;->b(Lokhttp3/F;)Lokhttp3/E$a;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/E$a;->c()Lokhttp3/E;

    move-result-object p1

    return-object p1
.end method
