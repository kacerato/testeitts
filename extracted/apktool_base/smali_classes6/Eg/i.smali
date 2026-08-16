.class public LEg/i;
.super LEg/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LEg/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LEg/b<",
        "LEg/i$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:[C

.field public g:Lzg/h;


# direct methods
.method public constructor <init>(LBg/r;[CLBg/l;LEg/h$b;)V
    .locals 0

    invoke-direct {p0, p1, p3, p4}, LEg/b;-><init>(LBg/r;LBg/l;LEg/h$b;)V

    iput-object p2, p0, LEg/i;->f:[C

    return-void
.end method


# virtual methods
.method public bridge synthetic d(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    check-cast p1, LEg/i$a;

    invoke-virtual {p0, p1}, LEg/i;->v(LEg/i$a;)J

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

    check-cast p1, LEg/i$a;

    invoke-virtual {p0, p1, p2}, LEg/i;->w(LEg/i$a;LDg/a;)V

    return-void
.end method

.method public v(LEg/i$a;)J
    .locals 2

    invoke-virtual {p0}, LEg/b;->q()LBg/r;

    move-result-object p1

    invoke-virtual {p1}, LBg/r;->b()LBg/d;

    move-result-object p1

    invoke-virtual {p1}, LBg/d;->b()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lyg/d;->g(Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method public w(LEg/i$a;LDg/a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p1, LEg/d;->a:LBg/m;

    invoke-virtual {p0, v0}, LEg/i;->y(LBg/m;)Lzg/k;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, LEg/b;->q()LBg/r;

    move-result-object v1

    invoke-virtual {v1}, LBg/r;->b()LBg/d;

    move-result-object v1

    invoke-virtual {v1}, LBg/d;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, LBg/j;

    invoke-virtual {v3}, LBg/b;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "__MACOSX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v3}, LBg/b;->o()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, LDg/a;->x(J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-object v1, p0, LEg/i;->g:Lzg/h;

    invoke-virtual {v1, v3}, Lzg/h;->a(LBg/j;)V

    iget-object v1, p1, LEg/d;->a:LBg/m;

    invoke-virtual {v1}, LBg/m;->a()I

    move-result v1

    new-array v7, v1, [B

    invoke-static {p1}, LEg/i$a;->a(LEg/i$a;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v6, p2

    invoke-virtual/range {v1 .. v7}, LEg/b;->o(Lzg/k;LBg/j;Ljava/lang/String;Ljava/lang/String;LDg/a;[B)V

    invoke-virtual {p0}, LEg/h;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Lzg/k;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_2
    :goto_1
    iget-object p1, p0, LEg/i;->g:Lzg/h;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_3
    return-void

    :goto_2
    if-eqz v0, :cond_4

    :try_start_3
    invoke-virtual {v0}, Lzg/k;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_4
    iget-object p2, p0, LEg/i;->g:Lzg/h;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    :cond_5
    throw p1
.end method

.method public final x(LBg/r;)LBg/j;
    .locals 1

    invoke-virtual {p1}, LBg/r;->b()LBg/d;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, LBg/r;->b()LBg/d;

    move-result-object v0

    invoke-virtual {v0}, LBg/d;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, LBg/r;->b()LBg/d;

    move-result-object v0

    invoke-virtual {v0}, LBg/d;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, LBg/r;->b()LBg/d;

    move-result-object p1

    invoke-virtual {p1}, LBg/d;->b()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LBg/j;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final y(LBg/m;)Lzg/k;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LEg/b;->q()LBg/r;

    move-result-object v0

    invoke-static {v0}, LFg/g;->b(LBg/r;)Lzg/h;

    move-result-object v0

    iput-object v0, p0, LEg/i;->g:Lzg/h;

    invoke-virtual {p0}, LEg/b;->q()LBg/r;

    move-result-object v0

    invoke-virtual {p0, v0}, LEg/i;->x(LBg/r;)LBg/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, LEg/i;->g:Lzg/h;

    invoke-virtual {v1, v0}, Lzg/h;->a(LBg/j;)V

    :cond_0
    new-instance v0, Lzg/k;

    iget-object v1, p0, LEg/i;->g:Lzg/h;

    iget-object v2, p0, LEg/i;->f:[C

    invoke-direct {v0, v1, v2, p1}, Lzg/k;-><init>(Ljava/io/InputStream;[CLBg/m;)V

    return-object v0
.end method
