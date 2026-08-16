.class public Lcom/android/tools/r8/internal/gy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/android/tools/r8/internal/XQ;

.field public b:[I

.field public c:[I

.field public d:[I

.field public e:[I

.field public f:S

.field public g:S

.field public h:I

.field public i:[I


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/XQ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/gy;->a:Lcom/android/tools/r8/internal/XQ;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/jr0;Ljava/lang/Object;)I
    .locals 9

    .line 1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/high16 p1, 0x400000

    or-int/2addr p0, p1

    return p0

    .line 3
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/tools/r8/internal/tt0;->d(Ljava/lang/String;)Lcom/android/tools/r8/internal/tt0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/tt0;->b()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p0, p1, v1}, Lcom/android/tools/r8/internal/gy;->a(Lcom/android/tools/r8/internal/jr0;Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 6
    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/XQ;

    .line 7
    iget-short v0, p1, Lcom/android/tools/r8/internal/XQ;->b:S

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 8
    iget p1, p1, Lcom/android/tools/r8/internal/XQ;->e:I

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/jr0;->b(ILjava/lang/String;)I

    move-result p0

    const/high16 p1, 0xc00000

    or-int/2addr p0, p1

    return p0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/jr0;->n:[Lcom/android/tools/r8/internal/ir0;

    if-nez v0, :cond_3

    const/16 v0, 0x10

    .line 10
    new-array v2, v0, [Lcom/android/tools/r8/internal/ir0;

    iput-object v2, p0, Lcom/android/tools/r8/internal/jr0;->n:[Lcom/android/tools/r8/internal/ir0;

    .line 11
    new-array v0, v0, [Lcom/android/tools/r8/internal/ir0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/jr0;->m:[Lcom/android/tools/r8/internal/ir0;

    .line 12
    :cond_3
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 13
    iget-object v2, p0, Lcom/android/tools/r8/internal/jr0;->n:[Lcom/android/tools/r8/internal/ir0;

    array-length v3, v2

    rem-int v3, v0, v3

    aget-object v2, v2, v3

    :goto_0
    if-eqz v2, :cond_4

    .line 14
    iget-object v3, v2, Lcom/android/tools/r8/internal/ir0;->b:Lcom/android/tools/r8/internal/XQ;

    if-eq v3, p1, :cond_4

    .line 15
    iget-object v2, v2, Lcom/android/tools/r8/internal/ir0;->c:Lcom/android/tools/r8/internal/ir0;

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    goto :goto_3

    .line 16
    :cond_5
    iget v2, p0, Lcom/android/tools/r8/internal/jr0;->l:I

    iget-object v3, p0, Lcom/android/tools/r8/internal/jr0;->n:[Lcom/android/tools/r8/internal/ir0;

    array-length v4, v3

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    if-le v2, v4, :cond_8

    .line 17
    array-length v2, v3

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x1

    .line 18
    new-array v4, v3, [Lcom/android/tools/r8/internal/ir0;

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_7

    .line 19
    iget-object v5, p0, Lcom/android/tools/r8/internal/jr0;->n:[Lcom/android/tools/r8/internal/ir0;

    aget-object v5, v5, v2

    :goto_2
    if-eqz v5, :cond_6

    .line 20
    iget-object v6, v5, Lcom/android/tools/r8/internal/ir0;->b:Lcom/android/tools/r8/internal/XQ;

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    rem-int/2addr v6, v3

    .line 21
    iget-object v7, v5, Lcom/android/tools/r8/internal/ir0;->c:Lcom/android/tools/r8/internal/ir0;

    .line 22
    aget-object v8, v4, v6

    iput-object v8, v5, Lcom/android/tools/r8/internal/ir0;->c:Lcom/android/tools/r8/internal/ir0;

    .line 23
    aput-object v5, v4, v6

    move-object v5, v7

    goto :goto_2

    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 24
    :cond_7
    iput-object v4, p0, Lcom/android/tools/r8/internal/jr0;->n:[Lcom/android/tools/r8/internal/ir0;

    .line 25
    :cond_8
    iget v2, p0, Lcom/android/tools/r8/internal/jr0;->l:I

    iget-object v3, p0, Lcom/android/tools/r8/internal/jr0;->m:[Lcom/android/tools/r8/internal/ir0;

    array-length v4, v3

    if-ne v2, v4, :cond_9

    .line 26
    array-length v2, v3

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Lcom/android/tools/r8/internal/ir0;

    .line 27
    array-length v4, v3

    invoke-static {v3, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    iput-object v2, p0, Lcom/android/tools/r8/internal/jr0;->m:[Lcom/android/tools/r8/internal/ir0;

    .line 29
    :cond_9
    new-instance v2, Lcom/android/tools/r8/internal/ir0;

    iget v1, p0, Lcom/android/tools/r8/internal/jr0;->l:I

    invoke-direct {v2, v1, p1}, Lcom/android/tools/r8/internal/ir0;-><init>(ILcom/android/tools/r8/internal/XQ;)V

    .line 30
    iget-object p1, p0, Lcom/android/tools/r8/internal/jr0;->n:[Lcom/android/tools/r8/internal/ir0;

    array-length v3, p1

    rem-int/2addr v0, v3

    .line 31
    aget-object v3, p1, v0

    iput-object v3, v2, Lcom/android/tools/r8/internal/ir0;->c:Lcom/android/tools/r8/internal/ir0;

    .line 32
    aput-object v2, p1, v0

    .line 33
    iget-object p1, p0, Lcom/android/tools/r8/internal/jr0;->m:[Lcom/android/tools/r8/internal/ir0;

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/jr0;->l:I

    aput-object v2, p1, v1

    .line 34
    :goto_3
    iget p1, v2, Lcom/android/tools/r8/internal/ir0;->a:I

    add-int/lit16 v0, p1, 0x82

    const v1, 0x7fffffff

    and-int v8, v0, v1

    .line 35
    iget-object v0, p0, Lcom/android/tools/r8/internal/jr0;->e:[Lcom/android/tools/r8/internal/hr0;

    array-length v1, v0

    rem-int v1, v8, v1

    aget-object v0, v0, v1

    :goto_4
    const-string v5, ""

    if-eqz v0, :cond_b

    .line 36
    iget v1, v0, Lcom/android/tools/r8/internal/hr0;->b:I

    const/16 v2, 0x82

    if-ne v1, v2, :cond_a

    iget v1, v0, Lcom/android/tools/r8/internal/hr0;->h:I

    if-ne v1, v8, :cond_a

    iget-wide v1, v0, Lcom/android/tools/r8/internal/hr0;->f:J

    int-to-long v3, p1

    cmp-long v1, v1, v3

    if-nez v1, :cond_a

    iget-object v1, v0, Lcom/android/tools/r8/internal/hr0;->e:Ljava/lang/String;

    .line 37
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 38
    iget p0, v0, Lcom/android/tools/r8/internal/hr0;->a:I

    goto :goto_5

    .line 39
    :cond_a
    iget-object v0, v0, Lcom/android/tools/r8/internal/hr0;->i:Lcom/android/tools/r8/internal/hr0;

    goto :goto_4

    .line 40
    :cond_b
    new-instance v0, Lcom/android/tools/r8/internal/hr0;

    iget v3, p0, Lcom/android/tools/r8/internal/jr0;->j:I

    int-to-long v6, p1

    const/16 v4, 0x82

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/tools/r8/internal/hr0;-><init>(IILjava/lang/String;JI)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/jr0;->a(Lcom/android/tools/r8/internal/hr0;)I

    move-result p0

    :goto_5
    const/high16 p1, 0x1000000

    or-int/2addr p0, p1

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/jr0;Ljava/lang/String;I)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 41
    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v3, 0x400002

    const/16 v4, 0x46

    if-eq v2, v4, :cond_c

    const/high16 v5, 0x800000

    const/16 v6, 0x4c

    if-eq v2, v6, :cond_b

    const v7, 0x400001

    const/16 v8, 0x53

    if-eq v2, v8, :cond_a

    const/16 v9, 0x56

    if-eq v2, v9, :cond_9

    const/16 v9, 0x49

    if-eq v2, v9, :cond_a

    const v10, 0x400004

    const/16 v11, 0x4a

    if-eq v2, v11, :cond_8

    const/16 v12, 0x5a

    if-eq v2, v12, :cond_a

    const v13, 0x400003

    const/16 v14, 0x5b

    if-eq v2, v14, :cond_0

    packed-switch v2, :pswitch_data_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 43
    const-string v2, "Invalid descriptor: "

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/Ee0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    return v13

    :cond_0
    add-int/lit8 v2, p2, 0x1

    .line 45
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-ne v15, v14, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-eq v14, v4, :cond_7

    if-eq v14, v6, :cond_6

    if-eq v14, v8, :cond_5

    if-eq v14, v12, :cond_4

    if-eq v14, v9, :cond_3

    if-eq v14, v11, :cond_2

    packed-switch v14, :pswitch_data_1

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 49
    const-string v2, "Invalid descriptor fragment: "

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/Ee0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    move v3, v13

    goto :goto_1

    :pswitch_2
    const v3, 0x40000b

    goto :goto_1

    :pswitch_3
    const v3, 0x40000a

    goto :goto_1

    :cond_2
    move v3, v10

    goto :goto_1

    :cond_3
    move v3, v7

    goto :goto_1

    :cond_4
    const v3, 0x400009

    goto :goto_1

    :cond_5
    const v3, 0x40000c

    goto :goto_1

    :cond_6
    add-int/lit8 v3, v2, 0x1

    .line 51
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/jr0;->b(Ljava/lang/String;)I

    move-result v0

    or-int v3, v0, v5

    :cond_7
    :goto_1
    sub-int v2, v2, p2

    shl-int/lit8 v0, v2, 0x1a

    or-int/2addr v0, v3

    return v0

    :cond_8
    return v10

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_a
    :pswitch_4
    return v7

    :cond_b
    add-int/lit8 v2, p2, 0x1

    .line 53
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/jr0;->b(Ljava/lang/String;)I

    move-result v0

    or-int/2addr v0, v5

    return v0

    :cond_c
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_4
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Lcom/android/tools/r8/internal/jr0;I[II)Z
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 289
    aget v2, p2, p3

    const/4 v3, 0x0

    if-ne v2, v1, :cond_0

    return v3

    :cond_0
    const v4, 0x3ffffff

    and-int/2addr v4, v1

    const v5, 0x400005

    if-ne v4, v5, :cond_2

    if-ne v2, v5, :cond_1

    return v3

    :cond_1
    move v1, v5

    :cond_2
    const/4 v4, 0x1

    if-nez v2, :cond_3

    .line 290
    aput v1, p2, p3

    return v4

    :cond_3
    const/high16 v6, -0x4000000

    and-int v7, v2, v6

    const/high16 v8, 0x3c00000

    const/high16 v9, 0x800000

    if-nez v7, :cond_5

    and-int v10, v2, v8

    if-ne v10, v9, :cond_4

    goto :goto_0

    :cond_4
    if-ne v2, v5, :cond_10

    and-int v0, v1, v6

    if-nez v0, :cond_14

    and-int v0, v1, v8

    if-ne v0, v9, :cond_10

    goto/16 :goto_8

    :cond_5
    :goto_0
    if-ne v1, v5, :cond_6

    return v3

    :cond_6
    const/high16 v5, -0x400000

    and-int v10, v1, v5

    and-int/2addr v5, v2

    const-string v11, "java/lang/Object"

    if-ne v10, v5, :cond_f

    and-int v5, v2, v8

    if-ne v5, v9, :cond_e

    and-int v5, v1, v6

    or-int/2addr v5, v9

    const v6, 0xfffff

    and-int/2addr v1, v6

    and-int/2addr v6, v2

    .line 291
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v7, 0x20

    if-ge v1, v6, :cond_7

    int-to-long v8, v1

    int-to-long v12, v6

    :goto_1
    shl-long/2addr v12, v7

    or-long v7, v8, v12

    move-wide v15, v7

    goto :goto_2

    :cond_7
    int-to-long v8, v6

    int-to-long v12, v1

    goto :goto_1

    :goto_2
    add-int v7, v1, v6

    const/16 v8, 0x83

    add-int/2addr v7, v8

    const v9, 0x7fffffff

    and-int/2addr v7, v9

    .line 292
    iget-object v9, v0, Lcom/android/tools/r8/internal/jr0;->e:[Lcom/android/tools/r8/internal/hr0;

    array-length v10, v9

    rem-int v10, v7, v10

    aget-object v9, v9, v10

    :goto_3
    if-eqz v9, :cond_9

    .line 293
    iget v10, v9, Lcom/android/tools/r8/internal/hr0;->b:I

    if-ne v10, v8, :cond_8

    iget v10, v9, Lcom/android/tools/r8/internal/hr0;->h:I

    if-ne v10, v7, :cond_8

    iget-wide v12, v9, Lcom/android/tools/r8/internal/hr0;->f:J

    cmp-long v10, v12, v15

    if-nez v10, :cond_8

    .line 294
    iget v0, v9, Lcom/android/tools/r8/internal/hr0;->g:I

    goto/16 :goto_5

    .line 295
    :cond_8
    iget-object v9, v9, Lcom/android/tools/r8/internal/hr0;->i:Lcom/android/tools/r8/internal/hr0;

    goto :goto_3

    .line 296
    :cond_9
    iget-object v8, v0, Lcom/android/tools/r8/internal/jr0;->k:[Lcom/android/tools/r8/internal/hr0;

    aget-object v1, v8, v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/hr0;->e:Ljava/lang/String;

    .line 297
    aget-object v6, v8, v6

    iget-object v6, v6, Lcom/android/tools/r8/internal/hr0;->e:Ljava/lang/String;

    .line 298
    iget-object v8, v0, Lcom/android/tools/r8/internal/jr0;->a:Lcom/android/tools/r8/internal/he;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 299
    const-class v8, Lcom/android/tools/r8/internal/he;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    const/16 v9, 0x2e

    const/16 v10, 0x2f

    .line 300
    :try_start_0
    invoke-virtual {v1, v10, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v3, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 301
    :try_start_1
    invoke-virtual {v6, v10, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v3, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 302
    invoke-virtual {v12, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_a

    move-object v11, v1

    goto :goto_4

    .line 303
    :cond_a
    invoke-virtual {v8, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_b

    move-object v11, v6

    goto :goto_4

    .line 304
    :cond_b
    invoke-virtual {v12}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v8}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_4

    .line 305
    :cond_c
    invoke-virtual {v12}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v12

    .line 306
    invoke-virtual {v12, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 307
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    .line 308
    :cond_d
    :goto_4
    invoke-virtual {v0, v11}, Lcom/android/tools/r8/internal/jr0;->b(Ljava/lang/String;)I

    move-result v1

    .line 309
    new-instance v6, Lcom/android/tools/r8/internal/hr0;

    iget v13, v0, Lcom/android/tools/r8/internal/jr0;->j:I

    const/16 v14, 0x83

    move-object v12, v6

    move/from16 v17, v7

    invoke-direct/range {v12 .. v17}, Lcom/android/tools/r8/internal/hr0;-><init>(IIJI)V

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/internal/jr0;->b(Lcom/android/tools/r8/internal/hr0;)Lcom/android/tools/r8/internal/hr0;

    move-result-object v0

    iput v1, v0, Lcom/android/tools/r8/internal/hr0;->g:I

    move v0, v1

    :goto_5
    or-int v1, v5, v0

    goto :goto_8

    :catch_0
    move-exception v0

    .line 310
    new-instance v1, Ljava/lang/TypeNotPresentException;

    invoke-direct {v1, v6, v0}, Ljava/lang/TypeNotPresentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 311
    new-instance v2, Ljava/lang/TypeNotPresentException;

    invoke-direct {v2, v1, v0}, Ljava/lang/TypeNotPresentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_e
    and-int/2addr v1, v6

    add-int/2addr v1, v6

    or-int/2addr v1, v9

    .line 312
    invoke-virtual {v0, v11}, Lcom/android/tools/r8/internal/jr0;->b(Ljava/lang/String;)I

    move-result v0

    :goto_6
    or-int/2addr v1, v0

    goto :goto_8

    :cond_f
    and-int v5, v1, v6

    if-nez v5, :cond_11

    and-int v10, v1, v8

    if-ne v10, v9, :cond_10

    goto :goto_7

    :cond_10
    const/high16 v1, 0x400000

    goto :goto_8

    :cond_11
    :goto_7
    if-eqz v5, :cond_12

    and-int/2addr v1, v8

    if-eq v1, v9, :cond_12

    add-int/2addr v5, v6

    :cond_12
    if-eqz v7, :cond_13

    and-int v1, v2, v8

    if-eq v1, v9, :cond_13

    add-int/2addr v7, v6

    .line 313
    :cond_13
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    or-int/2addr v1, v9

    invoke-virtual {v0, v11}, Lcom/android/tools/r8/internal/jr0;->b(Ljava/lang/String;)I

    move-result v0

    goto :goto_6

    :cond_14
    :goto_8
    if-eq v1, v2, :cond_15

    .line 314
    aput v1, p2, p3

    return v4

    :cond_15
    return v3
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 69
    iget-short v0, p0, Lcom/android/tools/r8/internal/gy;->g:S

    if-lez v0, :cond_0

    .line 70
    iget-object v1, p0, Lcom/android/tools/r8/internal/gy;->e:[I

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/tools/r8/internal/gy;->g:S

    aget v0, v1, v0

    return v0

    .line 71
    :cond_0
    iget-short v0, p0, Lcom/android/tools/r8/internal/gy;->f:S

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/tools/r8/internal/gy;->f:S

    neg-int v0, v0

    const/high16 v1, 0x1800000

    or-int/2addr v0, v1

    return v0
.end method

.method public final a(II)I
    .locals 8

    const/high16 v0, -0x4000000

    and-int/2addr v0, p1

    const/high16 v1, 0x3c00000

    and-int/2addr v1, p1

    const/high16 v2, 0x1400000

    const/high16 v3, 0x400000

    const v4, 0x400003

    const v5, 0x400004

    const/high16 v6, 0x100000

    const v7, 0xfffff

    if-ne v1, v2, :cond_2

    .line 257
    iget-object p2, p0, Lcom/android/tools/r8/internal/gy;->b:[I

    and-int v1, p1, v7

    aget p2, p2, v1

    add-int/2addr v0, p2

    and-int/2addr p1, v6

    if-eqz p1, :cond_1

    if-eq v0, v5, :cond_0

    if-ne v0, v4, :cond_1

    :cond_0
    return v3

    :cond_1
    return v0

    :cond_2
    const/high16 v2, 0x1800000

    if-ne v1, v2, :cond_5

    .line 258
    iget-object v1, p0, Lcom/android/tools/r8/internal/gy;->c:[I

    and-int v2, p1, v7

    sub-int/2addr p2, v2

    aget p2, v1, p2

    add-int/2addr v0, p2

    and-int/2addr p1, v6

    if-eqz p1, :cond_4

    if-eq v0, v5, :cond_3

    if-ne v0, v4, :cond_4

    :cond_3
    return v3

    :cond_4
    return v0

    :cond_5
    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/jr0;I)I
    .locals 8

    const v0, 0x400006

    if-eq p2, v0, :cond_0

    const/high16 v1, -0x400000

    and-int/2addr v1, p2

    const/high16 v2, 0xc00000

    if-eq v1, v2, :cond_0

    const/high16 v2, 0x1000000

    if-ne v1, v2, :cond_5

    :cond_0
    const/4 v1, 0x0

    .line 80
    :goto_0
    iget v2, p0, Lcom/android/tools/r8/internal/gy;->h:I

    if-ge v1, v2, :cond_5

    .line 81
    iget-object v2, p0, Lcom/android/tools/r8/internal/gy;->i:[I

    aget v2, v2, v1

    const/high16 v3, -0x4000000

    and-int/2addr v3, v2

    const/high16 v4, 0x3c00000

    and-int/2addr v4, v2

    const v5, 0xfffff

    and-int v6, v2, v5

    const/high16 v7, 0x1400000

    if-ne v4, v7, :cond_1

    .line 82
    iget-object v2, p0, Lcom/android/tools/r8/internal/gy;->b:[I

    aget v2, v2, v6

    :goto_1
    add-int/2addr v2, v3

    goto :goto_2

    :cond_1
    const/high16 v7, 0x1800000

    if-ne v4, v7, :cond_2

    .line 83
    iget-object v2, p0, Lcom/android/tools/r8/internal/gy;->c:[I

    array-length v4, v2

    sub-int/2addr v4, v6

    aget v2, v2, v4

    goto :goto_1

    :cond_2
    :goto_2
    if-ne p2, v2, :cond_4

    const/high16 v1, 0x800000

    if-ne p2, v0, :cond_3

    .line 84
    iget-object p2, p1, Lcom/android/tools/r8/internal/jr0;->c:Ljava/lang/String;

    .line 85
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/jr0;->b(Ljava/lang/String;)I

    move-result p1

    :goto_3
    or-int/2addr p1, v1

    return p1

    :cond_3
    and-int/2addr p2, v5

    .line 86
    iget-object v0, p1, Lcom/android/tools/r8/internal/jr0;->k:[Lcom/android/tools/r8/internal/hr0;

    .line 87
    aget-object p2, v0, p2

    .line 88
    iget-object p2, p2, Lcom/android/tools/r8/internal/hr0;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/jr0;->b(Ljava/lang/String;)I

    move-result p1

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return p2
.end method

.method public final a(I)V
    .locals 2

    .line 72
    iget-short v0, p0, Lcom/android/tools/r8/internal/gy;->g:S

    if-lt v0, p1, :cond_0

    sub-int/2addr v0, p1

    int-to-short p1, v0

    .line 73
    iput-short p1, p0, Lcom/android/tools/r8/internal/gy;->g:S

    return-void

    .line 74
    :cond_0
    iget-short v1, p0, Lcom/android/tools/r8/internal/gy;->f:S

    sub-int/2addr p1, v0

    sub-int/2addr v1, p1

    int-to-short p1, v1

    iput-short p1, p0, Lcom/android/tools/r8/internal/gy;->f:S

    const/4 p1, 0x0

    .line 75
    iput-short p1, p0, Lcom/android/tools/r8/internal/gy;->g:S

    return-void
.end method

.method public a(IILcom/android/tools/r8/internal/hr0;Lcom/android/tools/r8/internal/jr0;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const v6, 0x400002

    const/high16 v7, 0x800000

    const v8, 0x400001

    const v9, 0x400003

    const v10, 0x400004

    const/high16 v11, 0x400000

    packed-switch v1, :pswitch_data_0

    const/high16 v12, 0x1400000

    packed-switch v1, :pswitch_data_1

    const/high16 v14, 0x1800000

    const/high16 v15, 0x3c00000

    const/4 v5, 0x2

    const/4 v13, 0x1

    packed-switch v1, :pswitch_data_2

    const/16 v14, 0x5b

    const/4 v15, 0x4

    const/4 v12, 0x0

    packed-switch v1, :pswitch_data_3

    packed-switch v1, :pswitch_data_4

    .line 89
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 90
    :pswitch_0
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/gy;->a(I)V

    .line 91
    iget-object v1, v3, Lcom/android/tools/r8/internal/hr0;->e:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lcom/android/tools/r8/internal/gy;->a(Lcom/android/tools/r8/internal/jr0;Ljava/lang/String;)V

    return-void

    .line 92
    :pswitch_1
    iget-object v1, v3, Lcom/android/tools/r8/internal/hr0;->e:Ljava/lang/String;

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/gy;->a()I

    .line 94
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v14, :cond_0

    .line 95
    invoke-virtual {v0, v4, v1}, Lcom/android/tools/r8/internal/gy;->a(Lcom/android/tools/r8/internal/jr0;Ljava/lang/String;)V

    return-void

    .line 96
    :cond_0
    invoke-virtual {v4, v1}, Lcom/android/tools/r8/internal/jr0;->b(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    .line 97
    :pswitch_2
    iget-object v1, v3, Lcom/android/tools/r8/internal/hr0;->e:Ljava/lang/String;

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/gy;->a()I

    .line 99
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v14, :cond_1

    .line 100
    const-string v2, "["

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-virtual {v0, v4, v1}, Lcom/android/tools/r8/internal/gy;->a(Lcom/android/tools/r8/internal/jr0;Ljava/lang/String;)V

    return-void

    .line 102
    :cond_1
    invoke-virtual {v4, v1}, Lcom/android/tools/r8/internal/jr0;->b(Ljava/lang/String;)I

    move-result v1

    const/high16 v2, 0x4800000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    .line 103
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/gy;->a()I

    packed-switch v2, :pswitch_data_5

    .line 104
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :pswitch_4
    const v1, 0x4400004

    .line 105
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    :pswitch_5
    const v1, 0x4400001

    .line 106
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    :pswitch_6
    const v1, 0x440000c

    .line 107
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    :pswitch_7
    const v1, 0x440000a

    .line 108
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    :pswitch_8
    const v1, 0x4400003

    .line 109
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    :pswitch_9
    const v1, 0x4400002

    .line 110
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    :pswitch_a
    const v1, 0x440000b

    .line 111
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    :pswitch_b
    const v1, 0x4400009

    .line 112
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    .line 113
    :pswitch_c
    iget-object v1, v3, Lcom/android/tools/r8/internal/hr0;->e:Ljava/lang/String;

    invoke-virtual {v4, v2, v1}, Lcom/android/tools/r8/internal/jr0;->b(ILjava/lang/String;)I

    move-result v1

    const/high16 v2, 0xc00000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    .line 114
    :pswitch_d
    iget-object v1, v3, Lcom/android/tools/r8/internal/hr0;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/gy;->a(Ljava/lang/String;)V

    .line 115
    iget-object v1, v3, Lcom/android/tools/r8/internal/hr0;->e:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lcom/android/tools/r8/internal/gy;->a(Lcom/android/tools/r8/internal/jr0;Ljava/lang/String;)V

    return-void

    .line 116
    :pswitch_e
    iget-object v2, v3, Lcom/android/tools/r8/internal/hr0;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/gy;->a(Ljava/lang/String;)V

    const/16 v2, 0xb8

    if-eq v1, v2, :cond_4

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/gy;->a()I

    move-result v2

    const/16 v6, 0xb7

    if-ne v1, v6, :cond_4

    .line 118
    iget-object v1, v3, Lcom/android/tools/r8/internal/hr0;->d:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v6, 0x3c

    if-ne v1, v6, :cond_4

    .line 119
    iget-object v1, v0, Lcom/android/tools/r8/internal/gy;->i:[I

    if-nez v1, :cond_2

    .line 120
    new-array v1, v5, [I

    iput-object v1, v0, Lcom/android/tools/r8/internal/gy;->i:[I

    .line 121
    :cond_2
    iget-object v1, v0, Lcom/android/tools/r8/internal/gy;->i:[I

    array-length v1, v1

    .line 122
    iget v5, v0, Lcom/android/tools/r8/internal/gy;->h:I

    if-lt v5, v1, :cond_3

    add-int/2addr v5, v13

    mul-int/lit8 v6, v1, 0x2

    .line 123
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    new-array v5, v5, [I

    .line 124
    iget-object v6, v0, Lcom/android/tools/r8/internal/gy;->i:[I

    invoke-static {v6, v12, v5, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    iput-object v5, v0, Lcom/android/tools/r8/internal/gy;->i:[I

    .line 126
    :cond_3
    iget-object v1, v0, Lcom/android/tools/r8/internal/gy;->i:[I

    iget v5, v0, Lcom/android/tools/r8/internal/gy;->h:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v0, Lcom/android/tools/r8/internal/gy;->h:I

    aput v2, v1, v5

    .line 127
    :cond_4
    iget-object v1, v3, Lcom/android/tools/r8/internal/hr0;->e:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lcom/android/tools/r8/internal/gy;->a(Lcom/android/tools/r8/internal/jr0;Ljava/lang/String;)V

    return-void

    .line 128
    :pswitch_f
    iget-object v1, v3, Lcom/android/tools/r8/internal/hr0;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/gy;->a(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/gy;->a()I

    return-void

    .line 130
    :pswitch_10
    invoke-virtual {v0, v13}, Lcom/android/tools/r8/internal/gy;->a(I)V

    .line 131
    iget-object v1, v3, Lcom/android/tools/r8/internal/hr0;->e:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lcom/android/tools/r8/internal/gy;->a(Lcom/android/tools/r8/internal/jr0;Ljava/lang/String;)V

    return-void

    .line 132
    :pswitch_11
    iget-object v1, v3, Lcom/android/tools/r8/internal/hr0;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/gy;->a(Ljava/lang/String;)V

    return-void

    .line 133
    :pswitch_12
    iget-object v1, v3, Lcom/android/tools/r8/internal/hr0;->e:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lcom/android/tools/r8/internal/gy;->a(Lcom/android/tools/r8/internal/jr0;Ljava/lang/String;)V

    return-void

    .line 134
    :pswitch_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "JSR/RET are not supported with computeFrames option"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    :pswitch_14
    invoke-virtual {v0, v15}, Lcom/android/tools/r8/internal/gy;->a(I)V

    .line 136
    invoke-virtual {v0, v8}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    .line 137
    :pswitch_15
    invoke-virtual {v0, v13}, Lcom/android/tools/r8/internal/gy;->a(I)V

    .line 138
    invoke-virtual {v0, v8}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    .line 139
    :pswitch_16
    invoke-virtual {v0, v13}, Lcom/android/tools/r8/internal/gy;->a(I)V

    .line 140
    invoke-virtual {v0, v9}, Lcom/android/tools/r8/internal/gy;->b(I)V

    .line 141
    invoke-virtual {v0, v11}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    .line 142
    :pswitch_17
    invoke-virtual {v0, v13}, Lcom/android/tools/r8/internal/gy;->a(I)V

    .line 143
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    .line 144
    :pswitch_18
    invoke-virtual {v0, v13}, Lcom/android/tools/r8/internal/gy;->a(I)V

    .line 145
    invoke-virtual {v0, v10}, Lcom/android/tools/r8/internal/gy;->b(I)V

    .line 146
    invoke-virtual {v0, v11}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    .line 147
    :pswitch_19
    invoke-virtual {v0, v2, v8}, Lcom/android/tools/r8/internal/gy;->b(II)V

    return-void

    :pswitch_1a
    const/4 v1, 0x3

    .line 148
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/gy;->a(I)V

    .line 149
    invoke-virtual {v0, v10}, Lcom/android/tools/r8/internal/gy;->b(I)V

    .line 150
    invoke-virtual {v0, v11}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    .line 151
    :pswitch_1b
    invoke-virtual {v0, v15}, Lcom/android/tools/r8/internal/gy;->a(I)V

    .line 152
    invoke-virtual {v0, v9}, Lcom/android/tools/r8/internal/gy;->b(I)V

    .line 153
    invoke-virtual {v0, v11}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    .line 154
    :pswitch_1c
    invoke-virtual {v0, v15}, Lcom/android/tools/r8/internal/gy;->a(I)V

    .line 155
    invoke-virtual {v0, v10}, Lcom/android/tools/r8/internal/gy;->b(I)V

    .line 156
    invoke-virtual {v0, v11}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    .line 157
    :pswitch_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/gy;->a()I

    move-result v1

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/gy;->a()I

    move-result v2

    .line 159
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/gy;->b(I)V

    .line 160
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    .line 161
    :pswitch_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/gy;->a()I

    move-result v1

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/gy;->a()I

    move-result v2

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/gy;->a()I

    move-result v3

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/gy;->a()I

    move-result v4

    .line 165
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/gy;->b(I)V

    .line 166
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/gy;->b(I)V

    .line 167
    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/gy;->b(I)V

    .line 168
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/gy;->b(I)V

    .line 169
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/gy;->b(I)V

    .line 170
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    .line 171
    :pswitch_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/gy;->a()I

    move-result v1

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/gy;->a()I

    move-result v2

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/gy;->a()I

    move-result v3

    .line 174
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/gy;->b(I)V

    .line 175
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/gy;->b(I)V

    .line 176
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/gy;->b(I)V

    .line 177
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/gy;->b(I)V

    .line 178
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    .line 179
    :pswitch_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/gy;->a()I

    move-result v1

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/gy;->a()I

    move-result v2

    .line 181
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/gy;->b(I)V

    .line 182
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/gy;->b(I)V

    .line 183
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/gy;->b(I)V

    .line 184
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    .line 185
    :pswitch_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/gy;->a()I

    move-result v1

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/gy;->a()I

    move-result v2

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/gy;->a()I

    move-result v3

    .line 188
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/gy;->b(I)V

    .line 189
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/gy;->b(I)V

    .line 190
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/gy;->b(I)V

    .line 191
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    .line 192
    :pswitch_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/gy;->a()I

    move-result v1

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/gy;->a()I

    move-result v2

    .line 194
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/gy;->b(I)V

    .line 195
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/gy;->b(I)V

    .line 196
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    .line 197
    :pswitch_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/gy;->a()I

    move-result v1

    .line 198
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/gy;->b(I)V

    .line 199
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    .line 200
    :pswitch_24
    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/gy;->a(I)V

    return-void

    .line 201
    :pswitch_25
    invoke-virtual {v0, v13}, Lcom/android/tools/r8/internal/gy;->a(I)V

    return-void

    .line 202
    :pswitch_26
    invoke-virtual {v0, v15}, Lcom/android/tools/r8/internal/gy;->a(I)V

    return-void

    :pswitch_27
    const/4 v1, 0x3

    .line 203
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/gy;->a(I)V

    return-void

    .line 204
    :pswitch_28
    invoke-virtual {v0, v13}, Lcom/android/tools/r8/internal/gy;->a(I)V

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/gy;->a()I

    move-result v1

    .line 206
    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/gy;->b(II)V

    add-int/lit8 v1, v2, 0x1

    .line 207
    invoke-virtual {v0, v1, v11}, Lcom/android/tools/r8/internal/gy;->b(II)V

    if-lez v2, :cond_15

    add-int/lit8 v1, v2, -0x1

    .line 208
    iget-object v2, v0, Lcom/android/tools/r8/internal/gy;->d:[I

    if-eqz v2, :cond_6

    array-length v3, v2

    if-lt v1, v3, :cond_5

    goto :goto_0

    .line 209
    :cond_5
    aget v3, v2, v1

    if-nez v3, :cond_7

    or-int v3, v1, v12

    .line 210
    aput v3, v2, v1

    goto :goto_1

    :cond_6
    :goto_0
    or-int v3, v1, v12

    :cond_7
    :goto_1
    if-eq v3, v10, :cond_a

    if-ne v3, v9, :cond_8

    goto :goto_2

    :cond_8
    and-int v2, v3, v15

    if-eq v2, v12, :cond_9

    if-ne v2, v14, :cond_15

    :cond_9
    const/high16 v2, 0x100000

    or-int/2addr v2, v3

    .line 211
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/gy;->b(II)V

    return-void

    .line 212
    :cond_a
    :goto_2
    invoke-virtual {v0, v1, v11}, Lcom/android/tools/r8/internal/gy;->b(II)V

    return-void

    .line 213
    :pswitch_29
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/gy;->a()I

    move-result v1

    .line 214
    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/gy;->b(II)V

    if-lez v2, :cond_15

    add-int/lit8 v1, v2, -0x1

    .line 215
    iget-object v2, v0, Lcom/android/tools/r8/internal/gy;->d:[I

    if-eqz v2, :cond_c

    array-length v3, v2

    if-lt v1, v3, :cond_b

    goto :goto_3

    .line 216
    :cond_b
    aget v3, v2, v1

    if-nez v3, :cond_d

    or-int v3, v1, v12

    .line 217
    aput v3, v2, v1

    goto :goto_4

    :cond_c
    :goto_3
    or-int v3, v1, v12

    :cond_d
    :goto_4
    if-eq v3, v10, :cond_10

    if-ne v3, v9, :cond_e

    goto :goto_5

    :cond_e
    and-int v2, v3, v15

    if-eq v2, v12, :cond_f

    if-ne v2, v14, :cond_15

    :cond_f
    const/high16 v2, 0x100000

    or-int/2addr v2, v3

    .line 218
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/gy;->b(II)V

    return-void

    .line 219
    :cond_10
    :goto_5
    invoke-virtual {v0, v1, v11}, Lcom/android/tools/r8/internal/gy;->b(II)V

    return-void

    .line 220
    :pswitch_2a
    invoke-virtual {v0, v13}, Lcom/android/tools/r8/internal/gy;->a(I)V

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/gy;->a()I

    move-result v1

    const v2, 0x400005

    if-ne v1, v2, :cond_11

    goto :goto_6

    :cond_11
    const/high16 v2, -0x4000000

    add-int/2addr v1, v2

    .line 222
    :goto_6
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    .line 223
    :pswitch_2b
    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/gy;->a(I)V

    .line 224
    invoke-virtual {v0, v9}, Lcom/android/tools/r8/internal/gy;->b(I)V

    .line 225
    invoke-virtual {v0, v11}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    .line 226
    :pswitch_2c
    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/gy;->a(I)V

    .line 227
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    .line 228
    :pswitch_2d
    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/gy;->a(I)V

    .line 229
    invoke-virtual {v0, v10}, Lcom/android/tools/r8/internal/gy;->b(I)V

    .line 230
    invoke-virtual {v0, v11}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    .line 231
    :pswitch_2e
    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/gy;->a(I)V

    .line 232
    invoke-virtual {v0, v8}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    .line 233
    :pswitch_2f
    iget-object v1, v0, Lcom/android/tools/r8/internal/gy;->d:[I

    if-eqz v1, :cond_13

    array-length v3, v1

    if-lt v2, v3, :cond_12

    goto :goto_7

    .line 234
    :cond_12
    aget v3, v1, v2

    if-nez v3, :cond_14

    or-int v3, v2, v12

    .line 235
    aput v3, v1, v2

    goto :goto_8

    :cond_13
    :goto_7
    or-int v3, v2, v12

    .line 236
    :cond_14
    :goto_8
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    .line 237
    :pswitch_30
    iget v1, v3, Lcom/android/tools/r8/internal/hr0;->b:I

    packed-switch v1, :pswitch_data_6

    packed-switch v1, :pswitch_data_7

    .line 238
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 239
    :pswitch_31
    iget-object v1, v3, Lcom/android/tools/r8/internal/hr0;->e:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lcom/android/tools/r8/internal/gy;->a(Lcom/android/tools/r8/internal/jr0;Ljava/lang/String;)V

    return-void

    .line 240
    :pswitch_32
    const-string v1, "java/lang/invoke/MethodType"

    invoke-virtual {v4, v1}, Lcom/android/tools/r8/internal/jr0;->b(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    .line 241
    :pswitch_33
    const-string v1, "java/lang/invoke/MethodHandle"

    invoke-virtual {v4, v1}, Lcom/android/tools/r8/internal/jr0;->b(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    .line 242
    :pswitch_34
    const-string v1, "java/lang/String"

    invoke-virtual {v4, v1}, Lcom/android/tools/r8/internal/jr0;->b(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    .line 243
    :pswitch_35
    const-string v1, "java/lang/Class"

    invoke-virtual {v4, v1}, Lcom/android/tools/r8/internal/jr0;->b(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    .line 244
    :pswitch_36
    invoke-virtual {v0, v9}, Lcom/android/tools/r8/internal/gy;->b(I)V

    .line 245
    invoke-virtual {v0, v11}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    .line 246
    :pswitch_37
    invoke-virtual {v0, v10}, Lcom/android/tools/r8/internal/gy;->b(I)V

    .line 247
    invoke-virtual {v0, v11}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    .line 248
    :pswitch_38
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    .line 249
    :pswitch_39
    invoke-virtual {v0, v8}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    .line 250
    :pswitch_3a
    invoke-virtual {v0, v9}, Lcom/android/tools/r8/internal/gy;->b(I)V

    .line 251
    invoke-virtual {v0, v11}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    .line 252
    :pswitch_3b
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    .line 253
    :pswitch_3c
    invoke-virtual {v0, v10}, Lcom/android/tools/r8/internal/gy;->b(I)V

    .line 254
    invoke-virtual {v0, v11}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    .line 255
    :pswitch_3d
    invoke-virtual {v0, v8}, Lcom/android/tools/r8/internal/gy;->b(I)V

    return-void

    :pswitch_3e
    const v1, 0x400005

    .line 256
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/gy;->b(I)V

    :cond_15
    :pswitch_3f
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3c
        :pswitch_3c
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3a
        :pswitch_3a
        :pswitch_3d
        :pswitch_3d
        :pswitch_30
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_2f
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2e
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_29
        :pswitch_28
        :pswitch_29
        :pswitch_28
        :pswitch_29
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4f
        :pswitch_27
        :pswitch_26
        :pswitch_27
        :pswitch_26
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_2e
        :pswitch_1c
        :pswitch_2c
        :pswitch_1b
        :pswitch_2e
        :pswitch_1c
        :pswitch_2c
        :pswitch_1b
        :pswitch_2e
        :pswitch_1c
        :pswitch_2c
        :pswitch_1b
        :pswitch_2e
        :pswitch_1c
        :pswitch_2c
        :pswitch_1b
        :pswitch_2e
        :pswitch_1c
        :pswitch_2c
        :pswitch_1b
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_2e
        :pswitch_1a
        :pswitch_2e
        :pswitch_1a
        :pswitch_2e
        :pswitch_1a
        :pswitch_2e
        :pswitch_1c
        :pswitch_2e
        :pswitch_1c
        :pswitch_2e
        :pswitch_1c
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_2e
        :pswitch_2c
        :pswitch_2b
        :pswitch_15
        :pswitch_18
        :pswitch_16
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_14
        :pswitch_2e
        :pswitch_2e
        :pswitch_14
        :pswitch_14
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_3f
        :pswitch_13
        :pswitch_13
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_25
        :pswitch_24
        :pswitch_25
        :pswitch_3f
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_3
        :pswitch_2
        :pswitch_15
        :pswitch_25
        :pswitch_1
        :pswitch_15
        :pswitch_25
        :pswitch_25
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xc5
        :pswitch_0
        :pswitch_25
        :pswitch_25
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x4
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x3
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0xf
        :pswitch_33
        :pswitch_32
        :pswitch_31
    .end packed-switch
.end method

.method public final a(Lcom/android/tools/r8/internal/EX;)V
    .locals 14

    .line 315
    iget-object v0, p0, Lcom/android/tools/r8/internal/gy;->b:[I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    .line 316
    :goto_0
    array-length v5, v0

    const/4 v6, 0x2

    const v7, 0x400003

    const v8, 0x400004

    const/4 v9, 0x1

    if-ge v2, v5, :cond_3

    .line 317
    aget v5, v0, v2

    if-eq v5, v8, :cond_1

    if-ne v5, v7, :cond_0

    goto :goto_1

    :cond_0
    move v6, v9

    :cond_1
    :goto_1
    add-int/2addr v2, v6

    const/high16 v6, 0x400000

    add-int/lit8 v3, v3, 0x1

    if-ne v5, v6, :cond_2

    goto :goto_0

    :cond_2
    add-int/2addr v4, v3

    move v3, v1

    goto :goto_0

    .line 318
    :cond_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/gy;->c:[I

    move v3, v1

    move v5, v3

    .line 319
    :goto_2
    array-length v10, v2

    if-ge v3, v10, :cond_6

    .line 320
    aget v10, v2, v3

    if-eq v10, v8, :cond_5

    if-ne v10, v7, :cond_4

    goto :goto_3

    :cond_4
    move v10, v9

    goto :goto_4

    :cond_5
    :goto_3
    move v10, v6

    :goto_4
    add-int/2addr v3, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 321
    :cond_6
    iget-object v3, p0, Lcom/android/tools/r8/internal/gy;->a:Lcom/android/tools/r8/internal/XQ;

    iget v3, v3, Lcom/android/tools/r8/internal/XQ;->e:I

    invoke-virtual {p1, v3, v4, v5}, Lcom/android/tools/r8/internal/EX;->a(III)V

    const/4 v3, 0x3

    move v10, v1

    :goto_5
    add-int/lit8 v11, v4, -0x1

    if-lez v4, :cond_9

    .line 322
    aget v4, v0, v10

    if-eq v4, v8, :cond_8

    if-ne v4, v7, :cond_7

    goto :goto_6

    :cond_7
    move v12, v9

    goto :goto_7

    :cond_8
    :goto_6
    move v12, v6

    :goto_7
    add-int/2addr v10, v12

    add-int/lit8 v12, v3, 0x1

    .line 323
    iget-object v13, p1, Lcom/android/tools/r8/internal/EX;->V:[I

    aput v4, v13, v3

    move v4, v11

    move v3, v12

    goto :goto_5

    :cond_9
    :goto_8
    add-int/lit8 v0, v5, -0x1

    if-lez v5, :cond_c

    .line 324
    aget v4, v2, v1

    if-eq v4, v8, :cond_b

    if-ne v4, v7, :cond_a

    goto :goto_9

    :cond_a
    move v5, v9

    goto :goto_a

    :cond_b
    :goto_9
    move v5, v6

    :goto_a
    add-int/2addr v1, v5

    add-int/lit8 v5, v3, 0x1

    .line 325
    iget-object v10, p1, Lcom/android/tools/r8/internal/EX;->V:[I

    aput v4, v10, v3

    move v3, v5

    move v5, v0

    goto :goto_8

    .line 326
    :cond_c
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/EX;->e()V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/jr0;ILjava/lang/String;I)V
    .locals 8

    .line 55
    new-array v0, p4, [I

    iput-object v0, p0, Lcom/android/tools/r8/internal/gy;->b:[I

    const/4 v1, 0x0

    .line 56
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/tools/r8/internal/gy;->c:[I

    and-int/lit8 v2, p2, 0x8

    if-nez v2, :cond_1

    const/high16 v2, 0x40000

    and-int/2addr p2, v2

    const/4 v2, 0x1

    if-nez p2, :cond_0

    .line 57
    iget-object p2, p1, Lcom/android/tools/r8/internal/jr0;->c:Ljava/lang/String;

    .line 58
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/jr0;->b(Ljava/lang/String;)I

    move-result p2

    const/high16 v3, 0x800000

    or-int/2addr p2, v3

    aput p2, v0, v1

    goto :goto_0

    :cond_0
    const p2, 0x400006

    .line 59
    aput p2, v0, v1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 60
    :goto_0
    invoke-static {p3}, Lcom/android/tools/r8/internal/tt0;->b(Ljava/lang/String;)[Lcom/android/tools/r8/internal/tt0;

    move-result-object p2

    array-length p3, p2

    move v0, v1

    :goto_1
    const/high16 v3, 0x400000

    if-ge v0, p3, :cond_4

    aget-object v4, p2, v0

    .line 61
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/tt0;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v1}, Lcom/android/tools/r8/internal/gy;->a(Lcom/android/tools/r8/internal/jr0;Ljava/lang/String;I)I

    move-result v4

    .line 62
    iget-object v5, p0, Lcom/android/tools/r8/internal/gy;->b:[I

    add-int/lit8 v6, v2, 0x1

    aput v4, v5, v2

    const v7, 0x400004

    if-eq v4, v7, :cond_3

    const v7, 0x400003

    if-ne v4, v7, :cond_2

    goto :goto_2

    :cond_2
    move v2, v6

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x2

    .line 63
    aput v3, v5, v6

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_4
    if-ge v2, p4, :cond_5

    .line 64
    iget-object p1, p0, Lcom/android/tools/r8/internal/gy;->b:[I

    add-int/lit8 p2, v2, 0x1

    aput v3, p1, v2

    move v2, p2

    goto :goto_4

    :cond_5
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/jr0;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_0

    invoke-static {p2}, Lcom/android/tools/r8/internal/tt0;->e(Ljava/lang/String;)I

    move-result v0

    .line 66
    :cond_0
    invoke-static {p1, p2, v0}, Lcom/android/tools/r8/internal/gy;->a(Lcom/android/tools/r8/internal/jr0;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_2

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/gy;->b(I)V

    const p2, 0x400004

    if-eq p1, p2, :cond_1

    const p2, 0x400003

    if-ne p1, p2, :cond_2

    :cond_1
    const/high16 p1, 0x400000

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/gy;->b(I)V

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v1, :cond_0

    .line 77
    invoke-static {p1}, Lcom/android/tools/r8/internal/tt0;->c(Ljava/lang/String;)I

    move-result p1

    shr-int/2addr p1, v3

    sub-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/gy;->a(I)V

    return-void

    :cond_0
    const/16 p1, 0x4a

    if-eq v0, p1, :cond_2

    const/16 p1, 0x44

    if-ne v0, p1, :cond_1

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/gy;->a(I)V

    return-void

    .line 79
    :cond_2
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/gy;->a(I)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/jr0;Lcom/android/tools/r8/internal/gy;I)Z
    .locals 8

    .line 259
    iget-object v0, p0, Lcom/android/tools/r8/internal/gy;->b:[I

    array-length v0, v0

    .line 260
    iget-object v1, p0, Lcom/android/tools/r8/internal/gy;->c:[I

    array-length v1, v1

    .line 261
    iget-object v2, p2, Lcom/android/tools/r8/internal/gy;->b:[I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 262
    new-array v2, v0, [I

    iput-object v2, p2, Lcom/android/tools/r8/internal/gy;->b:[I

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    move v5, v4

    :goto_1
    if-ge v5, v0, :cond_4

    .line 263
    iget-object v6, p0, Lcom/android/tools/r8/internal/gy;->d:[I

    if-eqz v6, :cond_2

    array-length v7, v6

    if-ge v5, v7, :cond_2

    .line 264
    aget v6, v6, v5

    if-nez v6, :cond_1

    .line 265
    iget-object v6, p0, Lcom/android/tools/r8/internal/gy;->b:[I

    aget v6, v6, v5

    goto :goto_2

    .line 266
    :cond_1
    invoke-virtual {p0, v6, v1}, Lcom/android/tools/r8/internal/gy;->a(II)I

    move-result v6

    goto :goto_2

    .line 267
    :cond_2
    iget-object v6, p0, Lcom/android/tools/r8/internal/gy;->b:[I

    aget v6, v6, v5

    .line 268
    :goto_2
    iget-object v7, p0, Lcom/android/tools/r8/internal/gy;->i:[I

    if-eqz v7, :cond_3

    .line 269
    invoke-virtual {p0, p1, v6}, Lcom/android/tools/r8/internal/gy;->a(Lcom/android/tools/r8/internal/jr0;I)I

    move-result v6

    .line 270
    :cond_3
    iget-object v7, p2, Lcom/android/tools/r8/internal/gy;->b:[I

    invoke-static {p1, v6, v7, v5}, Lcom/android/tools/r8/internal/gy;->a(Lcom/android/tools/r8/internal/jr0;I[II)Z

    move-result v6

    or-int/2addr v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    if-lez p3, :cond_7

    move v1, v4

    :goto_3
    if-ge v1, v0, :cond_5

    .line 271
    iget-object v5, p0, Lcom/android/tools/r8/internal/gy;->b:[I

    aget v5, v5, v1

    iget-object v6, p2, Lcom/android/tools/r8/internal/gy;->b:[I

    invoke-static {p1, v5, v6, v1}, Lcom/android/tools/r8/internal/gy;->a(Lcom/android/tools/r8/internal/jr0;I[II)Z

    move-result v5

    or-int/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 272
    :cond_5
    iget-object v0, p2, Lcom/android/tools/r8/internal/gy;->c:[I

    if-nez v0, :cond_6

    .line 273
    new-array v0, v3, [I

    iput-object v0, p2, Lcom/android/tools/r8/internal/gy;->c:[I

    goto :goto_4

    :cond_6
    move v3, v2

    .line 274
    :goto_4
    iget-object p2, p2, Lcom/android/tools/r8/internal/gy;->c:[I

    invoke-static {p1, p3, p2, v4}, Lcom/android/tools/r8/internal/gy;->a(Lcom/android/tools/r8/internal/jr0;I[II)Z

    move-result p1

    or-int/2addr p1, v3

    return p1

    .line 275
    :cond_7
    iget-object p3, p0, Lcom/android/tools/r8/internal/gy;->c:[I

    array-length p3, p3

    iget-short v0, p0, Lcom/android/tools/r8/internal/gy;->f:S

    add-int/2addr p3, v0

    .line 276
    iget-object v0, p2, Lcom/android/tools/r8/internal/gy;->c:[I

    if-nez v0, :cond_8

    .line 277
    iget-short v0, p0, Lcom/android/tools/r8/internal/gy;->g:S

    add-int/2addr v0, p3

    new-array v0, v0, [I

    iput-object v0, p2, Lcom/android/tools/r8/internal/gy;->c:[I

    goto :goto_5

    :cond_8
    move v3, v2

    :goto_5
    move v0, v4

    :goto_6
    if-ge v0, p3, :cond_a

    .line 278
    iget-object v2, p0, Lcom/android/tools/r8/internal/gy;->c:[I

    aget v2, v2, v0

    .line 279
    iget-object v5, p0, Lcom/android/tools/r8/internal/gy;->i:[I

    if-eqz v5, :cond_9

    .line 280
    invoke-virtual {p0, p1, v2}, Lcom/android/tools/r8/internal/gy;->a(Lcom/android/tools/r8/internal/jr0;I)I

    move-result v2

    .line 281
    :cond_9
    iget-object v5, p2, Lcom/android/tools/r8/internal/gy;->c:[I

    invoke-static {p1, v2, v5, v0}, Lcom/android/tools/r8/internal/gy;->a(Lcom/android/tools/r8/internal/jr0;I[II)Z

    move-result v2

    or-int/2addr v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 282
    :cond_a
    :goto_7
    iget-short v0, p0, Lcom/android/tools/r8/internal/gy;->g:S

    if-ge v4, v0, :cond_c

    .line 283
    iget-object v0, p0, Lcom/android/tools/r8/internal/gy;->e:[I

    aget v0, v0, v4

    .line 284
    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/gy;->a(II)I

    move-result v0

    .line 285
    iget-object v2, p0, Lcom/android/tools/r8/internal/gy;->i:[I

    if-eqz v2, :cond_b

    .line 286
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/gy;->a(Lcom/android/tools/r8/internal/jr0;I)I

    move-result v0

    .line 287
    :cond_b
    iget-object v2, p2, Lcom/android/tools/r8/internal/gy;->c:[I

    add-int v5, p3, v4

    .line 288
    invoke-static {p1, v0, v2, v5}, Lcom/android/tools/r8/internal/gy;->a(Lcom/android/tools/r8/internal/jr0;I[II)Z

    move-result v0

    or-int/2addr v3, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_c
    return v3
.end method

.method public final b(I)V
    .locals 4

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/gy;->e:[I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    .line 9
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/tools/r8/internal/gy;->e:[I

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/gy;->e:[I

    array-length v0, v0

    .line 11
    iget-short v1, p0, Lcom/android/tools/r8/internal/gy;->g:S

    if-lt v1, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v0, 0x2

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    .line 13
    iget-object v2, p0, Lcom/android/tools/r8/internal/gy;->e:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iput-object v1, p0, Lcom/android/tools/r8/internal/gy;->e:[I

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/gy;->e:[I

    iget-short v1, p0, Lcom/android/tools/r8/internal/gy;->g:S

    add-int/lit8 v2, v1, 0x1

    int-to-short v2, v2

    iput-short v2, p0, Lcom/android/tools/r8/internal/gy;->g:S

    aput p1, v0, v1

    .line 16
    iget-short p1, p0, Lcom/android/tools/r8/internal/gy;->f:S

    add-int/2addr p1, v2

    int-to-short p1, p1

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/internal/gy;->a:Lcom/android/tools/r8/internal/XQ;

    iget-short v1, v0, Lcom/android/tools/r8/internal/XQ;->i:S

    if-le p1, v1, :cond_2

    .line 18
    iput-short p1, v0, Lcom/android/tools/r8/internal/XQ;->i:S

    :cond_2
    return-void
.end method

.method public final b(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/gy;->d:[I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    .line 2
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/tools/r8/internal/gy;->d:[I

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/gy;->d:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    add-int/lit8 v1, p1, 0x1

    mul-int/lit8 v2, v0, 0x2

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    .line 5
    iget-object v2, p0, Lcom/android/tools/r8/internal/gy;->d:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iput-object v1, p0, Lcom/android/tools/r8/internal/gy;->d:[I

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/gy;->d:[I

    aput p2, v0, p1

    return-void
.end method
