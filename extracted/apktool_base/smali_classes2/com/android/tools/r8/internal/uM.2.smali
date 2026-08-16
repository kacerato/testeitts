.class public abstract Lcom/android/tools/r8/internal/uM;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/android/tools/r8/internal/Ty;Lcom/android/tools/r8/internal/by0;)Lcom/android/tools/r8/internal/p50;
    .locals 19

    move-object/from16 v0, p1

    const-string v1, "c"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/tools/r8/internal/by0;->a:Lcom/android/tools/r8/internal/rM;

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.metadata.jvm.serialization.JvmStringTable"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/android/tools/r8/internal/p50;

    sget-object v2, Lcom/android/tools/r8/internal/pM;->a:Lcom/android/tools/r8/internal/yv;

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v3, Lcom/android/tools/r8/internal/nM;->h:Lcom/android/tools/r8/internal/nM;

    new-instance v3, Lcom/android/tools/r8/internal/iM;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/iM;-><init>()V

    iget-object v4, v0, Lcom/android/tools/r8/internal/rM;->b:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/tools/r8/internal/cf;->a(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_1

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lcom/android/tools/r8/internal/kM;

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/kM;->c()Lcom/android/tools/r8/internal/mM;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/mM;->isInitialized()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    throw v0

    :cond_1
    iget v4, v3, Lcom/android/tools/r8/internal/iM;->c:I

    const/4 v6, 0x1

    and-int/2addr v4, v6

    if-eq v4, v6, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    iget-object v8, v3, Lcom/android/tools/r8/internal/iM;->d:Ljava/util/List;

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, v3, Lcom/android/tools/r8/internal/iM;->d:Ljava/util/List;

    iget v4, v3, Lcom/android/tools/r8/internal/iM;->c:I

    or-int/2addr v4, v6

    iput v4, v3, Lcom/android/tools/r8/internal/iM;->c:I

    :cond_2
    iget-object v4, v3, Lcom/android/tools/r8/internal/iM;->d:Ljava/util/List;

    invoke-static {v5, v4}, Lcom/android/tools/r8/internal/Qy;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    iget-object v4, v0, Lcom/android/tools/r8/internal/rM;->d:Ljava/util/LinkedHashSet;

    iget v5, v3, Lcom/android/tools/r8/internal/iM;->c:I

    const/4 v8, 0x2

    and-int/2addr v5, v8

    if-eq v5, v8, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    iget-object v9, v3, Lcom/android/tools/r8/internal/iM;->e:Ljava/util/List;

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, v3, Lcom/android/tools/r8/internal/iM;->e:Ljava/util/List;

    iget v5, v3, Lcom/android/tools/r8/internal/iM;->c:I

    or-int/2addr v5, v8

    iput v5, v3, Lcom/android/tools/r8/internal/iM;->c:I

    :cond_3
    iget-object v5, v3, Lcom/android/tools/r8/internal/iM;->e:Ljava/util/List;

    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/Qy;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/iM;->c()Lcom/android/tools/r8/internal/nM;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nM;->isInitialized()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nM;->a()I

    move-result v4

    invoke-static {v4}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result v5

    add-int/2addr v5, v4

    const/16 v9, 0x1000

    if-le v5, v9, :cond_4

    move v5, v9

    :cond_4
    new-instance v10, Lcom/android/tools/r8/internal/He;

    new-array v5, v5, [B

    invoke-direct {v10, v2, v5}, Lcom/android/tools/r8/internal/He;-><init>(Ljava/io/OutputStream;[B)V

    invoke-virtual {v10, v4}, Lcom/android/tools/r8/internal/He;->g(I)V

    invoke-virtual {v3, v10}, Lcom/android/tools/r8/internal/nM;->a(Lcom/android/tools/r8/internal/He;)V

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/He;->a()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/O0;->a()I

    move-result v3

    if-le v3, v9, :cond_5

    goto :goto_1

    :cond_5
    move v9, v3

    :goto_1
    new-instance v3, Lcom/android/tools/r8/internal/He;

    new-array v4, v9, [B

    invoke-direct {v3, v2, v4}, Lcom/android/tools/r8/internal/He;-><init>(Ljava/io/OutputStream;[B)V

    move-object/from16 v4, p0

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/O0;->a(Lcom/android/tools/r8/internal/He;)V

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/He;->a()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1c

    sget-boolean v4, Lcom/android/tools/r8/internal/N6;->a:Z

    const v5, 0xfffe

    if-nez v4, :cond_b

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v10, v2

    move v11, v7

    :goto_2
    if-ge v11, v10, :cond_8

    aget-byte v12, v2, v11

    and-int/lit16 v13, v12, 0xff

    int-to-char v13, v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-gt v6, v12, :cond_6

    const/16 v13, 0x80

    if-ge v12, v13, :cond_6

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v8, v8, 0x2

    :goto_3
    if-lt v8, v5, :cond_7

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    move v8, v7

    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    new-array v2, v7, [Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    if-eqz v2, :cond_a

    goto/16 :goto_e

    :cond_a
    invoke-static {v6}, Lcom/android/tools/r8/internal/N6;->a(I)V

    throw v3

    :cond_b
    array-length v4, v2

    mul-int/lit8 v4, v4, 0x8

    const/4 v9, 0x6

    add-int/2addr v4, v9

    const/4 v10, 0x7

    div-int/2addr v4, v10

    new-array v11, v4, [B

    move v12, v7

    move v13, v12

    move v14, v13

    :goto_5
    add-int/lit8 v15, v4, -0x1

    if-ge v12, v15, :cond_d

    if-nez v13, :cond_c

    aget-byte v13, v2, v14

    and-int/lit8 v13, v13, 0x7f

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    move v13, v10

    goto :goto_6

    :cond_c
    aget-byte v15, v2, v14

    and-int/lit16 v15, v15, 0xff

    ushr-int/2addr v15, v13

    add-int/lit8 v16, v13, 0x7

    and-int/lit8 v16, v16, 0x7

    add-int/lit8 v14, v14, 0x1

    aget-byte v17, v2, v14

    shl-int v18, v6, v16

    add-int/lit8 v18, v18, -0x1

    and-int v17, v17, v18

    rsub-int/lit8 v13, v13, 0x8

    shl-int v13, v17, v13

    add-int/2addr v15, v13

    int-to-byte v13, v15

    aput-byte v13, v11, v12

    move/from16 v13, v16

    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_d
    if-lez v4, :cond_12

    sget-boolean v10, Lcom/android/tools/r8/internal/N6;->b:Z

    if-nez v10, :cond_f

    if-eqz v13, :cond_e

    goto :goto_7

    :cond_e
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "The last chunk cannot start from the input byte since otherwise at least one bit will remain unprocessed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_f
    :goto_7
    if-nez v10, :cond_11

    array-length v10, v2

    sub-int/2addr v10, v6

    if-ne v14, v10, :cond_10

    goto :goto_8

    :cond_10
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "The last 7-bit chunk should be encoded from the last input byte: "

    const-string v3, " != "

    invoke-static {v14, v1, v3}, Lcom/android/tools/r8/internal/Jt0;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v2

    sub-int/2addr v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_11
    :goto_8
    aget-byte v2, v2, v14

    and-int/lit16 v2, v2, 0xff

    ushr-int/2addr v2, v13

    int-to-byte v2, v2

    aput-byte v2, v11, v15

    :cond_12
    move v2, v7

    :goto_9
    if-ge v2, v4, :cond_13

    aget-byte v10, v11, v2

    add-int/2addr v10, v6

    and-int/lit8 v10, v10, 0x7f

    int-to-byte v10, v10

    aput-byte v10, v11, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_13
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v10, v7

    move v12, v10

    move v13, v12

    :goto_a
    if-ge v10, v4, :cond_19

    if-lt v8, v5, :cond_17

    sget-boolean v14, Lcom/android/tools/r8/internal/N6;->b:Z

    if-nez v14, :cond_15

    const v14, 0xffff

    if-gt v8, v14, :cond_14

    goto :goto_b

    :cond_14
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Produced strings cannot contain more than 65535 bytes: "

    invoke-static {v8, v1}, Lcom/android/tools/r8/internal/T60;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_15
    :goto_b
    new-instance v8, Ljava/lang/String;

    sub-int v14, v10, v12

    invoke-direct {v8, v11, v12, v14}, Ljava/lang/String;-><init>([BII)V

    if-nez v13, :cond_16

    const-string v12, "\uffff"

    invoke-virtual {v12, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v13, v6

    goto :goto_c

    :cond_16
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_c
    move v8, v7

    move v12, v10

    :cond_17
    aget-byte v14, v11, v10

    if-nez v14, :cond_18

    add-int/lit8 v8, v8, 0x2

    goto :goto_d

    :cond_18
    add-int/lit8 v8, v8, 0x1

    :goto_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_19
    if-ltz v8, :cond_1a

    new-instance v5, Ljava/lang/String;

    sub-int/2addr v4, v12

    invoke-direct {v5, v11, v12, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    if-eqz v2, :cond_1b

    :goto_e
    iget-object v0, v0, Lcom/android/tools/r8/internal/rM;->a:Ljava/util/ArrayList;

    new-array v3, v7, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/internal/p50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_1b
    invoke-static {v9}, Lcom/android/tools/r8/internal/N6;->a(I)V

    throw v3

    :cond_1c
    invoke-static {v7}, Lcom/android/tools/r8/internal/N6;->a(I)V

    throw v3

    :cond_1d
    new-instance v0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    throw v0
.end method
