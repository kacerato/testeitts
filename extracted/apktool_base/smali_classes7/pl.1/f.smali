.class public Lpl/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LXi/c;)Lhi/h0;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, LTl/f;

    if-eqz v0, :cond_0

    check-cast p0, LTl/f;

    invoke-virtual {p0}, LTl/f;->e()I

    move-result v0

    invoke-static {v0}, Lpl/g;->x(I)Lhi/b;

    move-result-object v0

    new-instance v1, Lhi/h0;

    invoke-virtual {p0}, LTl/f;->d()[B

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lhi/h0;-><init>(Lhi/b;[B)V

    return-object v1

    :cond_0
    instance-of v0, p0, Lnl/j;

    if-eqz v0, :cond_1

    check-cast p0, Lnl/j;

    new-instance v0, Lhi/b;

    sget-object v1, LXk/m;->r:Loh/x;

    new-instance v2, LXk/s;

    invoke-virtual {p0}, Lnl/h;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lpl/g;->F(Ljava/lang/String;)Lhi/b;

    move-result-object v3

    invoke-direct {v2, v3}, LXk/s;-><init>(Lhi/b;)V

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    new-instance v1, Lhi/h0;

    invoke-virtual {p0}, Lnl/j;->e()[B

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lhi/h0;-><init>(Lhi/b;[B)V

    return-object v1

    :cond_1
    instance-of v0, p0, Lhl/h;

    if-eqz v0, :cond_2

    check-cast p0, Lhl/h;

    new-instance v0, Lhi/b;

    sget-object v1, LXk/m;->v:Loh/x;

    invoke-direct {v0, v1}, Lhi/b;-><init>(Loh/x;)V

    new-instance v1, Lhi/h0;

    invoke-virtual {p0}, Lhl/h;->d()[B

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lhi/h0;-><init>(Lhi/b;[B)V

    return-object v1

    :cond_2
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/lms/w;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    check-cast p0, Lorg/bouncycastle/pqc/crypto/lms/w;

    invoke-static {}, Lorg/bouncycastle/pqc/crypto/lms/a;->i()Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->m(I)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/pqc/crypto/lms/a;->c(Lorg/bouncycastle/util/g;)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/a;->b()[B

    move-result-object p0

    new-instance v0, Lhi/b;

    sget-object v1, LXh/t;->Q2:Loh/x;

    invoke-direct {v0, v1}, Lhi/b;-><init>(Loh/x;)V

    new-instance v1, Lhi/h0;

    new-instance v2, Loh/C0;

    invoke-direct {v2, p0}, Loh/C0;-><init>([B)V

    invoke-direct {v1, v0, v2}, Lhi/h0;-><init>(Lhi/b;Loh/g;)V

    return-object v1

    :cond_3
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/lms/g;

    if-eqz v0, :cond_4

    check-cast p0, Lorg/bouncycastle/pqc/crypto/lms/g;

    invoke-static {}, Lorg/bouncycastle/pqc/crypto/lms/a;->i()Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/g;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->m(I)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/g;->f()Lorg/bouncycastle/pqc/crypto/lms/w;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/pqc/crypto/lms/a;->c(Lorg/bouncycastle/util/g;)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/a;->b()[B

    move-result-object p0

    new-instance v0, Lhi/b;

    sget-object v1, LXh/t;->Q2:Loh/x;

    invoke-direct {v0, v1}, Lhi/b;-><init>(Loh/x;)V

    new-instance v1, Lhi/h0;

    new-instance v2, Loh/C0;

    invoke-direct {v2, p0}, Loh/C0;-><init>([B)V

    invoke-direct {v1, v0, v2}, Lhi/h0;-><init>(Lhi/b;Loh/g;)V

    return-object v1

    :cond_4
    instance-of v0, p0, Lol/v;

    if-eqz v0, :cond_5

    check-cast p0, Lol/v;

    invoke-virtual {p0}, Lol/v;->getEncoded()[B

    move-result-object v0

    new-instance v1, Lhi/b;

    invoke-virtual {p0}, Lol/s;->d()Lol/t;

    move-result-object p0

    invoke-static {p0}, Lpl/g;->H(Lol/t;)Loh/x;

    move-result-object p0

    invoke-direct {v1, p0}, Lhi/b;-><init>(Loh/x;)V

    new-instance p0, Lhi/h0;

    invoke-direct {p0, v1, v0}, Lhi/h0;-><init>(Lhi/b;[B)V

    return-object p0

    :cond_5
    instance-of v0, p0, Lal/l;

    if-eqz v0, :cond_6

    check-cast p0, Lal/l;

    invoke-virtual {p0}, Lal/l;->getEncoded()[B

    move-result-object v0

    new-instance v1, Lhi/b;

    invoke-virtual {p0}, Lal/i;->d()Lal/j;

    move-result-object p0

    invoke-static {p0}, Lpl/g;->p(Lal/j;)Loh/x;

    move-result-object p0

    invoke-direct {v1, p0}, Lhi/b;-><init>(Loh/x;)V

    new-instance p0, Lhi/h0;

    invoke-direct {p0, v1, v0}, Lhi/h0;-><init>(Lhi/b;[B)V

    return-object p0

    :cond_6
    instance-of v0, p0, Lql/J;

    if-eqz v0, :cond_8

    check-cast p0, Lql/J;

    invoke-virtual {p0}, Lql/J;->f()[B

    move-result-object v0

    invoke-virtual {p0}, Lql/J;->g()[B

    move-result-object v1

    invoke-virtual {p0}, Lql/J;->getEncoded()[B

    move-result-object v2

    array-length v3, v2

    array-length v4, v0

    array-length v5, v1

    add-int/2addr v4, v5

    if-le v3, v4, :cond_7

    new-instance p0, Lhi/b;

    sget-object v0, Ltj/a;->a:Loh/x;

    invoke-direct {p0, v0}, Lhi/b;-><init>(Loh/x;)V

    new-instance v0, Lhi/h0;

    new-instance v1, Loh/C0;

    invoke-direct {v1, v2}, Loh/C0;-><init>([B)V

    invoke-direct {v0, p0, v1}, Lhi/h0;-><init>(Lhi/b;Loh/g;)V

    return-object v0

    :cond_7
    new-instance v2, Lhi/b;

    sget-object v3, LXk/m;->w:Loh/x;

    new-instance v4, LXk/v;

    invoke-virtual {p0}, Lql/J;->e()Lql/H;

    move-result-object v5

    invoke-virtual {v5}, Lql/H;->b()I

    move-result v5

    invoke-virtual {p0}, Lql/u;->d()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lpl/g;->J(Ljava/lang/String;)Lhi/b;

    move-result-object p0

    invoke-direct {v4, v5, p0}, LXk/v;-><init>(ILhi/b;)V

    invoke-direct {v2, v3, v4}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    new-instance p0, Lhi/h0;

    new-instance v3, LXk/A;

    invoke-direct {v3, v0, v1}, LXk/A;-><init>([B[B)V

    invoke-direct {p0, v2, v3}, Lhi/h0;-><init>(Lhi/b;Loh/g;)V

    return-object p0

    :cond_8
    instance-of v0, p0, Lql/B;

    if-eqz v0, :cond_a

    check-cast p0, Lql/B;

    invoke-virtual {p0}, Lql/B;->f()[B

    move-result-object v0

    invoke-virtual {p0}, Lql/B;->g()[B

    move-result-object v1

    invoke-virtual {p0}, Lql/B;->getEncoded()[B

    move-result-object v2

    array-length v3, v2

    array-length v0, v0

    array-length v1, v1

    add-int/2addr v0, v1

    if-le v3, v0, :cond_9

    new-instance p0, Lhi/b;

    sget-object v0, Ltj/a;->b:Loh/x;

    invoke-direct {p0, v0}, Lhi/b;-><init>(Loh/x;)V

    new-instance v0, Lhi/h0;

    new-instance v1, Loh/C0;

    invoke-direct {v1, v2}, Loh/C0;-><init>([B)V

    invoke-direct {v0, p0, v1}, Lhi/h0;-><init>(Lhi/b;Loh/g;)V

    return-object v0

    :cond_9
    new-instance v0, Lhi/b;

    sget-object v1, LXk/m;->F:Loh/x;

    new-instance v2, LXk/w;

    invoke-virtual {p0}, Lql/B;->e()Lql/z;

    move-result-object v3

    invoke-virtual {v3}, Lql/z;->a()I

    move-result v3

    invoke-virtual {p0}, Lql/B;->e()Lql/z;

    move-result-object v4

    invoke-virtual {v4}, Lql/z;->b()I

    move-result v4

    invoke-virtual {p0}, Lql/y;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lpl/g;->J(Ljava/lang/String;)Lhi/b;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, LXk/w;-><init>(IILhi/b;)V

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    new-instance v1, Lhi/h0;

    new-instance v2, LXk/y;

    invoke-virtual {p0}, Lql/B;->f()[B

    move-result-object v3

    invoke-virtual {p0}, Lql/B;->g()[B

    move-result-object p0

    invoke-direct {v2, v3, p0}, LXk/y;-><init>([B[B)V

    invoke-direct {v1, v0, v2}, Lhi/h0;-><init>(Lhi/b;Loh/g;)V

    return-object v1

    :cond_a
    instance-of v0, p0, LRl/h;

    if-eqz v0, :cond_b

    check-cast p0, LRl/h;

    new-instance v0, LXk/j;

    invoke-virtual {p0}, LRl/h;->g()I

    move-result v1

    invoke-virtual {p0}, LRl/h;->h()I

    move-result v2

    invoke-virtual {p0}, LRl/h;->e()LWl/e;

    move-result-object v3

    invoke-virtual {p0}, LRl/d;->d()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lpl/g;->i(Ljava/lang/String;)Lhi/b;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, LXk/j;-><init>(IILWl/e;Lhi/b;)V

    new-instance p0, Lhi/b;

    sget-object v1, LXk/m;->n:Loh/x;

    invoke-direct {p0, v1}, Lhi/b;-><init>(Loh/x;)V

    new-instance v1, Lhi/h0;

    invoke-direct {v1, p0, v0}, Lhi/h0;-><init>(Lhi/b;Loh/g;)V

    return-object v1

    :cond_b
    instance-of v0, p0, Lel/j;

    if-eqz v0, :cond_c

    check-cast p0, Lel/j;

    invoke-virtual {p0}, Lel/j;->getEncoded()[B

    move-result-object v0

    new-instance v1, Lhi/b;

    invoke-virtual {p0}, Lel/f;->d()Lel/h;

    move-result-object p0

    invoke-static {p0}, Lpl/g;->g(Lel/h;)Loh/x;

    move-result-object p0

    invoke-direct {v1, p0}, Lhi/b;-><init>(Loh/x;)V

    new-instance p0, Lhi/h0;

    new-instance v2, Loh/C0;

    invoke-direct {v2, v0}, Loh/C0;-><init>([B)V

    invoke-direct {p0, v1, v2}, Lhi/h0;-><init>(Lhi/b;Loh/g;)V

    return-object p0

    :cond_c
    instance-of v0, p0, Lml/j;

    if-eqz v0, :cond_d

    check-cast p0, Lml/j;

    invoke-virtual {p0}, Lml/j;->getEncoded()[B

    move-result-object v0

    new-instance v1, Lhi/b;

    invoke-virtual {p0}, Lml/g;->d()Lml/h;

    move-result-object p0

    invoke-static {p0}, Lpl/g;->B(Lml/h;)Loh/x;

    move-result-object p0

    invoke-direct {v1, p0}, Lhi/b;-><init>(Loh/x;)V

    new-instance p0, Lhi/h0;

    new-instance v2, Loh/G0;

    new-instance v3, Loh/C0;

    invoke-direct {v3, v0}, Loh/C0;-><init>([B)V

    invoke-direct {v2, v3}, Loh/G0;-><init>(Loh/g;)V

    invoke-direct {p0, v1, v2}, Lhi/h0;-><init>(Lhi/b;Loh/g;)V

    return-object p0

    :cond_d
    instance-of v0, p0, Lkl/n;

    if-eqz v0, :cond_e

    check-cast p0, Lkl/n;

    invoke-virtual {p0}, Lkl/n;->getEncoded()[B

    move-result-object v0

    new-instance v1, Lhi/b;

    invoke-virtual {p0}, Lkl/k;->d()Lkl/l;

    move-result-object p0

    invoke-static {p0}, Lpl/g;->v(Lkl/l;)Loh/x;

    move-result-object p0

    invoke-direct {v1, p0}, Lhi/b;-><init>(Loh/x;)V

    new-instance p0, Lhi/h0;

    new-instance v2, Loh/C0;

    invoke-direct {v2, v0}, Loh/C0;-><init>([B)V

    invoke-direct {p0, v1, v2}, Lhi/h0;-><init>(Lhi/b;Loh/g;)V

    return-object p0

    :cond_e
    instance-of v0, p0, Lil/i;

    if-eqz v0, :cond_f

    check-cast p0, Lil/i;

    invoke-virtual {p0}, Lil/i;->getEncoded()[B

    move-result-object v0

    new-instance v1, Lhi/b;

    invoke-virtual {p0}, Lil/e;->d()Lil/g;

    move-result-object p0

    invoke-static {p0}, Lpl/g;->r(Lil/g;)Loh/x;

    move-result-object p0

    invoke-direct {v1, p0}, Lhi/b;-><init>(Loh/x;)V

    new-instance p0, Lhi/h0;

    new-instance v2, Loh/C0;

    invoke-direct {v2, v0}, Loh/C0;-><init>([B)V

    invoke-direct {p0, v1, v2}, Lhi/h0;-><init>(Lhi/b;Loh/g;)V

    return-object p0

    :cond_f
    instance-of v0, p0, Ldl/o;

    if-eqz v0, :cond_10

    check-cast p0, Ldl/o;

    invoke-virtual {p0}, Ldl/o;->e()[B

    move-result-object v0

    new-instance v2, Lhi/b;

    invoke-virtual {p0}, Ldl/k;->d()Ldl/m;

    move-result-object v3

    invoke-static {v3}, Lpl/g;->e(Ldl/m;)Loh/x;

    move-result-object v3

    invoke-direct {v2, v3}, Lhi/b;-><init>(Loh/x;)V

    array-length v3, v0

    add-int/2addr v3, v1

    new-array v3, v3, [B

    invoke-virtual {p0}, Ldl/k;->d()Ldl/m;

    move-result-object p0

    invoke-virtual {p0}, Ldl/m;->a()I

    move-result p0

    int-to-byte p0, p0

    const/4 v4, 0x0

    aput-byte p0, v3, v4

    array-length p0, v0

    invoke-static {v0, v4, v3, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lhi/h0;

    invoke-direct {p0, v2, v3}, Lhi/h0;-><init>(Lhi/b;[B)V

    return-object p0

    :cond_10
    instance-of v0, p0, Lcl/k;

    if-eqz v0, :cond_11

    check-cast p0, Lcl/k;

    new-instance v0, Lhi/b;

    invoke-virtual {p0}, Lcl/h;->d()Lcl/i;

    move-result-object v1

    invoke-static {v1}, Lpl/g;->n(Lcl/i;)Loh/x;

    move-result-object v1

    invoke-direct {v0, v1}, Lhi/b;-><init>(Loh/x;)V

    new-instance v1, Lhi/h0;

    invoke-virtual {p0}, Lcl/k;->getEncoded()[B

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lhi/h0;-><init>(Lhi/b;[B)V

    return-object v1

    :cond_11
    instance-of v0, p0, Ljl/h;

    if-eqz v0, :cond_12

    check-cast p0, Ljl/h;

    invoke-virtual {p0}, Ljl/h;->getEncoded()[B

    move-result-object v0

    new-instance v1, Lhi/b;

    invoke-virtual {p0}, Ljl/e;->d()Ljl/f;

    move-result-object p0

    invoke-static {p0}, Lpl/g;->t(Ljl/f;)Loh/x;

    move-result-object p0

    invoke-direct {v1, p0}, Lhi/b;-><init>(Loh/x;)V

    new-instance p0, Lhi/h0;

    new-instance v2, Loh/C0;

    invoke-direct {v2, v0}, Loh/C0;-><init>([B)V

    invoke-direct {p0, v1, v2}, Lhi/h0;-><init>(Lhi/b;Loh/g;)V

    return-object p0

    :cond_12
    instance-of v0, p0, Ljl/p;

    if-eqz v0, :cond_13

    check-cast p0, Ljl/p;

    invoke-virtual {p0}, Ljl/p;->getEncoded()[B

    move-result-object v0

    new-instance v1, Lhi/b;

    invoke-virtual {p0}, Ljl/m;->d()Ljl/n;

    move-result-object p0

    invoke-static {p0}, Lpl/g;->D(Ljl/n;)Loh/x;

    move-result-object p0

    invoke-direct {v1, p0}, Lhi/b;-><init>(Loh/x;)V

    new-instance p0, Lhi/h0;

    new-instance v2, Loh/C0;

    invoke-direct {v2, v0}, Loh/C0;-><init>([B)V

    invoke-direct {p0, v1, v2}, Lhi/h0;-><init>(Lhi/b;Loh/g;)V

    return-object p0

    :cond_13
    instance-of v0, p0, Lbl/g;

    if-eqz v0, :cond_14

    check-cast p0, Lbl/g;

    new-instance v0, Lhi/b;

    invoke-virtual {p0}, Lbl/d;->d()Lbl/e;

    move-result-object v1

    invoke-static {v1}, Lpl/g;->c(Lbl/e;)Loh/x;

    move-result-object v1

    invoke-direct {v0, v1}, Lhi/b;-><init>(Loh/x;)V

    new-instance v1, Lhi/h0;

    invoke-virtual {p0}, Lbl/g;->getEncoded()[B

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lhi/h0;-><init>(Lhi/b;[B)V

    return-object v1

    :cond_14
    instance-of v0, p0, LZk/i;

    if-eqz v0, :cond_15

    check-cast p0, LZk/i;

    invoke-virtual {p0}, LZk/i;->getEncoded()[B

    move-result-object v0

    new-instance v1, Lhi/b;

    invoke-virtual {p0}, LZk/f;->d()LZk/g;

    move-result-object p0

    invoke-static {p0}, Lpl/g;->a(LZk/g;)Loh/x;

    move-result-object p0

    invoke-direct {v1, p0}, Lhi/b;-><init>(Loh/x;)V

    new-instance p0, Lhi/h0;

    invoke-direct {p0, v1, v0}, Lhi/h0;-><init>(Lhi/b;[B)V

    return-object p0

    :cond_15
    instance-of v0, p0, Lgl/l;

    if-eqz v0, :cond_16

    check-cast p0, Lgl/l;

    invoke-virtual {p0}, Lgl/l;->getEncoded()[B

    move-result-object v0

    new-instance v1, Lhi/b;

    invoke-virtual {p0}, Lgl/i;->d()Lgl/j;

    move-result-object p0

    invoke-static {p0}, Lpl/g;->l(Lgl/j;)Loh/x;

    move-result-object p0

    invoke-direct {v1, p0}, Lhi/b;-><init>(Loh/x;)V

    new-instance p0, Lhi/h0;

    invoke-direct {p0, v1, v0}, Lhi/h0;-><init>(Lhi/b;[B)V

    return-object p0

    :cond_16
    instance-of v0, p0, Lll/j;

    if-eqz v0, :cond_17

    check-cast p0, Lll/j;

    invoke-virtual {p0}, Lll/j;->getEncoded()[B

    move-result-object v0

    new-instance v1, Lhi/b;

    invoke-virtual {p0}, Lll/g;->e()Lll/h;

    move-result-object p0

    invoke-static {p0}, Lpl/g;->z(Lll/h;)Loh/x;

    move-result-object p0

    invoke-direct {v1, p0}, Lhi/b;-><init>(Loh/x;)V

    new-instance p0, Lhi/h0;

    new-instance v2, Loh/C0;

    invoke-direct {v2, v0}, Loh/C0;-><init>([B)V

    invoke-direct {p0, v1, v2}, Lhi/h0;-><init>(Lhi/b;Loh/g;)V

    return-object p0

    :cond_17
    new-instance p0, Ljava/io/IOException;

    const-string v0, "key parameters not recognized"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
