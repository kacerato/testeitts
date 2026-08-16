.class public Lcom/android/tools/r8/dex/U;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic l:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/j1;

.field public final b:Lcom/android/tools/r8/graph/L2;

.field public final c:Ljava/util/function/BooleanSupplier;

.field public final d:Lcom/android/tools/r8/graph/u1;

.field public final e:Ljava/util/IdentityHashMap;

.field public f:Lcom/android/tools/r8/graph/W0$a;

.field public final g:Lcom/android/tools/r8/internal/dH;

.field public final h:Ljava/util/IdentityHashMap;

.field public final i:Ljava/util/IdentityHashMap;

.field public final j:Lcom/android/tools/r8/internal/dH;

.field public final k:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/L2;Ljava/util/function/BooleanSupplier;Lcom/android/tools/r8/graph/u1;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/dex/U;->e:Ljava/util/IdentityHashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/dex/U;->f:Lcom/android/tools/r8/graph/W0$a;

    new-instance v0, Lcom/android/tools/r8/internal/dH;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/dex/U;->g:Lcom/android/tools/r8/internal/dH;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/dex/U;->h:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/dex/U;->i:Ljava/util/IdentityHashMap;

    new-instance v0, Lcom/android/tools/r8/internal/dH;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/dex/U;->j:Lcom/android/tools/r8/internal/dH;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/dex/U;->k:Ljava/util/IdentityHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/dex/U;->a:Lcom/android/tools/r8/graph/j1;

    iput-object p2, p0, Lcom/android/tools/r8/dex/U;->b:Lcom/android/tools/r8/graph/L2;

    iput-object p3, p0, Lcom/android/tools/r8/dex/U;->c:Ljava/util/function/BooleanSupplier;

    iput-object p4, p0, Lcom/android/tools/r8/dex/U;->d:Lcom/android/tools/r8/graph/u1;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/internal/Np;)Lcom/android/tools/r8/internal/Np;
    .locals 0

    .line 1
    if-ne p2, p0, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/internal/Np;)Lcom/android/tools/r8/internal/Np;
    .locals 0

    if-ne p2, p0, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method


# virtual methods
.method public final a(ILjava/util/ListIterator;Lcom/android/tools/r8/internal/un;Lcom/android/tools/r8/internal/un;)I
    .locals 3

    .line 22
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    .line 23
    new-instance v1, Lcom/android/tools/r8/internal/pp;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/pp;-><init>(I)V

    .line 24
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Np;->e(I)V

    .line 25
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/android/tools/r8/internal/Np;->e(I)V

    .line 26
    invoke-interface {p2, p4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 27
    invoke-virtual {p0, p3, p4}, Lcom/android/tools/r8/dex/U;->a(Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/internal/Np;)V

    .line 28
    invoke-interface {p2, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x3

    .line 29
    iget-object v0, p0, Lcom/android/tools/r8/dex/U;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p3}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    invoke-virtual {v0, v1, p3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-interface {p2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/Np;

    .line 31
    iget-object v0, p0, Lcom/android/tools/r8/dex/U;->e:Ljava/util/IdentityHashMap;

    filled-new-array {p3}, [Lcom/android/tools/r8/internal/Np;

    move-result-object p3

    const/4 v1, 0x1

    .line 32
    invoke-static {v1}, Lcom/android/tools/r8/internal/CT;->a(I)I

    move-result v1

    .line 33
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-static {v2, p3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 35
    invoke-virtual {v0, p4, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-interface {p2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    return p1
.end method

.method public a()Lcom/android/tools/r8/graph/J0;
    .locals 17

    move-object/from16 v0, p0

    .line 54
    new-instance v1, Lcom/android/tools/r8/internal/dH;

    const/16 v2, 0x10

    .line 55
    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    .line 56
    iget-object v2, v0, Lcom/android/tools/r8/dex/U;->a:Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/i0;->C()Lcom/android/tools/r8/graph/J0;

    move-result-object v2

    .line 57
    iget-object v2, v2, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    .line 58
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    const/4 v7, 0x1

    if-ge v5, v3, :cond_1

    aget-object v8, v2, v5

    .line 59
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v9

    invoke-virtual {v1, v9, v8}, Lcom/android/tools/r8/internal/dH;->a(ILjava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Np;->B()Z

    move-result v8

    if-eqz v8, :cond_0

    move v6, v7

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-eqz v6, :cond_5

    .line 61
    array-length v3, v2

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_5

    aget-object v6, v2, v5

    .line 62
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Np;->B()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 63
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v8

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Np;->w()I

    move-result v9

    add-int/2addr v9, v8

    invoke-virtual {v1, v9}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/Np;

    .line 64
    sget-boolean v9, Lcom/android/tools/r8/dex/U;->l:Z

    if-nez v9, :cond_3

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 65
    :cond_3
    :goto_2
    iget-object v9, v0, Lcom/android/tools/r8/dex/U;->h:Ljava/util/IdentityHashMap;

    invoke-virtual {v9, v8, v6}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 66
    :cond_5
    iget-object v3, v0, Lcom/android/tools/r8/dex/U;->a:Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/i0;->C()Lcom/android/tools/r8/graph/J0;

    move-result-object v3

    .line 67
    iget-object v3, v3, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    .line 68
    array-length v5, v3

    move v6, v4

    :goto_3
    if-ge v6, v5, :cond_1c

    aget-object v8, v3, v6

    .line 69
    instance-of v9, v8, Lcom/android/tools/r8/internal/dp;

    if-eqz v9, :cond_8

    .line 70
    move-object v9, v8

    check-cast v9, Lcom/android/tools/r8/internal/dp;

    .line 71
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v10

    iget-short v9, v9, Lcom/android/tools/r8/internal/dp;->h:S

    add-int/2addr v10, v9

    invoke-virtual {v1, v10}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/Np;

    .line 72
    sget-boolean v10, Lcom/android/tools/r8/dex/U;->l:Z

    if-nez v10, :cond_7

    if-eqz v9, :cond_6

    goto :goto_4

    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 73
    :cond_7
    :goto_4
    iget-object v10, v0, Lcom/android/tools/r8/dex/U;->e:Ljava/util/IdentityHashMap;

    filled-new-array {v9}, [Lcom/android/tools/r8/internal/Np;

    move-result-object v9

    .line 74
    invoke-static {v7}, Lcom/android/tools/r8/internal/CT;->a(I)I

    move-result v11

    .line 75
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    invoke-static {v12, v9}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {v10, v8, v12}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    .line 78
    :cond_8
    instance-of v9, v8, Lcom/android/tools/r8/internal/Zo;

    if-eqz v9, :cond_b

    .line 79
    move-object v9, v8

    check-cast v9, Lcom/android/tools/r8/internal/Zo;

    .line 80
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v10

    iget-short v9, v9, Lcom/android/tools/r8/internal/Zo;->g:S

    add-int/2addr v10, v9

    invoke-virtual {v1, v10}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/Np;

    .line 81
    sget-boolean v10, Lcom/android/tools/r8/dex/U;->l:Z

    if-nez v10, :cond_a

    if-eqz v9, :cond_9

    goto :goto_5

    :cond_9
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 82
    :cond_a
    :goto_5
    iget-object v10, v0, Lcom/android/tools/r8/dex/U;->e:Ljava/util/IdentityHashMap;

    filled-new-array {v9}, [Lcom/android/tools/r8/internal/Np;

    move-result-object v9

    .line 83
    invoke-static {v7}, Lcom/android/tools/r8/internal/CT;->a(I)I

    move-result v11

    .line 84
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    invoke-static {v12, v9}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {v10, v8, v12}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    .line 87
    :cond_b
    instance-of v9, v8, Lcom/android/tools/r8/internal/qp;

    if-eqz v9, :cond_e

    .line 88
    move-object v9, v8

    check-cast v9, Lcom/android/tools/r8/internal/qp;

    .line 89
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v10

    iget-byte v9, v9, Lcom/android/tools/r8/internal/Qo;->f:B

    add-int/2addr v10, v9

    invoke-virtual {v1, v10}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/Np;

    .line 90
    sget-boolean v10, Lcom/android/tools/r8/dex/U;->l:Z

    if-nez v10, :cond_d

    if-eqz v9, :cond_c

    goto :goto_6

    :cond_c
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 91
    :cond_d
    :goto_6
    iget-object v10, v0, Lcom/android/tools/r8/dex/U;->e:Ljava/util/IdentityHashMap;

    filled-new-array {v9}, [Lcom/android/tools/r8/internal/Np;

    move-result-object v9

    .line 92
    invoke-static {v7}, Lcom/android/tools/r8/internal/CT;->a(I)I

    move-result v11

    .line 93
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    invoke-static {v12, v9}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {v10, v8, v12}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    .line 96
    :cond_e
    instance-of v9, v8, Lcom/android/tools/r8/internal/op;

    if-eqz v9, :cond_11

    .line 97
    move-object v9, v8

    check-cast v9, Lcom/android/tools/r8/internal/op;

    .line 98
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v10

    iget-short v9, v9, Lcom/android/tools/r8/internal/Vo;->f:S

    add-int/2addr v10, v9

    invoke-virtual {v1, v10}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/Np;

    .line 99
    sget-boolean v10, Lcom/android/tools/r8/dex/U;->l:Z

    if-nez v10, :cond_10

    if-eqz v9, :cond_f

    goto :goto_7

    :cond_f
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 100
    :cond_10
    :goto_7
    iget-object v10, v0, Lcom/android/tools/r8/dex/U;->e:Ljava/util/IdentityHashMap;

    filled-new-array {v9}, [Lcom/android/tools/r8/internal/Np;

    move-result-object v9

    .line 101
    invoke-static {v7}, Lcom/android/tools/r8/internal/CT;->a(I)I

    move-result v11

    .line 102
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    invoke-static {v12, v9}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {v10, v8, v12}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    .line 105
    :cond_11
    instance-of v9, v8, Lcom/android/tools/r8/internal/pp;

    if-eqz v9, :cond_14

    .line 106
    move-object v9, v8

    check-cast v9, Lcom/android/tools/r8/internal/pp;

    .line 107
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v10

    iget v9, v9, Lcom/android/tools/r8/internal/pp;->f:I

    add-int/2addr v10, v9

    invoke-virtual {v1, v10}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/Np;

    .line 108
    sget-boolean v10, Lcom/android/tools/r8/dex/U;->l:Z

    if-nez v10, :cond_13

    if-eqz v9, :cond_12

    goto :goto_8

    :cond_12
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 109
    :cond_13
    :goto_8
    iget-object v10, v0, Lcom/android/tools/r8/dex/U;->e:Ljava/util/IdentityHashMap;

    filled-new-array {v9}, [Lcom/android/tools/r8/internal/Np;

    move-result-object v9

    .line 110
    invoke-static {v7}, Lcom/android/tools/r8/internal/CT;->a(I)I

    move-result v11

    .line 111
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    invoke-static {v12, v9}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {v10, v8, v12}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    .line 114
    :cond_14
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Np;->B()Z

    move-result v9

    if-eqz v9, :cond_17

    .line 115
    move-object v9, v8

    check-cast v9, Lcom/android/tools/r8/internal/jp;

    .line 116
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v10

    .line 117
    iget v9, v9, Lcom/android/tools/r8/internal/jp;->g:I

    add-int/2addr v10, v9

    .line 118
    invoke-virtual {v1, v10}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/Np;

    .line 119
    sget-boolean v10, Lcom/android/tools/r8/dex/U;->l:Z

    if-nez v10, :cond_16

    if-eqz v9, :cond_15

    goto :goto_9

    :cond_15
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 120
    :cond_16
    :goto_9
    iget-object v10, v0, Lcom/android/tools/r8/dex/U;->e:Ljava/util/IdentityHashMap;

    filled-new-array {v9}, [Lcom/android/tools/r8/internal/Np;

    move-result-object v9

    .line 121
    invoke-static {v7}, Lcom/android/tools/r8/internal/CT;->a(I)I

    move-result v11

    .line 122
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 123
    invoke-static {v12, v9}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 124
    invoke-virtual {v10, v8, v12}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 125
    :cond_17
    instance-of v9, v8, Lcom/android/tools/r8/internal/Cs;

    if-eqz v9, :cond_1b

    .line 126
    move-object v9, v8

    check-cast v9, Lcom/android/tools/r8/internal/Cs;

    .line 127
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/Cs;->P()[I

    move-result-object v9

    .line 128
    iget-object v10, v0, Lcom/android/tools/r8/dex/U;->h:Ljava/util/IdentityHashMap;

    invoke-virtual {v10, v8}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/Np;

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v10

    .line 129
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move v12, v4

    .line 130
    :goto_a
    array-length v13, v9

    if-ge v12, v13, :cond_1a

    .line 131
    aget v13, v9, v12

    add-int/2addr v13, v10

    invoke-virtual {v1, v13}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/internal/Np;

    .line 132
    sget-boolean v14, Lcom/android/tools/r8/dex/U;->l:Z

    if-nez v14, :cond_19

    if-eqz v13, :cond_18

    goto :goto_b

    :cond_18
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 133
    :cond_19
    :goto_b
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 134
    :cond_1a
    iget-object v9, v0, Lcom/android/tools/r8/dex/U;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v9, v8, v11}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    :goto_c
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 135
    :cond_1c
    iget-object v3, v0, Lcom/android/tools/r8/dex/U;->a:Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/i0;->C()Lcom/android/tools/r8/graph/J0;

    move-result-object v3

    .line 136
    iget-object v5, v0, Lcom/android/tools/r8/dex/U;->d:Lcom/android/tools/r8/graph/u1;

    invoke-static {v3, v5}, Lcom/android/tools/r8/graph/W0;->a(Lcom/android/tools/r8/graph/J0;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/W0$a;

    move-result-object v3

    if-nez v3, :cond_1f

    .line 137
    iget-object v3, v0, Lcom/android/tools/r8/dex/U;->c:Ljava/util/function/BooleanSupplier;

    invoke-interface {v3}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 138
    iget-object v3, v0, Lcom/android/tools/r8/dex/U;->a:Lcom/android/tools/r8/graph/j1;

    .line 139
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->V0()Lcom/android/tools/r8/graph/O2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v3

    .line 140
    iget-object v5, v0, Lcom/android/tools/r8/dex/U;->a:Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/i0;->C()Lcom/android/tools/r8/graph/J0;

    move-result-object v5

    .line 141
    iget-object v6, v0, Lcom/android/tools/r8/dex/U;->d:Lcom/android/tools/r8/graph/u1;

    .line 142
    sget-boolean v8, Lcom/android/tools/r8/graph/W0;->d:Z

    if-nez v8, :cond_1e

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/J0;->E0()Lcom/android/tools/r8/graph/W0;

    move-result-object v8

    if-nez v8, :cond_1d

    goto :goto_d

    :cond_1d
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 143
    :cond_1e
    :goto_d
    iget-object v5, v5, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    invoke-static {v4, v3, v5, v6}, Lcom/android/tools/r8/graph/W0;->a(II[Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/W0$a;

    move-result-object v3

    .line 144
    :cond_1f
    iput-object v3, v0, Lcom/android/tools/r8/dex/U;->f:Lcom/android/tools/r8/graph/W0$a;

    .line 145
    iget-object v3, v3, Lcom/android/tools/r8/graph/W0$a;->g:[Lcom/android/tools/r8/graph/O0;

    array-length v5, v3

    move v6, v4

    move v8, v6

    :goto_e
    if-ge v6, v5, :cond_26

    aget-object v9, v3, v6

    .line 146
    instance-of v10, v9, Lcom/android/tools/r8/graph/O0$a;

    if-eqz v10, :cond_22

    .line 147
    check-cast v9, Lcom/android/tools/r8/graph/O0$a;

    .line 148
    iget v9, v9, Lcom/android/tools/r8/graph/O0$a;->d:I

    add-int/2addr v8, v9

    .line 149
    invoke-virtual {v1, v8}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/Np;

    .line 150
    sget-boolean v10, Lcom/android/tools/r8/dex/U;->l:Z

    if-nez v10, :cond_21

    if-eqz v9, :cond_20

    goto :goto_f

    :cond_20
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 151
    :cond_21
    :goto_f
    iget-object v10, v0, Lcom/android/tools/r8/dex/U;->g:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v10, v8, v9}, Lcom/android/tools/r8/internal/dH;->a(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 152
    :cond_22
    instance-of v10, v9, Lcom/android/tools/r8/graph/O0$b;

    if-eqz v10, :cond_25

    .line 153
    check-cast v9, Lcom/android/tools/r8/graph/O0$b;

    .line 154
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/O0$b;->q0()I

    move-result v9

    add-int/2addr v8, v9

    .line 155
    invoke-virtual {v1, v8}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/Np;

    .line 156
    sget-boolean v10, Lcom/android/tools/r8/dex/U;->l:Z

    if-nez v10, :cond_24

    if-eqz v9, :cond_23

    goto :goto_10

    :cond_23
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 157
    :cond_24
    :goto_10
    iget-object v10, v0, Lcom/android/tools/r8/dex/U;->g:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v10, v8, v9}, Lcom/android/tools/r8/internal/dH;->a(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_25
    :goto_11
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 158
    :cond_26
    array-length v3, v2

    sub-int/2addr v3, v7

    aget-object v2, v2, v3

    .line 159
    iget-object v3, v0, Lcom/android/tools/r8/dex/U;->a:Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/i0;->C()Lcom/android/tools/r8/graph/J0;

    move-result-object v3

    .line 160
    iget-object v5, v3, Lcom/android/tools/r8/graph/J0;->h:[Lcom/android/tools/r8/graph/J0$a;

    array-length v6, v5

    move v8, v4

    :goto_12
    if-ge v8, v6, :cond_2c

    aget-object v9, v5, v8

    .line 161
    iget v10, v9, Lcom/android/tools/r8/graph/J0$a;->c:I

    invoke-virtual {v1, v10}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/Np;

    .line 162
    iget v11, v9, Lcom/android/tools/r8/graph/J0$a;->c:I

    iget v12, v9, Lcom/android/tools/r8/graph/J0$a;->d:I

    add-int/2addr v11, v12

    .line 163
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v12

    if-le v11, v12, :cond_27

    .line 164
    new-instance v11, Lcom/android/tools/r8/dex/T;

    invoke-direct {v11, v10, v2, v7}, Lcom/android/tools/r8/dex/T;-><init>(Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/internal/Np;Z)V

    move-object v12, v2

    goto :goto_13

    .line 165
    :cond_27
    invoke-virtual {v1, v11}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/Np;

    .line 166
    new-instance v12, Lcom/android/tools/r8/dex/T;

    invoke-direct {v12, v10, v11, v4}, Lcom/android/tools/r8/dex/T;-><init>(Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/internal/Np;Z)V

    move-object/from16 v16, v12

    move-object v12, v11

    move-object/from16 v11, v16

    .line 167
    :goto_13
    sget-boolean v13, Lcom/android/tools/r8/dex/U;->l:Z

    if-nez v13, :cond_29

    iget v14, v9, Lcom/android/tools/r8/graph/J0$a;->c:I

    .line 168
    iget-object v15, v11, Lcom/android/tools/r8/dex/T;->a:Lcom/android/tools/r8/internal/Np;

    invoke-virtual {v15}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v15

    if-ne v14, v15, :cond_28

    goto :goto_14

    .line 169
    :cond_28
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_29
    :goto_14
    if-nez v13, :cond_2b

    .line 170
    iget v13, v9, Lcom/android/tools/r8/graph/J0$a;->d:I

    invoke-virtual {v11}, Lcom/android/tools/r8/dex/T;->a()I

    move-result v14

    if-ne v13, v14, :cond_2a

    goto :goto_15

    :cond_2a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 171
    :cond_2b
    :goto_15
    iget-object v13, v0, Lcom/android/tools/r8/dex/U;->i:Ljava/util/IdentityHashMap;

    invoke-virtual {v13, v9, v11}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v9, v0, Lcom/android/tools/r8/dex/U;->j:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v11

    invoke-virtual {v9, v11, v10}, Lcom/android/tools/r8/internal/dH;->a(ILjava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v9, v0, Lcom/android/tools/r8/dex/U;->j:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v10

    invoke-virtual {v9, v10, v12}, Lcom/android/tools/r8/internal/dH;->a(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    .line 174
    :cond_2c
    iget-object v2, v3, Lcom/android/tools/r8/graph/J0;->i:[Lcom/android/tools/r8/graph/J0$b;

    array-length v3, v2

    move v5, v4

    :goto_16
    const/4 v6, -0x1

    if-ge v5, v3, :cond_33

    aget-object v7, v2, v5

    .line 175
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 176
    iget v9, v7, Lcom/android/tools/r8/graph/J0$b;->c:I

    if-eq v9, v6, :cond_2f

    .line 177
    invoke-virtual {v1, v9}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/Np;

    .line 178
    sget-boolean v9, Lcom/android/tools/r8/dex/U;->l:Z

    if-nez v9, :cond_2e

    if-eqz v6, :cond_2d

    goto :goto_17

    :cond_2d
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 179
    :cond_2e
    :goto_17
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_2f
    iget-object v6, v7, Lcom/android/tools/r8/graph/J0$b;->b:[Lcom/android/tools/r8/graph/J0$b$a;

    array-length v9, v6

    move v10, v4

    :goto_18
    if-ge v10, v9, :cond_32

    aget-object v11, v6, v10

    .line 181
    iget v11, v11, Lcom/android/tools/r8/graph/J0$b$a;->c:I

    invoke-virtual {v1, v11}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/Np;

    .line 182
    sget-boolean v12, Lcom/android/tools/r8/dex/U;->l:Z

    if-nez v12, :cond_31

    if-eqz v11, :cond_30

    goto :goto_19

    :cond_30
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 183
    :cond_31
    :goto_19
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_18

    .line 184
    :cond_32
    iget-object v6, v0, Lcom/android/tools/r8/dex/U;->k:Ljava/util/IdentityHashMap;

    invoke-virtual {v6, v7, v8}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 185
    :cond_33
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 186
    iget-object v2, v0, Lcom/android/tools/r8/dex/U;->a:Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/i0;->C()Lcom/android/tools/r8/graph/J0;

    move-result-object v2

    .line 187
    iget-object v2, v2, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 188
    :cond_34
    invoke-virtual {v1}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    move v3, v4

    .line 189
    :cond_35
    :goto_1a
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    const/16 v7, 0x7f

    const/16 v8, -0x80

    const/16 v9, 0x7fff

    const/16 v10, -0x8000

    if-eqz v5, :cond_46

    .line 190
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/Np;

    .line 191
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v11

    add-int v12, v11, v3

    .line 192
    invoke-virtual {v5, v12}, Lcom/android/tools/r8/internal/Np;->e(I)V

    .line 193
    instance-of v12, v5, Lcom/android/tools/r8/internal/ko;

    if-eqz v12, :cond_36

    .line 194
    move-object v7, v5

    check-cast v7, Lcom/android/tools/r8/internal/ko;

    .line 195
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/ko;->O()Lcom/android/tools/r8/graph/L2;

    move-result-object v8

    iget-object v9, v0, Lcom/android/tools/r8/dex/U;->b:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v8, v9}, Lcom/android/tools/r8/graph/L2;->a(Lcom/android/tools/r8/graph/L2;)I

    move-result v8

    if-ltz v8, :cond_35

    .line 196
    new-instance v8, Lcom/android/tools/r8/internal/lo;

    iget-short v9, v7, Lcom/android/tools/r8/internal/ko;->f:S

    .line 197
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/ko;->O()Lcom/android/tools/r8/graph/L2;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/android/tools/r8/internal/lo;-><init>(ILcom/android/tools/r8/graph/L2;)V

    .line 198
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/android/tools/r8/internal/Np;->e(I)V

    add-int/lit8 v3, v3, 0x1

    .line 199
    invoke-interface {v2, v8}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 200
    invoke-virtual {v0, v5, v8}, Lcom/android/tools/r8/dex/U;->a(Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/internal/Np;)V

    goto :goto_1a

    .line 201
    :cond_36
    instance-of v12, v5, Lcom/android/tools/r8/internal/dp;

    const/4 v13, 0x0

    if-eqz v12, :cond_38

    .line 202
    move-object v7, v5

    check-cast v7, Lcom/android/tools/r8/internal/dp;

    .line 203
    iget-object v8, v0, Lcom/android/tools/r8/dex/U;->e:Ljava/util/IdentityHashMap;

    .line 204
    invoke-virtual {v8, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/Np;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v8

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v5

    sub-int/2addr v8, v5

    if-gt v10, v8, :cond_37

    if-le v8, v9, :cond_35

    .line 205
    :cond_37
    sget-object v5, Lcom/android/tools/r8/dex/S;->a:[I

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/dp;->P()Lcom/android/tools/r8/internal/NB;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/NB;->b()Lcom/android/tools/r8/internal/NB;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v5, v5, v8

    packed-switch v5, :pswitch_data_0

    goto :goto_1b

    .line 206
    :pswitch_0
    new-instance v13, Lcom/android/tools/r8/internal/Bp;

    iget-byte v5, v7, Lcom/android/tools/r8/internal/dp;->f:B

    iget-byte v8, v7, Lcom/android/tools/r8/internal/dp;->g:B

    invoke-direct {v13, v5, v8, v4}, Lcom/android/tools/r8/internal/Bp;-><init>(III)V

    goto :goto_1b

    .line 207
    :pswitch_1
    new-instance v13, Lcom/android/tools/r8/internal/zp;

    iget-byte v5, v7, Lcom/android/tools/r8/internal/dp;->f:B

    iget-byte v8, v7, Lcom/android/tools/r8/internal/dp;->g:B

    invoke-direct {v13, v5, v8, v4}, Lcom/android/tools/r8/internal/zp;-><init>(III)V

    goto :goto_1b

    .line 208
    :pswitch_2
    new-instance v13, Lcom/android/tools/r8/internal/xp;

    iget-byte v5, v7, Lcom/android/tools/r8/internal/dp;->f:B

    iget-byte v8, v7, Lcom/android/tools/r8/internal/dp;->g:B

    invoke-direct {v13, v5, v8, v4}, Lcom/android/tools/r8/internal/xp;-><init>(III)V

    goto :goto_1b

    .line 209
    :pswitch_3
    new-instance v13, Lcom/android/tools/r8/internal/vp;

    iget-byte v5, v7, Lcom/android/tools/r8/internal/dp;->f:B

    iget-byte v8, v7, Lcom/android/tools/r8/internal/dp;->g:B

    invoke-direct {v13, v5, v8, v4}, Lcom/android/tools/r8/internal/vp;-><init>(III)V

    goto :goto_1b

    .line 210
    :pswitch_4
    new-instance v13, Lcom/android/tools/r8/internal/tp;

    iget-byte v5, v7, Lcom/android/tools/r8/internal/dp;->f:B

    iget-byte v8, v7, Lcom/android/tools/r8/internal/dp;->g:B

    invoke-direct {v13, v5, v8, v4}, Lcom/android/tools/r8/internal/tp;-><init>(III)V

    goto :goto_1b

    .line 211
    :pswitch_5
    new-instance v13, Lcom/android/tools/r8/internal/rp;

    iget-byte v5, v7, Lcom/android/tools/r8/internal/dp;->f:B

    iget-byte v8, v7, Lcom/android/tools/r8/internal/dp;->g:B

    invoke-direct {v13, v5, v8, v4}, Lcom/android/tools/r8/internal/rp;-><init>(III)V

    .line 212
    :goto_1b
    invoke-virtual {v0, v3, v2, v7, v13}, Lcom/android/tools/r8/dex/U;->a(ILjava/util/ListIterator;Lcom/android/tools/r8/internal/un;Lcom/android/tools/r8/internal/un;)I

    move-result v3

    goto/16 :goto_1a

    .line 213
    :cond_38
    instance-of v12, v5, Lcom/android/tools/r8/internal/Zo;

    if-eqz v12, :cond_3a

    .line 214
    move-object v7, v5

    check-cast v7, Lcom/android/tools/r8/internal/Zo;

    .line 215
    iget-object v8, v0, Lcom/android/tools/r8/dex/U;->e:Ljava/util/IdentityHashMap;

    .line 216
    invoke-virtual {v8, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/Np;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v8

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v5

    sub-int/2addr v8, v5

    if-gt v10, v8, :cond_39

    if-le v8, v9, :cond_35

    .line 217
    :cond_39
    sget-object v5, Lcom/android/tools/r8/dex/S;->a:[I

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Zo;->P()Lcom/android/tools/r8/internal/NB;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/NB;->b()Lcom/android/tools/r8/internal/NB;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v5, v5, v8

    packed-switch v5, :pswitch_data_1

    goto :goto_1c

    .line 218
    :pswitch_6
    new-instance v13, Lcom/android/tools/r8/internal/Cp;

    iget-short v5, v7, Lcom/android/tools/r8/internal/Zo;->f:S

    invoke-direct {v13, v5, v4}, Lcom/android/tools/r8/internal/Cp;-><init>(II)V

    goto :goto_1c

    .line 219
    :pswitch_7
    new-instance v13, Lcom/android/tools/r8/internal/Ap;

    iget-short v5, v7, Lcom/android/tools/r8/internal/Zo;->f:S

    invoke-direct {v13, v5, v4}, Lcom/android/tools/r8/internal/Ap;-><init>(II)V

    goto :goto_1c

    .line 220
    :pswitch_8
    new-instance v13, Lcom/android/tools/r8/internal/yp;

    iget-short v5, v7, Lcom/android/tools/r8/internal/Zo;->f:S

    invoke-direct {v13, v5, v4}, Lcom/android/tools/r8/internal/yp;-><init>(II)V

    goto :goto_1c

    .line 221
    :pswitch_9
    new-instance v13, Lcom/android/tools/r8/internal/wp;

    iget-short v5, v7, Lcom/android/tools/r8/internal/Zo;->f:S

    invoke-direct {v13, v5, v4}, Lcom/android/tools/r8/internal/wp;-><init>(II)V

    goto :goto_1c

    .line 222
    :pswitch_a
    new-instance v13, Lcom/android/tools/r8/internal/up;

    iget-short v5, v7, Lcom/android/tools/r8/internal/Zo;->f:S

    invoke-direct {v13, v5, v4}, Lcom/android/tools/r8/internal/up;-><init>(II)V

    goto :goto_1c

    .line 223
    :pswitch_b
    new-instance v13, Lcom/android/tools/r8/internal/sp;

    iget-short v5, v7, Lcom/android/tools/r8/internal/Zo;->f:S

    invoke-direct {v13, v5, v4}, Lcom/android/tools/r8/internal/sp;-><init>(II)V

    .line 224
    :goto_1c
    invoke-virtual {v0, v3, v2, v7, v13}, Lcom/android/tools/r8/dex/U;->a(ILjava/util/ListIterator;Lcom/android/tools/r8/internal/un;Lcom/android/tools/r8/internal/un;)I

    move-result v3

    goto/16 :goto_1a

    .line 225
    :cond_3a
    instance-of v12, v5, Lcom/android/tools/r8/internal/qp;

    if-eqz v12, :cond_3e

    .line 226
    move-object v11, v5

    check-cast v11, Lcom/android/tools/r8/internal/qp;

    .line 227
    iget-object v12, v0, Lcom/android/tools/r8/dex/U;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v12, v11}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/Np;

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v12

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v5

    sub-int/2addr v12, v5

    if-gt v8, v12, :cond_3b

    if-le v12, v7, :cond_35

    :cond_3b
    if-gt v10, v12, :cond_3d

    if-le v12, v9, :cond_3c

    goto :goto_1d

    .line 228
    :cond_3c
    new-instance v5, Lcom/android/tools/r8/internal/op;

    invoke-direct {v5, v12}, Lcom/android/tools/r8/internal/op;-><init>(I)V

    goto :goto_1e

    .line 229
    :cond_3d
    :goto_1d
    new-instance v5, Lcom/android/tools/r8/internal/pp;

    invoke-direct {v5, v12}, Lcom/android/tools/r8/internal/pp;-><init>(I)V

    .line 230
    :goto_1e
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/tools/r8/internal/Np;->e(I)V

    .line 231
    invoke-interface {v2, v5}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 232
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Np;->y()I

    move-result v7

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/tn;->y()I

    move-result v8

    sub-int/2addr v7, v8

    add-int/2addr v3, v7

    .line 233
    invoke-virtual {v0, v11, v5}, Lcom/android/tools/r8/dex/U;->a(Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/internal/Np;)V

    .line 234
    iget-object v7, v0, Lcom/android/tools/r8/dex/U;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v7, v11}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 235
    iget-object v8, v0, Lcom/android/tools/r8/dex/U;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v8, v5, v7}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1a

    .line 236
    :cond_3e
    instance-of v7, v5, Lcom/android/tools/r8/internal/op;

    if-eqz v7, :cond_40

    .line 237
    move-object v7, v5

    check-cast v7, Lcom/android/tools/r8/internal/op;

    .line 238
    iget-object v8, v0, Lcom/android/tools/r8/dex/U;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v8, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/Np;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v8

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v5

    sub-int/2addr v8, v5

    if-gt v10, v8, :cond_3f

    if-le v8, v9, :cond_35

    .line 239
    :cond_3f
    new-instance v5, Lcom/android/tools/r8/internal/pp;

    invoke-direct {v5, v8}, Lcom/android/tools/r8/internal/pp;-><init>(I)V

    .line 240
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/android/tools/r8/internal/Np;->e(I)V

    .line 241
    invoke-interface {v2, v5}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    .line 242
    invoke-virtual {v0, v7, v5}, Lcom/android/tools/r8/dex/U;->a(Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/internal/Np;)V

    .line 243
    iget-object v8, v0, Lcom/android/tools/r8/dex/U;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v8, v7}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 244
    iget-object v8, v0, Lcom/android/tools/r8/dex/U;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v8, v5, v7}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1a

    .line 245
    :cond_40
    instance-of v7, v5, Lcom/android/tools/r8/internal/pp;

    if-eqz v7, :cond_41

    goto/16 :goto_1a

    .line 246
    :cond_41
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Np;->B()Z

    move-result v7

    if-eqz v7, :cond_42

    goto/16 :goto_1a

    .line 247
    :cond_42
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Np;->L()Z

    move-result v7

    if-eqz v7, :cond_35

    .line 248
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v7

    rem-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_35

    .line 249
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 250
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v7

    if-eqz v7, :cond_43

    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Lcom/android/tools/r8/internal/Np;

    :cond_43
    if-eqz v13, :cond_44

    .line 251
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/Np;->M()Z

    move-result v7

    if-eqz v7, :cond_44

    iget-object v7, v0, Lcom/android/tools/r8/dex/U;->g:Lcom/android/tools/r8/internal/dH;

    .line 252
    invoke-virtual {v7, v11}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_44

    iget-object v7, v0, Lcom/android/tools/r8/dex/U;->j:Lcom/android/tools/r8/internal/dH;

    .line 253
    invoke-virtual {v7, v11}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_44

    .line 254
    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    add-int/lit8 v3, v3, -0x1

    goto :goto_1f

    :cond_44
    if-eqz v13, :cond_45

    .line 255
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 256
    :cond_45
    new-instance v7, Lcom/android/tools/r8/internal/kr;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/kr;-><init>()V

    .line 257
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/internal/Np;->e(I)V

    .line 258
    invoke-interface {v2, v7}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    :goto_1f
    add-int/2addr v11, v3

    .line 259
    invoke-virtual {v5, v11}, Lcom/android/tools/r8/internal/Np;->e(I)V

    .line 260
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    goto/16 :goto_1a

    :cond_46
    if-gtz v3, :cond_34

    .line 261
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_47
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Np;

    .line 262
    instance-of v5, v3, Lcom/android/tools/r8/internal/dp;

    if-eqz v5, :cond_4a

    .line 263
    move-object v5, v3

    check-cast v5, Lcom/android/tools/r8/internal/dp;

    .line 264
    iget-object v11, v0, Lcom/android/tools/r8/dex/U;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v11, v5}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/Np;

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v11

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v3

    sub-int/2addr v11, v3

    .line 265
    sget-boolean v3, Lcom/android/tools/r8/dex/U;->l:Z

    if-nez v3, :cond_49

    if-gt v10, v11, :cond_48

    if-gt v11, v9, :cond_48

    goto :goto_21

    :cond_48
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_49
    :goto_21
    int-to-short v3, v11

    .line 266
    iput-short v3, v5, Lcom/android/tools/r8/internal/dp;->h:S

    goto :goto_20

    .line 267
    :cond_4a
    instance-of v5, v3, Lcom/android/tools/r8/internal/Zo;

    if-eqz v5, :cond_4d

    .line 268
    move-object v5, v3

    check-cast v5, Lcom/android/tools/r8/internal/Zo;

    .line 269
    iget-object v11, v0, Lcom/android/tools/r8/dex/U;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v11, v5}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/Np;

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v11

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v3

    sub-int/2addr v11, v3

    .line 270
    sget-boolean v3, Lcom/android/tools/r8/dex/U;->l:Z

    if-nez v3, :cond_4c

    if-gt v10, v11, :cond_4b

    if-gt v11, v9, :cond_4b

    goto :goto_22

    :cond_4b
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_4c
    :goto_22
    int-to-short v3, v11

    .line 271
    iput-short v3, v5, Lcom/android/tools/r8/internal/Zo;->g:S

    goto :goto_20

    .line 272
    :cond_4d
    instance-of v5, v3, Lcom/android/tools/r8/internal/qp;

    if-eqz v5, :cond_50

    .line 273
    move-object v5, v3

    check-cast v5, Lcom/android/tools/r8/internal/qp;

    .line 274
    iget-object v11, v0, Lcom/android/tools/r8/dex/U;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v11, v5}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/Np;

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v11

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v3

    sub-int/2addr v11, v3

    .line 275
    sget-boolean v3, Lcom/android/tools/r8/dex/U;->l:Z

    if-nez v3, :cond_4f

    if-gt v8, v11, :cond_4e

    if-gt v11, v7, :cond_4e

    goto :goto_23

    :cond_4e
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_4f
    :goto_23
    int-to-byte v3, v11

    .line 276
    iput-byte v3, v5, Lcom/android/tools/r8/internal/Qo;->f:B

    goto/16 :goto_20

    .line 277
    :cond_50
    instance-of v5, v3, Lcom/android/tools/r8/internal/op;

    if-eqz v5, :cond_53

    .line 278
    move-object v5, v3

    check-cast v5, Lcom/android/tools/r8/internal/op;

    .line 279
    iget-object v11, v0, Lcom/android/tools/r8/dex/U;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v11, v5}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/Np;

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v11

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v3

    sub-int/2addr v11, v3

    .line 280
    sget-boolean v3, Lcom/android/tools/r8/dex/U;->l:Z

    if-nez v3, :cond_52

    if-gt v10, v11, :cond_51

    if-gt v11, v9, :cond_51

    goto :goto_24

    :cond_51
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_52
    :goto_24
    int-to-short v3, v11

    .line 281
    iput-short v3, v5, Lcom/android/tools/r8/internal/Vo;->f:S

    goto/16 :goto_20

    .line 282
    :cond_53
    instance-of v5, v3, Lcom/android/tools/r8/internal/pp;

    if-eqz v5, :cond_54

    .line 283
    move-object v5, v3

    check-cast v5, Lcom/android/tools/r8/internal/pp;

    .line 284
    iget-object v11, v0, Lcom/android/tools/r8/dex/U;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v11, v5}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/Np;

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v11

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v3

    sub-int/2addr v11, v3

    .line 285
    iput v11, v5, Lcom/android/tools/r8/internal/pp;->f:I

    goto/16 :goto_20

    .line 286
    :cond_54
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Np;->B()Z

    move-result v5

    if-eqz v5, :cond_55

    .line 287
    move-object v5, v3

    check-cast v5, Lcom/android/tools/r8/internal/jp;

    .line 288
    iget-object v11, v0, Lcom/android/tools/r8/dex/U;->e:Ljava/util/IdentityHashMap;

    .line 289
    invoke-virtual {v11, v5}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/Np;

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v11

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v3

    sub-int/2addr v11, v3

    .line 290
    iput v11, v5, Lcom/android/tools/r8/internal/jp;->g:I

    goto/16 :goto_20

    .line 291
    :cond_55
    instance-of v5, v3, Lcom/android/tools/r8/internal/Cs;

    if-eqz v5, :cond_47

    .line 292
    check-cast v3, Lcom/android/tools/r8/internal/Cs;

    .line 293
    iget-object v5, v0, Lcom/android/tools/r8/dex/U;->h:Ljava/util/IdentityHashMap;

    invoke-virtual {v5, v3}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/Np;

    .line 294
    iget-object v11, v0, Lcom/android/tools/r8/dex/U;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v11, v3}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 295
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Cs;->P()[I

    move-result-object v3

    move v12, v4

    .line 296
    :goto_25
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_47

    .line 297
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/internal/Np;

    .line 298
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v13

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v14

    sub-int/2addr v13, v14

    aput v13, v3, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_25

    .line 299
    :cond_56
    iget-object v2, v0, Lcom/android/tools/r8/dex/U;->a:Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/i0;->C()Lcom/android/tools/r8/graph/J0;

    move-result-object v2

    .line 300
    iget-object v3, v2, Lcom/android/tools/r8/graph/J0;->h:[Lcom/android/tools/r8/graph/J0$a;

    array-length v3, v3

    new-array v3, v3, [Lcom/android/tools/r8/graph/J0$a;

    move v5, v4

    .line 301
    :goto_26
    iget-object v7, v2, Lcom/android/tools/r8/graph/J0;->h:[Lcom/android/tools/r8/graph/J0$a;

    array-length v8, v7

    if-ge v5, v8, :cond_57

    .line 302
    aget-object v7, v7, v5

    .line 303
    iget-object v8, v0, Lcom/android/tools/r8/dex/U;->i:Ljava/util/IdentityHashMap;

    invoke-virtual {v8, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/dex/T;

    .line 304
    invoke-virtual {v8}, Lcom/android/tools/r8/dex/T;->a()I

    move-result v9

    const v10, 0xffff

    if-le v9, v10, :cond_58

    .line 305
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/dex/U;->a(Lcom/android/tools/r8/graph/J0;)[Lcom/android/tools/r8/graph/J0$a;

    move-result-object v3

    :cond_57
    move-object v12, v3

    goto :goto_27

    .line 306
    :cond_58
    new-instance v10, Lcom/android/tools/r8/graph/J0$a;

    .line 307
    iget-object v8, v8, Lcom/android/tools/r8/dex/T;->a:Lcom/android/tools/r8/internal/Np;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v8

    .line 308
    invoke-direct {v10, v8, v9, v6}, Lcom/android/tools/r8/graph/J0$a;-><init>(III)V

    aput-object v10, v3, v5

    .line 309
    iget v7, v7, Lcom/android/tools/r8/graph/J0$a;->e:I

    iput v7, v10, Lcom/android/tools/r8/graph/J0$a;->e:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 310
    :goto_27
    iget-object v2, v0, Lcom/android/tools/r8/dex/U;->a:Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/i0;->C()Lcom/android/tools/r8/graph/J0;

    move-result-object v2

    .line 311
    iget-object v3, v2, Lcom/android/tools/r8/graph/J0;->i:[Lcom/android/tools/r8/graph/J0$b;

    array-length v3, v3

    new-array v13, v3, [Lcom/android/tools/r8/graph/J0$b;

    move v3, v4

    .line 312
    :goto_28
    iget-object v5, v2, Lcom/android/tools/r8/graph/J0;->i:[Lcom/android/tools/r8/graph/J0$b;

    array-length v7, v5

    if-ge v3, v7, :cond_5b

    .line 313
    aget-object v5, v5, v3

    .line 314
    iget-object v7, v0, Lcom/android/tools/r8/dex/U;->k:Ljava/util/IdentityHashMap;

    invoke-virtual {v7, v5}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 315
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 316
    iget v8, v5, Lcom/android/tools/r8/graph/J0$b;->c:I

    if-eq v8, v6, :cond_59

    .line 317
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/Np;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v8

    goto :goto_29

    :cond_59
    move v8, v6

    .line 318
    :goto_29
    iget-object v9, v5, Lcom/android/tools/r8/graph/J0$b;->b:[Lcom/android/tools/r8/graph/J0$b$a;

    array-length v9, v9

    new-array v9, v9, [Lcom/android/tools/r8/graph/J0$b$a;

    move v10, v4

    .line 319
    :goto_2a
    iget-object v11, v5, Lcom/android/tools/r8/graph/J0$b;->b:[Lcom/android/tools/r8/graph/J0$b$a;

    array-length v14, v11

    if-ge v10, v14, :cond_5a

    .line 320
    aget-object v11, v11, v10

    .line 321
    new-instance v14, Lcom/android/tools/r8/graph/J0$b$a;

    invoke-virtual {v11}, Lcom/android/tools/r8/graph/J0$b$a;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/tools/r8/internal/Np;

    invoke-virtual {v15}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v15

    invoke-direct {v14, v15, v11}, Lcom/android/tools/r8/graph/J0$b$a;-><init>(ILcom/android/tools/r8/graph/M2;)V

    aput-object v14, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2a

    .line 322
    :cond_5a
    new-instance v5, Lcom/android/tools/r8/graph/J0$b;

    invoke-direct {v5, v9, v8}, Lcom/android/tools/r8/graph/J0$b;-><init>([Lcom/android/tools/r8/graph/J0$b$a;I)V

    aput-object v5, v13, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 323
    :cond_5b
    iget-object v2, v0, Lcom/android/tools/r8/dex/U;->a:Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/i0;->C()Lcom/android/tools/r8/graph/J0;

    move-result-object v2

    .line 324
    iget-object v3, v0, Lcom/android/tools/r8/dex/U;->g:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/dH;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_61

    .line 325
    sget-boolean v2, Lcom/android/tools/r8/dex/U;->l:Z

    if-nez v2, :cond_5d

    iget-object v2, v0, Lcom/android/tools/r8/dex/U;->f:Lcom/android/tools/r8/graph/W0$a;

    if-eqz v2, :cond_5c

    goto :goto_2b

    :cond_5c
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 326
    :cond_5d
    :goto_2b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 327
    iget-object v3, v0, Lcom/android/tools/r8/dex/U;->f:Lcom/android/tools/r8/graph/W0$a;

    iget-object v3, v3, Lcom/android/tools/r8/graph/W0$a;->g:[Lcom/android/tools/r8/graph/O0;

    array-length v5, v3

    move v6, v4

    move v7, v6

    :goto_2c
    if-ge v4, v5, :cond_60

    aget-object v8, v3, v4

    .line 328
    instance-of v9, v8, Lcom/android/tools/r8/graph/O0$a;

    if-eqz v9, :cond_5e

    .line 329
    check-cast v8, Lcom/android/tools/r8/graph/O0$a;

    .line 330
    iget v8, v8, Lcom/android/tools/r8/graph/O0$a;->d:I

    add-int/2addr v6, v8

    .line 331
    iget-object v8, v0, Lcom/android/tools/r8/dex/U;->g:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v8, v6}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/Np;

    .line 332
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v9

    sub-int/2addr v9, v7

    .line 333
    iget-object v7, v0, Lcom/android/tools/r8/dex/U;->d:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v7, v9}, Lcom/android/tools/r8/graph/u1;->b(I)Lcom/android/tools/r8/graph/O0$a;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v7

    goto :goto_2d

    .line 335
    :cond_5e
    instance-of v9, v8, Lcom/android/tools/r8/graph/O0$b;

    if-eqz v9, :cond_5f

    .line 336
    check-cast v8, Lcom/android/tools/r8/graph/O0$b;

    .line 337
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/O0$b;->q0()I

    move-result v9

    add-int/2addr v9, v6

    .line 338
    iget-object v6, v0, Lcom/android/tools/r8/dex/U;->g:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v6, v9}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/Np;

    .line 339
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/O0$b;->p0()I

    move-result v8

    .line 340
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v10

    sub-int/2addr v10, v7

    .line 341
    iget-object v7, v0, Lcom/android/tools/r8/dex/U;->d:Lcom/android/tools/r8/graph/u1;

    invoke-static {v8, v10, v2, v7}, Lcom/android/tools/r8/graph/U0;->a(IILjava/util/List;Lcom/android/tools/r8/graph/u1;)V

    .line 342
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v6

    move v7, v6

    move v6, v9

    goto :goto_2d

    .line 343
    :cond_5f
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 344
    :cond_60
    new-instance v3, Lcom/android/tools/r8/graph/W0$a;

    iget-object v4, v0, Lcom/android/tools/r8/dex/U;->f:Lcom/android/tools/r8/graph/W0$a;

    iget v5, v4, Lcom/android/tools/r8/graph/W0$a;->e:I

    iget-object v4, v4, Lcom/android/tools/r8/graph/W0$a;->f:[Lcom/android/tools/r8/graph/L2;

    sget-object v6, Lcom/android/tools/r8/graph/O0;->b:[Lcom/android/tools/r8/graph/O0;

    .line 345
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/tools/r8/graph/O0;

    invoke-direct {v3, v5, v4, v2}, Lcom/android/tools/r8/graph/W0$a;-><init>(I[Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/O0;)V

    move-object v14, v3

    goto :goto_2e

    .line 346
    :cond_61
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/J0;->E0()Lcom/android/tools/r8/graph/W0;

    move-result-object v2

    move-object v14, v2

    .line 347
    :goto_2e
    iget-object v2, v0, Lcom/android/tools/r8/dex/U;->a:Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/i0;->C()Lcom/android/tools/r8/graph/J0;

    move-result-object v2

    .line 348
    new-instance v3, Lcom/android/tools/r8/graph/J0;

    iget v8, v2, Lcom/android/tools/r8/graph/J0;->e:I

    iget v9, v2, Lcom/android/tools/r8/graph/J0;->f:I

    iget v10, v2, Lcom/android/tools/r8/graph/J0;->g:I

    sget-object v2, Lcom/android/tools/r8/internal/Np;->c:[Lcom/android/tools/r8/internal/Np;

    .line 349
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, [Lcom/android/tools/r8/internal/Np;

    move-object v7, v3

    invoke-direct/range {v7 .. v14}, Lcom/android/tools/r8/graph/J0;-><init>(III[Lcom/android/tools/r8/internal/Np;[Lcom/android/tools/r8/graph/J0$a;[Lcom/android/tools/r8/graph/J0$b;Lcom/android/tools/r8/graph/W0;)V

    .line 350
    iget-object v1, v0, Lcom/android/tools/r8/dex/U;->b:Lcom/android/tools/r8/graph/L2;

    .line 351
    iput-object v1, v3, Lcom/android/tools/r8/graph/J0;->k:Lcom/android/tools/r8/graph/L2;

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public final a(Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/internal/Np;)V
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/android/tools/r8/dex/U;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 38
    new-instance v2, Lu/c0;

    invoke-direct {v2, p1, p2}, Lu/c0;-><init>(Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/internal/Np;)V

    invoke-interface {v1, v2}, Ljava/util/List;->replaceAll(Ljava/util/function/UnaryOperator;)V

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/dex/U;->g:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dH;->c()Lcom/android/tools/r8/internal/I30;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/aH;

    .line 40
    new-instance v1, Lcom/android/tools/r8/internal/WG;

    .line 41
    iget-object v0, v0, Lcom/android/tools/r8/internal/aH;->b:Lcom/android/tools/r8/internal/dH;

    .line 42
    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/WG;-><init>(Lcom/android/tools/r8/internal/dH;)V

    .line 43
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/bH;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/WG;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/RG;

    .line 44
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 45
    invoke-interface {v0, p2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/dex/U;->i:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 47
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/dex/T;

    .line 48
    iget-object v2, v1, Lcom/android/tools/r8/dex/T;->a:Lcom/android/tools/r8/internal/Np;

    if-ne v2, p1, :cond_4

    .line 49
    iput-object p2, v1, Lcom/android/tools/r8/dex/T;->a:Lcom/android/tools/r8/internal/Np;

    .line 50
    :cond_4
    iget-object v2, v1, Lcom/android/tools/r8/dex/T;->b:Lcom/android/tools/r8/internal/Np;

    if-ne v2, p1, :cond_3

    .line 51
    iput-object p2, v1, Lcom/android/tools/r8/dex/T;->b:Lcom/android/tools/r8/internal/Np;

    goto :goto_2

    .line 52
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/dex/U;->k:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 53
    new-instance v2, Lu/d0;

    invoke-direct {v2, p1, p2}, Lu/d0;-><init>(Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/internal/Np;)V

    invoke-interface {v1, v2}, Ljava/util/List;->replaceAll(Ljava/util/function/UnaryOperator;)V

    goto :goto_3

    :cond_6
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/J0;)[Lcom/android/tools/r8/graph/J0$a;
    .locals 12

    .line 2
    iget-object v0, p1, Lcom/android/tools/r8/graph/J0;->h:[Lcom/android/tools/r8/graph/J0$a;

    array-length v0, v0

    add-int/lit8 v0, v0, 0xa

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    iget-object v0, p1, Lcom/android/tools/r8/graph/J0;->h:[Lcom/android/tools/r8/graph/J0$a;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    aget-object v4, v0, v3

    .line 5
    iget-object v5, p0, Lcom/android/tools/r8/dex/U;->i:Ljava/util/IdentityHashMap;

    invoke-virtual {v5, v4}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/dex/T;

    .line 6
    invoke-virtual {v5}, Lcom/android/tools/r8/dex/T;->a()I

    move-result v6

    .line 7
    iget-object v5, v5, Lcom/android/tools/r8/dex/T;->a:Lcom/android/tools/r8/internal/Np;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v5

    :goto_1
    const v7, 0xffff

    const/4 v8, -0x1

    if-le v6, v7, :cond_3

    add-int/2addr v7, v5

    .line 8
    iget-object v9, p1, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    :goto_2
    if-ltz v9, :cond_1

    .line 9
    iget-object v10, p1, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    aget-object v10, v10, v9

    .line 10
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v11

    if-gt v11, v7, :cond_0

    .line 11
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v7

    goto :goto_3

    :cond_0
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    :cond_1
    move v7, v8

    :goto_3
    if-le v7, v5, :cond_2

    sub-int v9, v7, v5

    .line 12
    new-instance v10, Lcom/android/tools/r8/graph/J0$a;

    invoke-direct {v10, v5, v9, v8}, Lcom/android/tools/r8/graph/J0$a;-><init>(III)V

    .line 13
    iget v5, v4, Lcom/android/tools/r8/graph/J0$a;->e:I

    iput v5, v10, Lcom/android/tools/r8/graph/J0$a;->e:I

    .line 14
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sub-int/2addr v6, v9

    move v5, v7

    goto :goto_1

    .line 15
    :cond_2
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected try-catch handler end point: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_3
    sget-boolean v7, Lcom/android/tools/r8/dex/U;->l:Z

    if-nez v7, :cond_5

    if-lez v6, :cond_4

    goto :goto_4

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 17
    :cond_5
    :goto_4
    new-instance v7, Lcom/android/tools/r8/graph/J0$a;

    invoke-direct {v7, v5, v6, v8}, Lcom/android/tools/r8/graph/J0$a;-><init>(III)V

    .line 18
    iget v4, v4, Lcom/android/tools/r8/graph/J0$a;->e:I

    iput v4, v7, Lcom/android/tools/r8/graph/J0$a;->e:I

    .line 19
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 20
    :cond_6
    sget-boolean v0, Lcom/android/tools/r8/dex/U;->l:Z

    if-nez v0, :cond_8

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object p1, p1, Lcom/android/tools/r8/graph/J0;->h:[Lcom/android/tools/r8/graph/J0$a;

    array-length p1, p1

    if-le v0, p1, :cond_7

    goto :goto_5

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 21
    :cond_8
    :goto_5
    sget-object p1, Lcom/android/tools/r8/graph/J0$a;->f:[Lcom/android/tools/r8/graph/J0$a;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/tools/r8/graph/J0$a;

    return-object p1
.end method
