.class public abstract LD2/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LD2/p;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LD2/j$c;,
        LD2/j$d;,
        LD2/j$e;,
        LD2/j$b;,
        LD2/j$a;
    }
.end annotation

.annotation build Lv2/c;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ljava/lang/Iterable;)LD2/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LD2/j;",
            ">;)",
            "LD2/j;"
        }
    .end annotation

    new-instance v0, LD2/j$c;

    invoke-direct {v0, p0}, LD2/j$c;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static c(Ljava/util/Iterator;)LD2/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "LD2/j;",
            ">;)",
            "LD2/j;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/g1;->s(Ljava/util/Iterator;)Lcom/google/common/collect/g1;

    move-result-object p0

    invoke-static {p0}, LD2/j;->b(Ljava/lang/Iterable;)LD2/j;

    move-result-object p0

    return-object p0
.end method

.method public static varargs d([LD2/j;)LD2/j;
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/g1;->u([Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object p0

    invoke-static {p0}, LD2/j;->b(Ljava/lang/Iterable;)LD2/j;

    move-result-object p0

    return-object p0
.end method

.method public static h()LD2/j;
    .locals 1

    invoke-static {}, LD2/j$d;->u()LD2/j$d;

    move-result-object v0

    return-object v0
.end method

.method public static r(Ljava/lang/CharSequence;)LD2/j;
    .locals 1

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, LD2/j$e;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, LD2/j$e;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, LD2/j$b;

    invoke-direct {v0, p0}, LD2/j$b;-><init>(Ljava/lang/CharSequence;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Ljava/nio/charset/Charset;)LD2/f;
    .locals 1
    .annotation build Lv2/a;
    .end annotation

    new-instance v0, LD2/j$a;

    invoke-direct {v0, p0, p1}, LD2/j$a;-><init>(LD2/j;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public e(LD2/i;)J
    .locals 3
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, LD2/m;->c()LD2/m;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, LD2/j;->m()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, LD2/m;->d(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/Reader;

    invoke-virtual {p1}, LD2/i;->b()Ljava/io/Writer;

    move-result-object p1

    invoke-virtual {v0, p1}, LD2/m;->d(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object p1

    check-cast p1, Ljava/io/Writer;

    invoke-static {v1, p1}, LD2/k;->b(Ljava/lang/Readable;Ljava/lang/Appendable;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, LD2/m;->close()V

    return-wide v1

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-virtual {v0, p1}, LD2/m;->e(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, LD2/m;->close()V

    throw p1
.end method

.method public f(Ljava/lang/Appendable;)J
    .locals 3
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, LD2/m;->c()LD2/m;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, LD2/j;->m()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, LD2/m;->d(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/Reader;

    invoke-static {v1, p1}, LD2/k;->b(Ljava/lang/Readable;Ljava/lang/Appendable;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, LD2/m;->close()V

    return-wide v1

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-virtual {v0, p1}, LD2/m;->e(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, LD2/m;->close()V

    throw p1
.end method

.method public final g(Ljava/io/Reader;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_0
    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {p1, v4, v5}, Ljava/io/Reader;->skip(J)J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-eqz v6, :cond_0

    add-long/2addr v2, v4

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public i()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LD2/j;->k()Lw2/C;

    move-result-object v0

    invoke-virtual {v0}, Lw2/C;->e()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lw2/C;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    move v2, v3

    :cond_0
    return v2

    :cond_1
    invoke-static {}, LD2/m;->c()LD2/m;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, LD2/j;->m()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, LD2/m;->d(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->read()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v0}, LD2/m;->close()V

    return v2

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0, v1}, LD2/m;->e(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-virtual {v0}, LD2/m;->close()V

    throw v1
.end method

.method public j()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    invoke-virtual {p0}, LD2/j;->k()Lw2/C;

    move-result-object v0

    invoke-virtual {v0}, Lw2/C;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lw2/C;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {}, LD2/m;->c()LD2/m;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, LD2/j;->m()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, LD2/m;->d(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/Reader;

    invoke-virtual {p0, v1}, LD2/j;->g(Ljava/io/Reader;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, LD2/m;->close()V

    return-wide v1

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0, v1}, LD2/m;->e(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-virtual {v0}, LD2/m;->close()V

    throw v1
.end method

.method public k()Lw2/C;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw2/C<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/io/BufferedReader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LD2/j;->m()Ljava/io/Reader;

    move-result-object v0

    instance-of v1, v0, Ljava/io/BufferedReader;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public abstract m()Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public n()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, LD2/m;->c()LD2/m;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, LD2/j;->m()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, LD2/m;->d(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/Reader;

    invoke-static {v1}, LD2/k;->k(Ljava/lang/Readable;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, LD2/m;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0, v1}, LD2/m;->e(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-virtual {v0}, LD2/m;->close()V

    throw v1
.end method

.method public o()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-static {}, LD2/m;->c()LD2/m;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, LD2/j;->l()Ljava/io/BufferedReader;

    move-result-object v1

    invoke-virtual {v0, v1}, LD2/m;->d(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, LD2/m;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0, v1}, LD2/m;->e(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-virtual {v0}, LD2/m;->close()V

    throw v1
.end method

.method public p()Lcom/google/common/collect/g1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g1<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, LD2/m;->c()LD2/m;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, LD2/j;->l()Ljava/io/BufferedReader;

    move-result-object v1

    invoke-virtual {v0, v1}, LD2/m;->d(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/BufferedReader;

    invoke-static {}, Lcom/google/common/collect/M1;->q()Ljava/util/ArrayList;

    move-result-object v2

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-static {v2}, Lcom/google/common/collect/g1;->r(Ljava/util/Collection;)Lcom/google/common/collect/g1;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, LD2/m;->close()V

    return-object v1

    :goto_1
    :try_start_1
    invoke-virtual {v0, v1}, LD2/m;->e(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-virtual {v0}, LD2/m;->close()V

    throw v1
.end method

.method public q(LD2/w;)Ljava/lang/Object;
    .locals 2
    .annotation runtime LD2/C;
    .end annotation

    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LD2/w<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, LD2/m;->c()LD2/m;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, LD2/j;->m()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, LD2/m;->d(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/Reader;

    invoke-static {v1, p1}, LD2/k;->h(Ljava/lang/Readable;LD2/w;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, LD2/m;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-virtual {v0, p1}, LD2/m;->e(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, LD2/m;->close()V

    throw p1
.end method
