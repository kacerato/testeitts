.class public LDj/l;
.super LDj/k;
.source "SourceFile"


# instance fields
.field public final f:LGj/d;


# direct methods
.method public constructor <init>(LGj/d;LEk/K$a;)V
    .locals 0

    invoke-direct {p0, p2}, LDj/k;-><init>(LEk/K$a;)V

    iput-object p1, p0, LDj/l;->f:LGj/d;

    return-void
.end method


# virtual methods
.method public h(LEk/d;LDj/o;)LDj/j;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, LDj/l;->i(LEk/d;LDj/o;LDj/n;)LDj/j;

    move-result-object p1

    return-object p1
.end method

.method public i(LEk/d;LDj/o;LDj/n;)LDj/j;
    .locals 6

    new-instance v0, LEk/K$a;

    iget-object v1, p0, LDj/k;->a:LEk/K$a;

    invoke-direct {v0, v1}, LEk/K$a;-><init>(LEk/K$a;)V

    invoke-virtual {v0, p1}, LEk/K$a;->j(LEk/d;)LEk/K$a;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, LDj/n;->a()LFk/S;

    move-result-object p1

    invoke-virtual {v0, p1}, LEk/K$a;->i(LFk/S;)LEk/K$a;

    :cond_0
    invoke-virtual {p2}, LDj/o;->a()LFk/T;

    move-result-object p1

    invoke-static {p1}, LEk/M;->z(LFk/T;)LEk/M;

    move-result-object p1

    invoke-virtual {v0, p1}, LEk/K$a;->m(LEk/M;)LEk/K$a;

    invoke-virtual {v0}, LEk/K$a;->a()LEk/K;

    move-result-object p1

    iget-object p2, p0, LDj/l;->f:LGj/d;

    invoke-interface {p2}, LGj/d;->d()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, LEk/K;->U()LEk/M;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, LDj/l;->f:LGj/d;

    invoke-interface {p2}, LGj/d;->b()LDj/j;

    move-result-object p2

    invoke-virtual {p2}, LDj/j;->e()LEk/c;

    move-result-object p2

    invoke-virtual {p2}, LEk/c;->z()LEk/K;

    move-result-object p2

    invoke-virtual {p2}, LEk/K;->U()LEk/M;

    move-result-object p2

    :goto_0
    iget-object p3, p0, LDj/l;->f:LGj/d;

    invoke-interface {p3}, LGj/d;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    :try_start_0
    sget-object v0, LLk/a;->A:Lyk/f$b;

    invoke-virtual {v0}, Lyk/f$b;->f()Lyk/c;

    move-result-object v0

    invoke-static {p1, v0}, Lyk/g;->a(Loh/g;Lyk/c;)[B

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p2}, LEk/M;->u()I

    move-result p2

    if-eqz p2, :cond_4

    const/4 p3, 0x1

    if-eq p2, p3, :cond_3

    const/4 p3, 0x2

    if-ne p2, p3, :cond_2

    sget-object p2, Lbi/b;->y:Loh/x;

    iget-object p3, p0, LDj/l;->f:LGj/d;

    invoke-interface {p3}, LGj/d;->getSignature()[B

    move-result-object p3

    invoke-static {p2, p3}, LGj/a;->a(Loh/x;[B)LFk/j0;

    move-result-object p2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unknown key type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    sget-object p2, Lbi/b;->u:Loh/x;

    iget-object p3, p0, LDj/l;->f:LGj/d;

    invoke-interface {p3}, LGj/d;->getSignature()[B

    move-result-object p3

    invoke-static {p2, p3}, LGj/a;->a(Loh/x;[B)LFk/j0;

    move-result-object p2

    goto :goto_1

    :cond_4
    sget-object p2, LZh/d;->H:Loh/x;

    iget-object p3, p0, LDj/l;->f:LGj/d;

    invoke-interface {p3}, LGj/d;->getSignature()[B

    move-result-object p3

    invoke-static {p2, p3}, LGj/a;->a(Loh/x;[B)LFk/j0;

    move-result-object p2

    :goto_1
    new-instance p3, LEk/c$a;

    invoke-direct {p3}, LEk/c$a;-><init>()V

    iget-object v0, p0, LDj/l;->f:LGj/d;

    invoke-interface {v0}, LGj/d;->f()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    iget-object v1, p0, LDj/l;->f:LGj/d;

    invoke-interface {v1}, LGj/d;->d()Z

    move-result v1

    const-string v2, "unknown digest"

    if-eqz v1, :cond_7

    sget-object v1, LSh/d;->c:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, LFk/t;->f:LFk/t;

    :goto_2
    invoke-static {v0}, LEk/s;->z(LFk/t;)LEk/s;

    move-result-object v0

    goto :goto_3

    :cond_5
    sget-object v1, LSh/d;->d:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, LFk/t;->g:LFk/t;

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    iget-object v1, p0, LDj/l;->f:LGj/d;

    invoke-interface {v1}, LGj/d;->c()[B

    move-result-object v1

    new-instance v3, LFk/x;

    array-length v4, v1

    add-int/lit8 v4, v4, -0x8

    array-length v5, v1

    invoke-static {v1, v4, v5}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v1

    invoke-direct {v3, v1}, LFk/x;-><init>([B)V

    sget-object v1, LSh/d;->c:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {v3}, LEk/s;->A(LFk/x;)LEk/s;

    move-result-object v0

    goto :goto_3

    :cond_8
    sget-object v1, LSh/d;->d:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v3}, LEk/s;->B(LFk/x;)LEk/s;

    move-result-object v0

    :goto_3
    iget-object v1, p0, LDj/k;->c:LFk/w0;

    invoke-virtual {p3, v1}, LEk/c$a;->j(LFk/w0;)LEk/c$a;

    sget-object v1, LEk/e;->f:LEk/e;

    invoke-virtual {p3, v1}, LEk/c$a;->i(LEk/e;)LEk/c$a;

    invoke-virtual {p3, v0}, LEk/c$a;->f(LEk/s;)LEk/c$a;

    invoke-virtual {p3, p1}, LEk/c$a;->h(LEk/K;)LEk/c$a;

    invoke-virtual {p3, p2}, LEk/c$a;->g(LFk/j0;)LEk/c$a;

    new-instance p1, LDj/j;

    invoke-virtual {p3}, LEk/c$a;->b()LEk/c;

    move-result-object p2

    invoke-direct {p1, p2}, LDj/j;-><init>(LEk/c;)V

    return-object p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cannot produce certificate signature"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
