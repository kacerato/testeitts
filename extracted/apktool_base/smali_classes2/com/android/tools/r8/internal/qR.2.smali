.class public abstract Lcom/android/tools/r8/internal/qR;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;ZLcom/android/tools/r8/internal/eC;Lcom/android/tools/r8/graph/u1;)I
    .locals 0

    .line 160
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/qR;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;ZLcom/android/tools/r8/internal/eC;Lcom/android/tools/r8/graph/u1;)V

    .line 161
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 162
    sget-object p1, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    .line 163
    iget-object p0, p0, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object p0, p0, Lcom/android/tools/r8/graph/L2;->f:[B

    aget-byte p0, p0, p3

    int-to-char p0, p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/Kw0;->a(C)Lcom/android/tools/r8/internal/Kw0;

    move-result-object p0

    .line 164
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Kw0;->c()I

    move-result p0

    return p0

    .line 165
    :cond_0
    iget-object p2, p4, Lcom/android/tools/r8/graph/u1;->s6:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/eA;->f()Lcom/android/tools/r8/internal/f6;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/aA;

    invoke-virtual {p2, p0}, Lcom/android/tools/r8/internal/aA;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/M2;

    .line 166
    sget-object p4, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    .line 167
    iget-object p0, p0, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object p0, p0, Lcom/android/tools/r8/graph/L2;->f:[B

    aget-byte p0, p0, p3

    int-to-char p0, p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/Kw0;->a(C)Lcom/android/tools/r8/internal/Kw0;

    move-result-object p0

    .line 168
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Kw0;->c()I

    move-result p0

    if-nez p2, :cond_1

    goto :goto_0

    .line 169
    :cond_1
    iget-object p2, p2, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object p2, p2, Lcom/android/tools/r8/graph/L2;->f:[B

    aget-byte p2, p2, p3

    int-to-char p2, p2

    invoke-static {p2}, Lcom/android/tools/r8/internal/Kw0;->a(C)Lcom/android/tools/r8/internal/Kw0;

    move-result-object p2

    .line 170
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Kw0;->c()I

    move-result p3

    .line 171
    :goto_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Kw0;->c()I

    move-result p1

    .line 172
    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 173
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/iR;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/nR;)Lcom/android/tools/r8/graph/G;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 30
    iget-object v2, v0, Lcom/android/tools/r8/internal/iR;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    .line 31
    iget-object v3, v0, Lcom/android/tools/r8/internal/iR;->g:Lcom/android/tools/r8/internal/hR;

    .line 32
    instance-of v4, v3, Lcom/android/tools/r8/internal/eR;

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    .line 33
    check-cast v3, Lcom/android/tools/r8/internal/eR;

    .line 34
    iget-object v0, v3, Lcom/android/tools/r8/internal/eR;->f:Lcom/android/tools/r8/graph/M2;

    .line 35
    iget-object v3, v2, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    new-array v4, v6, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2, v3, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    .line 36
    iget-object v4, v2, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    .line 37
    invoke-virtual {v2, v0, v3, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    .line 38
    iget-object v3, v1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v3, v3, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v3, v3, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v4, v3

    move v5, v6

    const/4 v10, 0x1

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v7, v3, v5

    .line 39
    invoke-static {v7}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Kw0;->c()I

    move-result v7

    add-int/2addr v10, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 40
    :cond_0
    sget-object v13, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    .line 41
    new-instance v3, Lcom/android/tools/r8/graph/G;

    iget-object v8, v1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    new-instance v1, Lcom/android/tools/r8/internal/wa;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/wa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    new-instance v0, Lcom/android/tools/r8/internal/kb;

    sget-object v4, Lcom/android/tools/r8/internal/kb$a;->e:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {v0, v4}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    new-instance v4, Lcom/android/tools/r8/internal/ga;

    const/16 v5, 0xb7

    invoke-direct {v4, v5, v2, v6}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v2, Lcom/android/tools/r8/internal/Cb;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Cb;-><init>()V

    .line 42
    invoke-static {v1, v0, v4, v2}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v11

    const/4 v9, 0x2

    move-object v7, v3

    move-object v12, v13

    invoke-direct/range {v7 .. v13}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v3

    .line 43
    :cond_1
    iget-object v4, v3, Lcom/android/tools/r8/internal/hR;->a:Lcom/android/tools/r8/graph/A2;

    .line 44
    iget-object v7, v0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object v8, v7, Lcom/android/tools/r8/internal/kR;->g:Lcom/android/tools/r8/graph/O2;

    iget-object v8, v8, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 45
    iget-object v7, v7, Lcom/android/tools/r8/internal/kR;->b:Lcom/android/tools/r8/graph/A2;

    .line 46
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v7

    .line 47
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/I2;->n0()Lcom/android/tools/r8/graph/O2;

    move-result-object v7

    .line 48
    iget-object v9, v0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    .line 49
    iget-object v9, v9, Lcom/android/tools/r8/internal/kR;->b:Lcom/android/tools/r8/graph/A2;

    .line 50
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v9

    .line 51
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/I2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    .line 52
    iget-object v10, v0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object v10, v10, Lcom/android/tools/r8/internal/kR;->c:Lcom/android/tools/r8/graph/I2;

    iget-object v11, v10, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v11, v11, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 53
    iget-object v10, v10, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    .line 54
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 55
    sget-boolean v12, Lcom/android/tools/r8/internal/qR;->a:Z

    if-nez v12, :cond_5

    .line 56
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v12

    .line 57
    invoke-static {v2, v10, v9}, Lcom/android/tools/r8/internal/kR;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v10, 0x1

    goto :goto_1

    .line 58
    :cond_2
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 59
    invoke-static {v2, v12, v10}, Lcom/android/tools/r8/internal/qR;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v10

    goto :goto_1

    :cond_3
    move v10, v6

    :goto_1
    if-eqz v10, :cond_4

    goto :goto_2

    .line 60
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 61
    :cond_5
    :goto_2
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/android/tools/r8/graph/u1;->d(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    .line 62
    :cond_6
    iget-object v12, v4, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    iget-object v13, v2, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v12, v13}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result v12

    .line 63
    sget-boolean v13, Lcom/android/tools/r8/internal/qR;->a:Z

    if-nez v13, :cond_8

    if-eqz v12, :cond_8

    iget-object v14, v3, Lcom/android/tools/r8/internal/hR;->b:Lcom/android/tools/r8/internal/kK;

    sget-object v15, Lcom/android/tools/r8/internal/kK;->d:Lcom/android/tools/r8/internal/kK;

    if-ne v14, v15, :cond_7

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 64
    :cond_8
    :goto_3
    iget-object v14, v3, Lcom/android/tools/r8/internal/hR;->b:Lcom/android/tools/r8/internal/kK;

    sget-object v15, Lcom/android/tools/r8/internal/kK;->h:Lcom/android/tools/r8/internal/kK;

    if-eq v14, v15, :cond_a

    sget-object v5, Lcom/android/tools/r8/internal/kK;->e:Lcom/android/tools/r8/internal/kK;

    if-eq v14, v5, :cond_a

    sget-object v5, Lcom/android/tools/r8/internal/kK;->d:Lcom/android/tools/r8/internal/kK;

    if-ne v14, v5, :cond_9

    if-nez v12, :cond_9

    goto :goto_4

    :cond_9
    move v5, v6

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v5, 0x1

    .line 65
    :goto_5
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    if-eqz v5, :cond_b

    .line 66
    iget-object v5, v4, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_b
    iget-object v5, v4, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v5, v5, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v5, v5, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 68
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    array-length v6, v5

    invoke-static {v6}, Lcom/android/tools/r8/internal/CT;->a(I)I

    move-result v6

    move-object/from16 v16, v9

    .line 70
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    invoke-static {v9, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 72
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 73
    iget-object v5, v4, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v5, v5, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    if-nez v13, :cond_d

    .line 74
    iget-object v6, v3, Lcom/android/tools/r8/internal/hR;->b:Lcom/android/tools/r8/internal/kK;

    sget-object v9, Lcom/android/tools/r8/internal/kK;->f:Lcom/android/tools/r8/internal/kK;

    if-eq v6, v9, :cond_d

    if-eq v6, v15, :cond_d

    sget-object v9, Lcom/android/tools/r8/internal/kK;->d:Lcom/android/tools/r8/internal/kK;

    if-eq v6, v9, :cond_d

    sget-object v9, Lcom/android/tools/r8/internal/kK;->e:Lcom/android/tools/r8/internal/kK;

    if-ne v6, v9, :cond_c

    goto :goto_6

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_d
    :goto_6
    if-nez v13, :cond_15

    if-eqz v12, :cond_e

    .line 75
    iget-object v5, v3, Lcom/android/tools/r8/internal/hR;->a:Lcom/android/tools/r8/graph/A2;

    iget-object v5, v5, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 76
    :cond_e
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    array-length v9, v8

    invoke-static {v9}, Lcom/android/tools/r8/internal/CT;->a(I)I

    move-result v9

    .line 79
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    invoke-static {v15, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 81
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 82
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    array-length v9, v11

    invoke-static {v9}, Lcom/android/tools/r8/internal/CT;->a(I)I

    move-result v9

    .line 84
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    invoke-static {v15, v11}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 87
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 88
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-eq v9, v15, :cond_10

    if-eqz v13, :cond_f

    goto :goto_7

    .line 89
    :cond_f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    :goto_7
    const/4 v13, 0x0

    :goto_8
    if-ge v13, v9, :cond_13

    .line 90
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v6

    move-object/from16 v6, v17

    check-cast v6, Lcom/android/tools/r8/graph/M2;

    invoke-static {v2, v15, v6}, Lcom/android/tools/r8/internal/qR;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 91
    sget-boolean v6, Lcom/android/tools/r8/internal/qR;->a:Z

    if-eqz v6, :cond_11

    goto :goto_9

    :cond_11
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_12
    :goto_9
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v6, v18

    goto :goto_8

    .line 92
    :cond_13
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v6

    if-nez v6, :cond_15

    .line 93
    invoke-static {v2, v5, v10}, Lcom/android/tools/r8/internal/qR;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 94
    sget-boolean v5, Lcom/android/tools/r8/internal/qR;->a:Z

    if-eqz v5, :cond_14

    goto :goto_a

    :cond_14
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 95
    :cond_15
    :goto_a
    new-instance v5, Lcom/android/tools/r8/internal/eC;

    .line 96
    invoke-direct {v5}, Lcom/android/tools/r8/internal/eC;-><init>()V

    if-eqz v12, :cond_16

    .line 97
    new-instance v6, Lcom/android/tools/r8/internal/wa;

    iget-object v9, v4, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v6, v9}, Lcom/android/tools/r8/internal/wa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    .line 98
    new-instance v6, Lcom/android/tools/r8/internal/kb;

    sget-object v9, Lcom/android/tools/r8/internal/kb$a;->e:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {v6, v9}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    const/4 v6, 0x2

    goto :goto_b

    :cond_16
    const/4 v6, 0x0

    .line 99
    :goto_b
    array-length v8, v8

    const/4 v9, 0x0

    :goto_c
    if-ge v9, v8, :cond_17

    .line 100
    invoke-virtual {v0, v9}, Lcom/android/tools/r8/internal/iR;->a(I)Lcom/android/tools/r8/graph/l1;

    move-result-object v13

    .line 101
    iget-object v15, v13, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-static {v15}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v15

    move/from16 v17, v12

    .line 102
    new-instance v12, Lcom/android/tools/r8/internal/pa;

    move-object/from16 v18, v10

    sget-object v10, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    const/4 v1, 0x0

    invoke-direct {v12, v10, v1}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v5, v12}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    .line 103
    new-instance v1, Lcom/android/tools/r8/internal/T9;

    invoke-direct {v1, v13}, Lcom/android/tools/r8/internal/T9;-><init>(Lcom/android/tools/r8/graph/l1;)V

    invoke-virtual {v5, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    .line 104
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/Kw0;->c()I

    move-result v1

    add-int/2addr v6, v1

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    move/from16 v12, v17

    move-object/from16 v10, v18

    goto :goto_c

    :cond_17
    move-object/from16 v18, v10

    move/from16 v17, v12

    const/4 v1, 0x0

    const/4 v9, 0x1

    .line 105
    :goto_d
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v10

    if-ge v1, v10, :cond_1b

    .line 106
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object v10

    iget-object v10, v10, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    aget-object v10, v10, v1

    invoke-static {v10}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v10

    .line 107
    new-instance v12, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v12, v10, v9}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v5, v12}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    .line 108
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/Kw0;->c()I

    move-result v10

    add-int/2addr v9, v10

    add-int v10, v1, v8

    .line 109
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/graph/M2;

    .line 110
    invoke-virtual {v7, v1}, Lcom/android/tools/r8/graph/O2;->j(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v12

    aget-object v13, v11, v1

    .line 111
    invoke-virtual {v12, v13}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v15

    if-nez v15, :cond_1a

    .line 112
    sget-boolean v15, Lcom/android/tools/r8/internal/qR;->a:Z

    if-nez v15, :cond_19

    invoke-static {v2, v13, v12}, Lcom/android/tools/r8/internal/kR;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v12

    if-eqz v12, :cond_18

    goto :goto_e

    :cond_18
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 113
    :cond_19
    :goto_e
    new-instance v12, Lcom/android/tools/r8/internal/i9;

    invoke-direct {v12, v13}, Lcom/android/tools/r8/internal/i9;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v5, v12}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    :cond_1a
    const/4 v12, 0x0

    .line 114
    invoke-static {v13, v10, v12, v5, v2}, Lcom/android/tools/r8/internal/qR;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;ZLcom/android/tools/r8/internal/eC;Lcom/android/tools/r8/graph/u1;)I

    move-result v10

    add-int/2addr v6, v10

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 115
    :cond_1b
    new-instance v1, Lcom/android/tools/r8/internal/ga;

    iget-object v7, v3, Lcom/android/tools/r8/internal/hR;->b:Lcom/android/tools/r8/internal/kK;

    .line 116
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/kK;->a()I

    move-result v7

    .line 117
    iget-boolean v8, v3, Lcom/android/tools/r8/internal/hR;->c:Z

    .line 118
    invoke-direct {v1, v7, v4, v8}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    .line 119
    instance-of v3, v3, Lcom/android/tools/r8/internal/fR;

    if-eqz v3, :cond_1e

    .line 120
    new-instance v3, Lcom/android/tools/r8/internal/IH;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/IH;-><init>()V

    .line 121
    new-instance v7, Lcom/android/tools/r8/internal/IH;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/IH;-><init>()V

    .line 122
    iget-object v0, v0, Lcom/android/tools/r8/internal/iR;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->J()Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x0

    move-object/from16 v8, p1

    goto :goto_f

    .line 123
    :cond_1c
    invoke-static {}, Lcom/android/tools/r8/internal/B60$c;->t()Lcom/android/tools/r8/internal/B60$c$a;

    move-result-object v0

    move-object/from16 v8, p1

    .line 124
    invoke-virtual {v0, v8}, Lcom/android/tools/r8/internal/B60$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/B60$c$a;

    const/4 v10, 0x1

    .line 125
    iput-boolean v10, v0, Lcom/android/tools/r8/internal/B60$a;->e:Z

    const/4 v10, 0x0

    .line 126
    invoke-virtual {v0, v10}, Lcom/android/tools/r8/internal/B60$a;->a(I)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/B60$c$a;

    .line 127
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/B60$c$a;->d()Lcom/android/tools/r8/internal/B60$c;

    move-result-object v0

    .line 128
    :goto_f
    new-instance v10, Lcom/android/tools/r8/internal/lI0;

    invoke-direct {v10, v3}, Lcom/android/tools/r8/internal/lI0;-><init>(Lcom/android/tools/r8/internal/IH;)V

    new-instance v11, Lcom/android/tools/r8/internal/mI0;

    invoke-direct {v11, v7}, Lcom/android/tools/r8/internal/mI0;-><init>(Lcom/android/tools/r8/internal/IH;)V

    move-object/from16 v12, p2

    .line 129
    invoke-interface {v12, v0, v1, v10, v11}, Lcom/android/tools/r8/internal/nR;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 130
    invoke-virtual {v5, v0}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/eC;

    .line 131
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/IH;->a()I

    move-result v0

    add-int/2addr v9, v0

    .line 132
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/IH;->a()I

    move-result v0

    add-int/2addr v6, v0

    :goto_10
    move v10, v9

    goto :goto_11

    .line 133
    :cond_1d
    invoke-virtual {v5, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    goto :goto_10

    :cond_1e
    move-object/from16 v8, p1

    .line 134
    invoke-virtual {v5, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    goto :goto_10

    .line 135
    :goto_11
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 137
    sget-object v1, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    .line 138
    iget-object v1, v0, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/L2;->f:[B

    const/4 v3, 0x0

    aget-byte v1, v1, v3

    int-to-char v1, v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/Kw0;->a(C)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Kw0;->c()I

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 140
    :cond_1f
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 141
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v1

    if-nez v1, :cond_21

    .line 142
    new-instance v1, Lcom/android/tools/r8/internal/kb;

    .line 143
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->T0()Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/tools/r8/internal/kb$a;->d:Lcom/android/tools/r8/internal/kb$a;

    goto :goto_12

    :cond_20
    sget-object v0, Lcom/android/tools/r8/internal/kb$a;->c:Lcom/android/tools/r8/internal/kb$a;

    :goto_12
    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    .line 144
    invoke-virtual {v5, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    .line 145
    :cond_21
    new-instance v0, Lcom/android/tools/r8/internal/bb;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/bb;-><init>()V

    invoke-virtual {v5, v0}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move v9, v6

    goto :goto_17

    .line 146
    :cond_22
    sget-boolean v1, Lcom/android/tools/r8/internal/qR;->a:Z

    if-nez v1, :cond_24

    if-nez v17, :cond_24

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v3

    if-nez v3, :cond_23

    goto :goto_13

    :cond_23
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_24
    :goto_13
    if-eqz v17, :cond_25

    .line 147
    iget-object v0, v4, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    :cond_25
    if-nez v1, :cond_29

    move-object/from16 v1, v16

    move-object/from16 v3, v18

    .line 148
    invoke-static {v2, v3, v1}, Lcom/android/tools/r8/internal/kR;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v1, 0x1

    goto :goto_14

    .line 149
    :cond_26
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 150
    invoke-static {v2, v0, v3}, Lcom/android/tools/r8/internal/qR;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    goto :goto_14

    :cond_27
    const/4 v1, 0x0

    :goto_14
    if-eqz v1, :cond_28

    :goto_15
    const/4 v1, 0x1

    goto :goto_16

    .line 151
    :cond_28
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_29
    move-object/from16 v3, v18

    goto :goto_15

    .line 152
    :goto_16
    invoke-static {v0, v3, v1, v5, v2}, Lcom/android/tools/r8/internal/qR;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;ZLcom/android/tools/r8/internal/eC;Lcom/android/tools/r8/graph/u1;)I

    move-result v0

    .line 153
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 154
    new-instance v1, Lcom/android/tools/r8/internal/ab;

    sget-object v2, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    .line 155
    iget-object v2, v3, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/L2;->f:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    int-to-char v2, v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/Kw0;->a(C)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v2

    .line 156
    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {v5, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move v9, v0

    .line 157
    :goto_17
    sget-object v13, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    .line 158
    new-instance v0, Lcom/android/tools/r8/graph/G;

    iget-object v8, v8, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 159
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v11

    move-object v7, v0

    move-object v12, v13

    invoke-direct/range {v7 .. v13}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/L2;->f:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/16 v1, 0x46

    if-eq v0, v1, :cond_0

    const/16 v1, 0x53

    if-eq v0, v1, :cond_0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    const/16 v1, 0x49

    if-eq v0, v1, :cond_0

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid primitive type descriptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/u1;->d(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/eC;)V
    .locals 4

    .line 174
    sget-boolean v0, Lcom/android/tools/r8/internal/qR;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 175
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_4

    .line 176
    :cond_2
    invoke-static {p0}, Lcom/android/tools/r8/internal/T10;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/T10;

    move-result-object v1

    .line 177
    invoke-static {p1}, Lcom/android/tools/r8/internal/T10;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/T10;

    move-result-object v2

    if-eqz v1, :cond_d

    if-eqz v2, :cond_d

    if-nez v0, :cond_4

    if-eq v1, v2, :cond_3

    goto :goto_1

    .line 178
    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 179
    :cond_4
    :goto_1
    sget-object v0, Lcom/android/tools/r8/internal/pR;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_c

    const/4 v3, 0x2

    if-eq v0, v3, :cond_a

    const/4 v3, 0x3

    if-eq v0, v3, :cond_9

    const/4 v3, 0x4

    if-eq v0, v3, :cond_7

    const/4 v3, 0x5

    if-ne v0, v3, :cond_d

    .line 180
    sget-object p0, Lcom/android/tools/r8/internal/T10;->g:Lcom/android/tools/r8/internal/T10;

    if-eq v1, p0, :cond_6

    sget-object p0, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    if-ne v1, p0, :cond_5

    goto :goto_2

    .line 181
    :cond_5
    sget-object v1, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    .line 182
    :cond_6
    :goto_2
    new-instance p0, Lcom/android/tools/r8/internal/Ba;

    invoke-direct {p0, v1, v2}, Lcom/android/tools/r8/internal/Ba;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/T10;)V

    invoke-virtual {p2, p0}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    return-void

    .line 183
    :cond_7
    sget-object v0, Lcom/android/tools/r8/internal/T10;->h:Lcom/android/tools/r8/internal/T10;

    if-eq v1, v0, :cond_d

    .line 184
    sget-object p0, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    if-ne v1, p0, :cond_8

    goto :goto_3

    :cond_8
    sget-object p0, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    .line 185
    :goto_3
    new-instance p1, Lcom/android/tools/r8/internal/Ba;

    invoke-direct {p1, p0, v2}, Lcom/android/tools/r8/internal/Ba;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/T10;)V

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    return-void

    .line 186
    :cond_9
    sget-object v0, Lcom/android/tools/r8/internal/T10;->g:Lcom/android/tools/r8/internal/T10;

    if-eq v1, v0, :cond_d

    sget-object v0, Lcom/android/tools/r8/internal/T10;->h:Lcom/android/tools/r8/internal/T10;

    if-eq v1, v0, :cond_d

    .line 187
    new-instance p0, Lcom/android/tools/r8/internal/Ba;

    sget-object p1, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, p1, v2}, Lcom/android/tools/r8/internal/Ba;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/T10;)V

    invoke-virtual {p2, p0}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    return-void

    .line 188
    :cond_a
    sget-object p2, Lcom/android/tools/r8/internal/T10;->b:Lcom/android/tools/r8/internal/T10;

    if-eq v1, p2, :cond_b

    sget-object p2, Lcom/android/tools/r8/internal/T10;->c:Lcom/android/tools/r8/internal/T10;

    if-eq v1, p2, :cond_b

    sget-object p2, Lcom/android/tools/r8/internal/T10;->d:Lcom/android/tools/r8/internal/T10;

    if-ne v1, p2, :cond_d

    :cond_b
    :goto_4
    return-void

    .line 189
    :cond_c
    sget-object v0, Lcom/android/tools/r8/internal/T10;->b:Lcom/android/tools/r8/internal/T10;

    if-ne v1, v0, :cond_d

    .line 190
    new-instance p0, Lcom/android/tools/r8/internal/Ba;

    sget-object p1, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, p1, v2}, Lcom/android/tools/r8/internal/Ba;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/T10;)V

    invoke-virtual {p2, p0}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    return-void

    .line 191
    :cond_d
    new-instance p2, Lcom/android/tools/r8/internal/Jv0;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p0

    .line 192
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " cannot be converted to "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " via primitive widening conversion."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static a(BB)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x44

    const/16 v2, 0x46

    const/4 v3, 0x0

    if-eq p0, v2, :cond_d

    const/16 v4, 0x53

    const/16 v5, 0x49

    const/16 v6, 0x4a

    if-eq p0, v4, :cond_a

    const/16 v7, 0x5a

    if-eq p0, v7, :cond_9

    if-eq p0, v5, :cond_6

    if-eq p0, v6, :cond_3

    packed-switch p0, :pswitch_data_0

    .line 29
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid primitive type descriptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    if-eq p1, v4, :cond_2

    if-eq p1, v5, :cond_2

    if-eq p1, v6, :cond_2

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    :goto_0
    return v0

    :cond_3
    if-eq p1, v2, :cond_5

    if-ne p1, v1, :cond_4

    goto :goto_1

    :cond_4
    return v3

    :cond_5
    :goto_1
    return v0

    :cond_6
    if-eq p1, v6, :cond_8

    if-eq p1, v2, :cond_8

    if-ne p1, v1, :cond_7

    goto :goto_2

    :cond_7
    return v3

    :cond_8
    :goto_2
    return v0

    :cond_9
    :pswitch_1
    return v3

    :cond_a
    :pswitch_2
    if-eq p1, v5, :cond_c

    if-eq p1, v6, :cond_c

    if-eq p1, v2, :cond_c

    if-ne p1, v1, :cond_b

    goto :goto_3

    :cond_b
    return v3

    :cond_c
    :goto_3
    return v0

    :cond_d
    if-ne p1, v1, :cond_e

    return v0

    :cond_e
    return v3

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z
    .locals 3

    .line 4
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 6
    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, p0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v1

    .line 7
    :cond_3
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    return p0

    .line 9
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 10
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    iget-object p0, p1, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object p0, p0, Lcom/android/tools/r8/graph/L2;->f:[B

    aget-byte p0, p0, v2

    iget-object p1, p2, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/L2;->f:[B

    aget-byte p1, p1, v2

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/qR;->a(BB)Z

    move-result p0

    return p0

    .line 12
    :cond_5
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/qR;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 13
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    .line 14
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/tools/r8/graph/u1;->d6:Lcom/android/tools/r8/graph/M2;

    .line 15
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/tools/r8/graph/u1;->g6:Lcom/android/tools/r8/graph/M2;

    .line 16
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    .line 17
    :cond_6
    iget-object v0, p0, Lcom/android/tools/r8/graph/u1;->X1:Lcom/android/tools/r8/graph/M2;

    .line 18
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/graph/u1;->V1:Lcom/android/tools/r8/graph/M2;

    .line 20
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 21
    iget-object p1, p2, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->M:Lcom/android/tools/r8/graph/L2;

    .line 22
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result p0

    if-eqz p0, :cond_7

    return v1

    :cond_7
    return v2

    :cond_8
    :goto_1
    return v1

    .line 23
    :cond_9
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    .line 25
    :cond_a
    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->s6:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/eA;->f()Lcom/android/tools/r8/internal/f6;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/aA;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/aA;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/M2;

    if-eqz p0, :cond_b

    .line 26
    iget-object p0, p0, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object p0, p0, Lcom/android/tools/r8/graph/L2;->f:[B

    aget-byte p0, p0, v2

    iget-object p1, p2, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/L2;->f:[B

    aget-byte p1, p1, v2

    .line 27
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/qR;->a(BB)Z

    move-result p0

    if-eqz p0, :cond_b

    return v1

    :cond_b
    return v2

    .line 28
    :cond_c
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result p0

    if-eqz p0, :cond_d

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result p0

    if-eqz p0, :cond_d

    return v1

    :cond_d
    return v2
.end method

.method public static b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;ZLcom/android/tools/r8/internal/eC;Lcom/android/tools/r8/graph/u1;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-static {p0, p1, p3}, Lcom/android/tools/r8/internal/qR;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/eC;)V

    return-void

    :cond_1
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p4, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p4, p1}, Lcom/android/tools/r8/internal/qR;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    new-instance v3, Lcom/android/tools/r8/internal/i9;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/i9;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p3, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    iget-object v3, p4, Lcom/android/tools/r8/graph/u1;->s6:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/eA;->f()Lcom/android/tools/r8/internal/f6;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/aA;

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/aA;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/M2;

    if-eqz v3, :cond_3

    invoke-virtual {p4, v1}, Lcom/android/tools/r8/graph/u1;->f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p0

    new-instance p2, Lcom/android/tools/r8/internal/ga;

    const/16 p4, 0xb6

    invoke-direct {p2, p4, p0, v2}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    invoke-static {v3, p1, p3}, Lcom/android/tools/r8/internal/qR;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/eC;)V

    return-void

    :cond_3
    if-eqz v0, :cond_5

    invoke-static {p4, p0}, Lcom/android/tools/r8/internal/qR;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p4, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p4, Lcom/android/tools/r8/graph/u1;->d6:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p4, Lcom/android/tools/r8/graph/u1;->g6:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p4, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p4, Lcom/android/tools/r8/graph/u1;->G1:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p4, Lcom/android/tools/r8/graph/u1;->d2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    invoke-virtual {p4, v0}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p0

    new-instance p1, Lcom/android/tools/r8/internal/ga;

    const/16 p2, 0xb8

    invoke-direct {p1, p2, p0, v2}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p4, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    iget-object v0, p4, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    if-eqz p2, :cond_9

    iget-object p0, p4, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    if-nez p0, :cond_9

    new-instance p0, Lcom/android/tools/r8/internal/i9;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/i9;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p3, p0}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    :cond_9
    :goto_1
    return-void

    :cond_a
    new-instance p2, Lcom/android/tools/r8/internal/Jv0;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected type adjustment from "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p2
.end method
