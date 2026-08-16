.class public final Lcom/android/tools/r8/internal/UB;
.super Lcom/android/tools/r8/internal/kC;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    return-object p0
.end method

.method public final a(Ljava/util/Map;)Lcom/android/tools/r8/internal/kC;
    .locals 0

    .line 7
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 8
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/kC;->a(Ljava/util/Set;)Lcom/android/tools/r8/internal/kC;

    return-object p0
.end method

.method public final a(Ljava/util/Set;)Lcom/android/tools/r8/internal/kC;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/kC;->a(Ljava/util/Set;)Lcom/android/tools/r8/internal/kC;

    return-object p0
.end method

.method public final a()Lcom/android/tools/r8/internal/nC;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/UB;->c()Lcom/android/tools/r8/internal/VB;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    return-void
.end method

.method public final a(Ljava/util/Map$Entry;)V
    .locals 1

    .line 5
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-super {p0, v0, p1}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    return-void
.end method

.method public final bridge synthetic b()Lcom/android/tools/r8/internal/nC;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/UB;->c()Lcom/android/tools/r8/internal/VB;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/VB;
    .locals 21

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/tools/r8/internal/kC;->c:I

    if-eqz v1, :cond_a

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_9

    iget-object v4, v0, Lcom/android/tools/r8/internal/kC;->a:Ljava/util/Comparator;

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lcom/android/tools/r8/internal/kC;->d:Z

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/tools/r8/internal/kC;->b:[Ljava/util/Map$Entry;

    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/Map$Entry;

    iput-object v1, v0, Lcom/android/tools/r8/internal/kC;->b:[Ljava/util/Map$Entry;

    :cond_0
    iget-object v1, v0, Lcom/android/tools/r8/internal/kC;->b:[Ljava/util/Map$Entry;

    iget v4, v0, Lcom/android/tools/r8/internal/kC;->c:I

    iget-object v5, v0, Lcom/android/tools/r8/internal/kC;->a:Ljava/util/Comparator;

    instance-of v6, v5, Lcom/android/tools/r8/internal/D40;

    if-eqz v6, :cond_1

    check-cast v5, Lcom/android/tools/r8/internal/D40;

    goto :goto_0

    :cond_1
    new-instance v6, Lcom/android/tools/r8/internal/mf;

    invoke-direct {v6, v5}, Lcom/android/tools/r8/internal/mf;-><init>(Ljava/util/Comparator;)V

    move-object v5, v6

    :goto_0
    sget-object v6, Lcom/android/tools/r8/internal/mV;->b:Lcom/android/tools/r8/internal/lV;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/android/tools/r8/internal/V7;

    invoke-direct {v7, v6, v5}, Lcom/android/tools/r8/internal/V7;-><init>(Lcom/android/tools/r8/internal/mV;Lcom/android/tools/r8/internal/D40;)V

    invoke-static {v1, v2, v4, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    :cond_2
    iput-boolean v3, v0, Lcom/android/tools/r8/internal/kC;->d:Z

    iget v1, v0, Lcom/android/tools/r8/internal/kC;->c:I

    iget-object v4, v0, Lcom/android/tools/r8/internal/kC;->b:[Ljava/util/Map$Entry;

    sget-object v5, Lcom/android/tools/r8/internal/We0;->l:Lcom/android/tools/r8/internal/We0;

    array-length v5, v4

    invoke-static {v1, v5}, Lcom/android/tools/r8/internal/U60;->b(II)V

    const-wide v5, 0x3ff3333333333333L    # 1.2

    invoke-static {v1, v5, v6}, Lcom/android/tools/r8/internal/qA;->a(ID)I

    move-result v5

    add-int/lit8 v10, v5, -0x1

    new-array v7, v5, [Lcom/android/tools/r8/internal/qC;

    new-array v8, v5, [Lcom/android/tools/r8/internal/qC;

    array-length v5, v4

    if-ne v1, v5, :cond_3

    move-object v9, v4

    goto :goto_1

    :cond_3
    new-array v5, v1, [Lcom/android/tools/r8/internal/qC;

    move-object v9, v5

    :goto_1
    move v5, v2

    move v11, v5

    :goto_2
    if-ge v5, v1, :cond_8

    aget-object v6, v4, v5

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/tools/r8/internal/Le;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v14

    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    move-result v15

    invoke-static {v14}, Lcom/android/tools/r8/internal/qA;->a(I)I

    move-result v16

    and-int v16, v16, v10

    invoke-static {v15}, Lcom/android/tools/r8/internal/qA;->a(I)I

    move-result v17

    and-int v17, v17, v10

    aget-object v2, v7, v16

    aget-object v3, v8, v17

    :try_start_0
    invoke-static {v12, v13, v2}, Lcom/android/tools/r8/internal/bf0;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/qC;)Lcom/android/tools/r8/internal/qC;

    move-object v0, v3

    const/16 v18, 0x0

    :goto_3
    if-eqz v0, :cond_6

    move/from16 v19, v10

    iget-object v10, v0, Lcom/android/tools/r8/internal/ZB;->c:Ljava/lang/Object;

    invoke-virtual {v13, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_0
    .catch Lcom/android/tools/r8/internal/Ye0; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v20, v1

    :try_start_1
    const-string v1, "value"

    if-nez v10, :cond_5

    const/4 v10, 0x1

    add-int/lit8 v1, v18, 0x1

    const/16 v10, 0x8

    if-gt v1, v10, :cond_4

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/qC;->c()Lcom/android/tools/r8/internal/qC;

    move-result-object v0

    move/from16 v18, v1

    move/from16 v10, v19

    move/from16 v1, v20

    goto :goto_3

    :catch_0
    move/from16 v0, v20

    goto :goto_5

    :cond_4
    new-instance v0, Lcom/android/tools/r8/internal/Ye0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ye0;-><init>()V

    throw v0

    :cond_5
    invoke-static {v1, v6, v0}, Lcom/android/tools/r8/internal/nC;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
    :try_end_1
    .catch Lcom/android/tools/r8/internal/Ye0; {:try_start_1 .. :try_end_1} :catch_0

    :catch_1
    move v0, v1

    goto :goto_5

    :cond_6
    move/from16 v20, v1

    move/from16 v19, v10

    if-nez v3, :cond_7

    if-nez v2, :cond_7

    invoke-static {v6, v12, v13}, Lcom/android/tools/r8/internal/bf0;->a(Ljava/util/Map$Entry;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/qC;

    move-result-object v0

    goto :goto_4

    :cond_7
    new-instance v0, Lcom/android/tools/r8/internal/oC;

    invoke-direct {v0, v12, v13, v2, v3}, Lcom/android/tools/r8/internal/oC;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/qC;Lcom/android/tools/r8/internal/qC;)V

    :goto_4
    aput-object v0, v7, v16

    aput-object v0, v8, v17

    aput-object v0, v9, v5

    xor-int v0, v14, v15

    add-int/2addr v11, v0

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move/from16 v10, v19

    move/from16 v1, v20

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto/16 :goto_2

    :goto_5
    invoke-static {v0, v4}, Lcom/android/tools/r8/internal/SK;->a(I[Ljava/util/Map$Entry;)Lcom/android/tools/r8/internal/SK;

    move-result-object v0

    return-object v0

    :cond_8
    move/from16 v19, v10

    new-instance v0, Lcom/android/tools/r8/internal/We0;

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/android/tools/r8/internal/We0;-><init>([Lcom/android/tools/r8/internal/qC;[Lcom/android/tools/r8/internal/qC;[Ljava/util/Map$Entry;II)V

    return-object v0

    :cond_9
    iget-object v1, v0, Lcom/android/tools/r8/internal/kC;->b:[Ljava/util/Map$Entry;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    new-instance v3, Lcom/android/tools/r8/internal/Rm0;

    invoke-direct {v3, v2, v1}, Lcom/android/tools/r8/internal/Rm0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_a
    sget-object v1, Lcom/android/tools/r8/internal/We0;->l:Lcom/android/tools/r8/internal/We0;

    return-object v1
.end method
