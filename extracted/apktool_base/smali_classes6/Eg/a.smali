.class public abstract LEg/a;
.super LEg/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LEg/h<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final d:LBg/r;

.field public final e:[C

.field public final f:Lyg/e;


# direct methods
.method public constructor <init>(LBg/r;[CLyg/e;LEg/h$b;)V
    .locals 0

    invoke-direct {p0, p4}, LEg/h;-><init>(LEg/h$b;)V

    iput-object p1, p0, LEg/a;->d:LBg/r;

    iput-object p2, p0, LEg/a;->e:[C

    iput-object p3, p0, LEg/a;->f:Lyg/e;

    return-void
.end method


# virtual methods
.method public g()LDg/a$c;
    .locals 1

    sget-object v0, LDg/a$c;->ADD_ENTRY:LDg/a$c;

    return-object v0
.end method

.method public final k(Ljava/io/File;LAg/k;LBg/s;LAg/h;LDg/a;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2, p3}, LAg/k;->k(LBg/s;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p3

    if-nez p3, :cond_1

    new-instance p3, Ljava/io/FileInputStream;

    invoke-direct {p3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_0
    :try_start_0
    invoke-virtual {p3, p6}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p2, p6, v0, v1}, LAg/k;->write([BII)V

    int-to-long v1, v1

    invoke-virtual {p5, v1, v2}, LDg/a;->x(J)V

    invoke-virtual {p0}, LEg/h;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    goto :goto_3

    :goto_1
    :try_start_1
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1

    :cond_1
    :goto_3
    invoke-virtual {p0, p2, p4, p1, v0}, LEg/a;->q(LAg/k;LAg/h;Ljava/io/File;Z)V

    return-void
.end method

.method public l(Ljava/util/List;LDg/a;LBg/s;LBg/m;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "LDg/a;",
            "LBg/s;",
            "LBg/m;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p3}, LBg/s;->n()LBg/s$a;

    move-result-object v0

    invoke-static {p1, v0}, LFg/c;->e(Ljava/util/List;LBg/s$a;)V

    invoke-virtual {p4}, LBg/m;->a()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0, p1, p3, p2, p4}, LEg/a;->u(Ljava/util/List;LBg/s;LDg/a;LBg/m;)Ljava/util/List;

    move-result-object p1

    new-instance v8, LAg/h;

    iget-object v1, p0, LEg/a;->d:LBg/r;

    invoke-virtual {v1}, LBg/r;->k()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, LEg/a;->d:LBg/r;

    invoke-virtual {v2}, LBg/r;->g()J

    move-result-wide v2

    invoke-direct {v8, v1, v2, v3}, LAg/h;-><init>(Ljava/io/File;J)V

    :try_start_0
    invoke-virtual {p0, v8, p4}, LEg/a;->s(LAg/h;LBg/m;)LAg/k;

    move-result-object p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/io/File;

    invoke-virtual {p0}, LEg/h;->j()V

    invoke-virtual {p0, p3, v2, p2}, LEg/a;->p(LBg/s;Ljava/io/File;LDg/a;)LBg/s;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, LDg/a;->r(Ljava/lang/String;)V

    invoke-static {v2}, LFg/c;->x(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v4}, LEg/a;->m(LBg/s;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2, p4, v4, v8}, LEg/a;->n(Ljava/io/File;LAg/k;LBg/s;LAg/h;)V

    sget-object v1, LBg/s$a;->INCLUDE_LINK_ONLY:LBg/s$a;

    invoke-virtual {v4}, LBg/s;->n()LBg/s$a;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    move-object v1, p0

    move-object v3, p4

    move-object v5, v8

    move-object v6, p2

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, LEg/a;->k(Ljava/io/File;LAg/k;LBg/s;LAg/h;LDg/a;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    :try_start_2
    invoke-virtual {p4}, LAg/k;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_2
    :goto_1
    invoke-virtual {v8}, LAg/h;->close()V

    return-void

    :goto_2
    if-eqz p4, :cond_3

    :try_start_3
    invoke-virtual {p4}, LAg/k;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_4
    :try_start_5
    invoke-virtual {v8}, LAg/h;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p1
.end method

.method public final m(LBg/s;)Z
    .locals 2

    sget-object v0, LBg/s$a;->INCLUDE_LINK_ONLY:LBg/s$a;

    invoke-virtual {p1}, LBg/s;->n()LBg/s$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, LBg/s$a;->INCLUDE_LINK_AND_LINKED_FILE:LBg/s$a;

    invoke-virtual {p1}, LBg/s;->n()LBg/s$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final n(Ljava/io/File;LAg/k;LBg/s;LAg/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, LBg/s;

    invoke-direct {v0, p3}, LBg/s;-><init>(LBg/s;)V

    invoke-virtual {p3}, LBg/s;->k()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p3, v1}, LEg/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, LBg/s;->G(Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-virtual {v0, p3}, LBg/s;->A(Z)V

    sget-object p3, LCg/d;->STORE:LCg/d;

    invoke-virtual {v0, p3}, LBg/s;->y(LCg/d;)V

    invoke-virtual {p2, v0}, LAg/k;->k(LBg/s;)V

    invoke-static {p1}, LFg/c;->B(Ljava/io/File;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {p2, p3}, LAg/k;->write([B)V

    const/4 p3, 0x1

    invoke-virtual {p0, p2, p4, p1, p3}, LEg/a;->q(LAg/k;LAg/h;Ljava/io/File;Z)V

    return-void
.end method

.method public o(Ljava/util/List;LBg/s;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "LBg/s;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, LBg/s;->o()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, LBg/s;->f()LCg/e;

    move-result-object v3

    sget-object v4, LCg/e;->ZIP_STANDARD:LCg/e;

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x2

    mul-long/2addr v3, v5

    :goto_1
    add-long/2addr v0, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    goto :goto_1

    :goto_2
    invoke-static {v2, p2}, LFg/c;->r(Ljava/io/File;LBg/s;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, LEg/a;->r()LBg/r;

    move-result-object v3

    invoke-static {v3, v2}, Lyg/d;->c(LBg/r;Ljava/lang/String;)LBg/j;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, LEg/a;->r()LBg/r;

    move-result-object v3

    invoke-virtual {v3}, LBg/r;->k()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2}, LBg/b;->d()J

    move-result-wide v5

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    goto :goto_0

    :cond_3
    return-wide v0
.end method

.method public final p(LBg/s;Ljava/io/File;LDg/a;)LBg/s;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, LBg/s;

    invoke-direct {v0, p1}, LBg/s;-><init>(LBg/s;)V

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2, v3}, LBg/s;->D(J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, LBg/s;->D(J)V

    :goto_0
    invoke-virtual {p1}, LBg/s;->l()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-gtz v1, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, LBg/s;->I(J)V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LBg/s;->P(Z)V

    invoke-virtual {p1}, LBg/s;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LFg/h;->j(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p2, p1}, LFg/c;->r(Ljava/io/File;LBg/s;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, LBg/s;->G(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, LCg/d;->STORE:LCg/d;

    invoke-virtual {v0, p1}, LBg/s;->y(LCg/d;)V

    sget-object p1, LCg/e;->NONE:LCg/e;

    invoke-virtual {v0, p1}, LBg/s;->B(LCg/e;)V

    invoke-virtual {v0, v1}, LBg/s;->A(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, LBg/s;->o()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v0}, LBg/s;->f()LCg/e;

    move-result-object p1

    sget-object v1, LCg/e;->ZIP_STANDARD:LCg/e;

    if-ne p1, v1, :cond_4

    sget-object p1, LDg/a$c;->CALCULATE_CRC:LDg/a$c;

    invoke-virtual {p3, p1}, LDg/a;->p(LDg/a$c;)V

    invoke-static {p2, p3}, LFg/b;->a(Ljava/io/File;LDg/a;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, LBg/s;->C(J)V

    sget-object p1, LDg/a$c;->ADD_ENTRY:LDg/a$c;

    invoke-virtual {p3, p1}, LDg/a;->p(LDg/a$c;)V

    :cond_4
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-nez p1, :cond_5

    sget-object p1, LCg/d;->STORE:LCg/d;

    invoke-virtual {v0, p1}, LBg/s;->y(LCg/d;)V

    :cond_5
    :goto_1
    return-object v0
.end method

.method public final q(LAg/k;LAg/h;Ljava/io/File;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, LAg/k;->c()LBg/j;

    move-result-object p1

    invoke-static {p3}, LFg/c;->k(Ljava/io/File;)[B

    move-result-object p3

    if-nez p4, :cond_0

    const/4 p4, 0x3

    aget-byte v0, p3, p4

    const/4 v1, 0x5

    invoke-static {v0, v1}, LFg/a;->c(BI)B

    move-result v0

    aput-byte v0, p3, p4

    :cond_0
    invoke-virtual {p1, p3}, LBg/j;->W([B)V

    invoke-virtual {p0, p1, p2}, LEg/a;->w(LBg/j;LAg/h;)V

    return-void
.end method

.method public r()LBg/r;
    .locals 1

    iget-object v0, p0, LEg/a;->d:LBg/r;

    return-object v0
.end method

.method public s(LAg/h;LBg/m;)LAg/k;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LEg/a;->d:LBg/r;

    invoke-virtual {v0}, LBg/r;->k()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LEg/a;->d:LBg/r;

    invoke-static {v0}, Lyg/d;->f(LBg/r;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, LAg/h;->j(J)V

    :cond_0
    new-instance v0, LAg/k;

    iget-object v1, p0, LEg/a;->e:[C

    iget-object v2, p0, LEg/a;->d:LBg/r;

    invoke-direct {v0, p1, v1, p2, v2}, LAg/k;-><init>(Ljava/io/OutputStream;[CLBg/m;LBg/r;)V

    return-object v0
.end method

.method public t(LBg/j;LDg/a;LBg/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    new-instance v0, LEg/h$b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p2}, LEg/h$b;-><init>(Ljava/util/concurrent/ExecutorService;ZLDg/a;)V

    new-instance p2, LEg/l;

    iget-object v1, p0, LEg/a;->d:LBg/r;

    iget-object v2, p0, LEg/a;->f:Lyg/e;

    invoke-direct {p2, v1, v2, v0}, LEg/l;-><init>(LBg/r;Lyg/e;LEg/h$b;)V

    new-instance v0, LEg/l$a;

    invoke-virtual {p1}, LBg/b;->j()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1, p3}, LEg/l$a;-><init>(Ljava/util/List;LBg/m;)V

    invoke-virtual {p2, v0}, LEg/h;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public final u(Ljava/util/List;LBg/s;LDg/a;LBg/m;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "LBg/s;",
            "LDg/a;",
            "LBg/m;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, LEg/a;->d:LBg/r;

    invoke-virtual {v1}, LBg/r;->k()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LFg/h;->j(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {v1, p2}, LFg/c;->r(Ljava/io/File;LBg/s;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, LEg/a;->d:LBg/r;

    invoke-static {v3, v2}, Lyg/d;->c(LBg/r;Ljava/lang/String;)LBg/j;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, LBg/s;->q()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v1, LDg/a$c;->REMOVE_ENTRY:LDg/a$c;

    invoke-virtual {p3, v1}, LDg/a;->p(LDg/a$c;)V

    invoke-virtual {p0, v2, p3, p4}, LEg/a;->t(LBg/j;LDg/a;LBg/m;)V

    invoke-virtual {p0}, LEg/h;->j()V

    sget-object v1, LDg/a$c;->ADD_ENTRY:LDg/a$c;

    invoke-virtual {p3, v1}, LDg/a;->p(LDg/a$c;)V

    goto :goto_0

    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public w(LBg/j;LAg/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LEg/a;->f:Lyg/e;

    invoke-virtual {p0}, LEg/a;->r()LBg/r;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lyg/e;->l(LBg/j;LBg/r;LAg/h;)V

    return-void
.end method

.method public x(LBg/s;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_5

    invoke-virtual {p1}, LBg/s;->d()LCg/d;

    move-result-object v0

    sget-object v1, LCg/d;->STORE:LCg/d;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, LBg/s;->d()LCg/d;

    move-result-object v0

    sget-object v1, LCg/d;->DEFLATE:LCg/d;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "unsupported compression type"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, LBg/s;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, LBg/s;->f()LCg/e;

    move-result-object p1

    sget-object v0, LCg/e;->NONE:LCg/e;

    if-eq p1, v0, :cond_3

    iget-object p1, p0, LEg/a;->e:[C

    if-eqz p1, :cond_2

    array-length p1, p1

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "input password is empty or null"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "Encryption method has to be set, when encrypt files flag is set"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    sget-object v0, LCg/e;->NONE:LCg/e;

    invoke-virtual {p1, v0}, LBg/s;->B(LCg/e;)V

    :goto_1
    return-void

    :cond_5
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "cannot validate zip parameters"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
