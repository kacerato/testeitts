.class public LEg/g;
.super LEg/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LEg/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LEg/a<",
        "LEg/g$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(LBg/r;[CLyg/e;LEg/h$b;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, LEg/a;-><init>(LBg/r;[CLyg/e;LEg/h$b;)V

    return-void
.end method


# virtual methods
.method public final A(LBg/r;LBg/m;Ljava/lang/String;LDg/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-static {p1, p3}, Lyg/d;->c(LBg/r;Ljava/lang/String;)LBg/j;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p4, p2}, LEg/a;->t(LBg/j;LDg/a;LBg/m;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    check-cast p1, LEg/g$a;

    invoke-virtual {p0, p1}, LEg/g;->y(LEg/g$a;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic f(Ljava/lang/Object;LDg/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, LEg/g$a;

    invoke-virtual {p0, p1, p2}, LEg/g;->z(LEg/g$a;LDg/a;)V

    return-void
.end method

.method public y(LEg/g$a;)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public z(LEg/g$a;LDg/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, LEg/g$a;->a(LEg/g$a;)LBg/s;

    move-result-object v0

    invoke-virtual {p0, v0}, LEg/a;->x(LBg/s;)V

    invoke-static {p1}, LEg/g$a;->a(LEg/g$a;)LBg/s;

    move-result-object v0

    invoke-virtual {v0}, LBg/s;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LFg/h;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, LEg/a;->r()LBg/r;

    move-result-object v0

    iget-object v1, p1, LEg/d;->a:LBg/m;

    invoke-static {p1}, LEg/g$a;->a(LEg/g$a;)LBg/s;

    move-result-object v2

    invoke-virtual {v2}, LBg/s;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p2}, LEg/g;->A(LBg/r;LBg/m;Ljava/lang/String;LDg/a;)V

    invoke-static {p1}, LEg/g$a;->a(LEg/g$a;)LBg/s;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, LBg/s;->P(Z)V

    invoke-static {p1}, LEg/g$a;->a(LEg/g$a;)LBg/s;

    move-result-object p2

    invoke-virtual {p2}, LBg/s;->d()LCg/d;

    move-result-object p2

    sget-object v0, LCg/d;->STORE:LCg/d;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, LEg/g$a;->a(LEg/g$a;)LBg/s;

    move-result-object p2

    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, LBg/s;->D(J)V

    :cond_0
    new-instance p2, LAg/h;

    invoke-virtual {p0}, LEg/a;->r()LBg/r;

    move-result-object v0

    invoke-virtual {v0}, LBg/r;->k()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0}, LEg/a;->r()LBg/r;

    move-result-object v1

    invoke-virtual {v1}, LBg/r;->g()J

    move-result-wide v1

    invoke-direct {p2, v0, v1, v2}, LAg/h;-><init>(Ljava/io/File;J)V

    :try_start_0
    iget-object v0, p1, LEg/d;->a:LBg/m;

    invoke-virtual {p0, p2, v0}, LEg/a;->s(LAg/h;LBg/m;)LAg/k;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p1, LEg/d;->a:LBg/m;

    invoke-virtual {v1}, LBg/m;->a()I

    move-result v1

    new-array v1, v1, [B

    invoke-static {p1}, LEg/g$a;->a(LEg/g$a;)LBg/s;

    move-result-object v2

    invoke-virtual {v0, v2}, LAg/k;->k(LBg/s;)V

    invoke-virtual {v2}, LBg/s;->k()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, LBg/s;->k()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    invoke-static {p1}, LEg/g$a;->b(LEg/g$a;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, LAg/k;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, LAg/k;->c()LBg/j;

    move-result-object p1

    sget-object v1, LCg/d;->STORE:LCg/d;

    invoke-static {p1}, LFg/h;->i(LBg/b;)LCg/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, p2}, LEg/a;->w(LBg/j;LAg/h;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    invoke-virtual {v0}, LAg/k;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p2}, LAg/h;->close()V

    return-void

    :catchall_1
    move-exception p1

    goto :goto_3

    :goto_1
    if-eqz v0, :cond_3

    :try_start_3
    invoke-virtual {v0}, LAg/k;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    :try_start_5
    invoke-virtual {p2}, LAg/h;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p1

    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "fileNameInZip has to be set in zipParameters when adding stream"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
