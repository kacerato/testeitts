.class public Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/TrivariateFunction;


# static fields
.field private static final AINV:[[D


# instance fields
.field private final splines:[[[Lorg/apache/commons/math3/analysis/interpolation/TricubicFunction;

.field private final xval:[D

.field private final yval:[D

.field private final zval:[D


# direct methods
.method static constructor <clinit>()V
    .locals 66

    const/16 v0, 0x40

    new-array v2, v0, [D

    move-object v1, v2

    fill-array-data v2, :array_0

    new-array v3, v0, [D

    move-object v2, v3

    fill-array-data v3, :array_1

    new-array v4, v0, [D

    move-object v3, v4

    fill-array-data v4, :array_2

    new-array v5, v0, [D

    move-object v4, v5

    fill-array-data v5, :array_3

    new-array v6, v0, [D

    move-object v5, v6

    fill-array-data v6, :array_4

    new-array v7, v0, [D

    move-object v6, v7

    fill-array-data v7, :array_5

    new-array v8, v0, [D

    move-object v7, v8

    fill-array-data v8, :array_6

    new-array v9, v0, [D

    move-object v8, v9

    fill-array-data v9, :array_7

    new-array v10, v0, [D

    move-object v9, v10

    fill-array-data v10, :array_8

    new-array v11, v0, [D

    move-object v10, v11

    fill-array-data v11, :array_9

    new-array v12, v0, [D

    move-object v11, v12

    fill-array-data v12, :array_a

    new-array v13, v0, [D

    move-object v12, v13

    fill-array-data v13, :array_b

    new-array v14, v0, [D

    move-object v13, v14

    fill-array-data v14, :array_c

    new-array v15, v0, [D

    move-object v14, v15

    fill-array-data v15, :array_d

    new-array v15, v0, [D

    move-object/from16 v16, v15

    fill-array-data v16, :array_e

    move-object/from16 v65, v1

    new-array v1, v0, [D

    move-object/from16 v16, v1

    fill-array-data v1, :array_f

    new-array v1, v0, [D

    move-object/from16 v17, v1

    fill-array-data v1, :array_10

    new-array v1, v0, [D

    move-object/from16 v18, v1

    fill-array-data v1, :array_11

    new-array v1, v0, [D

    move-object/from16 v19, v1

    fill-array-data v1, :array_12

    new-array v1, v0, [D

    move-object/from16 v20, v1

    fill-array-data v1, :array_13

    new-array v1, v0, [D

    move-object/from16 v21, v1

    fill-array-data v1, :array_14

    new-array v1, v0, [D

    move-object/from16 v22, v1

    fill-array-data v1, :array_15

    new-array v1, v0, [D

    move-object/from16 v23, v1

    fill-array-data v1, :array_16

    new-array v1, v0, [D

    move-object/from16 v24, v1

    fill-array-data v1, :array_17

    new-array v1, v0, [D

    move-object/from16 v25, v1

    fill-array-data v1, :array_18

    new-array v1, v0, [D

    move-object/from16 v26, v1

    fill-array-data v1, :array_19

    new-array v1, v0, [D

    move-object/from16 v27, v1

    fill-array-data v1, :array_1a

    new-array v1, v0, [D

    move-object/from16 v28, v1

    fill-array-data v1, :array_1b

    new-array v1, v0, [D

    move-object/from16 v29, v1

    fill-array-data v1, :array_1c

    new-array v1, v0, [D

    move-object/from16 v30, v1

    fill-array-data v1, :array_1d

    new-array v1, v0, [D

    move-object/from16 v31, v1

    fill-array-data v1, :array_1e

    new-array v1, v0, [D

    move-object/from16 v32, v1

    fill-array-data v1, :array_1f

    new-array v1, v0, [D

    move-object/from16 v33, v1

    fill-array-data v1, :array_20

    new-array v1, v0, [D

    move-object/from16 v34, v1

    fill-array-data v1, :array_21

    new-array v1, v0, [D

    move-object/from16 v35, v1

    fill-array-data v1, :array_22

    new-array v1, v0, [D

    move-object/from16 v36, v1

    fill-array-data v1, :array_23

    new-array v1, v0, [D

    move-object/from16 v37, v1

    fill-array-data v1, :array_24

    new-array v1, v0, [D

    move-object/from16 v38, v1

    fill-array-data v1, :array_25

    new-array v1, v0, [D

    move-object/from16 v39, v1

    fill-array-data v1, :array_26

    new-array v1, v0, [D

    move-object/from16 v40, v1

    fill-array-data v1, :array_27

    new-array v1, v0, [D

    move-object/from16 v41, v1

    fill-array-data v1, :array_28

    new-array v1, v0, [D

    move-object/from16 v42, v1

    fill-array-data v1, :array_29

    new-array v1, v0, [D

    move-object/from16 v43, v1

    fill-array-data v1, :array_2a

    new-array v1, v0, [D

    move-object/from16 v44, v1

    fill-array-data v1, :array_2b

    new-array v1, v0, [D

    move-object/from16 v45, v1

    fill-array-data v1, :array_2c

    new-array v1, v0, [D

    move-object/from16 v46, v1

    fill-array-data v1, :array_2d

    new-array v1, v0, [D

    move-object/from16 v47, v1

    fill-array-data v1, :array_2e

    new-array v1, v0, [D

    move-object/from16 v48, v1

    fill-array-data v1, :array_2f

    new-array v1, v0, [D

    move-object/from16 v49, v1

    fill-array-data v1, :array_30

    new-array v1, v0, [D

    move-object/from16 v50, v1

    fill-array-data v1, :array_31

    new-array v1, v0, [D

    move-object/from16 v51, v1

    fill-array-data v1, :array_32

    new-array v1, v0, [D

    move-object/from16 v52, v1

    fill-array-data v1, :array_33

    new-array v1, v0, [D

    move-object/from16 v53, v1

    fill-array-data v1, :array_34

    new-array v1, v0, [D

    move-object/from16 v54, v1

    fill-array-data v1, :array_35

    new-array v1, v0, [D

    move-object/from16 v55, v1

    fill-array-data v1, :array_36

    new-array v1, v0, [D

    move-object/from16 v56, v1

    fill-array-data v1, :array_37

    new-array v1, v0, [D

    move-object/from16 v57, v1

    fill-array-data v1, :array_38

    new-array v1, v0, [D

    move-object/from16 v58, v1

    fill-array-data v1, :array_39

    new-array v1, v0, [D

    move-object/from16 v59, v1

    fill-array-data v1, :array_3a

    new-array v1, v0, [D

    move-object/from16 v60, v1

    fill-array-data v1, :array_3b

    new-array v1, v0, [D

    move-object/from16 v61, v1

    fill-array-data v1, :array_3c

    new-array v1, v0, [D

    move-object/from16 v62, v1

    fill-array-data v1, :array_3d

    new-array v1, v0, [D

    move-object/from16 v63, v1

    fill-array-data v1, :array_3e

    new-array v0, v0, [D

    move-object/from16 v64, v0

    fill-array-data v0, :array_3f

    move-object/from16 v1, v65

    filled-new-array/range {v1 .. v64}, [[D

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->AINV:[[D

    return-void

    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 8
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 8
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 8
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_9
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_a
    .array-data 8
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        0x0
        0x0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_b
    .array-data 8
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_c
    .array-data 8
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_d
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_e
    .array-data 8
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        0x0
        0x0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_f
    .array-data 8
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_10
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_11
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_12
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_13
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_14
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_15
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_16
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_17
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_18
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_19
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1a
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x0
        0x0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1b
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1c
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1d
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1e
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1f
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_20
    .array-data 8
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_21
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_22
    .array-data 8
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        0x0
        0x0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_23
    .array-data 8
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_24
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_25
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
    .end array-data

    :array_26
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        0x0
        0x0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
    .end array-data

    :array_27
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
    .end array-data

    :array_28
    .array-data 8
        0x4022000000000000L    # 9.0
        0x0
        -0x3fde000000000000L    # -9.0
        0x0
        -0x3fde000000000000L    # -9.0
        0x0
        0x4022000000000000L    # 9.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4010000000000000L    # 4.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_29
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4022000000000000L    # 9.0
        0x0
        -0x3fde000000000000L    # -9.0
        0x0
        -0x3fde000000000000L    # -9.0
        0x0
        0x4022000000000000L    # 9.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4010000000000000L    # 4.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
    .end array-data

    :array_2a
    .array-data 8
        -0x3fc5000000000000L    # -27.0
        0x403b000000000000L    # 27.0
        0x403b000000000000L    # 27.0
        -0x3fc5000000000000L    # -27.0
        0x403b000000000000L    # 27.0
        -0x3fc5000000000000L    # -27.0
        -0x3fc5000000000000L    # -27.0
        0x403b000000000000L    # 27.0
        -0x3fce000000000000L    # -18.0
        -0x3fde000000000000L    # -9.0
        0x4032000000000000L    # 18.0
        0x4022000000000000L    # 9.0
        0x4032000000000000L    # 18.0
        0x4022000000000000L    # 9.0
        -0x3fce000000000000L    # -18.0
        -0x3fde000000000000L    # -9.0
        -0x3fce000000000000L    # -18.0
        0x4032000000000000L    # 18.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        -0x3fce000000000000L    # -18.0
        0x4032000000000000L    # 18.0
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        -0x3fd8000000000000L    # -12.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        0x4028000000000000L    # 12.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        -0x3fd8000000000000L    # -12.0
        -0x3fe8000000000000L    # -6.0
        0x4028000000000000L    # 12.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x3fe0000000000000L    # -8.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
    .end array-data

    :array_2b
    .array-data 8
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        -0x3fce000000000000L    # -18.0
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        0x4032000000000000L    # 18.0
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        0x4022000000000000L    # 9.0
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        -0x3fde000000000000L    # -9.0
        -0x3fde000000000000L    # -9.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        0x4022000000000000L    # 9.0
        0x4028000000000000L    # 12.0
        -0x3fd8000000000000L    # -12.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4028000000000000L    # 12.0
        -0x3fd8000000000000L    # -12.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        0x4020000000000000L    # 8.0
        -0x3fe0000000000000L    # -8.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_2c
    .array-data 8
        -0x3fe8000000000000L    # -6.0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x0
        0x4010000000000000L    # 4.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2d
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x0
        0x4010000000000000L    # 4.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
    .end array-data

    :array_2e
    .array-data 8
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        -0x3fce000000000000L    # -18.0
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        0x4032000000000000L    # 18.0
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        0x4028000000000000L    # 12.0
        0x4018000000000000L    # 6.0
        -0x3fd8000000000000L    # -12.0
        -0x3fe8000000000000L    # -6.0
        -0x3fd8000000000000L    # -12.0
        -0x3fe8000000000000L    # -6.0
        0x4028000000000000L    # 12.0
        0x4018000000000000L    # 6.0
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        0x4028000000000000L    # 12.0
        -0x3fd8000000000000L    # -12.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        0x4020000000000000L    # 8.0
        0x4010000000000000L    # 4.0
        -0x3fe0000000000000L    # -8.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_2f
    .array-data 8
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        0x4028000000000000L    # 12.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        -0x3fd8000000000000L    # -12.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe0000000000000L    # -8.0
        0x4020000000000000L    # 8.0
        0x4020000000000000L    # 8.0
        -0x3fe0000000000000L    # -8.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data

    :array_30
    .array-data 8
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_31
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_32
    .array-data 8
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_33
    .array-data 8
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        0x0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_34
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_35
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
    .end array-data

    :array_36
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
    .end array-data

    :array_37
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        0x0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
    .end array-data

    :array_38
    .array-data 8
        -0x3fe8000000000000L    # -6.0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x4010000000000000L    # 4.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_39
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x4010000000000000L    # 4.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
    .end array-data

    :array_3a
    .array-data 8
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        -0x3fce000000000000L    # -18.0
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        0x4032000000000000L    # 18.0
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        0x4028000000000000L    # 12.0
        0x4018000000000000L    # 6.0
        -0x3fd8000000000000L    # -12.0
        -0x3fe8000000000000L    # -6.0
        -0x3fd8000000000000L    # -12.0
        -0x3fe8000000000000L    # -6.0
        0x4028000000000000L    # 12.0
        0x4018000000000000L    # 6.0
        0x4028000000000000L    # 12.0
        -0x3fd8000000000000L    # -12.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        0x4020000000000000L    # 8.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        -0x3fe0000000000000L    # -8.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_3b
    .array-data 8
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        0x4028000000000000L    # 12.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        -0x3fd8000000000000L    # -12.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe0000000000000L    # -8.0
        0x4020000000000000L    # 8.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x4020000000000000L    # 8.0
        -0x3fe0000000000000L    # -8.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data

    :array_3c
    .array-data 8
        0x4010000000000000L    # 4.0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x0
        0x4010000000000000L    # 4.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3d
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4010000000000000L    # 4.0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x0
        0x4010000000000000L    # 4.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
    .end array-data

    :array_3e
    .array-data 8
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        0x4028000000000000L    # 12.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        -0x3fd8000000000000L    # -12.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        -0x3fe0000000000000L    # -8.0
        -0x3ff0000000000000L    # -4.0
        0x4020000000000000L    # 8.0
        0x4010000000000000L    # 4.0
        0x4020000000000000L    # 8.0
        0x4010000000000000L    # 4.0
        -0x3fe0000000000000L    # -8.0
        -0x3ff0000000000000L    # -4.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
    .end array-data

    :array_3f
    .array-data 8
        0x4020000000000000L    # 8.0
        -0x3fe0000000000000L    # -8.0
        -0x3fe0000000000000L    # -8.0
        0x4020000000000000L    # 8.0
        -0x3fe0000000000000L    # -8.0
        0x4020000000000000L    # 8.0
        0x4020000000000000L    # 8.0
        -0x3fe0000000000000L    # -8.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method public constructor <init>([D[D[D[[[D[[[D[[[D[[[D[[[D[[[D[[[D[[[D)V
    .locals 159
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v14, p1

    array-length v15, v14

    move-object/from16 v10, p2

    array-length v11, v10

    array-length v13, v1

    if-eqz v15, :cond_1b

    if-eqz v11, :cond_1b

    array-length v12, v1

    if-eqz v12, :cond_1b

    array-length v12, v2

    if-eqz v12, :cond_1b

    const/4 v12, 0x0

    aget-object v1, v2, v12

    array-length v1, v1

    if-eqz v1, :cond_1b

    array-length v1, v2

    if-ne v15, v1, :cond_1a

    array-length v1, v3

    if-ne v15, v1, :cond_19

    array-length v1, v4

    if-ne v15, v1, :cond_18

    array-length v1, v5

    if-ne v15, v1, :cond_17

    array-length v1, v6

    if-ne v15, v1, :cond_16

    array-length v1, v7

    if-ne v15, v1, :cond_15

    array-length v1, v8

    if-ne v15, v1, :cond_14

    array-length v1, v9

    if-ne v15, v1, :cond_13

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    invoke-static/range {p3 .. p3}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    invoke-virtual/range {p1 .. p1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->xval:[D

    invoke-virtual/range {p2 .. p2}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->yval:[D

    invoke-virtual/range {p3 .. p3}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->zval:[D

    const/4 v1, 0x1

    sub-int/2addr v15, v1

    add-int/lit8 v10, v11, -0x1

    add-int/lit8 v12, v13, -0x1

    move/from16 v20, v13

    const/4 v14, 0x3

    new-array v13, v14, [I

    const/4 v14, 0x2

    aput v12, v13, v14

    aput v10, v13, v1

    const/4 v1, 0x0

    aput v15, v13, v1

    const-class v1, Lorg/apache/commons/math3/analysis/interpolation/TricubicFunction;

    invoke-static {v1, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[Lorg/apache/commons/math3/analysis/interpolation/TricubicFunction;

    iput-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->splines:[[[Lorg/apache/commons/math3/analysis/interpolation/TricubicFunction;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v15, :cond_12

    aget-object v13, v2, v1

    array-length v13, v13

    if-ne v13, v11, :cond_11

    aget-object v13, v3, v1

    array-length v13, v13

    if-ne v13, v11, :cond_10

    aget-object v13, v4, v1

    array-length v13, v13

    if-ne v13, v11, :cond_f

    aget-object v13, v5, v1

    array-length v13, v13

    if-ne v13, v11, :cond_e

    aget-object v13, v6, v1

    array-length v13, v13

    if-ne v13, v11, :cond_d

    aget-object v13, v7, v1

    array-length v13, v13

    if-ne v13, v11, :cond_c

    aget-object v13, v8, v1

    array-length v13, v13

    if-ne v13, v11, :cond_b

    aget-object v13, v9, v1

    array-length v13, v13

    if-ne v13, v11, :cond_a

    const/4 v13, 0x1

    add-int/lit8 v14, v1, 0x1

    iget-object v13, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->xval:[D

    aget-wide v21, v13, v14

    aget-wide v23, v13, v1

    sub-double v21, v21, v23

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v10, :cond_9

    aget-object v23, v2, v1

    move/from16 p1, v10

    aget-object v10, v23, v13

    array-length v10, v10

    move/from16 p2, v15

    move/from16 v15, v20

    if-ne v10, v15, :cond_8

    aget-object v10, v3, v1

    aget-object v10, v10, v13

    array-length v10, v10

    if-ne v10, v15, :cond_7

    aget-object v10, v4, v1

    aget-object v10, v10, v13

    array-length v10, v10

    if-ne v10, v15, :cond_6

    aget-object v10, v5, v1

    aget-object v10, v10, v13

    array-length v10, v10

    if-ne v10, v15, :cond_5

    aget-object v10, v6, v1

    aget-object v10, v10, v13

    array-length v10, v10

    if-ne v10, v15, :cond_4

    aget-object v10, v7, v1

    aget-object v10, v10, v13

    array-length v10, v10

    if-ne v10, v15, :cond_3

    aget-object v10, v8, v1

    aget-object v10, v10, v13

    array-length v10, v10

    if-ne v10, v15, :cond_2

    aget-object v10, v9, v1

    aget-object v10, v10, v13

    array-length v10, v10

    if-ne v10, v15, :cond_1

    const/4 v10, 0x1

    add-int/lit8 v20, v13, 0x1

    iget-object v10, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->yval:[D

    aget-wide v23, v10, v20

    aget-wide v25, v10, v13

    sub-double v23, v23, v25

    mul-double v25, v21, v23

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v12, :cond_0

    const/16 v18, 0x1

    add-int/lit8 v27, v10, 0x1

    move/from16 p3, v12

    iget-object v12, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->zval:[D

    aget-wide v28, v12, v27

    aget-wide v30, v12, v10

    sub-double v28, v28, v30

    mul-double v30, v21, v28

    mul-double v32, v23, v28

    mul-double v34, v21, v32

    aget-object v12, v2, v1

    aget-object v36, v12, v13

    aget-wide v37, v36, v10

    aget-object v39, v2, v14

    aget-object v40, v39, v13

    aget-wide v41, v40, v10

    aget-object v12, v12, v20

    aget-wide v43, v12, v10

    aget-object v39, v39, v20

    aget-wide v45, v39, v10

    aget-wide v47, v36, v27

    aget-wide v49, v40, v27

    aget-wide v51, v12, v27

    aget-wide v53, v39, v27

    aget-object v12, v3, v1

    aget-object v36, v12, v13

    aget-wide v39, v36, v10

    mul-double v39, v39, v21

    aget-object v55, v3, v14

    aget-object v56, v55, v13

    aget-wide v57, v56, v10

    mul-double v57, v57, v21

    aget-object v12, v12, v20

    aget-wide v59, v12, v10

    mul-double v59, v59, v21

    aget-object v55, v55, v20

    aget-wide v61, v55, v10

    mul-double v61, v61, v21

    aget-wide v63, v36, v27

    mul-double v63, v63, v21

    aget-wide v65, v56, v27

    mul-double v65, v65, v21

    aget-wide v67, v12, v27

    mul-double v67, v67, v21

    aget-wide v69, v55, v27

    mul-double v69, v69, v21

    aget-object v12, v4, v1

    aget-object v36, v12, v13

    aget-wide v55, v36, v10

    mul-double v55, v55, v23

    aget-object v71, v4, v14

    aget-object v72, v71, v13

    aget-wide v73, v72, v10

    mul-double v73, v73, v23

    aget-object v12, v12, v20

    aget-wide v75, v12, v10

    mul-double v75, v75, v23

    aget-object v71, v71, v20

    aget-wide v77, v71, v10

    mul-double v77, v77, v23

    aget-wide v79, v36, v27

    mul-double v79, v79, v23

    aget-wide v81, v72, v27

    mul-double v81, v81, v23

    aget-wide v83, v12, v27

    mul-double v83, v83, v23

    aget-wide v85, v71, v27

    mul-double v85, v85, v23

    aget-object v12, v5, v1

    aget-object v36, v12, v13

    aget-wide v71, v36, v10

    mul-double v71, v71, v28

    aget-object v87, v5, v14

    aget-object v88, v87, v13

    aget-wide v89, v88, v10

    mul-double v89, v89, v28

    aget-object v12, v12, v20

    aget-wide v91, v12, v10

    mul-double v91, v91, v28

    aget-object v87, v87, v20

    aget-wide v93, v87, v10

    mul-double v93, v93, v28

    aget-wide v95, v36, v27

    mul-double v95, v95, v28

    aget-wide v97, v88, v27

    mul-double v97, v97, v28

    aget-wide v99, v12, v27

    mul-double v99, v99, v28

    aget-wide v101, v87, v27

    mul-double v101, v101, v28

    aget-object v12, v6, v1

    aget-object v28, v12, v13

    aget-wide v87, v28, v10

    mul-double v87, v87, v25

    aget-object v29, v6, v14

    aget-object v36, v29, v13

    aget-wide v103, v36, v10

    mul-double v103, v103, v25

    aget-object v12, v12, v20

    aget-wide v105, v12, v10

    mul-double v105, v105, v25

    aget-object v29, v29, v20

    aget-wide v107, v29, v10

    mul-double v107, v107, v25

    aget-wide v109, v28, v27

    mul-double v109, v109, v25

    aget-wide v111, v36, v27

    mul-double v111, v111, v25

    aget-wide v113, v12, v27

    mul-double v113, v113, v25

    aget-wide v28, v29, v27

    mul-double v28, v28, v25

    aget-object v12, v7, v1

    aget-object v36, v12, v13

    aget-wide v115, v36, v10

    mul-double v115, v115, v30

    aget-object v117, v7, v14

    aget-object v118, v117, v13

    aget-wide v119, v118, v10

    mul-double v119, v119, v30

    aget-object v12, v12, v20

    aget-wide v121, v12, v10

    mul-double v121, v121, v30

    aget-object v117, v117, v20

    aget-wide v123, v117, v10

    mul-double v123, v123, v30

    aget-wide v125, v36, v27

    mul-double v125, v125, v30

    aget-wide v127, v118, v27

    mul-double v127, v127, v30

    aget-wide v129, v12, v27

    mul-double v129, v129, v30

    aget-wide v131, v117, v27

    mul-double v131, v131, v30

    aget-object v12, v8, v1

    aget-object v30, v12, v13

    aget-wide v117, v30, v10

    mul-double v117, v117, v32

    aget-object v31, v8, v14

    aget-object v36, v31, v13

    aget-wide v133, v36, v10

    mul-double v133, v133, v32

    aget-object v12, v12, v20

    aget-wide v135, v12, v10

    mul-double v135, v135, v32

    aget-object v31, v31, v20

    aget-wide v137, v31, v10

    mul-double v137, v137, v32

    aget-wide v139, v30, v27

    mul-double v139, v139, v32

    aget-wide v141, v36, v27

    mul-double v141, v141, v32

    aget-wide v143, v12, v27

    mul-double v143, v143, v32

    aget-wide v30, v31, v27

    mul-double v30, v30, v32

    aget-object v12, v9, v1

    aget-object v32, v12, v13

    aget-wide v145, v32, v10

    mul-double v145, v145, v34

    aget-object v33, v9, v14

    aget-object v36, v33, v13

    aget-wide v147, v36, v10

    mul-double v147, v147, v34

    aget-object v12, v12, v20

    aget-wide v149, v12, v10

    mul-double v149, v149, v34

    aget-object v33, v33, v20

    aget-wide v151, v33, v10

    mul-double v151, v151, v34

    aget-wide v153, v32, v27

    mul-double v153, v153, v34

    aget-wide v155, v36, v27

    mul-double v155, v155, v34

    aget-wide v157, v12, v27

    mul-double v157, v157, v34

    aget-wide v32, v33, v27

    mul-double v32, v32, v34

    const/16 v12, 0x40

    new-array v12, v12, [D

    const/16 v19, 0x0

    aput-wide v37, v12, v19

    const/16 v18, 0x1

    aput-wide v41, v12, v18

    const/16 v16, 0x2

    aput-wide v43, v12, v16

    const/16 v17, 0x3

    aput-wide v45, v12, v17

    const/16 v34, 0x4

    aput-wide v47, v12, v34

    const/16 v34, 0x5

    aput-wide v49, v12, v34

    const/16 v34, 0x6

    aput-wide v51, v12, v34

    const/16 v34, 0x7

    aput-wide v53, v12, v34

    const/16 v34, 0x8

    aput-wide v39, v12, v34

    const/16 v34, 0x9

    aput-wide v57, v12, v34

    const/16 v34, 0xa

    aput-wide v59, v12, v34

    const/16 v34, 0xb

    aput-wide v61, v12, v34

    const/16 v34, 0xc

    aput-wide v63, v12, v34

    const/16 v34, 0xd

    aput-wide v65, v12, v34

    const/16 v34, 0xe

    aput-wide v67, v12, v34

    const/16 v34, 0xf

    aput-wide v69, v12, v34

    const/16 v34, 0x10

    aput-wide v55, v12, v34

    const/16 v34, 0x11

    aput-wide v73, v12, v34

    const/16 v34, 0x12

    aput-wide v75, v12, v34

    const/16 v34, 0x13

    aput-wide v77, v12, v34

    const/16 v34, 0x14

    aput-wide v79, v12, v34

    const/16 v34, 0x15

    aput-wide v81, v12, v34

    const/16 v34, 0x16

    aput-wide v83, v12, v34

    const/16 v34, 0x17

    aput-wide v85, v12, v34

    const/16 v34, 0x18

    aput-wide v71, v12, v34

    const/16 v34, 0x19

    aput-wide v89, v12, v34

    const/16 v34, 0x1a

    aput-wide v91, v12, v34

    const/16 v34, 0x1b

    aput-wide v93, v12, v34

    const/16 v34, 0x1c

    aput-wide v95, v12, v34

    const/16 v34, 0x1d

    aput-wide v97, v12, v34

    const/16 v34, 0x1e

    aput-wide v99, v12, v34

    const/16 v34, 0x1f

    aput-wide v101, v12, v34

    const/16 v34, 0x20

    aput-wide v87, v12, v34

    const/16 v34, 0x21

    aput-wide v103, v12, v34

    const/16 v34, 0x22

    aput-wide v105, v12, v34

    const/16 v34, 0x23

    aput-wide v107, v12, v34

    const/16 v34, 0x24

    aput-wide v109, v12, v34

    const/16 v34, 0x25

    aput-wide v111, v12, v34

    const/16 v34, 0x26

    aput-wide v113, v12, v34

    const/16 v34, 0x27

    aput-wide v28, v12, v34

    const/16 v28, 0x28

    aput-wide v115, v12, v28

    const/16 v28, 0x29

    aput-wide v119, v12, v28

    const/16 v28, 0x2a

    aput-wide v121, v12, v28

    const/16 v28, 0x2b

    aput-wide v123, v12, v28

    const/16 v28, 0x2c

    aput-wide v125, v12, v28

    const/16 v28, 0x2d

    aput-wide v127, v12, v28

    const/16 v28, 0x2e

    aput-wide v129, v12, v28

    const/16 v28, 0x2f

    aput-wide v131, v12, v28

    const/16 v28, 0x30

    aput-wide v117, v12, v28

    const/16 v28, 0x31

    aput-wide v133, v12, v28

    const/16 v28, 0x32

    aput-wide v135, v12, v28

    const/16 v28, 0x33

    aput-wide v137, v12, v28

    const/16 v28, 0x34

    aput-wide v139, v12, v28

    const/16 v28, 0x35

    aput-wide v141, v12, v28

    const/16 v28, 0x36

    aput-wide v143, v12, v28

    const/16 v28, 0x37

    aput-wide v30, v12, v28

    const/16 v28, 0x38

    aput-wide v145, v12, v28

    const/16 v28, 0x39

    aput-wide v147, v12, v28

    const/16 v28, 0x3a

    aput-wide v149, v12, v28

    const/16 v28, 0x3b

    aput-wide v151, v12, v28

    const/16 v28, 0x3c

    aput-wide v153, v12, v28

    const/16 v28, 0x3d

    aput-wide v155, v12, v28

    const/16 v28, 0x3e

    aput-wide v157, v12, v28

    const/16 v28, 0x3f

    aput-wide v32, v12, v28

    move/from16 v28, v14

    iget-object v14, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->splines:[[[Lorg/apache/commons/math3/analysis/interpolation/TricubicFunction;

    aget-object v14, v14, v1

    aget-object v14, v14, v13

    move/from16 v29, v11

    new-instance v11, Lorg/apache/commons/math3/analysis/interpolation/TricubicFunction;

    invoke-direct {v0, v12}, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->computeCoefficients([D)[D

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/apache/commons/math3/analysis/interpolation/TricubicFunction;-><init>([D)V

    aput-object v11, v14, v10

    move/from16 v12, p3

    move/from16 v10, v27

    move/from16 v14, v28

    move/from16 v11, v29

    goto/16 :goto_2

    :cond_0
    const/16 v16, 0x2

    const/16 v17, 0x3

    const/16 v18, 0x1

    const/16 v19, 0x0

    move/from16 v10, p1

    move/from16 v13, v20

    move/from16 v20, v15

    move/from16 v15, p2

    goto/16 :goto_1

    :cond_1
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v1, v9, v1

    aget-object v1, v1, v13

    array-length v1, v1

    invoke-direct {v2, v1, v15}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    :cond_2
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v1, v8, v1

    aget-object v1, v1, v13

    array-length v1, v1

    invoke-direct {v2, v1, v15}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    :cond_3
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v1, v7, v1

    aget-object v1, v1, v13

    array-length v1, v1

    invoke-direct {v2, v1, v15}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    :cond_4
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v1, v6, v1

    aget-object v1, v1, v13

    array-length v1, v1

    invoke-direct {v2, v1, v15}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    :cond_5
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v1, v5, v1

    aget-object v1, v1, v13

    array-length v1, v1

    invoke-direct {v2, v1, v15}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    :cond_6
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v1, v4, v1

    aget-object v1, v1, v13

    array-length v1, v1

    invoke-direct {v2, v1, v15}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    :cond_7
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v1, v3, v1

    aget-object v1, v1, v13

    array-length v1, v1

    invoke-direct {v2, v1, v15}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    :cond_8
    new-instance v3, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v1, v2, v1

    aget-object v1, v1, v13

    array-length v1, v1

    invoke-direct {v3, v1, v15}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v3

    :cond_9
    move/from16 v28, v14

    const/16 v16, 0x2

    const/16 v17, 0x3

    const/16 v18, 0x1

    const/16 v19, 0x0

    move/from16 v1, v28

    goto/16 :goto_0

    :cond_a
    move/from16 v29, v11

    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v1, v9, v1

    array-length v1, v1

    move/from16 v9, v29

    invoke-direct {v2, v1, v9}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    :cond_b
    move v9, v11

    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v1, v8, v1

    array-length v1, v1

    invoke-direct {v2, v1, v9}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    :cond_c
    move v9, v11

    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v1, v7, v1

    array-length v1, v1

    invoke-direct {v2, v1, v9}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    :cond_d
    move v9, v11

    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v1, v6, v1

    array-length v1, v1

    invoke-direct {v2, v1, v9}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    :cond_e
    move v9, v11

    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v1, v5, v1

    array-length v1, v1

    invoke-direct {v2, v1, v9}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    :cond_f
    move v9, v11

    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v1, v4, v1

    array-length v1, v1

    invoke-direct {v2, v1, v9}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    :cond_10
    move v9, v11

    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v1, v3, v1

    array-length v1, v1

    invoke-direct {v2, v1, v9}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    :cond_11
    move v9, v11

    new-instance v3, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v1, v2, v1

    array-length v1, v1

    invoke-direct {v3, v1, v9}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v3

    :cond_12
    return-void

    :cond_13
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, v9

    invoke-direct {v1, v15, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    :cond_14
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, v8

    invoke-direct {v1, v15, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    :cond_15
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, v7

    invoke-direct {v1, v15, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    :cond_16
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, v6

    invoke-direct {v1, v15, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    :cond_17
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, v5

    invoke-direct {v1, v15, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    :cond_18
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, v4

    invoke-direct {v1, v15, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    :cond_19
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, v3

    invoke-direct {v1, v15, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    :cond_1a
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, v2

    invoke-direct {v1, v15, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    :cond_1b
    new-instance v1, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v1
.end method

.method private computeCoefficients([D)[D
    .locals 12

    const/16 v0, 0x40

    new-array v1, v0, [D

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    sget-object v4, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->AINV:[[D

    aget-object v4, v4, v3

    const-wide/16 v5, 0x0

    move v7, v2

    :goto_1
    if-ge v7, v0, :cond_0

    aget-wide v8, v4, v7

    aget-wide v10, p1, v7

    mul-double/2addr v8, v10

    add-double/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    aput-wide v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private searchIndex(D[D)I
    .locals 6

    const/4 v0, 0x0

    aget-wide v0, p3, v0

    cmpg-double v0, p1, v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    return v1

    :cond_0
    array-length v0, p3

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget-wide v4, p3, v3

    cmpg-double v4, p1, v4

    if-gtz v4, :cond_1

    sub-int/2addr v3, v2

    return v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method


# virtual methods
.method public isValidPoint(DDD)Z
    .locals 6

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->xval:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    cmpg-double v2, p1, v2

    if-ltz v2, :cond_1

    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-wide v4, v0, v2

    cmpl-double p1, p1, v4

    if-gtz p1, :cond_1

    iget-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->yval:[D

    aget-wide v4, p1, v1

    cmpg-double p2, p3, v4

    if-ltz p2, :cond_1

    array-length p2, p1

    sub-int/2addr p2, v3

    aget-wide v4, p1, p2

    cmpl-double p1, p3, v4

    if-gtz p1, :cond_1

    iget-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->zval:[D

    aget-wide p2, p1, v1

    cmpg-double p2, p5, p2

    if-ltz p2, :cond_1

    array-length p2, p1

    sub-int/2addr p2, v3

    aget-wide p2, p1, p2

    cmpl-double p1, p5, p2

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    :goto_0
    return v1
.end method

.method public value(DDD)D
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    iget-object v7, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->xval:[D

    invoke-direct {v0, v1, v2, v7}, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->searchIndex(D[D)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, -0x1

    if-eq v7, v9, :cond_2

    iget-object v10, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->yval:[D

    invoke-direct {v0, v3, v4, v10}, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->searchIndex(D[D)I

    move-result v10

    if-eq v10, v9, :cond_1

    iget-object v11, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->zval:[D

    invoke-direct {v0, v5, v6, v11}, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->searchIndex(D[D)I

    move-result v11

    if-eq v11, v9, :cond_0

    iget-object v8, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->xval:[D

    aget-wide v12, v8, v7

    sub-double/2addr v1, v12

    add-int/lit8 v9, v7, 0x1

    aget-wide v14, v8, v9

    sub-double/2addr v14, v12

    div-double v17, v1, v14

    iget-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->yval:[D

    aget-wide v8, v1, v10

    sub-double v2, v3, v8

    add-int/lit8 v4, v10, 0x1

    aget-wide v12, v1, v4

    sub-double/2addr v12, v8

    div-double v19, v2, v12

    iget-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->zval:[D

    aget-wide v2, v1, v11

    sub-double v4, v5, v2

    add-int/lit8 v6, v11, 0x1

    aget-wide v8, v1, v6

    sub-double/2addr v8, v2

    div-double v21, v4, v8

    iget-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->splines:[[[Lorg/apache/commons/math3/analysis/interpolation/TricubicFunction;

    aget-object v1, v1, v7

    aget-object v1, v1, v10

    aget-object v16, v1, v11

    invoke-virtual/range {v16 .. v22}, Lorg/apache/commons/math3/analysis/interpolation/TricubicFunction;->value(DDD)D

    move-result-wide v1

    return-wide v1

    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p5 .. p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-object v3, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->zval:[D

    aget-wide v4, v3, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->zval:[D

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-wide v5, v4, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v1

    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-object v3, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->yval:[D

    aget-wide v4, v3, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->yval:[D

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-wide v5, v4, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v1

    :cond_2
    new-instance v3, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->xval:[D

    aget-wide v4, v2, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->xval:[D

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-wide v5, v4, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v3
.end method
