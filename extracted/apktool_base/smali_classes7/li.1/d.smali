.class public Lli/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lli/h;)Lli/h;
    .locals 13

    sget-object v0, Lhi/B;->N:Loh/x;

    invoke-virtual {p0, v0}, Lli/h;->b(Loh/x;)Lhi/B;

    move-result-object v0

    invoke-virtual {v0}, Lhi/B;->A()Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v0

    invoke-virtual {p0}, Lli/h;->x()Lhi/q;

    move-result-object p0

    invoke-virtual {p0}, Lhi/q;->E()Lhi/j0;

    move-result-object p0

    invoke-virtual {p0}, Lhi/j0;->r()Loh/B;

    move-result-object p0

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-virtual {p0}, Loh/E;->Q()[Loh/g;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    invoke-virtual {v0, v4}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    const/4 v5, 0x2

    move v6, v5

    :goto_0
    instance-of v7, v3, Loh/M;

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    if-eqz v7, :cond_4

    invoke-static {v3}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object v7

    invoke-virtual {v7}, Loh/M;->g()I

    move-result v11

    if-eqz v11, :cond_3

    if-eq v11, v4, :cond_2

    if-eq v11, v5, :cond_1

    if-eq v11, v10, :cond_0

    goto :goto_1

    :cond_0
    check-cast v3, Loh/M;

    invoke-static {v3, v4}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object v3

    aput-object v3, v1, v8

    goto :goto_1

    :cond_1
    invoke-static {v7, v2}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object v3

    aput-object v3, v1, v9

    goto :goto_1

    :cond_2
    invoke-static {v7, v4}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object v3

    aput-object v3, v1, v10

    goto :goto_1

    :cond_3
    invoke-static {v7, v2}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object v3

    aput-object v3, v1, v5

    :goto_1
    add-int/lit8 v3, v6, 0x1

    invoke-virtual {v0, v6}, Loh/E;->I(I)Loh/g;

    move-result-object v6

    move-object v12, v6

    move v6, v3

    move-object v3, v12

    goto :goto_0

    :cond_4
    const/4 v7, 0x6

    aput-object v3, v1, v7

    aget-object v3, v1, v5

    if-nez v3, :cond_5

    invoke-virtual {p0, v5}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    aput-object v3, v1, v5

    :cond_5
    aget-object v3, v1, v10

    if-nez v3, :cond_6

    invoke-virtual {p0, v10}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    aput-object v3, v1, v10

    :cond_6
    aget-object v3, v1, v9

    if-nez v3, :cond_7

    invoke-virtual {p0, v9}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    aput-object v3, v1, v9

    :cond_7
    aget-object v3, v1, v8

    if-nez v3, :cond_8

    invoke-virtual {p0, v8}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    aput-object v3, v1, v8

    :cond_8
    invoke-static {p0}, Lli/d;->b(Loh/E;)Lhi/D;

    move-result-object p0

    invoke-virtual {v0}, Loh/E;->size()I

    move-result v3

    sub-int/2addr v3, v4

    const/4 v7, 0x7

    if-ge v6, v3, :cond_b

    invoke-virtual {v0, v6}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object v3

    invoke-virtual {v3}, Loh/M;->g()I

    move-result v6

    if-ne v6, v9, :cond_a

    invoke-static {v3, v2}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object v3

    move v6, v2

    :goto_2
    invoke-virtual {v3}, Loh/E;->size()I

    move-result v8

    if-eq v6, v8, :cond_9

    invoke-virtual {v3, v6}, Loh/E;->I(I)Loh/g;

    move-result-object v8

    invoke-static {v8}, Lhi/B;->z(Ljava/lang/Object;)Lhi/B;

    move-result-object v8

    invoke-virtual {p0, v8}, Lhi/D;->j(Lhi/B;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_9
    new-instance v3, Loh/K0;

    invoke-virtual {p0}, Lhi/D;->e()Lhi/C;

    move-result-object p0

    invoke-direct {v3, v10, p0}, Loh/K0;-><init>(ILoh/g;)V

    aput-object v3, v1, v7

    goto :goto_3

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "malformed delta extension"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    invoke-virtual {p0}, Lhi/D;->h()Z

    move-result v3

    if-nez v3, :cond_c

    new-instance v3, Loh/K0;

    invoke-virtual {p0}, Lhi/D;->e()Lhi/C;

    move-result-object p0

    invoke-direct {v3, v10, p0}, Loh/K0;-><init>(ILoh/g;)V

    aput-object v3, v1, v7

    goto :goto_3

    :cond_c
    const/4 p0, 0x0

    aput-object p0, v1, v7

    :goto_3
    new-instance p0, Loh/h;

    invoke-direct {p0, v7}, Loh/h;-><init>(I)V

    :goto_4
    array-length v3, v1

    if-eq v2, v3, :cond_e

    aget-object v3, v1, v2

    if-eqz v3, :cond_d

    invoke-virtual {p0, v3}, Loh/h;->a(Loh/g;)V

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    new-instance v2, Loh/h;

    invoke-direct {v2}, Loh/h;-><init>()V

    new-instance v3, Loh/G0;

    invoke-direct {v3, p0}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v2, v3}, Loh/h;->a(Loh/g;)V

    aget-object p0, v1, v5

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-virtual {v2, p0}, Loh/h;->a(Loh/g;)V

    invoke-virtual {v0}, Loh/E;->size()I

    move-result p0

    sub-int/2addr p0, v4

    invoke-virtual {v0, p0}, Loh/E;->I(I)Loh/g;

    move-result-object p0

    invoke-static {p0}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object p0

    invoke-virtual {v2, p0}, Loh/h;->a(Loh/g;)V

    new-instance p0, Lli/h;

    new-instance v0, Loh/G0;

    invoke-direct {v0, v2}, Loh/G0;-><init>(Loh/h;)V

    invoke-static {v0}, Lhi/q;->v(Ljava/lang/Object;)Lhi/q;

    move-result-object v0

    invoke-direct {p0, v0}, Lli/h;-><init>(Lhi/q;)V

    return-object p0
.end method

.method public static b(Loh/E;)Lhi/D;
    .locals 5

    sget-object v0, Lhi/B;->N:Loh/x;

    invoke-virtual {p0}, Loh/E;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p0

    invoke-static {p0}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object p0

    invoke-static {p0, v2}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    new-instance v1, Lhi/D;

    invoke-direct {v1}, Lhi/D;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Loh/E;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    invoke-virtual {p0, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Lhi/B;->z(Ljava/lang/Object;)Lhi/B;

    move-result-object v3

    invoke-virtual {v3}, Lhi/B;->x()Loh/x;

    move-result-object v4

    invoke-virtual {v0, v4}, Loh/B;->A(Loh/B;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v3}, Lhi/D;->a(Lhi/B;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static c(ZLli/h;)Lhi/B;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    new-instance v1, Loh/s;

    invoke-virtual {p1}, Lli/h;->i()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/K0;

    invoke-virtual {p1}, Lli/h;->k()Lhi/b;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/K0;

    const/4 v2, 0x1

    invoke-virtual {p1}, Lli/h;->e()Lfi/d;

    move-result-object v4

    invoke-direct {v1, v3, v2, v4}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/h;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Loh/h;-><init>(I)V

    invoke-virtual {p1}, Lli/h;->x()Lhi/q;

    move-result-object v4

    invoke-virtual {v4}, Lhi/q;->B()Lhi/o0;

    move-result-object v4

    invoke-virtual {v1, v4}, Loh/h;->a(Loh/g;)V

    invoke-virtual {p1}, Lli/h;->x()Lhi/q;

    move-result-object v4

    invoke-virtual {v4}, Lhi/q;->u()Lhi/o0;

    move-result-object v4

    invoke-virtual {v1, v4}, Loh/h;->a(Loh/g;)V

    new-instance v4, Loh/K0;

    new-instance v5, Loh/G0;

    invoke-direct {v5, v1}, Loh/G0;-><init>(Loh/h;)V

    invoke-direct {v4, v3, v2, v5}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v4}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/K0;

    const/4 v2, 0x3

    invoke-virtual {p1}, Lli/h;->l()Lfi/d;

    move-result-object v4

    invoke-direct {v1, v3, v2, v4}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    invoke-virtual {p1}, Lli/h;->m()Lhi/h0;

    move-result-object v1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    invoke-virtual {p1}, Lli/h;->d()Lhi/C;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Loh/K0;

    const/4 v2, 0x4

    invoke-virtual {p1}, Lli/h;->d()Lhi/C;

    move-result-object v4

    invoke-direct {v1, v3, v2, v4}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/r0;

    invoke-virtual {p1}, Lli/h;->j()[B

    move-result-object p1

    invoke-direct {v1, p1}, Loh/r0;-><init>([B)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance p1, Lhi/B;

    sget-object v1, Lhi/B;->N:Loh/x;

    new-instance v2, Loh/G0;

    invoke-direct {v2, v0}, Loh/G0;-><init>(Loh/h;)V

    const-string v0, "DER"

    invoke-virtual {v2, v0}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Lhi/B;-><init>(Loh/x;Z[B)V

    return-object p1
.end method
