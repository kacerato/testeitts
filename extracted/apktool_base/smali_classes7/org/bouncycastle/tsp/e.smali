.class public Lorg/bouncycastle/tsp/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:LQk/j;


# instance fields
.field public a:Loh/x;

.field public b:Loh/e;

.field public c:Lhi/D;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LQk/j;

    invoke-direct {v0}, LQk/j;-><init>()V

    sput-object v0, Lorg/bouncycastle/tsp/e;->d:LQk/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lhi/D;

    invoke-direct {v0}, Lhi/D;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tsp/e;->c:Lhi/D;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ZLoh/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p3}, Loh/g;->r()Loh/B;

    move-result-object p3

    invoke-virtual {p3}, Loh/v;->getEncoded()[B

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/tsp/e;->b(Ljava/lang/String;Z[B)V

    return-void
.end method

.method public b(Ljava/lang/String;Z[B)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/tsp/e;->c:Lhi/D;

    new-instance v1, Loh/x;

    invoke-direct {v1, p1}, Loh/x;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p3}, Lhi/D;->d(Loh/x;Z[B)V

    return-void
.end method

.method public c(Loh/x;ZLoh/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPIOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tsp/e;->c:Lhi/D;

    invoke-static {v0, p1, p2, p3}, Lorg/bouncycastle/tsp/c;->a(Lhi/D;Loh/x;ZLoh/g;)V

    return-void
.end method

.method public d(Loh/x;Z[B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/e;->c:Lhi/D;

    invoke-virtual {v0, p1, p2, p3}, Lhi/D;->d(Loh/x;Z[B)V

    return-void
.end method

.method public e(Lhi/b;[B)Lorg/bouncycastle/tsp/d;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/tsp/e;->f(Lhi/b;[BLjava/math/BigInteger;)Lorg/bouncycastle/tsp/d;

    move-result-object p1

    return-object p1
.end method

.method public f(Lhi/b;[BLjava/math/BigInteger;)Lorg/bouncycastle/tsp/d;
    .locals 6

    if-eqz p1, :cond_2

    new-instance v1, Lci/h;

    invoke-direct {v1, p1, p2}, Lci/h;-><init>(Lhi/b;[B)V

    iget-object p1, p0, Lorg/bouncycastle/tsp/e;->c:Lhi/D;

    invoke-virtual {p1}, Lhi/D;->h()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/tsp/e;->c:Lhi/D;

    invoke-virtual {p1}, Lhi/D;->e()Lhi/C;

    move-result-object p1

    :goto_0
    move-object v5, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    new-instance p1, Lorg/bouncycastle/tsp/d;

    new-instance p2, Lci/k;

    iget-object v2, p0, Lorg/bouncycastle/tsp/e;->a:Loh/x;

    if-eqz p3, :cond_1

    new-instance v3, Loh/s;

    invoke-direct {v3, p3}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    iget-object v4, p0, Lorg/bouncycastle/tsp/e;->b:Loh/e;

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lci/k;-><init>(Lci/h;Loh/x;Loh/s;Loh/e;Lhi/C;)V

    invoke-direct {p1, p2}, Lorg/bouncycastle/tsp/d;-><init>(Lci/k;)V

    return-object p1

    :cond_1
    const/4 v3, 0x0

    iget-object v4, p0, Lorg/bouncycastle/tsp/e;->b:Loh/e;

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lci/k;-><init>(Lci/h;Loh/x;Loh/s;Loh/e;Lhi/C;)V

    invoke-direct {p1, p2}, Lorg/bouncycastle/tsp/d;-><init>(Lci/k;)V

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "digest algorithm not specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(Ljava/lang/String;[B)Lorg/bouncycastle/tsp/d;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/tsp/e;->h(Ljava/lang/String;[BLjava/math/BigInteger;)Lorg/bouncycastle/tsp/d;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/String;[BLjava/math/BigInteger;)Lorg/bouncycastle/tsp/d;
    .locals 6

    if-eqz p1, :cond_2

    new-instance v0, Loh/x;

    invoke-direct {v0, p1}, Loh/x;-><init>(Ljava/lang/String;)V

    sget-object p1, Lorg/bouncycastle/tsp/e;->d:LQk/j;

    invoke-virtual {p1, v0}, LQk/j;->b(Loh/x;)Lhi/b;

    move-result-object p1

    new-instance v1, Lci/h;

    invoke-direct {v1, p1, p2}, Lci/h;-><init>(Lhi/b;[B)V

    iget-object p1, p0, Lorg/bouncycastle/tsp/e;->c:Lhi/D;

    invoke-virtual {p1}, Lhi/D;->h()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/tsp/e;->c:Lhi/D;

    invoke-virtual {p1}, Lhi/D;->e()Lhi/C;

    move-result-object p1

    :goto_0
    move-object v5, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    new-instance p1, Lorg/bouncycastle/tsp/d;

    new-instance p2, Lci/k;

    iget-object v2, p0, Lorg/bouncycastle/tsp/e;->a:Loh/x;

    if-eqz p3, :cond_1

    new-instance v3, Loh/s;

    invoke-direct {v3, p3}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    iget-object v4, p0, Lorg/bouncycastle/tsp/e;->b:Loh/e;

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lci/k;-><init>(Lci/h;Loh/x;Loh/s;Loh/e;Lhi/C;)V

    invoke-direct {p1, p2}, Lorg/bouncycastle/tsp/d;-><init>(Lci/k;)V

    return-object p1

    :cond_1
    const/4 v3, 0x0

    iget-object v4, p0, Lorg/bouncycastle/tsp/e;->b:Loh/e;

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lci/k;-><init>(Lci/h;Loh/x;Loh/s;Loh/e;Lhi/C;)V

    invoke-direct {p1, p2}, Lorg/bouncycastle/tsp/d;-><init>(Lci/k;)V

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No digest algorithm specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(Loh/x;[B)Lorg/bouncycastle/tsp/d;
    .locals 1

    sget-object v0, Lorg/bouncycastle/tsp/e;->d:LQk/j;

    invoke-virtual {v0, p1}, LQk/j;->b(Loh/x;)Lhi/b;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/tsp/e;->e(Lhi/b;[B)Lorg/bouncycastle/tsp/d;

    move-result-object p1

    return-object p1
.end method

.method public j(Loh/x;[BLjava/math/BigInteger;)Lorg/bouncycastle/tsp/d;
    .locals 1

    sget-object v0, Lorg/bouncycastle/tsp/e;->d:LQk/j;

    invoke-virtual {v0, p1}, LQk/j;->b(Loh/x;)Lhi/b;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/tsp/e;->f(Lhi/b;[BLjava/math/BigInteger;)Lorg/bouncycastle/tsp/d;

    move-result-object p1

    return-object p1
.end method

.method public k(Z)V
    .locals 0

    invoke-static {p1}, Loh/e;->I(Z)Loh/e;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tsp/e;->b:Loh/e;

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Loh/x;

    invoke-direct {v0, p1}, Loh/x;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/tsp/e;->a:Loh/x;

    return-void
.end method

.method public m(Loh/x;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/tsp/e;->a:Loh/x;

    return-void
.end method
