.class public Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/TrivariateFunction;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final AINV:[[D


# instance fields
.field private final splines:[[[Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineFunction;

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

    sput-object v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;->AINV:[[D

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
    .locals 154
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

    iput-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;->xval:[D

    invoke-virtual/range {p2 .. p2}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;->yval:[D

    invoke-virtual/range {p3 .. p3}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;->zval:[D

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

    const-class v1, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineFunction;

    invoke-static {v1, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineFunction;

    iput-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;->splines:[[[Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineFunction;

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

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v10, :cond_9

    aget-object v21, v2, v1

    move/from16 p1, v10

    aget-object v10, v21, v13

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

    move/from16 v21, v11

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v12, :cond_0

    add-int/lit8 v22, v11, 0x1

    aget-object v10, v2, v1

    aget-object v23, v10, v13

    aget-wide v24, v23, v11

    aget-object v26, v2, v14

    aget-object v27, v26, v13

    aget-wide v28, v27, v11

    aget-object v10, v10, v20

    aget-wide v30, v10, v11

    aget-object v26, v26, v20

    aget-wide v32, v26, v11

    aget-wide v34, v23, v22

    aget-wide v36, v27, v22

    aget-wide v38, v10, v22

    aget-wide v40, v26, v22

    aget-object v10, v3, v1

    aget-object v23, v10, v13

    aget-wide v26, v23, v11

    aget-object v42, v3, v14

    aget-object v43, v42, v13

    aget-wide v44, v43, v11

    aget-object v10, v10, v20

    aget-wide v46, v10, v11

    aget-object v42, v42, v20

    aget-wide v48, v42, v11

    aget-wide v50, v23, v22

    aget-wide v52, v43, v22

    aget-wide v54, v10, v22

    aget-wide v56, v42, v22

    aget-object v10, v4, v1

    aget-object v23, v10, v13

    aget-wide v42, v23, v11

    aget-object v58, v4, v14

    aget-object v59, v58, v13

    aget-wide v60, v59, v11

    aget-object v10, v10, v20

    aget-wide v62, v10, v11

    aget-object v58, v58, v20

    aget-wide v64, v58, v11

    aget-wide v66, v23, v22

    aget-wide v68, v59, v22

    aget-wide v70, v10, v22

    aget-wide v72, v58, v22

    aget-object v10, v5, v1

    aget-object v23, v10, v13

    aget-wide v58, v23, v11

    aget-object v74, v5, v14

    aget-object v75, v74, v13

    aget-wide v76, v75, v11

    aget-object v10, v10, v20

    aget-wide v78, v10, v11

    aget-object v74, v74, v20

    aget-wide v80, v74, v11

    aget-wide v82, v23, v22

    aget-wide v84, v75, v22

    aget-wide v86, v10, v22

    aget-wide v88, v74, v22

    aget-object v10, v6, v1

    aget-object v23, v10, v13

    aget-wide v74, v23, v11

    aget-object v90, v6, v14

    aget-object v91, v90, v13

    aget-wide v92, v91, v11

    aget-object v10, v10, v20

    aget-wide v94, v10, v11

    aget-object v90, v90, v20

    aget-wide v96, v90, v11

    aget-wide v98, v23, v22

    aget-wide v100, v91, v22

    aget-wide v102, v10, v22

    aget-wide v104, v90, v22

    aget-object v10, v7, v1

    aget-object v23, v10, v13

    aget-wide v90, v23, v11

    aget-object v106, v7, v14

    aget-object v107, v106, v13

    aget-wide v108, v107, v11

    aget-object v10, v10, v20

    aget-wide v110, v10, v11

    aget-object v106, v106, v20

    aget-wide v112, v106, v11

    aget-wide v114, v23, v22

    aget-wide v116, v107, v22

    aget-wide v118, v10, v22

    aget-wide v120, v106, v22

    aget-object v10, v8, v1

    aget-object v23, v10, v13

    aget-wide v106, v23, v11

    aget-object v122, v8, v14

    aget-object v123, v122, v13

    aget-wide v124, v123, v11

    aget-object v10, v10, v20

    aget-wide v126, v10, v11

    aget-object v122, v122, v20

    aget-wide v128, v122, v11

    aget-wide v130, v23, v22

    aget-wide v132, v123, v22

    aget-wide v134, v10, v22

    aget-wide v136, v122, v22

    aget-object v10, v9, v1

    aget-object v23, v10, v13

    aget-wide v122, v23, v11

    aget-object v138, v9, v14

    aget-object v139, v138, v13

    aget-wide v140, v139, v11

    aget-object v10, v10, v20

    aget-wide v142, v10, v11

    aget-object v138, v138, v20

    aget-wide v144, v138, v11

    aget-wide v146, v23, v22

    aget-wide v148, v139, v22

    aget-wide v150, v10, v22

    aget-wide v152, v138, v22

    const/16 v10, 0x40

    new-array v10, v10, [D

    const/16 v19, 0x0

    aput-wide v24, v10, v19

    const/16 v18, 0x1

    aput-wide v28, v10, v18

    const/16 v16, 0x2

    aput-wide v30, v10, v16

    const/16 v17, 0x3

    aput-wide v32, v10, v17

    const/16 v23, 0x4

    aput-wide v34, v10, v23

    const/16 v23, 0x5

    aput-wide v36, v10, v23

    const/16 v23, 0x6

    aput-wide v38, v10, v23

    const/16 v23, 0x7

    aput-wide v40, v10, v23

    const/16 v23, 0x8

    aput-wide v26, v10, v23

    const/16 v23, 0x9

    aput-wide v44, v10, v23

    const/16 v23, 0xa

    aput-wide v46, v10, v23

    const/16 v23, 0xb

    aput-wide v48, v10, v23

    const/16 v23, 0xc

    aput-wide v50, v10, v23

    const/16 v23, 0xd

    aput-wide v52, v10, v23

    const/16 v23, 0xe

    aput-wide v54, v10, v23

    const/16 v23, 0xf

    aput-wide v56, v10, v23

    const/16 v23, 0x10

    aput-wide v42, v10, v23

    const/16 v23, 0x11

    aput-wide v60, v10, v23

    const/16 v23, 0x12

    aput-wide v62, v10, v23

    const/16 v23, 0x13

    aput-wide v64, v10, v23

    const/16 v23, 0x14

    aput-wide v66, v10, v23

    const/16 v23, 0x15

    aput-wide v68, v10, v23

    const/16 v23, 0x16

    aput-wide v70, v10, v23

    const/16 v23, 0x17

    aput-wide v72, v10, v23

    const/16 v23, 0x18

    aput-wide v58, v10, v23

    const/16 v23, 0x19

    aput-wide v76, v10, v23

    const/16 v23, 0x1a

    aput-wide v78, v10, v23

    const/16 v23, 0x1b

    aput-wide v80, v10, v23

    const/16 v23, 0x1c

    aput-wide v82, v10, v23

    const/16 v23, 0x1d

    aput-wide v84, v10, v23

    const/16 v23, 0x1e

    aput-wide v86, v10, v23

    const/16 v23, 0x1f

    aput-wide v88, v10, v23

    const/16 v23, 0x20

    aput-wide v74, v10, v23

    const/16 v23, 0x21

    aput-wide v92, v10, v23

    const/16 v23, 0x22

    aput-wide v94, v10, v23

    const/16 v23, 0x23

    aput-wide v96, v10, v23

    const/16 v23, 0x24

    aput-wide v98, v10, v23

    const/16 v23, 0x25

    aput-wide v100, v10, v23

    const/16 v23, 0x26

    aput-wide v102, v10, v23

    const/16 v23, 0x27

    aput-wide v104, v10, v23

    const/16 v23, 0x28

    aput-wide v90, v10, v23

    const/16 v23, 0x29

    aput-wide v108, v10, v23

    const/16 v23, 0x2a

    aput-wide v110, v10, v23

    const/16 v23, 0x2b

    aput-wide v112, v10, v23

    const/16 v23, 0x2c

    aput-wide v114, v10, v23

    const/16 v23, 0x2d

    aput-wide v116, v10, v23

    const/16 v23, 0x2e

    aput-wide v118, v10, v23

    const/16 v23, 0x2f

    aput-wide v120, v10, v23

    const/16 v23, 0x30

    aput-wide v106, v10, v23

    const/16 v23, 0x31

    aput-wide v124, v10, v23

    const/16 v23, 0x32

    aput-wide v126, v10, v23

    const/16 v23, 0x33

    aput-wide v128, v10, v23

    const/16 v23, 0x34

    aput-wide v130, v10, v23

    const/16 v23, 0x35

    aput-wide v132, v10, v23

    const/16 v23, 0x36

    aput-wide v134, v10, v23

    const/16 v23, 0x37

    aput-wide v136, v10, v23

    const/16 v23, 0x38

    aput-wide v122, v10, v23

    const/16 v23, 0x39

    aput-wide v140, v10, v23

    const/16 v23, 0x3a

    aput-wide v142, v10, v23

    const/16 v23, 0x3b

    aput-wide v144, v10, v23

    const/16 v23, 0x3c

    aput-wide v146, v10, v23

    const/16 v23, 0x3d

    aput-wide v148, v10, v23

    const/16 v23, 0x3e

    aput-wide v150, v10, v23

    const/16 v23, 0x3f

    aput-wide v152, v10, v23

    move/from16 p3, v12

    iget-object v12, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;->splines:[[[Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineFunction;

    aget-object v12, v12, v1

    aget-object v12, v12, v13

    move/from16 v23, v14

    new-instance v14, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineFunction;

    invoke-direct {v0, v10}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;->computeSplineCoefficients([D)[D

    move-result-object v10

    invoke-direct {v14, v10}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineFunction;-><init>([D)V

    aput-object v14, v12, v11

    move/from16 v12, p3

    move/from16 v10, v18

    move/from16 v11, v22

    move/from16 v14, v23

    goto/16 :goto_2

    :cond_0
    const/16 v16, 0x2

    const/16 v17, 0x3

    const/16 v19, 0x0

    move/from16 v10, p1

    move/from16 v13, v20

    move/from16 v11, v21

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
    move/from16 v23, v14

    const/16 v16, 0x2

    const/16 v17, 0x3

    const/16 v18, 0x1

    const/16 v19, 0x0

    move/from16 v1, v23

    goto/16 :goto_0

    :cond_a
    move/from16 v21, v11

    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v1, v9, v1

    array-length v1, v1

    move/from16 v9, v21

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

.method private computeSplineCoefficients([D)[D
    .locals 12

    const/16 v0, 0x40

    new-array v1, v0, [D

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    sget-object v4, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;->AINV:[[D

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

    iget-object v7, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;->xval:[D

    invoke-direct {v0, v1, v2, v7}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;->searchIndex(D[D)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, -0x1

    if-eq v7, v9, :cond_2

    iget-object v10, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;->yval:[D

    invoke-direct {v0, v3, v4, v10}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;->searchIndex(D[D)I

    move-result v10

    if-eq v10, v9, :cond_1

    iget-object v11, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;->zval:[D

    invoke-direct {v0, v5, v6, v11}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;->searchIndex(D[D)I

    move-result v11

    if-eq v11, v9, :cond_0

    iget-object v8, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;->xval:[D

    aget-wide v12, v8, v7

    sub-double/2addr v1, v12

    add-int/lit8 v9, v7, 0x1

    aget-wide v14, v8, v9

    sub-double/2addr v14, v12

    div-double v17, v1, v14

    iget-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;->yval:[D

    aget-wide v8, v1, v10

    sub-double v2, v3, v8

    add-int/lit8 v4, v10, 0x1

    aget-wide v12, v1, v4

    sub-double/2addr v12, v8

    div-double v19, v2, v12

    iget-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;->zval:[D

    aget-wide v2, v1, v11

    sub-double v4, v5, v2

    add-int/lit8 v6, v11, 0x1

    aget-wide v8, v1, v6

    sub-double/2addr v8, v2

    div-double v21, v4, v8

    iget-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;->splines:[[[Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineFunction;

    aget-object v1, v1, v7

    aget-object v1, v1, v10

    aget-object v16, v1, v11

    invoke-virtual/range {v16 .. v22}, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineFunction;->value(DDD)D

    move-result-wide v1

    return-wide v1

    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p5 .. p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-object v3, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;->zval:[D

    aget-wide v4, v3, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;->zval:[D

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

    iget-object v3, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;->yval:[D

    aget-wide v4, v3, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;->yval:[D

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

    iget-object v2, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;->xval:[D

    aget-wide v4, v2, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineInterpolatingFunction;->xval:[D

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-wide v5, v4, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v3
.end method
