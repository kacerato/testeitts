.class public final LLg/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/w;


# instance fields
.field public final a:Lokhttp3/n;


# direct methods
.method public constructor <init>(Lokhttp3/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LLg/a;->a:Lokhttp3/n;

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/w$a;)Lokhttp3/E;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lokhttp3/w$a;->b0()Lokhttp3/C;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/C;->h()Lokhttp3/C$a;

    move-result-object v1

    invoke-virtual {v0}, Lokhttp3/C;->a()Lokhttp3/D;

    move-result-object v2

    const-wide/16 v3, -0x1

    const-string v5, "Content-Type"

    const-string v6, "Content-Length"

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lokhttp3/D;->b()Lokhttp3/x;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lokhttp3/x;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Lokhttp3/C$a;->h(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/C$a;

    :cond_0
    invoke-virtual {v2}, Lokhttp3/D;->a()J

    move-result-wide v7

    cmp-long v2, v7, v3

    const-string v9, "Transfer-Encoding"

    if-eqz v2, :cond_1

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lokhttp3/C$a;->h(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/C$a;

    invoke-virtual {v1, v9}, Lokhttp3/C$a;->n(Ljava/lang/String;)Lokhttp3/C$a;

    goto :goto_0

    :cond_1
    const-string v2, "chunked"

    invoke-virtual {v1, v9, v2}, Lokhttp3/C$a;->h(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/C$a;

    invoke-virtual {v1, v6}, Lokhttp3/C$a;->n(Ljava/lang/String;)Lokhttp3/C$a;

    :cond_2
    :goto_0
    const-string v2, "Host"

    invoke-virtual {v0, v2}, Lokhttp3/C;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    if-nez v7, :cond_3

    invoke-virtual {v0}, Lokhttp3/C;->k()Lokhttp3/v;

    move-result-object v7

    invoke-static {v7, v8}, LGg/c;->t(Lokhttp3/v;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lokhttp3/C$a;->h(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/C$a;

    :cond_3
    const-string v2, "Connection"

    invoke-virtual {v0, v2}, Lokhttp3/C;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    const-string v7, "Keep-Alive"

    invoke-virtual {v1, v2, v7}, Lokhttp3/C$a;->h(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/C$a;

    :cond_4
    const-string v2, "Accept-Encoding"

    invoke-virtual {v0, v2}, Lokhttp3/C;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "gzip"

    if-nez v7, :cond_5

    const-string v7, "Range"

    invoke-virtual {v0, v7}, Lokhttp3/C;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    invoke-virtual {v1, v2, v9}, Lokhttp3/C$a;->h(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/C$a;

    const/4 v8, 0x1

    :cond_5
    iget-object v2, p0, LLg/a;->a:Lokhttp3/n;

    invoke-virtual {v0}, Lokhttp3/C;->k()Lokhttp3/v;

    move-result-object v7

    invoke-interface {v2, v7}, Lokhttp3/n;->a(Lokhttp3/v;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "Cookie"

    invoke-virtual {p0, v2}, LLg/a;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lokhttp3/C$a;->h(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/C$a;

    :cond_6
    const-string v2, "User-Agent"

    invoke-virtual {v0, v2}, Lokhttp3/C;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    invoke-static {}, LGg/d;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lokhttp3/C$a;->h(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/C$a;

    :cond_7
    invoke-virtual {v1}, Lokhttp3/C$a;->b()Lokhttp3/C;

    move-result-object v1

    invoke-interface {p1, v1}, Lokhttp3/w$a;->c(Lokhttp3/C;)Lokhttp3/E;

    move-result-object p1

    iget-object v1, p0, LLg/a;->a:Lokhttp3/n;

    invoke-virtual {v0}, Lokhttp3/C;->k()Lokhttp3/v;

    move-result-object v2

    invoke-virtual {p1}, Lokhttp3/E;->m()Lokhttp3/u;

    move-result-object v7

    invoke-static {v1, v2, v7}, LLg/e;->k(Lokhttp3/n;Lokhttp3/v;Lokhttp3/u;)V

    invoke-virtual {p1}, Lokhttp3/E;->r()Lokhttp3/E$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/E$a;->q(Lokhttp3/C;)Lokhttp3/E$a;

    move-result-object v0

    if-eqz v8, :cond_8

    const-string v1, "Content-Encoding"

    invoke-virtual {p1, v1}, Lokhttp3/E;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1}, LLg/e;->c(Lokhttp3/E;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, LTg/l;

    invoke-virtual {p1}, Lokhttp3/E;->c()Lokhttp3/F;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/F;->n()LTg/e;

    move-result-object v7

    invoke-direct {v2, v7}, LTg/l;-><init>(LTg/y;)V

    invoke-virtual {p1}, Lokhttp3/E;->m()Lokhttp3/u;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/u;->i()Lokhttp3/u$a;

    move-result-object v7

    invoke-virtual {v7, v1}, Lokhttp3/u$a;->j(Ljava/lang/String;)Lokhttp3/u$a;

    move-result-object v1

    invoke-virtual {v1, v6}, Lokhttp3/u$a;->j(Ljava/lang/String;)Lokhttp3/u$a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/u$a;->h()Lokhttp3/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/E$a;->j(Lokhttp3/u;)Lokhttp3/E$a;

    invoke-virtual {p1, v5}, Lokhttp3/E;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, LLg/h;

    invoke-static {v2}, LTg/p;->d(LTg/y;)LTg/e;

    move-result-object v2

    invoke-direct {v1, p1, v3, v4, v2}, LLg/h;-><init>(Ljava/lang/String;JLTg/e;)V

    invoke-virtual {v0, v1}, Lokhttp3/E$a;->b(Lokhttp3/F;)Lokhttp3/E$a;

    :cond_8
    invoke-virtual {v0}, Lokhttp3/E$a;->c()Lokhttp3/E;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/m;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    if-lez v2, :cond_0

    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/m;

    invoke-virtual {v3}, Lokhttp3/m;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lokhttp3/m;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
