.class public final Lcom/android/tools/r8/internal/J9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/G;

.field public final c:Lcom/android/tools/r8/internal/O8;

.field public final d:Lcom/android/tools/r8/internal/L9;

.field public final e:Lcom/android/tools/r8/graph/u1;

.field public final f:Lcom/android/tools/r8/graph/H5;

.field public final g:Ljava/util/ArrayDeque;

.field public final h:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/G;Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/internal/L9;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/J9;->g:Ljava/util/ArrayDeque;

    iput-object p1, p0, Lcom/android/tools/r8/internal/J9;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/J9;->b:Lcom/android/tools/r8/graph/G;

    iput-object p3, p0, Lcom/android/tools/r8/internal/J9;->c:Lcom/android/tools/r8/internal/O8;

    iput-object p4, p0, Lcom/android/tools/r8/internal/J9;->d:Lcom/android/tools/r8/internal/L9;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/J9;->e:Lcom/android/tools/r8/graph/u1;

    iput-object p5, p0, Lcom/android/tools/r8/internal/J9;->f:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G;->I0()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/Db;

    iget-object p4, p3, Lcom/android/tools/r8/internal/Db;->a:Lcom/android/tools/r8/internal/ka;

    invoke-interface {p1, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p3, p3, Lcom/android/tools/r8/internal/Db;->b:Lcom/android/tools/r8/internal/ka;

    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/J9;->h:Ljava/util/Set;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/ka;Lcom/android/tools/r8/internal/Db;)Z
    .locals 0

    .line 210
    iget-object p1, p1, Lcom/android/tools/r8/internal/Db;->b:Lcom/android/tools/r8/internal/ka;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()I
    .locals 17

    move-object/from16 v0, p0

    .line 35
    iget-object v1, v0, Lcom/android/tools/r8/internal/J9;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    .line 36
    iget-object v2, v1, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v2, v2, Lcom/android/tools/r8/internal/nJ$p;->S0:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    instance-of v2, v1, Lcom/android/tools/r8/ClassFileConsumer;

    :goto_0
    const/4 v1, 0x2

    if-eqz v2, :cond_30

    .line 38
    iget-object v2, v0, Lcom/android/tools/r8/internal/J9;->a:Lcom/android/tools/r8/graph/y;

    .line 39
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v2, v2, Lcom/android/tools/r8/internal/nJ$p;->T0:Z

    if-eqz v2, :cond_1

    goto/16 :goto_14

    .line 40
    :cond_1
    iget-object v2, v0, Lcom/android/tools/r8/internal/J9;->f:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    .line 41
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->a1()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 42
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->P0()Lcom/android/tools/r8/internal/Ib;

    move-result-object v2

    sget-object v3, Lcom/android/tools/r8/internal/Ib;->h:Lcom/android/tools/r8/internal/Ib;

    invoke-interface {v2, v3}, Lcom/android/tools/r8/internal/C40;->b(Lcom/android/tools/r8/internal/C40;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 43
    :cond_2
    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    .line 44
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 45
    iget-object v4, v0, Lcom/android/tools/r8/internal/J9;->b:Lcom/android/tools/r8/graph/G;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G;->I0()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 46
    iget-object v6, v0, Lcom/android/tools/r8/internal/J9;->b:Lcom/android/tools/r8/graph/G;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, " In later version of R8, the method may be assumed not reachable."

    const/4 v9, 0x0

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/W9;

    .line 47
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W9;->K()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 48
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W9;->g()Lcom/android/tools/r8/internal/G9;

    move-result-object v10

    .line 49
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6

    .line 50
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v12, v9

    :goto_2
    if-ge v12, v11, :cond_8

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    check-cast v13, Lcom/android/tools/r8/internal/ka;

    .line 51
    invoke-virtual {v2, v13}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 52
    iget-object v2, v0, Lcom/android/tools/r8/internal/J9;->f:Lcom/android/tools/r8/graph/H5;

    iget-object v3, v0, Lcom/android/tools/r8/internal/J9;->a:Lcom/android/tools/r8/graph/y;

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Multiple frames for label"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 55
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    :cond_4
    new-instance v3, Lcom/android/tools/r8/graph/H;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/android/tools/r8/graph/H;-><init>(Lcom/android/tools/r8/graph/H5;Ljava/lang/String;)V

    .line 57
    new-instance v2, Lcom/android/tools/r8/internal/Ws0;

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/Ws0;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 58
    :cond_5
    invoke-virtual {v2, v13, v10}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 59
    :cond_6
    iget-object v10, v0, Lcom/android/tools/r8/internal/J9;->b:Lcom/android/tools/r8/graph/G;

    .line 60
    iget-object v10, v10, Lcom/android/tools/r8/graph/G;->h:Ljava/util/List;

    .line 61
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/W9;

    if-eq v7, v10, :cond_8

    .line 62
    iget-object v2, v0, Lcom/android/tools/r8/internal/J9;->f:Lcom/android/tools/r8/graph/H5;

    iget-object v3, v0, Lcom/android/tools/r8/internal/J9;->a:Lcom/android/tools/r8/graph/y;

    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Unexpected stack map frame without target"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 65
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    :cond_7
    new-instance v3, Lcom/android/tools/r8/graph/H;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/android/tools/r8/graph/H;-><init>(Lcom/android/tools/r8/graph/H5;Ljava/lang/String;)V

    .line 67
    new-instance v2, Lcom/android/tools/r8/internal/Ws0;

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/Ws0;-><init>(Ljava/lang/Object;)V

    goto :goto_4

    .line 68
    :cond_8
    instance-of v8, v7, Lcom/android/tools/r8/internal/Ma;

    if-eqz v8, :cond_9

    goto/16 :goto_1

    .line 69
    :cond_9
    instance-of v8, v7, Lcom/android/tools/r8/internal/ka;

    if-eqz v8, :cond_a

    .line 70
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W9;->m()Lcom/android/tools/r8/internal/ka;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 71
    :cond_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :goto_3
    if-nez v4, :cond_3

    .line 72
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W9;->Q()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v0, v7}, Lcom/android/tools/r8/internal/J9;->a(Lcom/android/tools/r8/internal/W9;)Z

    move-result v4

    if-nez v4, :cond_b

    move v4, v5

    goto/16 :goto_1

    :cond_b
    move v4, v9

    goto/16 :goto_1

    :cond_c
    if-eqz v4, :cond_e

    .line 73
    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 74
    iget-object v2, v0, Lcom/android/tools/r8/internal/J9;->f:Lcom/android/tools/r8/graph/H5;

    iget-object v3, v0, Lcom/android/tools/r8/internal/J9;->a:Lcom/android/tools/r8/graph/y;

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Expected stack map table for method with non-linear control flow."

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 77
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :cond_d
    new-instance v3, Lcom/android/tools/r8/graph/H;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/android/tools/r8/graph/H;-><init>(Lcom/android/tools/r8/graph/H5;Ljava/lang/String;)V

    .line 79
    new-instance v2, Lcom/android/tools/r8/internal/Ws0;

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/Ws0;-><init>(Ljava/lang/Object;)V

    goto :goto_4

    .line 80
    :cond_e
    new-instance v3, Lcom/android/tools/r8/internal/Ys0;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/Ys0;-><init>(Ljava/lang/Object;)V

    move-object v2, v3

    .line 81
    :goto_4
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_f

    .line 82
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/J9;->a(Lcom/android/tools/r8/internal/Zs0;)V

    return v4

    .line 83
    :cond_f
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Zs0;->b()Lcom/android/tools/r8/internal/Ys0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Ys0;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 84
    iget-object v3, v0, Lcom/android/tools/r8/internal/J9;->b:Lcom/android/tools/r8/graph/G;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G;->I0()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/Db;

    .line 85
    invoke-virtual {v0, v6, v2}, Lcom/android/tools/r8/internal/J9;->a(Lcom/android/tools/r8/internal/Db;Ljava/util/Map;)Lcom/android/tools/r8/graph/H;

    move-result-object v6

    if-eqz v6, :cond_10

    goto :goto_5

    :cond_11
    move-object v6, v7

    :goto_5
    if-eqz v6, :cond_12

    .line 86
    iget-object v1, v0, Lcom/android/tools/r8/internal/J9;->d:Lcom/android/tools/r8/internal/L9;

    invoke-interface {v1, v6}, Lcom/android/tools/r8/internal/L9;->a(Lcom/android/tools/r8/graph/H;)V

    return v4

    .line 87
    :cond_12
    new-instance v3, Lcom/android/tools/r8/internal/kg;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/kg;-><init>()V

    .line 88
    iget-object v6, v0, Lcom/android/tools/r8/internal/J9;->f:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/A2;

    .line 89
    iget-object v8, v0, Lcom/android/tools/r8/internal/J9;->f:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/j1;

    .line 90
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v8

    if-nez v8, :cond_14

    .line 91
    iget-object v8, v0, Lcom/android/tools/r8/internal/J9;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/u1;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 92
    sget v8, Lcom/android/tools/r8/internal/jy;->a:I

    sget-object v8, Lcom/android/tools/r8/internal/gv0;->c:Lcom/android/tools/r8/internal/gv0;

    goto :goto_6

    .line 93
    :cond_13
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    invoke-static {v8}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v8

    :goto_6
    iget-object v10, v0, Lcom/android/tools/r8/internal/J9;->c:Lcom/android/tools/r8/internal/O8;

    .line 94
    invoke-virtual {v3, v9, v8, v10}, Lcom/android/tools/r8/internal/kg;->a(ILcom/android/tools/r8/internal/S60;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;

    move-result-object v3

    move v8, v5

    goto :goto_7

    :cond_14
    move v8, v9

    .line 95
    :goto_7
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/O2;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_15

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/graph/M2;

    .line 96
    invoke-static {v10}, Lcom/android/tools/r8/internal/jy;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/AD;

    move-result-object v11

    iget-object v12, v0, Lcom/android/tools/r8/internal/J9;->c:Lcom/android/tools/r8/internal/O8;

    invoke-virtual {v3, v8, v11, v12}, Lcom/android/tools/r8/internal/H9;->a(ILcom/android/tools/r8/internal/S60;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;

    move-result-object v3

    .line 97
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/M2;->B0()I

    move-result v10

    add-int/2addr v8, v10

    goto :goto_8

    .line 98
    :cond_15
    instance-of v6, v3, Lcom/android/tools/r8/internal/hv;

    if-eqz v6, :cond_16

    .line 99
    iget-object v6, v0, Lcom/android/tools/r8/internal/J9;->f:Lcom/android/tools/r8/graph/H5;

    iget-object v8, v0, Lcom/android/tools/r8/internal/J9;->b:Lcom/android/tools/r8/graph/G;

    .line 100
    iget-object v8, v8, Lcom/android/tools/r8/graph/G;->h:Ljava/util/List;

    .line 101
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/W9;

    .line 102
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/H9;->e()Lcom/android/tools/r8/internal/hv;

    move-result-object v3

    .line 103
    iget-object v3, v3, Lcom/android/tools/r8/internal/hv;->c:Ljava/lang/String;

    .line 104
    iget-object v10, v0, Lcom/android/tools/r8/internal/J9;->a:Lcom/android/tools/r8/graph/y;

    .line 105
    invoke-static {v6, v9, v8, v3, v10}, Lcom/android/tools/r8/graph/I;->a(Lcom/android/tools/r8/graph/H5;ILcom/android/tools/r8/internal/W9;Ljava/lang/String;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H;

    move-result-object v3

    .line 106
    new-instance v6, Lcom/android/tools/r8/internal/Ws0;

    invoke-direct {v6, v3}, Lcom/android/tools/r8/internal/Ws0;-><init>(Ljava/lang/Object;)V

    goto :goto_9

    .line 107
    :cond_16
    new-instance v6, Lcom/android/tools/r8/internal/Ys0;

    invoke-direct {v6, v3}, Lcom/android/tools/r8/internal/Ys0;-><init>(Ljava/lang/Object;)V

    .line 108
    :goto_9
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 109
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/internal/J9;->a(Lcom/android/tools/r8/internal/Zs0;)V

    return v4

    .line 110
    :cond_17
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Zs0;->b()Lcom/android/tools/r8/internal/Ys0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Ys0;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/H9;

    move v6, v9

    move v8, v6

    .line 111
    :goto_a
    iget-object v10, v0, Lcom/android/tools/r8/internal/J9;->b:Lcom/android/tools/r8/graph/G;

    invoke-virtual {v10}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v6, v10, :cond_2f

    .line 112
    iget-object v10, v0, Lcom/android/tools/r8/internal/J9;->b:Lcom/android/tools/r8/graph/G;

    .line 113
    iget-object v10, v10, Lcom/android/tools/r8/graph/G;->h:Ljava/util/List;

    .line 114
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/W9;

    .line 115
    sget-boolean v11, Lcom/android/tools/r8/internal/J9;->i:Z

    if-nez v11, :cond_19

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    instance-of v11, v3, Lcom/android/tools/r8/internal/hv;

    if-nez v11, :cond_18

    goto :goto_b

    .line 117
    :cond_18
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 118
    :cond_19
    :goto_b
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    instance-of v11, v10, Lcom/android/tools/r8/internal/ka;

    if-eqz v11, :cond_1a

    .line 120
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W9;->m()Lcom/android/tools/r8/internal/ka;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/android/tools/r8/internal/J9;->a(Lcom/android/tools/r8/internal/ka;)V

    goto :goto_e

    .line 121
    :cond_1a
    iget-object v12, v0, Lcom/android/tools/r8/internal/J9;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v12

    iget-boolean v12, v12, Lcom/android/tools/r8/internal/nJ;->j0:Z

    if-nez v12, :cond_1b

    .line 122
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W9;->z()Z

    move-result v12

    if-eqz v12, :cond_1f

    .line 123
    :cond_1b
    iget-object v12, v0, Lcom/android/tools/r8/internal/J9;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v12}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/internal/Db;

    .line 124
    iget-object v13, v13, Lcom/android/tools/r8/internal/Db;->d:Ljava/util/List;

    .line 125
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/internal/ka;

    .line 126
    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/internal/G9;

    if-nez v14, :cond_1d

    .line 127
    new-instance v3, Lcom/android/tools/r8/internal/hv;

    const-string v12, "No frame for target catch range target"

    invoke-direct {v3, v12}, Lcom/android/tools/r8/internal/hv;-><init>(Ljava/lang/String;)V

    goto :goto_d

    .line 128
    :cond_1d
    iget-object v15, v0, Lcom/android/tools/r8/internal/J9;->c:Lcom/android/tools/r8/internal/O8;

    invoke-virtual {v3, v15, v14}, Lcom/android/tools/r8/internal/H9;->b(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/internal/G9;)Lcom/android/tools/r8/internal/H9;

    move-result-object v3

    goto :goto_c

    .line 129
    :cond_1e
    :goto_d
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    instance-of v12, v3, Lcom/android/tools/r8/internal/hv;

    if-eqz v12, :cond_1f

    .line 131
    iget-object v1, v0, Lcom/android/tools/r8/internal/J9;->f:Lcom/android/tools/r8/graph/H5;

    .line 132
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/H9;->e()Lcom/android/tools/r8/internal/hv;

    move-result-object v2

    .line 133
    iget-object v2, v2, Lcom/android/tools/r8/internal/hv;->c:Ljava/lang/String;

    .line 134
    iget-object v3, v0, Lcom/android/tools/r8/internal/J9;->a:Lcom/android/tools/r8/graph/y;

    .line 135
    invoke-static {v1, v8, v10, v2, v3}, Lcom/android/tools/r8/graph/I;->a(Lcom/android/tools/r8/graph/H5;ILcom/android/tools/r8/internal/W9;Ljava/lang/String;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H;

    move-result-object v1

    .line 136
    iget-object v2, v0, Lcom/android/tools/r8/internal/J9;->d:Lcom/android/tools/r8/internal/L9;

    invoke-interface {v2, v1}, Lcom/android/tools/r8/internal/L9;->a(Lcom/android/tools/r8/graph/H;)V

    return v4

    .line 137
    :cond_1f
    :goto_e
    iget-object v12, v0, Lcom/android/tools/r8/internal/J9;->d:Lcom/android/tools/r8/internal/L9;

    invoke-interface {v12, v10, v3}, Lcom/android/tools/r8/internal/L9;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/H9;)V

    .line 138
    iget-object v12, v0, Lcom/android/tools/r8/internal/J9;->a:Lcom/android/tools/r8/graph/y;

    iget-object v13, v0, Lcom/android/tools/r8/internal/J9;->c:Lcom/android/tools/r8/internal/O8;

    invoke-virtual {v10, v3, v12, v13}, Lcom/android/tools/r8/internal/W9;->a(Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;

    move-result-object v3

    .line 139
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W9;->R()Z

    move-result v12

    if-eqz v12, :cond_21

    add-int/lit8 v12, v6, 0x1

    .line 140
    iget-object v13, v0, Lcom/android/tools/r8/internal/J9;->b:Lcom/android/tools/r8/graph/G;

    invoke-virtual {v13}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_20

    iget-object v13, v0, Lcom/android/tools/r8/internal/J9;->b:Lcom/android/tools/r8/graph/G;

    .line 141
    iget-object v13, v13, Lcom/android/tools/r8/graph/G;->h:Ljava/util/List;

    .line 142
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/W9;

    goto :goto_f

    :cond_20
    move-object v12, v7

    .line 143
    :goto_f
    new-instance v13, Lcom/android/tools/r8/internal/nJ0;

    invoke-direct {v13, v0, v12, v2}, Lcom/android/tools/r8/internal/nJ0;-><init>(Lcom/android/tools/r8/internal/J9;Lcom/android/tools/r8/internal/W9;Ljava/util/Map;)V

    .line 144
    invoke-virtual {v10, v13, v12, v3}, Lcom/android/tools/r8/internal/W9;->a(Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/H9;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object v3

    .line 145
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Zs0;->b()Lcom/android/tools/r8/internal/Ys0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Ys0;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/H9;

    .line 146
    :cond_21
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W9;->Q()Z

    move-result v12

    if-nez v12, :cond_22

    .line 147
    new-instance v12, Lcom/android/tools/r8/internal/Ys0;

    invoke-direct {v12, v3}, Lcom/android/tools/r8/internal/Ys0;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_13

    .line 148
    :cond_22
    iget-object v12, v0, Lcom/android/tools/r8/internal/J9;->b:Lcom/android/tools/r8/graph/G;

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v5

    if-ne v6, v12, :cond_23

    .line 149
    sget-object v3, Lcom/android/tools/r8/internal/q7;->c:Lcom/android/tools/r8/internal/q7;

    .line 150
    new-instance v12, Lcom/android/tools/r8/internal/Ys0;

    invoke-direct {v12, v3}, Lcom/android/tools/r8/internal/Ys0;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_13

    .line 151
    :cond_23
    iget-object v12, v0, Lcom/android/tools/r8/internal/J9;->b:Lcom/android/tools/r8/graph/G;

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v1

    if-ne v6, v12, :cond_24

    iget-object v12, v0, Lcom/android/tools/r8/internal/J9;->b:Lcom/android/tools/r8/graph/G;

    add-int/lit8 v13, v6, 0x1

    .line 152
    iget-object v12, v12, Lcom/android/tools/r8/graph/G;->h:Ljava/util/List;

    .line 153
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/W9;

    .line 154
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    instance-of v12, v12, Lcom/android/tools/r8/internal/ka;

    if-eqz v12, :cond_24

    .line 156
    sget-object v3, Lcom/android/tools/r8/internal/q7;->c:Lcom/android/tools/r8/internal/q7;

    .line 157
    new-instance v12, Lcom/android/tools/r8/internal/Ys0;

    invoke-direct {v12, v3}, Lcom/android/tools/r8/internal/Ys0;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_13

    .line 158
    :cond_24
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W9;->l()Lcom/android/tools/r8/internal/ja;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/ja;->V()Z

    move-result v12

    if-eqz v12, :cond_25

    .line 159
    new-instance v12, Lcom/android/tools/r8/internal/Ys0;

    invoke-direct {v12, v3}, Lcom/android/tools/r8/internal/Ys0;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_13

    .line 160
    :cond_25
    iget-object v3, v0, Lcom/android/tools/r8/internal/J9;->b:Lcom/android/tools/r8/graph/G;

    add-int/lit8 v12, v6, 0x1

    .line 161
    iget-object v3, v3, Lcom/android/tools/r8/graph/G;->h:Ljava/util/List;

    .line 162
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W9;

    .line 163
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W9;->K()Z

    move-result v12

    if-eqz v12, :cond_26

    .line 164
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W9;->g()Lcom/android/tools/r8/internal/G9;

    move-result-object v12

    goto :goto_10

    .line 165
    :cond_26
    instance-of v12, v3, Lcom/android/tools/r8/internal/ka;

    if-eqz v12, :cond_27

    .line 166
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W9;->m()Lcom/android/tools/r8/internal/ka;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/G9;

    goto :goto_10

    :cond_27
    move-object v12, v7

    :goto_10
    if-eqz v12, :cond_2b

    .line 167
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/G9;->X()Lcom/android/tools/r8/internal/G9;

    move-result-object v3

    .line 168
    new-instance v12, Lcom/android/tools/r8/internal/kg;

    .line 169
    sget-boolean v13, Lcom/android/tools/r8/internal/G9;->f:Z

    if-nez v13, :cond_29

    iget-object v13, v3, Lcom/android/tools/r8/internal/G9;->c:Lcom/android/tools/r8/internal/jG;

    instance-of v13, v13, Lcom/android/tools/r8/internal/zF;

    if-eqz v13, :cond_28

    goto :goto_11

    :cond_28
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 170
    :cond_29
    :goto_11
    iget-object v13, v3, Lcom/android/tools/r8/internal/G9;->c:Lcom/android/tools/r8/internal/jG;

    check-cast v13, Lcom/android/tools/r8/internal/zF;

    .line 171
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/G9;->W()Ljava/util/ArrayDeque;

    move-result-object v14

    .line 172
    iget-object v3, v3, Lcom/android/tools/r8/internal/G9;->d:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v15, v9

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/tools/r8/internal/S60;

    .line 173
    invoke-interface/range {v16 .. v16}, Lcom/android/tools/r8/internal/jy;->v()I

    move-result v16

    add-int v15, v16, v15

    goto :goto_12

    .line 174
    :cond_2a
    invoke-direct {v12, v13, v14, v15}, Lcom/android/tools/r8/internal/kg;-><init>(Lcom/android/tools/r8/internal/zF;Ljava/util/ArrayDeque;I)V

    .line 175
    new-instance v3, Lcom/android/tools/r8/internal/Ys0;

    invoke-direct {v3, v12}, Lcom/android/tools/r8/internal/Ys0;-><init>(Ljava/lang/Object;)V

    move-object v12, v3

    goto :goto_13

    .line 176
    :cond_2b
    iget-object v12, v0, Lcom/android/tools/r8/internal/J9;->f:Lcom/android/tools/r8/graph/H5;

    add-int/lit8 v13, v8, 0x1

    iget-object v14, v0, Lcom/android/tools/r8/internal/J9;->a:Lcom/android/tools/r8/graph/y;

    .line 177
    const-string v15, "Expected frame instruction"

    invoke-static {v12, v13, v3, v15, v14}, Lcom/android/tools/r8/graph/I;->a(Lcom/android/tools/r8/graph/H5;ILcom/android/tools/r8/internal/W9;Ljava/lang/String;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H;

    move-result-object v3

    .line 178
    new-instance v12, Lcom/android/tools/r8/internal/Ws0;

    invoke-direct {v12, v3}, Lcom/android/tools/r8/internal/Ws0;-><init>(Ljava/lang/Object;)V

    .line 179
    :goto_13
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/Zs0;->d()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 180
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/Zs0;->b()Lcom/android/tools/r8/internal/Ys0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Ys0;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/H9;

    .line 181
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    instance-of v12, v3, Lcom/android/tools/r8/internal/hv;

    if-eqz v12, :cond_2c

    .line 183
    iget-object v1, v0, Lcom/android/tools/r8/internal/J9;->f:Lcom/android/tools/r8/graph/H5;

    .line 184
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/H9;->e()Lcom/android/tools/r8/internal/hv;

    move-result-object v2

    .line 185
    iget-object v2, v2, Lcom/android/tools/r8/internal/hv;->c:Ljava/lang/String;

    .line 186
    iget-object v3, v0, Lcom/android/tools/r8/internal/J9;->a:Lcom/android/tools/r8/graph/y;

    .line 187
    invoke-static {v1, v8, v10, v2, v3}, Lcom/android/tools/r8/graph/I;->a(Lcom/android/tools/r8/graph/H5;ILcom/android/tools/r8/internal/W9;Ljava/lang/String;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H;

    move-result-object v1

    .line 188
    iget-object v2, v0, Lcom/android/tools/r8/internal/J9;->d:Lcom/android/tools/r8/internal/L9;

    invoke-interface {v2, v1}, Lcom/android/tools/r8/internal/L9;->a(Lcom/android/tools/r8/graph/H;)V

    return v4

    :cond_2c
    if-nez v11, :cond_2d

    .line 189
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W9;->K()Z

    move-result v11

    if-nez v11, :cond_2d

    .line 190
    instance-of v10, v10, Lcom/android/tools/r8/internal/Ma;

    if-nez v10, :cond_2d

    add-int/lit8 v8, v8, 0x1

    :cond_2d
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_a

    .line 191
    :cond_2e
    invoke-virtual {v0, v12}, Lcom/android/tools/r8/internal/J9;->a(Lcom/android/tools/r8/internal/Zs0;)V

    return v4

    :cond_2f
    const/4 v1, 0x4

    :cond_30
    :goto_14
    return v1
.end method

.method public final a(Lcom/android/tools/r8/internal/Db;Ljava/util/Map;)Lcom/android/tools/r8/graph/H;
    .locals 7

    const/4 v0, 0x1

    .line 11
    iget-object v1, p1, Lcom/android/tools/r8/internal/Db;->d:Ljava/util/List;

    const/4 v2, 0x0

    move v3, v2

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 13
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/ka;

    .line 14
    iget-object v5, p1, Lcom/android/tools/r8/internal/Db;->c:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/M2;

    .line 15
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/G9;

    if-nez v4, :cond_0

    .line 16
    iget-object p2, p0, Lcom/android/tools/r8/internal/J9;->f:Lcom/android/tools/r8/graph/H5;

    iget-object v0, p0, Lcom/android/tools/r8/internal/J9;->a:Lcom/android/tools/r8/graph/y;

    const-string v1, "No frame for target catch range target"

    invoke-static {p2, p1, v1, v0}, Lcom/android/tools/r8/graph/I;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Db;Ljava/lang/String;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H;

    move-result-object p1

    return-object p1

    .line 17
    :cond_0
    invoke-static {v5}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v5

    new-array v6, v0, [Lcom/android/tools/r8/internal/S60;

    aput-object v5, v6, v2

    .line 18
    new-instance v5, Lcom/android/tools/r8/internal/YB;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/tools/r8/internal/YB;-><init>(Ljava/util/List;)V

    .line 19
    iput-boolean v0, v5, Lcom/android/tools/r8/internal/YB;->b:Z

    .line 20
    iget-object v6, p0, Lcom/android/tools/r8/internal/J9;->c:Lcom/android/tools/r8/internal/O8;

    .line 21
    invoke-interface {v6}, Lcom/android/tools/r8/internal/O8;->e()Lcom/android/tools/r8/internal/d9;

    move-result-object v6

    .line 22
    iget-object v4, v4, Lcom/android/tools/r8/internal/G9;->d:Ljava/util/Deque;

    .line 23
    invoke-virtual {v6, v5, v4}, Lcom/android/tools/r8/internal/d9;->a(Ljava/util/Deque;Ljava/util/Deque;)Lcom/android/tools/r8/internal/a9;

    move-result-object v4

    .line 24
    instance-of v5, v4, Lcom/android/tools/r8/internal/b9;

    if-eqz v5, :cond_1

    .line 25
    iget-object p2, p0, Lcom/android/tools/r8/internal/J9;->f:Lcom/android/tools/r8/graph/H5;

    .line 26
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/a9;->a()Lcom/android/tools/r8/internal/b9;

    move-result-object v0

    .line 27
    iget-object v0, v0, Lcom/android/tools/r8/internal/b9;->a:Ljava/lang/String;

    .line 28
    iget-object v1, p0, Lcom/android/tools/r8/internal/J9;->a:Lcom/android/tools/r8/graph/y;

    .line 29
    invoke-static {p2, p1, v0, v1}, Lcom/android/tools/r8/graph/I;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Db;Ljava/lang/String;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/2addr v3, v0

    goto :goto_0

    .line 30
    :cond_2
    iget-object p2, p1, Lcom/android/tools/r8/internal/Db;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/M2;

    .line 31
    iget-object v1, p0, Lcom/android/tools/r8/internal/J9;->c:Lcom/android/tools/r8/internal/O8;

    invoke-interface {v1}, Lcom/android/tools/r8/internal/O8;->e()Lcom/android/tools/r8/internal/d9;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/J9;->e:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->v3:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v0, v2}, Lcom/android/tools/r8/internal/d9;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 32
    iget-object p2, p0, Lcom/android/tools/r8/internal/J9;->f:Lcom/android/tools/r8/graph/H5;

    .line 33
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->D0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not assign "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to java.lang.Throwable"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/J9;->a:Lcom/android/tools/r8/graph/y;

    .line 34
    invoke-static {p2, p1, v0, v1}, Lcom/android/tools/r8/graph/I;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Db;Ljava/lang/String;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;Ljava/util/Map;Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/H9;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    if-eq p3, p1, :cond_3

    .line 192
    sget-boolean p1, Lcom/android/tools/r8/internal/J9;->i:Z

    if-nez p1, :cond_1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    instance-of p1, p3, Lcom/android/tools/r8/internal/ka;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 195
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/W9;->m()Lcom/android/tools/r8/internal/ka;

    move-result-object p1

    .line 196
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/G9;

    if-eqz p1, :cond_2

    .line 197
    iget-object p2, p0, Lcom/android/tools/r8/internal/J9;->c:Lcom/android/tools/r8/internal/O8;

    invoke-virtual {p4, p2, p1}, Lcom/android/tools/r8/internal/H9;->b(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/internal/G9;)Lcom/android/tools/r8/internal/H9;

    move-result-object p2

    iget-object p3, p0, Lcom/android/tools/r8/internal/J9;->c:Lcom/android/tools/r8/internal/O8;

    invoke-virtual {p2, p3, p1}, Lcom/android/tools/r8/internal/H9;->c(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/internal/G9;)Lcom/android/tools/r8/internal/H9;

    move-result-object p4

    goto :goto_1

    .line 198
    :cond_2
    new-instance p4, Lcom/android/tools/r8/internal/hv;

    const-string p1, "No destination frame"

    invoke-direct {p4, p1}, Lcom/android/tools/r8/internal/hv;-><init>(Ljava/lang/String;)V

    .line 199
    :cond_3
    :goto_1
    new-instance p1, Lcom/android/tools/r8/internal/Ys0;

    invoke-direct {p1, p4}, Lcom/android/tools/r8/internal/Ys0;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Zs0;)V
    .locals 1

    .line 200
    sget-boolean v0, Lcom/android/tools/r8/internal/J9;->i:Z

    if-nez v0, :cond_1

    .line 201
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 203
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Zs0;->a()Lcom/android/tools/r8/internal/Ws0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ws0;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/H;

    .line 204
    iget-object v0, p0, Lcom/android/tools/r8/internal/J9;->d:Lcom/android/tools/r8/internal/L9;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/L9;->a(Lcom/android/tools/r8/graph/H;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/ka;)V
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/android/tools/r8/internal/J9;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/android/tools/r8/internal/J9;->b:Lcom/android/tools/r8/graph/G;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->I0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Db;

    .line 207
    iget-object v2, v1, Lcom/android/tools/r8/internal/Db;->a:Lcom/android/tools/r8/internal/ka;

    if-ne v2, p1, :cond_0

    .line 208
    iget-object v2, p0, Lcom/android/tools/r8/internal/J9;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/J9;->g:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/android/tools/r8/internal/mJ0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/mJ0;-><init>(Lcom/android/tools/r8/internal/ka;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;)Z
    .locals 5

    .line 1
    instance-of v0, p1, Lcom/android/tools/r8/internal/Cb;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W9;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/J9;->b:Lcom/android/tools/r8/graph/G;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_1
    if-ltz v0, :cond_5

    .line 4
    iget-object v3, p0, Lcom/android/tools/r8/internal/J9;->b:Lcom/android/tools/r8/graph/G;

    .line 5
    iget-object v3, v3, Lcom/android/tools/r8/graph/G;->h:Ljava/util/List;

    .line 6
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W9;

    if-ne v3, p1, :cond_2

    return v2

    .line 7
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    instance-of v4, v3, Lcom/android/tools/r8/internal/Ma;

    if-nez v4, :cond_4

    .line 9
    instance-of v3, v3, Lcom/android/tools/r8/internal/ka;

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    return v1

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 10
    :cond_5
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instruction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " should be in instructions"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0
.end method
