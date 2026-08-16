.class public Ldi/b;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Ljava/math/BigInteger;

.field public c:Ldi/a;

.field public d:Loh/s;

.field public e:Loh/y;

.field public f:Loh/s;

.field public g:Loh/y;


# direct methods
.method public constructor <init>(LXi/G;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Ldi/b;->b:Ljava/math/BigInteger;

    invoke-virtual {p1}, LXi/G;->a()Ljk/e;

    move-result-object v0

    invoke-static {v0}, Ljk/c;->m(Ljk/e;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljk/e;->v()Lrk/b;

    move-result-object v1

    check-cast v1, Lrk/g;

    invoke-interface {v1}, Lrk/g;->d()Lrk/f;

    move-result-object v1

    invoke-interface {v1}, Lrk/f;->b()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_0

    new-instance v2, Ldi/a;

    aget v4, v1, v4

    aget v1, v1, v3

    invoke-direct {v2, v4, v1}, Ldi/a;-><init>(II)V

    :goto_0
    iput-object v2, p0, Ldi/b;->c:Ldi/a;

    goto :goto_1

    :cond_0
    array-length v2, v1

    const/4 v6, 0x5

    if-ne v2, v6, :cond_1

    new-instance v2, Ldi/a;

    const/4 v6, 0x4

    aget v6, v1, v6

    aget v3, v1, v3

    aget v4, v1, v4

    aget v1, v1, v5

    invoke-direct {v2, v6, v3, v4, v1}, Ldi/a;-><init>(IIII)V

    goto :goto_0

    :goto_1
    new-instance v1, Loh/s;

    invoke-virtual {v0}, Ljk/e;->p()Ljk/f;

    move-result-object v2

    invoke-virtual {v2}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    iput-object v1, p0, Ldi/b;->d:Loh/s;

    new-instance v1, Loh/C0;

    invoke-virtual {v0}, Ljk/e;->r()Ljk/f;

    move-result-object v0

    invoke-virtual {v0}, Ljk/f;->e()[B

    move-result-object v0

    invoke-direct {v1, v0}, Loh/C0;-><init>([B)V

    iput-object v1, p0, Ldi/b;->e:Loh/y;

    new-instance v0, Loh/s;

    invoke-virtual {p1}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Ldi/b;->f:Loh/s;

    new-instance v0, Loh/C0;

    invoke-virtual {p1}, LXi/G;->b()Ljk/i;

    move-result-object p1

    invoke-static {p1}, Ldi/e;->b(Ljk/i;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Loh/C0;-><init>([B)V

    iput-object v0, p0, Ldi/b;->g:Loh/y;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "curve must have a trinomial or pentanomial basis"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "only binary domain is possible"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Ldi/b;->b:Ljava/math/BigInteger;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    instance-of v1, v1, Loh/M;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/M;

    invoke-virtual {v0}, Loh/M;->X()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Loh/M;->g()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Loh/M;->c()Loh/B;

    move-result-object v0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Ldi/b;->b:Ljava/math/BigInteger;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "object parse error"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Ldi/a;->u(Ljava/lang/Object;)Ldi/a;

    move-result-object v1

    iput-object v1, p0, Ldi/b;->c:Ldi/a;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v1

    iput-object v1, p0, Ldi/b;->d:Loh/s;

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v1

    iput-object v1, p0, Ldi/b;->e:Loh/y;

    add-int/lit8 v1, v0, 0x3

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v1

    iput-object v1, p0, Ldi/b;->f:Loh/s;

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    iput-object p1, p0, Ldi/b;->g:Loh/y;

    return-void
.end method

.method public static z(Ljava/lang/Object;)Ldi/b;
    .locals 1

    instance-of v0, p0, Ldi/b;

    if-eqz v0, :cond_0

    check-cast p0, Ldi/b;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Ldi/b;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Ldi/b;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Ldi/b;->f:Loh/s;

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Ldi/b;->b:Ljava/math/BigInteger;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Loh/K0;

    new-instance v2, Loh/s;

    iget-object v3, p0, Ldi/b;->b:Ljava/math/BigInteger;

    invoke-direct {v2, v3}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Ldi/b;->c:Ldi/a;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Ldi/b;->d:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Ldi/b;->e:Loh/y;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Ldi/b;->f:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Ldi/b;->g:Loh/y;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Ldi/b;->d:Loh/s;

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public v()[B
    .locals 1

    iget-object v0, p0, Ldi/b;->e:Loh/y;

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public x()Ldi/a;
    .locals 1

    iget-object v0, p0, Ldi/b;->c:Ldi/a;

    return-object v0
.end method

.method public y()[B
    .locals 1

    iget-object v0, p0, Ldi/b;->g:Loh/y;

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method
