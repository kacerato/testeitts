.class public Lpl/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LXi/c;)LXh/v;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lpl/c;->b(LXi/c;Loh/G;)LXh/v;

    move-result-object p0

    return-object p0
.end method

.method public static b(LXi/c;Loh/G;)LXh/v;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, LTl/e;

    if-eqz v0, :cond_0

    check-cast p0, LTl/e;

    invoke-virtual {p0}, LTl/e;->e()I

    move-result v0

    invoke-static {v0}, Lpl/g;->x(I)Lhi/b;

    move-result-object v0

    new-instance v1, LXh/v;

    new-instance v2, Loh/C0;

    invoke-virtual {p0}, LTl/e;->d()[B

    move-result-object p0

    invoke-direct {v2, p0}, Loh/C0;-><init>([B)V

    invoke-direct {v1, v0, v2, p1}, LXh/v;-><init>(Lhi/b;Loh/g;Loh/G;)V

    return-object v1

    :cond_0
    instance-of v0, p0, Lnl/i;

    if-eqz v0, :cond_1

    check-cast p0, Lnl/i;

    new-instance p1, Lhi/b;

    sget-object v0, LXk/m;->r:Loh/x;

    new-instance v1, LXk/s;

    invoke-virtual {p0}, Lnl/h;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lpl/g;->F(Ljava/lang/String;)Lhi/b;

    move-result-object v2

    invoke-direct {v1, v2}, LXk/s;-><init>(Lhi/b;)V

    invoke-direct {p1, v0, v1}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    new-instance v0, LXh/v;

    new-instance v1, Loh/C0;

    invoke-virtual {p0}, Lnl/i;->e()[B

    move-result-object p0

    invoke-direct {v1, p0}, Loh/C0;-><init>([B)V

    invoke-direct {v0, p1, v1}, LXh/v;-><init>(Lhi/b;Loh/g;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Lhl/g;

    if-eqz v0, :cond_3

    check-cast p0, Lhl/g;

    new-instance p1, Lhi/b;

    sget-object v0, LXk/m;->v:Loh/x;

    invoke-direct {p1, v0}, Lhi/b;-><init>(Loh/x;)V

    invoke-virtual {p0}, Lhl/g;->d()[S

    move-result-object p0

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_2

    aget-short v2, p0, v1

    mul-int/lit8 v3, v1, 0x2

    invoke-static {v2, v0, v3}, Lorg/bouncycastle/util/p;->R(S[BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, LXh/v;

    new-instance v1, Loh/C0;

    invoke-direct {v1, v0}, Loh/C0;-><init>([B)V

    invoke-direct {p0, p1, v1}, LXh/v;-><init>(Lhi/b;Loh/g;)V

    return-object p0

    :cond_3
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/lms/v;

    if-eqz v0, :cond_4

    check-cast p0, Lorg/bouncycastle/pqc/crypto/lms/v;

    invoke-static {}, Lorg/bouncycastle/pqc/crypto/lms/a;->i()Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->m(I)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/pqc/crypto/lms/a;->c(Lorg/bouncycastle/util/g;)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/a;->b()[B

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/pqc/crypto/lms/a;->i()Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->m(I)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/v;->p()Lorg/bouncycastle/pqc/crypto/lms/w;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/bouncycastle/pqc/crypto/lms/a;->c(Lorg/bouncycastle/util/g;)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/a;->b()[B

    move-result-object p0

    new-instance v1, Lhi/b;

    sget-object v2, LXh/t;->Q2:Loh/x;

    invoke-direct {v1, v2}, Lhi/b;-><init>(Loh/x;)V

    new-instance v2, LXh/v;

    new-instance v3, Loh/C0;

    invoke-direct {v3, v0}, Loh/C0;-><init>([B)V

    invoke-direct {v2, v1, v3, p1, p0}, LXh/v;-><init>(Lhi/b;Loh/g;Loh/G;[B)V

    return-object v2

    :cond_4
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/lms/f;

    if-eqz v0, :cond_5

    check-cast p0, Lorg/bouncycastle/pqc/crypto/lms/f;

    invoke-static {}, Lorg/bouncycastle/pqc/crypto/lms/a;->i()Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/f;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->m(I)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/pqc/crypto/lms/a;->c(Lorg/bouncycastle/util/g;)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/a;->b()[B

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/pqc/crypto/lms/a;->i()Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/f;->j()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/lms/a;->m(I)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/f;->l()Lorg/bouncycastle/pqc/crypto/lms/g;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/g;->f()Lorg/bouncycastle/pqc/crypto/lms/w;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/bouncycastle/pqc/crypto/lms/a;->c(Lorg/bouncycastle/util/g;)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/a;->b()[B

    move-result-object p0

    new-instance v1, Lhi/b;

    sget-object v2, LXh/t;->Q2:Loh/x;

    invoke-direct {v1, v2}, Lhi/b;-><init>(Loh/x;)V

    new-instance v2, LXh/v;

    new-instance v3, Loh/C0;

    invoke-direct {v3, v0}, Loh/C0;-><init>([B)V

    invoke-direct {v2, v1, v3, p1, p0}, LXh/v;-><init>(Lhi/b;Loh/g;Loh/G;[B)V

    return-object v2

    :cond_5
    instance-of v0, p0, Lol/u;

    if-eqz v0, :cond_6

    check-cast p0, Lol/u;

    new-instance v0, Lhi/b;

    invoke-virtual {p0}, Lol/s;->d()Lol/t;

    move-result-object v1

    invoke-static {v1}, Lpl/g;->H(Lol/t;)Loh/x;

    move-result-object v1

    invoke-direct {v0, v1}, Lhi/b;-><init>(Loh/x;)V

    new-instance v1, LXh/v;

    new-instance v2, Loh/C0;

    invoke-virtual {p0}, Lol/u;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Loh/C0;-><init>([B)V

    invoke-virtual {p0}, Lol/u;->g()[B

    move-result-object p0

    invoke-direct {v1, v0, v2, p1, p0}, LXh/v;-><init>(Lhi/b;Loh/g;Loh/G;[B)V

    return-object v1

    :cond_6
    instance-of v0, p0, Lkl/m;

    if-eqz v0, :cond_7

    check-cast p0, Lkl/m;

    invoke-virtual {p0}, Lkl/m;->getEncoded()[B

    move-result-object v0

    new-instance v1, Lhi/b;

    invoke-virtual {p0}, Lkl/k;->d()Lkl/l;

    move-result-object p0

    invoke-static {p0}, Lpl/g;->v(Lkl/l;)Loh/x;

    move-result-object p0

    invoke-direct {v1, p0}, Lhi/b;-><init>(Loh/x;)V

    new-instance p0, LXh/v;

    new-instance v2, Loh/C0;

    invoke-direct {v2, v0}, Loh/C0;-><init>([B)V

    invoke-direct {p0, v1, v2, p1}, LXh/v;-><init>(Lhi/b;Loh/g;Loh/G;)V

    return-object p0

    :cond_7
    instance-of v0, p0, Lal/k;

    if-eqz v0, :cond_8

    check-cast p0, Lal/k;

    new-instance v0, Lhi/b;

    invoke-virtual {p0}, Lal/i;->d()Lal/j;

    move-result-object v1

    invoke-static {v1}, Lpl/g;->p(Lal/j;)Loh/x;

    move-result-object v1

    invoke-direct {v0, v1}, Lhi/b;-><init>(Loh/x;)V

    new-instance v9, LXk/b;

    invoke-virtual {p0}, Lal/k;->k()[B

    move-result-object v1

    invoke-direct {v9, v1}, LXk/b;-><init>([B)V

    new-instance v1, LXk/a;

    invoke-virtual {p0}, Lal/k;->g()[B

    move-result-object v4

    invoke-virtual {p0}, Lal/k;->f()[B

    move-result-object v5

    invoke-virtual {p0}, Lal/k;->h()[B

    move-result-object v6

    invoke-virtual {p0}, Lal/k;->e()[B

    move-result-object v7

    invoke-virtual {p0}, Lal/k;->j()[B

    move-result-object v8

    const/4 v3, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, LXk/a;-><init>(I[B[B[B[B[BLXk/b;)V

    new-instance p0, LXh/v;

    invoke-direct {p0, v0, v1, p1}, LXh/v;-><init>(Lhi/b;Loh/g;Loh/G;)V

    return-object p0

    :cond_8
    instance-of v0, p0, Lql/I;

    if-eqz v0, :cond_9

    check-cast p0, Lql/I;

    new-instance v0, Lhi/b;

    sget-object v1, LXk/m;->w:Loh/x;

    new-instance v2, LXk/v;

    invoke-virtual {p0}, Lql/I;->i()Lql/H;

    move-result-object v3

    invoke-virtual {v3}, Lql/H;->b()I

    move-result v3

    invoke-virtual {p0}, Lql/u;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lpl/g;->J(Ljava/lang/String;)Lhi/b;

    move-result-object v4

    invoke-direct {v2, v3, v4}, LXk/v;-><init>(ILhi/b;)V

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    new-instance v1, LXh/v;

    invoke-static {p0}, Lpl/c;->c(Lql/I;)LXk/z;

    move-result-object p0

    invoke-direct {v1, v0, p0, p1}, LXh/v;-><init>(Lhi/b;Loh/g;Loh/G;)V

    return-object v1

    :cond_9
    instance-of v0, p0, Lql/A;

    if-eqz v0, :cond_a

    check-cast p0, Lql/A;

    new-instance v0, Lhi/b;

    sget-object v1, LXk/m;->F:Loh/x;

    new-instance v2, LXk/w;

    invoke-virtual {p0}, Lql/A;->i()Lql/z;

    move-result-object v3

    invoke-virtual {v3}, Lql/z;->a()I

    move-result v3

    invoke-virtual {p0}, Lql/A;->i()Lql/z;

    move-result-object v4

    invoke-virtual {v4}, Lql/z;->b()I

    move-result v4

    invoke-virtual {p0}, Lql/y;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lpl/g;->J(Ljava/lang/String;)Lhi/b;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, LXk/w;-><init>(IILhi/b;)V

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    new-instance v1, LXh/v;

    invoke-static {p0}, Lpl/c;->d(Lql/A;)LXk/x;

    move-result-object p0

    invoke-direct {v1, v0, p0, p1}, LXh/v;-><init>(Lhi/b;Loh/g;Loh/G;)V

    return-object v1

    :cond_a
    instance-of v0, p0, LRl/g;

    if-eqz v0, :cond_b

    check-cast p0, LRl/g;

    new-instance p1, LXk/i;

    invoke-virtual {p0}, LRl/g;->i()I

    move-result v1

    invoke-virtual {p0}, LRl/g;->h()I

    move-result v2

    invoke-virtual {p0}, LRl/g;->e()LWl/h;

    move-result-object v3

    invoke-virtual {p0}, LRl/g;->f()LWl/y;

    move-result-object v4

    invoke-virtual {p0}, LRl/g;->j()LWl/x;

    move-result-object v5

    invoke-virtual {p0}, LRl/d;->d()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lpl/g;->i(Ljava/lang/String;)Lhi/b;

    move-result-object v6

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, LXk/i;-><init>(IILWl/h;LWl/y;LWl/x;Lhi/b;)V

    new-instance p0, Lhi/b;

    sget-object v0, LXk/m;->n:Loh/x;

    invoke-direct {p0, v0}, Lhi/b;-><init>(Loh/x;)V

    new-instance v0, LXh/v;

    invoke-direct {v0, p0, p1}, LXh/v;-><init>(Lhi/b;Loh/g;)V

    return-object v0

    :cond_b
    instance-of v0, p0, Lel/i;

    if-eqz v0, :cond_c

    check-cast p0, Lel/i;

    invoke-virtual {p0}, Lel/i;->getEncoded()[B

    move-result-object v0

    new-instance v1, Lhi/b;

    invoke-virtual {p0}, Lel/f;->d()Lel/h;

    move-result-object p0

    invoke-static {p0}, Lpl/g;->g(Lel/h;)Loh/x;

    move-result-object p0

    invoke-direct {v1, p0}, Lhi/b;-><init>(Loh/x;)V

    new-instance p0, LXh/v;

    new-instance v2, Loh/C0;

    invoke-direct {v2, v0}, Loh/C0;-><init>([B)V

    invoke-direct {p0, v1, v2, p1}, LXh/v;-><init>(Lhi/b;Loh/g;Loh/G;)V

    return-object p0

    :cond_c
    instance-of v0, p0, Lml/i;

    if-eqz v0, :cond_d

    check-cast p0, Lml/i;

    invoke-virtual {p0}, Lml/i;->getEncoded()[B

    move-result-object v0

    new-instance v1, Lhi/b;

    invoke-virtual {p0}, Lml/g;->d()Lml/h;

    move-result-object p0

    invoke-static {p0}, Lpl/g;->B(Lml/h;)Loh/x;

    move-result-object p0

    invoke-direct {v1, p0}, Lhi/b;-><init>(Loh/x;)V

    new-instance p0, LXh/v;

    new-instance v2, Loh/C0;

    invoke-direct {v2, v0}, Loh/C0;-><init>([B)V

    invoke-direct {p0, v1, v2, p1}, LXh/v;-><init>(Lhi/b;Loh/g;Loh/G;)V

    return-object p0

    :cond_d
    instance-of v0, p0, Lil/h;

    if-eqz v0, :cond_e

    check-cast p0, Lil/h;

    invoke-virtual {p0}, Lil/h;->getEncoded()[B

    move-result-object v0

    new-instance v1, Lhi/b;

    invoke-virtual {p0}, Lil/e;->d()Lil/g;

    move-result-object p0

    invoke-static {p0}, Lpl/g;->r(Lil/g;)Loh/x;

    move-result-object p0

    invoke-direct {v1, p0}, Lhi/b;-><init>(Loh/x;)V

    new-instance p0, LXh/v;

    new-instance v2, Loh/C0;

    invoke-direct {v2, v0}, Loh/C0;-><init>([B)V

    invoke-direct {p0, v1, v2, p1}, LXh/v;-><init>(Lhi/b;Loh/g;Loh/G;)V

    return-object p0

    :cond_e
    instance-of v0, p0, Ldl/n;

    if-eqz v0, :cond_f

    check-cast p0, Ldl/n;

    new-instance v0, Lhi/b;

    invoke-virtual {p0}, Ldl/k;->d()Ldl/m;

    move-result-object v1

    invoke-static {v1}, Lpl/g;->e(Ldl/m;)Loh/x;

    move-result-object v1

    invoke-direct {v0, v1}, Lhi/b;-><init>(Loh/x;)V

    new-instance v7, LXk/d;

    invoke-virtual {p0}, Ldl/n;->f()[B

    move-result-object v1

    invoke-direct {v7, v1}, LXk/d;-><init>([B)V

    new-instance v1, LXk/c;

    invoke-virtual {p0}, Ldl/n;->h()[B

    move-result-object v4

    invoke-virtual {p0}, Ldl/n;->e()[B

    move-result-object v5

    invoke-virtual {p0}, Ldl/n;->g()[B

    move-result-object v6

    const/4 v3, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, LXk/c;-><init>(I[B[B[BLXk/d;)V

    new-instance p0, LXh/v;

    invoke-direct {p0, v0, v1, p1}, LXh/v;-><init>(Lhi/b;Loh/g;Loh/G;)V

    return-object p0

    :cond_f
    instance-of v0, p0, Lcl/j;

    if-eqz v0, :cond_10

    check-cast p0, Lcl/j;

    new-instance v0, Lhi/b;

    invoke-virtual {p0}, Lcl/h;->d()Lcl/i;

    move-result-object v1

    invoke-static {v1}, Lpl/g;->n(Lcl/i;)Loh/x;

    move-result-object v1

    invoke-direct {v0, v1}, Lhi/b;-><init>(Loh/x;)V

    new-instance v1, LXh/v;

    new-instance v2, Loh/C0;

    invoke-virtual {p0}, Lcl/j;->getEncoded()[B

    move-result-object p0

    invoke-direct {v2, p0}, Loh/C0;-><init>([B)V

    invoke-direct {v1, v0, v2, p1}, LXh/v;-><init>(Lhi/b;Loh/g;Loh/G;)V

    return-object v1

    :cond_10
    instance-of v0, p0, Ljl/g;

    if-eqz v0, :cond_11

    check-cast p0, Ljl/g;

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    new-instance v1, Loh/C0;

    invoke-virtual {p0}, Ljl/g;->e()[B

    move-result-object v2

    invoke-direct {v1, v2}, Loh/C0;-><init>([B)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/C0;

    invoke-virtual {p0}, Ljl/g;->g()[B

    move-result-object v2

    invoke-direct {v1, v2}, Loh/C0;-><init>([B)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/C0;

    invoke-virtual {p0}, Ljl/g;->h()[B

    move-result-object v2

    invoke-direct {v1, v2}, Loh/C0;-><init>([B)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/C0;

    invoke-virtual {p0}, Ljl/g;->f()[B

    move-result-object v2

    invoke-direct {v1, v2}, Loh/C0;-><init>([B)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Lhi/b;

    invoke-virtual {p0}, Ljl/e;->d()Ljl/f;

    move-result-object p0

    invoke-static {p0}, Lpl/g;->t(Ljl/f;)Loh/x;

    move-result-object p0

    invoke-direct {v1, p0}, Lhi/b;-><init>(Loh/x;)V

    new-instance p0, LXh/v;

    new-instance v2, Loh/G0;

    invoke-direct {v2, v0}, Loh/G0;-><init>(Loh/h;)V

    invoke-direct {p0, v1, v2, p1}, LXh/v;-><init>(Lhi/b;Loh/g;Loh/G;)V

    return-object p0

    :cond_11
    instance-of v0, p0, Ljl/o;

    if-eqz v0, :cond_12

    check-cast p0, Ljl/o;

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    new-instance v1, Loh/C0;

    invoke-virtual {p0}, Ljl/o;->e()[B

    move-result-object v2

    invoke-direct {v1, v2}, Loh/C0;-><init>([B)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/C0;

    invoke-virtual {p0}, Ljl/o;->f()[B

    move-result-object v2

    invoke-direct {v1, v2}, Loh/C0;-><init>([B)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/C0;

    invoke-virtual {p0}, Ljl/o;->h()[B

    move-result-object v2

    invoke-direct {v1, v2}, Loh/C0;-><init>([B)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/C0;

    invoke-virtual {p0}, Ljl/o;->i()[B

    move-result-object v2

    invoke-direct {v1, v2}, Loh/C0;-><init>([B)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/C0;

    invoke-virtual {p0}, Ljl/o;->g()[B

    move-result-object v2

    invoke-direct {v1, v2}, Loh/C0;-><init>([B)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Lhi/b;

    invoke-virtual {p0}, Ljl/m;->d()Ljl/n;

    move-result-object p0

    invoke-static {p0}, Lpl/g;->D(Ljl/n;)Loh/x;

    move-result-object p0

    invoke-direct {v1, p0}, Lhi/b;-><init>(Loh/x;)V

    new-instance p0, LXh/v;

    new-instance v2, Loh/G0;

    invoke-direct {v2, v0}, Loh/G0;-><init>(Loh/h;)V

    invoke-direct {p0, v1, v2, p1}, LXh/v;-><init>(Lhi/b;Loh/g;Loh/G;)V

    return-object p0

    :cond_12
    instance-of v0, p0, Lbl/f;

    if-eqz v0, :cond_13

    check-cast p0, Lbl/f;

    new-instance v0, Lhi/b;

    invoke-virtual {p0}, Lbl/d;->d()Lbl/e;

    move-result-object v1

    invoke-static {v1}, Lpl/g;->c(Lbl/e;)Loh/x;

    move-result-object v1

    invoke-direct {v0, v1}, Lhi/b;-><init>(Loh/x;)V

    invoke-virtual {p0}, Lbl/f;->h()Lbl/g;

    move-result-object v1

    new-instance v2, LXh/v;

    new-instance v3, Loh/C0;

    invoke-virtual {p0}, Lbl/f;->getEncoded()[B

    move-result-object p0

    invoke-direct {v3, p0}, Loh/C0;-><init>([B)V

    invoke-virtual {v1}, Lbl/g;->getEncoded()[B

    move-result-object p0

    invoke-direct {v2, v0, v3, p1, p0}, LXh/v;-><init>(Lhi/b;Loh/g;Loh/G;[B)V

    return-object v2

    :cond_13
    instance-of v0, p0, LZk/h;

    if-eqz v0, :cond_14

    check-cast p0, LZk/h;

    new-instance v0, Lhi/b;

    invoke-virtual {p0}, LZk/f;->d()LZk/g;

    move-result-object v1

    invoke-static {v1}, Lpl/g;->a(LZk/g;)Loh/x;

    move-result-object v1

    invoke-direct {v0, v1}, Lhi/b;-><init>(Loh/x;)V

    invoke-virtual {p0}, LZk/h;->getEncoded()[B

    move-result-object p0

    new-instance v1, LXh/v;

    new-instance v2, Loh/C0;

    invoke-direct {v2, p0}, Loh/C0;-><init>([B)V

    invoke-direct {v1, v0, v2, p1}, LXh/v;-><init>(Lhi/b;Loh/g;Loh/G;)V

    return-object v1

    :cond_14
    instance-of v0, p0, Lgl/k;

    if-eqz v0, :cond_15

    check-cast p0, Lgl/k;

    new-instance v0, Lhi/b;

    invoke-virtual {p0}, Lgl/i;->d()Lgl/j;

    move-result-object v1

    invoke-static {v1}, Lpl/g;->l(Lgl/j;)Loh/x;

    move-result-object v1

    invoke-direct {v0, v1}, Lhi/b;-><init>(Loh/x;)V

    invoke-virtual {p0}, Lgl/k;->getEncoded()[B

    move-result-object p0

    new-instance v1, LXh/v;

    new-instance v2, Loh/C0;

    invoke-direct {v2, p0}, Loh/C0;-><init>([B)V

    invoke-direct {v1, v0, v2, p1}, LXh/v;-><init>(Lhi/b;Loh/g;Loh/G;)V

    return-object v1

    :cond_15
    instance-of v0, p0, Lll/i;

    if-eqz v0, :cond_16

    check-cast p0, Lll/i;

    new-instance v0, Lhi/b;

    invoke-virtual {p0}, Lll/g;->e()Lll/h;

    move-result-object v1

    invoke-static {v1}, Lpl/g;->z(Lll/h;)Loh/x;

    move-result-object v1

    invoke-direct {v0, v1}, Lhi/b;-><init>(Loh/x;)V

    invoke-virtual {p0}, Lll/i;->getEncoded()[B

    move-result-object p0

    new-instance v1, LXh/v;

    new-instance v2, Loh/C0;

    invoke-direct {v2, p0}, Loh/C0;-><init>([B)V

    invoke-direct {v1, v0, v2, p1}, LXh/v;-><init>(Lhi/b;Loh/g;Loh/G;)V

    return-object v1

    :cond_16
    new-instance p0, Ljava/io/IOException;

    const-string p1, "key parameters not recognized"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Lql/I;)LXk/z;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lql/I;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p0}, Lql/I;->i()Lql/H;

    move-result-object v1

    invoke-virtual {v1}, Lql/H;->h()I

    move-result v1

    invoke-virtual {p0}, Lql/I;->i()Lql/H;

    move-result-object p0

    invoke-virtual {p0}, Lql/H;->b()I

    move-result p0

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v0, v2, v3}, Lql/O;->b([BII)J

    move-result-wide v4

    long-to-int v7, v4

    int-to-long v4, v7

    invoke-static {p0, v4, v5}, Lql/O;->n(IJ)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0, v3, v1}, Lql/O;->i([BII)[B

    move-result-object v8

    add-int/2addr v3, v1

    invoke-static {v0, v3, v1}, Lql/O;->i([BII)[B

    move-result-object v9

    add-int/2addr v3, v1

    invoke-static {v0, v3, v1}, Lql/O;->i([BII)[B

    move-result-object v10

    add-int/2addr v3, v1

    invoke-static {v0, v3, v1}, Lql/O;->i([BII)[B

    move-result-object v11

    add-int/2addr v3, v1

    array-length v1, v0

    sub-int/2addr v1, v3

    invoke-static {v0, v3, v1}, Lql/O;->i([BII)[B

    move-result-object v12

    :try_start_0
    const-class v0, Lql/a;

    invoke-static {v12, v0}, Lql/O;->g([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lql/a;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lql/a;->d()I

    move-result v1

    const/4 v2, 0x1

    shl-int p0, v2, p0

    sub-int/2addr p0, v2

    if-eq v1, p0, :cond_0

    new-instance p0, LXk/z;

    invoke-virtual {v0}, Lql/a;->d()I

    move-result v13

    move-object v6, p0

    invoke-direct/range {v6 .. v13}, LXk/z;-><init>(I[B[B[B[B[BI)V

    return-object p0

    :cond_0
    new-instance p0, LXk/z;

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, LXk/z;-><init>(I[B[B[B[B[B)V

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot parse BDS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "index out of bounds"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Lql/A;)LXk/x;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lql/A;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p0}, Lql/A;->i()Lql/z;

    move-result-object v1

    invoke-virtual {v1}, Lql/z;->g()I

    move-result v1

    invoke-virtual {p0}, Lql/A;->i()Lql/z;

    move-result-object p0

    invoke-virtual {p0}, Lql/z;->a()I

    move-result p0

    add-int/lit8 v2, p0, 0x7

    div-int/lit8 v2, v2, 0x8

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lql/O;->b([BII)J

    move-result-wide v3

    long-to-int v3, v3

    int-to-long v5, v3

    invoke-static {p0, v5, v6}, Lql/O;->n(IJ)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0, v2, v1}, Lql/O;->i([BII)[B

    move-result-object v7

    add-int/2addr v2, v1

    invoke-static {v0, v2, v1}, Lql/O;->i([BII)[B

    move-result-object v8

    add-int/2addr v2, v1

    invoke-static {v0, v2, v1}, Lql/O;->i([BII)[B

    move-result-object v9

    add-int/2addr v2, v1

    invoke-static {v0, v2, v1}, Lql/O;->i([BII)[B

    move-result-object v10

    add-int/2addr v2, v1

    array-length v1, v0

    sub-int/2addr v1, v2

    invoke-static {v0, v2, v1}, Lql/O;->i([BII)[B

    move-result-object v11

    :try_start_0
    const-class v0, Lql/b;

    invoke-static {v11, v0}, Lql/O;->g([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lql/b;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lql/b;->b()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    shl-long v12, v3, p0

    sub-long/2addr v12, v3

    cmp-long p0, v1, v12

    if-eqz p0, :cond_0

    new-instance p0, LXk/x;

    invoke-virtual {v0}, Lql/b;->b()J

    move-result-wide v12

    move-object v4, p0

    invoke-direct/range {v4 .. v13}, LXk/x;-><init>(J[B[B[B[B[BJ)V

    return-object p0

    :cond_0
    new-instance p0, LXk/x;

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, LXk/x;-><init>(J[B[B[B[B[B)V

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot parse BDSStateMap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "index out of bounds"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
