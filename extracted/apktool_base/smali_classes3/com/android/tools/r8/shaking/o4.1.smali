.class public final Lcom/android/tools/r8/shaking/o4;
.super Lcom/android/tools/r8/shaking/i4;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;

.field public final d:Lcom/android/tools/r8/shaking/i4$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/shaking/q3$a;Lcom/android/tools/r8/shaking/i4$a;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/i4;-><init>()V

    iget-object v0, p1, Lcom/android/tools/r8/shaking/q3$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/tools/r8/shaking/o4;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/q3$a;->b:Ljava/util/List;

    iput-object p1, p0, Lcom/android/tools/r8/shaking/o4;->c:Ljava/util/List;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/o4;->d:Lcom/android/tools/r8/shaking/i4$a;

    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;ILjava/util/List;ILcom/android/tools/r8/shaking/i4$a;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    move/from16 v1, p1

    move/from16 v11, p3

    move/from16 v12, p5

    .line 42
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v13, 0x1

    if-ge v1, v2, :cond_1f

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v14, 0x2e

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_c

    const/16 v4, 0x3c

    if-eq v2, v4, :cond_7

    const/16 v4, 0x3f

    if-eq v2, v4, :cond_2

    .line 44
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v11, v4, :cond_1

    add-int/lit8 v4, v11, 0x1

    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v2, v5, :cond_0

    goto :goto_1

    :cond_0
    move v11, v4

    goto/16 :goto_5

    :cond_1
    :goto_1
    return v3

    .line 45
    :cond_2
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/r4;

    .line 46
    sget-boolean v4, Lcom/android/tools/r8/shaking/o4;->e:Z

    if-nez v4, :cond_4

    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/r4;->e()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 47
    :cond_4
    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v11, v4, :cond_6

    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v14, :cond_5

    goto :goto_3

    .line 48
    :cond_5
    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/r4;->b()Lcom/android/tools/r8/shaking/r4$b;

    move-result-object v2

    add-int/lit8 v3, v11, 0x1

    .line 49
    invoke-virtual {v8, v11, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    monitor-enter v2

    .line 50
    :try_start_0
    iput-object v4, v2, Lcom/android/tools/r8/shaking/r4$b;->b:Ljava/lang/String;

    .line 51
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v12, v12, 0x1

    move v11, v3

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 52
    monitor-exit v2

    throw v0

    :cond_6
    :goto_3
    return v3

    .line 53
    :cond_7
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/r4;

    .line 54
    sget-boolean v4, Lcom/android/tools/r8/shaking/o4;->e:Z

    if-nez v4, :cond_9

    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/r4;->d()Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 55
    :cond_9
    :goto_4
    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/r4;->a()Lcom/android/tools/r8/shaking/r4$a;

    move-result-object v2

    .line 56
    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/r4$a;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 57
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v11

    if-lt v4, v5, :cond_b

    .line 58
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v11

    invoke-virtual {v8, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_6

    .line 59
    :cond_a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v11

    add-int/lit8 v12, v12, 0x1

    .line 60
    const-string v3, ">"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    move v11, v2

    :goto_5
    add-int/2addr v1, v13

    goto/16 :goto_0

    :cond_b
    :goto_6
    return v3

    .line 61
    :cond_c
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/r4;

    .line 62
    sget-boolean v5, Lcom/android/tools/r8/shaking/o4;->e:Z

    if-nez v5, :cond_e

    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/r4;->e()Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_7

    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 63
    :cond_e
    :goto_7
    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/r4;->b()Lcom/android/tools/r8/shaking/r4$b;

    move-result-object v15

    .line 64
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v5, v1, 0x1

    if-le v2, v5, :cond_f

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_f

    move/from16 v16, v13

    goto :goto_8

    :cond_f
    move/from16 v16, v3

    :goto_8
    if-eqz v16, :cond_10

    .line 65
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v6, v1, 0x2

    if-le v2, v6, :cond_10

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_10

    move v2, v13

    goto :goto_9

    :cond_10
    move v2, v3

    :goto_9
    const/4 v4, 0x2

    if-eqz v2, :cond_11

    add-int/lit8 v1, v1, 0x3

    :goto_a
    move v7, v1

    goto :goto_b

    :cond_11
    if-eqz v16, :cond_12

    add-int/2addr v1, v4

    goto :goto_a

    :cond_12
    move v7, v5

    .line 66
    :goto_b
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v6, 0x5b

    if-ne v7, v1, :cond_1a

    .line 67
    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/android/tools/r8/shaking/r4$b;->a(Ljava/lang/String;)V

    if-eqz v2, :cond_13

    return v13

    :cond_13
    const/16 v0, 0x5d

    if-eqz v16, :cond_16

    .line 68
    sget-object v1, Lcom/android/tools/r8/shaking/i4$a;->b:Lcom/android/tools/r8/shaking/i4$a;

    if-eq v10, v1, :cond_15

    .line 69
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v4, :cond_14

    goto :goto_c

    :cond_14
    add-int/lit8 v2, v1, -0x1

    .line 70
    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v0, :cond_15

    sub-int/2addr v1, v4

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_15

    return v3

    :cond_15
    :goto_c
    return v13

    .line 71
    :cond_16
    invoke-virtual {v8, v14, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_17

    goto :goto_d

    .line 72
    :cond_17
    sget-object v1, Lcom/android/tools/r8/shaking/i4$a;->b:Lcom/android/tools/r8/shaking/i4$a;

    if-eq v10, v1, :cond_19

    .line 73
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v4, :cond_18

    goto :goto_e

    :cond_18
    add-int/lit8 v2, v1, -0x1

    .line 74
    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v0, :cond_19

    sub-int/2addr v1, v4

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_19

    :goto_d
    return v3

    :cond_19
    :goto_e
    return v13

    :cond_1a
    move v5, v11

    .line 75
    :goto_f
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v5, v1, :cond_1e

    .line 76
    invoke-virtual {v8, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/android/tools/r8/shaking/r4$b;->a(Ljava/lang/String;)V

    if-nez v16, :cond_1b

    .line 77
    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v14, :cond_1b

    add-int/lit8 v6, v12, 0x1

    move-object/from16 v1, p0

    move v2, v7

    move-object/from16 v3, p2

    move v4, v5

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    .line 78
    invoke-static/range {v1 .. v7}, Lcom/android/tools/r8/shaking/o4;->a(Ljava/lang/String;ILjava/lang/String;ILjava/util/List;ILcom/android/tools/r8/shaking/i4$a;)Z

    move-result v0

    return v0

    .line 79
    :cond_1b
    sget-object v1, Lcom/android/tools/r8/shaking/i4$a;->c:Lcom/android/tools/r8/shaking/i4$a;

    if-ne v10, v1, :cond_1c

    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_1c

    add-int/lit8 v6, v12, 0x1

    move-object/from16 v1, p0

    move v2, v7

    move-object/from16 v3, p2

    move v4, v5

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    .line 80
    invoke-static/range {v1 .. v7}, Lcom/android/tools/r8/shaking/o4;->a(Ljava/lang/String;ILjava/lang/String;ILjava/util/List;ILcom/android/tools/r8/shaking/i4$a;)Z

    move-result v0

    return v0

    :cond_1c
    add-int/lit8 v17, v12, 0x1

    move-object/from16 v1, p0

    move v2, v7

    move-object/from16 v3, p2

    move v4, v5

    move/from16 v18, v5

    move-object/from16 v5, p4

    move/from16 v19, v6

    move/from16 v6, v17

    move/from16 v17, v7

    move-object/from16 v7, p6

    .line 81
    invoke-static/range {v1 .. v7}, Lcom/android/tools/r8/shaking/o4;->a(Ljava/lang/String;ILjava/lang/String;ILjava/util/List;ILcom/android/tools/r8/shaking/i4$a;)Z

    move-result v1

    if-eqz v1, :cond_1d

    return v13

    :cond_1d
    add-int/lit8 v5, v18, 0x1

    move/from16 v7, v17

    move/from16 v6, v19

    goto :goto_f

    :cond_1e
    move/from16 v17, v7

    .line 82
    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/android/tools/r8/shaking/r4$b;->a(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v6, v12, 0x1

    move-object/from16 v1, p0

    move/from16 v2, v17

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    .line 84
    invoke-static/range {v1 .. v7}, Lcom/android/tools/r8/shaking/o4;->a(Ljava/lang/String;ILjava/lang/String;ILjava/util/List;ILcom/android/tools/r8/shaking/i4$a;)Z

    move-result v0

    return v0

    .line 85
    :cond_1f
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v11, v0, :cond_20

    return v13

    :cond_20
    return v3
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/shaking/i4;
    .locals 11

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/dH;

    const/16 v1, 0x10

    .line 4
    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v2, p0, Lcom/android/tools/r8/shaking/o4;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/shaking/r4;

    .line 7
    invoke-virtual {v3}, Lcom/android/tools/r8/shaking/r4;->f()Lcom/android/tools/r8/shaking/r4;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Lcom/android/tools/r8/shaking/r4;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9
    invoke-virtual {v3}, Lcom/android/tools/r8/shaking/r4;->a()Lcom/android/tools/r8/shaking/r4$a;

    move-result-object v3

    .line 10
    iget v4, v3, Lcom/android/tools/r8/shaking/r4$a;->b:I

    .line 11
    invoke-virtual {v3}, Lcom/android/tools/r8/shaking/r4$a;->g()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-virtual {v0, v4, v3}, Lcom/android/tools/r8/internal/dH;->a(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dH;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 15
    iget-object v2, p0, Lcom/android/tools/r8/shaking/o4;->b:Ljava/lang/String;

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    .line 17
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_8

    .line 18
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3c

    if-ne v7, v8, :cond_7

    add-int/lit8 v7, v5, 0x1

    move v8, v7

    .line 19
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 20
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3e

    if-eq v9, v10, :cond_2

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 21
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v8, v9, :cond_3

    goto :goto_5

    .line 22
    :cond_3
    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 23
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    sget-object v9, Lcom/android/tools/r8/internal/zq0;->a:[C

    move v9, v4

    .line 24
    :goto_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_5

    .line 25
    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 26
    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 27
    :cond_5
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_6

    goto :goto_4

    .line 28
    :cond_6
    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 29
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v8, 0x1

    move v5, v8

    :cond_7
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 31
    :cond_8
    :goto_5
    sget-boolean v0, Lcom/android/tools/r8/shaking/o4;->e:Z

    if-nez v0, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v5, v0, :cond_9

    goto :goto_6

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_a
    :goto_6
    if-ge v6, v5, :cond_b

    .line 32
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    :cond_b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 35
    invoke-static {v0}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 37
    new-instance v0, Lcom/android/tools/r8/shaking/i4$b;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/shaking/i4$b;-><init>(Lcom/android/tools/r8/graph/M2;)V

    return-object v0

    .line 38
    :cond_c
    new-instance p1, Lcom/android/tools/r8/shaking/q3$a;

    invoke-direct {p1, v0, v1}, Lcom/android/tools/r8/shaking/q3$a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 39
    new-instance v0, Lcom/android/tools/r8/shaking/o4;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/o4;->d:Lcom/android/tools/r8/shaking/i4$a;

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/shaking/o4;-><init>(Lcom/android/tools/r8/shaking/q3$a;Lcom/android/tools/r8/shaking/i4$a;)V

    return-object v0

    .line 40
    :cond_d
    new-instance p1, Lcom/android/tools/r8/shaking/q3$a;

    iget-object v0, p0, Lcom/android/tools/r8/shaking/o4;->b:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Lcom/android/tools/r8/shaking/q3$a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 41
    new-instance v0, Lcom/android/tools/r8/shaking/o4;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/o4;->d:Lcom/android/tools/r8/shaking/i4$a;

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/shaking/o4;-><init>(Lcom/android/tools/r8/shaking/q3$a;Lcom/android/tools/r8/shaking/i4$a;)V

    return-object v0
.end method

.method public final a(Ljava/util/function/Predicate;)Ljava/lang/Iterable;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/o4;->c:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/qK;->a(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/o4;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)Z
    .locals 7

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/o4;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/tools/r8/shaking/o4;->c:Ljava/util/List;

    iget-object v6, p0, Lcom/android/tools/r8/shaking/o4;->d:Lcom/android/tools/r8/shaking/i4$a;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/tools/r8/shaking/o4;->a(Ljava/lang/String;ILjava/lang/String;ILjava/util/List;ILcom/android/tools/r8/shaking/i4$a;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/shaking/o4;->c:Ljava/util/List;

    new-instance v1, Lcom/android/tools/r8/shaking/Db;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/Db;-><init>()V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/tools/r8/shaking/o4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/tools/r8/shaking/o4;

    iget-object v0, p0, Lcom/android/tools/r8/shaking/o4;->d:Lcom/android/tools/r8/shaking/i4$a;

    iget-object v2, p1, Lcom/android/tools/r8/shaking/o4;->d:Lcom/android/tools/r8/shaking/i4$a;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/shaking/o4;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/o4;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/o4;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Lcom/android/tools/r8/shaking/o4;->d:Lcom/android/tools/r8/shaking/i4$a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/o4;->b:Ljava/lang/String;

    return-object v0
.end method
