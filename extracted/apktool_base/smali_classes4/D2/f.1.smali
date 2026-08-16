.class public abstract LD2/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LD2/p;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LD2/f$c;,
        LD2/f$d;,
        LD2/f$b;,
        LD2/f$e;,
        LD2/f$a;
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

.method public static b(Ljava/lang/Iterable;)LD2/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LD2/f;",
            ">;)",
            "LD2/f;"
        }
    .end annotation

    new-instance v0, LD2/f$c;

    invoke-direct {v0, p0}, LD2/f$c;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static c(Ljava/util/Iterator;)LD2/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "LD2/f;",
            ">;)",
            "LD2/f;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/g1;->s(Ljava/util/Iterator;)Lcom/google/common/collect/g1;

    move-result-object p0

    invoke-static {p0}, LD2/f;->b(Ljava/lang/Iterable;)LD2/f;

    move-result-object p0

    return-object p0
.end method

.method public static varargs d([LD2/f;)LD2/f;
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/g1;->u([Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object p0

    invoke-static {p0}, LD2/f;->b(Ljava/lang/Iterable;)LD2/f;

    move-result-object p0

    return-object p0
.end method

.method public static i()LD2/f;
    .locals 1

    sget-object v0, LD2/f$d;->d:LD2/f$d;

    return-object v0
.end method

.method public static s([B)LD2/f;
    .locals 1

    new-instance v0, LD2/f$b;

    invoke-direct {v0, p0}, LD2/f$b;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/nio/charset/Charset;)LD2/j;
    .locals 1

    new-instance v0, LD2/f$a;

    invoke-direct {v0, p0, p1}, LD2/f$a;-><init>(LD2/f;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public e(LD2/f;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, LD2/g;->d()[B

    move-result-object v0

    invoke-static {}, LD2/g;->d()[B

    move-result-object v1

    invoke-static {}, LD2/m;->c()LD2/m;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0}, LD2/f;->m()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v2, v3}, LD2/m;->d(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;

    invoke-virtual {p1}, LD2/f;->m()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {v2, p1}, LD2/m;->d(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    :cond_0
    array-length v4, v0

    const/4 v5, 0x0

    invoke-static {v3, v0, v5, v4}, LD2/g;->n(Ljava/io/InputStream;[BII)I

    move-result v4

    array-length v6, v1

    invoke-static {p1, v1, v5, v6}, LD2/g;->n(Ljava/io/InputStream;[BII)I

    move-result v6

    if-ne v4, v6, :cond_2

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    array-length v5, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v4, v5, :cond_0

    invoke-virtual {v2}, LD2/m;->close()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v2}, LD2/m;->close()V

    return v5

    :goto_1
    :try_start_1
    invoke-virtual {v2, p1}, LD2/m;->e(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-virtual {v2}, LD2/m;->close()V

    throw p1
.end method

.method public f(LD2/e;)J
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
    invoke-virtual {p0}, LD2/f;->m()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, LD2/m;->d(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {p1}, LD2/e;->c()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {v0, p1}, LD2/m;->d(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object p1

    check-cast p1, Ljava/io/OutputStream;

    invoke-static {v1, p1}, LD2/g;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)J

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

.method public g(Ljava/io/OutputStream;)J
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
    invoke-virtual {p0}, LD2/f;->m()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, LD2/m;->d(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    invoke-static {v1, p1}, LD2/g;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)J

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

.method public final h(Ljava/io/InputStream;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_0
    const-wide/32 v4, 0x7fffffff

    invoke-static {p1, v4, v5}, LD2/g;->t(Ljava/io/InputStream;J)J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_0

    add-long/2addr v2, v4

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public j(LB2/q;)LB2/p;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, LB2/q;->i()LB2/r;

    move-result-object p1

    invoke-static {p1}, LB2/o;->a(LB2/G;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, LD2/f;->g(Ljava/io/OutputStream;)J

    invoke-interface {p1}, LB2/r;->h()LB2/p;

    move-result-object p1

    return-object p1
.end method

.method public k()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LD2/f;->q()Lw2/C;

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
    invoke-virtual {p0}, LD2/f;->m()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, LD2/m;->d(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

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

.method public l()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LD2/f;->m()Ljava/io/InputStream;

    move-result-object v0

    instance-of v1, v0, Ljava/io/BufferedInputStream;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/io/BufferedInputStream;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public abstract m()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public n(LD2/d;)Ljava/lang/Object;
    .locals 2
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LD2/d<",
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
    invoke-virtual {p0}, LD2/f;->m()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, LD2/m;->d(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    invoke-static {v1, p1}, LD2/g;->o(Ljava/io/InputStream;LD2/d;)Ljava/lang/Object;

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

.method public o()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, LD2/m;->c()LD2/m;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, LD2/f;->m()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, LD2/m;->d(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {p0}, LD2/f;->q()Lw2/C;

    move-result-object v2

    invoke-virtual {v2}, Lw2/C;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lw2/C;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, LD2/g;->v(Ljava/io/InputStream;J)[B

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-static {v1}, LD2/g;->u(Ljava/io/InputStream;)[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
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

.method public p()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LD2/f;->q()Lw2/C;

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
    invoke-virtual {p0}, LD2/f;->m()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, LD2/m;->d(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {p0, v1}, LD2/f;->h(Ljava/io/InputStream;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, LD2/m;->close()V

    return-wide v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, LD2/m;->close()V

    throw v1

    :catch_0
    invoke-virtual {v0}, LD2/m;->close()V

    invoke-static {}, LD2/m;->c()LD2/m;

    move-result-object v0

    :try_start_1
    invoke-virtual {p0}, LD2/f;->m()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, LD2/m;->d(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    invoke-static {v1}, LD2/g;->e(Ljava/io/InputStream;)J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v0}, LD2/m;->close()V

    return-wide v1

    :catchall_1
    move-exception v1

    :try_start_2
    invoke-virtual {v0, v1}, LD2/m;->e(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v1

    invoke-virtual {v0}, LD2/m;->close()V

    throw v1
.end method

.method public q()Lw2/C;
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

.method public r(JJ)LD2/f;
    .locals 7

    new-instance v6, LD2/f$e;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, LD2/f$e;-><init>(LD2/f;JJ)V

    return-object v6
.end method
