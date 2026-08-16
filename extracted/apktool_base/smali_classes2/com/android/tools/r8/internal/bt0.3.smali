.class public abstract Lcom/android/tools/r8/internal/bt0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/u1;

.field public final c:Ljava/util/IdentityHashMap;

.field public final d:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/bt0;->c:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/bt0;->d:Ljava/util/IdentityHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/bt0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/bt0;->b:Lcom/android/tools/r8/graph/u1;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/android/tools/r8/internal/bt0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v1, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 123
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/bt0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/bt0;->a(Lcom/android/tools/r8/graph/I2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    iget-object p1, p1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    .line 124
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/H2;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 22
    new-instance v13, Lcom/android/tools/r8/graph/H2;

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/bt0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 24
    iget-object v4, v1, Lcom/android/tools/r8/graph/H2;->u:Lcom/android/tools/r8/ProgramResource$Kind;

    .line 25
    iget-object v5, v1, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/E0;->J0()Lcom/android/tools/r8/graph/Q;

    move-result-object v6

    .line 27
    iget-object v2, v1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-nez v2, :cond_0

    const/4 v8, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/bt0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    move-object v8, v2

    :goto_0
    iget-object v2, v1, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    .line 28
    iget-object v9, v2, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 29
    array-length v10, v9

    new-array v11, v10, [Lcom/android/tools/r8/graph/M2;

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    if-ge v14, v10, :cond_2

    .line 30
    aget-object v7, v9, v14

    .line 31
    invoke-virtual {v0, v7}, Lcom/android/tools/r8/internal/bt0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v12

    .line 32
    aput-object v12, v11, v14

    if-eq v12, v7, :cond_1

    const/4 v12, 0x1

    goto :goto_2

    :cond_1
    const/4 v12, 0x0

    :goto_2
    or-int/2addr v15, v12

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_2
    if-eqz v15, :cond_3

    move-object v9, v11

    .line 33
    :cond_3
    iget-object v7, v2, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    if-eq v9, v7, :cond_4

    new-instance v2, Lcom/android/tools/r8/graph/O2;

    invoke-direct {v2, v9}, Lcom/android/tools/r8/graph/O2;-><init>([Lcom/android/tools/r8/graph/M2;)V

    :cond_4
    move-object v9, v2

    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/E0;->Z0()Lcom/android/tools/r8/graph/L2;

    move-result-object v10

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/E0;->U0()Lcom/android/tools/r8/graph/o5;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 36
    new-instance v7, Lcom/android/tools/r8/graph/o5;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/o5;->a()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/bt0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/android/tools/r8/graph/o5;-><init>(Lcom/android/tools/r8/graph/M2;)V

    move-object v11, v7

    goto :goto_3

    :cond_5
    const/4 v11, 0x0

    .line 37
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/E0;->V0()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/bt0;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/E0;->W0()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/bt0;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v23

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/E0;->X0()Ljava/util/List;

    move-result-object v2

    .line 40
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    move-object/from16 v18, v2

    move-object/from16 v26, v10

    move-object/from16 v25, v11

    move-object/from16 v24, v12

    goto :goto_6

    .line 41
    :cond_6
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    invoke-direct {v7, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/4 v15, 0x0

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v2

    move-object/from16 v2, v17

    check-cast v2, Lcom/android/tools/r8/graph/P5;

    move-object/from16 v17, v14

    .line 43
    iget-object v14, v2, Lcom/android/tools/r8/graph/P5;->b:Lcom/android/tools/r8/graph/l1;

    move-object/from16 v24, v12

    .line 44
    invoke-virtual {v0, v14}, Lcom/android/tools/r8/internal/bt0;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object v12

    move-object/from16 v25, v11

    .line 45
    new-instance v11, Lcom/android/tools/r8/graph/P5;

    move-object/from16 v26, v10

    .line 46
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/P5;->c()Lcom/android/tools/r8/graph/H3$e;

    move-result-object v10

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/P5;->a()Ljava/util/List;

    move-result-object v2

    invoke-direct {v11, v12, v10, v2}, Lcom/android/tools/r8/graph/P5;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H3$e;Ljava/util/List;)V

    .line 47
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v12, v14, :cond_7

    const/4 v2, 0x1

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    :goto_5
    or-int/2addr v15, v2

    move-object/from16 v14, v17

    move-object/from16 v2, v18

    move-object/from16 v12, v24

    move-object/from16 v11, v25

    move-object/from16 v10, v26

    goto :goto_4

    :cond_8
    move-object/from16 v18, v2

    move-object/from16 v26, v10

    move-object/from16 v25, v11

    move-object/from16 v24, v12

    if-eqz v15, :cond_9

    move-object/from16 v27, v7

    goto :goto_7

    :cond_9
    :goto_6
    move-object/from16 v27, v18

    .line 48
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/E0;->O0()Lcom/android/tools/r8/graph/i3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/bt0;->a(Lcom/android/tools/r8/graph/i3;)Lcom/android/tools/r8/graph/i3;

    move-result-object v14

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/E0;->Q0()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/bt0;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    .line 50
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/E0;->N0()Lcom/android/tools/r8/graph/H3$b;

    move-result-object v16

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v17

    .line 52
    invoke-static {}, Lcom/android/tools/r8/graph/q3;->empty()Lcom/android/tools/r8/graph/q3;

    move-result-object v18

    new-instance v2, Lcom/android/tools/r8/internal/f61;

    move-object/from16 v19, v2

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/f61;-><init>(Lcom/android/tools/r8/internal/bt0;Lcom/android/tools/r8/graph/H2;)V

    iget-object v2, v0, Lcom/android/tools/r8/internal/bt0;->b:Lcom/android/tools/r8/graph/u1;

    .line 53
    iget-boolean v2, v2, Lcom/android/tools/r8/graph/u1;->D6:Z

    move/from16 v20, v2

    .line 54
    iget-object v2, v1, Lcom/android/tools/r8/graph/H2;->z:Lcom/android/tools/r8/graph/H2$a;

    move-object/from16 v21, v2

    .line 55
    iget-object v2, v1, Lcom/android/tools/r8/graph/H2;->y:Lcom/android/tools/r8/internal/Jb0;

    move-object/from16 v22, v2

    move-object v2, v13

    move-object v7, v8

    move-object v8, v9

    move-object/from16 v9, v26

    move-object/from16 v10, v25

    move-object/from16 v11, v24

    move-object/from16 v12, v23

    move-object v1, v13

    move-object/from16 v13, v27

    .line 56
    invoke-direct/range {v2 .. v22}, Lcom/android/tools/r8/graph/H2;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/ProgramResource$Kind;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/Q;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/O2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/o5;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/graph/i3;Ljava/util/List;Lcom/android/tools/r8/graph/H3$b;Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/graph/q3;Lcom/android/tools/r8/graph/N4$a;ZLcom/android/tools/r8/graph/H2$a;Lcom/android/tools/r8/internal/Jb0;)V

    .line 57
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/E0;->k1()Ljava/util/List;

    move-result-object v2

    .line 58
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/tools/r8/internal/bt0;->a(Ljava/util/List;Ljava/util/function/Consumer;)[Lcom/android/tools/r8/graph/g1;

    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/E0;->a([Lcom/android/tools/r8/graph/g1;)V

    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/E0;->A1()Ljava/util/List;

    move-result-object v2

    .line 61
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/tools/r8/internal/bt0;->a(Ljava/util/List;Ljava/util/function/Consumer;)[Lcom/android/tools/r8/graph/g1;

    move-result-object v2

    .line 62
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/E0;->b([Lcom/android/tools/r8/graph/g1;)V

    move-object v2, v1

    move-object/from16 v1, p1

    .line 63
    iget-object v3, v1, Lcom/android/tools/r8/graph/H2;->v:Lcom/android/tools/r8/internal/Ib;

    if-eqz v3, :cond_e

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/H2;->G1()Lcom/android/tools/r8/internal/Ib;

    move-result-object v3

    .line 65
    sget-boolean v4, Lcom/android/tools/r8/graph/H2;->C:Z

    if-nez v4, :cond_b

    iget-object v5, v2, Lcom/android/tools/r8/graph/H2;->v:Lcom/android/tools/r8/internal/Ib;

    if-nez v5, :cond_a

    goto :goto_8

    :cond_a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_b
    :goto_8
    if-nez v4, :cond_d

    if-eqz v3, :cond_c

    goto :goto_9

    .line 66
    :cond_c
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 67
    :cond_d
    :goto_9
    iput-object v3, v2, Lcom/android/tools/r8/graph/H2;->v:Lcom/android/tools/r8/internal/Ib;

    .line 68
    :cond_e
    iget-boolean v3, v1, Lcom/android/tools/r8/graph/H2;->w:Z

    if-eqz v3, :cond_f

    const/4 v3, 0x1

    .line 69
    iput-boolean v3, v2, Lcom/android/tools/r8/graph/H2;->w:Z

    .line 70
    :cond_f
    iget-object v3, v1, Lcom/android/tools/r8/graph/H2;->x:Lcom/android/tools/r8/kotlin/p;

    if-eqz v3, :cond_12

    .line 71
    sget-boolean v4, Lcom/android/tools/r8/graph/H2;->C:Z

    if-nez v4, :cond_11

    .line 72
    iget-object v4, v2, Lcom/android/tools/r8/graph/H2;->x:Lcom/android/tools/r8/kotlin/p;

    .line 73
    sget-object v5, Lcom/android/tools/r8/kotlin/b0;->b:Lcom/android/tools/r8/kotlin/a0;

    if-ne v4, v5, :cond_10

    goto :goto_a

    .line 74
    :cond_10
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 75
    :cond_11
    :goto_a
    iput-object v3, v2, Lcom/android/tools/r8/graph/H2;->x:Lcom/android/tools/r8/kotlin/p;

    .line 76
    :cond_12
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    .line 77
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 78
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/tools/r8/internal/bt0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V

    :cond_13
    return-object v2
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/bt0;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/I2;)Lcom/android/tools/r8/graph/I2;
    .locals 9

    .line 125
    iget-object v0, p0, Lcom/android/tools/r8/internal/bt0;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/I2;

    if-nez v0, :cond_3

    .line 126
    iget-object v0, p1, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/bt0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 127
    iget-object v1, p1, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 128
    array-length v2, v1

    new-array v3, v2, [Lcom/android/tools/r8/graph/M2;

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v5, v2, :cond_1

    .line 129
    aget-object v7, v1, v5

    .line 130
    invoke-virtual {p0, v7}, Lcom/android/tools/r8/internal/bt0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    .line 131
    aput-object v8, v3, v5

    if-eq v8, v7, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    move v7, v4

    :goto_1
    or-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-eqz v6, :cond_2

    move-object v1, v3

    .line 132
    :cond_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/bt0;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/android/tools/r8/internal/bt0;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method

.method public a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 2

    .line 134
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/android/tools/r8/internal/bt0;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 136
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/bt0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/bt0;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1

    .line 138
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/bt0;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/N4;
    .locals 1

    .line 79
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/e61;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/e61;-><init>(Lcom/android/tools/r8/internal/bt0;)V

    .line 80
    iget-object p1, p1, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 81
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/O4;->a(Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/graph/O4;

    move-result-object p1

    .line 82
    new-instance v0, Lcom/android/tools/r8/graph/N4;

    invoke-direct {v0, p2, p1}, Lcom/android/tools/r8/graph/N4;-><init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/O4;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/i3;)Lcom/android/tools/r8/graph/i3;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/graph/i3;->a:Lcom/android/tools/r8/graph/M2;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/bt0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    if-eq v1, v0, :cond_4

    .line 3
    new-instance p1, Lcom/android/tools/r8/graph/i3;

    invoke-direct {p1, v1}, Lcom/android/tools/r8/graph/i3;-><init>(Lcom/android/tools/r8/graph/M2;)V

    return-object p1

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/i3;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 5
    sget-boolean v1, Lcom/android/tools/r8/internal/bt0;->e:Z

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/i3;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/bt0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    if-eq v1, v0, :cond_4

    .line 7
    new-instance p1, Lcom/android/tools/r8/graph/i3;

    invoke-direct {p1, v1}, Lcom/android/tools/r8/graph/i3;-><init>(Lcom/android/tools/r8/graph/A2;)V

    :cond_4
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/j1;
    .locals 3

    .line 115
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/bt0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/tools/r8/internal/bt0;->b:Lcom/android/tools/r8/graph/u1;

    .line 119
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->L0()V

    const/4 v2, 0x0

    .line 120
    invoke-virtual {p1, v1, v0, v2}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/u1;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    .line 121
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/bt0;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V

    return-object v0

    :cond_0
    return-object p1
.end method

.method public a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;
    .locals 3

    .line 93
    iget-object v0, p1, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/bt0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 94
    iget-object v1, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/bt0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 95
    iget-object v2, p0, Lcom/android/tools/r8/internal/bt0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v2, v1, v0, p1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 5

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 18
    iget-object v2, p0, Lcom/android/tools/r8/internal/bt0;->c:Ljava/util/IdentityHashMap;

    .line 19
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/internal/g61;

    invoke-direct {v4, p0, v1}, Lcom/android/tools/r8/internal/g61;-><init>(Lcom/android/tools/r8/internal/bt0;Lcom/android/tools/r8/graph/H2;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 11

    .line 96
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 97
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/e4;

    .line 99
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/e4;->b()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 100
    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/bt0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    goto :goto_1

    :cond_1
    move-object v7, v6

    .line 101
    :goto_1
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/e4;->d()Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 102
    invoke-virtual {p0, v8}, Lcom/android/tools/r8/internal/bt0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    .line 103
    :cond_2
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/e4;->c()Lcom/android/tools/r8/graph/L2;

    move-result-object v9

    if-ne v7, v5, :cond_4

    if-eq v6, v8, :cond_3

    goto :goto_2

    :cond_3
    move v10, v2

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v10, 0x1

    :goto_3
    if-eqz v10, :cond_9

    if-eqz v5, :cond_9

    if-eqz v8, :cond_9

    .line 104
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/e4;->c()Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 105
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/M2;->C0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/M2;->C0()Ljava/lang/String;

    move-result-object v8

    .line 106
    invoke-static {v5, v8}, Lcom/android/tools/r8/internal/Bl;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 107
    iget-object v8, p0, Lcom/android/tools/r8/internal/bt0;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v8, v5}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v9

    goto :goto_5

    .line 108
    :cond_5
    sget-boolean v5, Lcom/android/tools/r8/internal/bt0;->e:Z

    if-nez v5, :cond_7

    iget-object v8, p0, Lcom/android/tools/r8/internal/bt0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v8

    .line 109
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_4

    .line 110
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_4
    if-nez v5, :cond_9

    .line 111
    iget-object v5, p0, Lcom/android/tools/r8/internal/bt0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v5

    if-nez v5, :cond_8

    goto :goto_5

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 112
    :cond_9
    :goto_5
    new-instance v5, Lcom/android/tools/r8/graph/e4;

    .line 113
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/e4;->a()I

    move-result v4

    invoke-direct {v5, v4, v7, v6, v9}, Lcom/android/tools/r8/graph/e4;-><init>(ILcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)V

    .line 114
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v3, v10

    goto/16 :goto_0

    :cond_a
    if-eqz v3, :cond_b

    return-object v0

    :cond_b
    :goto_6
    return-object p1
.end method

.method public final a()V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/bt0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/bt0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->m()Lcom/android/tools/r8/shaking/i;

    move-result-object v0

    .line 10
    iget-object v1, v0, Lcom/android/tools/r8/shaking/i;->o:Ljava/util/Set;

    .line 11
    new-instance v2, Lcom/android/tools/r8/internal/h61;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/h61;-><init>(Lcom/android/tools/r8/internal/bt0;)V

    .line 12
    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 13
    iget-object v0, v0, Lcom/android/tools/r8/shaking/i;->n:Ljava/util/Set;

    .line 14
    new-instance v1, Lcom/android/tools/r8/internal/i61;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/i61;-><init>(Lcom/android/tools/r8/internal/bt0;)V

    .line 15
    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public abstract a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V
.end method

.method public abstract a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V
.end method

.method public abstract a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;)V
.end method

.method public final a(Ljava/util/List;Ljava/util/function/Consumer;)[Lcom/android/tools/r8/graph/g1;
    .locals 5

    if-nez p1, :cond_0

    .line 83
    sget-object p1, Lcom/android/tools/r8/graph/g1;->o:[Lcom/android/tools/r8/graph/g1;

    return-object p1

    .line 84
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/tools/r8/graph/g1;

    const/4 v1, 0x0

    .line 85
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 86
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/g1;

    .line 87
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/l1;

    .line 88
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/bt0;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object v4

    if-eq v4, v3, :cond_1

    .line 89
    iget-object v3, p0, Lcom/android/tools/r8/internal/bt0;->a:Lcom/android/tools/r8/graph/y;

    .line 90
    invoke-virtual {v2, v3, v4, p2}, Lcom/android/tools/r8/graph/g1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/l1;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/g1;

    move-result-object v3

    .line 91
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p0, v2, v4}, Lcom/android/tools/r8/internal/bt0;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;)V

    move-object v2, v3

    .line 92
    :cond_1
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public abstract b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
.end method

.method public final b(Ljava/util/List;)Ljava/util/List;
    .locals 7

    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 6
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/p5;

    .line 9
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/p5;->a()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    .line 10
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/bt0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 11
    new-instance v6, Lcom/android/tools/r8/graph/p5;

    invoke-direct {v6, v5}, Lcom/android/tools/r8/graph/p5;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v5, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    or-int/2addr v3, v4

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    return-object v0

    :cond_3
    :goto_2
    return-object p1
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/A2;)V
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/bt0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/bt0;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V

    :cond_0
    return-void
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/l1;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/bt0;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/bt0;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;)V

    :cond_0
    return-void
.end method

.method public final c(Ljava/util/List;)Ljava/util/List;
    .locals 6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/A5;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/A5;->a()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/bt0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    if-eq v5, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    or-int/2addr v3, v4

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    :goto_2
    return-object p1

    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    new-instance v2, Lcom/android/tools/r8/graph/A5;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/graph/A5;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    return-object p1
.end method
