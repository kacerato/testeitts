.class public abstract Lcom/android/tools/r8/internal/xc0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/wc0;
    .locals 9

    .line 41
    iget-object v0, p0, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/R2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R2;->E0()Lcom/android/tools/r8/graph/R2$l;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/R2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/R2;->D0()Lcom/android/tools/r8/graph/R2$k;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/R2$k;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/tools/r8/graph/L2;

    .line 44
    iget-object v1, p0, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    new-array v6, v1, [Lcom/android/tools/r8/graph/l1;

    .line 45
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/R2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/R2;->z0()Lcom/android/tools/r8/graph/X2;

    move-result-object v1

    add-int/lit8 v3, v2, -0x2

    .line 47
    iget-object v1, v1, Lcom/android/tools/r8/graph/X2;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v1, Lcom/android/tools/r8/graph/C2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/C2;->f:Lcom/android/tools/r8/graph/v2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/J2;->l0()Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    aput-object v1, v6, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R2$l;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/tools/r8/graph/M2;

    .line 49
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v7

    .line 51
    new-instance p1, Lcom/android/tools/r8/internal/wc0;

    iget-object v3, p0, Lcom/android/tools/r8/graph/D0;->e:Lcom/android/tools/r8/graph/L2;

    iget-object v4, p0, Lcom/android/tools/r8/graph/D0;->f:Lcom/android/tools/r8/graph/I2;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/tools/r8/internal/wc0;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;)V

    return-object p1
.end method

.method public static a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/graph/D0;->g:Lcom/android/tools/r8/graph/C2;

    .line 3
    iget-object v2, v1, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/B2;->c()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 4
    :cond_0
    iget-object v2, v1, Lcom/android/tools/r8/graph/C2;->f:Lcom/android/tools/r8/graph/v2;

    iget-object v4, v0, Lcom/android/tools/r8/graph/u1;->n6:Lcom/android/tools/r8/graph/i2;

    iget-object v4, v4, Lcom/android/tools/r8/graph/i2;->a:Lcom/android/tools/r8/graph/A2;

    if-eq v2, v4, :cond_1

    return v3

    .line 5
    :cond_1
    iget-boolean v1, v1, Lcom/android/tools/r8/graph/C2;->g:Z

    if-eqz v1, :cond_3

    .line 6
    sget-boolean p0, Lcom/android/tools/r8/internal/xc0;->a:Z

    if-eqz p0, :cond_2

    return v3

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Invoke-dynamic invoking non interface method ObjectMethods#bootstrap as an interface method."

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 7
    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_5

    .line 8
    sget-boolean p0, Lcom/android/tools/r8/internal/xc0;->a:Z

    if-eqz p0, :cond_4

    return v3

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Invoke-dynamic invoking method ObjectMethods#bootstrap with less than 2 parameters."

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 9
    :cond_5
    iget-object v1, p0, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/R2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/R2;->E0()Lcom/android/tools/r8/graph/R2$l;

    move-result-object v1

    if-nez v1, :cond_7

    .line 10
    sget-boolean p0, Lcom/android/tools/r8/internal/xc0;->a:Z

    if-eqz p0, :cond_6

    return v3

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Invoke-dynamic invoking method ObjectMethods#bootstrap with an invalid type."

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 11
    :cond_7
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/R2$l;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v4

    .line 13
    iget-object v5, p1, Lcom/android/tools/r8/graph/y;->g:Lcom/android/tools/r8/internal/Hz;

    .line 14
    invoke-virtual {v4, v5, v1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    .line 15
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    .line 16
    iget-object v5, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v4, v5, :cond_8

    goto :goto_0

    :cond_8
    invoke-interface {p1, v4}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_1c

    .line 17
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->v1()Z

    move-result p1

    if-eqz p1, :cond_9

    goto/16 :goto_7

    .line 18
    :cond_9
    iget-object p1, p0, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/R2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->D0()Lcom/android/tools/r8/graph/R2$k;

    move-result-object p1

    if-nez p1, :cond_b

    .line 19
    sget-boolean p0, Lcom/android/tools/r8/internal/xc0;->a:Z

    if-eqz p0, :cond_a

    return v3

    :cond_a
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Invoke-dynamic invoking method ObjectMethods#bootstrap with invalid field names."

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 20
    :cond_b
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2$k;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/L2;

    .line 21
    sget-boolean v5, Lcom/android/tools/r8/internal/xc0;->a:Z

    if-nez v5, :cond_d

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_d

    .line 22
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v6, ";"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    iget-object v6, p0, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v2

    if-ne p1, v6, :cond_c

    goto :goto_1

    .line 23
    :cond_c
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_d
    :goto_1
    if-nez v5, :cond_f

    .line 24
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->k1()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p2, p0, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v2

    if-gt p1, p2, :cond_e

    goto :goto_2

    :cond_e
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 25
    :cond_f
    :goto_2
    iget-object p1, p0, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_13

    .line 26
    iget-object p1, p0, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/R2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->z0()Lcom/android/tools/r8/graph/X2;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 27
    iget-object p2, p1, Lcom/android/tools/r8/graph/X2;->d:Lcom/android/tools/r8/graph/d4;

    check-cast p2, Lcom/android/tools/r8/graph/C2;

    iget-object p2, p2, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    .line 28
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    sget-object v5, Lcom/android/tools/r8/graph/B2;->f:Lcom/android/tools/r8/graph/B2;

    if-ne p2, v5, :cond_11

    .line 30
    iget-object p1, p1, Lcom/android/tools/r8/graph/X2;->d:Lcom/android/tools/r8/graph/d4;

    check-cast p1, Lcom/android/tools/r8/graph/C2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/C2;->f:Lcom/android/tools/r8/graph/v2;

    .line 31
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->p0()Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_3

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 32
    :cond_11
    :goto_3
    sget-boolean p0, Lcom/android/tools/r8/internal/xc0;->a:Z

    if-eqz p0, :cond_12

    return v3

    :cond_12
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Invoke-dynamic invoking method ObjectMethods#bootstrap with invalid getters."

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 33
    :cond_13
    iget-object p1, p0, Lcom/android/tools/r8/graph/D0;->e:Lcom/android/tools/r8/graph/L2;

    iget-object p2, v0, Lcom/android/tools/r8/graph/u1;->m0:Lcom/android/tools/r8/graph/L2;

    if-ne p1, p2, :cond_16

    .line 34
    sget-boolean p1, Lcom/android/tools/r8/internal/xc0;->a:Z

    if-nez p1, :cond_15

    iget-object p0, p0, Lcom/android/tools/r8/graph/D0;->f:Lcom/android/tools/r8/graph/I2;

    iget-object p1, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v1}, [Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p1

    if-ne p0, p1, :cond_14

    goto :goto_4

    :cond_14
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_15
    :goto_4
    return v4

    .line 35
    :cond_16
    iget-object p2, v0, Lcom/android/tools/r8/graph/u1;->Y:Lcom/android/tools/r8/graph/L2;

    if-ne p1, p2, :cond_19

    .line 36
    sget-boolean p1, Lcom/android/tools/r8/internal/xc0;->a:Z

    if-nez p1, :cond_18

    iget-object p0, p0, Lcom/android/tools/r8/graph/D0;->f:Lcom/android/tools/r8/graph/I2;

    iget-object p1, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v1}, [Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p1

    if-ne p0, p1, :cond_17

    goto :goto_5

    :cond_17
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_18
    :goto_5
    return v4

    .line 37
    :cond_19
    iget-object p2, v0, Lcom/android/tools/r8/graph/u1;->X:Lcom/android/tools/r8/graph/L2;

    if-ne p1, p2, :cond_1c

    .line 38
    sget-boolean p1, Lcom/android/tools/r8/internal/xc0;->a:Z

    if-nez p1, :cond_1b

    iget-object p0, p0, Lcom/android/tools/r8/graph/D0;->f:Lcom/android/tools/r8/graph/I2;

    iget-object p1, v0, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    iget-object p2, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v1, p2}, [Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 39
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p1

    if-ne p0, p1, :cond_1a

    goto :goto_6

    .line 40
    :cond_1a
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1b
    :goto_6
    return v4

    :cond_1c
    :goto_7
    return v3
.end method
