.class public Lki/l;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Lki/r;


# static fields
.field public static final h:Ljava/math/BigInteger;


# instance fields
.field public b:Lki/p;

.field public c:Ljk/e;

.field public d:Lki/n;

.field public e:Ljava/math/BigInteger;

.field public f:Ljava/math/BigInteger;

.field public g:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lki/l;->h:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Ljk/e;Lki/n;Ljava/math/BigInteger;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lki/l;-><init>(Ljk/e;Lki/n;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Ljk/e;Lki/n;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lki/l;-><init>(Ljk/e;Lki/n;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Ljk/e;Lki/n;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 1

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lki/l;->c:Ljk/e;

    iput-object p2, p0, Lki/l;->d:Lki/n;

    iput-object p3, p0, Lki/l;->e:Ljava/math/BigInteger;

    iput-object p4, p0, Lki/l;->f:Ljava/math/BigInteger;

    invoke-static {p5}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p2

    iput-object p2, p0, Lki/l;->g:[B

    invoke-static {p1}, Ljk/c;->o(Ljk/e;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lki/p;

    invoke-virtual {p1}, Ljk/e;->v()Lrk/b;

    move-result-object p1

    invoke-interface {p1}, Lrk/b;->b()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p2, p1}, Lki/p;-><init>(Ljava/math/BigInteger;)V

    :goto_0
    iput-object p2, p0, Lki/l;->b:Lki/p;

    goto :goto_1

    :cond_0
    invoke-static {p1}, Ljk/c;->m(Ljk/e;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljk/e;->v()Lrk/b;

    move-result-object p1

    check-cast p1, Lrk/g;

    invoke-interface {p1}, Lrk/g;->d()Lrk/f;

    move-result-object p1

    invoke-interface {p1}, Lrk/f;->b()[I

    move-result-object p1

    array-length p2, p1

    const/4 p3, 0x1

    const/4 p4, 0x2

    const/4 p5, 0x3

    if-ne p2, p5, :cond_1

    new-instance p2, Lki/p;

    aget p4, p1, p4

    aget p1, p1, p3

    invoke-direct {p2, p4, p1}, Lki/p;-><init>(II)V

    goto :goto_0

    :cond_1
    array-length p2, p1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    new-instance p2, Lki/p;

    const/4 v0, 0x4

    aget v0, p1, v0

    aget p3, p1, p3

    aget p4, p1, p4

    aget p1, p1, p5

    invoke-direct {p2, v0, p3, p4, p1}, Lki/p;-><init>(IIII)V

    goto :goto_0

    :goto_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only trinomial and pentomial curves are supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'curve\' is of an unsupported type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Loh/E;)V
    .locals 5

    .line 4
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    instance-of v1, v1, Loh/s;

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/s;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Loh/s;->J(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/s;

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lki/l;->e:Ljava/math/BigInteger;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/s;

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lki/l;->f:Ljava/math/BigInteger;

    :cond_0
    new-instance v0, Lki/k;

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Lki/p;->v(Ljava/lang/Object;)Lki/p;

    move-result-object v1

    iget-object v2, p0, Lki/l;->e:Ljava/math/BigInteger;

    iget-object v3, p0, Lki/l;->f:Ljava/math/BigInteger;

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Loh/E;->I(I)Loh/g;

    move-result-object v4

    invoke-static {v4}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lki/k;-><init>(Lki/p;Ljava/math/BigInteger;Ljava/math/BigInteger;Loh/E;)V

    invoke-virtual {v0}, Lki/k;->u()Ljk/e;

    move-result-object v1

    iput-object v1, p0, Lki/l;->c:Ljk/e;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    instance-of v1, p1, Lki/n;

    if-eqz v1, :cond_1

    check-cast p1, Lki/n;

    iput-object p1, p0, Lki/l;->d:Lki/n;

    goto :goto_0

    :cond_1
    new-instance v1, Lki/n;

    iget-object v2, p0, Lki/l;->c:Ljk/e;

    check-cast p1, Loh/y;

    invoke-direct {v1, v2, p1}, Lki/n;-><init>(Ljk/e;Loh/y;)V

    iput-object v1, p0, Lki/l;->d:Lki/n;

    :goto_0
    invoke-virtual {v0}, Lki/k;->v()[B

    move-result-object p1

    iput-object p1, p0, Lki/l;->g:[B

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad version in X9ECParameters"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static B(Ljava/lang/Object;)Lki/l;
    .locals 1

    instance-of v0, p0, Lki/l;

    if-eqz v0, :cond_0

    check-cast p0, Lki/l;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lki/l;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lki/l;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lki/l;->f:Ljava/math/BigInteger;

    return-object v0
.end method

.method public C()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lki/l;->e:Ljava/math/BigInteger;

    return-object v0
.end method

.method public D()[B
    .locals 1

    iget-object v0, p0, Lki/l;->g:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public E()Z
    .locals 1

    iget-object v0, p0, Lki/l;->g:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r()Loh/B;
    .locals 4

    new-instance v0, Loh/h;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    new-instance v1, Loh/s;

    sget-object v2, Lki/l;->h:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lki/l;->b:Lki/p;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Lki/k;

    iget-object v2, p0, Lki/l;->c:Ljk/e;

    iget-object v3, p0, Lki/l;->g:[B

    invoke-direct {v1, v2, v3}, Lki/k;-><init>(Ljk/e;[B)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lki/l;->d:Lki/n;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/s;

    iget-object v2, p0, Lki/l;->e:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lki/l;->f:Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    new-instance v1, Loh/s;

    iget-object v2, p0, Lki/l;->f:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Lki/n;
    .locals 1

    iget-object v0, p0, Lki/l;->d:Lki/n;

    return-object v0
.end method

.method public v()Ljk/e;
    .locals 1

    iget-object v0, p0, Lki/l;->c:Ljk/e;

    return-object v0
.end method

.method public x()Lki/k;
    .locals 3

    new-instance v0, Lki/k;

    iget-object v1, p0, Lki/l;->c:Ljk/e;

    iget-object v2, p0, Lki/l;->g:[B

    invoke-direct {v0, v1, v2}, Lki/k;-><init>(Ljk/e;[B)V

    return-object v0
.end method

.method public y()Lki/p;
    .locals 1

    iget-object v0, p0, Lki/l;->b:Lki/p;

    return-object v0
.end method

.method public z()Ljk/i;
    .locals 1

    iget-object v0, p0, Lki/l;->d:Lki/n;

    invoke-virtual {v0}, Lki/n;->u()Ljk/i;

    move-result-object v0

    return-object v0
.end method
