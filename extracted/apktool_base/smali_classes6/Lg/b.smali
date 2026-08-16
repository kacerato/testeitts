.class public final LLg/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/w;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLg/b$a;
    }
.end annotation


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, LLg/b;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/w$a;)Lokhttp3/E;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, LLg/g;

    invoke-virtual {p1}, LLg/g;->j()LLg/c;

    move-result-object v0

    invoke-virtual {p1}, LLg/g;->l()LKg/f;

    move-result-object v1

    invoke-virtual {p1}, LLg/g;->d()Lokhttp3/j;

    move-result-object v2

    check-cast v2, LKg/c;

    invoke-virtual {p1}, LLg/g;->b0()Lokhttp3/C;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1}, LLg/g;->i()Lokhttp3/r;

    move-result-object v6

    invoke-virtual {p1}, LLg/g;->call()Lokhttp3/e;

    move-result-object v7

    invoke-virtual {v6, v7}, Lokhttp3/r;->o(Lokhttp3/e;)V

    invoke-interface {v0, v3}, LLg/c;->d(Lokhttp3/C;)V

    invoke-virtual {p1}, LLg/g;->i()Lokhttp3/r;

    move-result-object v6

    invoke-virtual {p1}, LLg/g;->call()Lokhttp3/e;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lokhttp3/r;->n(Lokhttp3/e;Lokhttp3/C;)V

    invoke-virtual {v3}, Lokhttp3/C;->g()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LLg/f;->b(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lokhttp3/C;->a()Lokhttp3/D;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string v6, "Expect"

    invoke-virtual {v3, v6}, Lokhttp3/C;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "100-continue"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, LLg/c;->b()V

    invoke-virtual {p1}, LLg/g;->i()Lokhttp3/r;

    move-result-object v6

    invoke-virtual {p1}, LLg/g;->call()Lokhttp3/e;

    move-result-object v7

    invoke-virtual {v6, v7}, Lokhttp3/r;->s(Lokhttp3/e;)V

    const/4 v6, 0x1

    invoke-interface {v0, v6}, LLg/c;->f(Z)Lokhttp3/E$a;

    move-result-object v7

    :cond_0
    if-nez v7, :cond_1

    invoke-virtual {p1}, LLg/g;->i()Lokhttp3/r;

    move-result-object v2

    invoke-virtual {p1}, LLg/g;->call()Lokhttp3/e;

    move-result-object v6

    invoke-virtual {v2, v6}, Lokhttp3/r;->m(Lokhttp3/e;)V

    invoke-virtual {v3}, Lokhttp3/C;->a()Lokhttp3/D;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/D;->a()J

    move-result-wide v8

    new-instance v2, LLg/b$a;

    invoke-interface {v0, v3, v8, v9}, LLg/c;->a(Lokhttp3/C;J)LTg/x;

    move-result-object v6

    invoke-direct {v2, v6}, LLg/b$a;-><init>(LTg/x;)V

    invoke-static {v2}, LTg/p;->c(LTg/x;)LTg/d;

    move-result-object v6

    invoke-virtual {v3}, Lokhttp3/C;->a()Lokhttp3/D;

    move-result-object v8

    invoke-virtual {v8, v6}, Lokhttp3/D;->h(LTg/d;)V

    invoke-interface {v6}, LTg/x;->close()V

    invoke-virtual {p1}, LLg/g;->i()Lokhttp3/r;

    move-result-object v6

    invoke-virtual {p1}, LLg/g;->call()Lokhttp3/e;

    move-result-object v8

    iget-wide v9, v2, LLg/b$a;->c:J

    invoke-virtual {v6, v8, v9, v10}, Lokhttp3/r;->l(Lokhttp3/e;J)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, LKg/c;->q()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, LKg/f;->j()V

    :cond_2
    :goto_0
    invoke-interface {v0}, LLg/c;->c()V

    const/4 v2, 0x0

    if-nez v7, :cond_3

    invoke-virtual {p1}, LLg/g;->i()Lokhttp3/r;

    move-result-object v6

    invoke-virtual {p1}, LLg/g;->call()Lokhttp3/e;

    move-result-object v7

    invoke-virtual {v6, v7}, Lokhttp3/r;->s(Lokhttp3/e;)V

    invoke-interface {v0, v2}, LLg/c;->f(Z)Lokhttp3/E$a;

    move-result-object v7

    :cond_3
    invoke-virtual {v7, v3}, Lokhttp3/E$a;->q(Lokhttp3/C;)Lokhttp3/E$a;

    move-result-object v6

    invoke-virtual {v1}, LKg/f;->d()LKg/c;

    move-result-object v7

    invoke-virtual {v7}, LKg/c;->c()Lokhttp3/t;

    move-result-object v7

    invoke-virtual {v6, v7}, Lokhttp3/E$a;->h(Lokhttp3/t;)Lokhttp3/E$a;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lokhttp3/E$a;->r(J)Lokhttp3/E$a;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lokhttp3/E$a;->o(J)Lokhttp3/E$a;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/E$a;->c()Lokhttp3/E;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/E;->g()I

    move-result v7

    const/16 v8, 0x64

    if-ne v7, v8, :cond_4

    invoke-interface {v0, v2}, LLg/c;->f(Z)Lokhttp3/E$a;

    move-result-object v2

    invoke-virtual {v2, v3}, Lokhttp3/E$a;->q(Lokhttp3/C;)Lokhttp3/E$a;

    move-result-object v2

    invoke-virtual {v1}, LKg/f;->d()LKg/c;

    move-result-object v3

    invoke-virtual {v3}, LKg/c;->c()Lokhttp3/t;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/E$a;->h(Lokhttp3/t;)Lokhttp3/E$a;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lokhttp3/E$a;->r(J)Lokhttp3/E$a;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lokhttp3/E$a;->o(J)Lokhttp3/E$a;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/E$a;->c()Lokhttp3/E;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/E;->g()I

    move-result v7

    :cond_4
    invoke-virtual {p1}, LLg/g;->i()Lokhttp3/r;

    move-result-object v2

    invoke-virtual {p1}, LLg/g;->call()Lokhttp3/e;

    move-result-object p1

    invoke-virtual {v2, p1, v6}, Lokhttp3/r;->r(Lokhttp3/e;Lokhttp3/E;)V

    iget-boolean p1, p0, LLg/b;->a:Z

    if-eqz p1, :cond_5

    const/16 p1, 0x65

    if-ne v7, p1, :cond_5

    invoke-virtual {v6}, Lokhttp3/E;->r()Lokhttp3/E$a;

    move-result-object p1

    sget-object v0, LGg/c;->c:Lokhttp3/F;

    invoke-virtual {p1, v0}, Lokhttp3/E$a;->b(Lokhttp3/F;)Lokhttp3/E$a;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/E$a;->c()Lokhttp3/E;

    move-result-object p1

    goto :goto_1

    :cond_5
    invoke-virtual {v6}, Lokhttp3/E;->r()Lokhttp3/E$a;

    move-result-object p1

    invoke-interface {v0, v6}, LLg/c;->e(Lokhttp3/E;)Lokhttp3/F;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/E$a;->b(Lokhttp3/F;)Lokhttp3/E$a;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/E$a;->c()Lokhttp3/E;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Lokhttp3/E;->w()Lokhttp3/C;

    move-result-object v0

    const-string v2, "Connection"

    invoke-virtual {v0, v2}, Lokhttp3/C;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "close"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1, v2}, Lokhttp3/E;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    invoke-virtual {v1}, LKg/f;->j()V

    :cond_7
    const/16 v0, 0xcc

    if-eq v7, v0, :cond_8

    const/16 v0, 0xcd

    if-ne v7, v0, :cond_9

    :cond_8
    invoke-virtual {p1}, Lokhttp3/E;->c()Lokhttp3/F;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/F;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_a

    :cond_9
    return-object p1

    :cond_a
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " had non-zero Content-Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/E;->c()Lokhttp3/F;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/F;->g()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
