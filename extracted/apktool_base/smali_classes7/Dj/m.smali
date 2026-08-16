.class public LDj/m;
.super LDj/k;
.source "SourceFile"


# instance fields
.field public final f:LEk/s;


# direct methods
.method public constructor <init>(LDj/j;LQk/q;LEk/K$a;)V
    .locals 3

    invoke-direct {p0, p1, p3}, LDj/k;-><init>(LDj/j;LEk/K$a;)V

    new-instance p3, Lhi/b;

    sget-object v0, LSh/d;->c:Loh/x;

    invoke-direct {p3, v0}, Lhi/b;-><init>(Loh/x;)V

    invoke-virtual {p3}, Lhi/b;->u()Loh/x;

    move-result-object v1

    :try_start_0
    invoke-interface {p2, p3}, LQk/q;->a(Lhi/b;)LQk/p;

    move-result-object p2
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {p2}, LQk/p;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    invoke-virtual {p1}, LDj/j;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-interface {p2}, LQk/p;->b()[B

    move-result-object p1

    new-instance p2, LFk/x;

    array-length p3, p1

    add-int/lit8 p3, p3, -0x8

    array-length v2, p1

    invoke-static {p1, p3, v2}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object p1

    invoke-direct {p2, p1}, LFk/x;-><init>([B)V

    invoke-virtual {v1, v0}, Loh/B;->A(Loh/B;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, LEk/s;->A(LFk/x;)LEk/s;

    move-result-object p1

    :goto_0
    iput-object p1, p0, LDj/m;->f:LEk/s;

    goto :goto_1

    :cond_0
    sget-object p1, LSh/d;->d:Loh/x;

    invoke-virtual {v1, p1}, Loh/B;->A(Loh/B;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p2}, LEk/s;->B(LFk/x;)LEk/s;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unknown digest"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public h(LEk/d;Ljava/math/BigInteger;Ljava/math/BigInteger;)LDj/j;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, LDj/m;->i(LEk/d;Ljava/math/BigInteger;Ljava/math/BigInteger;LFk/S;)LDj/j;

    move-result-object p1

    return-object p1
.end method

.method public i(LEk/d;Ljava/math/BigInteger;Ljava/math/BigInteger;LFk/S;)LDj/j;
    .locals 1

    invoke-static {p2, p3}, LFk/k;->G(Ljava/math/BigInteger;Ljava/math/BigInteger;)LFk/k;

    move-result-object p2

    new-instance p3, LEk/K$a;

    iget-object v0, p0, LDj/k;->a:LEk/K$a;

    invoke-direct {p3, v0}, LEk/K$a;-><init>(LEk/K$a;)V

    invoke-virtual {p3, p1}, LEk/K$a;->j(LEk/d;)LEk/K$a;

    if-eqz p4, :cond_0

    invoke-virtual {p3, p4}, LEk/K$a;->i(LFk/S;)LEk/K$a;

    :cond_0
    invoke-static {p2}, LEk/M;->y(LFk/k;)LEk/M;

    move-result-object p1

    invoke-virtual {p3, p1}, LEk/K$a;->m(LEk/M;)LEk/K$a;

    new-instance p1, LEk/c$a;

    invoke-direct {p1}, LEk/c$a;-><init>()V

    iget-object p2, p0, LDj/k;->c:LFk/w0;

    invoke-virtual {p1, p2}, LEk/c$a;->j(LFk/w0;)LEk/c$a;

    sget-object p2, LEk/e;->g:LEk/e;

    invoke-virtual {p1, p2}, LEk/c$a;->i(LEk/e;)LEk/c$a;

    iget-object p2, p0, LDj/m;->f:LEk/s;

    invoke-virtual {p1, p2}, LEk/c$a;->f(LEk/s;)LEk/c$a;

    invoke-virtual {p3}, LEk/K$a;->a()LEk/K;

    move-result-object p2

    invoke-virtual {p1, p2}, LEk/c$a;->h(LEk/K;)LEk/c$a;

    new-instance p2, LDj/j;

    invoke-virtual {p1}, LEk/c$a;->b()LEk/c;

    move-result-object p1

    invoke-direct {p2, p1}, LDj/j;-><init>(LEk/c;)V

    return-object p2
.end method
