.class public Lli/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lhi/r0;

.field public b:Lhi/D;


# direct methods
.method public constructor <init>(Lli/a;Lli/b;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lhi/r0;

    invoke-direct {v0}, Lhi/r0;-><init>()V

    iput-object v0, p0, Lli/l;->a:Lhi/r0;

    new-instance v0, Lhi/D;

    invoke-direct {v0}, Lhi/D;-><init>()V

    iput-object v0, p0, Lli/l;->b:Lhi/D;

    iget-object v0, p0, Lli/l;->a:Lhi/r0;

    iget-object p1, p1, Lli/a;->b:Lhi/I;

    invoke-virtual {v0, p1}, Lhi/r0;->g(Lhi/I;)V

    iget-object p1, p0, Lli/l;->a:Lhi/r0;

    iget-object p2, p2, Lli/b;->b:Loh/g;

    invoke-static {p2}, Lhi/e;->u(Ljava/lang/Object;)Lhi/e;

    move-result-object p2

    invoke-virtual {p1, p2}, Lhi/r0;->h(Lhi/e;)V

    iget-object p1, p0, Lli/l;->a:Lhi/r0;

    new-instance p2, Loh/s;

    invoke-direct {p2, p3}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p1, p2}, Lhi/r0;->j(Loh/s;)V

    iget-object p1, p0, Lli/l;->a:Lhi/r0;

    new-instance p2, Loh/n;

    invoke-direct {p2, p4}, Loh/n;-><init>(Ljava/util/Date;)V

    invoke-virtual {p1, p2}, Lhi/r0;->l(Loh/n;)V

    iget-object p1, p0, Lli/l;->a:Lhi/r0;

    new-instance p2, Loh/n;

    invoke-direct {p2, p5}, Loh/n;-><init>(Ljava/util/Date;)V

    invoke-virtual {p1, p2}, Lhi/r0;->d(Loh/n;)V

    return-void
.end method

.method public constructor <init>(Lli/a;Lli/b;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Ljava/util/Locale;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lhi/r0;

    invoke-direct {v0}, Lhi/r0;-><init>()V

    iput-object v0, p0, Lli/l;->a:Lhi/r0;

    new-instance v0, Lhi/D;

    invoke-direct {v0}, Lhi/D;-><init>()V

    iput-object v0, p0, Lli/l;->b:Lhi/D;

    iget-object v0, p0, Lli/l;->a:Lhi/r0;

    iget-object p1, p1, Lli/a;->b:Lhi/I;

    invoke-virtual {v0, p1}, Lhi/r0;->g(Lhi/I;)V

    iget-object p1, p0, Lli/l;->a:Lhi/r0;

    iget-object p2, p2, Lli/b;->b:Loh/g;

    invoke-static {p2}, Lhi/e;->u(Ljava/lang/Object;)Lhi/e;

    move-result-object p2

    invoke-virtual {p1, p2}, Lhi/r0;->h(Lhi/e;)V

    iget-object p1, p0, Lli/l;->a:Lhi/r0;

    new-instance p2, Loh/s;

    invoke-direct {p2, p3}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p1, p2}, Lhi/r0;->j(Loh/s;)V

    iget-object p1, p0, Lli/l;->a:Lhi/r0;

    new-instance p2, Loh/n;

    invoke-direct {p2, p4, p6}, Loh/n;-><init>(Ljava/util/Date;Ljava/util/Locale;)V

    invoke-virtual {p1, p2}, Lhi/r0;->l(Loh/n;)V

    iget-object p1, p0, Lli/l;->a:Lhi/r0;

    new-instance p2, Loh/n;

    invoke-direct {p2, p5, p6}, Loh/n;-><init>(Ljava/util/Date;Ljava/util/Locale;)V

    invoke-virtual {p1, p2}, Lhi/r0;->d(Loh/n;)V

    return-void
.end method

.method public constructor <init>(Lli/e;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lhi/r0;

    invoke-direct {v0}, Lhi/r0;-><init>()V

    iput-object v0, p0, Lli/l;->a:Lhi/r0;

    new-instance v1, Loh/s;

    invoke-virtual {p1}, Lli/e;->m()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lhi/r0;->j(Loh/s;)V

    iget-object v0, p0, Lli/l;->a:Lhi/r0;

    invoke-virtual {p1}, Lli/e;->h()Lli/b;

    move-result-object v1

    iget-object v1, v1, Lli/b;->b:Loh/g;

    invoke-static {v1}, Lhi/e;->u(Ljava/lang/Object;)Lhi/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhi/r0;->h(Lhi/e;)V

    iget-object v0, p0, Lli/l;->a:Lhi/r0;

    new-instance v1, Loh/n;

    invoke-virtual {p1}, Lli/e;->l()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v1, v2}, Loh/n;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lhi/r0;->l(Loh/n;)V

    iget-object v0, p0, Lli/l;->a:Lhi/r0;

    new-instance v1, Loh/n;

    invoke-virtual {p1}, Lli/e;->k()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v1, v2}, Loh/n;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lhi/r0;->d(Loh/n;)V

    iget-object v0, p0, Lli/l;->a:Lhi/r0;

    invoke-virtual {p1}, Lli/e;->g()Lli/a;

    move-result-object v1

    iget-object v1, v1, Lli/a;->b:Lhi/I;

    invoke-virtual {v0, v1}, Lhi/r0;->g(Lhi/I;)V

    invoke-virtual {p1}, Lli/e;->i()[Z

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lli/l;->a:Lhi/r0;

    invoke-static {v0}, Lli/c;->c([Z)Loh/r0;

    move-result-object v0

    invoke-virtual {v1, v0}, Lhi/r0;->i(Loh/r0;)V

    :cond_0
    invoke-virtual {p1}, Lli/e;->a()[Lhi/g;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lli/l;->a:Lhi/r0;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Lhi/r0;->a(Lhi/g;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lhi/D;

    invoke-direct {v0}, Lhi/D;-><init>()V

    iput-object v0, p0, Lli/l;->b:Lhi/D;

    invoke-virtual {p1}, Lli/e;->f()Lhi/C;

    move-result-object p1

    invoke-virtual {p1}, Lhi/C;->F()Ljava/util/Enumeration;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lli/l;->b:Lhi/D;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loh/x;

    invoke-virtual {p1, v2}, Lhi/C;->x(Loh/x;)Lhi/B;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhi/D;->a(Lhi/B;)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Loh/x;Loh/g;)Lli/l;
    .locals 3

    iget-object v0, p0, Lli/l;->a:Lhi/r0;

    new-instance v1, Lhi/g;

    new-instance v2, Loh/I0;

    invoke-direct {v2, p2}, Loh/I0;-><init>(Loh/g;)V

    invoke-direct {v1, p1, v2}, Lhi/g;-><init>(Loh/x;Loh/G;)V

    invoke-virtual {v0, v1}, Lhi/r0;->a(Lhi/g;)V

    return-object p0
.end method

.method public b(Loh/x;[Loh/g;)Lli/l;
    .locals 3

    iget-object v0, p0, Lli/l;->a:Lhi/r0;

    new-instance v1, Lhi/g;

    new-instance v2, Loh/I0;

    invoke-direct {v2, p2}, Loh/I0;-><init>([Loh/g;)V

    invoke-direct {v1, p1, v2}, Lhi/g;-><init>(Loh/x;Loh/G;)V

    invoke-virtual {v0, v1}, Lhi/r0;->a(Lhi/g;)V

    return-object p0
.end method

.method public c(Lhi/B;)Lli/l;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/CertIOException;
        }
    .end annotation

    iget-object v0, p0, Lli/l;->b:Lhi/D;

    invoke-virtual {v0, p1}, Lhi/D;->a(Lhi/B;)V

    return-object p0
.end method

.method public d(Loh/x;ZLoh/g;)Lli/l;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/CertIOException;
        }
    .end annotation

    iget-object v0, p0, Lli/l;->b:Lhi/D;

    invoke-static {v0, p1, p2, p3}, Lli/c;->a(Lhi/D;Loh/x;ZLoh/g;)V

    return-object p0
.end method

.method public e(Loh/x;Z[B)Lli/l;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/CertIOException;
        }
    .end annotation

    iget-object v0, p0, Lli/l;->b:Lhi/D;

    invoke-virtual {v0, p1, p2, p3}, Lhi/D;->d(Loh/x;Z[B)V

    return-object p0
.end method

.method public f(LQk/f;)Lli/e;
    .locals 2

    iget-object v0, p0, Lli/l;->a:Lhi/r0;

    invoke-interface {p1}, LQk/f;->a()Lhi/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhi/r0;->k(Lhi/b;)V

    iget-object v0, p0, Lli/l;->b:Lhi/D;

    invoke-virtual {v0}, Lhi/D;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lli/l;->a:Lhi/r0;

    iget-object v1, p0, Lli/l;->b:Lhi/D;

    invoke-virtual {v1}, Lhi/D;->e()Lhi/C;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhi/r0;->e(Lhi/C;)V

    :cond_0
    iget-object v0, p0, Lli/l;->a:Lhi/r0;

    invoke-virtual {v0}, Lhi/r0;->c()Lhi/i;

    move-result-object v0

    invoke-static {p1, v0}, Lli/c;->h(LQk/f;Lhi/i;)Lli/e;

    move-result-object p1

    return-object p1
.end method

.method public final g(Loh/x;)Lhi/B;
    .locals 1

    iget-object v0, p0, Lli/l;->b:Lhi/D;

    invoke-virtual {v0}, Lhi/D;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lli/l;->b:Lhi/D;

    invoke-virtual {v0}, Lhi/D;->e()Lhi/C;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhi/C;->x(Loh/x;)Lhi/B;

    move-result-object p1

    return-object p1
.end method

.method public h(Loh/x;)Lhi/B;
    .locals 0

    invoke-virtual {p0, p1}, Lli/l;->g(Loh/x;)Lhi/B;

    move-result-object p1

    return-object p1
.end method

.method public i(Loh/x;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lli/l;->g(Loh/x;)Lhi/B;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public j(Loh/x;)Lli/l;
    .locals 1

    iget-object v0, p0, Lli/l;->b:Lhi/D;

    invoke-static {v0, p1}, Lli/c;->d(Lhi/D;Loh/x;)Lhi/D;

    move-result-object p1

    iput-object p1, p0, Lli/l;->b:Lhi/D;

    return-object p0
.end method

.method public k(Lhi/B;)Lli/l;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/CertIOException;
        }
    .end annotation

    iget-object v0, p0, Lli/l;->b:Lhi/D;

    invoke-static {v0, p1}, Lli/c;->e(Lhi/D;Lhi/B;)Lhi/D;

    move-result-object p1

    iput-object p1, p0, Lli/l;->b:Lhi/D;

    return-object p0
.end method

.method public l(Loh/x;ZLoh/g;)Lli/l;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/CertIOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lli/l;->b:Lhi/D;

    new-instance v1, Lhi/B;

    invoke-interface {p3}, Loh/g;->r()Loh/B;

    move-result-object p3

    const-string v2, "DER"

    invoke-virtual {p3, v2}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object p3

    invoke-direct {v1, p1, p2, p3}, Lhi/B;-><init>(Loh/x;Z[B)V

    invoke-static {v0, v1}, Lli/c;->e(Lhi/D;Lhi/B;)Lhi/D;

    move-result-object p1

    iput-object p1, p0, Lli/l;->b:Lhi/D;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cert/CertIOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot encode extension: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public m(Loh/x;Z[B)Lli/l;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/CertIOException;
        }
    .end annotation

    iget-object v0, p0, Lli/l;->b:Lhi/D;

    new-instance v1, Lhi/B;

    invoke-direct {v1, p1, p2, p3}, Lhi/B;-><init>(Loh/x;Z[B)V

    invoke-static {v0, v1}, Lli/c;->e(Lhi/D;Lhi/B;)Lhi/D;

    move-result-object p1

    iput-object p1, p0, Lli/l;->b:Lhi/D;

    return-object p0
.end method

.method public n([Z)V
    .locals 1

    iget-object v0, p0, Lli/l;->a:Lhi/r0;

    invoke-static {p1}, Lli/c;->c([Z)Loh/r0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lhi/r0;->i(Loh/r0;)V

    return-void
.end method
