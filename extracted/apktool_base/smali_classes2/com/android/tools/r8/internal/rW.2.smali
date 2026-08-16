.class public abstract Lcom/android/tools/r8/internal/rW;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Lcom/android/tools/r8/internal/Ol;I)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object p0, p1, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ek;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x28

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    iget-object p0, p1, Lcom/android/tools/r8/internal/Ol;->d:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p1, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ek;->getName()Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 p0, -0x1

    if-eq p2, p0, :cond_1

    const/16 p0, 0x5b

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const/16 p0, 0x2e

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/nW;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6

    .line 12
    invoke-interface {p0}, Lcom/android/tools/r8/internal/nW;->getDescriptorForType()Lcom/android/tools/r8/internal/Cl;

    move-result-object v0

    .line 13
    iget-object v0, v0, Lcom/android/tools/r8/internal/Cl;->g:[Lcom/android/tools/r8/internal/Ol;

    .line 14
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Ol;

    .line 16
    iget-object v2, v1, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    .line 17
    iget v2, v2, Lcom/android/tools/r8/internal/Ek;->e:I

    .line 18
    invoke-static {v2}, Lcom/android/tools/r8/internal/Ck;->a(I)Lcom/android/tools/r8/internal/Ck;

    move-result-object v2

    if-nez v2, :cond_1

    .line 19
    sget-object v2, Lcom/android/tools/r8/internal/Ck;->c:Lcom/android/tools/r8/internal/Ck;

    .line 20
    :cond_1
    sget-object v3, Lcom/android/tools/r8/internal/Ck;->d:Lcom/android/tools/r8/internal/Ck;

    if-ne v2, v3, :cond_0

    .line 21
    invoke-interface {p0, v1}, Lcom/android/tools/r8/internal/nW;->hasField(Lcom/android/tools/r8/internal/Ol;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget-object v1, v1, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Ek;->getName()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25
    :cond_2
    invoke-interface {p0}, Lcom/android/tools/r8/internal/nW;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 26
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Ol;

    .line 27
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 28
    iget-object v3, v2, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    .line 29
    iget-object v3, v3, Lcom/android/tools/r8/internal/Nl;->b:Lcom/android/tools/r8/internal/Ml;

    .line 30
    sget-object v4, Lcom/android/tools/r8/internal/Ml;->k:Lcom/android/tools/r8/internal/Ml;

    if-ne v3, v4, :cond_3

    .line 31
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Ol;->k()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 32
    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 33
    check-cast v4, Lcom/android/tools/r8/internal/nW;

    add-int/lit8 v5, v3, 0x1

    .line 34
    invoke-static {p1, v2, v3}, Lcom/android/tools/r8/internal/rW;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Ol;I)Ljava/lang/String;

    move-result-object v3

    .line 35
    invoke-static {v4, v3, p2}, Lcom/android/tools/r8/internal/rW;->a(Lcom/android/tools/r8/internal/nW;Ljava/lang/String;Ljava/util/ArrayList;)V

    move v3, v5

    goto :goto_2

    .line 36
    :cond_4
    invoke-interface {p0, v2}, Lcom/android/tools/r8/internal/nW;->hasField(Lcom/android/tools/r8/internal/Ol;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 37
    check-cast v1, Lcom/android/tools/r8/internal/nW;

    const/4 v3, -0x1

    .line 38
    invoke-static {p1, v2, v3}, Lcom/android/tools/r8/internal/rW;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Ol;I)Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-static {v1, v2, p2}, Lcom/android/tools/r8/internal/rW;->a(Lcom/android/tools/r8/internal/nW;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/kv0;Lcom/android/tools/r8/internal/zv;Lcom/android/tools/r8/internal/Cl;Lcom/android/tools/r8/internal/qW;I)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    .line 40
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/internal/Cl;->f()Lcom/android/tools/r8/internal/Tk;

    move-result-object v6

    .line 41
    iget-boolean v6, v6, Lcom/android/tools/r8/internal/Tk;->d:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v6, :cond_6

    const/16 v6, 0xb

    if-ne v5, v6, :cond_6

    const/4 v7, 0x0

    .line 42
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/Be;->s()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const/16 v6, 0x10

    if-ne v5, v6, :cond_2

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/Be;->t()I

    move-result v7

    if-eqz v7, :cond_0

    .line 44
    instance-of v5, v2, Lcom/android/tools/r8/internal/vv;

    if-eqz v5, :cond_0

    .line 45
    move-object v5, v2

    check-cast v5, Lcom/android/tools/r8/internal/vv;

    .line 46
    invoke-interface {v4, v5, v3, v7}, Lcom/android/tools/r8/internal/qW;->a(Lcom/android/tools/r8/internal/vv;Lcom/android/tools/r8/internal/Cl;I)V

    goto :goto_0

    :cond_2
    const/16 v6, 0x1a

    if-ne v5, v6, :cond_3

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/Be;->d()Lcom/android/tools/r8/internal/i8;

    move-result-object v9

    goto :goto_0

    .line 48
    :cond_3
    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/Be;->e(I)Z

    move-result v5

    if-nez v5, :cond_0

    :goto_1
    const/16 v2, 0xc

    .line 49
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Be;->a(I)V

    if-eqz v9, :cond_5

    if-eqz v7, :cond_5

    if-eqz v1, :cond_5

    .line 50
    sget v0, Lcom/android/tools/r8/internal/mv0;->f:I

    .line 51
    new-instance v0, Lcom/android/tools/r8/internal/lv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/lv0;-><init>()V

    .line 52
    iget-object v2, v0, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 53
    iget-object v3, v2, Lcom/android/tools/r8/internal/mv0;->d:Ljava/util/List;

    if-nez v3, :cond_4

    .line 54
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 55
    iput-object v3, v2, Lcom/android/tools/r8/internal/mv0;->d:Ljava/util/List;

    .line 56
    :cond_4
    iget-object v2, v0, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 57
    iget-object v2, v2, Lcom/android/tools/r8/internal/mv0;->d:Ljava/util/List;

    .line 58
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/lv0;->a()Lcom/android/tools/r8/internal/mv0;

    move-result-object v0

    .line 60
    invoke-virtual {v1, v7, v0}, Lcom/android/tools/r8/internal/kv0;->a(ILcom/android/tools/r8/internal/mv0;)V

    :cond_5
    return v8

    :cond_6
    and-int/lit8 v6, v5, 0x7

    ushr-int/lit8 v10, v5, 0x3

    .line 61
    iget-object v11, v3, Lcom/android/tools/r8/internal/Cl;->k:[I

    invoke-static {v11, v10}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v11

    if-gez v11, :cond_7

    not-int v11, v11

    sub-int/2addr v11, v8

    :cond_7
    const/4 v12, 0x2

    if-ltz v11, :cond_8

    .line 62
    iget-object v13, v3, Lcom/android/tools/r8/internal/Cl;->l:[I

    aget v11, v13, v11

    if-ge v10, v11, :cond_8

    .line 63
    instance-of v11, v2, Lcom/android/tools/r8/internal/vv;

    if-eqz v11, :cond_b

    .line 64
    move-object v11, v2

    check-cast v11, Lcom/android/tools/r8/internal/vv;

    .line 65
    invoke-interface {v4, v11, v3, v10}, Lcom/android/tools/r8/internal/qW;->a(Lcom/android/tools/r8/internal/vv;Lcom/android/tools/r8/internal/Cl;I)V

    goto :goto_3

    .line 66
    :cond_8
    invoke-interface/range {p4 .. p4}, Lcom/android/tools/r8/internal/qW;->a()I

    move-result v11

    if-ne v11, v8, :cond_b

    .line 67
    iget-object v3, v3, Lcom/android/tools/r8/internal/Cl;->h:[Lcom/android/tools/r8/internal/Ol;

    array-length v11, v3

    .line 68
    sget-object v13, Lcom/android/tools/r8/internal/Ol;->n:[Lcom/android/tools/r8/internal/Tx0;

    .line 69
    sget-object v13, Lcom/android/tools/r8/internal/Ul;->a:Ljava/util/logging/Logger;

    sub-int/2addr v11, v8

    const/4 v13, 0x0

    :goto_2
    if-gt v13, v11, :cond_b

    add-int v14, v13, v11

    .line 70
    div-int/2addr v14, v12

    .line 71
    aget-object v15, v3, v14

    .line 72
    iget-object v7, v15, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    .line 73
    iget v7, v7, Lcom/android/tools/r8/internal/Ek;->d:I

    if-ge v10, v7, :cond_9

    add-int/lit8 v11, v14, -0x1

    goto :goto_2

    :cond_9
    if-le v10, v7, :cond_a

    add-int/lit8 v13, v14, 0x1

    goto :goto_2

    :cond_a
    move-object v9, v15

    :cond_b
    :goto_3
    if-nez v9, :cond_c

    goto :goto_5

    .line 74
    :cond_c
    sget-object v3, Lcom/android/tools/r8/internal/Ol;->n:[Lcom/android/tools/r8/internal/Tx0;

    iget-object v7, v9, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget-object v7, v3, v7

    .line 75
    iget v7, v7, Lcom/android/tools/r8/internal/Tx0;->c:I

    if-ne v6, v7, :cond_d

    const/4 v7, 0x0

    :goto_4
    const/16 v16, 0x0

    goto :goto_6

    .line 76
    :cond_d
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/Ol;->k()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 77
    iget-object v7, v9, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget-object v7, v3, v7

    .line 78
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Tx0;->a()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 79
    iget-object v7, v9, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget-object v3, v3, v7

    if-ne v6, v12, :cond_e

    move/from16 v16, v8

    const/4 v7, 0x0

    goto :goto_6

    :cond_e
    :goto_5
    move v7, v8

    goto :goto_4

    :goto_6
    if-eqz v7, :cond_10

    if-eqz v1, :cond_f

    .line 80
    invoke-virtual {v1, v5, v0}, Lcom/android/tools/r8/internal/kv0;->a(ILcom/android/tools/r8/internal/Be;)Z

    move-result v0

    return v0

    .line 81
    :cond_f
    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/Be;->e(I)Z

    move-result v0

    return v0

    :cond_10
    const/4 v3, 0x3

    if-eqz v16, :cond_16

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/Be;->l()I

    move-result v2

    .line 83
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Be;->d(I)I

    move-result v2

    .line 84
    sget-object v5, Lcom/android/tools/r8/internal/Ol;->n:[Lcom/android/tools/r8/internal/Tx0;

    .line 85
    iget-object v6, v9, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    .line 86
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v5, v5, v6

    .line 87
    sget-object v6, Lcom/android/tools/r8/internal/Tx0;->e:Lcom/android/tools/r8/internal/Tx0;

    if-ne v5, v6, :cond_14

    .line 88
    :cond_11
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/Be;->b()I

    move-result v5

    if-lez v5, :cond_15

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/Be;->f()I

    move-result v5

    .line 90
    iget-object v6, v9, Lcom/android/tools/r8/internal/Ol;->e:Lcom/android/tools/r8/internal/Pl;

    .line 91
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Pl;->e()I

    move-result v6

    if-ne v6, v3, :cond_12

    .line 92
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/Ol;->f()Lcom/android/tools/r8/internal/Hl;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/internal/Hl;->b(I)Lcom/android/tools/r8/internal/Kl;

    move-result-object v5

    .line 93
    invoke-interface {v4, v9, v5}, Lcom/android/tools/r8/internal/qW;->addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/qW;

    goto :goto_7

    .line 94
    :cond_12
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/Ol;->f()Lcom/android/tools/r8/internal/Hl;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/internal/Hl;->a(I)Lcom/android/tools/r8/internal/Kl;

    move-result-object v6

    if-nez v6, :cond_13

    if-eqz v1, :cond_11

    .line 95
    invoke-virtual {v1, v10, v5}, Lcom/android/tools/r8/internal/kv0;->a(II)V

    goto :goto_7

    .line 96
    :cond_13
    invoke-interface {v4, v9, v6}, Lcom/android/tools/r8/internal/qW;->addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/qW;

    goto :goto_7

    .line 97
    :cond_14
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/Be;->b()I

    move-result v1

    if-lez v1, :cond_15

    .line 98
    sget-object v1, Lcom/android/tools/r8/internal/Ol;->n:[Lcom/android/tools/r8/internal/Tx0;

    iget-object v3, v9, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v1, v1, v3

    .line 99
    invoke-interface {v4, v9}, Lcom/android/tools/r8/internal/qW;->a(Lcom/android/tools/r8/internal/Ol;)I

    move-result v3

    .line 100
    invoke-static {v0, v1, v3}, Lcom/android/tools/r8/internal/Xx0;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/Tx0;I)Ljava/lang/Object;

    move-result-object v1

    .line 101
    invoke-interface {v4, v9, v1}, Lcom/android/tools/r8/internal/qW;->addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/qW;

    goto :goto_8

    .line 102
    :cond_15
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Be;->c(I)V

    goto :goto_a

    .line 103
    :cond_16
    iget-object v5, v9, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    .line 104
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/16 v6, 0x9

    if-eq v5, v6, :cond_1c

    const/16 v6, 0xa

    if-eq v5, v6, :cond_1b

    const/16 v2, 0xd

    if-eq v5, v2, :cond_17

    .line 105
    sget-object v1, Lcom/android/tools/r8/internal/Ol;->n:[Lcom/android/tools/r8/internal/Tx0;

    iget-object v2, v9, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    .line 106
    invoke-interface {v4, v9}, Lcom/android/tools/r8/internal/qW;->a(Lcom/android/tools/r8/internal/Ol;)I

    move-result v2

    .line 107
    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/internal/Xx0;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/Tx0;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    .line 108
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/Be;->f()I

    move-result v0

    .line 109
    iget-object v2, v9, Lcom/android/tools/r8/internal/Ol;->e:Lcom/android/tools/r8/internal/Pl;

    .line 110
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Pl;->e()I

    move-result v2

    if-ne v2, v3, :cond_18

    .line 111
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/Ol;->f()Lcom/android/tools/r8/internal/Hl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Hl;->b(I)Lcom/android/tools/r8/internal/Kl;

    move-result-object v0

    goto :goto_9

    .line 112
    :cond_18
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/Ol;->f()Lcom/android/tools/r8/internal/Hl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/Hl;->a(I)Lcom/android/tools/r8/internal/Kl;

    move-result-object v2

    if-nez v2, :cond_1a

    if-eqz v1, :cond_19

    .line 113
    invoke-virtual {v1, v10, v0}, Lcom/android/tools/r8/internal/kv0;->a(II)V

    :cond_19
    return v8

    :cond_1a
    move-object v0, v2

    goto :goto_9

    .line 114
    :cond_1b
    invoke-interface {v4, v0, v2, v9}, Lcom/android/tools/r8/internal/qW;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/fW;

    move-result-object v0

    goto :goto_9

    .line 115
    :cond_1c
    invoke-interface {v4, v0, v2, v9}, Lcom/android/tools/r8/internal/qW;->b(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/fW;

    move-result-object v0

    .line 116
    :goto_9
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/Ol;->k()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 117
    invoke-interface {v4, v9, v0}, Lcom/android/tools/r8/internal/qW;->addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/qW;

    goto :goto_a

    .line 118
    :cond_1d
    invoke-interface {v4, v9, v0}, Lcom/android/tools/r8/internal/qW;->setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/qW;

    :goto_a
    return v8
.end method
