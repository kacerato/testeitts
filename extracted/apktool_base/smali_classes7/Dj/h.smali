.class public LDj/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lyk/c;


# instance fields
.field public final a:LEk/n;

.field public b:LEk/q;

.field public c:LEk/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, LLk/a;->M:Lyk/f$b;

    invoke-virtual {v0}, Lyk/f$b;->f()Lyk/c;

    move-result-object v0

    sput-object v0, LDj/h;->d:Lyk/c;

    return-void
.end method

.method public constructor <init>(LEk/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LDj/h;->a:LEk/n;

    return-void
.end method

.method public constructor <init>(LFk/O;)V
    .locals 1

    .line 2
    invoke-static {}, LEk/n;->u()LEk/n$a;

    move-result-object v0

    invoke-virtual {v0, p1}, LEk/n$a;->k(LFk/O;)LEk/n$a;

    move-result-object p1

    invoke-static {}, LFk/q0;->y()LFk/q0;

    move-result-object v0

    invoke-virtual {p1, v0}, LEk/n$a;->f(LFk/q0;)LEk/n$a;

    move-result-object p1

    invoke-virtual {p1}, LEk/n$a;->a()LEk/n;

    move-result-object p1

    invoke-direct {p0, p1}, LDj/h;-><init>(LEk/n;)V

    return-void
.end method

.method public static d(LEk/n;)LDj/h;
    .locals 1

    new-instance v0, LDj/h;

    invoke-direct {v0, p0}, LDj/h;-><init>(LEk/n;)V

    return-object v0
.end method

.method public static e(LFk/O;)LDj/h;
    .locals 1

    new-instance v0, LDj/h;

    invoke-direct {v0, p0}, LDj/h;-><init>(LFk/O;)V

    return-object v0
.end method

.method public static j(Ljava/io/OutputStream;[B)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public a(LGj/d;)LDj/g;
    .locals 4

    invoke-virtual {p0}, LDj/h;->f()LEk/L;

    move-result-object v0

    invoke-interface {p1}, LGj/d;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    sget-object v2, LDj/h;->d:Lyk/c;

    invoke-static {v0, v2}, Lyk/g;->a(Loh/g;Lyk/c;)[B

    move-result-object v2

    invoke-static {v1, v2}, LDj/h;->j(Ljava/io/OutputStream;[B)V

    invoke-interface {p1}, LGj/d;->e()Loh/x;

    move-result-object v1

    invoke-interface {p1}, LGj/d;->getSignature()[B

    move-result-object v2

    invoke-static {v1, v2}, LGj/a;->a(Loh/x;[B)LFk/j0;

    move-result-object v1

    new-instance v2, LDj/g;

    invoke-static {}, LEk/E;->u()LEk/E$a;

    move-result-object v3

    invoke-interface {p1}, LGj/d;->f()Lhi/b;

    move-result-object p1

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object p1

    invoke-static {p1}, LDj/i;->a(Loh/x;)LFk/t;

    move-result-object p1

    invoke-virtual {v3, p1}, LEk/E$a;->b(LFk/t;)LEk/E$a;

    move-result-object p1

    invoke-virtual {p1, v0}, LEk/E$a;->e(LEk/L;)LEk/E$a;

    move-result-object p1

    invoke-static {}, LEk/G;->A()LEk/G;

    move-result-object v0

    invoke-virtual {p1, v0}, LEk/E$a;->d(LEk/G;)LEk/E$a;

    move-result-object p1

    invoke-virtual {p1, v1}, LEk/E$a;->c(LFk/j0;)LEk/E$a;

    move-result-object p1

    invoke-virtual {p1}, LEk/E$a;->a()LEk/E;

    move-result-object p1

    invoke-direct {v2, p1}, LDj/g;-><init>(LEk/E;)V

    return-object v2
.end method

.method public b(LGj/d;LFk/x;)LDj/g;
    .locals 4

    invoke-virtual {p0}, LDj/h;->f()LEk/L;

    move-result-object v0

    invoke-interface {p1}, LGj/d;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    sget-object v2, LDj/h;->d:Lyk/c;

    invoke-static {v0, v2}, Lyk/g;->a(Loh/g;Lyk/c;)[B

    move-result-object v2

    invoke-static {v1, v2}, LDj/h;->j(Ljava/io/OutputStream;[B)V

    invoke-interface {p1}, LGj/d;->e()Loh/x;

    move-result-object v1

    invoke-interface {p1}, LGj/d;->getSignature()[B

    move-result-object v2

    invoke-static {v1, v2}, LGj/a;->a(Loh/x;[B)LFk/j0;

    move-result-object v1

    new-instance v2, LDj/g;

    invoke-static {}, LEk/E;->u()LEk/E$a;

    move-result-object v3

    invoke-interface {p1}, LGj/d;->f()Lhi/b;

    move-result-object p1

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object p1

    invoke-static {p1}, LDj/i;->a(Loh/x;)LFk/t;

    move-result-object p1

    invoke-virtual {v3, p1}, LEk/E$a;->b(LFk/t;)LEk/E$a;

    move-result-object p1

    invoke-virtual {p1, v0}, LEk/E$a;->e(LEk/L;)LEk/E$a;

    move-result-object p1

    invoke-static {p2}, LEk/G;->v(LFk/x;)LEk/G;

    move-result-object p2

    invoke-virtual {p1, p2}, LEk/E$a;->d(LEk/G;)LEk/E$a;

    move-result-object p1

    invoke-virtual {p1, v1}, LEk/E$a;->c(LFk/j0;)LEk/E$a;

    move-result-object p1

    invoke-virtual {p1}, LEk/E$a;->a()LEk/E;

    move-result-object p1

    invoke-direct {v2, p1}, LDj/g;-><init>(LEk/E;)V

    return-object v2
.end method

.method public c(LGj/d;Ljava/util/List;)LDj/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LGj/d;",
            "Ljava/util/List<",
            "LDj/j;",
            ">;)",
            "LDj/g;"
        }
    .end annotation

    invoke-virtual {p0}, LDj/h;->f()LEk/L;

    move-result-object v0

    invoke-interface {p1}, LGj/d;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    sget-object v2, LDj/h;->d:Lyk/c;

    invoke-static {v0, v2}, Lyk/g;->a(Loh/g;Lyk/c;)[B

    move-result-object v2

    invoke-static {v1, v2}, LDj/h;->j(Ljava/io/OutputStream;[B)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDj/j;

    invoke-virtual {v2}, LDj/j;->e()LEk/c;

    move-result-object v2

    invoke-static {v2}, LEk/b;->C(Ljava/lang/Object;)LEk/b;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, LGj/d;->e()Loh/x;

    move-result-object p2

    invoke-interface {p1}, LGj/d;->getSignature()[B

    move-result-object v2

    invoke-static {p2, v2}, LGj/a;->a(Loh/x;[B)LFk/j0;

    move-result-object p2

    new-instance v2, LDj/g;

    invoke-static {}, LEk/E;->u()LEk/E$a;

    move-result-object v3

    invoke-interface {p1}, LGj/d;->f()Lhi/b;

    move-result-object p1

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object p1

    invoke-static {p1}, LDj/i;->a(Loh/x;)LFk/t;

    move-result-object p1

    invoke-virtual {v3, p1}, LEk/E$a;->b(LFk/t;)LEk/E$a;

    move-result-object p1

    invoke-virtual {p1, v0}, LEk/E$a;->e(LEk/L;)LEk/E$a;

    move-result-object p1

    new-instance v0, LEk/B;

    invoke-direct {v0, v1}, LEk/B;-><init>(Ljava/util/List;)V

    invoke-static {v0}, LEk/G;->u(LEk/B;)LEk/G;

    move-result-object v0

    invoke-virtual {p1, v0}, LEk/E$a;->d(LEk/G;)LEk/E$a;

    move-result-object p1

    invoke-virtual {p1, p2}, LEk/E$a;->c(LFk/j0;)LEk/E$a;

    move-result-object p1

    invoke-virtual {p1}, LEk/E$a;->a()LEk/E;

    move-result-object p1

    invoke-direct {v2, p1}, LDj/g;-><init>(LEk/E;)V

    return-object v2
.end method

.method public final f()LEk/L;
    .locals 3

    new-instance v0, LEk/F;

    iget-object v1, p0, LDj/h;->b:LEk/q;

    iget-object v2, p0, LDj/h;->c:LEk/m;

    invoke-direct {v0, v1, v2}, LEk/F;-><init>(LEk/q;LEk/m;)V

    invoke-static {}, LEk/L;->u()LEk/L$a;

    move-result-object v1

    invoke-virtual {v1, v0}, LEk/L$a;->c(LEk/F;)LEk/L$a;

    move-result-object v0

    iget-object v1, p0, LDj/h;->a:LEk/n;

    invoke-virtual {v0, v1}, LEk/L$a;->b(LEk/n;)LEk/L$a;

    move-result-object v0

    invoke-virtual {v0}, LEk/L$a;->a()LEk/L;

    move-result-object v0

    return-object v0
.end method

.method public g(LEk/p;)LDj/h;
    .locals 3

    invoke-static {}, LEk/q;->u()LEk/q$a;

    move-result-object v0

    new-instance v1, LFk/w0;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, LFk/w0;-><init>(I)V

    invoke-virtual {v0, v1}, LEk/q$a;->m(LFk/w0;)LEk/q$a;

    move-result-object v0

    invoke-virtual {v0, p1}, LEk/q$a;->l(LEk/p;)LEk/q$a;

    move-result-object p1

    invoke-virtual {p1}, LEk/q$a;->j()LEk/q;

    move-result-object p1

    iput-object p1, p0, LDj/h;->b:LEk/q;

    return-object p0
.end method

.method public h(LEk/m;)LDj/h;
    .locals 0

    iput-object p1, p0, LDj/h;->c:LEk/m;

    return-object p0
.end method

.method public i([B)LDj/h;
    .locals 3

    invoke-static {}, LEk/q;->u()LEk/q$a;

    move-result-object v0

    new-instance v1, LFk/w0;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, LFk/w0;-><init>(I)V

    invoke-virtual {v0, v1}, LEk/q$a;->m(LFk/w0;)LEk/q$a;

    move-result-object v0

    new-instance v1, LEk/v;

    invoke-direct {v1, p1}, LEk/v;-><init>([B)V

    invoke-static {v1}, LEk/p;->C(LEk/v;)LEk/p;

    move-result-object p1

    invoke-virtual {v0, p1}, LEk/q$a;->l(LEk/p;)LEk/q$a;

    move-result-object p1

    invoke-virtual {p1}, LEk/q$a;->b()LCk/b;

    move-result-object p1

    iput-object p1, p0, LDj/h;->b:LEk/q;

    return-object p0
.end method
