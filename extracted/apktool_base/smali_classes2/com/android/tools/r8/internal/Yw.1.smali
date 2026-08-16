.class public final Lcom/android/tools/r8/internal/Yw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public a:Z

.field public b:Ljava/util/Set;

.field public final synthetic c:Lcom/android/tools/r8/internal/Zw;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Zw;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Yw;->c:Lcom/android/tools/r8/internal/Zw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/Yw;->a:Z

    sget-object p1, Lcom/android/tools/r8/internal/Zw;->f:Lcom/android/tools/r8/internal/ef0;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Yw;->b:Ljava/util/Set;

    return-void
.end method

.method public static synthetic a(Ljava/util/Set;Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    .line 78
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/xw0;)Z
    .locals 1

    .line 80
    new-instance v0, Lcom/android/tools/r8/internal/lQ0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/lQ0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 81
    :cond_0
    iget-object p0, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->u0()Lcom/android/tools/r8/internal/qZ;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/Yw;->c(Lcom/android/tools/r8/internal/qZ;)Z

    move-result p0

    return p0
.end method

.method public static c(Lcom/android/tools/r8/internal/qZ;)Z
    .locals 5

    iget-object p0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->L()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->I()Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/qZ;)Lcom/android/tools/r8/internal/oZ;
    .locals 2

    .line 139
    sget-boolean v0, Lcom/android/tools/r8/internal/qh;->m:Z

    .line 140
    new-instance v0, Lcom/android/tools/r8/internal/ph;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ph;-><init>()V

    .line 141
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/sE;->a(Lcom/android/tools/r8/internal/zw0;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/sE;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/ph;

    .line 142
    iget-object v0, p3, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 143
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v0, v0

    .line 144
    iput-wide v0, p1, Lcom/android/tools/r8/internal/ph;->d:J

    .line 145
    iget-object v0, p0, Lcom/android/tools/r8/internal/Yw;->c:Lcom/android/tools/r8/internal/Zw;

    iget-object v0, v0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/tools/r8/internal/B60;->s()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    .line 146
    :goto_0
    iput-object v0, p1, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 147
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ph;->c()Lcom/android/tools/r8/internal/qh;

    move-result-object p1

    .line 148
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Y5;->previous()Lcom/android/tools/r8/internal/zE;

    .line 149
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Y5;->f(Lcom/android/tools/r8/internal/zE;)V

    .line 150
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Y5;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    .line 151
    sget-boolean v1, Lcom/android/tools/r8/internal/Yw;->d:Z

    if-nez v1, :cond_2

    if-ne v0, p3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 152
    :cond_2
    :goto_1
    new-instance v0, Lcom/android/tools/r8/internal/oZ;

    .line 153
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 154
    iget-object p3, p3, Lcom/android/tools/r8/internal/qZ;->l:Lcom/android/tools/r8/graph/M2;

    .line 155
    invoke-direct {v0, v1, p1, p3}, Lcom/android/tools/r8/internal/oZ;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;)V

    const/4 p1, 0x0

    .line 156
    invoke-interface {p2, v0, p1}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/ve;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    sget-boolean v2, Lcom/android/tools/r8/internal/Yw;->d:Z

    if-nez v2, :cond_1

    iget-boolean v3, v0, Lcom/android/tools/r8/internal/Yw;->a:Z

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    :goto_0
    if-nez v2, :cond_3

    .line 2
    iget-object v2, v0, Lcom/android/tools/r8/internal/Yw;->b:Ljava/util/Set;

    sget-object v3, Lcom/android/tools/r8/internal/Zw;->f:Lcom/android/tools/r8/internal/ef0;

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 3
    :cond_3
    :goto_1
    iget-object v2, v0, Lcom/android/tools/r8/internal/Yw;->c:Lcom/android/tools/r8/internal/Zw;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/tools/r8/internal/we;->a:Lcom/android/tools/r8/internal/ve;

    .line 4
    new-instance v3, Lcom/android/tools/r8/internal/U6;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/android/tools/r8/internal/U6;-><init>(Z)V

    .line 5
    :goto_2
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/U6;->a()Z

    move-result v5

    if-eqz v5, :cond_1a

    const/4 v5, 0x0

    .line 6
    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/U6;->c(Z)V

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v6

    .line 8
    :cond_4
    iget-object v7, v6, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    .line 9
    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 10
    iget-object v7, v6, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/W5;

    iput-object v7, v6, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    .line 11
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v7

    .line 12
    :goto_3
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Y5;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 13
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Y5;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v8

    .line 14
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->a2()Z

    move-result v9

    if-eqz v9, :cond_12

    .line 15
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->u0()Lcom/android/tools/r8/internal/qZ;

    move-result-object v8

    .line 16
    invoke-virtual {v0, v8}, Lcom/android/tools/r8/internal/Yw;->a(Lcom/android/tools/r8/internal/qZ;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto/16 :goto_a

    .line 17
    :cond_5
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->f1()Z

    move-result v2

    if-nez v2, :cond_6

    .line 18
    iget-object v2, v7, Lcom/android/tools/r8/internal/Y5;->e:Lcom/android/tools/r8/internal/CE;

    .line 19
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Y5;->b()Lcom/android/tools/r8/internal/zE;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/tools/r8/internal/CE;->c(Lcom/android/tools/r8/internal/zE;)V

    goto/16 :goto_9

    .line 20
    :cond_6
    invoke-virtual {v0, v8}, Lcom/android/tools/r8/internal/Yw;->b(Lcom/android/tools/r8/internal/qZ;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 21
    invoke-virtual {v0, v1, v7, v8}, Lcom/android/tools/r8/internal/Yw;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/qZ;)Lcom/android/tools/r8/internal/oZ;

    move-result-object v2

    .line 22
    iget-object v9, v8, Lcom/android/tools/r8/internal/qZ;->l:Lcom/android/tools/r8/graph/M2;

    .line 23
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/M2;->u0()I

    move-result v9

    .line 24
    iget-object v10, v8, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/16 v11, 0x8

    const/4 v12, 0x2

    if-ne v9, v4, :cond_9

    add-int/lit8 v9, v10, 0x1

    .line 25
    div-int/2addr v9, v12

    new-array v9, v9, [S

    move v12, v5

    :goto_4
    if-ge v12, v10, :cond_8

    .line 26
    invoke-virtual {v8, v12}, Lcom/android/tools/r8/internal/zE;->a(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v13

    .line 27
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result v13

    and-int/lit16 v13, v13, 0xff

    int-to-short v13, v13

    add-int/lit8 v14, v12, 0x1

    if-ge v14, v10, :cond_7

    .line 28
    invoke-virtual {v8, v14}, Lcom/android/tools/r8/internal/zE;->a(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v14

    .line 29
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result v14

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v11

    int-to-short v14, v14

    or-int/2addr v13, v14

    int-to-short v13, v13

    .line 30
    :cond_7
    div-int/lit8 v14, v12, 0x2

    aput-short v13, v9, v14

    add-int/lit8 v12, v12, 0x2

    goto :goto_4

    :cond_8
    move-object/from16 v18, v9

    goto :goto_8

    .line 31
    :cond_9
    sget-boolean v13, Lcom/android/tools/r8/internal/Yw;->d:Z

    if-nez v13, :cond_b

    if-eq v9, v12, :cond_b

    const/4 v12, 0x4

    if-eq v9, v12, :cond_b

    if-ne v9, v11, :cond_a

    goto :goto_5

    :cond_a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 32
    :cond_b
    :goto_5
    div-int/lit8 v9, v9, 0x2

    mul-int v11, v10, v9

    .line 33
    new-array v11, v11, [S

    move v12, v5

    :goto_6
    if-ge v12, v10, :cond_d

    .line 34
    invoke-virtual {v8, v12}, Lcom/android/tools/r8/internal/zE;->a(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v13

    move v14, v5

    :goto_7
    if-ge v14, v9, :cond_c

    mul-int v15, v12, v9

    add-int/2addr v15, v14

    .line 35
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/qh;->w2()J

    move-result-wide v16

    mul-int/lit8 v18, v14, 0x10

    shr-long v16, v16, v18

    const-wide/32 v18, 0xffff

    and-long v4, v16, v18

    long-to-int v4, v4

    int-to-short v4, v4

    aput-short v4, v11, v15

    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto :goto_7

    :cond_c
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto :goto_6

    :cond_d
    move-object/from16 v18, v11

    .line 36
    :goto_8
    new-instance v4, Lcom/android/tools/r8/internal/rZ;

    .line 37
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v14

    .line 38
    iget-object v5, v8, Lcom/android/tools/r8/internal/qZ;->l:Lcom/android/tools/r8/graph/M2;

    .line 39
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/M2;->u0()I

    move-result v15

    .line 40
    iget-object v5, v8, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-long v9, v5

    move-object v13, v4

    move-wide/from16 v16, v9

    .line 41
    invoke-direct/range {v13 .. v18}, Lcom/android/tools/r8/internal/rZ;-><init>(Lcom/android/tools/r8/internal/xw0;IJ[S)V

    .line 42
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 43
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 44
    iget-object v2, v0, Lcom/android/tools/r8/internal/Yw;->c:Lcom/android/tools/r8/internal/Zw;

    iget-object v2, v2, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    const/4 v5, 0x0

    .line 45
    invoke-interface {v7, v1, v6, v2, v5}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/nJ;Ljava/util/function/UnaryOperator;)Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    .line 46
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/Y5;->f(Lcom/android/tools/r8/internal/zE;)V

    goto :goto_9

    .line 47
    :cond_e
    invoke-virtual {v7, v4}, Lcom/android/tools/r8/internal/Y5;->f(Lcom/android/tools/r8/internal/zE;)V

    goto :goto_9

    .line 48
    :cond_f
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->C()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 49
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->Z()Lcom/android/tools/r8/internal/zE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->a2()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 50
    invoke-static {v8}, Lcom/android/tools/r8/internal/Yw;->c(Lcom/android/tools/r8/internal/qZ;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 51
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->Z()Lcom/android/tools/r8/internal/zE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->u0()Lcom/android/tools/r8/internal/qZ;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Yw;->a(Lcom/android/tools/r8/internal/qZ;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 52
    invoke-virtual {v0, v1, v6, v7, v8}, Lcom/android/tools/r8/internal/Yw;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/qZ;)V

    goto :goto_9

    :cond_10
    const/4 v2, 0x1

    .line 53
    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/U6;->c(Z)V

    goto :goto_9

    .line 54
    :cond_11
    invoke-virtual {v0, v1, v6, v7, v8}, Lcom/android/tools/r8/internal/Yw;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/qZ;)V

    .line 55
    :goto_9
    sget-object v2, Lcom/android/tools/r8/internal/we;->b:Lcom/android/tools/r8/internal/ve;

    :cond_12
    :goto_a
    const/4 v4, 0x1

    const/4 v5, 0x0

    goto/16 :goto_3

    .line 56
    :cond_13
    iget-object v4, v0, Lcom/android/tools/r8/internal/Yw;->b:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_18

    const/4 v4, 0x0

    .line 57
    new-array v4, v4, [Lcom/android/tools/r8/internal/zE;

    invoke-static {v4}, Lcom/android/tools/r8/internal/Al0;->b([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->p()Lcom/android/tools/r8/internal/hB;

    move-result-object v5

    .line 59
    :cond_14
    :goto_b
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 60
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/zE;

    .line 61
    iget-object v7, v0, Lcom/android/tools/r8/internal/Yw;->b:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 62
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->a2()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 63
    iget-object v6, v6, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 64
    new-instance v7, Lcom/android/tools/r8/internal/H31;

    invoke-direct {v7, v4}, Lcom/android/tools/r8/internal/H31;-><init>(Ljava/util/Set;)V

    .line 65
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 66
    :cond_15
    invoke-interface {v5}, Lcom/android/tools/r8/internal/EE;->remove()V

    const/4 v6, 0x1

    .line 67
    iput-boolean v6, v0, Lcom/android/tools/r8/internal/Yw;->a:Z

    goto :goto_b

    .line 68
    :cond_16
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_18

    .line 69
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->p()Lcom/android/tools/r8/internal/hB;

    move-result-object v5

    .line 70
    :cond_17
    :goto_c
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 71
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/zE;

    .line 72
    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 73
    invoke-interface {v5}, Lcom/android/tools/r8/internal/EE;->remove()V

    const/4 v6, 0x1

    .line 74
    iput-boolean v6, v0, Lcom/android/tools/r8/internal/Yw;->a:Z

    goto :goto_c

    :cond_18
    const/4 v6, 0x1

    .line 75
    sget-object v4, Lcom/android/tools/r8/internal/Zw;->f:Lcom/android/tools/r8/internal/ef0;

    iput-object v4, v0, Lcom/android/tools/r8/internal/Yw;->b:Ljava/util/Set;

    .line 76
    iget-boolean v4, v0, Lcom/android/tools/r8/internal/Yw;->a:Z

    if-eqz v4, :cond_19

    .line 77
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->x()V

    :cond_19
    move v4, v6

    goto/16 :goto_2

    :cond_1a
    return-object v2
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/oZ;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Xw;)Lcom/android/tools/r8/internal/xw0;
    .locals 9

    .line 179
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/xw0;->w()Z

    move-result v0

    if-nez v0, :cond_14

    .line 180
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/xw0;->L()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/xw0;->I()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/J21;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/J21;-><init>()V

    .line 183
    invoke-virtual {p4, v0}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    invoke-static {p4}, Lcom/android/tools/r8/internal/Yw;->a(Lcom/android/tools/r8/internal/xw0;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 185
    iget-object v0, p2, Lcom/android/tools/r8/internal/Y5;->d:Lcom/android/tools/r8/internal/W5;

    .line 186
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 187
    :cond_0
    invoke-virtual {p5, p4}, Lcom/android/tools/r8/internal/Xw;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 188
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p1

    .line 189
    iget-object p2, p0, Lcom/android/tools/r8/internal/Yw;->b:Ljava/util/Set;

    sget-object p3, Lcom/android/tools/r8/internal/Zw;->f:Lcom/android/tools/r8/internal/ef0;

    if-ne p2, p3, :cond_1

    .line 190
    new-array p2, v1, [Lcom/android/tools/r8/internal/zE;

    invoke-static {p2}, Lcom/android/tools/r8/internal/Al0;->b([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/Yw;->b:Ljava/util/Set;

    .line 191
    :cond_1
    iget-object p2, p0, Lcom/android/tools/r8/internal/Yw;->b:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 192
    :cond_2
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 193
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object p5

    sget-boolean v0, Lcom/android/tools/r8/internal/qh;->m:Z

    .line 194
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {p5}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 195
    invoke-static {p1, p5}, Lcom/android/tools/r8/internal/qh;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/qh;)Lcom/android/tools/r8/internal/qh;

    move-result-object p1

    goto/16 :goto_4

    .line 196
    :cond_3
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/xw0;->L()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 197
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->K()Lcom/android/tools/r8/internal/vh;

    move-result-object v0

    sget-boolean v2, Lcom/android/tools/r8/internal/vh;->m:Z

    .line 198
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 199
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/vh;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/vh;)Lcom/android/tools/r8/internal/vh;

    move-result-object p1

    .line 200
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/android/tools/r8/internal/Xw;->b(Lcom/android/tools/r8/internal/xw0;)V

    goto/16 :goto_4

    .line 201
    :cond_4
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/xw0;->I()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 202
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->F()Lcom/android/tools/r8/internal/jh;

    move-result-object v0

    sget-boolean v2, Lcom/android/tools/r8/internal/jh;->n:Z

    .line 203
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 204
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/jh;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/jh;)Lcom/android/tools/r8/internal/jh;

    move-result-object p1

    .line 205
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/android/tools/r8/internal/Xw;->b(Lcom/android/tools/r8/internal/xw0;)V

    goto/16 :goto_4

    .line 206
    :cond_5
    new-instance v0, Lcom/android/tools/r8/internal/J21;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/J21;-><init>()V

    invoke-virtual {p4, v0}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 207
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->K0()Lcom/android/tools/r8/internal/Mo0;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/Mo0;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Mo0;)Lcom/android/tools/r8/internal/Mo0;

    move-result-object p1

    .line 208
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/android/tools/r8/internal/Xw;->b(Lcom/android/tools/r8/internal/xw0;)V

    goto/16 :goto_4

    .line 209
    :cond_6
    invoke-static {p4}, Lcom/android/tools/r8/internal/Yw;->a(Lcom/android/tools/r8/internal/xw0;)Z

    move-result p5

    if-eqz p5, :cond_12

    .line 210
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/tools/r8/internal/zE;->u0()Lcom/android/tools/r8/internal/qZ;

    move-result-object p5

    .line 211
    sget-boolean v0, Lcom/android/tools/r8/internal/Yw;->d:Z

    if-nez v0, :cond_8

    invoke-static {p5}, Lcom/android/tools/r8/internal/Yw;->c(Lcom/android/tools/r8/internal/qZ;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 212
    :cond_8
    :goto_0
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {p5}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 213
    new-instance v2, Ljava/util/ArrayList;

    .line 214
    iget-object v3, p5, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 215
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 216
    iget-object v3, p5, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 217
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_d

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/tools/r8/internal/xw0;

    .line 218
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 219
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v6

    sget-boolean v7, Lcom/android/tools/r8/internal/qh;->m:Z

    .line 220
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    .line 221
    invoke-static {v7, v6}, Lcom/android/tools/r8/internal/qh;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/qh;)Lcom/android/tools/r8/internal/qh;

    move-result-object v6

    .line 222
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    .line 223
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 224
    :cond_9
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->L()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 225
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->K()Lcom/android/tools/r8/internal/vh;

    move-result-object v6

    sget-boolean v7, Lcom/android/tools/r8/internal/vh;->m:Z

    .line 226
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    .line 227
    invoke-static {v7, v6}, Lcom/android/tools/r8/internal/vh;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/vh;)Lcom/android/tools/r8/internal/vh;

    move-result-object v6

    .line 228
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    .line 229
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 230
    :cond_a
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->I()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 231
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->F()Lcom/android/tools/r8/internal/jh;

    move-result-object v6

    sget-boolean v7, Lcom/android/tools/r8/internal/jh;->n:Z

    .line 232
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    .line 233
    invoke-static {v7, v6}, Lcom/android/tools/r8/internal/jh;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/jh;)Lcom/android/tools/r8/internal/jh;

    move-result-object v6

    .line 234
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    .line 235
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 236
    :cond_b
    sget-boolean v6, Lcom/android/tools/r8/internal/Yw;->d:Z

    if-eqz v6, :cond_c

    goto/16 :goto_1

    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 237
    :cond_d
    new-instance p1, Lcom/android/tools/r8/internal/qZ;

    .line 238
    iget-object p5, p5, Lcom/android/tools/r8/internal/qZ;->l:Lcom/android/tools/r8/graph/M2;

    .line 239
    invoke-direct {p1, p5, v0, v2}, Lcom/android/tools/r8/internal/qZ;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    .line 240
    sget-boolean p5, Lcom/android/tools/r8/internal/Yw;->d:Z

    if-nez p5, :cond_f

    .line 241
    iget-object p5, p2, Lcom/android/tools/r8/internal/Y5;->d:Lcom/android/tools/r8/internal/W5;

    .line 242
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result p5

    if-nez p5, :cond_e

    goto :goto_2

    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 243
    :cond_f
    :goto_2
    iget-object p5, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 244
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_10

    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    .line 245
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/android/tools/r8/internal/Y5;->f(Lcom/android/tools/r8/internal/zE;)V

    .line 246
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    .line 247
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    goto :goto_3

    .line 248
    :cond_10
    :goto_4
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 249
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Y5;->f(Lcom/android/tools/r8/internal/zE;)V

    .line 250
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p2

    .line 251
    iget-object p3, p0, Lcom/android/tools/r8/internal/Yw;->b:Ljava/util/Set;

    sget-object p4, Lcom/android/tools/r8/internal/Zw;->f:Lcom/android/tools/r8/internal/ef0;

    if-ne p3, p4, :cond_11

    .line 252
    new-array p3, v1, [Lcom/android/tools/r8/internal/zE;

    invoke-static {p3}, Lcom/android/tools/r8/internal/Al0;->b([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p3

    iput-object p3, p0, Lcom/android/tools/r8/internal/Yw;->b:Ljava/util/Set;

    .line 253
    :cond_11
    iget-object p3, p0, Lcom/android/tools/r8/internal/Yw;->b:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    return-object p1

    .line 255
    :cond_12
    sget-boolean p1, Lcom/android/tools/r8/internal/Yw;->d:Z

    if-eqz p1, :cond_13

    goto :goto_5

    :cond_13
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_14
    :goto_5
    return-object p4
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/oZ;ILcom/android/tools/r8/internal/xw0;)V
    .locals 2

    .line 256
    sget-boolean v0, Lcom/android/tools/r8/internal/qh;->m:Z

    .line 257
    new-instance v0, Lcom/android/tools/r8/internal/ph;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ph;-><init>()V

    .line 258
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/sE;->a(Lcom/android/tools/r8/internal/zw0;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/sE;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/ph;

    int-to-long v0, p4

    .line 259
    iput-wide v0, p1, Lcom/android/tools/r8/internal/ph;->d:J

    .line 260
    iget-object p4, p0, Lcom/android/tools/r8/internal/Yw;->c:Lcom/android/tools/r8/internal/Zw;

    iget-object p4, p4, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    iget-boolean p4, p4, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-eqz p4, :cond_0

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p4

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/tools/r8/internal/B60;->s()Lcom/android/tools/r8/internal/B60;

    move-result-object p4

    .line 261
    :goto_0
    iput-object p4, p1, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 262
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ph;->c()Lcom/android/tools/r8/internal/qh;

    move-result-object p1

    .line 263
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Y5;->f(Lcom/android/tools/r8/internal/zE;)V

    .line 264
    iget-object p4, p3, Lcom/android/tools/r8/internal/oZ;->k:Lcom/android/tools/r8/graph/M2;

    .line 265
    iget-object v0, p0, Lcom/android/tools/r8/internal/Yw;->c:Lcom/android/tools/r8/internal/Zw;

    iget-object v0, v0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    const/4 v1, 0x1

    .line 266
    invoke-virtual {p4, v1, v0}, Lcom/android/tools/r8/graph/M2;->a(ILcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p4

    .line 267
    iget-object p4, p4, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object p4, p4, Lcom/android/tools/r8/graph/L2;->f:[B

    const/4 v0, 0x0

    aget-byte p4, p4, v0

    int-to-char p4, p4

    invoke-static {p4}, Lcom/android/tools/r8/internal/YV;->a(C)Lcom/android/tools/r8/internal/YV;

    move-result-object p4

    .line 268
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 269
    invoke-static {p4, v0, p1, p5}, Lcom/android/tools/r8/internal/T3;->a(Lcom/android/tools/r8/internal/YV;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/T3;

    move-result-object p1

    .line 270
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 271
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Y5;->f(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/qZ;)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    .line 157
    invoke-virtual {v6, v7, v0, v1}, Lcom/android/tools/r8/internal/Yw;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/qZ;)Lcom/android/tools/r8/internal/oZ;

    move-result-object v9

    .line 158
    new-instance v10, Lcom/android/tools/r8/internal/Xw;

    iget-object v2, v6, Lcom/android/tools/r8/internal/Yw;->c:Lcom/android/tools/r8/internal/Zw;

    iget-object v2, v2, Lcom/android/tools/r8/internal/Zw;->e:Lcom/android/tools/r8/internal/nJ$o;

    invoke-direct {v10, v2, v1}, Lcom/android/tools/r8/internal/Xw;-><init>(Lcom/android/tools/r8/internal/nJ$o;Lcom/android/tools/r8/internal/qZ;)V

    .line 159
    iget-object v11, v1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 160
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v1, 0x0

    move-object v13, v0

    move v14, v1

    :goto_0
    if-ge v1, v12, :cond_1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v15, v1, 0x1

    move-object v4, v0

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    .line 161
    iget-object v0, v13, Lcom/android/tools/r8/internal/Y5;->d:Lcom/android/tools/r8/internal/W5;

    .line 162
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, v6, Lcom/android/tools/r8/internal/Yw;->c:Lcom/android/tools/r8/internal/Zw;

    iget-object v0, v0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    const/4 v5, 0x0

    .line 164
    invoke-interface {v13, v7, v8, v0, v5}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/nJ;Ljava/util/function/UnaryOperator;)Lcom/android/tools/r8/internal/W5;

    move-result-object v13

    .line 165
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v3

    move-object/from16 p4, v11

    move-object v11, v3

    move-object v3, v9

    move/from16 v16, v12

    move-object v12, v5

    move-object v5, v10

    .line 166
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/Yw;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/oZ;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Xw;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    .line 167
    invoke-virtual {v8, v13}, Lcom/android/tools/r8/internal/Z5;->a(Lcom/android/tools/r8/internal/W5;)V

    .line 168
    iget-object v0, v6, Lcom/android/tools/r8/internal/Yw;->c:Lcom/android/tools/r8/internal/Zw;

    iget-object v0, v0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    .line 169
    invoke-interface {v11, v7, v8, v0, v12}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/nJ;Ljava/util/function/UnaryOperator;)Lcom/android/tools/r8/internal/W5;

    move-result-object v11

    .line 170
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v12

    move-object/from16 v0, p0

    move-object v2, v12

    move v4, v14

    .line 171
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/Yw;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/oZ;ILcom/android/tools/r8/internal/xw0;)V

    .line 172
    invoke-virtual {v8, v11}, Lcom/android/tools/r8/internal/Z5;->a(Lcom/android/tools/r8/internal/W5;)V

    const/4 v0, 0x1

    .line 173
    iput-boolean v0, v6, Lcom/android/tools/r8/internal/Yw;->a:Z

    move-object v13, v12

    goto :goto_1

    :cond_0
    move-object/from16 p4, v11

    move/from16 v16, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v3, v9

    move-object v5, v10

    .line 174
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/Yw;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/oZ;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Xw;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    move v4, v14

    .line 175
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/Yw;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/oZ;ILcom/android/tools/r8/internal/xw0;)V

    :goto_1
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v11, p4

    move v1, v15

    move/from16 v12, v16

    goto :goto_0

    .line 176
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/internal/Yw;->d:Z

    if-nez v0, :cond_5

    .line 177
    sget-boolean v0, Lcom/android/tools/r8/internal/Xw;->d:Z

    if-nez v0, :cond_3

    iget-object v1, v10, Lcom/android/tools/r8/internal/Xw;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_2
    if-nez v0, :cond_5

    .line 178
    iget-object v0, v10, Lcom/android/tools/r8/internal/Xw;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->size()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    :goto_3
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/qZ;)Z
    .locals 9

    .line 82
    iget-object v0, p0, Lcom/android/tools/r8/internal/Yw;->c:Lcom/android/tools/r8/internal/Zw;

    iget-object v0, v0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 83
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 84
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 85
    iget-object v2, p0, Lcom/android/tools/r8/internal/Yw;->c:Lcom/android/tools/r8/internal/Zw;

    iget-object v2, v2, Lcom/android/tools/r8/internal/Zw;->e:Lcom/android/tools/r8/internal/nJ$o;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    return v1

    .line 86
    :cond_1
    iget-object v3, p1, Lcom/android/tools/r8/internal/qZ;->l:Lcom/android/tools/r8/graph/M2;

    .line 87
    iget-object v4, p0, Lcom/android/tools/r8/internal/Yw;->c:Lcom/android/tools/r8/internal/Zw;

    iget-object v4, v4, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1;->S1:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v4

    const/16 v5, 0xc8

    if-eqz v4, :cond_4

    .line 88
    iget-object v3, p0, Lcom/android/tools/r8/internal/Yw;->c:Lcom/android/tools/r8/internal/Zw;

    iget-object v3, v3, Lcom/android/tools/r8/internal/Zw;->e:Lcom/android/tools/r8/internal/nJ$o;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-le v0, v5, :cond_2

    return v1

    .line 89
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Yw;->b(Lcom/android/tools/r8/internal/qZ;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/tools/r8/internal/Yw;->c:Lcom/android/tools/r8/internal/Zw;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Zw;->e:Lcom/android/tools/r8/internal/nJ$o;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x5

    if-le v0, p1, :cond_3

    return v1

    :cond_3
    return v2

    .line 90
    :cond_4
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->O0()Z

    move-result v4

    if-nez v4, :cond_20

    .line 91
    iget-object v4, p0, Lcom/android/tools/r8/internal/Yw;->c:Lcom/android/tools/r8/internal/Zw;

    iget-object v4, v4, Lcom/android/tools/r8/internal/Zw;->e:Lcom/android/tools/r8/internal/nJ$o;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-le v0, v5, :cond_5

    return v1

    .line 92
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/Yw;->c:Lcom/android/tools/r8/internal/Zw;

    iget-object v0, v0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->h2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v3, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 93
    iget-object p1, p0, Lcom/android/tools/r8/internal/Yw;->c:Lcom/android/tools/r8/internal/Zw;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Zw;->e:Lcom/android/tools/r8/internal/nJ$o;

    .line 94
    sget-boolean v0, Lcom/android/tools/r8/internal/nJ$o;->c:Z

    if-nez v0, :cond_7

    .line 95
    iget-object v0, p1, Lcom/android/tools/r8/internal/nJ$o;->b:Lcom/android/tools/r8/internal/nJ;

    .line 96
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 97
    :cond_7
    :goto_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ$o;->b:Lcom/android/tools/r8/internal/nJ;

    .line 98
    sget-object v0, Lcom/android/tools/r8/internal/C2;->u:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/nJ;->c(Lcom/android/tools/r8/internal/C2;)Z

    move-result p1

    return p1

    .line 99
    :cond_8
    iget-object v0, p0, Lcom/android/tools/r8/internal/Yw;->c:Lcom/android/tools/r8/internal/Zw;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Zw;->e:Lcom/android/tools/r8/internal/nJ$o;

    .line 100
    sget-boolean v4, Lcom/android/tools/r8/internal/nJ$o;->c:Z

    if-nez v4, :cond_a

    .line 101
    iget-object v5, v0, Lcom/android/tools/r8/internal/nJ$o;->b:Lcom/android/tools/r8/internal/nJ;

    .line 102
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_1

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 103
    :cond_a
    :goto_1
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ$o;->b:Lcom/android/tools/r8/internal/nJ;

    .line 104
    sget-object v5, Lcom/android/tools/r8/internal/C2;->z:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/nJ;->c(Lcom/android/tools/r8/internal/C2;)Z

    move-result v0

    if-nez v0, :cond_b

    return v1

    .line 105
    :cond_b
    iget-object v0, p0, Lcom/android/tools/r8/internal/Yw;->c:Lcom/android/tools/r8/internal/Zw;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Zw;->e:Lcom/android/tools/r8/internal/nJ$o;

    if-nez v4, :cond_d

    .line 106
    iget-object v5, v0, Lcom/android/tools/r8/internal/nJ$o;->b:Lcom/android/tools/r8/internal/nJ;

    .line 107
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_2

    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 108
    :cond_d
    :goto_2
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ$o;->b:Lcom/android/tools/r8/internal/nJ;

    .line 109
    sget-object v5, Lcom/android/tools/r8/internal/C2;->w:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/nJ;->c(Lcom/android/tools/r8/internal/C2;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 110
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->y0()I

    move-result v0

    if-le v0, v2, :cond_e

    return v1

    .line 111
    :cond_e
    iget-object v0, p0, Lcom/android/tools/r8/internal/Yw;->c:Lcom/android/tools/r8/internal/Zw;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Zw;->e:Lcom/android/tools/r8/internal/nJ$o;

    if-nez v4, :cond_10

    .line 112
    iget-object v4, v0, Lcom/android/tools/r8/internal/nJ$o;->b:Lcom/android/tools/r8/internal/nJ;

    .line 113
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_3

    :cond_f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 114
    :cond_10
    :goto_3
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ$o;->b:Lcom/android/tools/r8/internal/nJ;

    .line 115
    sget-object v4, Lcom/android/tools/r8/internal/C2;->J:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/nJ;->b(Lcom/android/tools/r8/internal/C2;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 116
    iget-object v0, p0, Lcom/android/tools/r8/internal/Yw;->c:Lcom/android/tools/r8/internal/Zw;

    iget-object v0, v0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->l2:Lcom/android/tools/r8/graph/M2;

    .line 117
    invoke-virtual {v3, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 118
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->O0()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 119
    iget-object v0, p0, Lcom/android/tools/r8/internal/Yw;->c:Lcom/android/tools/r8/internal/Zw;

    iget-object v0, v0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    .line 120
    invoke-virtual {v3, v2, v0}, Lcom/android/tools/r8/graph/M2;->a(ILcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 121
    iget-object p1, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 122
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v1

    :cond_11
    if-ge v4, v3, :cond_1f

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/tools/r8/internal/xw0;

    .line 123
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v5

    .line 124
    iget-object v6, p0, Lcom/android/tools/r8/internal/Yw;->c:Lcom/android/tools/r8/internal/Zw;

    iget-object v6, v6, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v6, v6, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v6

    if-eqz v6, :cond_12

    goto/16 :goto_7

    .line 125
    :cond_12
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    instance-of v6, v5, Lcom/android/tools/r8/internal/Zd0;

    if-eqz v6, :cond_13

    .line 127
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v7

    if-nez v7, :cond_13

    goto :goto_7

    .line 128
    :cond_13
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v7

    if-eqz v7, :cond_16

    if-eqz v6, :cond_14

    goto :goto_7

    .line 129
    :cond_14
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/pu0;->a()Lcom/android/tools/r8/internal/W3;

    move-result-object v5

    if-eqz v5, :cond_1d

    .line 130
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W3;->H()I

    move-result v6

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->y0()I

    move-result v7

    if-eq v6, v7, :cond_15

    goto :goto_8

    .line 131
    :cond_15
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W3;->E()Lcom/android/tools/r8/internal/pu0;

    move-result-object v5

    .line 132
    iget-object v6, p0, Lcom/android/tools/r8/internal/Yw;->c:Lcom/android/tools/r8/internal/Zw;

    iget-object v6, v6, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    goto :goto_4

    :cond_16
    move-object v6, v0

    .line 133
    :goto_4
    sget-boolean v7, Lcom/android/tools/r8/internal/Yw;->d:Z

    if-nez v7, :cond_18

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result v8

    if-nez v8, :cond_17

    goto :goto_5

    :cond_17
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_18
    :goto_5
    if-nez v7, :cond_1a

    .line 134
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v7

    if-nez v7, :cond_19

    goto :goto_6

    :cond_19
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 135
    :cond_1a
    :goto_6
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v7

    if-nez v7, :cond_1b

    goto :goto_8

    .line 136
    :cond_1b
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result v7

    if-eqz v7, :cond_1c

    :goto_7
    move v5, v2

    goto :goto_9

    .line 137
    :cond_1c
    iget-object v7, p0, Lcom/android/tools/r8/internal/Yw;->c:Lcom/android/tools/r8/internal/Zw;

    iget-object v7, v7, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v7, v6}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v7

    if-nez v7, :cond_1e

    :cond_1d
    :goto_8
    move v5, v1

    goto :goto_9

    .line 138
    :cond_1e
    invoke-virtual {v5, v6}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v5

    :goto_9
    if-nez v5, :cond_11

    return v1

    :cond_1f
    return v2

    :cond_20
    return v1
.end method

.method public final b(Lcom/android/tools/r8/internal/qZ;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Yw;->c:Lcom/android/tools/r8/internal/Zw;

    iget-object v0, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/tools/r8/internal/Yw;->c:Lcom/android/tools/r8/internal/Zw;

    iget-object v2, v2, Lcom/android/tools/r8/internal/Zw;->e:Lcom/android/tools/r8/internal/nJ$o;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x2

    if-lt v0, v2, :cond_3

    iget-object v2, p0, Lcom/android/tools/r8/internal/Yw;->c:Lcom/android/tools/r8/internal/Zw;

    iget-object v2, v2, Lcom/android/tools/r8/internal/Zw;->e:Lcom/android/tools/r8/internal/nJ$o;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x2000

    if-le v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/qZ;->l:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->O0()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object p1, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/tools/r8/internal/G31;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/G31;-><init>()V

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v1
.end method
