.class public final Lcom/google/android/gms/internal/measurement/Z5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/h6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/h6<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final l:[I

.field public static final m:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Lcom/google/android/gms/internal/measurement/W5;

.field public final f:Z

.field public final g:[I

.field public final h:I

.field public final i:I

.field public final j:Lcom/google/android/gms/internal/measurement/s6;

.field public final k:Lcom/google/android/gms/internal/measurement/c5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/measurement/Z5;->l:[I

    invoke-static {}, Lcom/google/android/gms/internal/measurement/z6;->v()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/Z5;->m:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/measurement/W5;Z[IIILcom/google/android/gms/internal/measurement/b6;Lcom/google/android/gms/internal/measurement/H5;Lcom/google/android/gms/internal/measurement/s6;Lcom/google/android/gms/internal/measurement/c5;Lcom/google/android/gms/internal/measurement/R5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/Z5;->a:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/Z5;->b:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/measurement/Z5;->c:I

    iput p4, p0, Lcom/google/android/gms/internal/measurement/Z5;->d:I

    const/4 p1, 0x0

    if-eqz p13, :cond_0

    instance-of p2, p5, Lcom/google/android/gms/internal/measurement/n5;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/Z5;->f:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/measurement/Z5;->g:[I

    iput p8, p0, Lcom/google/android/gms/internal/measurement/Z5;->h:I

    iput p9, p0, Lcom/google/android/gms/internal/measurement/Z5;->i:I

    iput-object p12, p0, Lcom/google/android/gms/internal/measurement/Z5;->j:Lcom/google/android/gms/internal/measurement/s6;

    iput-object p13, p0, Lcom/google/android/gms/internal/measurement/Z5;->k:Lcom/google/android/gms/internal/measurement/c5;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/Z5;->e:Lcom/google/android/gms/internal/measurement/W5;

    return-void
.end method

.method public static A(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/T5;Lcom/google/android/gms/internal/measurement/b6;Lcom/google/android/gms/internal/measurement/H5;Lcom/google/android/gms/internal/measurement/s6;Lcom/google/android/gms/internal/measurement/c5;Lcom/google/android/gms/internal/measurement/R5;)Lcom/google/android/gms/internal/measurement/Z5;
    .locals 34

    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/g6;

    if-eqz v1, :cond_37

    check-cast v0, Lcom/google/android/gms/internal/measurement/g6;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/g6;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xd800

    if-lt v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_1

    move v4, v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    :cond_1
    add-int/lit8 v4, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_3

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_1
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_2

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    add-int/lit8 v9, v9, 0xd

    move v4, v10

    goto :goto_1

    :cond_2
    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    move v4, v10

    :cond_3
    if-nez v7, :cond_4

    sget-object v7, Lcom/google/android/gms/internal/measurement/Z5;->l:[I

    move v9, v3

    move v11, v9

    move v12, v11

    move v13, v12

    move v14, v13

    move/from16 v17, v14

    move-object/from16 v16, v7

    move/from16 v7, v17

    goto/16 :goto_a

    :cond_4
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_6

    and-int/lit16 v4, v4, 0x1fff

    const/16 v9, 0xd

    :goto_2
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_5

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_2

    :cond_5
    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    move v7, v10

    :cond_6
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_8

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_3
    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_7

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v11

    goto :goto_3

    :cond_7
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v11

    :cond_8
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_a

    and-int/lit16 v9, v9, 0x1fff

    const/16 v11, 0xd

    :goto_4
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_9

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    add-int/lit8 v11, v11, 0xd

    move v10, v12

    goto :goto_4

    :cond_9
    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    move v10, v12

    :cond_a
    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_c

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_5
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_b

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_5

    :cond_b
    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    move v11, v13

    :cond_c
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_e

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_6
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_d

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_6

    :cond_d
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_e
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_10

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_7
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_f

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_7

    :cond_f
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_10
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_12

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_8
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_11

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_8

    :cond_11
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_12
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_14

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v5, :cond_13

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_9

    :cond_13
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_14
    add-int v16, v14, v12

    add-int v13, v16, v13

    add-int v16, v4, v4

    add-int v16, v16, v7

    new-array v7, v13, [I

    move v13, v9

    move/from16 v17, v14

    move/from16 v9, v16

    move-object/from16 v16, v7

    move v14, v10

    move v7, v4

    move v4, v15

    :goto_a
    sget-object v10, Lcom/google/android/gms/internal/measurement/Z5;->m:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/g6;->b()[Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/g6;->O1()Lcom/google/android/gms/internal/measurement/W5;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    add-int v18, v17, v12

    add-int v12, v11, v11

    mul-int/lit8 v11, v11, 0x3

    new-array v11, v11, [I

    new-array v12, v12, [Ljava/lang/Object;

    move/from16 v21, v17

    move/from16 v22, v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_b
    if-ge v4, v2, :cond_36

    add-int/lit8 v23, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_16

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v8, v23

    const/16 v23, 0xd

    :goto_c
    add-int/lit8 v24, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_15

    and-int/lit16 v8, v8, 0x1fff

    shl-int v8, v8, v23

    or-int/2addr v4, v8

    add-int/lit8 v23, v23, 0xd

    move/from16 v8, v24

    goto :goto_c

    :cond_15
    shl-int v8, v8, v23

    or-int/2addr v4, v8

    move/from16 v8, v24

    goto :goto_d

    :cond_16
    move/from16 v8, v23

    :goto_d
    add-int/lit8 v23, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_18

    and-int/lit16 v8, v8, 0x1fff

    move/from16 v6, v23

    const/16 v23, 0xd

    :goto_e
    add-int/lit8 v25, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_17

    and-int/lit16 v6, v6, 0x1fff

    shl-int v6, v6, v23

    or-int/2addr v8, v6

    add-int/lit8 v23, v23, 0xd

    move/from16 v6, v25

    goto :goto_e

    :cond_17
    shl-int v6, v6, v23

    or-int/2addr v8, v6

    move/from16 v6, v25

    goto :goto_f

    :cond_18
    move/from16 v6, v23

    :goto_f
    and-int/lit16 v5, v8, 0x400

    if-eqz v5, :cond_19

    add-int/lit8 v5, v19, 0x1

    aput v20, v16, v19

    move/from16 v19, v5

    :cond_19
    and-int/lit16 v5, v8, 0xff

    move/from16 v25, v2

    and-int/lit16 v2, v8, 0x800

    move/from16 v26, v14

    const/16 v14, 0x33

    if-lt v5, v14, :cond_23

    add-int/lit8 v14, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move/from16 v27, v14

    const v14, 0xd800

    if-lt v6, v14, :cond_1b

    and-int/lit16 v6, v6, 0x1fff

    move/from16 v14, v27

    const/16 v27, 0xd

    :goto_10
    add-int/lit8 v31, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    move/from16 v32, v13

    const v13, 0xd800

    if-lt v14, v13, :cond_1a

    and-int/lit16 v13, v14, 0x1fff

    shl-int v13, v13, v27

    or-int/2addr v6, v13

    add-int/lit8 v27, v27, 0xd

    move/from16 v14, v31

    move/from16 v13, v32

    goto :goto_10

    :cond_1a
    shl-int v13, v14, v27

    or-int/2addr v6, v13

    move/from16 v14, v31

    goto :goto_11

    :cond_1b
    move/from16 v32, v13

    move/from16 v14, v27

    :goto_11
    add-int/lit8 v13, v5, -0x33

    move/from16 v27, v14

    const/16 v14, 0x9

    if-eq v13, v14, :cond_1c

    const/16 v14, 0x11

    if-ne v13, v14, :cond_1d

    :cond_1c
    const/4 v14, 0x1

    goto :goto_14

    :cond_1d
    const/16 v14, 0xc

    if-ne v13, v14, :cond_20

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/g6;->P1()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_1f

    if-eqz v2, :cond_1e

    goto :goto_12

    :cond_1e
    const/4 v2, 0x0

    goto :goto_15

    :cond_1f
    :goto_12
    add-int/lit8 v13, v9, 0x1

    div-int/lit8 v24, v20, 0x3

    add-int v24, v24, v24

    add-int/lit8 v24, v24, 0x1

    aget-object v9, v15, v9

    aput-object v9, v12, v24

    :goto_13
    move v9, v13

    goto :goto_15

    :goto_14
    add-int/lit8 v13, v9, 0x1

    div-int/lit8 v24, v20, 0x3

    add-int v24, v24, v24

    add-int/lit8 v28, v24, 0x1

    aget-object v9, v15, v9

    aput-object v9, v12, v28

    goto :goto_13

    :cond_20
    :goto_15
    add-int/2addr v6, v6

    aget-object v13, v15, v6

    instance-of v14, v13, Ljava/lang/reflect/Field;

    if-eqz v14, :cond_21

    check-cast v13, Ljava/lang/reflect/Field;

    goto :goto_16

    :cond_21
    check-cast v13, Ljava/lang/String;

    invoke-static {v3, v13}, Lcom/google/android/gms/internal/measurement/Z5;->B(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    aput-object v13, v15, v6

    :goto_16
    invoke-virtual {v10, v13}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v13, v13

    add-int/lit8 v6, v6, 0x1

    aget-object v14, v15, v6

    move/from16 v28, v2

    instance-of v2, v14, Ljava/lang/reflect/Field;

    if-eqz v2, :cond_22

    check-cast v14, Ljava/lang/reflect/Field;

    :goto_17
    move v2, v13

    goto :goto_18

    :cond_22
    check-cast v14, Ljava/lang/String;

    invoke-static {v3, v14}, Lcom/google/android/gms/internal/measurement/Z5;->B(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    aput-object v14, v15, v6

    goto :goto_17

    :goto_18
    invoke-virtual {v10, v14}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v6, v13

    move v13, v9

    move/from16 v29, v27

    move/from16 v27, v4

    move v9, v6

    const/4 v6, 0x0

    move-object v4, v1

    move/from16 v33, v28

    move-object/from16 v28, v0

    move v0, v2

    move/from16 v2, v33

    goto/16 :goto_24

    :cond_23
    move/from16 v32, v13

    add-int/lit8 v13, v9, 0x1

    aget-object v14, v15, v9

    check-cast v14, Ljava/lang/String;

    invoke-static {v3, v14}, Lcom/google/android/gms/internal/measurement/Z5;->B(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    move/from16 v27, v4

    const/16 v4, 0x9

    if-eq v5, v4, :cond_24

    const/16 v4, 0x11

    if-ne v5, v4, :cond_25

    :cond_24
    move-object/from16 v28, v0

    const/4 v0, 0x1

    goto/16 :goto_1e

    :cond_25
    const/16 v4, 0x1b

    if-eq v5, v4, :cond_2d

    const/16 v4, 0x31

    if-ne v5, v4, :cond_26

    add-int/lit8 v9, v9, 0x2

    move-object/from16 v28, v0

    const/4 v0, 0x1

    goto/16 :goto_1d

    :cond_26
    const/16 v4, 0xc

    if-eq v5, v4, :cond_2a

    const/16 v4, 0x1e

    if-eq v5, v4, :cond_2a

    const/16 v4, 0x2c

    if-ne v5, v4, :cond_27

    goto :goto_1a

    :cond_27
    const/16 v4, 0x32

    if-ne v5, v4, :cond_29

    add-int/lit8 v4, v9, 0x2

    add-int/lit8 v28, v21, 0x1

    aput v20, v16, v21

    div-int/lit8 v21, v20, 0x3

    aget-object v13, v15, v13

    add-int v21, v21, v21

    aput-object v13, v12, v21

    if-eqz v2, :cond_28

    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v13, v9, 0x3

    aget-object v4, v15, v4

    aput-object v4, v12, v21

    move-object v4, v1

    move/from16 v21, v28

    move-object/from16 v28, v0

    goto :goto_1f

    :cond_28
    move v13, v4

    move/from16 v21, v28

    const/4 v2, 0x0

    move-object/from16 v28, v0

    :goto_19
    move-object v4, v1

    goto :goto_1f

    :cond_29
    move-object/from16 v28, v0

    const/4 v0, 0x1

    goto :goto_19

    :cond_2a
    :goto_1a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/g6;->P1()I

    move-result v4

    move-object/from16 v28, v0

    const/4 v0, 0x1

    if-eq v4, v0, :cond_2c

    if-eqz v2, :cond_2b

    goto :goto_1b

    :cond_2b
    move-object v4, v1

    const/4 v2, 0x0

    goto :goto_1f

    :cond_2c
    :goto_1b
    add-int/lit8 v9, v9, 0x2

    div-int/lit8 v4, v20, 0x3

    add-int/2addr v4, v4

    add-int/2addr v4, v0

    aget-object v13, v15, v13

    aput-object v13, v12, v4

    :goto_1c
    move-object v4, v1

    move v13, v9

    goto :goto_1f

    :cond_2d
    move-object/from16 v28, v0

    const/4 v0, 0x1

    add-int/lit8 v9, v9, 0x2

    :goto_1d
    div-int/lit8 v4, v20, 0x3

    add-int/2addr v4, v4

    add-int/2addr v4, v0

    aget-object v13, v15, v13

    aput-object v13, v12, v4

    goto :goto_1c

    :goto_1e
    div-int/lit8 v4, v20, 0x3

    add-int/2addr v4, v4

    add-int/2addr v4, v0

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v12, v4

    goto :goto_19

    :goto_1f
    invoke-virtual {v10, v14}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v0, v0

    and-int/lit16 v1, v8, 0x1000

    const v9, 0xfffff

    if-eqz v1, :cond_31

    const/16 v1, 0x11

    if-gt v5, v1, :cond_31

    add-int/lit8 v1, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v14, 0xd800

    if-lt v6, v14, :cond_2f

    and-int/lit16 v6, v6, 0x1fff

    const/16 v9, 0xd

    :goto_20
    add-int/lit8 v23, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v14, :cond_2e

    and-int/lit16 v1, v1, 0x1fff

    shl-int/2addr v1, v9

    or-int/2addr v6, v1

    add-int/lit8 v9, v9, 0xd

    move/from16 v1, v23

    goto :goto_20

    :cond_2e
    shl-int/2addr v1, v9

    or-int/2addr v6, v1

    move/from16 v1, v23

    :cond_2f
    add-int v9, v7, v7

    div-int/lit8 v23, v6, 0x20

    add-int v9, v9, v23

    aget-object v14, v15, v9

    move/from16 v29, v1

    instance-of v1, v14, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_30

    check-cast v14, Ljava/lang/reflect/Field;

    :goto_21
    move/from16 v30, v2

    goto :goto_22

    :cond_30
    check-cast v14, Ljava/lang/String;

    invoke-static {v3, v14}, Lcom/google/android/gms/internal/measurement/Z5;->B(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    aput-object v14, v15, v9

    goto :goto_21

    :goto_22
    invoke-virtual {v10, v14}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    long-to-int v1, v1

    rem-int/lit8 v6, v6, 0x20

    move v9, v1

    goto :goto_23

    :cond_31
    move/from16 v30, v2

    move/from16 v29, v6

    const/4 v6, 0x0

    :goto_23
    const/16 v1, 0x12

    if-lt v5, v1, :cond_32

    const/16 v1, 0x31

    if-gt v5, v1, :cond_32

    add-int/lit8 v1, v22, 0x1

    aput v0, v16, v22

    move/from16 v22, v1

    :cond_32
    move/from16 v2, v30

    :goto_24
    add-int/lit8 v1, v20, 0x1

    aput v27, v11, v20

    add-int/lit8 v14, v20, 0x2

    move-object/from16 v27, v3

    and-int/lit16 v3, v8, 0x200

    if-eqz v3, :cond_33

    const/high16 v3, 0x20000000

    goto :goto_25

    :cond_33
    const/4 v3, 0x0

    :goto_25
    and-int/lit16 v8, v8, 0x100

    if-eqz v8, :cond_34

    const/high16 v8, 0x10000000

    goto :goto_26

    :cond_34
    const/4 v8, 0x0

    :goto_26
    if-eqz v2, :cond_35

    const/high16 v2, -0x80000000

    goto :goto_27

    :cond_35
    const/4 v2, 0x0

    :goto_27
    shl-int/lit8 v5, v5, 0x14

    or-int/2addr v3, v8

    or-int/2addr v2, v3

    or-int/2addr v2, v5

    or-int/2addr v0, v2

    aput v0, v11, v1

    add-int/lit8 v20, v20, 0x3

    shl-int/lit8 v0, v6, 0x14

    or-int/2addr v0, v9

    aput v0, v11, v14

    move-object v1, v4

    move v9, v13

    move/from16 v2, v25

    move/from16 v14, v26

    move-object/from16 v3, v27

    move-object/from16 v0, v28

    move/from16 v4, v29

    move/from16 v13, v32

    const v5, 0xd800

    goto/16 :goto_b

    :cond_36
    move-object/from16 v28, v0

    move/from16 v32, v13

    move/from16 v26, v14

    new-instance v0, Lcom/google/android/gms/internal/measurement/Z5;

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/internal/measurement/g6;->O1()Lcom/google/android/gms/internal/measurement/W5;

    move-result-object v14

    const/4 v15, 0x0

    move-object v9, v0

    move-object v10, v11

    move-object v11, v12

    move/from16 v12, v32

    move/from16 v13, v26

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move-object/from16 v21, p4

    move-object/from16 v22, p5

    move-object/from16 v23, p6

    invoke-direct/range {v9 .. v23}, Lcom/google/android/gms/internal/measurement/Z5;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/measurement/W5;Z[IIILcom/google/android/gms/internal/measurement/b6;Lcom/google/android/gms/internal/measurement/H5;Lcom/google/android/gms/internal/measurement/s6;Lcom/google/android/gms/internal/measurement/c5;Lcom/google/android/gms/internal/measurement/R5;)V

    return-object v0

    :cond_37
    check-cast v0, Lcom/google/android/gms/internal/measurement/q6;

    const/4 v0, 0x0

    throw v0
.end method

.method public static B(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1d

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Field "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static L(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/h6;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/measurement/h6;->e(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static O(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static i(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/q5;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/measurement/q5;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/q5;->k()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static j(Ljava/lang/Object;)V
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/Z5;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Mutating immutable message: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static k(Ljava/lang/Object;J)D
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public static l(Ljava/lang/Object;J)F
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static m(Ljava/lang/Object;J)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static n(Ljava/lang/Object;J)J
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static o(Ljava/lang/Object;J)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final w([BIILcom/google/android/gms/internal/measurement/C6;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/G4;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/C6;->zza:Lcom/google/android/gms/internal/measurement/C6;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unsupported field type."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/H4;->c([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/measurement/G4;->b:J

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/U4;->b(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/measurement/G4;->c:Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_2
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/H4;->a([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result p0

    iget p1, p5, Lcom/google/android/gms/internal/measurement/G4;->a:I

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/U4;->a(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/measurement/G4;->c:Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_3
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/H4;->g([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result p0

    goto/16 :goto_2

    :pswitch_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/e6;->a()Lcom/google/android/gms/internal/measurement/e6;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/measurement/e6;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/h6;

    move-result-object p3

    invoke-static {p3, p0, p1, p2, p5}, Lcom/google/android/gms/internal/measurement/H4;->h(Lcom/google/android/gms/internal/measurement/h6;[BIILcom/google/android/gms/internal/measurement/G4;)I

    move-result p0

    goto/16 :goto_2

    :pswitch_5
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/H4;->f([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result p0

    goto/16 :goto_2

    :pswitch_6
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/H4;->c([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/measurement/G4;->b:J

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/measurement/G4;->c:Ljava/lang/Object;

    goto :goto_2

    :pswitch_7
    add-int/lit8 p2, p1, 0x4

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/H4;->d([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/measurement/G4;->c:Ljava/lang/Object;

    :goto_1
    move p0, p2

    goto :goto_2

    :pswitch_8
    add-int/lit8 p2, p1, 0x8

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/H4;->e([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/measurement/G4;->c:Ljava/lang/Object;

    goto :goto_1

    :pswitch_9
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/H4;->a([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result p0

    iget p1, p5, Lcom/google/android/gms/internal/measurement/G4;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/measurement/G4;->c:Ljava/lang/Object;

    goto :goto_2

    :pswitch_a
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/H4;->c([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/measurement/G4;->b:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/measurement/G4;->c:Ljava/lang/Object;

    goto :goto_2

    :pswitch_b
    add-int/lit8 p2, p1, 0x4

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/H4;->d([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/measurement/G4;->c:Ljava/lang/Object;

    goto :goto_1

    :pswitch_c
    add-int/lit8 p2, p1, 0x8

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/H4;->e([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/measurement/G4;->c:Ljava/lang/Object;

    goto :goto_1

    :goto_2
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static final x(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/E6;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/E6;->d(ILjava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/measurement/S4;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/E6;->k(ILcom/google/android/gms/internal/measurement/S4;)V

    return-void
.end method

.method public static y(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/t6;
    .locals 2

    check-cast p0, Lcom/google/android/gms/internal/measurement/q5;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/q5;->zzc:Lcom/google/android/gms/internal/measurement/t6;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/t6;->a()Lcom/google/android/gms/internal/measurement/t6;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/t6;->b()Lcom/google/android/gms/internal/measurement/t6;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/q5;->zzc:Lcom/google/android/gms/internal/measurement/t6;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final C(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/Z5;->r(Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/Z5;->M(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    sget-object v1, Lcom/google/android/gms/internal/measurement/Z5;->m:Lsun/misc/Unsafe;

    int-to-long v2, v0

    invoke-virtual {v1, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/Z5;->E(I)Lcom/google/android/gms/internal/measurement/h6;

    move-result-object p2

    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/Z5;->r(Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/Z5;->i(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/h6;->N1()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4, v0}, Lcom/google/android/gms/internal/measurement/h6;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/Z5;->s(Ljava/lang/Object;I)V

    return-void

    :cond_2
    invoke-virtual {v1, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/measurement/Z5;->i(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/h6;->N1()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4, p3}, Lcom/google/android/gms/internal/measurement/h6;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v4

    :cond_3
    invoke-interface {p2, p3, v0}, Lcom/google/android/gms/internal/measurement/h6;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/Z5;->a:[I

    new-instance v0, Ljava/lang/IllegalStateException;

    aget p1, p1, p3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x26

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/2addr p3, v1

    invoke-direct {v2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Source subfield "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is present but null: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final D(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Z5;->a:[I

    aget v1, v0, p3

    invoke-virtual {p0, p2, v1, p3}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/Z5;->M(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v2, v3

    sget-object v3, Lcom/google/android/gms/internal/measurement/Z5;->m:Lsun/misc/Unsafe;

    int-to-long v4, v2

    invoke-virtual {v3, p2, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/Z5;->E(I)Lcom/google/android/gms/internal/measurement/h6;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p3}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/Z5;->i(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v3, p1, v4, v5, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/h6;->N1()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0, v2}, Lcom/google/android/gms/internal/measurement/h6;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, p1, v4, v5, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1, v1, p3}, Lcom/google/android/gms/internal/measurement/Z5;->u(Ljava/lang/Object;II)V

    return-void

    :cond_2
    invoke-virtual {v3, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/measurement/Z5;->i(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/h6;->N1()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0, p3}, Lcom/google/android/gms/internal/measurement/h6;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, p1, v4, v5, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v0

    :cond_3
    invoke-interface {p2, p3, v2}, Lcom/google/android/gms/internal/measurement/h6;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    aget p3, v0, p3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x26

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Source subfield "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is present but null: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final E(I)Lcom/google/android/gms/internal/measurement/h6;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Z5;->b:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    aget-object v1, v0, p1

    check-cast v1, Lcom/google/android/gms/internal/measurement/h6;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v1, p1, 0x1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/e6;->a()Lcom/google/android/gms/internal/measurement/e6;

    move-result-object v2

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/e6;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/h6;

    move-result-object v1

    aput-object v1, v0, p1

    return-object v1
.end method

.method public final F(I)Ljava/lang/Object;
    .locals 1

    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Z5;->b:[Ljava/lang/Object;

    add-int/2addr p1, p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final G(I)Lcom/google/android/gms/internal/measurement/v5;
    .locals 1

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Z5;->b:[Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/v5;

    return-object p1
.end method

.method public final H(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/Z5;->E(I)Lcom/google/android/gms/internal/measurement/h6;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/Z5;->M(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/Z5;->r(Ljava/lang/Object;I)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/h6;->N1()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    int-to-long v1, v1

    sget-object p2, Lcom/google/android/gms/internal/measurement/Z5;->m:Lsun/misc/Unsafe;

    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/Z5;->i(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/h6;->N1()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2

    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/measurement/h6;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method public final I(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/measurement/Z5;->m:Lsun/misc/Unsafe;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/Z5;->M(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/Z5;->s(Ljava/lang/Object;I)V

    return-void
.end method

.method public final J(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/Z5;->E(I)Lcom/google/android/gms/internal/measurement/h6;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/h6;->N1()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/measurement/Z5;->m:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/Z5;->M(I)I

    move-result p3

    const v1, 0xfffff

    and-int/2addr p3, v1

    int-to-long v1, p3

    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/Z5;->i(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/h6;->N1()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2

    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/measurement/h6;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method public final K(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/measurement/Z5;->m:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/Z5;->M(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/Z5;->u(Ljava/lang/Object;II)V

    return-void
.end method

.method public final M(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Z5;->a:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method public final N(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Z5;->a:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method public final N1()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Z5;->e:Lcom/google/android/gms/internal/measurement/W5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/q5;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q5;->m()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)I
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    sget-object v8, Lcom/google/android/gms/internal/measurement/Z5;->m:Lsun/misc/Unsafe;

    const/4 v9, 0x0

    const v10, 0xfffff

    move v1, v9

    move v11, v1

    move v12, v11

    move v0, v10

    :goto_0
    iget-object v2, v6, Lcom/google/android/gms/internal/measurement/Z5;->a:[I

    array-length v3, v2

    if-ge v11, v3, :cond_1c

    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/measurement/Z5;->M(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/Z5;->O(I)I

    move-result v4

    aget v13, v2, v11

    add-int/lit8 v5, v11, 0x2

    aget v2, v2, v5

    and-int v5, v2, v10

    const/16 v14, 0x11

    const/4 v15, 0x1

    if-gt v4, v14, :cond_2

    if-eq v5, v0, :cond_1

    if-ne v5, v10, :cond_0

    move v1, v9

    goto :goto_1

    :cond_0
    int-to-long v0, v5

    invoke-virtual {v8, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move v1, v0

    :goto_1
    move v0, v5

    :cond_1
    ushr-int/lit8 v2, v2, 0x14

    shl-int v2, v15, v2

    move v14, v0

    move/from16 v16, v1

    move v5, v2

    goto :goto_2

    :cond_2
    move v14, v0

    move/from16 v16, v1

    move v5, v9

    :goto_2
    and-int v0, v3, v10

    sget-object v1, Lcom/google/android/gms/internal/measurement/h5;->zzJ:Lcom/google/android/gms/internal/measurement/h5;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/h5;->N1()I

    move-result v1

    if-lt v4, v1, :cond_3

    sget-object v1, Lcom/google/android/gms/internal/measurement/h5;->zzW:Lcom/google/android/gms/internal/measurement/h5;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/h5;->N1()I

    :cond_3
    int-to-long v2, v0

    const/16 v17, 0x3f

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1a

    :pswitch_0
    invoke-virtual {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/W5;

    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/measurement/Z5;->E(I)Lcom/google/android/gms/internal/measurement/h6;

    move-result-object v1

    invoke-static {v13, v0, v1}, Lcom/google/android/gms/internal/measurement/W4;->g(ILcom/google/android/gms/internal/measurement/W5;Lcom/google/android/gms/internal/measurement/h6;)I

    move-result v0

    :goto_3
    add-int/2addr v12, v0

    goto/16 :goto_1a

    :pswitch_1
    invoke-virtual {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/measurement/Z5;->n(Ljava/lang/Object;J)J

    move-result-wide v1

    add-long v3, v1, v1

    shr-long v1, v1, v17

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v0

    xor-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/W4;->a(J)I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    goto :goto_3

    :pswitch_2
    invoke-virtual {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/measurement/Z5;->m(Ljava/lang/Object;J)I

    move-result v1

    add-int v2, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v0

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v1

    goto :goto_4

    :pswitch_3
    invoke-virtual {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v0

    :goto_5
    add-int/lit8 v0, v0, 0x8

    goto :goto_3

    :pswitch_4
    invoke-virtual {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v0

    :goto_6
    add-int/lit8 v0, v0, 0x4

    goto :goto_3

    :pswitch_5
    invoke-virtual {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/measurement/Z5;->m(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/W4;->a(J)I

    move-result v1

    goto :goto_4

    :pswitch_6
    invoke-virtual {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/measurement/Z5;->m(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v0

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v1

    goto :goto_4

    :pswitch_7
    invoke-virtual {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/S4;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/S4;->l()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v2

    :goto_7
    add-int/2addr v2, v1

    add-int/2addr v0, v2

    goto/16 :goto_3

    :pswitch_8
    invoke-virtual {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/measurement/Z5;->E(I)Lcom/google/android/gms/internal/measurement/h6;

    move-result-object v1

    invoke-static {v13, v0, v1}, Lcom/google/android/gms/internal/measurement/j6;->E(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/h6;)I

    move-result v0

    goto/16 :goto_3

    :pswitch_9
    invoke-virtual {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/S4;

    if-eqz v2, :cond_4

    check-cast v1, Lcom/google/android/gms/internal/measurement/S4;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/S4;->l()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v2

    goto :goto_7

    :cond_4
    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v0

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/W4;->b(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_4

    :pswitch_a
    invoke-virtual {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v0

    :goto_8
    add-int/2addr v0, v15

    goto/16 :goto_3

    :pswitch_b
    invoke-virtual {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v0

    goto/16 :goto_6

    :pswitch_c
    invoke-virtual {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v0

    goto/16 :goto_5

    :pswitch_d
    invoke-virtual {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/measurement/Z5;->m(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/W4;->a(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_e
    invoke-virtual {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/measurement/Z5;->n(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/W4;->a(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_f
    invoke-virtual {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/measurement/Z5;->n(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/W4;->a(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_10
    invoke-virtual {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v0

    goto/16 :goto_6

    :pswitch_11
    invoke-virtual {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v0

    goto/16 :goto_5

    :pswitch_12
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/measurement/Z5;->F(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v0, Lcom/google/android/gms/internal/measurement/Q5;

    check-cast v1, Lcom/google/android/gms/internal/measurement/P5;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_9
    move v2, v9

    goto :goto_b

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/Q5;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v9

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v13, v4, v3}, Lcom/google/android/gms/internal/measurement/P5;->d(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_a

    :cond_6
    :goto_b
    add-int/2addr v12, v2

    goto/16 :goto_1a

    :pswitch_13
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/measurement/Z5;->E(I)Lcom/google/android/gms/internal/measurement/h6;

    move-result-object v1

    sget v2, Lcom/google/android/gms/internal/measurement/j6;->b:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_7

    move v4, v9

    goto :goto_d

    :cond_7
    move v3, v9

    move v4, v3

    :goto_c
    if-ge v3, v2, :cond_8

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/W5;

    invoke-static {v13, v5, v1}, Lcom/google/android/gms/internal/measurement/W4;->g(ILcom/google/android/gms/internal/measurement/W5;Lcom/google/android/gms/internal/measurement/h6;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_8
    :goto_d
    add-int/2addr v12, v4

    goto/16 :goto_1a

    :pswitch_14
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/j6;->v(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v2

    :goto_e
    add-int/2addr v1, v2

    add-int/2addr v1, v0

    :cond_9
    :goto_f
    add-int/2addr v12, v1

    goto/16 :goto_1a

    :pswitch_15
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/j6;->z(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v2

    goto :goto_e

    :pswitch_16
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/j6;->C(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v2

    goto :goto_e

    :pswitch_17
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/j6;->A(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v2

    goto :goto_e

    :pswitch_18
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/j6;->w(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v2

    goto :goto_e

    :pswitch_19
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/j6;->y(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v2

    goto :goto_e

    :pswitch_1a
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/measurement/j6;->b:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v2

    goto/16 :goto_e

    :pswitch_1b
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/j6;->A(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v2

    goto/16 :goto_e

    :pswitch_1c
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/j6;->C(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v2

    goto/16 :goto_e

    :pswitch_1d
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/j6;->x(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v2

    goto/16 :goto_e

    :pswitch_1e
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/j6;->u(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v2

    goto/16 :goto_e

    :pswitch_1f
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/j6;->t(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v2

    goto/16 :goto_e

    :pswitch_20
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/j6;->A(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v2

    goto/16 :goto_e

    :pswitch_21
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/j6;->C(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v2

    goto/16 :goto_e

    :pswitch_22
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/measurement/j6;->b:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    :goto_10
    move v0, v9

    goto/16 :goto_3

    :cond_a
    shl-int/lit8 v2, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/j6;->v(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v2

    :goto_11
    mul-int/2addr v1, v2

    goto/16 :goto_4

    :pswitch_23
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/measurement/j6;->b:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_10

    :cond_b
    shl-int/lit8 v2, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/j6;->z(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v2

    goto :goto_11

    :pswitch_24
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/measurement/j6;->D(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_25
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/measurement/j6;->B(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_26
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/measurement/j6;->b:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_10

    :cond_c
    shl-int/lit8 v2, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/j6;->w(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v2

    goto :goto_11

    :pswitch_27
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/measurement/j6;->b:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_d

    goto :goto_10

    :cond_d
    shl-int/lit8 v2, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/j6;->y(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v2

    goto :goto_11

    :pswitch_28
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/measurement/j6;->b:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_e

    move v1, v9

    goto/16 :goto_f

    :cond_e
    shl-int/lit8 v2, v13, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v2

    mul-int/2addr v1, v2

    move v2, v9

    :goto_12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/S4;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/S4;->l()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :pswitch_29
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/measurement/Z5;->E(I)Lcom/google/android/gms/internal/measurement/h6;

    move-result-object v1

    sget v2, Lcom/google/android/gms/internal/measurement/j6;->b:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_f

    move v3, v9

    goto :goto_15

    :cond_f
    shl-int/lit8 v3, v13, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v3

    mul-int/2addr v3, v2

    move v4, v9

    :goto_13
    if-ge v4, v2, :cond_11

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v13, v5, Lcom/google/android/gms/internal/measurement/F5;

    if-eqz v13, :cond_10

    check-cast v5, Lcom/google/android/gms/internal/measurement/F5;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/F5;->b()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v13

    add-int/2addr v13, v5

    add-int/2addr v3, v13

    goto :goto_14

    :cond_10
    check-cast v5, Lcom/google/android/gms/internal/measurement/W5;

    invoke-static {v5, v1}, Lcom/google/android/gms/internal/measurement/W4;->d(Lcom/google/android/gms/internal/measurement/W5;Lcom/google/android/gms/internal/measurement/h6;)I

    move-result v5

    add-int/2addr v3, v5

    :goto_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_11
    :goto_15
    add-int/2addr v12, v3

    goto/16 :goto_1a

    :pswitch_2a
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/measurement/j6;->b:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_9

    :cond_12
    shl-int/lit8 v2, v13, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v2

    mul-int/2addr v2, v1

    instance-of v3, v0, Lcom/google/android/gms/internal/measurement/G5;

    if-eqz v3, :cond_14

    check-cast v0, Lcom/google/android/gms/internal/measurement/G5;

    move v3, v9

    :goto_16
    if-ge v3, v1, :cond_6

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/G5;->P1()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/measurement/S4;

    if-eqz v5, :cond_13

    check-cast v4, Lcom/google/android/gms/internal/measurement/S4;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/S4;->l()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v2, v5

    goto :goto_17

    :cond_13
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/W4;->b(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    :goto_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_14
    move v3, v9

    :goto_18
    if-ge v3, v1, :cond_6

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/measurement/S4;

    if-eqz v5, :cond_15

    check-cast v4, Lcom/google/android/gms/internal/measurement/S4;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/S4;->l()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v2, v5

    goto :goto_19

    :cond_15
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/W4;->b(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    :goto_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :pswitch_2b
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/measurement/j6;->b:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_10

    :cond_16
    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v1

    add-int/2addr v1, v15

    mul-int/2addr v0, v1

    goto/16 :goto_3

    :pswitch_2c
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/measurement/j6;->B(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_2d
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/measurement/j6;->D(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_2e
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/measurement/j6;->b:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_10

    :cond_17
    shl-int/lit8 v2, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/j6;->x(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v2

    goto/16 :goto_11

    :pswitch_2f
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/measurement/j6;->b:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_10

    :cond_18
    shl-int/lit8 v2, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/j6;->u(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v2

    goto/16 :goto_11

    :pswitch_30
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/measurement/j6;->b:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_19

    goto/16 :goto_9

    :cond_19
    shl-int/lit8 v1, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/j6;->t(Ljava/util/List;)I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr v2, v0

    goto/16 :goto_b

    :pswitch_31
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/measurement/j6;->B(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_32
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/measurement/j6;->D(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_33
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v3, v2

    move v2, v11

    move-wide v9, v3

    move v3, v14

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/Z5;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/W5;

    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/measurement/Z5;->E(I)Lcom/google/android/gms/internal/measurement/h6;

    move-result-object v1

    invoke-static {v13, v0, v1}, Lcom/google/android/gms/internal/measurement/W4;->g(ILcom/google/android/gms/internal/measurement/W5;Lcom/google/android/gms/internal/measurement/h6;)I

    move-result v0

    goto/16 :goto_3

    :pswitch_34
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/Z5;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    add-long v3, v1, v1

    shr-long v1, v1, v17

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v0

    xor-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/W4;->a(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_35
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/Z5;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    add-int v2, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v0

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v1

    goto/16 :goto_4

    :pswitch_36
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/Z5;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v0

    goto/16 :goto_5

    :pswitch_37
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/Z5;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v0

    goto/16 :goto_6

    :pswitch_38
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/Z5;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/W4;->a(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_39
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/Z5;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v0

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v1

    goto/16 :goto_4

    :pswitch_3a
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/Z5;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/S4;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/S4;->l()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v2

    goto/16 :goto_7

    :pswitch_3b
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/Z5;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/measurement/Z5;->E(I)Lcom/google/android/gms/internal/measurement/h6;

    move-result-object v1

    invoke-static {v13, v0, v1}, Lcom/google/android/gms/internal/measurement/j6;->E(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/h6;)I

    move-result v0

    goto/16 :goto_3

    :pswitch_3c
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/Z5;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/S4;

    if-eqz v2, :cond_1a

    check-cast v1, Lcom/google/android/gms/internal/measurement/S4;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/S4;->l()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v2

    goto/16 :goto_7

    :cond_1a
    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v0

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/W4;->b(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_4

    :pswitch_3d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/Z5;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v0

    goto/16 :goto_8

    :pswitch_3e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/Z5;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v0

    goto/16 :goto_6

    :pswitch_3f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/Z5;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v0

    goto/16 :goto_5

    :pswitch_40
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/Z5;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/W4;->a(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_41
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/Z5;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/W4;->a(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_42
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/Z5;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/W4;->a(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_43
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/Z5;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v0

    goto/16 :goto_6

    :pswitch_44
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/Z5;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/W4;->G(I)I

    move-result v0

    goto/16 :goto_5

    :cond_1b
    :goto_1a
    add-int/lit8 v11, v11, 0x3

    move v0, v14

    move/from16 v1, v16

    const/4 v9, 0x0

    const v10, 0xfffff

    goto/16 :goto_0

    :cond_1c
    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/measurement/q5;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/q5;->zzc:Lcom/google/android/gms/internal/measurement/t6;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/t6;->i()I

    move-result v0

    add-int/2addr v12, v0

    iget-boolean v0, v6, Lcom/google/android/gms/internal/measurement/Z5;->f:Z

    if-eqz v0, :cond_1f

    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/measurement/n5;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/n5;->zzb:Lcom/google/android/gms/internal/measurement/g5;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/g5;->a:Lcom/google/android/gms/internal/measurement/p6;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p6;->j()I

    move-result v1

    const/4 v9, 0x0

    const/16 v18, 0x0

    :goto_1b
    if-ge v9, v1, :cond_1d

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/measurement/p6;->k(I)Ljava/util/Map$Entry;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/m6;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m6;->b()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/f5;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/measurement/g5;->j(Lcom/google/android/gms/internal/measurement/f5;Ljava/lang/Object;)I

    move-result v2

    add-int v18, v18, v2

    add-int/lit8 v9, v9, 0x1

    goto :goto_1b

    :cond_1d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p6;->l()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/f5;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/g5;->j(Lcom/google/android/gms/internal/measurement/f5;Ljava/lang/Object;)I

    move-result v1

    add-int v18, v18, v1

    goto :goto_1c

    :cond_1e
    add-int v12, v12, v18

    :cond_1f
    return v12

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/Z5;->a:[I

    array-length v3, v2

    if-ge v0, v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/Z5;->M(I)I

    move-result v3

    const v4, 0xfffff

    and-int/2addr v4, v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/Z5;->O(I)I

    move-result v3

    aget v2, v2, v0

    int-to-long v4, v4

    const/16 v6, 0x25

    const/16 v7, 0x20

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/Z5;->n(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/measurement/A5;->b:[B

    :goto_2
    ushr-long v4, v2, v7

    xor-long/2addr v2, v4

    long-to-int v2, v2

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/Z5;->m(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/Z5;->n(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/measurement/A5;->b:[B

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/Z5;->m(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/Z5;->m(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/Z5;->m(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/Z5;->o(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/A5;->b(Z)I

    move-result v2

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/Z5;->m(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/Z5;->n(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/measurement/A5;->b:[B

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/Z5;->m(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/Z5;->n(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/measurement/A5;->b:[B

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/Z5;->n(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/measurement/A5;->b:[B

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/Z5;->l(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/Z5;->k(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/measurement/A5;->b:[B

    goto/16 :goto_2

    :pswitch_12
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_13
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_14
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :cond_0
    :goto_3
    add-int/2addr v1, v6

    goto/16 :goto_4

    :pswitch_15
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->k(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/measurement/A5;->b:[B

    goto/16 :goto_2

    :pswitch_16
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->i(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_17
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->k(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/measurement/A5;->b:[B

    goto/16 :goto_2

    :pswitch_18
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->i(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_19
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->i(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_1a
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->i(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_1b
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_1c
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_1e
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->m(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/A5;->b(Z)I

    move-result v2

    goto/16 :goto_1

    :pswitch_1f
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->i(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_20
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->k(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/measurement/A5;->b:[B

    goto/16 :goto_2

    :pswitch_21
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->i(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_22
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->k(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/measurement/A5;->b:[B

    goto/16 :goto_2

    :pswitch_23
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->k(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/measurement/A5;->b:[B

    goto/16 :goto_2

    :pswitch_24
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->o(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto/16 :goto_1

    :pswitch_25
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->q(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/measurement/A5;->b:[B

    goto/16 :goto_2

    :cond_1
    :goto_4
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v1, v1, 0x35

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/q5;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/q5;->zzc:Lcom/google/android/gms/internal/measurement/t6;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/Z5;->f:Z

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x35

    check-cast p1, Lcom/google/android/gms/internal/measurement/n5;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/n5;->zzb:Lcom/google/android/gms/internal/measurement/g5;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/g5;->a:Lcom/google/android/gms/internal/measurement/p6;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/p6;->hashCode()I

    move-result p1

    add-int/2addr v1, p1

    :cond_3
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/E6;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    iget-boolean v0, v6, Lcom/google/android/gms/internal/measurement/Z5;->f:Z

    if-eqz v0, :cond_0

    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/measurement/n5;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/n5;->zzb:Lcom/google/android/gms/internal/measurement/g5;

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/g5;->a:Lcom/google/android/gms/internal/measurement/p6;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/g5;->c()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v10, v0

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    iget-object v11, v6, Lcom/google/android/gms/internal/measurement/Z5;->a:[I

    sget-object v12, Lcom/google/android/gms/internal/measurement/Z5;->m:Lsun/misc/Unsafe;

    const v13, 0xfffff

    move v0, v13

    const/4 v1, 0x0

    const/4 v15, 0x0

    :goto_1
    array-length v2, v11

    if-ge v15, v2, :cond_7

    invoke-virtual {v6, v15}, Lcom/google/android/gms/internal/measurement/Z5;->M(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/Z5;->O(I)I

    move-result v3

    aget v5, v11, v15

    const/16 v4, 0x11

    const/4 v9, 0x1

    if-gt v3, v4, :cond_3

    add-int/lit8 v4, v15, 0x2

    aget v4, v11, v4

    and-int v14, v4, v13

    if-eq v14, v0, :cond_2

    if-ne v14, v13, :cond_1

    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    int-to-long v0, v14

    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move v1, v0

    :goto_2
    move v0, v14

    :cond_2
    ushr-int/lit8 v4, v4, 0x14

    shl-int v4, v9, v4

    move v14, v0

    move/from16 v17, v1

    move/from16 v18, v4

    goto :goto_3

    :cond_3
    move v14, v0

    move/from16 v17, v1

    const/16 v18, 0x0

    :goto_3
    if-nez v10, :cond_6

    and-int v0, v2, v13

    int-to-long v1, v0

    packed-switch v3, :pswitch_data_0

    :cond_4
    :goto_4
    move-object/from16 v16, v10

    goto/16 :goto_7

    :pswitch_0
    invoke-virtual {v6, v7, v5, v15}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v15}, Lcom/google/android/gms/internal/measurement/Z5;->E(I)Lcom/google/android/gms/internal/measurement/h6;

    move-result-object v1

    invoke-interface {v8, v5, v0, v1}, Lcom/google/android/gms/internal/measurement/E6;->C(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/h6;)V

    goto :goto_4

    :pswitch_1
    invoke-virtual {v6, v7, v5, v15}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/Z5;->n(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v5, v0, v1}, Lcom/google/android/gms/internal/measurement/E6;->D(IJ)V

    goto :goto_4

    :pswitch_2
    invoke-virtual {v6, v7, v5, v15}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/Z5;->m(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/measurement/E6;->w(II)V

    goto :goto_4

    :pswitch_3
    invoke-virtual {v6, v7, v5, v15}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/Z5;->n(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v5, v0, v1}, Lcom/google/android/gms/internal/measurement/E6;->h(IJ)V

    goto :goto_4

    :pswitch_4
    invoke-virtual {v6, v7, v5, v15}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/Z5;->m(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/measurement/E6;->a(II)V

    goto :goto_4

    :pswitch_5
    invoke-virtual {v6, v7, v5, v15}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/Z5;->m(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/measurement/E6;->g(II)V

    goto :goto_4

    :pswitch_6
    invoke-virtual {v6, v7, v5, v15}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/Z5;->m(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/measurement/E6;->u(II)V

    goto :goto_4

    :pswitch_7
    invoke-virtual {v6, v7, v5, v15}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/S4;

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/measurement/E6;->k(ILcom/google/android/gms/internal/measurement/S4;)V

    goto :goto_4

    :pswitch_8
    invoke-virtual {v6, v7, v5, v15}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v15}, Lcom/google/android/gms/internal/measurement/Z5;->E(I)Lcom/google/android/gms/internal/measurement/h6;

    move-result-object v1

    invoke-interface {v8, v5, v0, v1}, Lcom/google/android/gms/internal/measurement/E6;->B(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/h6;)V

    goto/16 :goto_4

    :pswitch_9
    invoke-virtual {v6, v7, v5, v15}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0, v8}, Lcom/google/android/gms/internal/measurement/Z5;->x(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/E6;)V

    goto/16 :goto_4

    :pswitch_a
    invoke-virtual {v6, v7, v5, v15}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/Z5;->o(Ljava/lang/Object;J)Z

    move-result v0

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/measurement/E6;->z(IZ)V

    goto/16 :goto_4

    :pswitch_b
    invoke-virtual {v6, v7, v5, v15}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/Z5;->m(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/measurement/E6;->l(II)V

    goto/16 :goto_4

    :pswitch_c
    invoke-virtual {v6, v7, v5, v15}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/Z5;->n(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v5, v0, v1}, Lcom/google/android/gms/internal/measurement/E6;->j(IJ)V

    goto/16 :goto_4

    :pswitch_d
    invoke-virtual {v6, v7, v5, v15}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/Z5;->m(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/measurement/E6;->p(II)V

    goto/16 :goto_4

    :pswitch_e
    invoke-virtual {v6, v7, v5, v15}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/Z5;->n(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v5, v0, v1}, Lcom/google/android/gms/internal/measurement/E6;->o(IJ)V

    goto/16 :goto_4

    :pswitch_f
    invoke-virtual {v6, v7, v5, v15}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/Z5;->n(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v5, v0, v1}, Lcom/google/android/gms/internal/measurement/E6;->b(IJ)V

    goto/16 :goto_4

    :pswitch_10
    invoke-virtual {v6, v7, v5, v15}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/Z5;->l(Ljava/lang/Object;J)F

    move-result v0

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/measurement/E6;->i(IF)V

    goto/16 :goto_4

    :pswitch_11
    invoke-virtual {v6, v7, v5, v15}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/Z5;->k(Ljava/lang/Object;J)D

    move-result-wide v0

    invoke-interface {v8, v5, v0, v1}, Lcom/google/android/gms/internal/measurement/E6;->e(ID)V

    goto/16 :goto_4

    :pswitch_12
    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v6, v15}, Lcom/google/android/gms/internal/measurement/Z5;->F(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/P5;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/P5;->e()Lcom/google/android/gms/internal/measurement/O5;

    move-result-object v1

    check-cast v0, Lcom/google/android/gms/internal/measurement/Q5;

    invoke-interface {v8, v5, v1, v0}, Lcom/google/android/gms/internal/measurement/E6;->f(ILcom/google/android/gms/internal/measurement/O5;Ljava/util/Map;)V

    goto/16 :goto_4

    :pswitch_13
    aget v0, v11, v15

    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v6, v15}, Lcom/google/android/gms/internal/measurement/Z5;->E(I)Lcom/google/android/gms/internal/measurement/h6;

    move-result-object v2

    sget v3, Lcom/google/android/gms/internal/measurement/j6;->b:I

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x0

    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v8

    check-cast v5, Lcom/google/android/gms/internal/measurement/X4;

    invoke-virtual {v5, v0, v4, v2}, Lcom/google/android/gms/internal/measurement/X4;->C(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/h6;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :pswitch_14
    aget v0, v11, v15

    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v9}, Lcom/google/android/gms/internal/measurement/j6;->j(ILjava/util/List;Lcom/google/android/gms/internal/measurement/E6;Z)V

    goto/16 :goto_4

    :pswitch_15
    aget v0, v11, v15

    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v9}, Lcom/google/android/gms/internal/measurement/j6;->o(ILjava/util/List;Lcom/google/android/gms/internal/measurement/E6;Z)V

    goto/16 :goto_4

    :pswitch_16
    aget v0, v11, v15

    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v9}, Lcom/google/android/gms/internal/measurement/j6;->l(ILjava/util/List;Lcom/google/android/gms/internal/measurement/E6;Z)V

    goto/16 :goto_4

    :pswitch_17
    aget v0, v11, v15

    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v9}, Lcom/google/android/gms/internal/measurement/j6;->q(ILjava/util/List;Lcom/google/android/gms/internal/measurement/E6;Z)V

    goto/16 :goto_4

    :pswitch_18
    aget v0, v11, v15

    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v9}, Lcom/google/android/gms/internal/measurement/j6;->r(ILjava/util/List;Lcom/google/android/gms/internal/measurement/E6;Z)V

    goto/16 :goto_4

    :pswitch_19
    aget v0, v11, v15

    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v9}, Lcom/google/android/gms/internal/measurement/j6;->n(ILjava/util/List;Lcom/google/android/gms/internal/measurement/E6;Z)V

    goto/16 :goto_4

    :pswitch_1a
    aget v0, v11, v15

    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v9}, Lcom/google/android/gms/internal/measurement/j6;->s(ILjava/util/List;Lcom/google/android/gms/internal/measurement/E6;Z)V

    goto/16 :goto_4

    :pswitch_1b
    aget v0, v11, v15

    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v9}, Lcom/google/android/gms/internal/measurement/j6;->p(ILjava/util/List;Lcom/google/android/gms/internal/measurement/E6;Z)V

    goto/16 :goto_4

    :pswitch_1c
    aget v0, v11, v15

    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v9}, Lcom/google/android/gms/internal/measurement/j6;->k(ILjava/util/List;Lcom/google/android/gms/internal/measurement/E6;Z)V

    goto/16 :goto_4

    :pswitch_1d
    aget v0, v11, v15

    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v9}, Lcom/google/android/gms/internal/measurement/j6;->m(ILjava/util/List;Lcom/google/android/gms/internal/measurement/E6;Z)V

    goto/16 :goto_4

    :pswitch_1e
    aget v0, v11, v15

    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v9}, Lcom/google/android/gms/internal/measurement/j6;->i(ILjava/util/List;Lcom/google/android/gms/internal/measurement/E6;Z)V

    goto/16 :goto_4

    :pswitch_1f
    aget v0, v11, v15

    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v9}, Lcom/google/android/gms/internal/measurement/j6;->h(ILjava/util/List;Lcom/google/android/gms/internal/measurement/E6;Z)V

    goto/16 :goto_4

    :pswitch_20
    aget v0, v11, v15

    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v9}, Lcom/google/android/gms/internal/measurement/j6;->g(ILjava/util/List;Lcom/google/android/gms/internal/measurement/E6;Z)V

    goto/16 :goto_4

    :pswitch_21
    aget v0, v11, v15

    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v9}, Lcom/google/android/gms/internal/measurement/j6;->f(ILjava/util/List;Lcom/google/android/gms/internal/measurement/E6;Z)V

    goto/16 :goto_4

    :pswitch_22
    aget v0, v11, v15

    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v0, v1, v8, v3}, Lcom/google/android/gms/internal/measurement/j6;->j(ILjava/util/List;Lcom/google/android/gms/internal/measurement/E6;Z)V

    goto/16 :goto_4

    :pswitch_23
    const/4 v3, 0x0

    aget v0, v11, v15

    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v3}, Lcom/google/android/gms/internal/measurement/j6;->o(ILjava/util/List;Lcom/google/android/gms/internal/measurement/E6;Z)V

    goto/16 :goto_4

    :pswitch_24
    const/4 v3, 0x0

    aget v0, v11, v15

    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v3}, Lcom/google/android/gms/internal/measurement/j6;->l(ILjava/util/List;Lcom/google/android/gms/internal/measurement/E6;Z)V

    goto/16 :goto_4

    :pswitch_25
    const/4 v3, 0x0

    aget v0, v11, v15

    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v3}, Lcom/google/android/gms/internal/measurement/j6;->q(ILjava/util/List;Lcom/google/android/gms/internal/measurement/E6;Z)V

    goto/16 :goto_4

    :pswitch_26
    const/4 v3, 0x0

    aget v0, v11, v15

    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v3}, Lcom/google/android/gms/internal/measurement/j6;->r(ILjava/util/List;Lcom/google/android/gms/internal/measurement/E6;Z)V

    goto/16 :goto_4

    :pswitch_27
    const/4 v3, 0x0

    aget v0, v11, v15

    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v3}, Lcom/google/android/gms/internal/measurement/j6;->n(ILjava/util/List;Lcom/google/android/gms/internal/measurement/E6;Z)V

    goto/16 :goto_4

    :pswitch_28
    aget v0, v11, v15

    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    sget v2, Lcom/google/android/gms/internal/measurement/j6;->b:I

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v8, v0, v1}, Lcom/google/android/gms/internal/measurement/E6;->s(ILjava/util/List;)V

    goto/16 :goto_4

    :pswitch_29
    aget v0, v11, v15

    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v6, v15}, Lcom/google/android/gms/internal/measurement/Z5;->E(I)Lcom/google/android/gms/internal/measurement/h6;

    move-result-object v2

    sget v3, Lcom/google/android/gms/internal/measurement/j6;->b:I

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x0

    :goto_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v8

    check-cast v5, Lcom/google/android/gms/internal/measurement/X4;

    invoke-virtual {v5, v0, v4, v2}, Lcom/google/android/gms/internal/measurement/X4;->B(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/h6;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :pswitch_2a
    aget v0, v11, v15

    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    sget v2, Lcom/google/android/gms/internal/measurement/j6;->b:I

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v8, v0, v1}, Lcom/google/android/gms/internal/measurement/E6;->v(ILjava/util/List;)V

    goto/16 :goto_4

    :pswitch_2b
    aget v0, v11, v15

    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v9, 0x0

    invoke-static {v0, v1, v8, v9}, Lcom/google/android/gms/internal/measurement/j6;->s(ILjava/util/List;Lcom/google/android/gms/internal/measurement/E6;Z)V

    goto/16 :goto_4

    :pswitch_2c
    const/4 v9, 0x0

    aget v0, v11, v15

    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v9}, Lcom/google/android/gms/internal/measurement/j6;->p(ILjava/util/List;Lcom/google/android/gms/internal/measurement/E6;Z)V

    goto/16 :goto_4

    :pswitch_2d
    const/4 v9, 0x0

    aget v0, v11, v15

    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v9}, Lcom/google/android/gms/internal/measurement/j6;->k(ILjava/util/List;Lcom/google/android/gms/internal/measurement/E6;Z)V

    goto/16 :goto_4

    :pswitch_2e
    const/4 v9, 0x0

    aget v0, v11, v15

    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v9}, Lcom/google/android/gms/internal/measurement/j6;->m(ILjava/util/List;Lcom/google/android/gms/internal/measurement/E6;Z)V

    goto/16 :goto_4

    :pswitch_2f
    const/4 v9, 0x0

    aget v0, v11, v15

    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v9}, Lcom/google/android/gms/internal/measurement/j6;->i(ILjava/util/List;Lcom/google/android/gms/internal/measurement/E6;Z)V

    goto/16 :goto_4

    :pswitch_30
    const/4 v9, 0x0

    aget v0, v11, v15

    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v9}, Lcom/google/android/gms/internal/measurement/j6;->h(ILjava/util/List;Lcom/google/android/gms/internal/measurement/E6;Z)V

    goto/16 :goto_4

    :pswitch_31
    const/4 v9, 0x0

    aget v0, v11, v15

    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v9}, Lcom/google/android/gms/internal/measurement/j6;->g(ILjava/util/List;Lcom/google/android/gms/internal/measurement/E6;Z)V

    goto/16 :goto_4

    :pswitch_32
    const/4 v9, 0x0

    aget v0, v11, v15

    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v9}, Lcom/google/android/gms/internal/measurement/j6;->f(ILjava/util/List;Lcom/google/android/gms/internal/measurement/E6;Z)V

    goto/16 :goto_4

    :pswitch_33
    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-wide v3, v1

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v16, v10

    move-wide v9, v3

    move v3, v14

    move/from16 v4, v17

    move v13, v5

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/Z5;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v12, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v15}, Lcom/google/android/gms/internal/measurement/Z5;->E(I)Lcom/google/android/gms/internal/measurement/h6;

    move-result-object v1

    invoke-interface {v8, v13, v0, v1}, Lcom/google/android/gms/internal/measurement/E6;->C(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/h6;)V

    goto/16 :goto_7

    :pswitch_34
    move v13, v5

    move-object/from16 v16, v10

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v14

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/Z5;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v12, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v13, v0, v1}, Lcom/google/android/gms/internal/measurement/E6;->D(IJ)V

    goto/16 :goto_7

    :pswitch_35
    move v13, v5

    move-object/from16 v16, v10

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v14

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/Z5;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v12, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v13, v0}, Lcom/google/android/gms/internal/measurement/E6;->w(II)V

    goto/16 :goto_7

    :pswitch_36
    move v13, v5

    move-object/from16 v16, v10

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v14

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/Z5;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v12, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v13, v0, v1}, Lcom/google/android/gms/internal/measurement/E6;->h(IJ)V

    goto/16 :goto_7

    :pswitch_37
    move v13, v5

    move-object/from16 v16, v10

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v14

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/Z5;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v12, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v13, v0}, Lcom/google/android/gms/internal/measurement/E6;->a(II)V

    goto/16 :goto_7

    :pswitch_38
    move v13, v5

    move-object/from16 v16, v10

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v14

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/Z5;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v12, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v13, v0}, Lcom/google/android/gms/internal/measurement/E6;->g(II)V

    goto/16 :goto_7

    :pswitch_39
    move v13, v5

    move-object/from16 v16, v10

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v14

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/Z5;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v12, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v13, v0}, Lcom/google/android/gms/internal/measurement/E6;->u(II)V

    goto/16 :goto_7

    :pswitch_3a
    move v13, v5

    move-object/from16 v16, v10

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v14

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/Z5;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v12, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/S4;

    invoke-interface {v8, v13, v0}, Lcom/google/android/gms/internal/measurement/E6;->k(ILcom/google/android/gms/internal/measurement/S4;)V

    goto/16 :goto_7

    :pswitch_3b
    move v13, v5

    move-object/from16 v16, v10

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v14

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/Z5;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v12, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v15}, Lcom/google/android/gms/internal/measurement/Z5;->E(I)Lcom/google/android/gms/internal/measurement/h6;

    move-result-object v1

    invoke-interface {v8, v13, v0, v1}, Lcom/google/android/gms/internal/measurement/E6;->B(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/h6;)V

    goto/16 :goto_7

    :pswitch_3c
    move v13, v5

    move-object/from16 v16, v10

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v14

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/Z5;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v12, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v13, v0, v8}, Lcom/google/android/gms/internal/measurement/Z5;->x(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/E6;)V

    goto/16 :goto_7

    :pswitch_3d
    move v13, v5

    move-object/from16 v16, v10

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v14

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/Z5;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v7, v9, v10}, Lcom/google/android/gms/internal/measurement/z6;->m(Ljava/lang/Object;J)Z

    move-result v0

    invoke-interface {v8, v13, v0}, Lcom/google/android/gms/internal/measurement/E6;->z(IZ)V

    goto/16 :goto_7

    :pswitch_3e
    move v13, v5

    move-object/from16 v16, v10

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v14

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/Z5;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v12, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v13, v0}, Lcom/google/android/gms/internal/measurement/E6;->l(II)V

    goto/16 :goto_7

    :pswitch_3f
    move v13, v5

    move-object/from16 v16, v10

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v14

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/Z5;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v12, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v13, v0, v1}, Lcom/google/android/gms/internal/measurement/E6;->j(IJ)V

    goto/16 :goto_7

    :pswitch_40
    move v13, v5

    move-object/from16 v16, v10

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v14

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/Z5;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v12, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v13, v0}, Lcom/google/android/gms/internal/measurement/E6;->p(II)V

    goto/16 :goto_7

    :pswitch_41
    move v13, v5

    move-object/from16 v16, v10

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v14

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/Z5;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v12, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v13, v0, v1}, Lcom/google/android/gms/internal/measurement/E6;->o(IJ)V

    goto/16 :goto_7

    :pswitch_42
    move v13, v5

    move-object/from16 v16, v10

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v14

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/Z5;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v12, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v13, v0, v1}, Lcom/google/android/gms/internal/measurement/E6;->b(IJ)V

    goto :goto_7

    :pswitch_43
    move v13, v5

    move-object/from16 v16, v10

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v14

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/Z5;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v7, v9, v10}, Lcom/google/android/gms/internal/measurement/z6;->o(Ljava/lang/Object;J)F

    move-result v0

    invoke-interface {v8, v13, v0}, Lcom/google/android/gms/internal/measurement/E6;->i(IF)V

    goto :goto_7

    :pswitch_44
    move v13, v5

    move-object/from16 v16, v10

    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v14

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/Z5;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v7, v9, v10}, Lcom/google/android/gms/internal/measurement/z6;->q(Ljava/lang/Object;J)D

    move-result-wide v0

    invoke-interface {v8, v13, v0, v1}, Lcom/google/android/gms/internal/measurement/E6;->e(ID)V

    :cond_5
    :goto_7
    add-int/lit8 v15, v15, 0x3

    move v0, v14

    move-object/from16 v10, v16

    move/from16 v1, v17

    const v13, 0xfffff

    goto/16 :goto_1

    :cond_6
    move-object/from16 v16, v10

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/o5;

    const/4 v0, 0x0

    throw v0

    :cond_7
    move-object/from16 v16, v10

    const/4 v0, 0x0

    if-nez v16, :cond_8

    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/measurement/q5;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/q5;->zzc:Lcom/google/android/gms/internal/measurement/t6;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/measurement/t6;->g(Lcom/google/android/gms/internal/measurement/E6;)V

    return-void

    :cond_8
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/o5;

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/Z5;->j(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/Z5;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/Z5;->M(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/Z5;->O(I)I

    move-result v2

    aget v1, v1, v0

    int-to-long v3, v3

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/Z5;->D(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p0, p2, v1, v0}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/measurement/z6;->t(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/internal/measurement/Z5;->u(Ljava/lang/Object;II)V

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/Z5;->D(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p0, p2, v1, v0}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/measurement/z6;->t(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/internal/measurement/Z5;->u(Ljava/lang/Object;II)V

    goto/16 :goto_2

    :pswitch_4
    sget v1, Lcom/google/android/gms/internal/measurement/j6;->b:I

    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/R5;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/z6;->t(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_5
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/z5;

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/z5;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v5, :cond_1

    if-lez v6, :cond_1

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/z5;->N1()Z

    move-result v7

    if-nez v7, :cond_0

    add-int/2addr v6, v5

    invoke-interface {v1, v6}, Lcom/google/android/gms/internal/measurement/z5;->K0(I)Lcom/google/android/gms/internal/measurement/z5;

    move-result-object v1

    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-gtz v5, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/measurement/z6;->t(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/Z5;->C(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/Z5;->r(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/z6;->k(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/z6;->l(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/Z5;->s(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/Z5;->r(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/z6;->i(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/z6;->j(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/Z5;->s(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/Z5;->r(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/z6;->k(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/z6;->l(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/Z5;->s(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/Z5;->r(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/z6;->i(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/z6;->j(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/Z5;->s(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/Z5;->r(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/z6;->i(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/z6;->j(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/Z5;->s(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/Z5;->r(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/z6;->i(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/z6;->j(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/Z5;->s(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/Z5;->r(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/z6;->t(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/Z5;->s(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/Z5;->C(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/Z5;->r(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/z6;->t(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/Z5;->s(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/Z5;->r(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/z6;->m(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/z6;->n(Ljava/lang/Object;JZ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/Z5;->s(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_11
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/Z5;->r(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/z6;->i(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/z6;->j(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/Z5;->s(Ljava/lang/Object;I)V

    goto :goto_2

    :pswitch_12
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/Z5;->r(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/z6;->k(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/z6;->l(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/Z5;->s(Ljava/lang/Object;I)V

    goto :goto_2

    :pswitch_13
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/Z5;->r(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/z6;->i(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/z6;->j(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/Z5;->s(Ljava/lang/Object;I)V

    goto :goto_2

    :pswitch_14
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/Z5;->r(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/z6;->k(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/z6;->l(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/Z5;->s(Ljava/lang/Object;I)V

    goto :goto_2

    :pswitch_15
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/Z5;->r(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/z6;->k(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/z6;->l(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/Z5;->s(Ljava/lang/Object;I)V

    goto :goto_2

    :pswitch_16
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/Z5;->r(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/z6;->o(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/z6;->p(Ljava/lang/Object;JF)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/Z5;->s(Ljava/lang/Object;I)V

    goto :goto_2

    :pswitch_17
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/Z5;->r(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/z6;->q(Ljava/lang/Object;J)D

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/z6;->r(Ljava/lang/Object;JD)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/Z5;->s(Ljava/lang/Object;I)V

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Z5;->j:Lcom/google/android/gms/internal/measurement/s6;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/j6;->d(Lcom/google/android/gms/internal/measurement/s6;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/Z5;->f:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Z5;->k:Lcom/google/android/gms/internal/measurement/c5;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/j6;->c(Lcom/google/android/gms/internal/measurement/c5;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Ljava/lang/Object;)Z
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v8, 0x0

    const v9, 0xfffff

    move v1, v8

    move v10, v1

    move v0, v9

    :goto_0
    iget v2, v6, Lcom/google/android/gms/internal/measurement/Z5;->h:I

    const/4 v3, 0x1

    if-ge v10, v2, :cond_c

    iget-object v2, v6, Lcom/google/android/gms/internal/measurement/Z5;->g:[I

    iget-object v4, v6, Lcom/google/android/gms/internal/measurement/Z5;->a:[I

    aget v11, v2, v10

    aget v12, v4, v11

    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/measurement/Z5;->M(I)I

    move-result v13

    add-int/lit8 v2, v11, 0x2

    aget v2, v4, v2

    and-int v4, v2, v9

    ushr-int/lit8 v2, v2, 0x14

    shl-int v14, v3, v2

    if-eq v4, v0, :cond_1

    if-eq v4, v9, :cond_0

    int-to-long v0, v4

    sget-object v2, Lcom/google/android/gms/internal/measurement/Z5;->m:Lsun/misc/Unsafe;

    invoke-virtual {v2, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    :cond_0
    move/from16 v16, v1

    move v15, v4

    goto :goto_1

    :cond_1
    move v15, v0

    move/from16 v16, v1

    :goto_1
    const/high16 v0, 0x10000000

    and-int/2addr v0, v13

    if-eqz v0, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/Z5;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    return v8

    :cond_3
    :goto_2
    invoke-static {v13}, Lcom/google/android/gms/internal/measurement/Z5;->O(I)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_a

    const/16 v1, 0x11

    if-eq v0, v1, :cond_a

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_8

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_7

    const/16 v1, 0x44

    if-eq v0, v1, :cond_7

    const/16 v1, 0x31

    if-eq v0, v1, :cond_8

    const/16 v1, 0x32

    if-eq v0, v1, :cond_4

    goto/16 :goto_4

    :cond_4
    and-int v0, v13, v9

    int-to-long v0, v0

    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/Q5;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/measurement/Z5;->F(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/P5;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/P5;->e()Lcom/google/android/gms/internal/measurement/O5;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/O5;->c:Lcom/google/android/gms/internal/measurement/C6;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/C6;->a()Lcom/google/android/gms/internal/measurement/D6;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/measurement/D6;->zzi:Lcom/google/android/gms/internal/measurement/D6;

    if-ne v1, v2, :cond_b

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_6

    invoke-static {}, Lcom/google/android/gms/internal/measurement/e6;->a()Lcom/google/android/gms/internal/measurement/e6;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/e6;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/h6;

    move-result-object v1

    :cond_6
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/measurement/h6;->e(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v8

    :cond_7
    invoke-virtual {v6, v7, v12, v11}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/measurement/Z5;->E(I)Lcom/google/android/gms/internal/measurement/h6;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lcom/google/android/gms/internal/measurement/Z5;->L(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/h6;)Z

    move-result v0

    if-nez v0, :cond_b

    return v8

    :cond_8
    and-int v0, v13, v9

    int-to-long v0, v0

    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/measurement/Z5;->E(I)Lcom/google/android/gms/internal/measurement/h6;

    move-result-object v1

    move v2, v8

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/measurement/h6;->e(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    return v8

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/Z5;->q(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/measurement/Z5;->E(I)Lcom/google/android/gms/internal/measurement/h6;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lcom/google/android/gms/internal/measurement/Z5;->L(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/h6;)Z

    move-result v0

    if-nez v0, :cond_b

    return v8

    :cond_b
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move v0, v15

    move/from16 v1, v16

    goto/16 :goto_0

    :cond_c
    iget-boolean v0, v6, Lcom/google/android/gms/internal/measurement/Z5;->f:Z

    if-eqz v0, :cond_d

    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/measurement/n5;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/n5;->zzb:Lcom/google/android/gms/internal/measurement/g5;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/g5;->e()Z

    move-result v0

    if-nez v0, :cond_d

    return v8

    :cond_d
    return v3
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/Z5;->i(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/q5;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/q5;

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/q5;->r(I)V

    iput v1, v0, Lcom/google/android/gms/internal/measurement/C4;->zza:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q5;->l()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Z5;->a:[I

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/Z5;->M(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/Z5;->O(I)I

    move-result v2

    int-to-long v3, v3

    const/16 v5, 0x9

    if-eq v2, v5, :cond_3

    const/16 v5, 0x3c

    if-eq v2, v5, :cond_2

    const/16 v5, 0x44

    if-eq v2, v5, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v2, Lcom/google/android/gms/internal/measurement/Z5;->m:Lsun/misc/Unsafe;

    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/measurement/Q5;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/Q5;->j()V

    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/z5;

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/z5;->O1()V

    goto :goto_1

    :cond_2
    aget v2, v0, v1

    invoke-virtual {p0, p1, v2, v1}, Lcom/google/android/gms/internal/measurement/Z5;->t(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/Z5;->E(I)Lcom/google/android/gms/internal/measurement/h6;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/measurement/Z5;->m:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/measurement/h6;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :pswitch_2
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/Z5;->r(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/Z5;->E(I)Lcom/google/android/gms/internal/measurement/h6;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/measurement/Z5;->m:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/measurement/h6;->f(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Z5;->j:Lcom/google/android/gms/internal/measurement/s6;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/s6;->b(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/Z5;->f:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Z5;->k:Lcom/google/android/gms/internal/measurement/c5;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/c5;->a(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/G4;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/Z5;->z(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/measurement/G4;)I

    return-void
.end method

.method public final h(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/Z5;->a:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/Z5;->M(I)I

    move-result v2

    const v3, 0xfffff

    and-int v4, v2, v3

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/Z5;->O(I)I

    move-result v2

    int-to-long v4, v4

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/Z5;->N(I)I

    move-result v2

    and-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/z6;->i(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/z6;->i(Ljava/lang/Object;J)I

    move-result v2

    if-ne v6, v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/j6;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    :pswitch_1
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/j6;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :pswitch_2
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/j6;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    if-nez v2, :cond_0

    goto/16 :goto_3

    :pswitch_3
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/Z5;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/j6;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/Z5;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->k(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->k(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/Z5;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->i(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->i(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/Z5;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->k(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->k(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/Z5;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->i(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->i(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/Z5;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->i(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->i(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/Z5;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->i(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->i(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/Z5;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/j6;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/Z5;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/j6;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/Z5;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/j6;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/Z5;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->m(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->m(Ljava/lang/Object;J)Z

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/Z5;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->i(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->i(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/Z5;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->k(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->k(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_2

    :pswitch_10
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/Z5;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->i(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->i(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto :goto_2

    :pswitch_11
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/Z5;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->k(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->k(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_2

    :pswitch_12
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/Z5;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->k(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->k(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_2

    :pswitch_13
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/Z5;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->o(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->o(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto :goto_2

    :pswitch_14
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/Z5;->p(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->q(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/z6;->q(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_1
    :goto_3
    return v0

    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/measurement/q5;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/q5;->zzc:Lcom/google/android/gms/internal/measurement/t6;

    move-object v2, p2

    check-cast v2, Lcom/google/android/gms/internal/measurement/q5;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/q5;->zzc:Lcom/google/android/gms/internal/measurement/t6;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/Z5;->f:Z

    if-eqz v0, :cond_4

    check-cast p1, Lcom/google/android/gms/internal/measurement/n5;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/n5;->zzb:Lcom/google/android/gms/internal/measurement/g5;

    check-cast p2, Lcom/google/android/gms/internal/measurement/n5;

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/n5;->zzb:Lcom/google/android/gms/internal/measurement/g5;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/g5;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final p(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0

    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/Z5;->r(Ljava/lang/Object;I)Z

    move-result p1

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/Z5;->r(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final q(Ljava/lang/Object;IIII)Z
    .locals 1

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/Z5;->r(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p4, p5

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final r(Ljava/lang/Object;I)Z
    .locals 7

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/Z5;->N(I)I

    move-result v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_14

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/Z5;->M(I)I

    move-result p2

    and-int v0, p2, v1

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/Z5;->O(I)I

    move-result p2

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v6

    :cond_0
    return v5

    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/z6;->k(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_1

    return v6

    :cond_1
    return v5

    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/z6;->i(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v6

    :cond_2
    return v5

    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/z6;->k(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    return v6

    :cond_3
    return v5

    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/z6;->i(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v6

    :cond_4
    return v5

    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/z6;->i(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v6

    :cond_5
    return v5

    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/z6;->i(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v6

    :cond_6
    return v5

    :pswitch_7
    sget-object p2, Lcom/google/android/gms/internal/measurement/S4;->c:Lcom/google/android/gms/internal/measurement/S4;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/S4;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v6

    :cond_7
    return v5

    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v6

    :cond_8
    return v5

    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v6

    :cond_9
    return v5

    :cond_a
    instance-of p2, p1, Lcom/google/android/gms/internal/measurement/S4;

    if-eqz p2, :cond_c

    sget-object p2, Lcom/google/android/gms/internal/measurement/S4;->c:Lcom/google/android/gms/internal/measurement/S4;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/S4;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v6

    :cond_b
    return v5

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/z6;->m(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/z6;->i(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v6

    :cond_d
    return v5

    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/z6;->k(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_e

    return v6

    :cond_e
    return v5

    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/z6;->i(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v6

    :cond_f
    return v5

    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/z6;->k(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_10

    return v6

    :cond_10
    return v5

    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/z6;->k(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_11

    return v6

    :cond_11
    return v5

    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/z6;->o(Ljava/lang/Object;J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    if-eqz p1, :cond_12

    return v6

    :cond_12
    return v5

    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/z6;->q(Ljava/lang/Object;J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_13

    return v6

    :cond_13
    return v5

    :cond_14
    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v6, p2

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/z6;->i(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_15

    return v6

    :cond_15
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final s(Ljava/lang/Object;I)V
    .locals 4

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/Z5;->N(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p2, p2, 0x14

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/z6;->i(Ljava/lang/Object;J)I

    move-result v2

    const/4 v3, 0x1

    shl-int p2, v3, p2

    or-int/2addr p2, v2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/z6;->j(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final t(Ljava/lang/Object;II)Z
    .locals 2

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/Z5;->N(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/z6;->i(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final u(Ljava/lang/Object;II)V
    .locals 2

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/Z5;->N(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/z6;->j(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final v(II)I
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Z5;->a:[I

    array-length v1, v0

    div-int/lit8 v1, v1, 0x3

    const/4 v2, -0x1

    add-int/2addr v1, v2

    :goto_0
    if-gt p2, v1, :cond_2

    add-int v3, v1, p2

    ushr-int/lit8 v3, v3, 0x1

    mul-int/lit8 v4, v3, 0x3

    aget v5, v0, v4

    if-ne p1, v5, :cond_0

    return v4

    :cond_0
    if-ge p1, v5, :cond_1

    add-int/lit8 v1, v3, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public final z(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/measurement/G4;)I
    .locals 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/Z5;->j(Ljava/lang/Object;)V

    sget-object v13, Lcom/google/android/gms/internal/measurement/Z5;->m:Lsun/misc/Unsafe;

    move/from16 v2, p3

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0xfffff

    :goto_0
    const-string v8, "Failed to parse the message."

    const/16 v17, 0x0

    const/4 v15, 0x3

    if-ge v2, v10, :cond_7a

    add-int/lit8 v5, v2, 0x1

    aget-byte v2, v9, v2

    if-gez v2, :cond_0

    invoke-static {v2, v9, v5, v12}, Lcom/google/android/gms/internal/measurement/H4;->b(I[BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    iget v5, v12, Lcom/google/android/gms/internal/measurement/G4;->a:I

    goto :goto_1

    :cond_0
    move/from16 v34, v5

    move v5, v2

    move/from16 v2, v34

    :goto_1
    ushr-int/lit8 v14, v5, 0x3

    if-le v14, v3, :cond_2

    div-int/2addr v4, v15

    iget v3, v1, Lcom/google/android/gms/internal/measurement/Z5;->c:I

    if-lt v14, v3, :cond_1

    iget v3, v1, Lcom/google/android/gms/internal/measurement/Z5;->d:I

    if-gt v14, v3, :cond_1

    invoke-virtual {v1, v14, v4}, Lcom/google/android/gms/internal/measurement/Z5;->v(II)I

    move-result v3

    goto :goto_2

    :cond_1
    const/4 v3, -0x1

    :goto_2
    move v4, v3

    :goto_3
    const/4 v3, -0x1

    goto :goto_4

    :cond_2
    iget v3, v1, Lcom/google/android/gms/internal/measurement/Z5;->c:I

    if-lt v14, v3, :cond_3

    iget v3, v1, Lcom/google/android/gms/internal/measurement/Z5;->d:I

    if-gt v14, v3, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v1, v14, v3}, Lcom/google/android/gms/internal/measurement/Z5;->v(II)I

    move-result v4

    goto :goto_3

    :cond_3
    const/4 v3, -0x1

    const/4 v4, -0x1

    :goto_4
    if-ne v4, v3, :cond_4

    move-object v10, v1

    move v4, v2

    move/from16 v16, v3

    move/from16 v18, v6

    move/from16 v19, v7

    move-object/from16 v20, v8

    move v1, v11

    move-object v15, v13

    const/4 v11, 0x0

    goto/16 :goto_4d

    :cond_4
    and-int/lit8 v3, v5, 0x7

    iget-object v15, v1, Lcom/google/android/gms/internal/measurement/Z5;->a:[I

    add-int/lit8 v19, v4, 0x1

    move/from16 v20, v2

    aget v2, v15, v19

    move/from16 v19, v5

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/Z5;->O(I)I

    move-result v5

    move-object/from16 v21, v8

    const v16, 0xfffff

    and-int v8, v2, v16

    int-to-long v10, v8

    const/high16 v22, 0x20000000

    const-wide/16 v24, 0x0

    const-string v8, ""

    move-object/from16 v26, v8

    const-string v8, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    move-object/from16 v27, v8

    const/16 v8, 0x11

    if-gt v5, v8, :cond_10

    add-int/lit8 v8, v4, 0x2

    aget v8, v15, v8

    ushr-int/lit8 v15, v8, 0x14

    const/16 v23, 0x1

    shl-int v15, v23, v15

    move-wide/from16 v28, v10

    const v10, 0xfffff

    and-int/2addr v8, v10

    if-eq v8, v7, :cond_7

    if-eq v7, v10, :cond_5

    int-to-long v10, v7

    invoke-virtual {v13, v0, v10, v11, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v10, 0xfffff

    :cond_5
    if-ne v8, v10, :cond_6

    const/4 v6, 0x0

    goto :goto_5

    :cond_6
    int-to-long v6, v8

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    :goto_5
    move v11, v8

    goto :goto_6

    :cond_7
    move v11, v7

    :goto_6
    packed-switch v5, :pswitch_data_0

    const/4 v5, 0x3

    if-ne v3, v5, :cond_8

    or-int/2addr v15, v6

    invoke-virtual {v1, v0, v4}, Lcom/google/android/gms/internal/measurement/Z5;->H(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    shl-int/lit8 v2, v14, 0x3

    or-int/lit8 v7, v2, 0x4

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/measurement/Z5;->E(I)Lcom/google/android/gms/internal/measurement/h6;

    move-result-object v3

    move/from16 v5, v20

    move-object v2, v8

    const/16 v16, -0x1

    move v6, v4

    move-object/from16 v4, p2

    move/from16 v10, v19

    move/from16 v19, v11

    move v11, v6

    move/from16 v6, p4

    move/from16 p3, v15

    move-object v15, v8

    move-object/from16 v8, p6

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/measurement/H4;->k(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/h6;[BIIILcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    invoke-virtual {v1, v0, v11, v15}, Lcom/google/android/gms/internal/measurement/Z5;->I(Ljava/lang/Object;ILjava/lang/Object;)V

    move/from16 v6, p3

    :goto_7
    move v5, v10

    move v4, v11

    move v3, v14

    :goto_8
    move/from16 v7, v19

    move/from16 v10, p4

    :goto_9
    move/from16 v11, p5

    goto/16 :goto_0

    :cond_8
    move/from16 v10, v19

    move/from16 v5, v20

    const/16 v16, -0x1

    move/from16 v19, v11

    move v11, v4

    goto/16 :goto_10

    :pswitch_0
    move/from16 v10, v19

    move/from16 v5, v20

    const/16 v16, -0x1

    move/from16 v19, v11

    move v11, v4

    if-nez v3, :cond_f

    or-int v8, v6, v15

    invoke-static {v9, v5, v12}, Lcom/google/android/gms/internal/measurement/H4;->c([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v15

    iget-wide v2, v12, Lcom/google/android/gms/internal/measurement/G4;->b:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/U4;->b(J)J

    move-result-wide v6

    move-object v2, v13

    move-object/from16 v3, p1

    move-wide/from16 v4, v28

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move v6, v8

    move v5, v10

    move v4, v11

    move v3, v14

    move v2, v15

    goto :goto_8

    :pswitch_1
    move/from16 v10, v19

    move/from16 v5, v20

    const/16 v16, -0x1

    move/from16 v19, v11

    move v11, v4

    if-nez v3, :cond_f

    or-int/2addr v6, v15

    invoke-static {v9, v5, v12}, Lcom/google/android/gms/internal/measurement/H4;->a([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/measurement/G4;->a:I

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/U4;->a(I)I

    move-result v3

    move-wide/from16 v7, v28

    invoke-virtual {v13, v0, v7, v8, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_7

    :pswitch_2
    move/from16 v10, v19

    move/from16 v5, v20

    move-wide/from16 v7, v28

    const/16 v16, -0x1

    move/from16 v19, v11

    move v11, v4

    if-nez v3, :cond_f

    invoke-static {v9, v5, v12}, Lcom/google/android/gms/internal/measurement/H4;->a([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v3

    iget v4, v12, Lcom/google/android/gms/internal/measurement/G4;->a:I

    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/measurement/Z5;->G(I)Lcom/google/android/gms/internal/measurement/v5;

    move-result-object v5

    const/high16 v17, -0x80000000

    and-int v2, v2, v17

    if-eqz v2, :cond_a

    if-eqz v5, :cond_a

    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/measurement/v5;->a(I)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_b

    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/Z5;->y(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/t6;

    move-result-object v2

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v10, v4}, Lcom/google/android/gms/internal/measurement/t6;->k(ILjava/lang/Object;)V

    :goto_a
    move v2, v3

    goto/16 :goto_7

    :cond_a
    :goto_b
    or-int/2addr v6, v15

    invoke-virtual {v13, v0, v7, v8, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    :pswitch_3
    move/from16 v10, v19

    move/from16 v5, v20

    move-wide/from16 v7, v28

    const/4 v2, 0x2

    const/16 v16, -0x1

    move/from16 v19, v11

    move v11, v4

    if-ne v3, v2, :cond_f

    or-int/2addr v6, v15

    invoke-static {v9, v5, v12}, Lcom/google/android/gms/internal/measurement/H4;->g([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    iget-object v3, v12, Lcom/google/android/gms/internal/measurement/G4;->c:Ljava/lang/Object;

    invoke-virtual {v13, v0, v7, v8, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_4
    move/from16 v10, v19

    move/from16 v5, v20

    const/4 v2, 0x2

    const/16 v16, -0x1

    move/from16 v19, v11

    move v11, v4

    if-ne v3, v2, :cond_f

    or-int v8, v6, v15

    invoke-virtual {v1, v0, v11}, Lcom/google/android/gms/internal/measurement/Z5;->H(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/measurement/Z5;->E(I)Lcom/google/android/gms/internal/measurement/h6;

    move-result-object v3

    move-object v2, v15

    move-object/from16 v4, p2

    move/from16 v6, p4

    move-object/from16 v7, p6

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/H4;->j(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/h6;[BIILcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    invoke-virtual {v1, v0, v11, v15}, Lcom/google/android/gms/internal/measurement/Z5;->I(Ljava/lang/Object;ILjava/lang/Object;)V

    move v6, v8

    goto/16 :goto_7

    :pswitch_5
    move/from16 v10, v19

    move/from16 v5, v20

    move-wide/from16 v7, v28

    const/16 v16, -0x1

    move/from16 v19, v11

    move v11, v4

    const/4 v4, 0x2

    if-ne v3, v4, :cond_f

    and-int v2, v2, v22

    if-eqz v2, :cond_b

    or-int v2, v6, v15

    invoke-static {v9, v5, v12}, Lcom/google/android/gms/internal/measurement/H4;->f([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v3

    move v6, v2

    move v2, v3

    goto :goto_d

    :cond_b
    invoke-static {v9, v5, v12}, Lcom/google/android/gms/internal/measurement/H4;->a([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/measurement/G4;->a:I

    if-ltz v3, :cond_d

    or-int v4, v6, v15

    if-nez v3, :cond_c

    move-object/from16 v5, v26

    iput-object v5, v12, Lcom/google/android/gms/internal/measurement/G4;->c:Ljava/lang/Object;

    :goto_c
    move v6, v4

    goto :goto_d

    :cond_c
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/internal/measurement/A5;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, v9, v2, v3, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v5, v12, Lcom/google/android/gms/internal/measurement/G4;->c:Ljava/lang/Object;

    add-int/2addr v2, v3

    goto :goto_c

    :goto_d
    iget-object v3, v12, Lcom/google/android/gms/internal/measurement/G4;->c:Ljava/lang/Object;

    invoke-virtual {v13, v0, v7, v8, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_7

    :cond_d
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmq;

    move-object/from16 v4, v27

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/measurement/zzmq;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    move/from16 v10, v19

    move/from16 v5, v20

    move-wide/from16 v7, v28

    const/16 v16, -0x1

    move/from16 v19, v11

    move v11, v4

    if-nez v3, :cond_f

    or-int/2addr v6, v15

    invoke-static {v9, v5, v12}, Lcom/google/android/gms/internal/measurement/H4;->c([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    iget-wide v3, v12, Lcom/google/android/gms/internal/measurement/G4;->b:J

    cmp-long v3, v3, v24

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    goto :goto_e

    :cond_e
    const/4 v3, 0x0

    :goto_e
    invoke-static {v0, v7, v8, v3}, Lcom/google/android/gms/internal/measurement/z6;->n(Ljava/lang/Object;JZ)V

    goto/16 :goto_7

    :pswitch_7
    move/from16 v10, v19

    move/from16 v5, v20

    move-wide/from16 v7, v28

    const/4 v2, 0x5

    const/16 v16, -0x1

    move/from16 v19, v11

    move v11, v4

    if-ne v3, v2, :cond_f

    add-int/lit8 v2, v5, 0x4

    or-int/2addr v6, v15

    invoke-static {v9, v5}, Lcom/google/android/gms/internal/measurement/H4;->d([BI)I

    move-result v3

    invoke-virtual {v13, v0, v7, v8, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_7

    :pswitch_8
    move/from16 v10, v19

    move/from16 v5, v20

    move-wide/from16 v7, v28

    const/4 v2, 0x1

    const/16 v16, -0x1

    move/from16 v19, v11

    move v11, v4

    if-ne v3, v2, :cond_f

    add-int/lit8 v17, v5, 0x8

    or-int/2addr v15, v6

    invoke-static {v9, v5}, Lcom/google/android/gms/internal/measurement/H4;->e([BI)J

    move-result-wide v20

    move-object v2, v13

    move-object/from16 v3, p1

    move-wide v4, v7

    move-wide/from16 v6, v20

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_f
    move v5, v10

    move v4, v11

    move v3, v14

    move v6, v15

    move/from16 v2, v17

    goto/16 :goto_8

    :pswitch_9
    move/from16 v10, v19

    move/from16 v5, v20

    move-wide/from16 v7, v28

    const/16 v16, -0x1

    move/from16 v19, v11

    move v11, v4

    if-nez v3, :cond_f

    or-int/2addr v6, v15

    invoke-static {v9, v5, v12}, Lcom/google/android/gms/internal/measurement/H4;->a([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/measurement/G4;->a:I

    invoke-virtual {v13, v0, v7, v8, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_7

    :pswitch_a
    move/from16 v10, v19

    move/from16 v5, v20

    move-wide/from16 v7, v28

    const/16 v16, -0x1

    move/from16 v19, v11

    move v11, v4

    if-nez v3, :cond_f

    or-int/2addr v15, v6

    invoke-static {v9, v5, v12}, Lcom/google/android/gms/internal/measurement/H4;->c([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v17

    iget-wide v4, v12, Lcom/google/android/gms/internal/measurement/G4;->b:J

    move-object v2, v13

    move-object/from16 v3, p1

    move-wide/from16 v20, v4

    move-wide v4, v7

    move-wide/from16 v6, v20

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_f

    :pswitch_b
    move/from16 v10, v19

    move/from16 v5, v20

    move-wide/from16 v7, v28

    const/4 v2, 0x5

    const/16 v16, -0x1

    move/from16 v19, v11

    move v11, v4

    if-ne v3, v2, :cond_f

    add-int/lit8 v2, v5, 0x4

    or-int/2addr v6, v15

    invoke-static {v9, v5}, Lcom/google/android/gms/internal/measurement/H4;->d([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static {v0, v7, v8, v3}, Lcom/google/android/gms/internal/measurement/z6;->p(Ljava/lang/Object;JF)V

    goto/16 :goto_7

    :pswitch_c
    move/from16 v10, v19

    move/from16 v5, v20

    move-wide/from16 v7, v28

    const/4 v2, 0x1

    const/16 v16, -0x1

    move/from16 v19, v11

    move v11, v4

    if-ne v3, v2, :cond_f

    add-int/lit8 v2, v5, 0x8

    or-int/2addr v6, v15

    invoke-static {v9, v5}, Lcom/google/android/gms/internal/measurement/H4;->e([BI)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    invoke-static {v0, v7, v8, v3, v4}, Lcom/google/android/gms/internal/measurement/z6;->r(Ljava/lang/Object;JD)V

    goto/16 :goto_7

    :cond_f
    :goto_10
    move v4, v5

    move/from16 v18, v6

    move v5, v10

    move-object v15, v13

    move-object/from16 v20, v21

    move-object v10, v1

    move/from16 v1, p5

    goto/16 :goto_4d

    :cond_10
    move/from16 v18, v7

    move/from16 v8, v20

    const/16 v16, -0x1

    move-object/from16 v20, v15

    move-wide/from16 v34, v10

    move v11, v4

    move/from16 v10, v19

    move-object/from16 v4, v27

    move/from16 v19, v6

    move-wide/from16 v6, v34

    const/16 v15, 0x1b

    if-ne v5, v15, :cond_14

    const/4 v15, 0x2

    if-ne v3, v15, :cond_13

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/z5;

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/z5;->N1()Z

    move-result v3

    if-nez v3, :cond_12

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_11

    const/16 v3, 0xa

    goto :goto_11

    :cond_11
    add-int/2addr v3, v3

    :goto_11
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/measurement/z5;->K0(I)Lcom/google/android/gms/internal/measurement/z5;

    move-result-object v2

    invoke-virtual {v13, v0, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_12
    move-object v7, v2

    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/measurement/Z5;->E(I)Lcom/google/android/gms/internal/measurement/h6;

    move-result-object v2

    move v3, v10

    move-object/from16 v4, p2

    move v5, v8

    move/from16 v15, v19

    move/from16 v6, p4

    move/from16 v19, v18

    move-object/from16 v8, p6

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/measurement/H4;->n(Lcom/google/android/gms/internal/measurement/h6;I[BIILcom/google/android/gms/internal/measurement/z5;Lcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    move v5, v10

    move v4, v11

    move v3, v14

    move v6, v15

    goto/16 :goto_8

    :cond_13
    move/from16 v15, v19

    move/from16 v19, v18

    move/from16 v26, v10

    move-object/from16 v33, v13

    move/from16 v28, v14

    move/from16 v18, v15

    move-object/from16 v14, v21

    move/from16 v15, p4

    move v13, v8

    goto/16 :goto_3f

    :cond_14
    move/from16 v34, v19

    move/from16 v19, v18

    move/from16 v18, v34

    const/16 v15, 0x31

    move-object/from16 v27, v4

    const-string v4, "Protocol message had invalid UTF-8."

    move-object/from16 v23, v4

    const-string v4, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    if-gt v5, v15, :cond_5d

    move/from16 v28, v14

    int-to-long v14, v2

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/z5;

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/z5;->N1()Z

    move-result v20

    if-nez v20, :cond_15

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v20

    move-wide/from16 v30, v14

    add-int v14, v20, v20

    invoke-interface {v2, v14}, Lcom/google/android/gms/internal/measurement/z5;->K0(I)Lcom/google/android/gms/internal/measurement/z5;

    move-result-object v2

    invoke-virtual {v13, v0, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_12
    move-object v14, v2

    goto :goto_13

    :cond_15
    move-wide/from16 v30, v14

    goto :goto_12

    :goto_13
    packed-switch v5, :pswitch_data_1

    const/4 v2, 0x3

    if-ne v3, v2, :cond_18

    and-int/lit8 v2, v10, -0x8

    or-int/lit8 v15, v2, 0x4

    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/measurement/Z5;->E(I)Lcom/google/android/gms/internal/measurement/h6;

    move-result-object v20

    move-object/from16 v2, v20

    move-object/from16 v3, p2

    move v4, v8

    move/from16 v5, p4

    move v6, v15

    move-object/from16 v7, p6

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/H4;->i(Lcom/google/android/gms/internal/measurement/h6;[BIIILcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    iget-object v3, v12, Lcom/google/android/gms/internal/measurement/G4;->c:Ljava/lang/Object;

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v7, p4

    :goto_14
    if-ge v2, v7, :cond_16

    invoke-static {v9, v2, v12}, Lcom/google/android/gms/internal/measurement/H4;->a([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v4

    iget v3, v12, Lcom/google/android/gms/internal/measurement/G4;->a:I

    if-ne v10, v3, :cond_16

    move-object/from16 v2, v20

    move-object/from16 v3, p2

    move/from16 v5, p4

    move v6, v15

    move/from16 v22, v15

    move v15, v7

    move-object/from16 v7, p6

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/H4;->i(Lcom/google/android/gms/internal/measurement/h6;[BIIILcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    iget-object v3, v12, Lcom/google/android/gms/internal/measurement/G4;->c:Ljava/lang/Object;

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v15

    move/from16 v15, v22

    goto :goto_14

    :cond_16
    move v15, v7

    :cond_17
    :goto_15
    move-object/from16 v29, v13

    move v13, v8

    move-object v8, v1

    move-object/from16 v1, v21

    goto/16 :goto_3a

    :cond_18
    move/from16 v15, p4

    :cond_19
    move-object/from16 v29, v13

    move v13, v8

    move-object v8, v1

    :goto_16
    move-object/from16 v1, v21

    goto/16 :goto_39

    :pswitch_d
    move/from16 v15, p4

    const/4 v2, 0x2

    if-ne v3, v2, :cond_1c

    sget v2, Lcom/google/android/gms/internal/measurement/H4;->b:I

    check-cast v14, Lcom/google/android/gms/internal/measurement/J5;

    invoke-static {v9, v8, v12}, Lcom/google/android/gms/internal/measurement/H4;->a([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/measurement/G4;->a:I

    add-int/2addr v3, v2

    :goto_17
    if-ge v2, v3, :cond_1a

    invoke-static {v9, v2, v12}, Lcom/google/android/gms/internal/measurement/H4;->c([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    iget-wide v5, v12, Lcom/google/android/gms/internal/measurement/G4;->b:J

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/U4;->b(J)J

    move-result-wide v5

    invoke-virtual {v14, v5, v6}, Lcom/google/android/gms/internal/measurement/J5;->c(J)V

    goto :goto_17

    :cond_1a
    if-ne v2, v3, :cond_1b

    goto :goto_15

    :cond_1b
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmq;

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/measurement/zzmq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    if-nez v3, :cond_19

    sget v2, Lcom/google/android/gms/internal/measurement/H4;->b:I

    check-cast v14, Lcom/google/android/gms/internal/measurement/J5;

    invoke-static {v9, v8, v12}, Lcom/google/android/gms/internal/measurement/H4;->c([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    iget-wide v3, v12, Lcom/google/android/gms/internal/measurement/G4;->b:J

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/U4;->b(J)J

    move-result-wide v3

    invoke-virtual {v14, v3, v4}, Lcom/google/android/gms/internal/measurement/J5;->c(J)V

    :goto_18
    if-ge v2, v15, :cond_17

    invoke-static {v9, v2, v12}, Lcom/google/android/gms/internal/measurement/H4;->a([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v3

    iget v4, v12, Lcom/google/android/gms/internal/measurement/G4;->a:I

    if-ne v10, v4, :cond_17

    invoke-static {v9, v3, v12}, Lcom/google/android/gms/internal/measurement/H4;->c([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    iget-wide v3, v12, Lcom/google/android/gms/internal/measurement/G4;->b:J

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/U4;->b(J)J

    move-result-wide v3

    invoke-virtual {v14, v3, v4}, Lcom/google/android/gms/internal/measurement/J5;->c(J)V

    goto :goto_18

    :pswitch_e
    move/from16 v15, p4

    const/4 v2, 0x2

    if-ne v3, v2, :cond_1f

    sget v2, Lcom/google/android/gms/internal/measurement/H4;->b:I

    check-cast v14, Lcom/google/android/gms/internal/measurement/r5;

    invoke-static {v9, v8, v12}, Lcom/google/android/gms/internal/measurement/H4;->a([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/measurement/G4;->a:I

    add-int/2addr v3, v2

    :goto_19
    if-ge v2, v3, :cond_1d

    invoke-static {v9, v2, v12}, Lcom/google/android/gms/internal/measurement/H4;->a([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    iget v5, v12, Lcom/google/android/gms/internal/measurement/G4;->a:I

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/U4;->a(I)I

    move-result v5

    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/measurement/r5;->k(I)V

    goto :goto_19

    :cond_1d
    if-ne v2, v3, :cond_1e

    goto/16 :goto_15

    :cond_1e
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmq;

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/measurement/zzmq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    if-nez v3, :cond_19

    sget v2, Lcom/google/android/gms/internal/measurement/H4;->b:I

    check-cast v14, Lcom/google/android/gms/internal/measurement/r5;

    invoke-static {v9, v8, v12}, Lcom/google/android/gms/internal/measurement/H4;->a([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/measurement/G4;->a:I

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/U4;->a(I)I

    move-result v3

    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/measurement/r5;->k(I)V

    :goto_1a
    if-ge v2, v15, :cond_17

    invoke-static {v9, v2, v12}, Lcom/google/android/gms/internal/measurement/H4;->a([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v3

    iget v4, v12, Lcom/google/android/gms/internal/measurement/G4;->a:I

    if-ne v10, v4, :cond_17

    invoke-static {v9, v3, v12}, Lcom/google/android/gms/internal/measurement/H4;->a([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/measurement/G4;->a:I

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/U4;->a(I)I

    move-result v3

    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/measurement/r5;->k(I)V

    goto :goto_1a

    :pswitch_f
    move/from16 v15, p4

    const/4 v2, 0x2

    if-ne v3, v2, :cond_20

    invoke-static {v9, v8, v14, v12}, Lcom/google/android/gms/internal/measurement/H4;->m([BILcom/google/android/gms/internal/measurement/z5;Lcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    goto :goto_1b

    :cond_20
    if-nez v3, :cond_28

    move v2, v10

    move-object/from16 v3, p2

    move v4, v8

    move/from16 v5, p4

    move-object v6, v14

    move-object/from16 v7, p6

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/H4;->l(I[BIILcom/google/android/gms/internal/measurement/z5;Lcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    :goto_1b
    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/measurement/Z5;->G(I)Lcom/google/android/gms/internal/measurement/v5;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/Z5;->j:Lcom/google/android/gms/internal/measurement/s6;

    sget v5, Lcom/google/android/gms/internal/measurement/j6;->b:I

    if-eqz v3, :cond_26

    if-eqz v14, :cond_24

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v20, v2

    move-object/from16 v2, v17

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1c
    if-ge v6, v5, :cond_23

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v29, v13

    move-object/from16 v13, v22

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/measurement/v5;->a(I)Z

    move-result v22

    if-eqz v22, :cond_22

    if-eq v6, v7, :cond_21

    invoke-interface {v14, v7, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_21
    add-int/lit8 v7, v7, 0x1

    move/from16 v13, v28

    goto :goto_1d

    :cond_22
    move/from16 v13, v28

    invoke-static {v0, v13, v1, v2, v4}, Lcom/google/android/gms/internal/measurement/j6;->e(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/measurement/s6;)Ljava/lang/Object;

    move-result-object v2

    :goto_1d
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    move/from16 v28, v13

    move-object/from16 v13, v29

    goto :goto_1c

    :cond_23
    move-object/from16 v29, v13

    move/from16 v13, v28

    if-eq v7, v5, :cond_27

    invoke-interface {v14, v7, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_1f

    :cond_24
    move/from16 v20, v2

    move-object/from16 v29, v13

    move/from16 v13, v28

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object/from16 v2, v17

    :cond_25
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v3, v5}, Lcom/google/android/gms/internal/measurement/v5;->a(I)Z

    move-result v6

    if-nez v6, :cond_25

    invoke-static {v0, v13, v5, v2, v4}, Lcom/google/android/gms/internal/measurement/j6;->e(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/measurement/s6;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1e

    :cond_26
    move/from16 v20, v2

    move-object/from16 v29, v13

    move/from16 v13, v28

    :cond_27
    :goto_1f
    move/from16 v28, v13

    move/from16 v2, v20

    :goto_20
    move-object/from16 v1, v21

    move v13, v8

    move-object/from16 v8, p0

    goto/16 :goto_3a

    :cond_28
    move-object/from16 v29, v13

    move v13, v8

    move-object/from16 v1, v21

    :goto_21
    move-object/from16 v8, p0

    goto/16 :goto_39

    :pswitch_10
    move/from16 v15, p4

    move-object/from16 v29, v13

    move/from16 v13, v28

    const/4 v1, 0x2

    if-ne v3, v1, :cond_30

    invoke-static {v9, v8, v12}, Lcom/google/android/gms/internal/measurement/H4;->a([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/measurement/G4;->a:I

    if-ltz v2, :cond_2f

    array-length v3, v9

    sub-int/2addr v3, v1

    if-gt v2, v3, :cond_2e

    if-nez v2, :cond_29

    sget-object v2, Lcom/google/android/gms/internal/measurement/S4;->c:Lcom/google/android/gms/internal/measurement/S4;

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_29
    invoke-static {v9, v1, v2}, Lcom/google/android/gms/internal/measurement/S4;->p([BII)Lcom/google/android/gms/internal/measurement/S4;

    move-result-object v3

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_22
    add-int/2addr v1, v2

    :goto_23
    if-ge v1, v15, :cond_2d

    invoke-static {v9, v1, v12}, Lcom/google/android/gms/internal/measurement/H4;->a([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/measurement/G4;->a:I

    if-ne v10, v3, :cond_2d

    invoke-static {v9, v2, v12}, Lcom/google/android/gms/internal/measurement/H4;->a([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/measurement/G4;->a:I

    if-ltz v2, :cond_2c

    array-length v3, v9

    sub-int/2addr v3, v1

    if-gt v2, v3, :cond_2b

    if-nez v2, :cond_2a

    sget-object v2, Lcom/google/android/gms/internal/measurement/S4;->c:Lcom/google/android/gms/internal/measurement/S4;

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_2a
    invoke-static {v9, v1, v2}, Lcom/google/android/gms/internal/measurement/S4;->p([BII)Lcom/google/android/gms/internal/measurement/S4;

    move-result-object v3

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_2b
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmq;

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/measurement/zzmq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmq;

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzmq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    move v2, v1

    move/from16 v28, v13

    goto :goto_20

    :cond_2e
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmq;

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/measurement/zzmq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    move-object/from16 v1, v27

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmq;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzmq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    move/from16 v28, v13

    move-object/from16 v1, v21

    move v13, v8

    goto :goto_21

    :pswitch_11
    move/from16 v15, p4

    move-object/from16 v29, v13

    move/from16 v13, v28

    const/4 v1, 0x2

    if-ne v3, v1, :cond_31

    move-object/from16 v1, p0

    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/measurement/Z5;->E(I)Lcom/google/android/gms/internal/measurement/h6;

    move-result-object v2

    move v3, v10

    move-object/from16 v4, p2

    move v5, v8

    move/from16 v6, p4

    move-object v7, v14

    move/from16 v28, v13

    move-object/from16 v14, v21

    move v13, v8

    move-object/from16 v8, p6

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/measurement/H4;->n(Lcom/google/android/gms/internal/measurement/h6;I[BIILcom/google/android/gms/internal/measurement/z5;Lcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    move-object v8, v1

    move-object v1, v14

    goto/16 :goto_3a

    :cond_31
    move/from16 v28, v13

    move v13, v8

    move-object/from16 v8, p0

    goto/16 :goto_16

    :pswitch_12
    move/from16 v15, p4

    move-object/from16 v29, v13

    move-object/from16 v7, v21

    const/4 v2, 0x2

    move v13, v8

    move-object v8, v1

    move-object/from16 v1, v27

    if-ne v3, v2, :cond_3e

    const-wide/32 v2, 0x20000000

    and-long v2, v30, v2

    cmp-long v2, v2, v24

    if-nez v2, :cond_37

    invoke-static {v9, v13, v12}, Lcom/google/android/gms/internal/measurement/H4;->a([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/measurement/G4;->a:I

    if-ltz v3, :cond_36

    if-nez v3, :cond_32

    move-object/from16 v6, v26

    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_32
    move-object/from16 v6, v26

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/internal/measurement/A5;->a:Ljava/nio/charset/Charset;

    invoke-direct {v4, v9, v2, v3, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_24
    add-int/2addr v2, v3

    :goto_25
    if-ge v2, v15, :cond_35

    invoke-static {v9, v2, v12}, Lcom/google/android/gms/internal/measurement/H4;->a([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v3

    iget v4, v12, Lcom/google/android/gms/internal/measurement/G4;->a:I

    if-ne v10, v4, :cond_35

    invoke-static {v9, v3, v12}, Lcom/google/android/gms/internal/measurement/H4;->a([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/measurement/G4;->a:I

    if-ltz v3, :cond_34

    if-nez v3, :cond_33

    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_33
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/internal/measurement/A5;->a:Ljava/nio/charset/Charset;

    invoke-direct {v4, v9, v2, v3, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_34
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmq;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzmq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    :goto_26
    move-object v1, v7

    goto/16 :goto_3a

    :cond_36
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmq;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzmq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    move-object/from16 v6, v26

    invoke-static {v9, v13, v12}, Lcom/google/android/gms/internal/measurement/H4;->a([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/measurement/G4;->a:I

    if-ltz v3, :cond_3d

    if-nez v3, :cond_38

    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_38
    add-int v4, v2, v3

    invoke-static {v9, v2, v4}, Lcom/google/android/gms/internal/measurement/B6;->a([BII)Z

    move-result v5

    if-eqz v5, :cond_3c

    new-instance v5, Ljava/lang/String;

    move/from16 v20, v4

    sget-object v4, Lcom/google/android/gms/internal/measurement/A5;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, v9, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_27
    move/from16 v2, v20

    :goto_28
    if-ge v2, v15, :cond_35

    invoke-static {v9, v2, v12}, Lcom/google/android/gms/internal/measurement/H4;->a([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v3

    iget v4, v12, Lcom/google/android/gms/internal/measurement/G4;->a:I

    if-ne v10, v4, :cond_35

    invoke-static {v9, v3, v12}, Lcom/google/android/gms/internal/measurement/H4;->a([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/measurement/G4;->a:I

    if-ltz v3, :cond_3b

    if-nez v3, :cond_39

    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_39
    add-int v4, v2, v3

    invoke-static {v9, v2, v4}, Lcom/google/android/gms/internal/measurement/B6;->a([BII)Z

    move-result v5

    if-eqz v5, :cond_3a

    new-instance v5, Ljava/lang/String;

    move/from16 v20, v4

    sget-object v4, Lcom/google/android/gms/internal/measurement/A5;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, v9, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_3a
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmq;

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzmq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmq;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzmq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    move-object/from16 v1, v23

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmq;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzmq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmq;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzmq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    move-object v1, v7

    goto/16 :goto_39

    :pswitch_13
    move/from16 v15, p4

    move-object/from16 v29, v13

    move-object/from16 v7, v21

    move v13, v8

    move-object v8, v1

    const/4 v1, 0x2

    if-ne v3, v1, :cond_43

    sget v1, Lcom/google/android/gms/internal/measurement/H4;->b:I

    check-cast v14, Lcom/google/android/gms/internal/measurement/I4;

    invoke-static {v9, v13, v12}, Lcom/google/android/gms/internal/measurement/H4;->a([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/measurement/G4;->a:I

    add-int/2addr v2, v1

    :goto_29
    if-ge v1, v2, :cond_40

    invoke-static {v9, v1, v12}, Lcom/google/android/gms/internal/measurement/H4;->c([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v1

    iget-wide v5, v12, Lcom/google/android/gms/internal/measurement/G4;->b:J

    cmp-long v3, v5, v24

    if-eqz v3, :cond_3f

    const/4 v3, 0x1

    goto :goto_2a

    :cond_3f
    const/4 v3, 0x0

    :goto_2a
    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/measurement/I4;->k(Z)V

    goto :goto_29

    :cond_40
    if-ne v1, v2, :cond_42

    :cond_41
    :goto_2b
    move v2, v1

    goto/16 :goto_26

    :cond_42
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmq;

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/measurement/zzmq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    if-nez v3, :cond_3e

    sget v1, Lcom/google/android/gms/internal/measurement/H4;->b:I

    check-cast v14, Lcom/google/android/gms/internal/measurement/I4;

    invoke-static {v9, v13, v12}, Lcom/google/android/gms/internal/measurement/H4;->c([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v1

    iget-wide v2, v12, Lcom/google/android/gms/internal/measurement/G4;->b:J

    cmp-long v2, v2, v24

    if-eqz v2, :cond_44

    const/4 v3, 0x1

    goto :goto_2c

    :cond_44
    const/4 v3, 0x0

    :goto_2c
    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/measurement/I4;->k(Z)V

    :goto_2d
    if-ge v1, v15, :cond_41

    invoke-static {v9, v1, v12}, Lcom/google/android/gms/internal/measurement/H4;->a([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/measurement/G4;->a:I

    if-ne v10, v3, :cond_41

    invoke-static {v9, v2, v12}, Lcom/google/android/gms/internal/measurement/H4;->c([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v1

    iget-wide v2, v12, Lcom/google/android/gms/internal/measurement/G4;->b:J

    cmp-long v2, v2, v24

    if-eqz v2, :cond_45

    const/4 v3, 0x1

    goto :goto_2e

    :cond_45
    const/4 v3, 0x0

    :goto_2e
    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/measurement/I4;->k(Z)V

    goto :goto_2d

    :pswitch_14
    move/from16 v15, p4

    move-object/from16 v29, v13

    move-object/from16 v7, v21

    move v13, v8

    move-object v8, v1

    const/4 v1, 0x2

    if-ne v3, v1, :cond_49

    sget v1, Lcom/google/android/gms/internal/measurement/H4;->b:I

    check-cast v14, Lcom/google/android/gms/internal/measurement/r5;

    invoke-static {v9, v13, v12}, Lcom/google/android/gms/internal/measurement/H4;->a([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/measurement/G4;->a:I

    add-int v3, v1, v2

    array-length v5, v9

    if-gt v3, v5, :cond_48

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/r5;->size()I

    move-result v5

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v5, v2

    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/measurement/r5;->l(I)V

    :goto_2f
    if-ge v1, v3, :cond_46

    invoke-static {v9, v1}, Lcom/google/android/gms/internal/measurement/H4;->d([BI)I

    move-result v2

    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/measurement/r5;->k(I)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_2f

    :cond_46
    if-ne v1, v3, :cond_47

    goto :goto_2b

    :cond_47
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmq;

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/measurement/zzmq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_48
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmq;

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/measurement/zzmq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    const/4 v1, 0x5

    if-ne v3, v1, :cond_3e

    add-int/lit8 v2, v13, 0x4

    sget v1, Lcom/google/android/gms/internal/measurement/H4;->b:I

    check-cast v14, Lcom/google/android/gms/internal/measurement/r5;

    invoke-static {v9, v13}, Lcom/google/android/gms/internal/measurement/H4;->d([BI)I

    move-result v1

    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/measurement/r5;->k(I)V

    :goto_30
    if-ge v2, v15, :cond_35

    invoke-static {v9, v2, v12}, Lcom/google/android/gms/internal/measurement/H4;->a([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v1

    iget v3, v12, Lcom/google/android/gms/internal/measurement/G4;->a:I

    if-ne v10, v3, :cond_35

    invoke-static {v9, v1}, Lcom/google/android/gms/internal/measurement/H4;->d([BI)I

    move-result v2

    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/measurement/r5;->k(I)V

    add-int/lit8 v2, v1, 0x4

    goto :goto_30

    :pswitch_15
    move/from16 v15, p4

    move-object/from16 v29, v13

    move-object/from16 v7, v21

    move v13, v8

    move-object v8, v1

    const/4 v1, 0x2

    if-ne v3, v1, :cond_4d

    sget v1, Lcom/google/android/gms/internal/measurement/H4;->b:I

    check-cast v14, Lcom/google/android/gms/internal/measurement/J5;

    invoke-static {v9, v13, v12}, Lcom/google/android/gms/internal/measurement/H4;->a([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/measurement/G4;->a:I

    add-int v3, v1, v2

    array-length v5, v9

    if-gt v3, v5, :cond_4c

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/J5;->size()I

    move-result v5

    div-int/lit8 v2, v2, 0x8

    add-int/2addr v5, v2

    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/measurement/J5;->j(I)V

    :goto_31
    if-ge v1, v3, :cond_4a

    invoke-static {v9, v1}, Lcom/google/android/gms/internal/measurement/H4;->e([BI)J

    move-result-wide v5

    invoke-virtual {v14, v5, v6}, Lcom/google/android/gms/internal/measurement/J5;->c(J)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_31

    :cond_4a
    if-ne v1, v3, :cond_4b

    goto/16 :goto_2b

    :cond_4b
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmq;

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/measurement/zzmq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmq;

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/measurement/zzmq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    const/4 v1, 0x1

    if-ne v3, v1, :cond_3e

    add-int/lit8 v2, v13, 0x8

    sget v1, Lcom/google/android/gms/internal/measurement/H4;->b:I

    check-cast v14, Lcom/google/android/gms/internal/measurement/J5;

    invoke-static {v9, v13}, Lcom/google/android/gms/internal/measurement/H4;->e([BI)J

    move-result-wide v3

    invoke-virtual {v14, v3, v4}, Lcom/google/android/gms/internal/measurement/J5;->c(J)V

    :goto_32
    if-ge v2, v15, :cond_35

    invoke-static {v9, v2, v12}, Lcom/google/android/gms/internal/measurement/H4;->a([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v1

    iget v3, v12, Lcom/google/android/gms/internal/measurement/G4;->a:I

    if-ne v10, v3, :cond_35

    invoke-static {v9, v1}, Lcom/google/android/gms/internal/measurement/H4;->e([BI)J

    move-result-wide v2

    invoke-virtual {v14, v2, v3}, Lcom/google/android/gms/internal/measurement/J5;->c(J)V

    add-int/lit8 v2, v1, 0x8

    goto :goto_32

    :pswitch_16
    move/from16 v15, p4

    move-object/from16 v29, v13

    move-object/from16 v7, v21

    move v13, v8

    move-object v8, v1

    const/4 v1, 0x2

    if-ne v3, v1, :cond_4e

    invoke-static {v9, v13, v14, v12}, Lcom/google/android/gms/internal/measurement/H4;->m([BILcom/google/android/gms/internal/measurement/z5;Lcom/google/android/gms/internal/measurement/G4;)I

    move-result v1

    goto/16 :goto_2b

    :cond_4e
    if-nez v3, :cond_3e

    move v2, v10

    move-object/from16 v3, p2

    move v4, v13

    move/from16 v5, p4

    move-object v6, v14

    move-object v1, v7

    move-object/from16 v7, p6

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/H4;->l(I[BIILcom/google/android/gms/internal/measurement/z5;Lcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    goto/16 :goto_3a

    :pswitch_17
    move/from16 v15, p4

    move-object/from16 v29, v13

    const/4 v2, 0x2

    move v13, v8

    move-object v8, v1

    move-object/from16 v1, v21

    if-ne v3, v2, :cond_51

    sget v2, Lcom/google/android/gms/internal/measurement/H4;->b:I

    check-cast v14, Lcom/google/android/gms/internal/measurement/J5;

    invoke-static {v9, v13, v12}, Lcom/google/android/gms/internal/measurement/H4;->a([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/measurement/G4;->a:I

    add-int/2addr v3, v2

    :goto_33
    if-ge v2, v3, :cond_4f

    invoke-static {v9, v2, v12}, Lcom/google/android/gms/internal/measurement/H4;->c([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    iget-wide v5, v12, Lcom/google/android/gms/internal/measurement/G4;->b:J

    invoke-virtual {v14, v5, v6}, Lcom/google/android/gms/internal/measurement/J5;->c(J)V

    goto :goto_33

    :cond_4f
    if-ne v2, v3, :cond_50

    goto/16 :goto_3a

    :cond_50
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmq;

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/measurement/zzmq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_51
    if-nez v3, :cond_5a

    sget v2, Lcom/google/android/gms/internal/measurement/H4;->b:I

    check-cast v14, Lcom/google/android/gms/internal/measurement/J5;

    invoke-static {v9, v13, v12}, Lcom/google/android/gms/internal/measurement/H4;->c([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    iget-wide v3, v12, Lcom/google/android/gms/internal/measurement/G4;->b:J

    invoke-virtual {v14, v3, v4}, Lcom/google/android/gms/internal/measurement/J5;->c(J)V

    :goto_34
    if-ge v2, v15, :cond_5b

    invoke-static {v9, v2, v12}, Lcom/google/android/gms/internal/measurement/H4;->a([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v3

    iget v4, v12, Lcom/google/android/gms/internal/measurement/G4;->a:I

    if-ne v10, v4, :cond_5b

    invoke-static {v9, v3, v12}, Lcom/google/android/gms/internal/measurement/H4;->c([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    iget-wide v3, v12, Lcom/google/android/gms/internal/measurement/G4;->b:J

    invoke-virtual {v14, v3, v4}, Lcom/google/android/gms/internal/measurement/J5;->c(J)V

    goto :goto_34

    :pswitch_18
    move/from16 v15, p4

    move-object/from16 v29, v13

    const/4 v2, 0x2

    move v13, v8

    move-object v8, v1

    move-object/from16 v1, v21

    if-ne v3, v2, :cond_55

    sget v2, Lcom/google/android/gms/internal/measurement/H4;->b:I

    check-cast v14, Lcom/google/android/gms/internal/measurement/i5;

    invoke-static {v9, v13, v12}, Lcom/google/android/gms/internal/measurement/H4;->a([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/measurement/G4;->a:I

    add-int v5, v2, v3

    array-length v6, v9

    if-gt v5, v6, :cond_54

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/i5;->size()I

    move-result v6

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v6, v3

    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/measurement/i5;->l(I)V

    :goto_35
    if-ge v2, v5, :cond_52

    invoke-static {v9, v2}, Lcom/google/android/gms/internal/measurement/H4;->d([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/measurement/i5;->k(F)V

    add-int/lit8 v2, v2, 0x4

    goto :goto_35

    :cond_52
    if-ne v2, v5, :cond_53

    goto/16 :goto_3a

    :cond_53
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmq;

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/measurement/zzmq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_54
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmq;

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/measurement/zzmq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_55
    const/4 v2, 0x5

    if-ne v3, v2, :cond_5a

    add-int/lit8 v2, v13, 0x4

    sget v3, Lcom/google/android/gms/internal/measurement/H4;->b:I

    check-cast v14, Lcom/google/android/gms/internal/measurement/i5;

    invoke-static {v9, v13}, Lcom/google/android/gms/internal/measurement/H4;->d([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/measurement/i5;->k(F)V

    :goto_36
    if-ge v2, v15, :cond_5b

    invoke-static {v9, v2, v12}, Lcom/google/android/gms/internal/measurement/H4;->a([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v3

    iget v4, v12, Lcom/google/android/gms/internal/measurement/G4;->a:I

    if-ne v10, v4, :cond_5b

    invoke-static {v9, v3}, Lcom/google/android/gms/internal/measurement/H4;->d([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/measurement/i5;->k(F)V

    add-int/lit8 v2, v3, 0x4

    goto :goto_36

    :pswitch_19
    move/from16 v15, p4

    move-object/from16 v29, v13

    const/4 v2, 0x2

    move v13, v8

    move-object v8, v1

    move-object/from16 v1, v21

    if-ne v3, v2, :cond_59

    sget v2, Lcom/google/android/gms/internal/measurement/H4;->b:I

    check-cast v14, Lcom/google/android/gms/internal/measurement/Y4;

    invoke-static {v9, v13, v12}, Lcom/google/android/gms/internal/measurement/H4;->a([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/measurement/G4;->a:I

    add-int v5, v2, v3

    array-length v6, v9

    if-gt v5, v6, :cond_58

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/Y4;->size()I

    move-result v6

    div-int/lit8 v3, v3, 0x8

    add-int/2addr v6, v3

    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/measurement/Y4;->l(I)V

    :goto_37
    if-ge v2, v5, :cond_56

    invoke-static {v9, v2}, Lcom/google/android/gms/internal/measurement/H4;->e([BI)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    invoke-virtual {v14, v6, v7}, Lcom/google/android/gms/internal/measurement/Y4;->k(D)V

    add-int/lit8 v2, v2, 0x8

    goto :goto_37

    :cond_56
    if-ne v2, v5, :cond_57

    goto :goto_3a

    :cond_57
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmq;

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/measurement/zzmq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_58
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmq;

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/measurement/zzmq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_59
    const/4 v2, 0x1

    if-ne v3, v2, :cond_5a

    add-int/lit8 v2, v13, 0x8

    sget v3, Lcom/google/android/gms/internal/measurement/H4;->b:I

    check-cast v14, Lcom/google/android/gms/internal/measurement/Y4;

    invoke-static {v9, v13}, Lcom/google/android/gms/internal/measurement/H4;->e([BI)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    invoke-virtual {v14, v3, v4}, Lcom/google/android/gms/internal/measurement/Y4;->k(D)V

    :goto_38
    if-ge v2, v15, :cond_5b

    invoke-static {v9, v2, v12}, Lcom/google/android/gms/internal/measurement/H4;->a([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v3

    iget v4, v12, Lcom/google/android/gms/internal/measurement/G4;->a:I

    if-ne v10, v4, :cond_5b

    invoke-static {v9, v3}, Lcom/google/android/gms/internal/measurement/H4;->e([BI)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    invoke-virtual {v14, v4, v5}, Lcom/google/android/gms/internal/measurement/Y4;->k(D)V

    add-int/lit8 v2, v3, 0x8

    goto :goto_38

    :cond_5a
    :goto_39
    move v2, v13

    :cond_5b
    :goto_3a
    if-eq v2, v13, :cond_5c

    move-object v1, v8

    move v5, v10

    move v4, v11

    move v10, v15

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v3, v28

    move-object/from16 v13, v29

    goto/16 :goto_9

    :cond_5c
    move-object/from16 v20, v1

    move v4, v2

    move v5, v10

    move/from16 v14, v28

    move-object/from16 v15, v29

    move/from16 v1, p5

    move-object v10, v8

    goto/16 :goto_4d

    :cond_5d
    move/from16 v15, p4

    move-object/from16 v29, v13

    move/from16 v28, v14

    move-object/from16 v14, v21

    move/from16 v21, v2

    move v13, v8

    move-object v8, v1

    move-wide v1, v6

    move-object/from16 v6, v26

    const/16 v7, 0x32

    if-ne v5, v7, :cond_69

    const/4 v7, 0x2

    if-ne v3, v7, :cond_68

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/measurement/Z5;->F(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v7, v29

    invoke-virtual {v7, v0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/measurement/Q5;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/Q5;->k()Z

    move-result v6

    if-nez v6, :cond_5e

    invoke-static {}, Lcom/google/android/gms/internal/measurement/Q5;->e()Lcom/google/android/gms/internal/measurement/Q5;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/Q5;->i()Lcom/google/android/gms/internal/measurement/Q5;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/google/android/gms/internal/measurement/R5;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v0, v1, v2, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v5, v6

    :cond_5e
    check-cast v3, Lcom/google/android/gms/internal/measurement/P5;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/P5;->e()Lcom/google/android/gms/internal/measurement/O5;

    move-result-object v1

    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/measurement/Q5;

    invoke-static {v9, v13, v12}, Lcom/google/android/gms/internal/measurement/H4;->a([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/measurement/G4;->a:I

    if-ltz v3, :cond_67

    sub-int v5, v15, v2

    if-gt v3, v5, :cond_67

    add-int v5, v2, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/O5;->b:Ljava/lang/Object;

    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/O5;->d:Ljava/lang/Object;

    move-object/from16 v32, v4

    :goto_3b
    if-ge v2, v5, :cond_64

    move-object/from16 v20, v3

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v9, v2

    if-gez v2, :cond_5f

    invoke-static {v2, v9, v3, v12}, Lcom/google/android/gms/internal/measurement/H4;->b(I[BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/measurement/G4;->a:I

    move/from16 v34, v3

    move v3, v2

    move/from16 v2, v34

    :cond_5f
    move/from16 v21, v5

    ushr-int/lit8 v5, v2, 0x3

    move-object/from16 v22, v6

    and-int/lit8 v6, v2, 0x7

    move-object/from16 v29, v7

    const/4 v7, 0x1

    if-eq v5, v7, :cond_62

    const/4 v7, 0x2

    if-eq v5, v7, :cond_61

    :cond_60
    move/from16 v26, v10

    move-object/from16 v10, v20

    move/from16 v0, v21

    move-object/from16 v8, v22

    move-object/from16 v33, v29

    move-object/from16 v20, v4

    goto/16 :goto_3e

    :cond_61
    iget-object v5, v1, Lcom/google/android/gms/internal/measurement/O5;->c:Lcom/google/android/gms/internal/measurement/C6;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/C6;->b()I

    move-result v7

    if-ne v6, v7, :cond_60

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move-object/from16 v2, p2

    move-object/from16 v7, v20

    move-object/from16 v20, v4

    move/from16 v4, p4

    move/from16 v0, v21

    move-object/from16 v8, v22

    move/from16 v26, v10

    move-object/from16 v33, v29

    move-object v10, v7

    move-object/from16 v7, p6

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/Z5;->w([BIILcom/google/android/gms/internal/measurement/C6;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    iget-object v3, v12, Lcom/google/android/gms/internal/measurement/G4;->c:Ljava/lang/Object;

    move v5, v0

    move-object/from16 v32, v3

    :goto_3c
    move-object v6, v8

    move-object v3, v10

    :goto_3d
    move-object/from16 v4, v20

    move/from16 v10, v26

    move-object/from16 v7, v33

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    goto :goto_3b

    :cond_62
    move/from16 v26, v10

    move-object/from16 v10, v20

    move/from16 v0, v21

    move-object/from16 v8, v22

    move-object/from16 v33, v29

    move-object/from16 v20, v4

    iget-object v5, v1, Lcom/google/android/gms/internal/measurement/O5;->a:Lcom/google/android/gms/internal/measurement/C6;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/C6;->b()I

    move-result v4

    if-ne v6, v4, :cond_63

    const/4 v6, 0x0

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v7, p6

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/Z5;->w([BIILcom/google/android/gms/internal/measurement/C6;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    iget-object v3, v12, Lcom/google/android/gms/internal/measurement/G4;->c:Ljava/lang/Object;

    move v5, v0

    move-object v6, v8

    goto :goto_3d

    :cond_63
    :goto_3e
    invoke-static {v2, v9, v3, v15, v12}, Lcom/google/android/gms/internal/measurement/H4;->p(I[BIILcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    move v5, v0

    goto :goto_3c

    :cond_64
    move v0, v5

    move-object v8, v6

    move-object/from16 v33, v7

    move/from16 v26, v10

    move-object v10, v3

    if-ne v2, v0, :cond_66

    move-object/from16 v3, v32

    invoke-interface {v8, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v0, v13, :cond_65

    move-object/from16 v1, p0

    move v2, v0

    move v4, v11

    move v10, v15

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v5, v26

    move/from16 v3, v28

    move-object/from16 v13, v33

    move-object/from16 v0, p1

    goto/16 :goto_9

    :cond_65
    move-object/from16 v10, p0

    move/from16 v1, p5

    move v4, v0

    move-object/from16 v20, v14

    move/from16 v5, v26

    move/from16 v14, v28

    move-object/from16 v15, v33

    move-object/from16 v0, p1

    goto/16 :goto_4d

    :cond_66
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmq;

    invoke-direct {v0, v14}, Lcom/google/android/gms/internal/measurement/zzmq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_67
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmq;

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/measurement/zzmq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_68
    move/from16 v26, v10

    move-object/from16 v33, v29

    :goto_3f
    move-object/from16 v10, p0

    move-object/from16 v0, p1

    move/from16 v1, p5

    move v4, v13

    move-object/from16 v20, v14

    move/from16 v5, v26

    move/from16 v14, v28

    move-object/from16 v15, v33

    goto/16 :goto_4d

    :cond_69
    move/from16 v26, v10

    move-object/from16 v33, v29

    add-int/lit8 v4, v11, 0x2

    aget v0, v20, v4

    const v10, 0xfffff

    and-int/2addr v0, v10

    int-to-long v7, v0

    packed-switch v5, :pswitch_data_2

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    move/from16 v21, v11

    move-object/from16 v20, v14

    move/from16 v5, v26

    move/from16 v14, v28

    :goto_40
    move-object/from16 v15, v33

    goto/16 :goto_4a

    :pswitch_1a
    const/4 v0, 0x3

    if-ne v3, v0, :cond_6a

    and-int/lit8 v0, v26, -0x8

    or-int/lit8 v7, v0, 0x4

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v8, v28

    invoke-virtual {v1, v0, v8, v11}, Lcom/google/android/gms/internal/measurement/Z5;->J(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/measurement/Z5;->E(I)Lcom/google/android/gms/internal/measurement/h6;

    move-result-object v3

    move-object v2, v6

    move-object/from16 v4, p2

    move v5, v13

    move-object v10, v6

    move/from16 v6, p4

    move-object/from16 v20, v14

    move v14, v8

    move-object/from16 v8, p6

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/measurement/H4;->k(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/h6;[BIIILcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    invoke-virtual {v1, v0, v14, v11, v10}, Lcom/google/android/gms/internal/measurement/Z5;->K(Ljava/lang/Object;IILjava/lang/Object;)V

    move-object v10, v1

    move/from16 v21, v11

    move/from16 v5, v26

    move-object/from16 v15, v33

    goto/16 :goto_4b

    :cond_6a
    move-object/from16 v0, p1

    move-object/from16 v20, v14

    move/from16 v14, v28

    move-object/from16 v10, p0

    :cond_6b
    move/from16 v21, v11

    move/from16 v5, v26

    goto :goto_40

    :pswitch_1b
    move-object/from16 v10, p0

    move-object/from16 v0, p1

    move-object/from16 v20, v14

    move/from16 v14, v28

    if-nez v3, :cond_6b

    invoke-static {v9, v13, v12}, Lcom/google/android/gms/internal/measurement/H4;->c([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v3

    iget-wide v4, v12, Lcom/google/android/gms/internal/measurement/G4;->b:J

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/U4;->b(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v6, v33

    invoke-virtual {v6, v0, v1, v2, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v6, v0, v7, v8, v14}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_41
    move v2, v3

    move-object v15, v6

    move/from16 v21, v11

    move/from16 v5, v26

    goto/16 :goto_4b

    :pswitch_1c
    move-object/from16 v10, p0

    move-object/from16 v0, p1

    move-object/from16 v20, v14

    move/from16 v14, v28

    move-object/from16 v6, v33

    if-nez v3, :cond_6c

    invoke-static {v9, v13, v12}, Lcom/google/android/gms/internal/measurement/H4;->a([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v3

    iget v4, v12, Lcom/google/android/gms/internal/measurement/G4;->a:I

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/U4;->a(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v0, v1, v2, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v6, v0, v7, v8, v14}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_41

    :cond_6c
    move-object v15, v6

    move/from16 v21, v11

    move/from16 v5, v26

    goto/16 :goto_4a

    :pswitch_1d
    move-object/from16 v10, p0

    move-object/from16 v0, p1

    move-object/from16 v20, v14

    move/from16 v14, v28

    move-object/from16 v6, v33

    if-nez v3, :cond_6c

    invoke-static {v9, v13, v12}, Lcom/google/android/gms/internal/measurement/H4;->a([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v3

    iget v4, v12, Lcom/google/android/gms/internal/measurement/G4;->a:I

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/measurement/Z5;->G(I)Lcom/google/android/gms/internal/measurement/v5;

    move-result-object v5

    if-eqz v5, :cond_6d

    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/measurement/v5;->a(I)Z

    move-result v5

    if-eqz v5, :cond_6e

    :cond_6d
    move/from16 v5, v26

    goto :goto_42

    :cond_6e
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/Z5;->y(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/t6;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move/from16 v5, v26

    invoke-virtual {v1, v5, v2}, Lcom/google/android/gms/internal/measurement/t6;->k(ILjava/lang/Object;)V

    goto :goto_43

    :goto_42
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v0, v1, v2, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v6, v0, v7, v8, v14}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_43
    move v2, v3

    move-object v15, v6

    :goto_44
    move/from16 v21, v11

    goto/16 :goto_4b

    :pswitch_1e
    move-object/from16 v10, p0

    move-object/from16 v0, p1

    move-object/from16 v20, v14

    move/from16 v5, v26

    move/from16 v14, v28

    move-object/from16 v6, v33

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6f

    invoke-static {v9, v13, v12}, Lcom/google/android/gms/internal/measurement/H4;->g([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v3

    iget-object v4, v12, Lcom/google/android/gms/internal/measurement/G4;->c:Ljava/lang/Object;

    invoke-virtual {v6, v0, v1, v2, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v6, v0, v7, v8, v14}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_43

    :cond_6f
    move-object v15, v6

    :cond_70
    move/from16 v21, v11

    goto/16 :goto_4a

    :pswitch_1f
    move-object/from16 v10, p0

    move-object/from16 v0, p1

    move-object/from16 v20, v14

    move/from16 v5, v26

    move/from16 v14, v28

    move-object/from16 v6, v33

    const/4 v1, 0x2

    if-ne v3, v1, :cond_6f

    invoke-virtual {v10, v0, v14, v11}, Lcom/google/android/gms/internal/measurement/Z5;->J(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/measurement/Z5;->E(I)Lcom/google/android/gms/internal/measurement/h6;

    move-result-object v3

    move-object v2, v1

    move-object/from16 v4, p2

    move v8, v5

    move v5, v13

    move-object v7, v6

    move/from16 v6, p4

    move-object v15, v7

    move-object/from16 v7, p6

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/H4;->j(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/h6;[BIILcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    invoke-virtual {v10, v0, v14, v11, v1}, Lcom/google/android/gms/internal/measurement/Z5;->K(Ljava/lang/Object;IILjava/lang/Object;)V

    move v5, v8

    goto :goto_44

    :pswitch_20
    move-object/from16 v10, p0

    move-object/from16 v0, p1

    move-object/from16 v20, v14

    move/from16 v5, v26

    move/from16 v14, v28

    move-object/from16 v15, v33

    const/4 v4, 0x2

    if-ne v3, v4, :cond_70

    invoke-static {v9, v13, v12}, Lcom/google/android/gms/internal/measurement/H4;->a([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v3

    iget v4, v12, Lcom/google/android/gms/internal/measurement/G4;->a:I

    if-nez v4, :cond_71

    invoke-virtual {v15, v0, v1, v2, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 v21, v11

    goto :goto_46

    :cond_71
    and-int v6, v21, v22

    move/from16 v21, v11

    add-int v11, v3, v4

    if-eqz v6, :cond_73

    invoke-static {v9, v3, v11}, Lcom/google/android/gms/internal/measurement/B6;->a([BII)Z

    move-result v6

    if-eqz v6, :cond_72

    goto :goto_45

    :cond_72
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmq;

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzmq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_73
    :goto_45
    new-instance v6, Ljava/lang/String;

    move/from16 v22, v11

    sget-object v11, Lcom/google/android/gms/internal/measurement/A5;->a:Ljava/nio/charset/Charset;

    invoke-direct {v6, v9, v3, v4, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v15, v0, v1, v2, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 v3, v22

    :goto_46
    invoke-virtual {v15, v0, v7, v8, v14}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_47
    move v2, v3

    goto/16 :goto_4b

    :pswitch_21
    move-object/from16 v10, p0

    move-object/from16 v0, p1

    move/from16 v21, v11

    move-object/from16 v20, v14

    move/from16 v5, v26

    move/from16 v14, v28

    move-object/from16 v15, v33

    if-nez v3, :cond_75

    invoke-static {v9, v13, v12}, Lcom/google/android/gms/internal/measurement/H4;->c([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v3

    move v6, v3

    iget-wide v3, v12, Lcom/google/android/gms/internal/measurement/G4;->b:J

    cmp-long v3, v3, v24

    if-eqz v3, :cond_74

    const/4 v3, 0x1

    goto :goto_48

    :cond_74
    const/4 v3, 0x0

    :goto_48
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v15, v0, v1, v2, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v15, v0, v7, v8, v14}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_49
    move v2, v6

    goto/16 :goto_4b

    :pswitch_22
    move-object/from16 v10, p0

    move-object/from16 v0, p1

    move/from16 v21, v11

    move-object/from16 v20, v14

    move/from16 v5, v26

    move/from16 v14, v28

    move-object/from16 v15, v33

    const/4 v4, 0x5

    if-ne v3, v4, :cond_75

    add-int/lit8 v3, v13, 0x4

    invoke-static {v9, v13}, Lcom/google/android/gms/internal/measurement/H4;->d([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v0, v1, v2, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v15, v0, v7, v8, v14}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_47

    :pswitch_23
    move-object/from16 v10, p0

    move-object/from16 v0, p1

    move/from16 v21, v11

    move-object/from16 v20, v14

    move/from16 v5, v26

    move/from16 v14, v28

    move-object/from16 v15, v33

    const/4 v4, 0x1

    if-ne v3, v4, :cond_75

    add-int/lit8 v3, v13, 0x8

    invoke-static {v9, v13}, Lcom/google/android/gms/internal/measurement/H4;->e([BI)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v0, v1, v2, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v15, v0, v7, v8, v14}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_47

    :pswitch_24
    move-object/from16 v10, p0

    move-object/from16 v0, p1

    move/from16 v21, v11

    move-object/from16 v20, v14

    move/from16 v5, v26

    move/from16 v14, v28

    move-object/from16 v15, v33

    if-nez v3, :cond_75

    invoke-static {v9, v13, v12}, Lcom/google/android/gms/internal/measurement/H4;->a([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v3

    iget v4, v12, Lcom/google/android/gms/internal/measurement/G4;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v0, v1, v2, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v15, v0, v7, v8, v14}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_47

    :pswitch_25
    move-object/from16 v10, p0

    move-object/from16 v0, p1

    move/from16 v21, v11

    move-object/from16 v20, v14

    move/from16 v5, v26

    move/from16 v14, v28

    move-object/from16 v15, v33

    if-nez v3, :cond_75

    invoke-static {v9, v13, v12}, Lcom/google/android/gms/internal/measurement/H4;->c([BILcom/google/android/gms/internal/measurement/G4;)I

    move-result v3

    move v6, v3

    iget-wide v3, v12, Lcom/google/android/gms/internal/measurement/G4;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v0, v1, v2, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v15, v0, v7, v8, v14}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_49

    :pswitch_26
    move-object/from16 v10, p0

    move-object/from16 v0, p1

    move/from16 v21, v11

    move-object/from16 v20, v14

    move/from16 v5, v26

    move/from16 v14, v28

    move-object/from16 v15, v33

    const/4 v4, 0x5

    if-ne v3, v4, :cond_75

    add-int/lit8 v3, v13, 0x4

    invoke-static {v9, v13}, Lcom/google/android/gms/internal/measurement/H4;->d([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v15, v0, v1, v2, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v15, v0, v7, v8, v14}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_47

    :pswitch_27
    move-object/from16 v10, p0

    move-object/from16 v0, p1

    move/from16 v21, v11

    move-object/from16 v20, v14

    move/from16 v5, v26

    move/from16 v14, v28

    move-object/from16 v15, v33

    const/4 v4, 0x1

    if-ne v3, v4, :cond_75

    add-int/lit8 v3, v13, 0x8

    invoke-static {v9, v13}, Lcom/google/android/gms/internal/measurement/H4;->e([BI)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v15, v0, v1, v2, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v15, v0, v7, v8, v14}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_47

    :cond_75
    :goto_4a
    move v2, v13

    :goto_4b
    if-eq v2, v13, :cond_76

    move/from16 v11, p5

    move-object v1, v10

    move v3, v14

    move-object v13, v15

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v4, v21

    :goto_4c
    move/from16 v10, p4

    goto/16 :goto_0

    :cond_76
    move/from16 v1, p5

    move v4, v2

    move/from16 v11, v21

    :goto_4d
    if-ne v5, v1, :cond_77

    if-eqz v1, :cond_77

    move v2, v4

    move/from16 v6, v18

    move/from16 v7, v19

    :goto_4e
    const v3, 0xfffff

    goto/16 :goto_50

    :cond_77
    iget-boolean v2, v10, Lcom/google/android/gms/internal/measurement/Z5;->f:Z

    if-eqz v2, :cond_79

    iget-object v2, v12, Lcom/google/android/gms/internal/measurement/G4;->d:Lcom/google/android/gms/internal/measurement/b5;

    sget v3, Lcom/google/android/gms/internal/measurement/b5;->e:I

    sget v3, Lcom/google/android/gms/internal/measurement/e6;->d:I

    sget-object v3, Lcom/google/android/gms/internal/measurement/b5;->d:Lcom/google/android/gms/internal/measurement/b5;

    if-eq v2, v3, :cond_79

    iget-object v3, v10, Lcom/google/android/gms/internal/measurement/Z5;->e:Lcom/google/android/gms/internal/measurement/W5;

    sget v6, Lcom/google/android/gms/internal/measurement/H4;->b:I

    invoke-virtual {v2, v3, v14}, Lcom/google/android/gms/internal/measurement/b5;->b(Lcom/google/android/gms/internal/measurement/W5;I)Lcom/google/android/gms/internal/measurement/p5;

    move-result-object v2

    if-nez v2, :cond_78

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/Z5;->y(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/t6;

    move-result-object v6

    move v2, v5

    move-object/from16 v3, p2

    move v8, v5

    move/from16 v5, p4

    move-object/from16 v7, p6

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/H4;->o(I[BIILcom/google/android/gms/internal/measurement/t6;Lcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    goto :goto_4f

    :cond_78
    check-cast v0, Lcom/google/android/gms/internal/measurement/n5;

    throw v17

    :cond_79
    move v8, v5

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/Z5;->y(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/t6;

    move-result-object v6

    move v2, v8

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/H4;->o(I[BIILcom/google/android/gms/internal/measurement/t6;Lcom/google/android/gms/internal/measurement/G4;)I

    move-result v2

    :goto_4f
    move v5, v8

    move v4, v11

    move v3, v14

    move-object v13, v15

    move/from16 v6, v18

    move/from16 v7, v19

    move v11, v1

    move-object v1, v10

    goto :goto_4c

    :cond_7a
    move-object v10, v1

    move/from16 v18, v6

    move/from16 v19, v7

    move-object/from16 v20, v8

    move v1, v11

    move-object v15, v13

    goto :goto_4e

    :goto_50
    if-eq v7, v3, :cond_7b

    int-to-long v3, v7

    invoke-virtual {v15, v0, v3, v4, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_7b
    iget v3, v10, Lcom/google/android/gms/internal/measurement/Z5;->h:I

    move-object/from16 v4, v17

    :goto_51
    iget v6, v10, Lcom/google/android/gms/internal/measurement/Z5;->i:I

    if-ge v3, v6, :cond_7f

    iget-object v6, v10, Lcom/google/android/gms/internal/measurement/Z5;->g:[I

    iget-object v7, v10, Lcom/google/android/gms/internal/measurement/Z5;->j:Lcom/google/android/gms/internal/measurement/s6;

    iget-object v8, v10, Lcom/google/android/gms/internal/measurement/Z5;->a:[I

    aget v6, v6, v3

    aget v8, v8, v6

    invoke-virtual {v10, v6}, Lcom/google/android/gms/internal/measurement/Z5;->M(I)I

    move-result v9

    const v11, 0xfffff

    and-int/2addr v9, v11

    int-to-long v12, v9

    invoke-static {v0, v12, v13}, Lcom/google/android/gms/internal/measurement/z6;->s(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_7e

    invoke-virtual {v10, v6}, Lcom/google/android/gms/internal/measurement/Z5;->G(I)Lcom/google/android/gms/internal/measurement/v5;

    move-result-object v12

    if-eqz v12, :cond_7e

    check-cast v9, Lcom/google/android/gms/internal/measurement/Q5;

    invoke-virtual {v10, v6}, Lcom/google/android/gms/internal/measurement/Z5;->F(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/P5;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/P5;->e()Lcom/google/android/gms/internal/measurement/O5;

    move-result-object v6

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7c
    :goto_52
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v12, v14}, Lcom/google/android/gms/internal/measurement/v5;->a(I)Z

    move-result v14

    if-nez v14, :cond_7c

    if-nez v4, :cond_7d

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/s6;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :cond_7d
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    invoke-static {v6, v14, v15}, Lcom/google/android/gms/internal/measurement/P5;->c(Lcom/google/android/gms/internal/measurement/O5;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v14

    sget-object v15, Lcom/google/android/gms/internal/measurement/S4;->c:Lcom/google/android/gms/internal/measurement/S4;

    new-array v15, v14, [B

    sget v16, Lcom/google/android/gms/internal/measurement/W4;->d:I

    new-instance v11, Lcom/google/android/gms/internal/measurement/V4;

    move-object/from16 v16, v7

    const/4 v7, 0x0

    invoke-direct {v11, v15, v7, v14}, Lcom/google/android/gms/internal/measurement/V4;-><init>([BII)V

    :try_start_0
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-static {v11, v6, v14, v13}, Lcom/google/android/gms/internal/measurement/P5;->b(Lcom/google/android/gms/internal/measurement/W4;Lcom/google/android/gms/internal/measurement/O5;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v11, v15}, Lcom/google/android/gms/internal/measurement/P4;->a(Lcom/google/android/gms/internal/measurement/W4;[B)Lcom/google/android/gms/internal/measurement/S4;

    move-result-object v11

    const/4 v13, 0x3

    shl-int/lit8 v14, v8, 0x3

    move-object v15, v4

    check-cast v15, Lcom/google/android/gms/internal/measurement/t6;

    const/16 v17, 0x2

    or-int/lit8 v14, v14, 0x2

    invoke-virtual {v15, v14, v11}, Lcom/google/android/gms/internal/measurement/t6;->k(ILjava/lang/Object;)V

    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    move-object/from16 v7, v16

    const v11, 0xfffff

    goto :goto_52

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_7e
    const/4 v7, 0x0

    const/4 v13, 0x3

    const/16 v17, 0x2

    check-cast v4, Lcom/google/android/gms/internal/measurement/t6;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_51

    :cond_7f
    if-eqz v4, :cond_80

    check-cast v0, Lcom/google/android/gms/internal/measurement/q5;

    iput-object v4, v0, Lcom/google/android/gms/internal/measurement/q5;->zzc:Lcom/google/android/gms/internal/measurement/t6;

    :cond_80
    if-nez v1, :cond_82

    move/from16 v0, p4

    if-ne v2, v0, :cond_81

    goto :goto_53

    :cond_81
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmq;

    move-object/from16 v3, v20

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/measurement/zzmq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_82
    move/from16 v0, p4

    move-object/from16 v3, v20

    if-gt v2, v0, :cond_83

    if-ne v5, v1, :cond_83

    :goto_53
    return v2

    :cond_83
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmq;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/measurement/zzmq;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x33
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_24
        :pswitch_1d
        :pswitch_22
        :pswitch_23
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method
