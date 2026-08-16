.class public final Lcom/android/tools/r8/internal/hD;
.super Lcom/android/tools/r8/internal/fD;
.source "SourceFile"


# static fields
.field public static final synthetic l:Z = true


# instance fields
.field public final f:Lcom/android/tools/r8/graph/l1;

.field public g:I

.field public final h:Ljava/util/LinkedHashMap;

.field public final i:Ljava/util/LinkedHashMap;

.field public final j:Lcom/android/tools/r8/graph/A2;

.field public final k:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/l1;ILjava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Lcom/android/tools/r8/graph/A2;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/fD;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/hD;->f:Lcom/android/tools/r8/graph/l1;

    iput p2, p0, Lcom/android/tools/r8/internal/hD;->g:I

    iput-object p3, p0, Lcom/android/tools/r8/internal/hD;->h:Ljava/util/LinkedHashMap;

    iput-object p4, p0, Lcom/android/tools/r8/internal/hD;->i:Ljava/util/LinkedHashMap;

    iput-object p5, p0, Lcom/android/tools/r8/internal/hD;->j:Lcom/android/tools/r8/graph/A2;

    iput-object p6, p0, Lcom/android/tools/r8/internal/hD;->k:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/PS;Lcom/android/tools/r8/internal/i60;Ljava/util/ArrayList;ILjava/util/LinkedHashMap;Lcom/android/tools/r8/internal/xA;)I
    .locals 13

    move-object v8, p2

    .line 61
    invoke-virtual/range {p6 .. p6}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move/from16 v5, p5

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 62
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/tools/r8/graph/l1;

    .line 63
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/tools/r8/internal/SD;

    .line 64
    new-instance v12, Lcom/android/tools/r8/internal/C7;

    invoke-direct {v12}, Lcom/android/tools/r8/internal/C7;-><init>()V

    .line 65
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    .line 66
    new-instance v7, Lcom/android/tools/r8/internal/Ac1;

    invoke-direct {v7, v12}, Lcom/android/tools/r8/internal/Ac1;-><init>(Lcom/android/tools/r8/internal/C7;)V

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p3

    move-object v3, v11

    move-object/from16 v4, p4

    .line 67
    invoke-static/range {v0 .. v7}, Lcom/android/tools/r8/internal/hD;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/PS;Lcom/android/tools/r8/internal/i60;Lcom/android/tools/r8/internal/SD;Ljava/util/ArrayList;ILcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;)I

    move-result v0

    .line 68
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    move-object/from16 v2, p7

    .line 69
    iget-object v3, v2, Lcom/android/tools/r8/internal/lZ;->f:Lcom/android/tools/r8/internal/o6;

    .line 70
    invoke-interface {v3, v10, v10}, Lcom/android/tools/r8/internal/m6;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/l1;

    .line 71
    invoke-interface {v11}, Lcom/android/tools/r8/internal/SD;->s()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    invoke-interface {v11}, Lcom/android/tools/r8/internal/SD;->q()Lcom/android/tools/r8/internal/RD;

    move-result-object v4

    .line 73
    iget v4, v4, Lcom/android/tools/r8/internal/RD;->a:I

    if-lez v4, :cond_1

    move-object v6, p1

    .line 74
    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/H0;->a(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    .line 75
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-virtual {v5, v4, v7}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 77
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v7, p0

    .line 78
    invoke-static {v4, v5, p0}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v4

    .line 79
    new-instance v5, Lcom/android/tools/r8/internal/xw0;

    const/4 v10, 0x0

    invoke-direct {v5, v0, v4, v10}, Lcom/android/tools/r8/internal/xw0;-><init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)V

    .line 80
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->t()I

    move-result v4

    move-object/from16 v10, p3

    .line 81
    iget-object v11, v10, Lcom/android/tools/r8/internal/i60;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v11, v4, v5}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    .line 82
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    .line 83
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 84
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/16 v11, 0xe0

    .line 85
    invoke-virtual {p2, v11, v4, v1}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    add-int/lit8 v0, v0, 0x1

    move-object v1, v5

    goto :goto_2

    :cond_0
    move-object v7, p0

    :goto_1
    move-object/from16 v10, p3

    goto :goto_2

    :cond_1
    move-object v7, p0

    move-object v6, p1

    goto :goto_1

    .line 86
    :goto_2
    invoke-static/range {p4 .. p4}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    .line 87
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v4, v1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    const/16 v4, 0xb5

    .line 88
    invoke-virtual {p2, v4, v3, v1}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    add-int/lit8 v5, v0, 0x1

    goto/16 :goto_0

    :cond_2
    return v5
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/PS;Lcom/android/tools/r8/internal/i60;Lcom/android/tools/r8/internal/SD;Ljava/util/ArrayList;ILcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;)I
    .locals 2

    .line 89
    invoke-interface {p3}, Lcom/android/tools/r8/internal/SD;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-interface {p3}, Lcom/android/tools/r8/internal/SD;->q()Lcom/android/tools/r8/internal/RD;

    move-result-object p0

    .line 91
    iget p0, p0, Lcom/android/tools/r8/internal/RD;->a:I

    .line 92
    invoke-virtual {p4, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/xw0;

    goto/16 :goto_7

    .line 93
    :cond_0
    sget-boolean p4, Lcom/android/tools/r8/internal/hD;->l:Z

    if-nez p4, :cond_2

    invoke-interface {p3}, Lcom/android/tools/r8/internal/SD;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    :goto_0
    if-nez p4, :cond_4

    .line 94
    invoke-interface {p3}, Lcom/android/tools/r8/internal/SD;->w()Lcom/android/tools/r8/internal/Pm0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->e0()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 95
    :cond_4
    :goto_1
    invoke-interface {p3}, Lcom/android/tools/r8/internal/SD;->w()Lcom/android/tools/r8/internal/Pm0;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/F1;->L()Lcom/android/tools/r8/internal/Bm0;

    move-result-object p3

    .line 96
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    instance-of v0, p3, Lcom/android/tools/r8/internal/Am0;

    const/16 v1, 0x12

    if-eqz v0, :cond_5

    .line 98
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/F1;->K()Lcom/android/tools/r8/internal/Am0;

    move-result-object p3

    .line 99
    iget-object p3, p3, Lcom/android/tools/r8/internal/Am0;->c:Lcom/android/tools/r8/graph/M2;

    .line 100
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    sget-object p4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p1, v1, p3, p4}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    .line 101
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object p1

    sget-boolean p3, Lcom/android/tools/r8/internal/pu0;->a:Z

    .line 102
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p3

    iget-object p3, p3, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    invoke-static {p3, p1, p0}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p0

    goto/16 :goto_6

    .line 103
    :cond_5
    instance-of v0, p3, Lcom/android/tools/r8/internal/Dm0;

    if-eqz v0, :cond_6

    .line 104
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/F1;->M()Lcom/android/tools/r8/internal/Dm0;

    move-result-object p3

    .line 105
    iget-object p4, p3, Lcom/android/tools/r8/internal/Dm0;->c:Lcom/android/tools/r8/graph/J2;

    .line 106
    iget-object p3, p3, Lcom/android/tools/r8/internal/Dm0;->d:Lcom/android/tools/r8/internal/ZY;

    .line 107
    new-instance p6, Lcom/android/tools/r8/internal/MS;

    invoke-direct {p6, p3}, Lcom/android/tools/r8/internal/MS;-><init>(Lcom/android/tools/r8/internal/ZY;)V

    .line 108
    invoke-static {p4, p6}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p3

    sget-object p4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/16 p6, 0xd8

    .line 109
    invoke-virtual {p1, p6, p3, p4}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    .line 110
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object p0

    goto/16 :goto_6

    .line 111
    :cond_6
    instance-of v0, p3, Lcom/android/tools/r8/internal/Hm0;

    if-eqz v0, :cond_9

    if-nez p4, :cond_8

    .line 112
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_2

    :cond_7
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 113
    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/PS;->a()Lcom/android/tools/r8/internal/PS;

    .line 114
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->m()Lcom/android/tools/r8/internal/ae0;

    move-result-object p0

    goto/16 :goto_6

    .line 115
    :cond_9
    instance-of v0, p3, Lcom/android/tools/r8/internal/Im0;

    if-eqz v0, :cond_11

    if-nez p4, :cond_b

    .line 116
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result p4

    if-eqz p4, :cond_a

    goto :goto_3

    :cond_a
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 117
    :cond_b
    :goto_3
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/F1;->m()Lcom/android/tools/r8/internal/Im0;

    move-result-object p3

    .line 118
    iget-wide p3, p3, Lcom/android/tools/r8/internal/Im0;->c:J

    .line 119
    invoke-static {p6}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v0

    .line 120
    sget-object v1, Lcom/android/tools/r8/internal/IS;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    const/4 v1, 0x4

    if-eq v0, v1, :cond_d

    const/4 v1, 0x5

    if-ne v0, v1, :cond_c

    .line 121
    invoke-virtual {p1, p3, p4}, Lcom/android/tools/r8/internal/PS;->a(J)Lcom/android/tools/r8/internal/PS;

    goto :goto_4

    .line 122
    :cond_c
    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p0

    .line 123
    :cond_d
    invoke-virtual {p1, p3, p4}, Lcom/android/tools/r8/internal/PS;->b(J)Lcom/android/tools/r8/internal/PS;

    goto :goto_4

    :cond_e
    long-to-int p3, p3

    .line 124
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/PS;->b(I)Lcom/android/tools/r8/internal/PS;

    goto :goto_4

    :cond_f
    long-to-int p3, p3

    .line 125
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/PS;->c(I)Lcom/android/tools/r8/internal/PS;

    goto :goto_4

    .line 126
    :cond_10
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/PS;->a()Lcom/android/tools/r8/internal/PS;

    .line 127
    :goto_4
    invoke-virtual {p6, p0}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p0

    goto :goto_6

    :cond_11
    if-nez p4, :cond_13

    .line 128
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/F1;->g0()Z

    move-result p4

    if-eqz p4, :cond_12

    goto :goto_5

    :cond_12
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 129
    :cond_13
    :goto_5
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/F1;->P()Lcom/android/tools/r8/internal/Om0;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Om0;->j0()Lcom/android/tools/r8/graph/L2;

    move-result-object p3

    .line 130
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    sget-object p4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p1, v1, p3, p4}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    .line 131
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object p0

    .line 132
    :goto_6
    new-instance p1, Lcom/android/tools/r8/internal/xw0;

    const/4 p3, 0x0

    invoke-direct {p1, p5, p0, p3}, Lcom/android/tools/r8/internal/xw0;-><init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)V

    .line 133
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->t()I

    move-result p0

    .line 134
    iget-object p2, p2, Lcom/android/tools/r8/internal/i60;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {p2, p0, p1}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    add-int/lit8 p5, p5, 0x1

    move-object p0, p1

    .line 135
    :goto_7
    invoke-interface {p7, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return p5
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/xA;)Lcom/android/tools/r8/internal/WS;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    .line 1
    new-instance v11, Lcom/android/tools/r8/internal/i60;

    invoke-direct {v11}, Lcom/android/tools/r8/internal/i60;-><init>()V

    .line 2
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 3
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result v2

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    .line 5
    invoke-static {v1, v2, v11, v3}, Lcom/android/tools/r8/internal/WS;->a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/internal/bT;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/PS;

    move-result-object v12

    .line 6
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 8
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {v1, v2, v9}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    .line 10
    new-instance v14, Lcom/android/tools/r8/internal/xw0;

    const/4 v15, 0x0

    const/4 v2, 0x0

    invoke-direct {v14, v15, v1, v2}, Lcom/android/tools/r8/internal/xw0;-><init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)V

    .line 11
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/xw0;->t()I

    move-result v1

    .line 13
    iget-object v3, v11, Lcom/android/tools/r8/internal/i60;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v3, v1, v14}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    .line 14
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/xw0;->t()I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/android/tools/r8/internal/PS;->a(I)Lcom/android/tools/r8/internal/PS;

    const/16 v16, 0x1

    move/from16 v1, v16

    .line 15
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    .line 16
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    .line 17
    check-cast v4, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/graph/A2;->a(Z)I

    move-result v3

    if-ge v1, v3, :cond_0

    move-object/from16 v8, p2

    .line 18
    invoke-virtual {v8, v1}, Lcom/android/tools/r8/graph/H0;->a(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 19
    invoke-virtual {v3, v9}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v4

    .line 20
    new-instance v5, Lcom/android/tools/r8/internal/xw0;

    invoke-direct {v5, v1, v4, v2}, Lcom/android/tools/r8/internal/xw0;-><init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)V

    .line 21
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->t()I

    move-result v4

    .line 23
    iget-object v6, v11, Lcom/android/tools/r8/internal/i60;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v6, v4, v5}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    .line 24
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->t()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->F0()Z

    invoke-virtual {v12, v4}, Lcom/android/tools/r8/internal/PS;->a(I)Lcom/android/tools/r8/internal/PS;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v8, p2

    .line 25
    iget-object v2, v0, Lcom/android/tools/r8/internal/hD;->f:Lcom/android/tools/r8/graph/l1;

    if-eqz v2, :cond_1

    .line 26
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget v3, v0, Lcom/android/tools/r8/internal/hD;->g:I

    sub-int/2addr v2, v3

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    .line 27
    iget-object v3, v0, Lcom/android/tools/r8/internal/hD;->f:Lcom/android/tools/r8/graph/l1;

    .line 28
    iget-object v4, v10, Lcom/android/tools/r8/internal/lZ;->f:Lcom/android/tools/r8/internal/o6;

    .line 29
    invoke-interface {v4, v3, v3}, Lcom/android/tools/r8/internal/m6;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/l1;

    .line 30
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v14, v2}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v2

    const/16 v4, 0xb5

    .line 31
    invoke-virtual {v12, v4, v3, v2}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    add-int/lit8 v1, v1, 0x1

    :cond_1
    move v6, v1

    .line 32
    iget-object v7, v0, Lcom/android/tools/r8/internal/hD;->h:Ljava/util/LinkedHashMap;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v12

    move-object v4, v11

    move-object v5, v13

    move-object/from16 v8, p3

    .line 33
    invoke-static/range {v1 .. v8}, Lcom/android/tools/r8/internal/hD;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/PS;Lcom/android/tools/r8/internal/i60;Ljava/util/ArrayList;ILjava/util/LinkedHashMap;Lcom/android/tools/r8/internal/xA;)I

    move-result v7

    .line 34
    iget-object v2, v0, Lcom/android/tools/r8/internal/hD;->j:Lcom/android/tools/r8/graph/A2;

    .line 35
    iget-object v5, v9, Lcom/android/tools/r8/graph/y;->g:Lcom/android/tools/r8/internal/Hz;

    .line 36
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    sget-object v4, Lcom/android/tools/r8/internal/kK;->d:Lcom/android/tools/r8/internal/kK;

    .line 38
    sget-object v6, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    move-object/from16 v1, p3

    .line 39
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/R00;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object v8

    .line 40
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v14, v0, Lcom/android/tools/r8/internal/hD;->k:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v4, v15

    :goto_1
    if-ge v15, v5, :cond_2

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/tools/r8/internal/SD;

    .line 43
    iget-object v1, v8, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 44
    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1, v4}, Lcom/android/tools/r8/graph/A2;->k(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v18

    .line 45
    new-instance v3, Lcom/android/tools/r8/internal/Bc1;

    invoke-direct {v3, v6}, Lcom/android/tools/r8/internal/Bc1;-><init>(Ljava/util/List;)V

    move-object/from16 v1, p1

    move-object v2, v12

    move-object/from16 v19, v3

    move-object v3, v11

    move/from16 v20, v4

    move-object/from16 v4, v17

    move/from16 v17, v5

    move-object v5, v13

    move-object/from16 v21, v14

    move-object v14, v6

    move v6, v7

    move-object/from16 v7, v18

    move/from16 v18, v15

    move-object v15, v8

    move-object/from16 v8, v19

    .line 46
    invoke-static/range {v1 .. v8}, Lcom/android/tools/r8/internal/hD;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/PS;Lcom/android/tools/r8/internal/i60;Lcom/android/tools/r8/internal/SD;Ljava/util/ArrayList;ILcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;)I

    move-result v7

    add-int/lit8 v4, v20, 0x1

    move-object v6, v14

    move-object v8, v15

    move/from16 v5, v17

    move/from16 v15, v18

    move-object/from16 v14, v21

    goto :goto_1

    :cond_2
    move/from16 v20, v4

    move-object v14, v6

    move-object v15, v8

    .line 47
    iget-object v1, v15, Lcom/android/tools/r8/internal/NW;->e:Lcom/android/tools/r8/graph/proto/j;

    .line 48
    iget-object v1, v1, Lcom/android/tools/r8/graph/proto/j;->a:Ljava/util/List;

    .line 49
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move v6, v7

    move/from16 v8, v20

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Bv;

    .line 50
    invoke-virtual {v1, v9}, Lcom/android/tools/r8/internal/Bv;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/Bm0;

    move-result-object v4

    .line 51
    iget-object v1, v15, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 52
    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1, v8}, Lcom/android/tools/r8/graph/A2;->k(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    .line 53
    new-instance v5, Lcom/android/tools/r8/internal/Bc1;

    invoke-direct {v5, v14}, Lcom/android/tools/r8/internal/Bc1;-><init>(Ljava/util/List;)V

    move-object/from16 v1, p1

    move-object v2, v12

    move-object v3, v11

    move-object/from16 v18, v5

    move-object v5, v13

    move/from16 v20, v8

    move-object/from16 v8, v18

    .line 54
    invoke-static/range {v1 .. v8}, Lcom/android/tools/r8/internal/hD;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/PS;Lcom/android/tools/r8/internal/i60;Lcom/android/tools/r8/internal/SD;Ljava/util/ArrayList;ILcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;)I

    move-result v6

    add-int/lit8 v8, v20, 0x1

    goto :goto_2

    .line 55
    :cond_3
    iget-object v1, v15, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 56
    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 57
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0xcd

    invoke-virtual {v12, v2, v1, v14}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    add-int/lit8 v6, v6, 0x1

    .line 58
    iget-object v7, v0, Lcom/android/tools/r8/internal/hD;->i:Ljava/util/LinkedHashMap;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v12

    move-object v4, v11

    move-object v5, v13

    move-object/from16 v8, p3

    invoke-static/range {v1 .. v8}, Lcom/android/tools/r8/internal/hD;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/PS;Lcom/android/tools/r8/internal/i60;Ljava/util/ArrayList;ILjava/util/LinkedHashMap;Lcom/android/tools/r8/internal/xA;)I

    .line 59
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/PS;->b()Lcom/android/tools/r8/internal/PS;

    .line 60
    new-instance v1, Lcom/android/tools/r8/internal/gD;

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/PS;->d()Lcom/android/tools/r8/internal/WS;

    move-result-object v2

    invoke-direct {v1, v2, v10}, Lcom/android/tools/r8/internal/gD;-><init>(Lcom/android/tools/r8/internal/WS;Lcom/android/tools/r8/internal/xA;)V

    return-object v1
.end method

.method public final l(I)V
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/hD;->g:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/tools/r8/internal/hD;->g:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "IncompleteMergedInstanceInitializerCode"

    return-object v0
.end method
