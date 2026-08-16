.class public Ljavax/vecmath/GMatrix;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final EPS:D = 1.0E-10

.field private static final debug:Z = false

.field static final serialVersionUID:J = 0x268a3b4aa638cc3dL


# instance fields
.field nCol:I

.field nRow:I

.field values:[[D


# direct methods
.method public constructor <init>(II)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x0

    aput p1, v0, v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Ljavax/vecmath/GMatrix;->values:[[D

    .line 3
    iput p1, p0, Ljavax/vecmath/GMatrix;->nRow:I

    .line 4
    iput p2, p0, Ljavax/vecmath/GMatrix;->nCol:I

    move v0, v1

    :goto_0
    if-ge v0, p1, :cond_1

    move v2, v1

    :goto_1
    if-ge v2, p2, :cond_0

    .line 5
    iget-object v3, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v3, v3, v0

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-ge p1, p2, :cond_2

    goto :goto_2

    :cond_2
    move p1, p2

    :goto_2
    if-ge v1, p1, :cond_3

    .line 6
    iget-object p2, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object p2, p2, v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public constructor <init>(II[D)V
    .locals 6

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 8
    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x0

    aput p1, v0, v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Ljavax/vecmath/GMatrix;->values:[[D

    .line 9
    iput p1, p0, Ljavax/vecmath/GMatrix;->nRow:I

    .line 10
    iput p2, p0, Ljavax/vecmath/GMatrix;->nCol:I

    move v0, v1

    :goto_0
    if-ge v0, p1, :cond_1

    move v2, v1

    :goto_1
    if-ge v2, p2, :cond_0

    .line 11
    iget-object v3, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v3, v3, v0

    mul-int v4, v0, p2

    add-int/2addr v4, v2

    aget-wide v4, p3, v4

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/GMatrix;)V
    .locals 7

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iget v0, p1, Ljavax/vecmath/GMatrix;->nRow:I

    iput v0, p0, Ljavax/vecmath/GMatrix;->nRow:I

    .line 14
    iget v1, p1, Ljavax/vecmath/GMatrix;->nCol:I

    iput v1, p0, Ljavax/vecmath/GMatrix;->nCol:I

    const/4 v2, 0x2

    .line 15
    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Ljavax/vecmath/GMatrix;->values:[[D

    move v0, v1

    .line 16
    :goto_0
    iget v2, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 17
    :goto_1
    iget v3, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v2, v3, :cond_0

    .line 18
    iget-object v3, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v3, v3, v0

    iget-object v4, p1, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v4, v4, v0

    aget-wide v5, v4, v2

    aput-wide v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static chase_across([D[DILjavax/vecmath/GMatrix;)V
    .locals 20

    move-object/from16 v7, p3

    const/4 v8, 0x1

    new-array v9, v8, [D

    new-array v10, v8, [D

    new-instance v11, Ljavax/vecmath/GMatrix;

    iget v0, v7, Ljavax/vecmath/GMatrix;->nRow:I

    iget v1, v7, Ljavax/vecmath/GMatrix;->nCol:I

    invoke-direct {v11, v0, v1}, Ljavax/vecmath/GMatrix;-><init>(II)V

    new-instance v12, Ljavax/vecmath/GMatrix;

    iget v0, v7, Ljavax/vecmath/GMatrix;->nRow:I

    iget v1, v7, Ljavax/vecmath/GMatrix;->nCol:I

    invoke-direct {v12, v0, v1}, Ljavax/vecmath/GMatrix;-><init>(II)V

    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x1

    aget-wide v2, p0, v2

    move/from16 v6, p2

    move-wide/from16 v18, v0

    move-wide v0, v2

    move-wide/from16 v2, v18

    :goto_0
    iget v4, v7, Ljavax/vecmath/GMatrix;->nCol:I

    add-int/lit8 v4, v4, -0x2

    if-ge v6, v4, :cond_0

    move-object v4, v10

    move-object v5, v9

    invoke-static/range {v0 .. v5}, Ljavax/vecmath/GMatrix;->compute_rot(DD[D[D)D

    move-result-wide v0

    add-int/lit8 v13, v6, 0x1

    aget-wide v2, p1, v13

    neg-double v2, v2

    const/4 v4, 0x0

    aget-wide v14, v10, v4

    mul-double/2addr v14, v2

    add-int/lit8 v6, v6, 0x2

    aget-wide v16, p0, v6

    aput-wide v0, p0, v13

    aget-wide v0, p1, v13

    aget-wide v2, v9, v4

    mul-double/2addr v0, v2

    aput-wide v0, p1, v13

    move/from16 v0, p2

    move v1, v13

    move-object/from16 v2, p3

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    invoke-static/range {v0 .. v6}, Ljavax/vecmath/GMatrix;->update_u_split(IILjavax/vecmath/GMatrix;[D[DLjavax/vecmath/GMatrix;Ljavax/vecmath/GMatrix;)V

    move v6, v13

    move-wide v2, v14

    move-wide/from16 v0, v16

    goto :goto_0

    :cond_0
    add-int/2addr v6, v8

    move-object v4, v10

    move-object v5, v9

    invoke-static/range {v0 .. v5}, Ljavax/vecmath/GMatrix;->compute_rot(DD[D[D)D

    move-result-wide v0

    aput-wide v0, p0, v6

    move/from16 v0, p2

    move v1, v6

    move-object/from16 v2, p3

    move-object v3, v9

    move-object v5, v11

    move-object v6, v12

    invoke-static/range {v0 .. v6}, Ljavax/vecmath/GMatrix;->update_u_split(IILjavax/vecmath/GMatrix;[D[DLjavax/vecmath/GMatrix;Ljavax/vecmath/GMatrix;)V

    return-void
.end method

.method private static chase_up([D[DILjavax/vecmath/GMatrix;)V
    .locals 18

    move-object/from16 v7, p3

    const/4 v8, 0x1

    new-array v9, v8, [D

    new-array v10, v8, [D

    new-instance v11, Ljavax/vecmath/GMatrix;

    iget v0, v7, Ljavax/vecmath/GMatrix;->nRow:I

    iget v1, v7, Ljavax/vecmath/GMatrix;->nCol:I

    invoke-direct {v11, v0, v1}, Ljavax/vecmath/GMatrix;-><init>(II)V

    new-instance v12, Ljavax/vecmath/GMatrix;

    iget v0, v7, Ljavax/vecmath/GMatrix;->nRow:I

    iget v1, v7, Ljavax/vecmath/GMatrix;->nCol:I

    invoke-direct {v12, v0, v1}, Ljavax/vecmath/GMatrix;-><init>(II)V

    aget-wide v0, p1, p2

    aget-wide v2, p0, p2

    move/from16 v13, p2

    :goto_0
    if-lez v13, :cond_0

    move-object v4, v10

    move-object v5, v9

    invoke-static/range {v0 .. v5}, Ljavax/vecmath/GMatrix;->compute_rot(DD[D[D)D

    move-result-wide v0

    add-int/lit8 v2, v13, -0x1

    aget-wide v3, p1, v2

    neg-double v3, v3

    const/4 v5, 0x0

    aget-wide v14, v10, v5

    mul-double/2addr v14, v3

    aget-wide v16, p0, v2

    aput-wide v0, p0, v13

    aget-wide v0, p1, v2

    aget-wide v3, v9, v5

    mul-double/2addr v0, v3

    aput-wide v0, p1, v2

    add-int/lit8 v1, p2, 0x1

    move v0, v13

    move-object/from16 v2, p3

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    invoke-static/range {v0 .. v6}, Ljavax/vecmath/GMatrix;->update_v_split(IILjavax/vecmath/GMatrix;[D[DLjavax/vecmath/GMatrix;Ljavax/vecmath/GMatrix;)V

    add-int/lit8 v13, v13, -0x1

    move-wide v0, v14

    move-wide/from16 v2, v16

    goto :goto_0

    :cond_0
    add-int/lit8 v6, v13, 0x1

    move-object v4, v10

    move-object v5, v9

    invoke-static/range {v0 .. v5}, Ljavax/vecmath/GMatrix;->compute_rot(DD[D[D)D

    move-result-wide v0

    aput-wide v0, p0, v6

    add-int/lit8 v1, p2, 0x1

    move v0, v13

    move-object/from16 v2, p3

    move-object v3, v9

    move-object v5, v11

    move-object v6, v12

    invoke-static/range {v0 .. v6}, Ljavax/vecmath/GMatrix;->update_v_split(IILjavax/vecmath/GMatrix;[D[DLjavax/vecmath/GMatrix;Ljavax/vecmath/GMatrix;)V

    return-void
.end method

.method private static checkMatrix(Ljavax/vecmath/GMatrix;)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v1, v2, :cond_2

    move v2, v0

    :goto_1
    iget v3, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v3, v3, v1

    aget-wide v4, v3, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v3, v3, v5

    if-gez v3, :cond_0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, " 0.0     "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v5, v5, v1

    aget-wide v6, v5, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static computeSVD(Ljavax/vecmath/GMatrix;Ljavax/vecmath/GMatrix;Ljavax/vecmath/GMatrix;Ljavax/vecmath/GMatrix;)I
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    new-instance v1, Ljavax/vecmath/GMatrix;

    iget v2, v0, Ljavax/vecmath/GMatrix;->nRow:I

    iget v3, v0, Ljavax/vecmath/GMatrix;->nCol:I

    invoke-direct {v1, v2, v3}, Ljavax/vecmath/GMatrix;-><init>(II)V

    new-instance v2, Ljavax/vecmath/GMatrix;

    iget v3, v0, Ljavax/vecmath/GMatrix;->nRow:I

    iget v6, v0, Ljavax/vecmath/GMatrix;->nCol:I

    invoke-direct {v2, v3, v6}, Ljavax/vecmath/GMatrix;-><init>(II)V

    new-instance v3, Ljavax/vecmath/GMatrix;

    iget v6, v0, Ljavax/vecmath/GMatrix;->nRow:I

    iget v7, v0, Ljavax/vecmath/GMatrix;->nCol:I

    invoke-direct {v3, v6, v7}, Ljavax/vecmath/GMatrix;-><init>(II)V

    new-instance v6, Ljavax/vecmath/GMatrix;

    invoke-direct {v6, v0}, Ljavax/vecmath/GMatrix;-><init>(Ljavax/vecmath/GMatrix;)V

    iget v0, v6, Ljavax/vecmath/GMatrix;->nRow:I

    iget v7, v6, Ljavax/vecmath/GMatrix;->nCol:I

    if-lt v0, v7, :cond_0

    add-int/lit8 v8, v7, -0x1

    move v9, v7

    goto :goto_0

    :cond_0
    move v8, v0

    move v9, v8

    :goto_0
    if-le v0, v7, :cond_1

    goto :goto_1

    :cond_1
    move v0, v7

    :goto_1
    new-array v0, v0, [D

    new-array v7, v9, [D

    new-array v10, v8, [D

    invoke-virtual/range {p1 .. p1}, Ljavax/vecmath/GMatrix;->setIdentity()V

    invoke-virtual/range {p3 .. p3}, Ljavax/vecmath/GMatrix;->setIdentity()V

    iget v11, v6, Ljavax/vecmath/GMatrix;->nRow:I

    iget v12, v6, Ljavax/vecmath/GMatrix;->nCol:I

    const/4 v13, 0x0

    :goto_2
    const/4 v15, 0x1

    if-ge v13, v9, :cond_28

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    const-wide/16 v20, 0x0

    if-le v11, v15, :cond_14

    move-wide/from16 v22, v20

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v11, :cond_2

    iget-object v14, v6, Ljavax/vecmath/GMatrix;->values:[[D

    add-int v24, v15, v13

    aget-object v14, v14, v24

    aget-wide v24, v14, v13

    mul-double v24, v24, v24

    add-double v22, v22, v24

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_2
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    move-object/from16 v22, v10

    iget-object v10, v6, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v10, v10, v13

    move-object/from16 v24, v7

    move/from16 v23, v8

    aget-wide v7, v10, v13

    cmpl-double v10, v7, v20

    if-nez v10, :cond_3

    const/4 v10, 0x0

    aput-wide v14, v0, v10

    goto :goto_4

    :cond_3
    const/4 v10, 0x0

    invoke-static {v14, v15, v7, v8}, Ljavax/vecmath/GMatrix;->d_sign(DD)D

    move-result-wide v14

    add-double/2addr v7, v14

    aput-wide v7, v0, v10

    :goto_4
    const/4 v7, 0x1

    :goto_5
    if-ge v7, v11, :cond_4

    iget-object v8, v6, Ljavax/vecmath/GMatrix;->values:[[D

    add-int v10, v13, v7

    aget-object v8, v8, v10

    aget-wide v14, v8, v13

    aput-wide v14, v0, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_4
    move-wide/from16 v14, v20

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v11, :cond_5

    aget-wide v25, v0, v7

    mul-double v25, v25, v25

    add-double v14, v14, v25

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_5
    div-double v7, v18, v14

    move v10, v13

    :goto_7
    iget v14, v6, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v10, v14, :cond_7

    move v14, v13

    :goto_8
    iget v15, v6, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v14, v15, :cond_6

    iget-object v15, v2, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v15, v15, v10

    move/from16 v25, v11

    move/from16 v26, v12

    neg-double v11, v7

    sub-int v27, v10, v13

    aget-wide v27, v0, v27

    mul-double v11, v11, v27

    sub-int v27, v14, v13

    aget-wide v27, v0, v27

    mul-double v11, v11, v27

    aput-wide v11, v15, v14

    add-int/lit8 v14, v14, 0x1

    move/from16 v11, v25

    move/from16 v12, v26

    goto :goto_8

    :cond_6
    move/from16 v25, v11

    move/from16 v26, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_7
    move/from16 v25, v11

    move/from16 v26, v12

    move v7, v13

    :goto_9
    iget v8, v6, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v7, v8, :cond_8

    iget-object v8, v2, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v8, v8, v7

    aget-wide v10, v8, v7

    add-double v10, v10, v16

    aput-wide v10, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_8
    move v7, v13

    move-wide/from16 v10, v20

    :goto_a
    iget v8, v6, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v7, v8, :cond_9

    iget-object v8, v2, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v8, v8, v13

    aget-wide v14, v8, v7

    iget-object v8, v6, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v8, v8, v7

    aget-wide v27, v8, v13

    mul-double v14, v14, v27

    add-double/2addr v10, v14

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_9
    iget-object v7, v6, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v7, v7, v13

    aput-wide v10, v7, v13

    move v7, v13

    :goto_b
    iget v8, v6, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v7, v8, :cond_c

    add-int/lit8 v8, v13, 0x1

    :goto_c
    iget v10, v6, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v8, v10, :cond_b

    iget-object v10, v1, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v10, v10, v7

    aput-wide v20, v10, v8

    move v10, v13

    :goto_d
    iget v11, v6, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v10, v11, :cond_a

    iget-object v11, v1, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v11, v11, v7

    aget-wide v14, v11, v8

    iget-object v12, v2, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v12, v12, v7

    aget-wide v27, v12, v10

    iget-object v12, v6, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v12, v12, v10

    aget-wide v29, v12, v8

    mul-double v27, v27, v29

    add-double v14, v14, v27

    aput-wide v14, v11, v8

    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_c
    move v7, v13

    :goto_e
    iget v8, v6, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v7, v8, :cond_e

    add-int/lit8 v8, v13, 0x1

    :goto_f
    iget v10, v6, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v8, v10, :cond_d

    iget-object v10, v6, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v10, v10, v7

    iget-object v11, v1, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v11, v11, v7

    aget-wide v14, v11, v8

    aput-wide v14, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_e
    move v7, v13

    :goto_10
    iget v8, v6, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v7, v8, :cond_11

    const/4 v8, 0x0

    :goto_11
    iget v10, v6, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v8, v10, :cond_10

    iget-object v10, v1, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v10, v10, v7

    aput-wide v20, v10, v8

    move v10, v13

    :goto_12
    iget v11, v6, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v10, v11, :cond_f

    iget-object v11, v1, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v11, v11, v7

    aget-wide v14, v11, v8

    iget-object v12, v2, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v12, v12, v7

    aget-wide v27, v12, v10

    iget-object v12, v4, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v12, v12, v10

    aget-wide v29, v12, v8

    mul-double v27, v27, v29

    add-double v14, v14, v27

    aput-wide v14, v11, v8

    add-int/lit8 v10, v10, 0x1

    goto :goto_12

    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_11
    move v7, v13

    :goto_13
    iget v8, v6, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v7, v8, :cond_13

    const/4 v8, 0x0

    :goto_14
    iget v10, v6, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v8, v10, :cond_12

    iget-object v10, v4, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v10, v10, v7

    iget-object v11, v1, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v11, v11, v7

    aget-wide v14, v11, v8

    aput-wide v14, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    :cond_12
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    :cond_13
    add-int/lit8 v11, v25, -0x1

    move/from16 v12, v26

    :goto_15
    const/4 v7, 0x2

    goto :goto_16

    :cond_14
    move-object/from16 v24, v7

    move/from16 v23, v8

    move-object/from16 v22, v10

    move/from16 v25, v11

    goto :goto_15

    :goto_16
    if-le v12, v7, :cond_27

    move-wide/from16 v14, v20

    const/4 v7, 0x1

    :goto_17
    if-ge v7, v12, :cond_15

    iget-object v8, v6, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v8, v8, v13

    add-int v10, v13, v7

    aget-wide v25, v8, v10

    mul-double v25, v25, v25

    add-double v14, v14, v25

    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    :cond_15
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    iget-object v10, v6, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v10, v10, v13

    add-int/lit8 v14, v13, 0x1

    aget-wide v4, v10, v14

    cmpl-double v10, v4, v20

    if-nez v10, :cond_16

    const/4 v10, 0x0

    aput-wide v7, v0, v10

    goto :goto_18

    :cond_16
    const/4 v10, 0x0

    invoke-static {v7, v8, v4, v5}, Ljavax/vecmath/GMatrix;->d_sign(DD)D

    move-result-wide v7

    add-double/2addr v4, v7

    aput-wide v4, v0, v10

    :goto_18
    const/4 v4, 0x1

    :goto_19
    add-int/lit8 v5, v12, -0x1

    if-ge v4, v5, :cond_17

    iget-object v5, v6, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v5, v5, v13

    add-int v7, v13, v4

    const/4 v8, 0x1

    add-int/2addr v7, v8

    aget-wide v7, v5, v7

    aput-wide v7, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_17
    move-wide/from16 v7, v20

    const/4 v10, 0x0

    :goto_1a
    if-ge v10, v5, :cond_18

    aget-wide v25, v0, v10

    mul-double v25, v25, v25

    add-double v7, v7, v25

    add-int/lit8 v10, v10, 0x1

    goto :goto_1a

    :cond_18
    div-double v4, v18, v7

    move v7, v14

    :goto_1b
    if-ge v7, v12, :cond_1a

    move v8, v14

    :goto_1c
    iget v10, v6, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v8, v10, :cond_19

    iget-object v10, v3, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v10, v10, v7

    move/from16 p0, v11

    move/from16 v26, v12

    neg-double v11, v4

    sub-int v15, v7, v13

    const/16 v18, 0x1

    add-int/lit8 v15, v15, -0x1

    aget-wide v27, v0, v15

    mul-double v11, v11, v27

    sub-int v15, v8, v13

    add-int/lit8 v15, v15, -0x1

    aget-wide v18, v0, v15

    mul-double v11, v11, v18

    aput-wide v11, v10, v8

    add-int/lit8 v8, v8, 0x1

    move/from16 v11, p0

    move/from16 v12, v26

    goto :goto_1c

    :cond_19
    move/from16 p0, v11

    move/from16 v26, v12

    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    :cond_1a
    move/from16 p0, v11

    move/from16 v26, v12

    move v4, v14

    :goto_1d
    iget v5, v6, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v4, v5, :cond_1b

    iget-object v5, v3, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v5, v5, v4

    aget-wide v7, v5, v4

    add-double v7, v7, v16

    aput-wide v7, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_1b
    move v4, v13

    move-wide/from16 v7, v20

    :goto_1e
    iget v5, v6, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v4, v5, :cond_1c

    iget-object v5, v3, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v5, v5, v4

    aget-wide v10, v5, v14

    iget-object v5, v6, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v5, v5, v13

    aget-wide v15, v5, v4

    mul-double/2addr v10, v15

    add-double/2addr v7, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_1c
    iget-object v4, v6, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v4, v4, v13

    aput-wide v7, v4, v14

    move v4, v14

    :goto_1f
    iget v5, v6, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v4, v5, :cond_1f

    move v5, v14

    :goto_20
    iget v7, v6, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v5, v7, :cond_1e

    iget-object v7, v1, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v7, v7, v4

    aput-wide v20, v7, v5

    move v7, v14

    :goto_21
    iget v8, v6, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v7, v8, :cond_1d

    iget-object v8, v1, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v8, v8, v4

    aget-wide v10, v8, v5

    iget-object v12, v3, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v12, v12, v7

    aget-wide v15, v12, v5

    iget-object v12, v6, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v12, v12, v4

    aget-wide v17, v12, v7

    mul-double v15, v15, v17

    add-double/2addr v10, v15

    aput-wide v10, v8, v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_21

    :cond_1d
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_1f
    move v4, v14

    :goto_22
    iget v5, v6, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v4, v5, :cond_21

    move v5, v14

    :goto_23
    iget v7, v6, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v5, v7, :cond_20

    iget-object v7, v6, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v7, v7, v4

    iget-object v8, v1, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v8, v8, v4

    aget-wide v10, v8, v5

    aput-wide v10, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_21
    const/4 v10, 0x0

    :goto_24
    iget v4, v6, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v10, v4, :cond_24

    move v4, v14

    :goto_25
    iget v5, v6, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v4, v5, :cond_23

    iget-object v5, v1, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v5, v5, v10

    aput-wide v20, v5, v4

    move v5, v14

    :goto_26
    iget v7, v6, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v5, v7, :cond_22

    iget-object v7, v1, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v7, v7, v10

    aget-wide v11, v7, v4

    iget-object v8, v3, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v8, v8, v5

    aget-wide v15, v8, v4

    move-object/from16 v8, p3

    move-object/from16 v17, v0

    iget-object v0, v8, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v0, v0, v10

    aget-wide v18, v0, v5

    mul-double v15, v15, v18

    add-double/2addr v11, v15

    aput-wide v11, v7, v4

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v17

    goto :goto_26

    :cond_22
    move-object/from16 v8, p3

    move-object/from16 v17, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :cond_23
    move-object/from16 v8, p3

    move-object/from16 v17, v0

    add-int/lit8 v10, v10, 0x1

    goto :goto_24

    :cond_24
    move-object/from16 v8, p3

    move-object/from16 v17, v0

    const/4 v10, 0x0

    :goto_27
    iget v0, v6, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v10, v0, :cond_26

    move v0, v14

    :goto_28
    iget v4, v6, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v0, v4, :cond_25

    iget-object v4, v8, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v4, v4, v10

    iget-object v5, v1, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v5, v5, v10

    aget-wide v11, v5, v0

    aput-wide v11, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_25
    add-int/lit8 v10, v10, 0x1

    goto :goto_27

    :cond_26
    add-int/lit8 v12, v26, -0x1

    goto :goto_29

    :cond_27
    move-object/from16 v17, v0

    move-object v8, v5

    move/from16 p0, v11

    move/from16 v26, v12

    :goto_29
    add-int/lit8 v13, v13, 0x1

    move/from16 v11, p0

    move-object/from16 v4, p1

    move-object v5, v8

    move-object/from16 v0, v17

    move-object/from16 v10, v22

    move/from16 v8, v23

    move-object/from16 v7, v24

    goto/16 :goto_2

    :cond_28
    move-object/from16 v24, v7

    move/from16 v23, v8

    move-object/from16 v22, v10

    move-object v8, v5

    const/4 v10, 0x0

    :goto_2a
    if-ge v10, v9, :cond_29

    iget-object v0, v6, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v0, v0, v10

    aget-wide v1, v0, v10

    aput-wide v1, v24, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2a

    :cond_29
    move/from16 v0, v23

    const/4 v10, 0x0

    :goto_2b
    if-ge v10, v0, :cond_2a

    iget-object v1, v6, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v1, v1, v10

    add-int/lit8 v2, v10, 0x1

    aget-wide v3, v1, v2

    aput-wide v3, v22, v10

    move v10, v2

    goto :goto_2b

    :cond_2a
    iget v1, v6, Ljavax/vecmath/GMatrix;->nRow:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2b

    iget v1, v6, Ljavax/vecmath/GMatrix;->nCol:I

    if-ne v1, v2, :cond_2b

    const/4 v1, 0x1

    new-array v0, v1, [D

    new-array v3, v1, [D

    new-array v4, v1, [D

    new-array v5, v1, [D

    const/4 v6, 0x0

    aget-wide v10, v24, v6

    aget-wide v12, v22, v6

    aget-wide v14, v24, v1

    const/16 v21, 0x0

    move v1, v6

    move-object/from16 v16, v24

    move-object/from16 v17, v4

    move-object/from16 v18, v0

    move-object/from16 v19, v5

    move-object/from16 v20, v3

    invoke-static/range {v10 .. v21}, Ljavax/vecmath/GMatrix;->compute_2X2(DDD[D[D[D[D[DI)I

    move-object/from16 v6, p1

    invoke-static {v1, v6, v0, v4}, Ljavax/vecmath/GMatrix;->update_u(ILjavax/vecmath/GMatrix;[D[D)V

    invoke-static {v1, v8, v3, v5}, Ljavax/vecmath/GMatrix;->update_v(ILjavax/vecmath/GMatrix;[D[D)V

    return v2

    :cond_2b
    move-object/from16 v6, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    add-int/lit8 v2, v0, -0x1

    move v0, v1

    move v1, v2

    move-object/from16 v2, v24

    move-object/from16 v3, v22

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    invoke-static/range {v0 .. v5}, Ljavax/vecmath/GMatrix;->compute_qr(II[D[DLjavax/vecmath/GMatrix;Ljavax/vecmath/GMatrix;)V

    return v9
.end method

.method public static compute_2X2(DDD[D[D[D[D[DI)I
    .locals 51

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    const/4 v6, 0x0

    aget-wide v7, p6, v6

    const/4 v9, 0x1

    aget-wide v10, p6, v9

    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    cmpl-double v16, v14, v12

    if-lez v16, :cond_0

    move/from16 v16, v9

    goto :goto_0

    :cond_0
    move/from16 v16, v6

    :goto_0
    if-eqz v16, :cond_1

    move-wide/from16 v17, v0

    move-wide/from16 v19, v7

    const/16 v21, 0x3

    move-wide v6, v4

    move-wide/from16 v49, v12

    move-wide v12, v14

    move-wide/from16 v14, v49

    goto :goto_1

    :cond_1
    move-wide/from16 v17, v4

    move-wide/from16 v19, v7

    move/from16 v21, v9

    move-wide v6, v0

    :goto_1
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmpl-double v26, v22, v24

    if-nez v26, :cond_2

    aput-wide v14, p6, v9

    const/4 v0, 0x0

    aput-wide v12, p6, v0

    goto/16 :goto_12

    :cond_2
    cmpl-double v26, v22, v12

    const-wide v27, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    if-lez v26, :cond_5

    div-double v29, v12, v22

    cmpg-double v21, v29, v27

    if-gez v21, :cond_4

    cmpl-double v10, v14, v8

    if-lez v10, :cond_3

    div-double v10, v22, v14

    div-double v10, v12, v10

    goto :goto_2

    :cond_3
    mul-double v29, v29, v14

    move-wide/from16 v10, v29

    :goto_2
    div-double v19, v17, v2

    div-double v29, v6, v2

    move-wide/from16 v34, v8

    move-wide/from16 v36, v34

    move-wide/from16 v32, v29

    const/16 v21, 0x0

    const/16 v31, 0x2

    move-wide/from16 v29, v19

    move-wide/from16 v19, v22

    goto :goto_3

    :cond_4
    move-wide/from16 v29, v24

    move-wide/from16 v32, v29

    move-wide/from16 v34, v32

    move-wide/from16 v36, v34

    const/16 v21, 0x1

    const/16 v31, 0x2

    goto :goto_3

    :cond_5
    move/from16 v31, v21

    move-wide/from16 v29, v24

    move-wide/from16 v32, v29

    move-wide/from16 v34, v32

    move-wide/from16 v36, v34

    const/16 v21, 0x1

    :goto_3
    if-eqz v21, :cond_10

    sub-double v8, v12, v14

    cmpl-double v38, v8, v12

    if-nez v38, :cond_6

    const-wide/high16 v39, 0x3ff0000000000000L    # 1.0

    goto :goto_4

    :cond_6
    div-double v39, v8, v12

    :goto_4
    div-double v41, v2, v6

    move-wide/from16 v43, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    sub-double v45, v10, v39

    mul-double v47, v41, v41

    mul-double v45, v45, v45

    add-double v45, v45, v47

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->sqrt(D)D

    cmpl-double v45, v39, v24

    if-nez v45, :cond_7

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->abs(D)D

    goto :goto_5

    :cond_7
    mul-double v39, v39, v39

    add-double v39, v39, v47

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->sqrt(D)D

    :goto_5
    if-lez v26, :cond_a

    div-double v39, v12, v22

    cmpg-double v26, v39, v27

    if-gez v26, :cond_9

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    cmpl-double v19, v14, v26

    if-lez v19, :cond_8

    div-double v19, v22, v14

    div-double v19, v12, v19

    goto :goto_6

    :cond_8
    mul-double v39, v39, v14

    move-wide/from16 v19, v39

    :goto_6
    div-double v29, v17, v2

    div-double v32, v6, v2

    move-wide/from16 v43, v19

    const/16 v21, 0x0

    const/16 v31, 0x2

    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    goto :goto_7

    :cond_9
    move-wide/from16 v22, v19

    const/16 v31, 0x2

    goto :goto_7

    :cond_a
    move-wide/from16 v22, v19

    :goto_7
    if-eqz v21, :cond_f

    if-nez v38, :cond_b

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    goto :goto_8

    :cond_b
    div-double v19, v8, v12

    :goto_8
    sub-double v21, v10, v19

    mul-double v26, v21, v21

    add-double v26, v26, v47

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    cmpl-double v23, v19, v24

    if-nez v23, :cond_c

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->abs(D)D

    move-result-wide v29

    goto :goto_9

    :cond_c
    mul-double v29, v19, v19

    add-double v29, v29, v47

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v29

    :goto_9
    add-double v32, v26, v29

    const-wide/high16 v34, 0x3fe0000000000000L    # 0.5

    mul-double v32, v32, v34

    div-double v14, v14, v32

    mul-double v12, v12, v32

    cmpl-double v28, v47, v24

    if-nez v28, :cond_e

    if-nez v23, :cond_d

    invoke-static {v10, v11, v6, v7}, Ljavax/vecmath/GMatrix;->d_sign(DD)D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-static {v10, v11, v2, v3}, Ljavax/vecmath/GMatrix;->d_sign(DD)D

    move-result-wide v19

    :goto_a
    mul-double v8, v8, v19

    goto :goto_b

    :cond_d
    invoke-static {v8, v9, v6, v7}, Ljavax/vecmath/GMatrix;->d_sign(DD)D

    move-result-wide v8

    div-double v8, v2, v8

    div-double v10, v41, v21

    add-double/2addr v8, v10

    goto :goto_b

    :cond_e
    add-double v26, v26, v21

    div-double v8, v41, v26

    add-double v29, v29, v19

    div-double v10, v41, v29

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double v19, v32, v10

    goto :goto_a

    :goto_b
    mul-double v10, v8, v8

    const-wide/high16 v19, 0x4010000000000000L    # 4.0

    add-double v10, v10, v19

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    div-double v19, v19, v10

    div-double v36, v8, v10

    mul-double v41, v41, v36

    add-double v41, v19, v41

    div-double v34, v41, v32

    div-double v17, v17, v6

    mul-double v17, v17, v36

    div-double v29, v17, v32

    move-wide v10, v14

    move-wide/from16 v32, v19

    :goto_c
    move/from16 v6, v31

    goto :goto_d

    :cond_f
    move-wide/from16 v12, v22

    move/from16 v6, v31

    move-wide/from16 v10, v43

    goto :goto_d

    :cond_10
    move-wide/from16 v43, v10

    move-wide/from16 v12, v19

    goto :goto_c

    :goto_d
    if-eqz v16, :cond_11

    const/4 v7, 0x0

    aput-wide v36, p8, v7

    aput-wide v32, p7, v7

    aput-wide v29, p10, v7

    aput-wide v34, p9, v7

    :goto_e
    const/4 v8, 0x1

    goto :goto_f

    :cond_11
    const/4 v7, 0x0

    aput-wide v34, p8, v7

    aput-wide v29, p7, v7

    aput-wide v32, p10, v7

    aput-wide v36, p9, v7

    goto :goto_e

    :goto_f
    if-ne v6, v8, :cond_12

    aget-wide v8, p10, v7

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-static {v14, v15, v8, v9}, Ljavax/vecmath/GMatrix;->d_sign(DD)D

    move-result-wide v8

    move-wide/from16 v17, v10

    aget-wide v10, p8, v7

    invoke-static {v14, v15, v10, v11}, Ljavax/vecmath/GMatrix;->d_sign(DD)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v14, v15, v0, v1}, Ljavax/vecmath/GMatrix;->d_sign(DD)D

    move-result-wide v10

    mul-double v24, v8, v10

    :goto_10
    const/4 v8, 0x2

    goto :goto_11

    :cond_12
    move-wide/from16 v17, v10

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    goto :goto_10

    :goto_11
    if-ne v6, v8, :cond_13

    aget-wide v8, p9, v7

    invoke-static {v14, v15, v8, v9}, Ljavax/vecmath/GMatrix;->d_sign(DD)D

    move-result-wide v8

    aget-wide v10, p8, v7

    invoke-static {v14, v15, v10, v11}, Ljavax/vecmath/GMatrix;->d_sign(DD)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v14, v15, v2, v3}, Ljavax/vecmath/GMatrix;->d_sign(DD)D

    move-result-wide v2

    mul-double v24, v8, v2

    :cond_13
    const/4 v2, 0x3

    if-ne v6, v2, :cond_14

    aget-wide v2, p9, v7

    invoke-static {v14, v15, v2, v3}, Ljavax/vecmath/GMatrix;->d_sign(DD)D

    move-result-wide v2

    aget-wide v8, p7, v7

    invoke-static {v14, v15, v8, v9}, Ljavax/vecmath/GMatrix;->d_sign(DD)D

    move-result-wide v6

    mul-double/2addr v2, v6

    invoke-static {v14, v15, v4, v5}, Ljavax/vecmath/GMatrix;->d_sign(DD)D

    move-result-wide v6

    mul-double v24, v2, v6

    :cond_14
    move-wide/from16 v2, v24

    invoke-static {v12, v13, v2, v3}, Ljavax/vecmath/GMatrix;->d_sign(DD)D

    move-result-wide v6

    aput-wide v6, p6, p11

    invoke-static {v14, v15, v0, v1}, Ljavax/vecmath/GMatrix;->d_sign(DD)D

    move-result-wide v0

    mul-double/2addr v2, v0

    invoke-static {v14, v15, v4, v5}, Ljavax/vecmath/GMatrix;->d_sign(DD)D

    move-result-wide v0

    mul-double/2addr v2, v0

    const/4 v0, 0x1

    add-int/lit8 v0, p11, 0x1

    move-wide/from16 v14, v17

    invoke-static {v14, v15, v2, v3}, Ljavax/vecmath/GMatrix;->d_sign(DD)D

    move-result-wide v1

    aput-wide v1, p6, v0

    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public static compute_qr(II[D[DLjavax/vecmath/GMatrix;Ljavax/vecmath/GMatrix;)V
    .locals 35

    move/from16 v0, p0

    move-object/from16 v7, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    const/4 v8, 0x1

    new-array v12, v8, [D

    new-array v11, v8, [D

    new-array v10, v8, [D

    new-array v9, v8, [D

    new-instance v1, Ljavax/vecmath/GMatrix;

    iget v2, v14, Ljavax/vecmath/GMatrix;->nCol:I

    iget v3, v15, Ljavax/vecmath/GMatrix;->nRow:I

    invoke-direct {v1, v2, v3}, Ljavax/vecmath/GMatrix;-><init>(II)V

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    move/from16 v6, p1

    move/from16 v5, v16

    move/from16 v19, v5

    move-wide/from16 v1, v17

    move-wide v3, v1

    :goto_0
    const/4 v8, 0x2

    const-wide v20, 0x3cf605c9419ea60aL    # 4.89E-15

    if-ge v5, v8, :cond_a

    if-nez v19, :cond_a

    move v8, v0

    move-wide/from16 v22, v3

    :goto_1
    if-gt v8, v6, :cond_4

    if-ne v8, v0, :cond_1

    array-length v1, v13

    array-length v2, v7

    if-ne v1, v2, :cond_0

    move v1, v6

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v6, 0x1

    :goto_2
    add-int/lit8 v2, v1, -0x1

    aget-wide v22, v7, v2

    aget-wide v24, v13, v6

    aget-wide v26, v7, v1

    invoke-static/range {v22 .. v27}, Ljavax/vecmath/GMatrix;->compute_shift(DDD)D

    move-result-wide v1

    aget-wide v3, v7, v8

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    sub-double/2addr v3, v1

    move/from16 v25, v5

    move/from16 v24, v6

    aget-wide v5, v7, v8

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-static {v14, v15, v5, v6}, Ljavax/vecmath/GMatrix;->d_sign(DD)D

    move-result-wide v5

    aget-wide v14, v7, v8

    div-double/2addr v1, v14

    add-double/2addr v5, v1

    mul-double/2addr v3, v5

    aget-wide v1, v13, v8

    move-wide/from16 v33, v1

    move-wide v1, v3

    move-wide/from16 v3, v33

    goto :goto_3

    :cond_1
    move/from16 v25, v5

    move/from16 v24, v6

    move-wide/from16 v3, v22

    :goto_3
    move/from16 v14, v25

    move-object v5, v9

    move/from16 v15, v24

    move-object v6, v11

    invoke-static/range {v1 .. v6}, Ljavax/vecmath/GMatrix;->compute_rot(DD[D[D)D

    move-result-wide v1

    if-eq v8, v0, :cond_2

    add-int/lit8 v3, v8, -0x1

    aput-wide v1, v13, v3

    :cond_2
    aget-wide v1, v11, v16

    aget-wide v3, v7, v8

    mul-double v5, v1, v3

    aget-wide v22, v9, v16

    aget-wide v24, v13, v8

    mul-double v26, v22, v24

    add-double v5, v5, v26

    mul-double v1, v1, v24

    mul-double v22, v22, v3

    sub-double v1, v1, v22

    aput-wide v1, v13, v8

    aget-wide v1, v9, v16

    add-int/lit8 v22, v8, 0x1

    aget-wide v3, v7, v22

    mul-double v23, v1, v3

    aget-wide v1, v11, v16

    mul-double/2addr v1, v3

    aput-wide v1, v7, v22

    move-object/from16 v3, p5

    invoke-static {v8, v3, v11, v9}, Ljavax/vecmath/GMatrix;->update_v(ILjavax/vecmath/GMatrix;[D[D)V

    move-wide v1, v5

    move-object v6, v3

    move-wide/from16 v3, v23

    move-object v5, v10

    move/from16 v25, v14

    move-object v14, v6

    move-object v6, v12

    invoke-static/range {v1 .. v6}, Ljavax/vecmath/GMatrix;->compute_rot(DD[D[D)D

    move-result-wide v1

    aput-wide v1, v7, v8

    aget-wide v1, v12, v16

    aget-wide v3, v13, v8

    mul-double v5, v1, v3

    aget-wide v26, v10, v16

    aget-wide v28, v7, v22

    mul-double v30, v26, v28

    add-double v5, v5, v30

    mul-double v1, v1, v28

    mul-double v26, v26, v3

    sub-double v1, v1, v26

    aput-wide v1, v7, v22

    if-ge v8, v15, :cond_3

    aget-wide v1, v10, v16

    aget-wide v3, v13, v22

    mul-double/2addr v1, v3

    aget-wide v23, v12, v16

    mul-double v23, v23, v3

    aput-wide v23, v13, v22

    move-object/from16 v3, p4

    goto :goto_4

    :cond_3
    move-object/from16 v3, p4

    move-wide/from16 v1, v23

    :goto_4
    invoke-static {v8, v3, v12, v10}, Ljavax/vecmath/GMatrix;->update_u(ILjavax/vecmath/GMatrix;[D[D)V

    move/from16 v8, v22

    move-wide/from16 v22, v1

    move-wide v1, v5

    move v6, v15

    move/from16 v5, v25

    move-object v15, v14

    move-object v14, v3

    goto/16 :goto_1

    :cond_4
    move/from16 v25, v5

    move-object v3, v14

    move-object v14, v15

    move v15, v6

    array-length v4, v7

    array-length v5, v13

    if-ne v4, v5, :cond_5

    move-object v6, v3

    move-wide/from16 v3, v22

    move-object v5, v9

    move/from16 v24, v15

    move-object v15, v6

    move-object v6, v11

    invoke-static/range {v1 .. v6}, Ljavax/vecmath/GMatrix;->compute_rot(DD[D[D)D

    aget-wide v1, v11, v16

    aget-wide v3, v7, v8

    mul-double v5, v1, v3

    aget-wide v26, v9, v16

    aget-wide v28, v13, v8

    mul-double v30, v26, v28

    add-double v5, v5, v30

    mul-double v1, v1, v28

    mul-double v26, v26, v3

    sub-double v1, v1, v26

    aput-wide v1, v13, v8

    add-int/lit8 v1, v8, 0x1

    aget-wide v2, v11, v16

    aget-wide v26, v7, v1

    mul-double v2, v2, v26

    aput-wide v2, v7, v1

    invoke-static {v8, v14, v11, v9}, Ljavax/vecmath/GMatrix;->update_v(ILjavax/vecmath/GMatrix;[D[D)V

    move-wide/from16 v26, v5

    :goto_5
    move/from16 v6, v24

    goto :goto_6

    :cond_5
    move/from16 v24, v15

    move-object v15, v3

    move-wide/from16 v26, v1

    goto :goto_5

    :goto_6
    sub-int v1, v6, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_6

    aget-wide v1, v13, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v1, v1, v20

    if-gez v1, :cond_6

    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v1, v6, -0x2

    move v8, v1

    :goto_7
    if-le v8, v0, :cond_8

    aget-wide v1, v13, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v1, v1, v20

    if-gez v1, :cond_7

    add-int/lit8 v1, v8, 0x1

    move v2, v6

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Ljavax/vecmath/GMatrix;->compute_qr(II[D[DLjavax/vecmath/GMatrix;Ljavax/vecmath/GMatrix;)V

    add-int/lit8 v1, v8, -0x1

    move v6, v1

    :goto_8
    sub-int v1, v6, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_7

    aget-wide v1, v13, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v1, v1, v20

    if-gez v1, :cond_7

    add-int/lit8 v6, v6, -0x1

    goto :goto_8

    :cond_7
    add-int/lit8 v8, v8, -0x1

    goto :goto_7

    :cond_8
    sub-int v1, v6, v0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_9

    add-int/lit8 v1, v0, 0x1

    aget-wide v1, v13, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v1, v1, v20

    if-gez v1, :cond_9

    const/16 v19, 0x1

    :cond_9
    add-int/lit8 v5, v25, 0x1

    move-wide/from16 v3, v22

    move-wide/from16 v1, v26

    move-object/from16 v33, v15

    move-object v15, v14

    move-object/from16 v14, v33

    goto/16 :goto_0

    :cond_a
    move-object/from16 v33, v15

    move-object v15, v14

    move-object/from16 v14, v33

    const/4 v1, 0x1

    aget-wide v1, v13, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v1, v1, v20

    if-gez v1, :cond_b

    aget-wide v1, v7, v0

    aget-wide v3, v13, v0

    add-int/lit8 v16, v0, 0x1

    aget-wide v5, v7, v16

    const/16 v19, 0x0

    move-object/from16 v7, p2

    move-object v8, v10

    move-object/from16 p1, v9

    move-object v9, v12

    move-object/from16 v32, v10

    move-object/from16 v10, p1

    move-object/from16 p2, v11

    move-object v14, v12

    move/from16 v12, v19

    invoke-static/range {v1 .. v12}, Ljavax/vecmath/GMatrix;->compute_2X2(DDD[D[D[D[D[DI)I

    aput-wide v17, v13, v0

    aput-wide v17, v13, v16

    move-object/from16 v1, v32

    goto :goto_9

    :cond_b
    move-object/from16 p1, v9

    move-object/from16 p2, v11

    move-object v14, v12

    move-object v1, v10

    :goto_9
    invoke-static {v0, v15, v14, v1}, Ljavax/vecmath/GMatrix;->update_u(ILjavax/vecmath/GMatrix;[D[D)V

    move-object/from16 v3, p1

    move-object/from16 v2, p2

    move-object/from16 v1, p5

    invoke-static {v0, v1, v2, v3}, Ljavax/vecmath/GMatrix;->update_v(ILjavax/vecmath/GMatrix;[D[D)V

    return-void
.end method

.method public static compute_rot(DD[D[D)D
    .locals 17

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const/4 v5, 0x0

    if-nez v2, :cond_0

    move-wide v11, v3

    move-wide/from16 v2, p0

    goto/16 :goto_5

    :cond_0
    cmpl-double v2, p0, v0

    if-nez v2, :cond_1

    move-wide v11, v0

    move-wide v0, v3

    move-wide/from16 v2, p2

    goto/16 :goto_5

    :cond_1
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljavax/vecmath/GMatrix;->max(DD)D

    move-result-wide v2

    const-wide/high16 v6, 0x5e30000000000000L    # 4.994797680505588E145

    cmpl-double v4, v2, v6

    const-wide/high16 v8, 0x21b0000000000000L    # 2.002083095183101E-146

    if-ltz v4, :cond_3

    move-wide/from16 v11, p0

    move-wide/from16 v13, p2

    move v4, v5

    :goto_0
    cmpl-double v2, v2, v6

    if-ltz v2, :cond_2

    add-int/lit8 v4, v4, 0x1

    mul-double/2addr v11, v8

    mul-double/2addr v13, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    move-wide v15, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    invoke-static {v2, v3, v10, v11}, Ljavax/vecmath/GMatrix;->max(DD)D

    move-result-wide v2

    move-wide v11, v15

    goto :goto_0

    :cond_2
    mul-double v2, v11, v11

    mul-double v8, v13, v13

    add-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v11, v2

    div-double/2addr v13, v2

    const/4 v10, 0x1

    :goto_1
    if-gt v10, v4, :cond_7

    mul-double/2addr v2, v6

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    cmpg-double v4, v2, v8

    if-gtz v4, :cond_6

    move-wide/from16 v10, p0

    move-wide/from16 v12, p2

    move v4, v5

    :goto_2
    cmpg-double v2, v2, v8

    if-gtz v2, :cond_4

    add-int/lit8 v4, v4, 0x1

    mul-double/2addr v10, v6

    mul-double/2addr v12, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljavax/vecmath/GMatrix;->max(DD)D

    move-result-wide v2

    const-wide/high16 v6, 0x5e30000000000000L    # 4.994797680505588E145

    goto :goto_2

    :cond_4
    mul-double v2, v10, v10

    mul-double v6, v12, v12

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double v6, v10, v2

    div-double v13, v12, v2

    const/4 v10, 0x1

    :goto_3
    if-gt v10, v4, :cond_5

    mul-double/2addr v2, v8

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_5
    move-wide v11, v6

    goto :goto_4

    :cond_6
    mul-double v2, p0, p0

    mul-double v6, p2, p2

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double v11, p0, v2

    div-double v13, p2, v2

    :cond_7
    :goto_4
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpl-double v4, v6, v8

    if-lez v4, :cond_8

    cmpg-double v0, v11, v0

    if-gez v0, :cond_8

    neg-double v0, v11

    neg-double v6, v13

    neg-double v2, v2

    move-wide v11, v0

    move-wide v0, v6

    goto :goto_5

    :cond_8
    move-wide v0, v13

    :goto_5
    aput-wide v0, p4, v5

    aput-wide v11, p5, v5

    return-wide v2
.end method

.method public static compute_shift(DDD)D
    .locals 7

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    invoke-static {p4, p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide p4

    invoke-static {p0, p1, p4, p5}, Ljavax/vecmath/GMatrix;->min(DD)D

    move-result-wide v0

    invoke-static {p0, p1, p4, p5}, Ljavax/vecmath/GMatrix;->max(DD)D

    move-result-wide p0

    const-wide/16 p4, 0x0

    cmpl-double v2, v0, p4

    if-nez v2, :cond_1

    cmpl-double v0, p0, p4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Ljavax/vecmath/GMatrix;->min(DD)D

    invoke-static {p0, p1, p2, p3}, Ljavax/vecmath/GMatrix;->max(DD)D

    goto :goto_0

    :cond_1
    cmpg-double v2, p2, p0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-gez v2, :cond_2

    div-double p4, v0, p0

    add-double/2addr p4, v3

    sub-double v2, p0, v0

    div-double/2addr v2, p0

    div-double/2addr p2, p0

    mul-double/2addr p2, p2

    mul-double/2addr p4, p4

    add-double/2addr p4, p2

    invoke-static {p4, p5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    mul-double/2addr v2, v2

    add-double/2addr v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    add-double/2addr p0, p2

    const-wide/high16 p2, 0x4000000000000000L    # 2.0

    div-double/2addr p2, p0

    mul-double p4, v0, p2

    goto :goto_0

    :cond_2
    div-double v5, p0, p2

    cmpl-double p4, v5, p4

    if-nez p4, :cond_3

    mul-double/2addr v0, p0

    div-double p4, v0, p2

    goto :goto_0

    :cond_3
    div-double p2, v0, p0

    add-double/2addr p2, v3

    sub-double p4, p0, v0

    div-double/2addr p4, p0

    mul-double/2addr p2, v5

    mul-double/2addr p4, v5

    mul-double/2addr p2, p2

    add-double/2addr p2, v3

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    mul-double/2addr p4, p4

    add-double/2addr p4, v3

    invoke-static {p4, p5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    add-double/2addr p0, p2

    div-double/2addr v3, p0

    mul-double/2addr v0, v3

    mul-double/2addr v0, v5

    add-double p4, v0, v0

    :goto_0
    return-wide p4
.end method

.method public static d_sign(DD)D
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    neg-double p0, p0

    :goto_0
    cmpl-double p2, p2, v0

    if-ltz p2, :cond_1

    goto :goto_1

    :cond_1
    neg-double p0, p0

    :goto_1
    return-wide p0
.end method

.method public static luBacksubstitution(I[D[I[D)V
    .locals 15

    move v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    const/4 v3, -0x1

    move v4, v1

    :goto_1
    const-wide/16 v5, 0x0

    if-ge v4, v0, :cond_2

    aget v7, p2, v4

    mul-int/2addr v7, v0

    add-int/2addr v7, v2

    aget-wide v8, p3, v7

    mul-int v10, v0, v4

    add-int v11, v2, v10

    aget-wide v12, p3, v11

    aput-wide v12, p3, v7

    if-ltz v3, :cond_0

    move v5, v3

    :goto_2
    add-int/lit8 v6, v4, -0x1

    if-gt v5, v6, :cond_1

    add-int v6, v10, v5

    aget-wide v6, p1, v6

    mul-int v12, v0, v5

    add-int/2addr v12, v2

    aget-wide v12, p3, v12

    mul-double/2addr v6, v12

    sub-double/2addr v8, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_0
    cmpl-double v5, v8, v5

    if-eqz v5, :cond_1

    move v3, v4

    :cond_1
    aput-wide v8, p3, v11

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_3
    if-ge v3, v0, :cond_4

    add-int/lit8 v4, v0, -0x1

    sub-int/2addr v4, v3

    mul-int v7, v0, v4

    const/4 v8, 0x1

    move-wide v9, v5

    :goto_4
    if-gt v8, v3, :cond_3

    add-int v11, v7, v0

    sub-int/2addr v11, v8

    aget-wide v11, p1, v11

    sub-int v13, v0, v8

    mul-int/2addr v13, v0

    add-int/2addr v13, v2

    aget-wide v13, p3, v13

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_3
    add-int v8, v2, v7

    aget-wide v11, p3, v8

    sub-double/2addr v11, v9

    add-int/2addr v7, v4

    aget-wide v9, p1, v7

    div-double/2addr v11, v9

    aput-wide v11, p3, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static luDecomposition(I[D[I[I)Z
    .locals 24

    move/from16 v0, p0

    new-array v1, v0, [D

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, p3, v2

    move v4, v0

    move v5, v2

    move v6, v5

    :goto_0
    add-int/lit8 v7, v4, -0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/16 v10, 0x0

    if-eqz v4, :cond_3

    move v4, v0

    move-wide v12, v10

    :goto_1
    add-int/lit8 v14, v4, -0x1

    if-eqz v4, :cond_1

    add-int/lit8 v4, v5, 0x1

    aget-wide v15, p1, v5

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    cmpl-double v5, v15, v12

    if-lez v5, :cond_0

    move v5, v4

    move v4, v14

    move-wide v12, v15

    goto :goto_1

    :cond_0
    move v5, v4

    move v4, v14

    goto :goto_1

    :cond_1
    cmpl-double v4, v12, v10

    if-nez v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v4, v6, 0x1

    div-double/2addr v8, v12

    aput-wide v8, v1, v6

    move v6, v4

    move v4, v7

    goto :goto_0

    :cond_3
    move v4, v2

    :goto_2
    if-ge v4, v0, :cond_e

    move v5, v2

    :goto_3
    if-ge v5, v4, :cond_5

    mul-int v6, v0, v5

    add-int v7, v6, v4

    aget-wide v12, p1, v7

    move v15, v4

    move v14, v5

    :goto_4
    add-int/lit8 v16, v14, -0x1

    if-eqz v14, :cond_4

    aget-wide v17, p1, v6

    aget-wide v19, p1, v15

    mul-double v17, v17, v19

    sub-double v12, v12, v17

    add-int/2addr v6, v3

    add-int/2addr v15, v0

    move/from16 v14, v16

    goto :goto_4

    :cond_4
    aput-wide v12, p1, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, -0x1

    move v6, v4

    move-wide v12, v10

    :goto_5
    if-ge v6, v0, :cond_8

    mul-int v7, v0, v6

    add-int v14, v7, v4

    aget-wide v15, p1, v14

    move/from16 v17, v4

    move/from16 v18, v17

    :goto_6
    add-int/lit8 v19, v17, -0x1

    if-eqz v17, :cond_6

    aget-wide v20, p1, v7

    aget-wide v22, p1, v18

    mul-double v20, v20, v22

    sub-double v15, v15, v20

    add-int/2addr v7, v3

    add-int v18, v18, v0

    move/from16 v17, v19

    goto :goto_6

    :cond_6
    aput-wide v15, p1, v14

    aget-wide v17, v1, v6

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    mul-double v17, v17, v14

    cmpl-double v7, v17, v12

    if-ltz v7, :cond_7

    move v5, v6

    move-wide/from16 v12, v17

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_8
    if-ltz v5, :cond_d

    if-eq v4, v5, :cond_a

    mul-int v6, v0, v5

    mul-int v7, v0, v4

    move v12, v0

    :goto_7
    add-int/lit8 v13, v12, -0x1

    if-eqz v12, :cond_9

    aget-wide v14, p1, v6

    add-int/lit8 v12, v6, 0x1

    aget-wide v16, p1, v7

    aput-wide v16, p1, v6

    add-int/lit8 v6, v7, 0x1

    aput-wide v14, p1, v7

    move v7, v6

    move v6, v12

    move v12, v13

    goto :goto_7

    :cond_9
    aget-wide v6, v1, v4

    aput-wide v6, v1, v5

    aget v6, p3, v2

    neg-int v6, v6

    aput v6, p3, v2

    :cond_a
    aput v5, p2, v4

    mul-int v5, v0, v4

    add-int/2addr v5, v4

    aget-wide v5, p1, v5

    cmpl-double v7, v5, v10

    if-nez v7, :cond_b

    return v2

    :cond_b
    add-int/lit8 v7, v0, -0x1

    if-eq v4, v7, :cond_c

    div-double v5, v8, v5

    add-int/lit8 v12, v4, 0x1

    mul-int/2addr v12, v0

    add-int/2addr v12, v4

    sub-int/2addr v7, v4

    :goto_8
    add-int/lit8 v13, v7, -0x1

    if-eqz v7, :cond_c

    aget-wide v14, p1, v12

    mul-double/2addr v14, v5

    aput-wide v14, p1, v12

    add-int/2addr v12, v0

    move v7, v13

    goto :goto_8

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "GMatrix24"

    invoke-static {v1}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return v3
.end method

.method public static max(DD)D
    .locals 1

    cmpl-double v0, p0, p2

    if-lez v0, :cond_0

    return-wide p0

    :cond_0
    return-wide p2
.end method

.method public static min(DD)D
    .locals 1

    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    return-wide p0

    :cond_0
    return-wide p2
.end method

.method private static print_m(Ljavax/vecmath/GMatrix;Ljavax/vecmath/GMatrix;Ljavax/vecmath/GMatrix;)V
    .locals 2

    new-instance v0, Ljavax/vecmath/GMatrix;

    iget v1, p0, Ljavax/vecmath/GMatrix;->nCol:I

    iget p0, p0, Ljavax/vecmath/GMatrix;->nRow:I

    invoke-direct {v0, v1, p0}, Ljavax/vecmath/GMatrix;-><init>(II)V

    invoke-virtual {v0, p1, v0}, Ljavax/vecmath/GMatrix;->mul(Ljavax/vecmath/GMatrix;Ljavax/vecmath/GMatrix;)V

    invoke-virtual {v0, v0, p2}, Ljavax/vecmath/GMatrix;->mul(Ljavax/vecmath/GMatrix;Ljavax/vecmath/GMatrix;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\n m = \n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljavax/vecmath/GMatrix;->toString(Ljavax/vecmath/GMatrix;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static print_se([D[D)V
    .locals 7

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ns ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-wide v3, p0, v2

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget-wide v5, p0, v4

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    aget-wide v5, p0, v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "e ="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v1, p1, v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v1, p1, v4

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static print_svd([D[DLjavax/vecmath/GMatrix;Ljavax/vecmath/GMatrix;)V
    .locals 8

    new-instance v0, Ljavax/vecmath/GMatrix;

    iget v1, p2, Ljavax/vecmath/GMatrix;->nCol:I

    iget v2, p3, Ljavax/vecmath/GMatrix;->nRow:I

    invoke-direct {v0, v1, v2}, Ljavax/vecmath/GMatrix;-><init>(II)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " \ns = "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    const-string v4, " "

    if-ge v2, v3, :cond_0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v6, p0, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " \ne = "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v2, v1

    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_1

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v6, p1, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " \nu  = \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljavax/vecmath/GMatrix;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " \nv  = \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljavax/vecmath/GMatrix;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/vecmath/GMatrix;->setIdentity()V

    move v2, v1

    :goto_2
    array-length v3, p0

    if-ge v2, v3, :cond_2

    iget-object v3, v0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v3, v3, v2

    aget-wide v4, p0, v2

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    array-length p0, p1

    if-ge v1, p0, :cond_3

    iget-object p0, v0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object p0, p0, v1

    add-int/lit8 v2, v1, 0x1

    aget-wide v3, p1, v1

    aput-wide v3, p0, v2

    move v1, v2

    goto :goto_3

    :cond_3
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " \nm  = \n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljavax/vecmath/GMatrix;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0, p2, v0}, Ljavax/vecmath/GMatrix;->mulTransposeLeft(Ljavax/vecmath/GMatrix;Ljavax/vecmath/GMatrix;)V

    invoke-virtual {v0, v0, p3}, Ljavax/vecmath/GMatrix;->mulTransposeRight(Ljavax/vecmath/GMatrix;Ljavax/vecmath/GMatrix;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " \n u.transpose*m*v.transpose  = \n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljavax/vecmath/GMatrix;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static toString(Ljavax/vecmath/GMatrix;)Ljava/lang/String;
    .locals 8

    .line 7
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Ljavax/vecmath/GMatrix;->nRow:I

    iget v2, p0, Ljavax/vecmath/GMatrix;->nCol:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 8
    :goto_0
    iget v3, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v2, v3, :cond_2

    move v3, v1

    .line 9
    :goto_1
    iget v4, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v3, v4, :cond_1

    .line 10
    iget-object v4, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v4, v4, v2

    aget-wide v5, v4, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 11
    const-string v4, "0.0000 "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 12
    :cond_0
    iget-object v4, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v4, v4, v2

    aget-wide v5, v4, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 13
    :cond_1
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static update_u(ILjavax/vecmath/GMatrix;[D[D)V
    .locals 12

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p1, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v1, v2, :cond_0

    iget-object v2, p1, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v3, v2, p0

    aget-wide v4, v3, v1

    aget-wide v6, p2, v0

    mul-double/2addr v6, v4

    aget-wide v8, p3, v0

    add-int/lit8 v10, p0, 0x1

    aget-object v2, v2, v10

    aget-wide v10, v2, v1

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v3, v1

    aget-wide v6, p3, v0

    neg-double v6, v6

    mul-double/2addr v6, v4

    aget-wide v3, p2, v0

    aget-wide v8, v2, v1

    mul-double/2addr v3, v8

    add-double/2addr v6, v3

    aput-wide v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static update_u_split(IILjavax/vecmath/GMatrix;[D[DLjavax/vecmath/GMatrix;Ljavax/vecmath/GMatrix;)V
    .locals 13

    move-object v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, v0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v2, v3, :cond_0

    iget-object v3, v0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v4, v3, p0

    aget-wide v5, v4, v2

    aget-wide v7, p3, v1

    mul-double/2addr v7, v5

    aget-wide v9, p4, v1

    aget-object v3, v3, p1

    aget-wide v11, v3, v2

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    aput-wide v7, v4, v2

    aget-wide v7, p4, v1

    mul-double/2addr v7, v5

    aget-wide v4, p3, v1

    aget-wide v9, v3, v2

    mul-double/2addr v4, v9

    add-double/2addr v7, v4

    aput-wide v7, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\nm="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static/range {p6 .. p6}, Ljavax/vecmath/GMatrix;->checkMatrix(Ljavax/vecmath/GMatrix;)V

    const-string v1, "\nu="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static/range {p5 .. p5}, Ljavax/vecmath/GMatrix;->checkMatrix(Ljavax/vecmath/GMatrix;)V

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v2, v1, v2}, Ljavax/vecmath/GMatrix;->mul(Ljavax/vecmath/GMatrix;Ljavax/vecmath/GMatrix;)V

    const-string v1, "\nt*m="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static/range {p6 .. p6}, Ljavax/vecmath/GMatrix;->checkMatrix(Ljavax/vecmath/GMatrix;)V

    return-void
.end method

.method private static update_v(ILjavax/vecmath/GMatrix;[D[D)V
    .locals 12

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p1, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v1, v2, :cond_0

    iget-object v2, p1, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v2, v2, v1

    aget-wide v3, v2, p0

    aget-wide v5, p2, v0

    mul-double/2addr v5, v3

    aget-wide v7, p3, v0

    add-int/lit8 v9, p0, 0x1

    aget-wide v10, v2, v9

    mul-double/2addr v7, v10

    add-double/2addr v5, v7

    aput-wide v5, v2, p0

    aget-wide v5, p3, v0

    neg-double v5, v5

    mul-double/2addr v5, v3

    aget-wide v3, p2, v0

    aget-wide v7, v2, v9

    mul-double/2addr v3, v7

    add-double/2addr v5, v3

    aput-wide v5, v2, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static update_v_split(IILjavax/vecmath/GMatrix;[D[DLjavax/vecmath/GMatrix;Ljavax/vecmath/GMatrix;)V
    .locals 14

    move v0, p0

    move v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget v5, v2, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v4, v5, :cond_0

    iget-object v5, v2, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v5, v5, v4

    aget-wide v6, v5, v0

    aget-wide v8, p3, v3

    mul-double/2addr v8, v6

    aget-wide v10, p4, v3

    aget-wide v12, v5, v1

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    aput-wide v8, v5, v0

    aget-wide v8, p4, v3

    mul-double/2addr v8, v6

    aget-wide v6, p3, v3

    aget-wide v10, v5, v1

    mul-double/2addr v6, v10

    add-double/2addr v8, v6

    aput-wide v8, v5, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "topr    ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bottomr ="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cosr ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v4, p3, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sinr ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v3, p4, v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "\nm ="

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static/range {p6 .. p6}, Ljavax/vecmath/GMatrix;->checkMatrix(Ljavax/vecmath/GMatrix;)V

    const-string v0, "\nv ="

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static/range {p5 .. p5}, Ljavax/vecmath/GMatrix;->checkMatrix(Ljavax/vecmath/GMatrix;)V

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-virtual {v1, v1, v0}, Ljavax/vecmath/GMatrix;->mul(Ljavax/vecmath/GMatrix;Ljavax/vecmath/GMatrix;)V

    const-string v0, "\nt*m ="

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static/range {p6 .. p6}, Ljavax/vecmath/GMatrix;->checkMatrix(Ljavax/vecmath/GMatrix;)V

    return-void
.end method


# virtual methods
.method public final LUD(Ljavax/vecmath/GMatrix;Ljavax/vecmath/GVector;)I
    .locals 10

    iget v0, p1, Ljavax/vecmath/GMatrix;->nRow:I

    iget v1, p1, Ljavax/vecmath/GMatrix;->nCol:I

    mul-int v2, v0, v1

    new-array v2, v2, [D

    const/4 v3, 0x1

    new-array v3, v3, [I

    new-array v4, v0, [I

    iget v5, p0, Ljavax/vecmath/GMatrix;->nRow:I

    iget v6, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ne v5, v6, :cond_9

    const-string v7, "GMatrix27"

    if-ne v5, v0, :cond_8

    if-ne v6, v1, :cond_7

    invoke-virtual {p2}, Ljavax/vecmath/GVector;->getSize()I

    move-result v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v5, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v1, v5, :cond_1

    move v5, v0

    :goto_1
    iget v6, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v5, v6, :cond_0

    mul-int/2addr v6, v1

    add-int/2addr v6, v5

    iget-object v7, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v7, v7, v1

    aget-wide v8, v7, v5

    aput-wide v8, v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v1, p1, Ljavax/vecmath/GMatrix;->nRow:I

    invoke-static {v1, v2, v4, v3}, Ljavax/vecmath/GMatrix;->luDecomposition(I[D[I[I)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v0

    :goto_2
    iget v5, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v1, v5, :cond_3

    move v5, v0

    :goto_3
    iget v6, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v5, v6, :cond_2

    iget-object v7, p1, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v7, v7, v1

    mul-int/2addr v6, v1

    add-int/2addr v6, v5

    aget-wide v8, v2, v6

    aput-wide v8, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_4
    iget v2, p1, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v1, v2, :cond_4

    iget-object v2, p2, Ljavax/vecmath/GVector;->values:[D

    aget v5, v4, v1

    int-to-double v5, v5

    aput-wide v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    aget p1, v3, v0

    return p1

    :cond_5
    new-instance p1, Ljavax/vecmath/SingularMatrixException;

    const-string p2, "GMatrix21"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/vecmath/SingularMatrixException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    const-string p2, "GMatrix20"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    invoke-static {v7}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    invoke-static {v7}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    const-string p2, "GMatrix19"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final SVD(Ljavax/vecmath/GMatrix;Ljavax/vecmath/GMatrix;Ljavax/vecmath/GMatrix;)I
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    iget v7, v0, Ljavax/vecmath/GMatrix;->nCol:I

    iget v8, v3, Ljavax/vecmath/GMatrix;->nCol:I

    if-ne v7, v8, :cond_4

    iget v8, v3, Ljavax/vecmath/GMatrix;->nRow:I

    if-ne v7, v8, :cond_4

    iget v8, v0, Ljavax/vecmath/GMatrix;->nRow:I

    iget v9, v1, Ljavax/vecmath/GMatrix;->nRow:I

    if-ne v8, v9, :cond_3

    iget v9, v1, Ljavax/vecmath/GMatrix;->nCol:I

    if-ne v8, v9, :cond_3

    iget v9, v2, Ljavax/vecmath/GMatrix;->nRow:I

    if-ne v8, v9, :cond_2

    iget v9, v2, Ljavax/vecmath/GMatrix;->nCol:I

    if-ne v7, v9, :cond_2

    if-ne v8, v6, :cond_1

    if-ne v7, v6, :cond_1

    iget-object v7, v0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v7, v7, v5

    aget-wide v8, v7, v4

    const-wide/16 v10, 0x0

    cmpl-double v7, v8, v10

    if-nez v7, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljavax/vecmath/GMatrix;->setIdentity()V

    invoke-virtual/range {p3 .. p3}, Ljavax/vecmath/GMatrix;->setIdentity()V

    iget-object v2, v0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v7, v2, v4

    aget-wide v14, v7, v5

    cmpl-double v8, v14, v10

    if-nez v8, :cond_0

    return v6

    :cond_0
    new-array v8, v5, [D

    new-array v9, v5, [D

    new-array v10, v5, [D

    new-array v11, v5, [D

    aget-wide v12, v7, v4

    aget-object v2, v2, v5

    aget-wide v16, v2, v5

    new-array v2, v6, [D

    aput-wide v12, v2, v4

    aput-wide v16, v2, v5

    const/16 v23, 0x0

    move-object/from16 v18, v2

    move-object/from16 v19, v8

    move-object/from16 v20, v10

    move-object/from16 v21, v9

    move-object/from16 v22, v11

    invoke-static/range {v12 .. v23}, Ljavax/vecmath/GMatrix;->compute_2X2(DDD[D[D[D[D[DI)I

    invoke-static {v4, v1, v10, v8}, Ljavax/vecmath/GMatrix;->update_u(ILjavax/vecmath/GMatrix;[D[D)V

    invoke-static {v4, v3, v11, v9}, Ljavax/vecmath/GMatrix;->update_v(ILjavax/vecmath/GMatrix;[D[D)V

    return v6

    :cond_1
    invoke-static/range {p0 .. p3}, Ljavax/vecmath/GMatrix;->computeSVD(Ljavax/vecmath/GMatrix;Ljavax/vecmath/GMatrix;Ljavax/vecmath/GMatrix;Ljavax/vecmath/GMatrix;)I

    move-result v1

    return v1

    :cond_2
    new-instance v1, Ljavax/vecmath/MismatchedSizeException;

    const-string v2, "GMatrix26"

    invoke-static {v2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljavax/vecmath/MismatchedSizeException;

    const-string v2, "GMatrix25"

    invoke-static {v2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v1, Ljavax/vecmath/MismatchedSizeException;

    const-string v2, "GMatrix18"

    invoke-static {v2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final add(Ljavax/vecmath/GMatrix;)V
    .locals 9

    .line 1
    iget v0, p0, Ljavax/vecmath/GMatrix;->nRow:I

    iget v1, p1, Ljavax/vecmath/GMatrix;->nRow:I

    if-ne v0, v1, :cond_3

    .line 2
    iget v0, p0, Ljavax/vecmath/GMatrix;->nCol:I

    iget v1, p1, Ljavax/vecmath/GMatrix;->nCol:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    move v1, v0

    .line 3
    :goto_0
    iget v2, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v1, v2, :cond_1

    move v2, v0

    .line 4
    :goto_1
    iget v3, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v2, v3, :cond_0

    .line 5
    iget-object v3, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v3, v3, v1

    aget-wide v4, v3, v2

    iget-object v6, p1, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v6, v6, v1

    aget-wide v7, v6, v2

    add-double/2addr v4, v7

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 6
    :cond_2
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    const-string v0, "GMatrix5"

    .line 7
    invoke-static {v0}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_3
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    const-string v0, "GMatrix4"

    .line 9
    invoke-static {v0}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final add(Ljavax/vecmath/GMatrix;Ljavax/vecmath/GMatrix;)V
    .locals 9

    .line 10
    iget v0, p2, Ljavax/vecmath/GMatrix;->nRow:I

    iget v1, p1, Ljavax/vecmath/GMatrix;->nRow:I

    if-ne v0, v1, :cond_4

    .line 11
    iget v0, p2, Ljavax/vecmath/GMatrix;->nCol:I

    iget v2, p1, Ljavax/vecmath/GMatrix;->nCol:I

    if-ne v0, v2, :cond_3

    .line 12
    iget v0, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    move v1, v0

    .line 13
    :goto_0
    iget v2, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v1, v2, :cond_1

    move v2, v0

    .line 14
    :goto_1
    iget v3, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v2, v3, :cond_0

    .line 15
    iget-object v3, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v3, v3, v1

    iget-object v4, p1, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v4, v4, v1

    aget-wide v5, v4, v2

    iget-object v4, p2, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v4, v4, v1

    aget-wide v7, v4, v2

    add-double/2addr v5, v7

    aput-wide v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 16
    :cond_2
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    const-string p2, "GMatrix8"

    .line 17
    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_3
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    const-string p2, "GMatrix7"

    .line 19
    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_4
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    const-string p2, "GMatrix6"

    .line 21
    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clone()Ljava/lang/Object;
    .locals 8

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/vecmath/GMatrix;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget v1, p0, Ljavax/vecmath/GMatrix;->nRow:I

    iget v2, p0, Ljavax/vecmath/GMatrix;->nCol:I

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    const/4 v2, 0x0

    aput v1, v3, v2

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, v0, Ljavax/vecmath/GMatrix;->values:[[D

    move v1, v2

    :goto_0
    iget v3, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v1, v3, :cond_1

    move v3, v2

    :goto_1
    iget v4, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v3, v4, :cond_0

    iget-object v4, v0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v4, v4, v1

    iget-object v5, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v5, v5, v1

    aget-wide v6, v5, v3

    aput-wide v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public final copySubMatrix(IIIIIILjavax/vecmath/GMatrix;)V
    .locals 8

    const/4 v0, 0x0

    if-eq p0, p7, :cond_1

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_5

    move v2, v0

    :goto_1
    if-ge v2, p4, :cond_0

    iget-object v3, p7, Ljavax/vecmath/GMatrix;->values:[[D

    add-int v4, p5, v1

    aget-object v3, v3, v4

    add-int v4, p6, v2

    iget-object v5, p0, Ljavax/vecmath/GMatrix;->values:[[D

    add-int v6, p1, v1

    aget-object v5, v5, v6

    add-int v6, p2, v2

    aget-wide v6, v5, v6

    aput-wide v6, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput p4, v1, v2

    aput p3, v1, v0

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    move v2, v0

    :goto_2
    if-ge v2, p3, :cond_3

    move v3, v0

    :goto_3
    if-ge v3, p4, :cond_2

    aget-object v4, v1, v2

    iget-object v5, p0, Ljavax/vecmath/GMatrix;->values:[[D

    add-int v6, p1, v2

    aget-object v5, v5, v6

    add-int v6, p2, v3

    aget-wide v6, v5, v6

    aput-wide v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move p1, v0

    :goto_4
    if-ge p1, p3, :cond_5

    move p2, v0

    :goto_5
    if-ge p2, p4, :cond_4

    iget-object v2, p7, Ljavax/vecmath/GMatrix;->values:[[D

    add-int v3, p5, p1

    aget-object v2, v2, v3

    add-int v3, p6, p2

    aget-object v4, v1, p1

    aget-wide v5, v4, p2

    aput-wide v5, v2, v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method public epsilonEquals(Ljavax/vecmath/GMatrix;D)Z
    .locals 8

    .line 2
    iget v0, p0, Ljavax/vecmath/GMatrix;->nRow:I

    iget v1, p1, Ljavax/vecmath/GMatrix;->nRow:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5

    iget v0, p0, Ljavax/vecmath/GMatrix;->nCol:I

    iget v1, p1, Ljavax/vecmath/GMatrix;->nCol:I

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    move v0, v2

    .line 3
    :goto_0
    iget v1, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v0, v1, :cond_4

    move v1, v2

    .line 4
    :goto_1
    iget v3, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v1, v3, :cond_3

    .line 5
    iget-object v3, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v3, v3, v0

    aget-wide v4, v3, v1

    iget-object v3, p1, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v3, v3, v0

    aget-wide v6, v3, v1

    sub-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpg-double v3, v4, v6

    if-gez v3, :cond_1

    neg-double v4, v4

    :cond_1
    cmpl-double v3, v4, p2

    if-lez v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_2
    return v2
.end method

.method public epsilonEquals(Ljavax/vecmath/GMatrix;F)Z
    .locals 2

    float-to-double v0, p2

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Ljavax/vecmath/GMatrix;->epsilonEquals(Ljavax/vecmath/GMatrix;D)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x0

    .line 5
    :try_start_0
    check-cast p1, Ljavax/vecmath/GMatrix;

    .line 6
    iget v1, p0, Ljavax/vecmath/GMatrix;->nRow:I

    iget v2, p1, Ljavax/vecmath/GMatrix;->nRow:I

    if-ne v1, v2, :cond_4

    iget v1, p0, Ljavax/vecmath/GMatrix;->nCol:I

    iget v2, p1, Ljavax/vecmath/GMatrix;->nCol:I

    if-eq v1, v2, :cond_0

    goto :goto_2

    :cond_0
    move v1, v0

    .line 7
    :goto_0
    iget v2, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v1, v2, :cond_3

    move v2, v0

    .line 8
    :goto_1
    iget v3, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v2, v3, :cond_2

    .line 9
    iget-object v3, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v3, v3, v1

    aget-wide v4, v3, v2

    iget-object v3, p1, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v3, v3, v1

    aget-wide v6, v3, v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_4
    :goto_2
    return v0
.end method

.method public equals(Ljavax/vecmath/GMatrix;)Z
    .locals 8

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget v1, p0, Ljavax/vecmath/GMatrix;->nRow:I

    iget v2, p1, Ljavax/vecmath/GMatrix;->nRow:I

    if-ne v1, v2, :cond_4

    iget v1, p0, Ljavax/vecmath/GMatrix;->nCol:I

    iget v2, p1, Ljavax/vecmath/GMatrix;->nCol:I

    if-eq v1, v2, :cond_0

    goto :goto_2

    :cond_0
    move v1, v0

    .line 2
    :goto_0
    iget v2, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v1, v2, :cond_3

    move v2, v0

    .line 3
    :goto_1
    iget v3, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v2, v3, :cond_2

    .line 4
    iget-object v3, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v3, v3, v1

    aget-wide v4, v3, v2

    iget-object v3, p1, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v3, v3, v1

    aget-wide v6, v3, v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_4
    :goto_2
    return v0
.end method

.method public final get(Ljavax/vecmath/GMatrix;)V
    .locals 9

    .line 117
    iget v0, p0, Ljavax/vecmath/GMatrix;->nCol:I

    iget v1, p1, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 118
    :goto_0
    iget v1, p0, Ljavax/vecmath/GMatrix;->nRow:I

    iget v2, p1, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_3

    move v4, v2

    :goto_3
    if-ge v4, v0, :cond_2

    .line 119
    iget-object v5, p1, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v5, v5, v3

    iget-object v6, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v6, v6, v3

    aget-wide v7, v6, v4

    aput-wide v7, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move v3, v1

    .line 120
    :goto_4
    iget v4, p1, Ljavax/vecmath/GMatrix;->nRow:I

    const-wide/16 v5, 0x0

    if-ge v3, v4, :cond_5

    move v4, v2

    .line 121
    :goto_5
    iget v7, p1, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v4, v7, :cond_4

    .line 122
    iget-object v7, p1, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v7, v7, v3

    aput-wide v5, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 123
    :cond_5
    :goto_6
    iget v3, p1, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v0, v3, :cond_7

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_6

    .line 124
    iget-object v4, p1, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v4, v4, v3

    aput-wide v5, v4, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    return-void
.end method

.method public final get(Ljavax/vecmath/Matrix3d;)V
    .locals 9

    .line 1
    iget v0, p0, Ljavax/vecmath/GMatrix;->nRow:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-lt v0, v4, :cond_1

    iget v0, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v0, v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v4, v0, v1

    aget-wide v5, v4, v1

    iput-wide v5, p1, Ljavax/vecmath/Matrix3d;->m00:D

    .line 3
    aget-wide v5, v4, v3

    iput-wide v5, p1, Ljavax/vecmath/Matrix3d;->m01:D

    .line 4
    aget-wide v5, v4, v2

    iput-wide v5, p1, Ljavax/vecmath/Matrix3d;->m02:D

    .line 5
    aget-object v4, v0, v3

    aget-wide v5, v4, v1

    iput-wide v5, p1, Ljavax/vecmath/Matrix3d;->m10:D

    .line 6
    aget-wide v5, v4, v3

    iput-wide v5, p1, Ljavax/vecmath/Matrix3d;->m11:D

    .line 7
    aget-wide v5, v4, v2

    iput-wide v5, p1, Ljavax/vecmath/Matrix3d;->m12:D

    .line 8
    aget-object v0, v0, v2

    aget-wide v4, v0, v1

    iput-wide v4, p1, Ljavax/vecmath/Matrix3d;->m20:D

    .line 9
    aget-wide v3, v0, v3

    iput-wide v3, p1, Ljavax/vecmath/Matrix3d;->m21:D

    .line 10
    aget-wide v1, v0, v2

    iput-wide v1, p1, Ljavax/vecmath/Matrix3d;->m22:D

    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljavax/vecmath/Matrix3d;->setZero()V

    .line 12
    iget v0, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-lez v0, :cond_4

    .line 13
    iget v4, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-lez v4, :cond_2

    .line 14
    iget-object v5, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v6, v5, v1

    aget-wide v7, v6, v1

    iput-wide v7, p1, Ljavax/vecmath/Matrix3d;->m00:D

    if-le v4, v3, :cond_2

    .line 15
    aget-object v6, v5, v3

    aget-wide v7, v6, v1

    iput-wide v7, p1, Ljavax/vecmath/Matrix3d;->m10:D

    if-le v4, v2, :cond_2

    .line 16
    aget-object v5, v5, v2

    aget-wide v6, v5, v1

    iput-wide v6, p1, Ljavax/vecmath/Matrix3d;->m20:D

    :cond_2
    if-le v0, v3, :cond_4

    if-lez v4, :cond_3

    .line 17
    iget-object v5, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v6, v5, v1

    aget-wide v7, v6, v3

    iput-wide v7, p1, Ljavax/vecmath/Matrix3d;->m01:D

    if-le v4, v3, :cond_3

    .line 18
    aget-object v6, v5, v3

    aget-wide v7, v6, v3

    iput-wide v7, p1, Ljavax/vecmath/Matrix3d;->m11:D

    if-le v4, v2, :cond_3

    .line 19
    aget-object v5, v5, v2

    aget-wide v6, v5, v3

    iput-wide v6, p1, Ljavax/vecmath/Matrix3d;->m21:D

    :cond_3
    if-le v0, v2, :cond_4

    if-lez v4, :cond_4

    .line 20
    iget-object v0, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v1, v0, v1

    aget-wide v5, v1, v2

    iput-wide v5, p1, Ljavax/vecmath/Matrix3d;->m02:D

    if-le v4, v3, :cond_4

    .line 21
    aget-object v1, v0, v3

    aget-wide v5, v1, v2

    iput-wide v5, p1, Ljavax/vecmath/Matrix3d;->m12:D

    if-le v4, v2, :cond_4

    .line 22
    aget-object v0, v0, v2

    aget-wide v1, v0, v2

    iput-wide v1, p1, Ljavax/vecmath/Matrix3d;->m22:D

    :cond_4
    :goto_1
    return-void
.end method

.method public final get(Ljavax/vecmath/Matrix3f;)V
    .locals 9

    .line 23
    iget v0, p0, Ljavax/vecmath/GMatrix;->nRow:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-lt v0, v4, :cond_1

    iget v0, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v0, v4, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v4, v0, v1

    aget-wide v5, v4, v1

    double-to-float v5, v5

    iput v5, p1, Ljavax/vecmath/Matrix3f;->m00:F

    .line 25
    aget-wide v5, v4, v3

    double-to-float v5, v5

    iput v5, p1, Ljavax/vecmath/Matrix3f;->m01:F

    .line 26
    aget-wide v5, v4, v2

    double-to-float v4, v5

    iput v4, p1, Ljavax/vecmath/Matrix3f;->m02:F

    .line 27
    aget-object v4, v0, v3

    aget-wide v5, v4, v1

    double-to-float v5, v5

    iput v5, p1, Ljavax/vecmath/Matrix3f;->m10:F

    .line 28
    aget-wide v5, v4, v3

    double-to-float v5, v5

    iput v5, p1, Ljavax/vecmath/Matrix3f;->m11:F

    .line 29
    aget-wide v5, v4, v2

    double-to-float v4, v5

    iput v4, p1, Ljavax/vecmath/Matrix3f;->m12:F

    .line 30
    aget-object v0, v0, v2

    aget-wide v4, v0, v1

    double-to-float v1, v4

    iput v1, p1, Ljavax/vecmath/Matrix3f;->m20:F

    .line 31
    aget-wide v3, v0, v3

    double-to-float v1, v3

    iput v1, p1, Ljavax/vecmath/Matrix3f;->m21:F

    .line 32
    aget-wide v1, v0, v2

    double-to-float v0, v1

    iput v0, p1, Ljavax/vecmath/Matrix3f;->m22:F

    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljavax/vecmath/Matrix3f;->setZero()V

    .line 34
    iget v0, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-lez v0, :cond_4

    .line 35
    iget v4, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-lez v4, :cond_2

    .line 36
    iget-object v5, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v6, v5, v1

    aget-wide v7, v6, v1

    double-to-float v6, v7

    iput v6, p1, Ljavax/vecmath/Matrix3f;->m00:F

    if-le v4, v3, :cond_2

    .line 37
    aget-object v6, v5, v3

    aget-wide v7, v6, v1

    double-to-float v6, v7

    iput v6, p1, Ljavax/vecmath/Matrix3f;->m10:F

    if-le v4, v2, :cond_2

    .line 38
    aget-object v5, v5, v2

    aget-wide v6, v5, v1

    double-to-float v5, v6

    iput v5, p1, Ljavax/vecmath/Matrix3f;->m20:F

    :cond_2
    if-le v0, v3, :cond_4

    if-lez v4, :cond_3

    .line 39
    iget-object v5, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v6, v5, v1

    aget-wide v7, v6, v3

    double-to-float v6, v7

    iput v6, p1, Ljavax/vecmath/Matrix3f;->m01:F

    if-le v4, v3, :cond_3

    .line 40
    aget-object v6, v5, v3

    aget-wide v7, v6, v3

    double-to-float v6, v7

    iput v6, p1, Ljavax/vecmath/Matrix3f;->m11:F

    if-le v4, v2, :cond_3

    .line 41
    aget-object v5, v5, v2

    aget-wide v6, v5, v3

    double-to-float v5, v6

    iput v5, p1, Ljavax/vecmath/Matrix3f;->m21:F

    :cond_3
    if-le v0, v2, :cond_4

    if-lez v4, :cond_4

    .line 42
    iget-object v0, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v1, v0, v1

    aget-wide v5, v1, v2

    double-to-float v1, v5

    iput v1, p1, Ljavax/vecmath/Matrix3f;->m02:F

    if-le v4, v3, :cond_4

    .line 43
    aget-object v1, v0, v3

    aget-wide v5, v1, v2

    double-to-float v1, v5

    iput v1, p1, Ljavax/vecmath/Matrix3f;->m12:F

    if-le v4, v2, :cond_4

    .line 44
    aget-object v0, v0, v2

    aget-wide v1, v0, v2

    double-to-float v0, v1

    iput v0, p1, Ljavax/vecmath/Matrix3f;->m22:F

    :cond_4
    :goto_1
    return-void
.end method

.method public final get(Ljavax/vecmath/Matrix4d;)V
    .locals 10

    .line 45
    iget v0, p0, Ljavax/vecmath/GMatrix;->nRow:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x4

    if-lt v0, v5, :cond_1

    iget v0, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v0, v5, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v5, v0, v1

    aget-wide v6, v5, v1

    iput-wide v6, p1, Ljavax/vecmath/Matrix4d;->m00:D

    .line 47
    aget-wide v6, v5, v4

    iput-wide v6, p1, Ljavax/vecmath/Matrix4d;->m01:D

    .line 48
    aget-wide v6, v5, v3

    iput-wide v6, p1, Ljavax/vecmath/Matrix4d;->m02:D

    .line 49
    aget-wide v6, v5, v2

    iput-wide v6, p1, Ljavax/vecmath/Matrix4d;->m03:D

    .line 50
    aget-object v5, v0, v4

    aget-wide v6, v5, v1

    iput-wide v6, p1, Ljavax/vecmath/Matrix4d;->m10:D

    .line 51
    aget-wide v6, v5, v4

    iput-wide v6, p1, Ljavax/vecmath/Matrix4d;->m11:D

    .line 52
    aget-wide v6, v5, v3

    iput-wide v6, p1, Ljavax/vecmath/Matrix4d;->m12:D

    .line 53
    aget-wide v6, v5, v2

    iput-wide v6, p1, Ljavax/vecmath/Matrix4d;->m13:D

    .line 54
    aget-object v5, v0, v3

    aget-wide v6, v5, v1

    iput-wide v6, p1, Ljavax/vecmath/Matrix4d;->m20:D

    .line 55
    aget-wide v6, v5, v4

    iput-wide v6, p1, Ljavax/vecmath/Matrix4d;->m21:D

    .line 56
    aget-wide v6, v5, v3

    iput-wide v6, p1, Ljavax/vecmath/Matrix4d;->m22:D

    .line 57
    aget-wide v6, v5, v2

    iput-wide v6, p1, Ljavax/vecmath/Matrix4d;->m23:D

    .line 58
    aget-object v0, v0, v2

    aget-wide v5, v0, v1

    iput-wide v5, p1, Ljavax/vecmath/Matrix4d;->m30:D

    .line 59
    aget-wide v4, v0, v4

    iput-wide v4, p1, Ljavax/vecmath/Matrix4d;->m31:D

    .line 60
    aget-wide v3, v0, v3

    iput-wide v3, p1, Ljavax/vecmath/Matrix4d;->m32:D

    .line 61
    aget-wide v1, v0, v2

    iput-wide v1, p1, Ljavax/vecmath/Matrix4d;->m33:D

    goto/16 :goto_1

    .line 62
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljavax/vecmath/Matrix4d;->setZero()V

    .line 63
    iget v0, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-lez v0, :cond_5

    .line 64
    iget v5, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-lez v5, :cond_2

    .line 65
    iget-object v6, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v7, v6, v1

    aget-wide v8, v7, v1

    iput-wide v8, p1, Ljavax/vecmath/Matrix4d;->m00:D

    if-le v5, v4, :cond_2

    .line 66
    aget-object v7, v6, v4

    aget-wide v8, v7, v1

    iput-wide v8, p1, Ljavax/vecmath/Matrix4d;->m10:D

    if-le v5, v3, :cond_2

    .line 67
    aget-object v7, v6, v3

    aget-wide v8, v7, v1

    iput-wide v8, p1, Ljavax/vecmath/Matrix4d;->m20:D

    if-le v5, v2, :cond_2

    .line 68
    aget-object v6, v6, v2

    aget-wide v7, v6, v1

    iput-wide v7, p1, Ljavax/vecmath/Matrix4d;->m30:D

    :cond_2
    if-le v0, v4, :cond_5

    if-lez v5, :cond_3

    .line 69
    iget-object v6, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v7, v6, v1

    aget-wide v8, v7, v4

    iput-wide v8, p1, Ljavax/vecmath/Matrix4d;->m01:D

    if-le v5, v4, :cond_3

    .line 70
    aget-object v7, v6, v4

    aget-wide v8, v7, v4

    iput-wide v8, p1, Ljavax/vecmath/Matrix4d;->m11:D

    if-le v5, v3, :cond_3

    .line 71
    aget-object v7, v6, v3

    aget-wide v8, v7, v4

    iput-wide v8, p1, Ljavax/vecmath/Matrix4d;->m21:D

    if-le v5, v2, :cond_3

    .line 72
    aget-object v6, v6, v2

    aget-wide v7, v6, v4

    iput-wide v7, p1, Ljavax/vecmath/Matrix4d;->m31:D

    :cond_3
    if-le v0, v3, :cond_5

    if-lez v5, :cond_4

    .line 73
    iget-object v6, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v7, v6, v1

    aget-wide v8, v7, v3

    iput-wide v8, p1, Ljavax/vecmath/Matrix4d;->m02:D

    if-le v5, v4, :cond_4

    .line 74
    aget-object v7, v6, v4

    aget-wide v8, v7, v3

    iput-wide v8, p1, Ljavax/vecmath/Matrix4d;->m12:D

    if-le v5, v3, :cond_4

    .line 75
    aget-object v7, v6, v3

    aget-wide v8, v7, v3

    iput-wide v8, p1, Ljavax/vecmath/Matrix4d;->m22:D

    if-le v5, v2, :cond_4

    .line 76
    aget-object v6, v6, v2

    aget-wide v7, v6, v3

    iput-wide v7, p1, Ljavax/vecmath/Matrix4d;->m32:D

    :cond_4
    if-le v0, v2, :cond_5

    if-lez v5, :cond_5

    .line 77
    iget-object v0, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v1, v0, v1

    aget-wide v6, v1, v2

    iput-wide v6, p1, Ljavax/vecmath/Matrix4d;->m03:D

    if-le v5, v4, :cond_5

    .line 78
    aget-object v1, v0, v4

    aget-wide v6, v1, v2

    iput-wide v6, p1, Ljavax/vecmath/Matrix4d;->m13:D

    if-le v5, v3, :cond_5

    .line 79
    aget-object v1, v0, v3

    aget-wide v3, v1, v2

    iput-wide v3, p1, Ljavax/vecmath/Matrix4d;->m23:D

    if-le v5, v2, :cond_5

    .line 80
    aget-object v0, v0, v2

    aget-wide v1, v0, v2

    iput-wide v1, p1, Ljavax/vecmath/Matrix4d;->m33:D

    :cond_5
    :goto_1
    return-void
.end method

.method public final get(Ljavax/vecmath/Matrix4f;)V
    .locals 10

    .line 81
    iget v0, p0, Ljavax/vecmath/GMatrix;->nRow:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x4

    if-lt v0, v5, :cond_1

    iget v0, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v0, v5, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v5, v0, v1

    aget-wide v6, v5, v1

    double-to-float v6, v6

    iput v6, p1, Ljavax/vecmath/Matrix4f;->m00:F

    .line 83
    aget-wide v6, v5, v4

    double-to-float v6, v6

    iput v6, p1, Ljavax/vecmath/Matrix4f;->m01:F

    .line 84
    aget-wide v6, v5, v3

    double-to-float v6, v6

    iput v6, p1, Ljavax/vecmath/Matrix4f;->m02:F

    .line 85
    aget-wide v6, v5, v2

    double-to-float v5, v6

    iput v5, p1, Ljavax/vecmath/Matrix4f;->m03:F

    .line 86
    aget-object v5, v0, v4

    aget-wide v6, v5, v1

    double-to-float v6, v6

    iput v6, p1, Ljavax/vecmath/Matrix4f;->m10:F

    .line 87
    aget-wide v6, v5, v4

    double-to-float v6, v6

    iput v6, p1, Ljavax/vecmath/Matrix4f;->m11:F

    .line 88
    aget-wide v6, v5, v3

    double-to-float v6, v6

    iput v6, p1, Ljavax/vecmath/Matrix4f;->m12:F

    .line 89
    aget-wide v6, v5, v2

    double-to-float v5, v6

    iput v5, p1, Ljavax/vecmath/Matrix4f;->m13:F

    .line 90
    aget-object v5, v0, v3

    aget-wide v6, v5, v1

    double-to-float v6, v6

    iput v6, p1, Ljavax/vecmath/Matrix4f;->m20:F

    .line 91
    aget-wide v6, v5, v4

    double-to-float v6, v6

    iput v6, p1, Ljavax/vecmath/Matrix4f;->m21:F

    .line 92
    aget-wide v6, v5, v3

    double-to-float v6, v6

    iput v6, p1, Ljavax/vecmath/Matrix4f;->m22:F

    .line 93
    aget-wide v6, v5, v2

    double-to-float v5, v6

    iput v5, p1, Ljavax/vecmath/Matrix4f;->m23:F

    .line 94
    aget-object v0, v0, v2

    aget-wide v5, v0, v1

    double-to-float v1, v5

    iput v1, p1, Ljavax/vecmath/Matrix4f;->m30:F

    .line 95
    aget-wide v4, v0, v4

    double-to-float v1, v4

    iput v1, p1, Ljavax/vecmath/Matrix4f;->m31:F

    .line 96
    aget-wide v3, v0, v3

    double-to-float v1, v3

    iput v1, p1, Ljavax/vecmath/Matrix4f;->m32:F

    .line 97
    aget-wide v1, v0, v2

    double-to-float v0, v1

    iput v0, p1, Ljavax/vecmath/Matrix4f;->m33:F

    goto/16 :goto_1

    .line 98
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljavax/vecmath/Matrix4f;->setZero()V

    .line 99
    iget v0, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-lez v0, :cond_5

    .line 100
    iget v5, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-lez v5, :cond_2

    .line 101
    iget-object v6, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v7, v6, v1

    aget-wide v8, v7, v1

    double-to-float v7, v8

    iput v7, p1, Ljavax/vecmath/Matrix4f;->m00:F

    if-le v5, v4, :cond_2

    .line 102
    aget-object v7, v6, v4

    aget-wide v8, v7, v1

    double-to-float v7, v8

    iput v7, p1, Ljavax/vecmath/Matrix4f;->m10:F

    if-le v5, v3, :cond_2

    .line 103
    aget-object v7, v6, v3

    aget-wide v8, v7, v1

    double-to-float v7, v8

    iput v7, p1, Ljavax/vecmath/Matrix4f;->m20:F

    if-le v5, v2, :cond_2

    .line 104
    aget-object v6, v6, v2

    aget-wide v7, v6, v1

    double-to-float v6, v7

    iput v6, p1, Ljavax/vecmath/Matrix4f;->m30:F

    :cond_2
    if-le v0, v4, :cond_5

    if-lez v5, :cond_3

    .line 105
    iget-object v6, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v7, v6, v1

    aget-wide v8, v7, v4

    double-to-float v7, v8

    iput v7, p1, Ljavax/vecmath/Matrix4f;->m01:F

    if-le v5, v4, :cond_3

    .line 106
    aget-object v7, v6, v4

    aget-wide v8, v7, v4

    double-to-float v7, v8

    iput v7, p1, Ljavax/vecmath/Matrix4f;->m11:F

    if-le v5, v3, :cond_3

    .line 107
    aget-object v7, v6, v3

    aget-wide v8, v7, v4

    double-to-float v7, v8

    iput v7, p1, Ljavax/vecmath/Matrix4f;->m21:F

    if-le v5, v2, :cond_3

    .line 108
    aget-object v6, v6, v2

    aget-wide v7, v6, v4

    double-to-float v6, v7

    iput v6, p1, Ljavax/vecmath/Matrix4f;->m31:F

    :cond_3
    if-le v0, v3, :cond_5

    if-lez v5, :cond_4

    .line 109
    iget-object v6, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v7, v6, v1

    aget-wide v8, v7, v3

    double-to-float v7, v8

    iput v7, p1, Ljavax/vecmath/Matrix4f;->m02:F

    if-le v5, v4, :cond_4

    .line 110
    aget-object v7, v6, v4

    aget-wide v8, v7, v3

    double-to-float v7, v8

    iput v7, p1, Ljavax/vecmath/Matrix4f;->m12:F

    if-le v5, v3, :cond_4

    .line 111
    aget-object v7, v6, v3

    aget-wide v8, v7, v3

    double-to-float v7, v8

    iput v7, p1, Ljavax/vecmath/Matrix4f;->m22:F

    if-le v5, v2, :cond_4

    .line 112
    aget-object v6, v6, v2

    aget-wide v7, v6, v3

    double-to-float v6, v7

    iput v6, p1, Ljavax/vecmath/Matrix4f;->m32:F

    :cond_4
    if-le v0, v2, :cond_5

    if-lez v5, :cond_5

    .line 113
    iget-object v0, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v1, v0, v1

    aget-wide v6, v1, v2

    double-to-float v1, v6

    iput v1, p1, Ljavax/vecmath/Matrix4f;->m03:F

    if-le v5, v4, :cond_5

    .line 114
    aget-object v1, v0, v4

    aget-wide v6, v1, v2

    double-to-float v1, v6

    iput v1, p1, Ljavax/vecmath/Matrix4f;->m13:F

    if-le v5, v3, :cond_5

    .line 115
    aget-object v1, v0, v3

    aget-wide v3, v1, v2

    double-to-float v1, v3

    iput v1, p1, Ljavax/vecmath/Matrix4f;->m23:F

    if-le v5, v2, :cond_5

    .line 116
    aget-object v0, v0, v2

    aget-wide v1, v0, v2

    double-to-float v0, v1

    iput v0, p1, Ljavax/vecmath/Matrix4f;->m33:F

    :cond_5
    :goto_1
    return-void
.end method

.method public final getColumn(ILjavax/vecmath/GVector;)V
    .locals 5

    .line 3
    invoke-virtual {p2}, Ljavax/vecmath/GVector;->getSize()I

    move-result v0

    iget v1, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v0, v1, :cond_0

    .line 4
    invoke-virtual {p2, v1}, Ljavax/vecmath/GVector;->setSize(I)V

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget v1, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v0, v1, :cond_1

    .line 6
    iget-object v1, p2, Ljavax/vecmath/GVector;->values:[D

    iget-object v2, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v2, v2, v0

    aget-wide v3, v2, p1

    aput-wide v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final getColumn(I[D)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v1, v1, v0

    aget-wide v2, v1, p1

    aput-wide v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getElement(II)D
    .locals 2

    iget-object v0, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object p1, v0, p1

    aget-wide v0, p1, p2

    return-wide v0
.end method

.method public final getNumCol()I
    .locals 1

    iget v0, p0, Ljavax/vecmath/GMatrix;->nCol:I

    return v0
.end method

.method public final getNumRow()I
    .locals 1

    iget v0, p0, Ljavax/vecmath/GMatrix;->nRow:I

    return v0
.end method

.method public final getRow(ILjavax/vecmath/GVector;)V
    .locals 5

    .line 3
    invoke-virtual {p2}, Ljavax/vecmath/GVector;->getSize()I

    move-result v0

    iget v1, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v0, v1, :cond_0

    .line 4
    invoke-virtual {p2, v1}, Ljavax/vecmath/GVector;->setSize(I)V

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget v1, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v0, v1, :cond_1

    .line 6
    iget-object v1, p2, Ljavax/vecmath/GVector;->values:[D

    iget-object v2, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v2, v2, p1

    aget-wide v3, v2, v0

    aput-wide v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final getRow(I[D)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v1, v1, p1

    aget-wide v2, v1, v0

    aput-wide v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public hashCode()I
    .locals 10

    iget v0, p0, Ljavax/vecmath/GMatrix;->nRow:I

    int-to-long v0, v0

    const-wide/16 v2, 0x1f

    add-long/2addr v0, v2

    mul-long/2addr v0, v2

    iget v4, p0, Ljavax/vecmath/GMatrix;->nCol:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    iget v6, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v5, v6, :cond_1

    move v6, v4

    :goto_1
    iget v7, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v6, v7, :cond_0

    mul-long/2addr v0, v2

    iget-object v7, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v7, v7, v5

    aget-wide v8, v7, v6

    invoke-static {v8, v9}, Ljavax/vecmath/VecMathUtil;->doubleToLongBits(D)J

    move-result-wide v7

    add-long/2addr v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/16 v2, 0x20

    shr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final identityMinus()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v1, v2, :cond_1

    move v2, v0

    :goto_1
    iget v3, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v3, v3, v1

    aget-wide v4, v3, v2

    neg-double v4, v4

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v2, v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    if-ge v0, v2, :cond_3

    iget-object v1, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v1, v1, v0

    aget-wide v3, v1, v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v5

    aput-wide v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final invert()V
    .locals 0

    .line 1
    invoke-virtual {p0, p0}, Ljavax/vecmath/GMatrix;->invertGeneral(Ljavax/vecmath/GMatrix;)V

    return-void
.end method

.method public final invert(Ljavax/vecmath/GMatrix;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Ljavax/vecmath/GMatrix;->invertGeneral(Ljavax/vecmath/GMatrix;)V

    return-void
.end method

.method public final invertGeneral(Ljavax/vecmath/GMatrix;)V
    .locals 12

    iget v0, p1, Ljavax/vecmath/GMatrix;->nRow:I

    iget v1, p1, Ljavax/vecmath/GMatrix;->nCol:I

    mul-int v2, v0, v1

    new-array v3, v2, [D

    new-array v4, v2, [D

    new-array v5, v0, [I

    const/4 v6, 0x1

    new-array v6, v6, [I

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v7, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v1, v7, :cond_1

    move v7, v0

    :goto_1
    iget v8, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v7, v8, :cond_0

    mul-int/2addr v8, v1

    add-int/2addr v8, v7

    iget-object v9, p1, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v9, v9, v1

    aget-wide v10, v9, v7

    aput-wide v10, v3, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v1, p1, Ljavax/vecmath/GMatrix;->nRow:I

    invoke-static {v1, v3, v5, v6}, Ljavax/vecmath/GMatrix;->luDecomposition(I[D[I[I)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v0

    :goto_2
    if-ge v1, v2, :cond_2

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_3
    iget v2, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v1, v2, :cond_3

    mul-int/2addr v2, v1

    add-int/2addr v2, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iget p1, p1, Ljavax/vecmath/GMatrix;->nRow:I

    invoke-static {p1, v3, v5, v4}, Ljavax/vecmath/GMatrix;->luBacksubstitution(I[D[I[D)V

    move p1, v0

    :goto_4
    iget v1, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge p1, v1, :cond_5

    move v1, v0

    :goto_5
    iget v2, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v1, v2, :cond_4

    iget-object v3, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v3, v3, p1

    mul-int/2addr v2, p1

    add-int/2addr v2, v1

    aget-wide v5, v4, v2

    aput-wide v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_5
    return-void

    :cond_6
    new-instance p1, Ljavax/vecmath/SingularMatrixException;

    const-string v0, "GMatrix21"

    invoke-static {v0}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/vecmath/SingularMatrixException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    const-string v0, "GMatrix22"

    invoke-static {v0}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final mul(Ljavax/vecmath/GMatrix;)V
    .locals 13

    .line 1
    iget v0, p0, Ljavax/vecmath/GMatrix;->nCol:I

    iget v1, p1, Ljavax/vecmath/GMatrix;->nRow:I

    if-ne v0, v1, :cond_3

    iget v1, p1, Ljavax/vecmath/GMatrix;->nCol:I

    if-ne v0, v1, :cond_3

    .line 2
    iget v1, p0, Ljavax/vecmath/GMatrix;->nRow:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v0, v2, v3

    const/4 v0, 0x0

    aput v1, v2, v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    move v2, v0

    .line 3
    :goto_0
    iget v3, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v2, v3, :cond_2

    move v3, v0

    .line 4
    :goto_1
    iget v4, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v3, v4, :cond_1

    .line 5
    aget-object v4, v1, v2

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v3

    move v4, v0

    .line 6
    :goto_2
    iget v5, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v4, v5, :cond_0

    .line 7
    aget-object v5, v1, v2

    aget-wide v6, v5, v3

    iget-object v8, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v8, v8, v2

    aget-wide v9, v8, v4

    iget-object v8, p1, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v8, v8, v4

    aget-wide v11, v8, v3

    mul-double/2addr v9, v11

    add-double/2addr v6, v9

    aput-wide v6, v5, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    iput-object v1, p0, Ljavax/vecmath/GMatrix;->values:[[D

    return-void

    .line 9
    :cond_3
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    const-string v0, "GMatrix0"

    .line 10
    invoke-static {v0}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final mul(Ljavax/vecmath/GMatrix;Ljavax/vecmath/GMatrix;)V
    .locals 13

    .line 11
    iget v0, p1, Ljavax/vecmath/GMatrix;->nCol:I

    iget v1, p2, Ljavax/vecmath/GMatrix;->nRow:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Ljavax/vecmath/GMatrix;->nRow:I

    iget v1, p1, Ljavax/vecmath/GMatrix;->nRow:I

    if-ne v0, v1, :cond_3

    iget v1, p0, Ljavax/vecmath/GMatrix;->nCol:I

    iget v2, p2, Ljavax/vecmath/GMatrix;->nCol:I

    if-ne v1, v2, :cond_3

    const/4 v2, 0x2

    .line 12
    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v2, v1

    .line 13
    :goto_0
    iget v3, p1, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v2, v3, :cond_2

    move v3, v1

    .line 14
    :goto_1
    iget v4, p2, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v3, v4, :cond_1

    .line 15
    aget-object v4, v0, v2

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v3

    move v4, v1

    .line 16
    :goto_2
    iget v5, p1, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v4, v5, :cond_0

    .line 17
    aget-object v5, v0, v2

    aget-wide v6, v5, v3

    iget-object v8, p1, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v8, v8, v2

    aget-wide v9, v8, v4

    iget-object v8, p2, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v8, v8, v4

    aget-wide v11, v8, v3

    mul-double/2addr v9, v11

    add-double/2addr v6, v9

    aput-wide v6, v5, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18
    :cond_2
    iput-object v0, p0, Ljavax/vecmath/GMatrix;->values:[[D

    return-void

    .line 19
    :cond_3
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    const-string p2, "GMatrix1"

    .line 20
    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final mul(Ljavax/vecmath/GVector;Ljavax/vecmath/GVector;)V
    .locals 9

    .line 21
    iget v0, p0, Ljavax/vecmath/GMatrix;->nRow:I

    invoke-virtual {p1}, Ljavax/vecmath/GVector;->getSize()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 22
    iget v0, p0, Ljavax/vecmath/GMatrix;->nCol:I

    invoke-virtual {p2}, Ljavax/vecmath/GVector;->getSize()I

    move-result v1

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    move v1, v0

    .line 23
    :goto_0
    invoke-virtual {p1}, Ljavax/vecmath/GVector;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    move v2, v0

    .line 24
    :goto_1
    invoke-virtual {p2}, Ljavax/vecmath/GVector;->getSize()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 25
    iget-object v3, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v3, v3, v1

    iget-object v4, p1, Ljavax/vecmath/GVector;->values:[D

    aget-wide v5, v4, v1

    iget-object v4, p2, Ljavax/vecmath/GVector;->values:[D

    aget-wide v7, v4, v2

    mul-double/2addr v5, v7

    aput-wide v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 26
    :cond_2
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    const-string p2, "GMatrix3"

    .line 27
    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_3
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    const-string p2, "GMatrix2"

    .line 29
    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final mulTransposeBoth(Ljavax/vecmath/GMatrix;Ljavax/vecmath/GMatrix;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v1, Ljavax/vecmath/GMatrix;->nRow:I

    iget v4, v2, Ljavax/vecmath/GMatrix;->nCol:I

    if-ne v3, v4, :cond_8

    iget v3, v0, Ljavax/vecmath/GMatrix;->nRow:I

    iget v4, v1, Ljavax/vecmath/GMatrix;->nCol:I

    if-ne v3, v4, :cond_8

    iget v4, v0, Ljavax/vecmath/GMatrix;->nCol:I

    iget v5, v2, Ljavax/vecmath/GMatrix;->nRow:I

    if-ne v4, v5, :cond_8

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    if-eq v1, v0, :cond_3

    if-ne v2, v0, :cond_0

    goto :goto_3

    :cond_0
    move v3, v7

    :goto_0
    iget v4, v0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v3, v4, :cond_7

    move v4, v7

    :goto_1
    iget v8, v0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v4, v8, :cond_2

    iget-object v8, v0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v8, v8, v3

    aput-wide v5, v8, v4

    move v8, v7

    :goto_2
    iget v9, v1, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v8, v9, :cond_1

    iget-object v9, v0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v9, v9, v3

    aget-wide v10, v9, v4

    iget-object v12, v1, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v12, v12, v8

    aget-wide v13, v12, v3

    iget-object v12, v2, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v12, v12, v4

    aget-wide v15, v12, v8

    mul-double/2addr v13, v15

    add-double/2addr v10, v13

    aput-wide v10, v9, v4

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x1

    aput v4, v8, v9

    aput v3, v8, v7

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    move v4, v7

    :goto_4
    iget v8, v0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v4, v8, :cond_6

    move v8, v7

    :goto_5
    iget v9, v0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v8, v9, :cond_5

    aget-object v9, v3, v4

    aput-wide v5, v9, v8

    move v9, v7

    :goto_6
    iget v10, v1, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v9, v10, :cond_4

    aget-object v10, v3, v4

    aget-wide v11, v10, v8

    iget-object v13, v1, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v13, v13, v9

    aget-wide v14, v13, v4

    iget-object v13, v2, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v13, v13, v8

    aget-wide v16, v13, v9

    mul-double v14, v14, v16

    add-double/2addr v11, v14

    aput-wide v11, v10, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    iput-object v3, v0, Ljavax/vecmath/GMatrix;->values:[[D

    :cond_7
    return-void

    :cond_8
    new-instance v1, Ljavax/vecmath/MismatchedSizeException;

    const-string v2, "GMatrix14"

    invoke-static {v2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final mulTransposeLeft(Ljavax/vecmath/GMatrix;Ljavax/vecmath/GMatrix;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v1, Ljavax/vecmath/GMatrix;->nRow:I

    iget v4, v2, Ljavax/vecmath/GMatrix;->nRow:I

    if-ne v3, v4, :cond_8

    iget v3, v0, Ljavax/vecmath/GMatrix;->nCol:I

    iget v4, v2, Ljavax/vecmath/GMatrix;->nCol:I

    if-ne v3, v4, :cond_8

    iget v4, v0, Ljavax/vecmath/GMatrix;->nRow:I

    iget v5, v1, Ljavax/vecmath/GMatrix;->nCol:I

    if-ne v4, v5, :cond_8

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    if-eq v1, v0, :cond_3

    if-ne v2, v0, :cond_0

    goto :goto_3

    :cond_0
    move v3, v7

    :goto_0
    iget v4, v0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v3, v4, :cond_7

    move v4, v7

    :goto_1
    iget v8, v0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v4, v8, :cond_2

    iget-object v8, v0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v8, v8, v3

    aput-wide v5, v8, v4

    move v8, v7

    :goto_2
    iget v9, v1, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v8, v9, :cond_1

    iget-object v9, v0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v9, v9, v3

    aget-wide v10, v9, v4

    iget-object v12, v1, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v12, v12, v8

    aget-wide v13, v12, v3

    iget-object v12, v2, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v12, v12, v8

    aget-wide v15, v12, v4

    mul-double/2addr v13, v15

    add-double/2addr v10, v13

    aput-wide v10, v9, v4

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x1

    aput v3, v8, v9

    aput v4, v8, v7

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    move v4, v7

    :goto_4
    iget v8, v0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v4, v8, :cond_6

    move v8, v7

    :goto_5
    iget v9, v0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v8, v9, :cond_5

    aget-object v9, v3, v4

    aput-wide v5, v9, v8

    move v9, v7

    :goto_6
    iget v10, v1, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v9, v10, :cond_4

    aget-object v10, v3, v4

    aget-wide v11, v10, v8

    iget-object v13, v1, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v13, v13, v9

    aget-wide v14, v13, v4

    iget-object v13, v2, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v13, v13, v9

    aget-wide v16, v13, v8

    mul-double v14, v14, v16

    add-double/2addr v11, v14

    aput-wide v11, v10, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    iput-object v3, v0, Ljavax/vecmath/GMatrix;->values:[[D

    :cond_7
    return-void

    :cond_8
    new-instance v1, Ljavax/vecmath/MismatchedSizeException;

    const-string v2, "GMatrix16"

    invoke-static {v2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final mulTransposeRight(Ljavax/vecmath/GMatrix;Ljavax/vecmath/GMatrix;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v1, Ljavax/vecmath/GMatrix;->nCol:I

    iget v4, v2, Ljavax/vecmath/GMatrix;->nCol:I

    if-ne v3, v4, :cond_8

    iget v3, v0, Ljavax/vecmath/GMatrix;->nCol:I

    iget v4, v2, Ljavax/vecmath/GMatrix;->nRow:I

    if-ne v3, v4, :cond_8

    iget v4, v0, Ljavax/vecmath/GMatrix;->nRow:I

    iget v5, v1, Ljavax/vecmath/GMatrix;->nRow:I

    if-ne v4, v5, :cond_8

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    if-eq v1, v0, :cond_3

    if-ne v2, v0, :cond_0

    goto :goto_3

    :cond_0
    move v3, v7

    :goto_0
    iget v4, v0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v3, v4, :cond_7

    move v4, v7

    :goto_1
    iget v8, v0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v4, v8, :cond_2

    iget-object v8, v0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v8, v8, v3

    aput-wide v5, v8, v4

    move v8, v7

    :goto_2
    iget v9, v1, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v8, v9, :cond_1

    iget-object v9, v0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v9, v9, v3

    aget-wide v10, v9, v4

    iget-object v12, v1, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v12, v12, v3

    aget-wide v13, v12, v8

    iget-object v12, v2, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v12, v12, v4

    aget-wide v15, v12, v8

    mul-double/2addr v13, v15

    add-double/2addr v10, v13

    aput-wide v10, v9, v4

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x1

    aput v3, v8, v9

    aput v4, v8, v7

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    move v4, v7

    :goto_4
    iget v8, v0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v4, v8, :cond_6

    move v8, v7

    :goto_5
    iget v9, v0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v8, v9, :cond_5

    aget-object v9, v3, v4

    aput-wide v5, v9, v8

    move v9, v7

    :goto_6
    iget v10, v1, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v9, v10, :cond_4

    aget-object v10, v3, v4

    aget-wide v11, v10, v8

    iget-object v13, v1, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v13, v13, v4

    aget-wide v14, v13, v9

    iget-object v13, v2, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v13, v13, v8

    aget-wide v16, v13, v9

    mul-double v14, v14, v16

    add-double/2addr v11, v14

    aput-wide v11, v10, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    iput-object v3, v0, Ljavax/vecmath/GMatrix;->values:[[D

    :cond_7
    return-void

    :cond_8
    new-instance v1, Ljavax/vecmath/MismatchedSizeException;

    const-string v2, "GMatrix15"

    invoke-static {v2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final negate()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget v2, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v1, v2, :cond_1

    move v2, v0

    .line 2
    :goto_1
    iget v3, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v2, v3, :cond_0

    .line 3
    iget-object v3, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v3, v3, v1

    aget-wide v4, v3, v2

    neg-double v4, v4

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final negate(Ljavax/vecmath/GMatrix;)V
    .locals 7

    .line 4
    iget v0, p0, Ljavax/vecmath/GMatrix;->nRow:I

    iget v1, p1, Ljavax/vecmath/GMatrix;->nRow:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Ljavax/vecmath/GMatrix;->nCol:I

    iget v1, p1, Ljavax/vecmath/GMatrix;->nCol:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    move v1, v0

    .line 5
    :goto_0
    iget v2, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v1, v2, :cond_1

    move v2, v0

    .line 6
    :goto_1
    iget v3, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v2, v3, :cond_0

    .line 7
    iget-object v3, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v3, v3, v1

    iget-object v4, p1, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v4, v4, v1

    aget-wide v5, v4, v2

    neg-double v4, v5

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 8
    :cond_2
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    const-string v0, "GMatrix13"

    .line 9
    invoke-static {v0}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final set(Ljavax/vecmath/GMatrix;)V
    .locals 7

    .line 82
    iget v0, p0, Ljavax/vecmath/GMatrix;->nRow:I

    iget v1, p1, Ljavax/vecmath/GMatrix;->nRow:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    iget v0, p0, Ljavax/vecmath/GMatrix;->nCol:I

    iget v3, p1, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v0, v3, :cond_1

    .line 83
    :cond_0
    iput v1, p0, Ljavax/vecmath/GMatrix;->nRow:I

    .line 84
    iget v0, p1, Ljavax/vecmath/GMatrix;->nCol:I

    iput v0, p0, Ljavax/vecmath/GMatrix;->nCol:I

    const/4 v3, 0x2

    .line 85
    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v0, v3, v4

    aput v1, v3, v2

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Ljavax/vecmath/GMatrix;->values:[[D

    :cond_1
    move v0, v2

    .line 86
    :goto_0
    iget v1, p0, Ljavax/vecmath/GMatrix;->nRow:I

    iget v3, p1, Ljavax/vecmath/GMatrix;->nRow:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_3

    move v1, v2

    .line 87
    :goto_1
    iget v3, p0, Ljavax/vecmath/GMatrix;->nCol:I

    iget v4, p1, Ljavax/vecmath/GMatrix;->nCol:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 88
    iget-object v3, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v3, v3, v0

    iget-object v4, p1, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v4, v4, v0

    aget-wide v5, v4, v1

    aput-wide v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_3
    iget v0, p1, Ljavax/vecmath/GMatrix;->nRow:I

    :goto_2
    iget v1, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v0, v1, :cond_5

    .line 90
    iget v1, p1, Ljavax/vecmath/GMatrix;->nCol:I

    :goto_3
    iget v2, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v1, v2, :cond_4

    .line 91
    iget-object v2, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v2, v2, v0

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final set(Ljavax/vecmath/Matrix3d;)V
    .locals 8

    .line 20
    iget v0, p0, Ljavax/vecmath/GMatrix;->nRow:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-lt v0, v4, :cond_0

    iget v0, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v0, v4, :cond_1

    .line 21
    :cond_0
    new-array v0, v2, [I

    aput v4, v0, v3

    aput v4, v0, v1

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Ljavax/vecmath/GMatrix;->values:[[D

    .line 22
    iput v4, p0, Ljavax/vecmath/GMatrix;->nRow:I

    .line 23
    iput v4, p0, Ljavax/vecmath/GMatrix;->nCol:I

    .line 24
    :cond_1
    iget-object v0, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v5, v0, v1

    iget-wide v6, p1, Ljavax/vecmath/Matrix3d;->m00:D

    aput-wide v6, v5, v1

    .line 25
    iget-wide v6, p1, Ljavax/vecmath/Matrix3d;->m01:D

    aput-wide v6, v5, v3

    .line 26
    iget-wide v6, p1, Ljavax/vecmath/Matrix3d;->m02:D

    aput-wide v6, v5, v2

    .line 27
    aget-object v5, v0, v3

    iget-wide v6, p1, Ljavax/vecmath/Matrix3d;->m10:D

    aput-wide v6, v5, v1

    .line 28
    iget-wide v6, p1, Ljavax/vecmath/Matrix3d;->m11:D

    aput-wide v6, v5, v3

    .line 29
    iget-wide v6, p1, Ljavax/vecmath/Matrix3d;->m12:D

    aput-wide v6, v5, v2

    .line 30
    aget-object v0, v0, v2

    iget-wide v5, p1, Ljavax/vecmath/Matrix3d;->m20:D

    aput-wide v5, v0, v1

    .line 31
    iget-wide v5, p1, Ljavax/vecmath/Matrix3d;->m21:D

    aput-wide v5, v0, v3

    .line 32
    iget-wide v5, p1, Ljavax/vecmath/Matrix3d;->m22:D

    aput-wide v5, v0, v2

    move p1, v4

    .line 33
    :goto_0
    iget v0, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge p1, v0, :cond_3

    move v0, v4

    .line 34
    :goto_1
    iget v1, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v0, v1, :cond_2

    .line 35
    iget-object v1, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v1, v1, p1

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final set(Ljavax/vecmath/Matrix3f;)V
    .locals 8

    .line 4
    iget v0, p0, Ljavax/vecmath/GMatrix;->nCol:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-lt v0, v4, :cond_0

    iget v0, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v0, v4, :cond_1

    .line 5
    :cond_0
    iput v4, p0, Ljavax/vecmath/GMatrix;->nCol:I

    .line 6
    iput v4, p0, Ljavax/vecmath/GMatrix;->nRow:I

    .line 7
    new-array v0, v2, [I

    aput v4, v0, v3

    aput v4, v0, v1

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Ljavax/vecmath/GMatrix;->values:[[D

    .line 8
    :cond_1
    iget-object v0, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v5, v0, v1

    iget v6, p1, Ljavax/vecmath/Matrix3f;->m00:F

    float-to-double v6, v6

    aput-wide v6, v5, v1

    .line 9
    iget v6, p1, Ljavax/vecmath/Matrix3f;->m01:F

    float-to-double v6, v6

    aput-wide v6, v5, v3

    .line 10
    iget v6, p1, Ljavax/vecmath/Matrix3f;->m02:F

    float-to-double v6, v6

    aput-wide v6, v5, v2

    .line 11
    aget-object v5, v0, v3

    iget v6, p1, Ljavax/vecmath/Matrix3f;->m10:F

    float-to-double v6, v6

    aput-wide v6, v5, v1

    .line 12
    iget v6, p1, Ljavax/vecmath/Matrix3f;->m11:F

    float-to-double v6, v6

    aput-wide v6, v5, v3

    .line 13
    iget v6, p1, Ljavax/vecmath/Matrix3f;->m12:F

    float-to-double v6, v6

    aput-wide v6, v5, v2

    .line 14
    aget-object v0, v0, v2

    iget v5, p1, Ljavax/vecmath/Matrix3f;->m20:F

    float-to-double v5, v5

    aput-wide v5, v0, v1

    .line 15
    iget v1, p1, Ljavax/vecmath/Matrix3f;->m21:F

    float-to-double v5, v1

    aput-wide v5, v0, v3

    .line 16
    iget p1, p1, Ljavax/vecmath/Matrix3f;->m22:F

    float-to-double v5, p1

    aput-wide v5, v0, v2

    move p1, v4

    .line 17
    :goto_0
    iget v0, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge p1, v0, :cond_3

    move v0, v4

    .line 18
    :goto_1
    iget v1, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v0, v1, :cond_2

    .line 19
    iget-object v1, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v1, v1, p1

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final set(Ljavax/vecmath/Matrix4d;)V
    .locals 9

    .line 59
    iget v0, p0, Ljavax/vecmath/GMatrix;->nRow:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-lt v0, v4, :cond_0

    iget v0, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v0, v4, :cond_1

    .line 60
    :cond_0
    new-array v0, v2, [I

    aput v4, v0, v3

    aput v4, v0, v1

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Ljavax/vecmath/GMatrix;->values:[[D

    .line 61
    iput v4, p0, Ljavax/vecmath/GMatrix;->nRow:I

    .line 62
    iput v4, p0, Ljavax/vecmath/GMatrix;->nCol:I

    .line 63
    :cond_1
    iget-object v0, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v5, v0, v1

    iget-wide v6, p1, Ljavax/vecmath/Matrix4d;->m00:D

    aput-wide v6, v5, v1

    .line 64
    iget-wide v6, p1, Ljavax/vecmath/Matrix4d;->m01:D

    aput-wide v6, v5, v3

    .line 65
    iget-wide v6, p1, Ljavax/vecmath/Matrix4d;->m02:D

    aput-wide v6, v5, v2

    .line 66
    iget-wide v6, p1, Ljavax/vecmath/Matrix4d;->m03:D

    const/4 v8, 0x3

    aput-wide v6, v5, v8

    .line 67
    aget-object v5, v0, v3

    iget-wide v6, p1, Ljavax/vecmath/Matrix4d;->m10:D

    aput-wide v6, v5, v1

    .line 68
    iget-wide v6, p1, Ljavax/vecmath/Matrix4d;->m11:D

    aput-wide v6, v5, v3

    .line 69
    iget-wide v6, p1, Ljavax/vecmath/Matrix4d;->m12:D

    aput-wide v6, v5, v2

    .line 70
    iget-wide v6, p1, Ljavax/vecmath/Matrix4d;->m13:D

    aput-wide v6, v5, v8

    .line 71
    aget-object v5, v0, v2

    iget-wide v6, p1, Ljavax/vecmath/Matrix4d;->m20:D

    aput-wide v6, v5, v1

    .line 72
    iget-wide v6, p1, Ljavax/vecmath/Matrix4d;->m21:D

    aput-wide v6, v5, v3

    .line 73
    iget-wide v6, p1, Ljavax/vecmath/Matrix4d;->m22:D

    aput-wide v6, v5, v2

    .line 74
    iget-wide v6, p1, Ljavax/vecmath/Matrix4d;->m23:D

    aput-wide v6, v5, v8

    .line 75
    aget-object v0, v0, v8

    iget-wide v5, p1, Ljavax/vecmath/Matrix4d;->m30:D

    aput-wide v5, v0, v1

    .line 76
    iget-wide v5, p1, Ljavax/vecmath/Matrix4d;->m31:D

    aput-wide v5, v0, v3

    .line 77
    iget-wide v5, p1, Ljavax/vecmath/Matrix4d;->m32:D

    aput-wide v5, v0, v2

    .line 78
    iget-wide v1, p1, Ljavax/vecmath/Matrix4d;->m33:D

    aput-wide v1, v0, v8

    move p1, v4

    .line 79
    :goto_0
    iget v0, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge p1, v0, :cond_3

    move v0, v4

    .line 80
    :goto_1
    iget v1, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v0, v1, :cond_2

    .line 81
    iget-object v1, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v1, v1, p1

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final set(Ljavax/vecmath/Matrix4f;)V
    .locals 9

    .line 36
    iget v0, p0, Ljavax/vecmath/GMatrix;->nRow:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-lt v0, v4, :cond_0

    iget v0, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v0, v4, :cond_1

    .line 37
    :cond_0
    new-array v0, v2, [I

    aput v4, v0, v3

    aput v4, v0, v1

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Ljavax/vecmath/GMatrix;->values:[[D

    .line 38
    iput v4, p0, Ljavax/vecmath/GMatrix;->nRow:I

    .line 39
    iput v4, p0, Ljavax/vecmath/GMatrix;->nCol:I

    .line 40
    :cond_1
    iget-object v0, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v5, v0, v1

    iget v6, p1, Ljavax/vecmath/Matrix4f;->m00:F

    float-to-double v6, v6

    aput-wide v6, v5, v1

    .line 41
    iget v6, p1, Ljavax/vecmath/Matrix4f;->m01:F

    float-to-double v6, v6

    aput-wide v6, v5, v3

    .line 42
    iget v6, p1, Ljavax/vecmath/Matrix4f;->m02:F

    float-to-double v6, v6

    aput-wide v6, v5, v2

    .line 43
    iget v6, p1, Ljavax/vecmath/Matrix4f;->m03:F

    float-to-double v6, v6

    const/4 v8, 0x3

    aput-wide v6, v5, v8

    .line 44
    aget-object v5, v0, v3

    iget v6, p1, Ljavax/vecmath/Matrix4f;->m10:F

    float-to-double v6, v6

    aput-wide v6, v5, v1

    .line 45
    iget v6, p1, Ljavax/vecmath/Matrix4f;->m11:F

    float-to-double v6, v6

    aput-wide v6, v5, v3

    .line 46
    iget v6, p1, Ljavax/vecmath/Matrix4f;->m12:F

    float-to-double v6, v6

    aput-wide v6, v5, v2

    .line 47
    iget v6, p1, Ljavax/vecmath/Matrix4f;->m13:F

    float-to-double v6, v6

    aput-wide v6, v5, v8

    .line 48
    aget-object v5, v0, v2

    iget v6, p1, Ljavax/vecmath/Matrix4f;->m20:F

    float-to-double v6, v6

    aput-wide v6, v5, v1

    .line 49
    iget v6, p1, Ljavax/vecmath/Matrix4f;->m21:F

    float-to-double v6, v6

    aput-wide v6, v5, v3

    .line 50
    iget v6, p1, Ljavax/vecmath/Matrix4f;->m22:F

    float-to-double v6, v6

    aput-wide v6, v5, v2

    .line 51
    iget v6, p1, Ljavax/vecmath/Matrix4f;->m23:F

    float-to-double v6, v6

    aput-wide v6, v5, v8

    .line 52
    aget-object v0, v0, v8

    iget v5, p1, Ljavax/vecmath/Matrix4f;->m30:F

    float-to-double v5, v5

    aput-wide v5, v0, v1

    .line 53
    iget v1, p1, Ljavax/vecmath/Matrix4f;->m31:F

    float-to-double v5, v1

    aput-wide v5, v0, v3

    .line 54
    iget v1, p1, Ljavax/vecmath/Matrix4f;->m32:F

    float-to-double v5, v1

    aput-wide v5, v0, v2

    .line 55
    iget p1, p1, Ljavax/vecmath/Matrix4f;->m33:F

    float-to-double v1, p1

    aput-wide v1, v0, v8

    move p1, v4

    .line 56
    :goto_0
    iget v0, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge p1, v0, :cond_3

    move v0, v4

    .line 57
    :goto_1
    iget v1, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v0, v1, :cond_2

    .line 58
    iget-object v1, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v1, v1, p1

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final set([D)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget v2, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v1, v2, :cond_1

    move v2, v0

    .line 2
    :goto_1
    iget v3, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v2, v3, :cond_0

    .line 3
    iget-object v4, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v4, v4, v1

    mul-int/2addr v3, v1

    add-int/2addr v3, v2

    aget-wide v5, p1, v3

    aput-wide v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setColumn(ILjavax/vecmath/GVector;)V
    .locals 5

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget v1, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v0, v1, :cond_0

    .line 4
    iget-object v1, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v1, v1, v0

    iget-object v2, p2, Ljavax/vecmath/GVector;->values:[D

    aget-wide v3, v2, v0

    aput-wide v3, v1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setColumn(I[D)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v1, v1, v0

    aget-wide v2, p2, v0

    aput-wide v2, v1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setElement(IID)V
    .locals 1

    iget-object v0, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object p1, v0, p1

    aput-wide p3, p1, p2

    return-void
.end method

.method public final setIdentity()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v1, v2, :cond_1

    move v2, v0

    :goto_1
    iget v3, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v3, v3, v1

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v2, v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    if-ge v0, v2, :cond_3

    iget-object v1, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v1, v1, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    aput-wide v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final setRow(ILjavax/vecmath/GVector;)V
    .locals 5

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget v1, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v0, v1, :cond_0

    .line 4
    iget-object v1, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v1, v1, p1

    iget-object v2, p2, Ljavax/vecmath/GVector;->values:[D

    aget-wide v3, v2, v0

    aput-wide v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setRow(I[D)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v1, v1, p1

    aget-wide v2, p2, v0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setScale(D)V
    .locals 7

    iget v0, p0, Ljavax/vecmath/GMatrix;->nRow:I

    iget v1, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    iget v3, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v2, v3, :cond_2

    move v3, v1

    :goto_2
    iget v4, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v4, v4, v2

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_3
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v2, v2, v1

    aput-wide p1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public final setSize(II)V
    .locals 10

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x0

    aput p1, v0, v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iget v2, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v2, p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    iget v3, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v3, p2, :cond_1

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    move v4, v1

    :goto_2
    if-ge v4, v2, :cond_3

    move v5, v1

    :goto_3
    if-ge v5, v3, :cond_2

    aget-object v6, v0, v4

    iget-object v7, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v7, v7, v4

    aget-wide v8, v7, v5

    aput-wide v8, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    iput p1, p0, Ljavax/vecmath/GMatrix;->nRow:I

    iput p2, p0, Ljavax/vecmath/GMatrix;->nCol:I

    iput-object v0, p0, Ljavax/vecmath/GMatrix;->values:[[D

    return-void
.end method

.method public final setZero()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v1, v2, :cond_1

    move v2, v0

    :goto_1
    iget v3, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v3, v3, v1

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final sub(Ljavax/vecmath/GMatrix;)V
    .locals 9

    .line 1
    iget v0, p0, Ljavax/vecmath/GMatrix;->nRow:I

    iget v1, p1, Ljavax/vecmath/GMatrix;->nRow:I

    if-ne v0, v1, :cond_3

    .line 2
    iget v0, p0, Ljavax/vecmath/GMatrix;->nCol:I

    iget v1, p1, Ljavax/vecmath/GMatrix;->nCol:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    move v1, v0

    .line 3
    :goto_0
    iget v2, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v1, v2, :cond_1

    move v2, v0

    .line 4
    :goto_1
    iget v3, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v2, v3, :cond_0

    .line 5
    iget-object v3, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v3, v3, v1

    aget-wide v4, v3, v2

    iget-object v6, p1, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v6, v6, v1

    aget-wide v7, v6, v2

    sub-double/2addr v4, v7

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 6
    :cond_2
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    const-string v0, "GMatrix28"

    .line 7
    invoke-static {v0}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_3
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    const-string v0, "GMatrix9"

    .line 9
    invoke-static {v0}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final sub(Ljavax/vecmath/GMatrix;Ljavax/vecmath/GMatrix;)V
    .locals 9

    .line 10
    iget v0, p2, Ljavax/vecmath/GMatrix;->nRow:I

    iget v1, p1, Ljavax/vecmath/GMatrix;->nRow:I

    if-ne v0, v1, :cond_4

    .line 11
    iget v0, p2, Ljavax/vecmath/GMatrix;->nCol:I

    iget v2, p1, Ljavax/vecmath/GMatrix;->nCol:I

    if-ne v0, v2, :cond_3

    .line 12
    iget v0, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    move v1, v0

    .line 13
    :goto_0
    iget v2, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v1, v2, :cond_1

    move v2, v0

    .line 14
    :goto_1
    iget v3, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v2, v3, :cond_0

    .line 15
    iget-object v3, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v3, v3, v1

    iget-object v4, p1, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v4, v4, v1

    aget-wide v5, v4, v2

    iget-object v4, p2, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v4, v4, v1

    aget-wide v7, v4, v2

    sub-double/2addr v5, v7

    aput-wide v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 16
    :cond_2
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    const-string p2, "GMatrix12"

    .line 17
    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_3
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    const-string p2, "GMatrix11"

    .line 19
    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_4
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    const-string p2, "GMatrix10"

    .line 21
    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Ljavax/vecmath/GMatrix;->nRow:I

    iget v2, p0, Ljavax/vecmath/GMatrix;->nCol:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    iget v3, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v2, v3, :cond_1

    move v3, v1

    .line 3
    :goto_1
    iget v4, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v3, v4, :cond_0

    .line 4
    iget-object v4, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v4, v4, v2

    aget-wide v5, v4, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5
    :cond_0
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final trace()D
    .locals 7

    iget v0, p0, Ljavax/vecmath/GMatrix;->nRow:I

    iget v1, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    iget-object v4, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v4, v4, v3

    aget-wide v5, v4, v3

    add-double/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-wide v1
.end method

.method public final transpose()V
    .locals 9

    .line 1
    iget v0, p0, Ljavax/vecmath/GMatrix;->nRow:I

    iget v1, p0, Ljavax/vecmath/GMatrix;->nCol:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    .line 2
    iput v1, p0, Ljavax/vecmath/GMatrix;->nRow:I

    .line 3
    iput v0, p0, Ljavax/vecmath/GMatrix;->nCol:I

    const/4 v3, 0x2

    .line 4
    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v0, v3, v4

    aput v1, v3, v2

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v1, v2

    .line 5
    :goto_0
    iget v3, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 6
    :goto_1
    iget v4, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v3, v4, :cond_0

    .line 7
    aget-object v4, v0, v1

    iget-object v5, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v5, v5, v3

    aget-wide v6, v5, v1

    aput-wide v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iput-object v0, p0, Ljavax/vecmath/GMatrix;->values:[[D

    goto :goto_4

    :cond_2
    move v0, v2

    .line 9
    :goto_2
    iget v1, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v0, v1, :cond_4

    move v1, v2

    :goto_3
    if-ge v1, v0, :cond_3

    .line 10
    iget-object v3, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v4, v3, v0

    aget-wide v5, v4, v1

    .line 11
    aget-object v3, v3, v1

    aget-wide v7, v3, v0

    aput-wide v7, v4, v1

    .line 12
    aput-wide v5, v3, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    :goto_4
    return-void
.end method

.method public final transpose(Ljavax/vecmath/GMatrix;)V
    .locals 7

    .line 13
    iget v0, p0, Ljavax/vecmath/GMatrix;->nRow:I

    iget v1, p1, Ljavax/vecmath/GMatrix;->nCol:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Ljavax/vecmath/GMatrix;->nCol:I

    iget v1, p1, Ljavax/vecmath/GMatrix;->nRow:I

    if-ne v0, v1, :cond_3

    if-eq p1, p0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    .line 14
    :goto_0
    iget v2, p0, Ljavax/vecmath/GMatrix;->nRow:I

    if-ge v1, v2, :cond_2

    move v2, v0

    .line 15
    :goto_1
    iget v3, p0, Ljavax/vecmath/GMatrix;->nCol:I

    if-ge v2, v3, :cond_0

    .line 16
    iget-object v3, p0, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v3, v3, v1

    iget-object v4, p1, Ljavax/vecmath/GMatrix;->values:[[D

    aget-object v4, v4, v2

    aget-wide v5, v4, v1

    aput-wide v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p0}, Ljavax/vecmath/GMatrix;->transpose()V

    :cond_2
    return-void

    .line 18
    :cond_3
    new-instance p1, Ljavax/vecmath/MismatchedSizeException;

    const-string v0, "GMatrix17"

    .line 19
    invoke-static {v0}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/vecmath/MismatchedSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
