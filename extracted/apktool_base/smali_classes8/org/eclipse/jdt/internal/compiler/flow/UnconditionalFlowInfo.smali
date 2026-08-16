.class public Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;
.super Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo$AssertionFailedException;
    }
.end annotation


# static fields
.field public static final BitCacheSize:I = 0x40

.field public static final COVERAGE_TEST_FLAG:Z = false

.field public static CoverageTestId:I = 0x0

.field public static final IN:I = 0x6

.field public static final INN:I = 0x7

.field public static final extraLength:I = 0x8


# instance fields
.field public definiteInits:J

.field public extra:[[J

.field public iNBit:J

.field public iNNBit:J

.field public maxFieldCount:I

.field public nullBit1:J

.field public nullBit2:J

.field public nullBit3:J

.field public nullBit4:J

.field public potentialInits:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;-><init>()V

    return-void
.end method

.method private addInfoFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Z)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 61

    move-object/from16 v0, p0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    move-object/from16 v2, p1

    if-ne v2, v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v1

    if-eqz p2, :cond_2

    iget-wide v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->definiteInits:J

    iget-wide v4, v1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->definiteInits:J

    or-long/2addr v2, v4

    iput-wide v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->definiteInits:J

    iget-wide v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->potentialInits:J

    iget-wide v4, v1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->potentialInits:J

    or-long/2addr v2, v4

    iput-wide v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->potentialInits:J

    :cond_2
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    iget v6, v1, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    const/4 v7, 0x4

    and-int/2addr v6, v7

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_6

    if-nez v3, :cond_5

    iget-wide v8, v1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    iput-wide v8, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    iget-wide v8, v1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    iput-wide v8, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    iget-wide v8, v1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    iput-wide v8, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    iget-wide v8, v1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    iput-wide v8, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    iget-wide v8, v1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNBit:J

    iput-wide v8, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNBit:J

    iget-wide v8, v1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNNBit:J

    iput-wide v8, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNNBit:J

    move-object/from16 v45, v1

    move/from16 v24, v2

    move/from16 v17, v3

    move/from16 v19, v6

    move v1, v7

    goto/16 :goto_2

    :cond_5
    iget-wide v8, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    iget-wide v10, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    iget-wide v12, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    iget-wide v14, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    and-long v16, v8, v10

    and-long v16, v16, v12

    and-long v4, v16, v14

    move-wide/from16 v19, v8

    iget-wide v7, v1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNNBit:J

    move v9, v2

    move/from16 v17, v3

    iget-wide v2, v1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNBit:J

    or-long v21, v2, v4

    not-long v4, v4

    or-long/2addr v4, v7

    and-long v19, v19, v4

    and-long v21, v4, v21

    and-long v10, v21, v10

    and-long v21, v4, v7

    and-long v12, v21, v12

    and-long/2addr v4, v14

    or-long v14, v10, v12

    or-long/2addr v14, v4

    and-long v14, v19, v14

    move/from16 v19, v6

    move-wide/from16 v20, v7

    iget-wide v6, v1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    and-long v22, v12, v4

    move/from16 v24, v9

    iget-wide v8, v1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    move-wide/from16 v25, v2

    not-long v2, v8

    and-long v27, v22, v2

    move-wide/from16 v29, v8

    iget-wide v8, v1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    move-wide/from16 v31, v6

    not-long v6, v8

    and-long v27, v27, v6

    move-wide/from16 v33, v8

    not-long v8, v4

    move-wide/from16 v35, v4

    not-long v4, v12

    or-long v37, v8, v4

    move-wide/from16 v39, v12

    not-long v12, v10

    and-long v41, v12, v2

    move-wide/from16 v43, v12

    iget-wide v12, v1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    move-object/from16 v45, v1

    move-wide/from16 v46, v2

    not-long v1, v12

    and-long v48, v10, v1

    and-long v48, v48, v6

    or-long v48, v41, v48

    and-long v37, v37, v48

    or-long v27, v27, v37

    and-long v27, v14, v27

    move-wide/from16 v37, v12

    or-long v12, v31, v27

    iput-wide v12, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    or-long v12, v6, v1

    and-long v27, v4, v8

    or-long v12, v12, v27

    and-long v12, v12, v29

    and-long v27, v1, v6

    move-wide/from16 v48, v1

    move-wide/from16 v1, v31

    move-wide/from16 v31, v6

    not-long v6, v1

    move-wide/from16 v50, v8

    not-long v8, v14

    or-long v52, v4, v8

    and-long v52, v6, v52

    or-long v27, v27, v52

    and-long v52, v14, v29

    or-long v27, v27, v52

    and-long v27, v10, v27

    or-long v12, v12, v27

    iput-wide v12, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    or-long v12, v29, v10

    or-long/2addr v12, v8

    and-long/2addr v12, v6

    or-long v27, v33, v46

    and-long v52, v14, v39

    or-long v27, v27, v52

    and-long v27, v1, v27

    or-long v12, v12, v27

    and-long v27, v8, v43

    and-long v27, v27, v50

    or-long v12, v12, v27

    and-long v12, v37, v12

    and-long v27, v39, v46

    and-long v31, v27, v31

    or-long v12, v12, v31

    and-long v31, v43, v35

    or-long v31, v31, v8

    and-long v31, v31, v39

    and-long v52, v14, v43

    and-long v52, v52, v50

    and-long v52, v52, v29

    or-long v31, v31, v52

    and-long v31, v6, v31

    or-long v12, v12, v31

    iput-wide v12, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    and-long v12, v4, v48

    or-long v31, v39, v43

    and-long v31, v31, v46

    or-long v31, v12, v31

    and-long v31, v35, v31

    and-long v27, v27, v33

    and-long v52, v10, v29

    and-long v54, v39, v50

    and-long v54, v54, v48

    or-long v54, v33, v54

    and-long v52, v52, v54

    or-long v27, v27, v52

    and-long v27, v14, v27

    or-long v27, v31, v27

    and-long v6, v6, v27

    and-long v27, v43, v50

    and-long v27, v27, v48

    or-long v22, v22, v27

    and-long v22, v22, v33

    or-long v27, v37, v35

    and-long v27, v27, v33

    and-long v3, v4, v35

    and-long v3, v3, v29

    and-long v3, v3, v37

    or-long v3, v27, v3

    and-long/2addr v3, v10

    or-long v3, v22, v3

    or-long v22, v35, v10

    and-long v22, v22, v29

    and-long v22, v22, v37

    or-long v22, v33, v22

    and-long v22, v8, v22

    or-long v3, v3, v22

    and-long/2addr v1, v3

    or-long/2addr v1, v6

    or-long v3, v12, v41

    and-long/2addr v3, v8

    and-long v5, v46, v48

    and-long v7, v10, v39

    or-long/2addr v5, v7

    and-long/2addr v5, v14

    or-long/2addr v3, v5

    and-long v3, v3, v33

    or-long/2addr v1, v3

    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNBit:J

    and-long v1, v1, v25

    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNBit:J

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNNBit:J

    and-long v1, v1, v20

    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNNBit:J

    const/4 v1, 0x4

    :goto_2
    or-int/lit8 v2, v24, 0x4

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    goto :goto_3

    :cond_6
    move-object/from16 v45, v1

    move/from16 v17, v3

    move/from16 v19, v6

    :goto_3
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    move-object/from16 v2, v45

    if-nez v1, :cond_7

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-eqz v3, :cond_15

    :cond_7
    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x2

    const/16 v6, 0x8

    if-eqz v1, :cond_a

    iget-object v7, v2, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-eqz v7, :cond_e

    const/4 v8, 0x0

    aget-object v1, v1, v8

    array-length v1, v1

    aget-object v7, v7, v8

    array-length v7, v7

    if-ge v1, v7, :cond_9

    move v9, v8

    :goto_4
    if-lt v9, v6, :cond_8

    move v8, v1

    goto/16 :goto_8

    :cond_8
    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v11, v10, v9

    new-array v12, v7, [J

    aput-object v12, v10, v9

    invoke-static {v11, v8, v12, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_9
    move/from16 v60, v8

    move v8, v7

    move/from16 v7, v60

    goto :goto_8

    :cond_a
    const/4 v8, 0x0

    iget-object v1, v2, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-eqz v1, :cond_e

    new-array v1, v6, [[J

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    iget-object v7, v2, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v7, v7, v8

    array-length v9, v7

    new-array v10, v9, [J

    aput-object v10, v1, v8

    invoke-static {v7, v8, v10, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v2, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const/4 v7, 0x1

    aget-object v1, v1, v7

    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    new-array v11, v9, [J

    aput-object v11, v10, v7

    invoke-static {v1, v8, v11, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v19, :cond_c

    move v1, v5

    :goto_5
    if-lt v1, v6, :cond_b

    goto :goto_7

    :cond_b
    iget-object v7, v2, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v7, v7, v1

    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    new-array v11, v9, [J

    aput-object v11, v10, v1

    invoke-static {v7, v8, v11, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_c
    move v1, v5

    :goto_6
    if-lt v1, v6, :cond_d

    iget-object v1, v2, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v1, v1, v4

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v7, v7, v4

    invoke-static {v1, v8, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v2, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v1, v1, v3

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v7, v7, v3

    invoke-static {v1, v8, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    :cond_d
    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    new-array v8, v9, [J

    aput-object v8, v7, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v8, 0x0

    goto :goto_6

    :cond_e
    :goto_7
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_8
    if-eqz p2, :cond_f

    const/4 v1, 0x0

    :goto_9
    if-lt v1, v8, :cond_11

    :goto_a
    if-lt v1, v7, :cond_10

    :cond_f
    const/4 v10, 0x0

    goto :goto_b

    :cond_10
    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const/4 v10, 0x0

    aget-object v11, v9, v10

    iget-object v12, v2, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v13, v12, v10

    aget-wide v14, v13, v1

    aput-wide v14, v11, v1

    const/4 v11, 0x1

    aget-object v9, v9, v11

    aget-object v12, v12, v11

    aget-wide v11, v12, v1

    aput-wide v11, v9, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_11
    const/4 v10, 0x0

    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v11, v9, v10

    aget-wide v12, v11, v1

    iget-object v14, v2, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v15, v14, v10

    aget-wide v20, v15, v1

    or-long v12, v12, v20

    aput-wide v12, v11, v1

    const/4 v11, 0x1

    aget-object v9, v9, v11

    aget-wide v12, v9, v1

    aget-object v14, v14, v11

    aget-wide v20, v14, v1

    or-long v12, v12, v20

    aput-wide v12, v9, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :goto_b
    if-nez v17, :cond_13

    if-ge v7, v8, :cond_12

    goto :goto_c

    :cond_12
    move v8, v7

    :goto_c
    move v7, v8

    move v8, v10

    :cond_13
    if-nez v19, :cond_14

    move v7, v10

    move v8, v7

    :cond_14
    :goto_d
    if-lt v10, v8, :cond_18

    move v1, v10

    :goto_e
    if-lt v1, v7, :cond_16

    :cond_15
    return-object v0

    :cond_16
    move v3, v5

    :goto_f
    if-lt v3, v6, :cond_17

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_17
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v4, v4, v3

    iget-object v8, v2, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v8, v8, v3

    aget-wide v9, v8, v1

    aput-wide v9, v4, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_18
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v9, v1, v5

    aget-wide v11, v9, v10

    const/4 v13, 0x3

    aget-object v14, v1, v13

    aget-wide v17, v14, v10

    const/4 v15, 0x4

    aget-object v19, v1, v15

    aget-wide v20, v19, v10

    const/4 v15, 0x5

    aget-object v22, v1, v15

    aget-wide v23, v22, v10

    and-long v25, v11, v17

    and-long v25, v25, v20

    move/from16 v27, v7

    and-long v6, v25, v23

    iget-object v15, v2, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v25, v15, v3

    aget-wide v28, v25, v10

    aget-object v26, v15, v4

    aget-wide v30, v26, v10

    or-long v30, v30, v6

    not-long v6, v6

    or-long v6, v6, v28

    and-long/2addr v11, v6

    and-long v30, v6, v30

    and-long v3, v30, v17

    and-long v17, v6, v28

    move-object/from16 v29, v14

    and-long v13, v17, v20

    and-long v6, v23, v6

    or-long v17, v3, v13

    or-long v17, v17, v6

    and-long v11, v11, v17

    aget-object v17, v15, v5

    move-object/from16 v18, v1

    aget-wide v0, v17, v10

    and-long v20, v13, v6

    const/16 v17, 0x3

    aget-object v17, v15, v17

    move-wide/from16 v30, v6

    aget-wide v5, v17, v10

    move/from16 v17, v8

    not-long v7, v5

    and-long v34, v20, v7

    const/16 v24, 0x5

    aget-object v24, v15, v24

    move-wide/from16 v36, v5

    aget-wide v5, v24, v10

    move-wide/from16 v38, v0

    not-long v0, v5

    and-long v34, v34, v0

    move-wide/from16 v40, v5

    move-wide/from16 v5, v30

    move-wide/from16 v30, v11

    not-long v11, v5

    move-wide/from16 v42, v5

    not-long v5, v13

    or-long v44, v11, v5

    move-wide/from16 v46, v13

    not-long v13, v3

    and-long v48, v13, v7

    const/16 v16, 0x4

    aget-object v15, v15, v16

    move-wide/from16 v50, v13

    aget-wide v13, v15, v10

    move-wide/from16 v52, v7

    not-long v7, v13

    and-long v54, v3, v7

    and-long v54, v54, v0

    or-long v54, v48, v54

    and-long v44, v44, v54

    or-long v34, v34, v44

    and-long v34, v30, v34

    or-long v34, v38, v34

    aput-wide v34, v9, v10

    or-long v34, v0, v7

    and-long v44, v5, v11

    or-long v34, v34, v44

    and-long v34, v34, v36

    and-long v44, v7, v0

    move-wide/from16 v54, v7

    move-wide/from16 v7, v38

    move-wide/from16 v38, v0

    not-long v0, v7

    move-wide/from16 v56, v13

    move-wide/from16 v13, v30

    move-wide/from16 v30, v11

    not-long v11, v13

    or-long v58, v5, v11

    and-long v58, v0, v58

    or-long v44, v44, v58

    and-long v58, v13, v36

    or-long v44, v44, v58

    and-long v44, v3, v44

    or-long v34, v34, v44

    aput-wide v34, v29, v10

    or-long v28, v36, v3

    or-long v28, v28, v11

    and-long v28, v0, v28

    or-long v34, v40, v52

    and-long v44, v13, v46

    or-long v34, v34, v44

    and-long v34, v7, v34

    or-long v28, v28, v34

    and-long v34, v11, v50

    and-long v34, v34, v30

    or-long v28, v28, v34

    and-long v28, v56, v28

    and-long v34, v46, v52

    and-long v38, v34, v38

    or-long v28, v28, v38

    and-long v38, v50, v42

    or-long v38, v38, v11

    and-long v38, v38, v46

    and-long v44, v13, v50

    and-long v44, v44, v30

    and-long v44, v44, v36

    or-long v38, v38, v44

    and-long v38, v0, v38

    or-long v28, v28, v38

    aput-wide v28, v19, v10

    and-long v28, v5, v54

    or-long v38, v46, v50

    and-long v38, v38, v52

    or-long v38, v28, v38

    and-long v38, v42, v38

    and-long v34, v34, v40

    and-long v44, v3, v36

    and-long v58, v46, v30

    and-long v58, v58, v54

    or-long v58, v40, v58

    and-long v44, v44, v58

    or-long v34, v34, v44

    and-long v34, v13, v34

    or-long v34, v38, v34

    and-long v0, v0, v34

    and-long v30, v50, v30

    and-long v30, v30, v54

    or-long v19, v20, v30

    and-long v19, v19, v40

    or-long v30, v56, v42

    and-long v30, v30, v40

    and-long v5, v5, v42

    and-long v5, v5, v36

    and-long v5, v5, v56

    or-long v5, v30, v5

    and-long/2addr v5, v3

    or-long v5, v19, v5

    or-long v19, v42, v3

    and-long v19, v19, v36

    and-long v19, v19, v56

    or-long v19, v40, v19

    and-long v19, v11, v19

    or-long v5, v5, v19

    and-long/2addr v5, v7

    or-long/2addr v0, v5

    or-long v5, v28, v48

    and-long/2addr v5, v11

    and-long v7, v52, v54

    and-long v3, v3, v46

    or-long/2addr v3, v7

    and-long/2addr v3, v13

    or-long/2addr v3, v5

    and-long v3, v3, v40

    or-long/2addr v0, v3

    aput-wide v0, v22, v10

    const/4 v0, 0x6

    aget-object v1, v18, v0

    aget-wide v3, v1, v10

    aget-wide v5, v26, v10

    and-long/2addr v3, v5

    aput-wide v3, v1, v10

    const/4 v1, 0x7

    aget-object v3, v18, v1

    aget-wide v4, v3, v10

    aget-wide v6, v25, v10

    and-long/2addr v4, v6

    aput-wide v4, v3, v10

    add-int/lit8 v10, v10, 0x1

    move v4, v0

    move v3, v1

    move/from16 v8, v17

    move/from16 v7, v27

    const/4 v5, 0x2

    const/16 v6, 0x8

    move-object/from16 v0, p0

    goto/16 :goto_d
.end method

.method private createExtraSpace(I)V
    .locals 4

    const/16 v0, 0x8

    new-array v1, v0, [[J

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const/4 v0, 0x6

    aget-object p1, p1, v0

    const-wide/16 v0, -0x1

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const/4 v2, 0x7

    aget-object p1, p1, v2

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    new-array v3, p1, [J

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static fakeInitializedFlowInfo(II)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;-><init>()V

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->maxFieldCount:I

    const/4 v1, 0x0

    :goto_0
    if-lt v1, p0, :cond_0

    return-object v0

    :cond_0
    add-int v2, v1, p1

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->markAsDefinitelyAssigned(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private final isDefinitelyAssigned(I)Z
    .locals 10

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x40

    if-ge p1, v6, :cond_1

    .line 1
    iget-wide v6, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->definiteInits:J

    shl-long/2addr v2, p1

    and-long/2addr v2, v6

    cmp-long p1, v2, v0

    if-eqz p1, :cond_0

    return v4

    :cond_0
    return v5

    .line 2
    :cond_1
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-nez v7, :cond_2

    return v5

    .line 3
    :cond_2
    div-int/lit8 v8, p1, 0x40

    sub-int/2addr v8, v4

    .line 4
    aget-object v7, v7, v5

    array-length v9, v7

    if-lt v8, v9, :cond_3

    return v5

    .line 5
    :cond_3
    aget-wide v8, v7, v8

    .line 6
    rem-int/2addr p1, v6

    shl-long/2addr v2, p1

    and-long/2addr v2, v8

    cmp-long p1, v2, v0

    if-eqz p1, :cond_4

    return v4

    :cond_4
    return v5
.end method

.method private final isPotentiallyAssigned(I)Z
    .locals 10

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x40

    if-ge p1, v6, :cond_1

    .line 1
    iget-wide v6, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->potentialInits:J

    shl-long/2addr v2, p1

    and-long/2addr v2, v6

    cmp-long p1, v2, v0

    if-eqz p1, :cond_0

    return v4

    :cond_0
    return v5

    .line 2
    :cond_1
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-nez v7, :cond_2

    return v5

    .line 3
    :cond_2
    div-int/lit8 v8, p1, 0x40

    sub-int/2addr v8, v4

    .line 4
    aget-object v9, v7, v5

    array-length v9, v9

    if-lt v8, v9, :cond_3

    return v5

    .line 5
    :cond_3
    aget-object v7, v7, v4

    aget-wide v8, v7, v8

    .line 6
    rem-int/2addr p1, v6

    shl-long/2addr v2, p1

    and-long/2addr v2, v8

    cmp-long p1, v2, v0

    if-eqz p1, :cond_4

    return v4

    :cond_4
    return v5
.end method

.method public static isTrue(ZLjava/lang/String;)Z
    .locals 2

    if-eqz p0, :cond_0

    return p0

    :cond_0
    new-instance p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo$AssertionFailedException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "assertion failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo$AssertionFailedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final markAsDefinitelyAssigned(I)V
    .locals 11

    .line 1
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    if-eq p0, v0, :cond_4

    const-wide/16 v0, 0x1

    const/16 v2, 0x40

    if-ge p1, v2, :cond_0

    .line 2
    iget-wide v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->definiteInits:J

    shl-long/2addr v0, p1

    or-long/2addr v2, v0

    iput-wide v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->definiteInits:J

    .line 3
    iget-wide v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->potentialInits:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->potentialInits:J

    goto :goto_2

    .line 4
    :cond_0
    div-int/lit8 v3, p1, 0x40

    add-int/lit8 v4, v3, -0x1

    .line 5
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const/4 v6, 0x0

    if-nez v5, :cond_1

    .line 6
    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->createExtraSpace(I)V

    goto :goto_1

    .line 7
    :cond_1
    aget-object v5, v5, v6

    array-length v5, v5

    if-lt v4, v5, :cond_3

    move v7, v6

    :goto_0
    const/16 v8, 0x8

    if-lt v7, v8, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v9, v8, v7

    .line 9
    new-array v10, v3, [J

    aput-object v10, v8, v7

    .line 10
    invoke-static {v9, v6, v10, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 11
    :cond_3
    :goto_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v5, v3, v6

    aget-wide v6, v5, v4

    .line 12
    rem-int/2addr p1, v2

    shl-long/2addr v0, p1

    or-long/2addr v6, v0

    .line 13
    aput-wide v6, v5, v4

    const/4 p1, 0x1

    .line 14
    aget-object p1, v3, p1

    aget-wide v2, p1, v4

    or-long/2addr v0, v2

    aput-wide v0, p1, v4

    :cond_4
    :goto_2
    return-void
.end method

.method public static numberOfEnclosingFields(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)I
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fieldCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public addInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->addInfoFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Z)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p1

    return-object p1
.end method

.method public addNullInfoFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->addInfoFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Z)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p1

    return-object p1
.end method

.method public addPotentialInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 10

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    if-ne p0, v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, v0, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p1

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->potentialInits:J

    iget-wide v2, p1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->potentialInits:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->potentialInits:J

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-eqz v3, :cond_8

    aget-object v0, v0, v1

    array-length v0, v0

    aget-object v3, v3, v1

    array-length v3, v3

    if-ge v0, v3, :cond_5

    move v4, v1

    :goto_0
    const/16 v5, 0x8

    if-lt v4, v5, :cond_4

    :goto_1
    if-lt v1, v0, :cond_3

    :goto_2
    if-lt v1, v3, :cond_2

    goto :goto_4

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v0, v0, v2

    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v4, v4, v2

    aget-wide v5, v4, v1

    aput-wide v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v4, v4, v2

    aget-wide v5, v4, v1

    iget-object v7, p1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v7, v7, v2

    aget-wide v8, v7, v1

    or-long/2addr v5, v8

    aput-wide v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v6, v5, v4

    new-array v7, v3, [J

    aput-object v7, v5, v4

    invoke-static {v6, v1, v7, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    if-lt v1, v3, :cond_6

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v0, v0, v2

    aget-wide v4, v0, v1

    iget-object v6, p1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v6, v6, v2

    aget-wide v7, v6, v1

    or-long/2addr v4, v7

    aput-wide v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-eqz v0, :cond_8

    aget-object v0, v0, v1

    array-length v0, v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->createExtraSpace(I)V

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v2, v4, v2

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    :goto_4
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->addPotentialNullInfoFrom(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    return-object p0
.end method

.method public addPotentialNullInfoFrom(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;
    .locals 53

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 v3, v2, 0x3

    if-nez v3, :cond_f

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 v4, v3, 0x3

    if-nez v4, :cond_f

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-nez v3, :cond_0

    goto/16 :goto_b

    :cond_0
    and-int/2addr v2, v4

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    iget-wide v8, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    iget-wide v10, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    iget-wide v12, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    and-long v14, v10, v12

    iget-wide v3, v1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    not-long v5, v3

    move-wide/from16 v18, v8

    iget-wide v7, v1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    move v9, v2

    move-wide/from16 v20, v3

    not-long v2, v7

    and-long v22, v5, v2

    move-wide/from16 v24, v7

    iget-wide v7, v1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    move-wide/from16 v26, v2

    iget-wide v2, v1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    and-long v28, v7, v2

    or-long v30, v22, v28

    and-long v14, v14, v30

    move-wide/from16 v30, v7

    iget-wide v7, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    not-long v0, v7

    move-wide/from16 v32, v7

    not-long v7, v12

    move-wide/from16 v34, v12

    not-long v12, v10

    or-long v36, v7, v12

    and-long v38, v36, v5

    or-long v38, v28, v38

    and-long v38, v0, v38

    or-long v14, v14, v38

    move-wide/from16 v38, v0

    not-long v0, v2

    and-long v26, v0, v26

    and-long v40, v30, v20

    or-long v42, v26, v40

    and-long v36, v36, v42

    and-long v36, v32, v36

    or-long v14, v14, v36

    and-long v14, v18, v14

    move-object/from16 v4, p0

    move-wide/from16 v36, v38

    iput-wide v14, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    move-wide/from16 v14, v30

    move-wide/from16 v30, v2

    not-long v2, v14

    or-long v38, v0, v2

    and-long v38, v20, v38

    or-long v26, v26, v20

    or-long v26, v26, v12

    move-wide/from16 v42, v12

    move-wide/from16 v12, v18

    move-wide/from16 v18, v0

    not-long v0, v12

    or-long v26, v26, v0

    and-long v26, v32, v26

    move-wide/from16 v44, v14

    or-long v14, v38, v26

    iput-wide v14, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    and-long v26, v2, v20

    or-long v38, v5, v10

    and-long v38, v32, v38

    or-long v26, v26, v38

    and-long v38, v0, v5

    or-long v26, v26, v38

    and-long v38, v12, v36

    and-long v38, v38, v7

    and-long v46, v38, v44

    or-long v26, v26, v46

    and-long v26, v30, v26

    and-long v30, v36, v34

    or-long v22, v22, v30

    or-long v0, v22, v0

    and-long/2addr v0, v10

    or-long v0, v26, v0

    and-long v22, v38, v20

    or-long v0, v0, v22

    iput-wide v0, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    and-long v22, v2, v18

    and-long v22, v22, v24

    or-long v26, v18, v40

    and-long v26, v34, v26

    or-long v22, v22, v26

    and-long v22, v42, v22

    and-long v26, v42, v44

    and-long v26, v26, v18

    and-long v2, v2, v24

    and-long v24, v44, v18

    or-long v24, v2, v24

    or-long v24, v24, v34

    and-long v24, v36, v24

    or-long v24, v26, v24

    and-long v24, v5, v24

    or-long v22, v22, v24

    or-long v5, v5, v28

    and-long v5, v34, v5

    and-long v12, v12, v32

    or-long v20, v20, v44

    and-long v7, v7, v20

    and-long v7, v7, v18

    or-long/2addr v2, v7

    and-long/2addr v2, v12

    or-long/2addr v2, v5

    and-long/2addr v2, v10

    or-long v2, v22, v2

    iput-wide v2, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    or-long/2addr v0, v14

    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    move-object/from16 v0, p1

    :goto_1
    const/4 v1, 0x1

    goto :goto_3

    :cond_2
    move-object/from16 v0, p1

    goto :goto_2

    :cond_3
    move-object v4, v0

    move v9, v2

    const-wide/16 v2, 0x0

    iput-wide v2, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    move-object/from16 v0, p1

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    iget-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    not-long v7, v5

    iget-wide v10, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    not-long v12, v10

    or-long v14, v7, v12

    and-long/2addr v14, v1

    iput-wide v14, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    not-long v1, v1

    or-long v18, v12, v1

    and-long v5, v5, v18

    iput-wide v5, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    and-long v18, v12, v7

    move-wide/from16 v20, v5

    iget-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    and-long v18, v18, v5

    and-long/2addr v7, v10

    and-long/2addr v5, v12

    or-long/2addr v5, v7

    and-long/2addr v1, v5

    or-long v1, v18, v1

    iput-wide v1, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    or-long v5, v14, v20

    or-long/2addr v1, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    const/4 v1, 0x0

    :goto_3
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-eqz v2, :cond_d

    const/16 v17, 0x0

    aget-object v2, v2, v17

    array-length v2, v2

    iget-object v3, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-nez v3, :cond_5

    invoke-direct {v4, v2}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->createExtraSpace(I)V

    move/from16 v3, v17

    move v6, v3

    goto :goto_5

    :cond_5
    aget-object v3, v3, v17

    array-length v5, v3

    if-le v2, v5, :cond_8

    array-length v3, v3

    const/4 v5, 0x0

    :goto_4
    const/16 v6, 0x8

    if-lt v5, v6, :cond_7

    if-nez v9, :cond_6

    const/4 v3, 0x0

    :cond_6
    const/4 v6, 0x0

    goto :goto_5

    :cond_7
    iget-object v6, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v7, v6, v5

    new-array v8, v2, [J

    aput-object v8, v6, v5

    const/4 v6, 0x0

    invoke-static {v7, v6, v8, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    const/4 v6, 0x0

    move v3, v2

    :goto_5
    move v5, v6

    :goto_6
    const/4 v7, 0x2

    const/4 v8, 0x3

    if-lt v5, v3, :cond_b

    :goto_7
    if-lt v5, v2, :cond_9

    goto/16 :goto_a

    :cond_9
    iget-object v3, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v9, v3, v7

    const-wide/16 v10, 0x0

    aput-wide v10, v9, v5

    aget-object v9, v3, v8

    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v11, v10, v8

    aget-wide v12, v11, v5

    const/4 v11, 0x4

    aget-object v14, v10, v11

    move-object/from16 v17, v9

    aget-wide v8, v14, v5

    move-wide/from16 v18, v12

    not-long v11, v8

    aget-object v13, v10, v7

    aget-wide v6, v13, v5

    not-long v14, v6

    or-long v22, v11, v14

    and-long v22, v18, v22

    aput-wide v22, v17, v5

    const/16 v16, 0x4

    aget-object v22, v3, v16

    move/from16 v24, v1

    move/from16 v23, v2

    move-wide/from16 v1, v18

    not-long v1, v1

    or-long v18, v14, v1

    and-long v8, v8, v18

    aput-wide v8, v22, v5

    const/4 v8, 0x5

    aget-object v3, v3, v8

    and-long v18, v14, v11

    aget-object v9, v10, v8

    aget-wide v25, v9, v5

    and-long v9, v18, v25

    and-long/2addr v6, v11

    and-long v11, v14, v25

    or-long/2addr v6, v11

    and-long/2addr v1, v6

    or-long/2addr v1, v9

    aput-wide v1, v3, v5

    aget-wide v6, v17, v5

    aget-wide v9, v22, v5

    or-long/2addr v6, v9

    or-long/2addr v1, v6

    const-wide/16 v6, 0x0

    cmp-long v1, v1, v6

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_8

    :cond_a
    move/from16 v1, v24

    :goto_8
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v23

    const/4 v7, 0x2

    const/4 v8, 0x3

    goto :goto_7

    :cond_b
    move/from16 v23, v2

    iget-object v2, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const/4 v6, 0x2

    aget-object v7, v2, v6

    aget-wide v9, v7, v5

    const/4 v6, 0x4

    aget-object v11, v2, v6

    aget-wide v14, v11, v5

    const/4 v6, 0x5

    aget-object v8, v2, v6

    move-object v12, v7

    aget-wide v6, v8, v5

    and-long v18, v14, v6

    iget-object v13, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const/16 v17, 0x3

    aget-object v22, v13, v17

    move/from16 v24, v1

    move-wide v0, v14

    aget-wide v14, v22, v5

    move/from16 v22, v3

    not-long v3, v14

    const/16 v21, 0x5

    aget-object v21, v13, v21

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    aget-wide v11, v21, v5

    move-wide/from16 v27, v9

    move-object v10, v8

    not-long v8, v11

    and-long v29, v3, v8

    const/16 v20, 0x2

    aget-object v20, v13, v20

    move-wide/from16 v31, v11

    move-object v12, v10

    aget-wide v10, v20, v5

    const/16 v16, 0x4

    aget-object v13, v13, v16

    move-object/from16 v20, v12

    aget-wide v12, v13, v5

    and-long v33, v10, v12

    or-long v35, v29, v33

    and-long v18, v18, v35

    const/16 v17, 0x3

    aget-object v2, v2, v17

    move-wide/from16 v35, v10

    aget-wide v10, v2, v5

    move-wide/from16 v37, v14

    not-long v14, v10

    move-wide/from16 v39, v10

    not-long v10, v6

    move-wide/from16 v41, v6

    not-long v6, v0

    or-long v43, v10, v6

    and-long v45, v43, v3

    or-long v45, v33, v45

    and-long v45, v14, v45

    or-long v18, v18, v45

    move-wide/from16 v45, v10

    not-long v10, v12

    and-long/2addr v8, v10

    and-long v47, v35, v37

    or-long v49, v8, v47

    and-long v43, v43, v49

    and-long v43, v39, v43

    or-long v18, v18, v43

    and-long v18, v27, v18

    aput-wide v18, v26, v5

    move-wide/from16 v18, v12

    move-wide/from16 v12, v35

    move-wide/from16 v35, v14

    not-long v14, v12

    or-long v43, v10, v14

    and-long v43, v37, v43

    or-long v8, v8, v37

    or-long/2addr v8, v6

    move-wide/from16 v49, v6

    move-wide/from16 v6, v27

    move-wide/from16 v26, v10

    not-long v10, v6

    or-long/2addr v8, v10

    and-long v8, v39, v8

    or-long v8, v43, v8

    aput-wide v8, v2, v5

    and-long v8, v14, v37

    or-long v43, v3, v0

    and-long v43, v39, v43

    or-long v8, v8, v43

    and-long v43, v10, v3

    or-long v8, v8, v43

    and-long v43, v6, v35

    and-long v43, v43, v45

    and-long v51, v43, v12

    or-long v8, v8, v51

    and-long v8, v18, v8

    and-long v18, v35, v41

    or-long v18, v29, v18

    or-long v10, v18, v10

    and-long/2addr v10, v0

    or-long/2addr v8, v10

    and-long v10, v43, v37

    or-long/2addr v8, v10

    aput-wide v8, v25, v5

    and-long v8, v14, v26

    and-long v8, v8, v31

    or-long v10, v26, v47

    and-long v10, v41, v10

    or-long/2addr v8, v10

    and-long v8, v49, v8

    and-long v10, v49, v12

    and-long v10, v10, v26

    and-long v14, v14, v31

    and-long v18, v12, v26

    or-long v18, v14, v18

    or-long v18, v18, v41

    and-long v18, v35, v18

    or-long v10, v10, v18

    and-long/2addr v10, v3

    or-long/2addr v8, v10

    or-long v3, v3, v33

    and-long v3, v41, v3

    and-long v6, v6, v39

    or-long v10, v37, v12

    and-long v10, v45, v10

    and-long v10, v10, v26

    or-long/2addr v10, v14

    and-long/2addr v6, v10

    or-long/2addr v3, v6

    and-long/2addr v0, v3

    or-long/2addr v0, v8

    aput-wide v0, v20, v5

    aget-wide v3, v2, v5

    aget-wide v6, v25, v5

    or-long v2, v3, v6

    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    goto :goto_9

    :cond_c
    move/from16 v1, v24

    :goto_9
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v4, p0

    move-object/from16 v0, p1

    move/from16 v3, v22

    move/from16 v2, v23

    goto/16 :goto_6

    :cond_d
    :goto_a
    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    const/4 v2, 0x4

    or-int/2addr v1, v2

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    goto :goto_b

    :cond_e
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/2addr v1, v2

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    :cond_f
    :goto_b
    return-object v0
.end method

.method public final canOnlyBeNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v5, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v7, 0x2

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->maxFieldCount:I

    add-int/2addr v1, v2

    const-wide/16 v5, 0x1

    const/4 v2, 0x1

    const/16 v9, 0x40

    if-ge v1, v9, :cond_2

    iget-wide v9, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    iget-wide v11, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    and-long/2addr v9, v11

    iget-wide v11, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    not-long v11, v11

    iget-wide v13, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    not-long v13, v13

    or-long/2addr v11, v13

    and-long/2addr v9, v11

    shl-long/2addr v5, v1

    and-long/2addr v5, v9

    cmp-long v1, v5, v7

    if-eqz v1, :cond_1

    return v2

    :cond_1
    return v4

    :cond_2
    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-nez v10, :cond_3

    return v4

    :cond_3
    div-int/lit8 v11, v1, 0x40

    sub-int/2addr v11, v2

    aget-object v12, v10, v4

    array-length v12, v12

    if-lt v11, v12, :cond_4

    return v4

    :cond_4
    const/4 v12, 0x2

    aget-object v12, v10, v12

    aget-wide v13, v12, v11

    const/4 v12, 0x3

    aget-object v12, v10, v12

    aget-wide v15, v12, v11

    and-long v12, v13, v15

    aget-object v3, v10, v3

    aget-wide v14, v3, v11

    not-long v14, v14

    const/4 v3, 0x5

    aget-object v3, v10, v3

    aget-wide v10, v3, v11

    not-long v10, v10

    or-long/2addr v10, v14

    and-long/2addr v10, v12

    rem-int/2addr v1, v9

    shl-long/2addr v5, v1

    and-long/2addr v5, v10

    cmp-long v1, v5, v7

    if-eqz v1, :cond_5

    return v2

    :cond_5
    :goto_0
    return v4
.end method

.method public final cannotBeDefinitelyNullOrNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v5, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v7, 0x2

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->maxFieldCount:I

    add-int/2addr v1, v2

    const-wide/16 v5, 0x1

    const/16 v9, 0x40

    if-ge v1, v9, :cond_2

    iget-wide v9, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    not-long v9, v9

    iget-wide v11, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    iget-wide v13, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    and-long v15, v11, v13

    iget-wide v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    or-long/2addr v15, v2

    and-long/2addr v9, v15

    not-long v11, v11

    not-long v13, v13

    and-long/2addr v11, v13

    and-long/2addr v2, v11

    or-long/2addr v2, v9

    shl-long/2addr v5, v1

    and-long v1, v2, v5

    cmp-long v1, v1, v7

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    return v4

    :cond_2
    const/4 v2, 0x1

    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-nez v10, :cond_3

    return v4

    :cond_3
    div-int/lit8 v11, v1, 0x40

    sub-int/2addr v11, v2

    aget-object v2, v10, v4

    array-length v2, v2

    if-lt v11, v2, :cond_4

    return v4

    :cond_4
    const/4 v2, 0x2

    aget-object v2, v10, v2

    aget-wide v12, v2, v11

    not-long v12, v12

    const/4 v2, 0x3

    aget-object v2, v10, v2

    aget-wide v14, v2, v11

    aget-object v2, v10, v3

    aget-wide v7, v2, v11

    and-long v2, v14, v7

    const/16 v17, 0x5

    aget-object v10, v10, v17

    aget-wide v17, v10, v11

    or-long v2, v2, v17

    and-long/2addr v2, v12

    not-long v10, v14

    not-long v7, v7

    and-long/2addr v7, v10

    and-long v7, v7, v17

    or-long/2addr v2, v7

    rem-int/2addr v1, v9

    shl-long/2addr v5, v1

    and-long v1, v2, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    return v1

    :cond_5
    :goto_0
    return v4
.end method

.method public final cannotBeNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v5, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v7, 0x2

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->maxFieldCount:I

    add-int/2addr v1, v2

    const-wide/16 v5, 0x1

    const/4 v2, 0x1

    const/16 v9, 0x40

    if-ge v1, v9, :cond_2

    iget-wide v9, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    iget-wide v11, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    and-long/2addr v9, v11

    iget-wide v11, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    iget-wide v13, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    and-long/2addr v13, v11

    not-long v11, v11

    or-long/2addr v11, v13

    and-long/2addr v9, v11

    shl-long/2addr v5, v1

    and-long/2addr v5, v9

    cmp-long v1, v5, v7

    if-eqz v1, :cond_1

    return v2

    :cond_1
    return v4

    :cond_2
    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-nez v10, :cond_3

    return v4

    :cond_3
    div-int/lit8 v11, v1, 0x40

    sub-int/2addr v11, v2

    aget-object v12, v10, v4

    array-length v12, v12

    if-lt v11, v12, :cond_4

    return v4

    :cond_4
    const/4 v12, 0x2

    aget-object v12, v10, v12

    aget-wide v13, v12, v11

    aget-object v3, v10, v3

    aget-wide v15, v3, v11

    and-long v12, v13, v15

    const/4 v3, 0x3

    aget-object v3, v10, v3

    aget-wide v14, v3, v11

    const/4 v3, 0x5

    aget-object v3, v10, v3

    aget-wide v10, v3, v11

    and-long/2addr v10, v14

    not-long v14, v14

    or-long/2addr v10, v14

    and-long/2addr v10, v12

    rem-int/2addr v1, v9

    shl-long/2addr v5, v1

    and-long/2addr v5, v10

    cmp-long v1, v5, v7

    if-eqz v1, :cond_5

    return v2

    :cond_5
    :goto_0
    return v4
.end method

.method public copy()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 8

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    if-ne p0, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;-><init>()V

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->definiteInits:J

    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->definiteInits:J

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->potentialInits:J

    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->potentialInits:J

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 v2, v1, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    if-eqz v2, :cond_2

    iget-wide v5, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    iput-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    iget-wide v5, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    iput-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    iget-wide v5, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    iput-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    iget-wide v5, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    iput-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    :cond_2
    iget-wide v5, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNBit:J

    iput-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNBit:J

    iget-wide v5, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNNBit:J

    iput-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNNBit:J

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->maxFieldCount:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->maxFieldCount:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-eqz v1, :cond_6

    const/16 v1, 0x8

    new-array v1, v1, [[J

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v5, v5, v4

    array-length v6, v5

    new-array v7, v6, [J

    aput-object v7, v1, v4

    invoke-static {v5, v4, v7, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v1, v1, v3

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    new-array v7, v6, [J

    aput-object v7, v5, v3

    invoke-static {v1, v4, v7, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x2

    const/4 v3, 0x6

    if-eqz v2, :cond_4

    :goto_1
    if-lt v1, v3, :cond_3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v2, v2, v1

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    new-array v7, v6, [J

    aput-object v7, v5, v1

    invoke-static {v2, v4, v7, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-lt v1, v3, :cond_5

    :goto_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v1, v1, v3

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    new-array v5, v6, [J

    aput-object v5, v2, v3

    invoke-static {v1, v4, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const/4 v2, 0x7

    aget-object v1, v1, v2

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    new-array v5, v6, [J

    aput-object v5, v3, v2

    invoke-static {v1, v4, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_5
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    new-array v5, v6, [J

    aput-object v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    return-object v0
.end method

.method public discardInitializationInfo()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;
    .locals 8

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    if-ne p0, v0, :cond_0

    return-object p0

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->potentialInits:J

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->definiteInits:J

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v6, v5, v3

    const/4 v7, 0x1

    aget-object v5, v5, v7

    aput-wide v0, v5, v4

    aput-wide v0, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public discardNonFieldInitializations()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;
    .locals 11

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->maxFieldCount:I

    const-wide/16 v1, 0x1

    const/16 v3, 0x40

    if-ge v0, v3, :cond_0

    shl-long v4, v1, v0

    sub-long/2addr v4, v1

    iget-wide v6, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->definiteInits:J

    and-long/2addr v6, v4

    iput-wide v6, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->definiteInits:J

    iget-wide v6, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->potentialInits:J

    and-long/2addr v6, v4

    iput-wide v6, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->potentialInits:J

    iget-wide v6, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    and-long/2addr v6, v4

    iput-wide v6, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    iget-wide v6, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    and-long/2addr v6, v4

    iput-wide v6, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    iget-wide v6, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    and-long/2addr v6, v4

    iput-wide v6, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    iget-wide v6, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    and-long/2addr v6, v4

    iput-wide v6, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    iget-wide v6, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNBit:J

    and-long/2addr v6, v4

    iput-wide v6, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNBit:J

    iget-wide v6, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNNBit:J

    and-long/2addr v4, v6

    iput-wide v4, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNNBit:J

    :cond_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-nez v4, :cond_1

    return-object p0

    :cond_1
    const/4 v5, 0x0

    aget-object v4, v4, v5

    array-length v4, v4

    div-int/lit8 v6, v0, 0x40

    add-int/lit8 v7, v6, -0x1

    if-lt v7, v4, :cond_2

    return-object p0

    :cond_2
    const/16 v8, 0x8

    if-ltz v7, :cond_4

    rem-int/2addr v0, v3

    shl-long v9, v1, v0

    sub-long/2addr v9, v1

    move v0, v5

    :goto_0
    if-lt v0, v8, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v1, v1, v0

    aget-wide v2, v1, v7

    and-long/2addr v2, v9

    aput-wide v2, v1, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-lt v6, v4, :cond_5

    return-object p0

    :cond_5
    move v0, v5

    :goto_2
    if-lt v0, v8, :cond_6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v1, v1, v0

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public final hasNullInfoFor(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x0

    if-nez v2, :cond_5

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->maxFieldCount:I

    add-int/2addr v1, v4

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1

    const/4 v8, 0x1

    const/16 v9, 0x40

    if-ge v1, v9, :cond_2

    iget-wide v9, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    iget-wide v11, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    or-long/2addr v9, v11

    iget-wide v11, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    or-long/2addr v9, v11

    iget-wide v11, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    or-long/2addr v9, v11

    shl-long v1, v6, v1

    and-long/2addr v1, v9

    cmp-long v1, v1, v4

    if-eqz v1, :cond_1

    return v8

    :cond_1
    return v3

    :cond_2
    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-nez v10, :cond_3

    return v3

    :cond_3
    div-int/lit8 v11, v1, 0x40

    sub-int/2addr v11, v8

    const/4 v12, 0x2

    aget-object v12, v10, v12

    array-length v13, v12

    if-lt v11, v13, :cond_4

    return v3

    :cond_4
    aget-wide v13, v12, v11

    const/4 v12, 0x3

    aget-object v12, v10, v12

    aget-wide v15, v12, v11

    or-long v12, v13, v15

    aget-object v2, v10, v2

    aget-wide v14, v2, v11

    or-long/2addr v12, v14

    const/4 v2, 0x5

    aget-object v2, v10, v2

    aget-wide v10, v2, v11

    or-long/2addr v10, v12

    rem-int/2addr v1, v9

    shl-long v1, v6, v1

    and-long/2addr v1, v10

    cmp-long v1, v1, v4

    if-eqz v1, :cond_5

    return v8

    :cond_5
    :goto_0
    return v3
.end method

.method public initsWhenFalse()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 0

    return-object p0
.end method

.method public initsWhenTrue()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 0

    return-object p0
.end method

.method public final isDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Z
    .locals 2

    .line 7
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    .line 8
    :cond_0
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->isDefinitelyAssigned(I)Z

    move-result p1

    return p1
.end method

.method public final isDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
    .locals 3

    .line 9
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    return v1

    .line 10
    :cond_0
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->maxFieldCount:I

    add-int/2addr p1, v0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->isDefinitelyAssigned(I)Z

    move-result p1

    return p1
.end method

.method public final isDefinitelyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 v3, v2, 0x3

    const/4 v4, 0x0

    if-nez v3, :cond_8

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v5, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v7, 0x2

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    const/4 v5, 0x1

    if-nez v2, :cond_7

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->constant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v2

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v2, v6, :cond_1

    goto :goto_0

    :cond_1
    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->maxFieldCount:I

    add-int/2addr v1, v2

    const-wide/16 v9, 0x1

    const/16 v2, 0x40

    if-ge v1, v2, :cond_3

    iget-wide v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    iget-wide v11, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    and-long/2addr v2, v11

    iget-wide v11, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    not-long v11, v11

    iget-wide v13, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    or-long/2addr v11, v13

    and-long/2addr v2, v11

    shl-long/2addr v9, v1

    and-long v1, v2, v9

    cmp-long v1, v1, v7

    if-eqz v1, :cond_2

    return v5

    :cond_2
    return v4

    :cond_3
    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-nez v6, :cond_4

    return v4

    :cond_4
    div-int/lit8 v11, v1, 0x40

    sub-int/2addr v11, v5

    const/4 v12, 0x2

    aget-object v12, v6, v12

    array-length v13, v12

    if-lt v11, v13, :cond_5

    return v4

    :cond_5
    aget-wide v13, v12, v11

    aget-object v3, v6, v3

    aget-wide v15, v3, v11

    and-long v12, v13, v15

    const/4 v3, 0x3

    aget-object v3, v6, v3

    aget-wide v14, v3, v11

    not-long v14, v14

    const/4 v3, 0x5

    aget-object v3, v6, v3

    aget-wide v16, v3, v11

    or-long v14, v14, v16

    and-long v11, v12, v14

    rem-int/2addr v1, v2

    shl-long v1, v9, v1

    and-long/2addr v1, v11

    cmp-long v1, v1, v7

    if-eqz v1, :cond_6

    return v5

    :cond_6
    return v4

    :cond_7
    :goto_0
    return v5

    :cond_8
    :goto_1
    return v4
.end method

.method public final isDefinitelyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 v3, v2, 0x3

    const/4 v4, 0x0

    if-nez v3, :cond_5

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-eqz v2, :cond_5

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v5, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v7, 0x2

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->maxFieldCount:I

    add-int/2addr v1, v2

    const-wide/16 v5, 0x1

    const/4 v2, 0x1

    const/16 v9, 0x40

    if-ge v1, v9, :cond_2

    iget-wide v9, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    iget-wide v11, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    and-long/2addr v9, v11

    iget-wide v11, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    not-long v11, v11

    iget-wide v13, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    not-long v13, v13

    or-long/2addr v11, v13

    and-long/2addr v9, v11

    shl-long/2addr v5, v1

    and-long/2addr v5, v9

    cmp-long v1, v5, v7

    if-eqz v1, :cond_1

    return v2

    :cond_1
    return v4

    :cond_2
    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-nez v10, :cond_3

    return v4

    :cond_3
    div-int/lit8 v11, v1, 0x40

    sub-int/2addr v11, v2

    const/4 v12, 0x2

    aget-object v12, v10, v12

    array-length v13, v12

    if-lt v11, v13, :cond_4

    return v4

    :cond_4
    aget-wide v13, v12, v11

    const/4 v12, 0x3

    aget-object v12, v10, v12

    aget-wide v15, v12, v11

    and-long v12, v13, v15

    aget-object v3, v10, v3

    aget-wide v14, v3, v11

    not-long v14, v14

    const/4 v3, 0x5

    aget-object v3, v10, v3

    aget-wide v10, v3, v11

    not-long v10, v10

    or-long/2addr v10, v14

    and-long/2addr v10, v12

    rem-int/2addr v1, v9

    shl-long/2addr v5, v1

    and-long/2addr v5, v10

    cmp-long v1, v5, v7

    if-eqz v1, :cond_5

    return v2

    :cond_5
    :goto_0
    return v4
.end method

.method public final isDefinitelyUnknown(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move-object/from16 v1, p1

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->maxFieldCount:I

    add-int/2addr v1, v4

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1

    const/4 v8, 0x1

    const/16 v9, 0x40

    if-ge v1, v9, :cond_3

    iget-wide v9, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    iget-wide v11, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    and-long/2addr v9, v11

    iget-wide v11, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    not-long v11, v11

    and-long/2addr v9, v11

    iget-wide v11, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    not-long v11, v11

    and-long/2addr v9, v11

    shl-long v1, v6, v1

    and-long/2addr v1, v9

    cmp-long v1, v1, v4

    if-eqz v1, :cond_2

    return v8

    :cond_2
    return v3

    :cond_3
    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-nez v10, :cond_4

    return v3

    :cond_4
    div-int/lit8 v11, v1, 0x40

    sub-int/2addr v11, v8

    const/4 v12, 0x2

    aget-object v12, v10, v12

    array-length v13, v12

    if-lt v11, v13, :cond_5

    return v3

    :cond_5
    aget-wide v13, v12, v11

    const/4 v12, 0x5

    aget-object v12, v10, v12

    aget-wide v15, v12, v11

    and-long v12, v13, v15

    const/4 v14, 0x3

    aget-object v14, v10, v14

    aget-wide v3, v14, v11

    not-long v3, v3

    and-long/2addr v3, v12

    aget-object v2, v10, v2

    aget-wide v10, v2, v11

    not-long v10, v10

    and-long v2, v3, v10

    rem-int/2addr v1, v9

    shl-long v4, v6, v1

    and-long v1, v2, v4

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6

    return v8

    :cond_6
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isPotentiallyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Z
    .locals 0

    .line 7
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->isPotentiallyAssigned(I)Z

    move-result p1

    return p1
.end method

.method public final isPotentiallyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
    .locals 2

    .line 8
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->constant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 9
    :cond_0
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->maxFieldCount:I

    add-int/2addr p1, v0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->isPotentiallyAssigned(I)Z

    move-result p1

    return p1
.end method

.method public final isPotentiallyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v5, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v7, 0x2

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->maxFieldCount:I

    add-int/2addr v1, v2

    const-wide/16 v5, 0x1

    const/4 v2, 0x1

    const/16 v9, 0x40

    if-ge v1, v9, :cond_2

    iget-wide v9, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    iget-wide v11, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    not-long v11, v11

    iget-wide v13, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    not-long v13, v13

    or-long/2addr v11, v13

    and-long/2addr v9, v11

    shl-long/2addr v5, v1

    and-long/2addr v5, v9

    cmp-long v1, v5, v7

    if-eqz v1, :cond_1

    return v2

    :cond_1
    return v4

    :cond_2
    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-nez v10, :cond_3

    return v4

    :cond_3
    div-int/lit8 v11, v1, 0x40

    sub-int/2addr v11, v2

    const/4 v12, 0x2

    aget-object v12, v10, v12

    array-length v13, v12

    if-lt v11, v13, :cond_4

    return v4

    :cond_4
    aget-object v3, v10, v3

    aget-wide v13, v3, v11

    aget-wide v2, v12, v11

    not-long v2, v2

    const/4 v12, 0x3

    aget-object v10, v10, v12

    aget-wide v11, v10, v11

    not-long v10, v11

    or-long/2addr v2, v10

    and-long/2addr v2, v13

    rem-int/2addr v1, v9

    shl-long/2addr v5, v1

    and-long v1, v2, v5

    cmp-long v1, v1, v7

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    return v1

    :cond_5
    :goto_0
    return v4
.end method

.method public final isPotentiallyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v5, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v7, 0x2

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->maxFieldCount:I

    add-int/2addr v1, v2

    const-wide/16 v5, 0x1

    const/4 v2, 0x1

    const/16 v9, 0x40

    if-ge v1, v9, :cond_2

    iget-wide v9, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    iget-wide v11, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    not-long v11, v11

    iget-wide v13, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    not-long v13, v13

    or-long/2addr v11, v13

    and-long/2addr v9, v11

    shl-long/2addr v5, v1

    and-long/2addr v5, v9

    cmp-long v1, v5, v7

    if-eqz v1, :cond_1

    return v2

    :cond_1
    return v4

    :cond_2
    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-nez v10, :cond_3

    return v4

    :cond_3
    div-int/lit8 v11, v1, 0x40

    sub-int/2addr v11, v2

    const/4 v12, 0x2

    aget-object v12, v10, v12

    array-length v13, v12

    if-lt v11, v13, :cond_4

    return v4

    :cond_4
    const/4 v13, 0x3

    aget-object v13, v10, v13

    aget-wide v14, v13, v11

    aget-wide v7, v12, v11

    not-long v7, v7

    aget-object v3, v10, v3

    aget-wide v10, v3, v11

    not-long v10, v10

    or-long/2addr v7, v10

    and-long/2addr v7, v14

    rem-int/2addr v1, v9

    shl-long/2addr v5, v1

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-eqz v1, :cond_5

    return v2

    :cond_5
    :goto_0
    return v4
.end method

.method public final isPotentiallyUnknown(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
    .locals 15

    move-object v0, p0

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 v2, v1, 0x3

    if-nez v2, :cond_0

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v1, p1

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->maxFieldCount:I

    add-int/2addr v1, v4

    const-wide/16 v6, 0x1

    const/4 v8, 0x1

    const/16 v9, 0x40

    if-ge v1, v9, :cond_3

    iget-wide v9, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    iget-wide v11, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    not-long v11, v11

    iget-wide v13, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    not-long v13, v13

    iget-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    not-long v2, v3

    and-long/2addr v2, v13

    or-long/2addr v2, v11

    and-long/2addr v2, v9

    shl-long v4, v6, v1

    and-long v1, v2, v4

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    return v8

    :cond_2
    const/4 v3, 0x0

    return v3

    :cond_3
    const/4 v3, 0x0

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-nez v4, :cond_4

    return v3

    :cond_4
    div-int/lit8 v5, v1, 0x40

    sub-int/2addr v5, v8

    const/4 v10, 0x2

    aget-object v10, v4, v10

    array-length v11, v10

    if-lt v5, v11, :cond_5

    return v3

    :cond_5
    const/4 v3, 0x5

    aget-object v3, v4, v3

    aget-wide v11, v3, v5

    aget-wide v13, v10, v5

    not-long v13, v13

    const/4 v3, 0x3

    aget-object v3, v4, v3

    aget-wide v6, v3, v5

    not-long v6, v6

    aget-object v2, v4, v2

    aget-wide v3, v2, v5

    not-long v2, v3

    and-long/2addr v2, v6

    or-long/2addr v2, v13

    and-long/2addr v2, v11

    rem-int/2addr v1, v9

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v1

    and-long v1, v2, v4

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6

    return v8

    :cond_6
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isProtectedNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v5, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v7, 0x2

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->maxFieldCount:I

    add-int/2addr v1, v2

    const-wide/16 v5, 0x1

    const/4 v2, 0x1

    const/16 v9, 0x40

    if-ge v1, v9, :cond_2

    iget-wide v9, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    iget-wide v11, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    and-long/2addr v9, v11

    iget-wide v11, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    and-long/2addr v9, v11

    shl-long/2addr v5, v1

    and-long/2addr v5, v9

    cmp-long v1, v5, v7

    if-eqz v1, :cond_1

    return v2

    :cond_1
    return v4

    :cond_2
    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-nez v10, :cond_3

    return v4

    :cond_3
    div-int/lit8 v11, v1, 0x40

    sub-int/2addr v11, v2

    aget-object v12, v10, v4

    array-length v12, v12

    if-lt v11, v12, :cond_4

    return v4

    :cond_4
    const/4 v12, 0x2

    aget-object v12, v10, v12

    aget-wide v13, v12, v11

    aget-object v3, v10, v3

    aget-wide v15, v3, v11

    and-long v12, v13, v15

    const/4 v3, 0x5

    aget-object v3, v10, v3

    aget-wide v10, v3, v11

    and-long/2addr v10, v12

    rem-int/2addr v1, v9

    shl-long/2addr v5, v1

    and-long/2addr v5, v10

    cmp-long v1, v5, v7

    if-eqz v1, :cond_5

    return v2

    :cond_5
    :goto_0
    return v4
.end method

.method public final isProtectedNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v5, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v7, 0x2

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->maxFieldCount:I

    add-int/2addr v1, v2

    const-wide/16 v5, 0x1

    const/4 v2, 0x1

    const/16 v9, 0x40

    if-ge v1, v9, :cond_2

    iget-wide v9, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    iget-wide v11, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    and-long/2addr v9, v11

    iget-wide v11, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    iget-wide v13, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    xor-long/2addr v11, v13

    and-long/2addr v9, v11

    shl-long/2addr v5, v1

    and-long/2addr v5, v9

    cmp-long v1, v5, v7

    if-eqz v1, :cond_1

    return v2

    :cond_1
    return v4

    :cond_2
    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-nez v10, :cond_3

    return v4

    :cond_3
    div-int/lit8 v11, v1, 0x40

    sub-int/2addr v11, v2

    aget-object v12, v10, v4

    array-length v12, v12

    if-lt v11, v12, :cond_4

    return v4

    :cond_4
    const/4 v12, 0x2

    aget-object v12, v10, v12

    aget-wide v13, v12, v11

    const/4 v12, 0x3

    aget-object v12, v10, v12

    aget-wide v15, v12, v11

    and-long v12, v13, v15

    aget-object v3, v10, v3

    aget-wide v14, v3, v11

    const/4 v3, 0x5

    aget-object v3, v10, v3

    aget-wide v10, v3, v11

    xor-long/2addr v10, v14

    and-long/2addr v10, v12

    rem-int/2addr v1, v9

    shl-long/2addr v5, v1

    and-long/2addr v5, v10

    cmp-long v1, v5, v7

    if-eqz v1, :cond_5

    return v2

    :cond_5
    :goto_0
    return v4
.end method

.method public markAsComparedEqualToNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
    .locals 22

    move-object/from16 v0, p0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    if-eq v0, v1, :cond_a

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    const/4 v2, 0x4

    or-int/2addr v1, v2

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    move-object/from16 v1, p1

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->maxFieldCount:I

    add-int/2addr v1, v3

    const-wide/16 v3, 0x1

    const/16 v5, 0x40

    if-ge v1, v5, :cond_3

    shl-long v1, v3, v1

    iget-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    and-long v8, v1, v3

    iget-wide v10, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    not-long v12, v10

    and-long/2addr v12, v8

    iget-wide v14, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    not-long v6, v14

    and-long v5, v12, v6

    move-wide/from16 v18, v3

    iget-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    and-long/2addr v5, v3

    const-wide/16 v16, 0x0

    cmp-long v5, v5, v16

    if-eqz v5, :cond_0

    not-long v5, v1

    and-long/2addr v3, v5

    iput-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    goto :goto_0

    :cond_0
    and-long v5, v12, v14

    cmp-long v5, v5, v16

    if-nez v5, :cond_2

    or-long v5, v3, v1

    iput-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    cmp-long v5, v8, v16

    if-nez v5, :cond_2

    and-long v5, v1, v10

    xor-long v7, v14, v3

    and-long/2addr v5, v7

    cmp-long v5, v5, v16

    if-eqz v5, :cond_1

    not-long v3, v1

    and-long/2addr v3, v10

    iput-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    goto :goto_0

    :cond_1
    or-long v5, v10, v14

    or-long/2addr v3, v5

    and-long/2addr v3, v1

    cmp-long v3, v3, v16

    if-nez v3, :cond_2

    or-long v3, v10, v1

    iput-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    :cond_2
    :goto_0
    or-long v3, v18, v1

    iput-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    or-long v3, v14, v1

    iput-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    iget-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNBit:J

    not-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNBit:J

    goto/16 :goto_4

    :cond_3
    div-int/lit8 v6, v1, 0x40

    add-int/lit8 v7, v6, -0x1

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-nez v8, :cond_4

    invoke-direct {v0, v6}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->createExtraSpace(I)V

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    aget-object v8, v8, v9

    array-length v8, v8

    if-lt v7, v8, :cond_6

    move v10, v9

    :goto_1
    const/16 v11, 0x8

    if-lt v10, v11, :cond_5

    goto :goto_2

    :cond_5
    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v12, v11, v10

    new-array v13, v6, [J

    aput-object v13, v11, v10

    invoke-static {v12, v9, v13, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    rem-int/2addr v1, v5

    shl-long/2addr v3, v1

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const/4 v5, 0x2

    aget-object v5, v1, v5

    aget-wide v8, v5, v7

    and-long/2addr v8, v3

    const/4 v6, 0x3

    aget-object v6, v1, v6

    aget-wide v10, v6, v7

    not-long v12, v10

    and-long/2addr v12, v8

    aget-object v2, v1, v2

    aget-wide v14, v2, v7

    move-object/from16 p1, v5

    move-object/from16 v18, v6

    not-long v5, v14

    and-long/2addr v5, v12

    const/16 v19, 0x5

    aget-object v19, v1, v19

    aget-wide v20, v19, v7

    and-long v5, v5, v20

    const-wide/16 v16, 0x0

    cmp-long v5, v5, v16

    if-eqz v5, :cond_7

    not-long v5, v3

    and-long v5, v20, v5

    aput-wide v5, v19, v7

    goto :goto_3

    :cond_7
    and-long v5, v12, v14

    cmp-long v5, v5, v16

    if-nez v5, :cond_9

    or-long v5, v20, v3

    aput-wide v5, v19, v7

    cmp-long v5, v8, v16

    if-nez v5, :cond_9

    and-long v5, v3, v10

    xor-long v8, v14, v20

    and-long/2addr v5, v8

    cmp-long v5, v5, v16

    if-eqz v5, :cond_8

    aget-wide v5, v18, v7

    not-long v8, v3

    and-long/2addr v5, v8

    aput-wide v5, v18, v7

    goto :goto_3

    :cond_8
    or-long v5, v10, v14

    or-long v5, v5, v20

    and-long/2addr v5, v3

    cmp-long v5, v5, v16

    if-nez v5, :cond_9

    aget-wide v5, v18, v7

    or-long/2addr v5, v3

    aput-wide v5, v18, v7

    :cond_9
    :goto_3
    aget-wide v5, p1, v7

    or-long/2addr v5, v3

    aput-wide v5, p1, v7

    aget-wide v5, v2, v7

    or-long/2addr v5, v3

    aput-wide v5, v2, v7

    const/4 v2, 0x6

    aget-object v1, v1, v2

    aget-wide v5, v1, v7

    not-long v2, v3

    and-long/2addr v2, v5

    aput-wide v2, v1, v7

    :cond_a
    :goto_4
    return-void
.end method

.method public markAsComparedEqualToNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
    .locals 16

    move-object/from16 v0, p0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    if-eq v0, v1, :cond_c

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    const/4 v2, 0x4

    or-int/2addr v1, v2

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    move-object/from16 v1, p1

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->maxFieldCount:I

    add-int/2addr v1, v3

    const-wide/16 v3, 0x1

    const/16 v5, 0x40

    const-wide/16 v6, 0x0

    if-ge v1, v5, :cond_4

    shl-long v1, v3, v1

    iget-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    and-long v8, v1, v3

    cmp-long v5, v8, v6

    if-eqz v5, :cond_0

    iget-wide v8, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    not-long v8, v8

    iget-wide v10, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    or-long/2addr v8, v10

    iget-wide v10, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    not-long v12, v10

    or-long/2addr v8, v12

    and-long/2addr v8, v1

    cmp-long v5, v8, v6

    if-eqz v5, :cond_3

    not-long v5, v1

    and-long/2addr v5, v10

    iput-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    goto :goto_0

    :cond_0
    iget-wide v8, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    and-long v10, v1, v8

    cmp-long v5, v10, v6

    if-eqz v5, :cond_1

    iget-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    not-long v7, v1

    and-long/2addr v5, v7

    iput-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    goto :goto_0

    :cond_1
    iget-wide v10, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    and-long/2addr v10, v1

    cmp-long v5, v10, v6

    if-eqz v5, :cond_2

    iget-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    not-long v10, v1

    and-long/2addr v5, v10

    iput-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    or-long v5, v8, v1

    iput-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    goto :goto_0

    :cond_2
    iget-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    or-long/2addr v5, v1

    iput-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    :cond_3
    :goto_0
    or-long/2addr v3, v1

    iput-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    iget-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    or-long/2addr v3, v1

    iput-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    iget-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNNBit:J

    not-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNNBit:J

    goto/16 :goto_4

    :cond_4
    div-int/lit8 v8, v1, 0x40

    add-int/lit8 v9, v8, -0x1

    rem-int/2addr v1, v5

    shl-long/2addr v3, v1

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-nez v1, :cond_5

    invoke-direct {v0, v8}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->createExtraSpace(I)V

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    aget-object v1, v1, v5

    array-length v1, v1

    if-lt v9, v1, :cond_7

    move v10, v5

    :goto_1
    const/16 v11, 0x8

    if-lt v10, v11, :cond_6

    goto :goto_2

    :cond_6
    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v12, v11, v10

    new-array v13, v8, [J

    aput-object v13, v11, v10

    invoke-static {v12, v5, v13, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const/4 v5, 0x2

    aget-object v5, v1, v5

    aget-wide v10, v5, v9

    and-long/2addr v10, v3

    cmp-long v8, v10, v6

    const/4 v10, 0x5

    const/4 v11, 0x3

    if-eqz v8, :cond_8

    aget-object v8, v1, v11

    aget-wide v12, v8, v9

    not-long v12, v12

    aget-object v2, v1, v2

    aget-wide v14, v2, v9

    or-long/2addr v12, v14

    aget-object v2, v1, v10

    aget-wide v14, v2, v9

    not-long v6, v14

    or-long/2addr v6, v12

    and-long/2addr v6, v3

    const-wide/16 v12, 0x0

    cmp-long v6, v6, v12

    if-eqz v6, :cond_b

    not-long v6, v3

    and-long/2addr v6, v14

    aput-wide v6, v2, v9

    goto :goto_3

    :cond_8
    move-wide v12, v6

    aget-object v6, v1, v10

    aget-wide v7, v6, v9

    and-long/2addr v7, v3

    cmp-long v7, v7, v12

    if-eqz v7, :cond_9

    aget-object v2, v1, v2

    aget-wide v6, v2, v9

    not-long v12, v3

    and-long/2addr v6, v12

    aput-wide v6, v2, v9

    goto :goto_3

    :cond_9
    aget-object v7, v1, v11

    aget-wide v14, v7, v9

    and-long v7, v3, v14

    cmp-long v7, v7, v12

    if-eqz v7, :cond_a

    aget-object v2, v1, v2

    aget-wide v7, v2, v9

    not-long v12, v3

    and-long/2addr v7, v12

    aput-wide v7, v2, v9

    aget-wide v7, v6, v9

    or-long/2addr v7, v3

    aput-wide v7, v6, v9

    goto :goto_3

    :cond_a
    aget-object v2, v1, v2

    aget-wide v6, v2, v9

    or-long/2addr v6, v3

    aput-wide v6, v2, v9

    :cond_b
    :goto_3
    aget-wide v6, v5, v9

    or-long/2addr v6, v3

    aput-wide v6, v5, v9

    aget-object v2, v1, v11

    aget-wide v5, v2, v9

    or-long/2addr v5, v3

    aput-wide v5, v2, v9

    const/4 v2, 0x7

    aget-object v1, v1, v2

    aget-wide v5, v1, v9

    not-long v2, v3

    and-long/2addr v2, v5

    aput-wide v2, v1, v9

    :cond_c
    :goto_4
    return-void
.end method

.method public markAsDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V
    .locals 1

    .line 15
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    if-eq p0, v0, :cond_0

    .line 16
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->markAsDefinitelyAssigned(I)V

    :cond_0
    return-void
.end method

.method public markAsDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
    .locals 1

    .line 17
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    if-eq p0, v0, :cond_0

    .line 18
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->maxFieldCount:I

    add-int/2addr p1, v0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->markAsDefinitelyAssigned(I)V

    :cond_0
    return-void
.end method

.method public markAsDefinitelyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
    .locals 12

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    if-eq p0, v0, :cond_4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    const/4 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->maxFieldCount:I

    add-int/2addr p1, v0

    const-wide/16 v2, 0x1

    const/16 v0, 0x40

    if-ge p1, v0, :cond_0

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    shl-long/2addr v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    not-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNBit:J

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNBit:J

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNNBit:J

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNNBit:J

    goto :goto_2

    :cond_0
    div-int/lit8 v4, p1, 0x40

    add-int/lit8 v5, v4, -0x1

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-nez v6, :cond_1

    invoke-direct {p0, v4}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->createExtraSpace(I)V

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    aget-object v6, v6, v7

    array-length v6, v6

    if-lt v5, v6, :cond_3

    move v8, v7

    :goto_0
    const/16 v9, 0x8

    if-lt v8, v9, :cond_2

    goto :goto_1

    :cond_2
    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v10, v9, v8

    new-array v11, v4, [J

    aput-object v11, v9, v8

    invoke-static {v10, v7, v11, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const/4 v6, 0x2

    aget-object v6, v4, v6

    aget-wide v7, v6, v5

    rem-int/2addr p1, v0

    shl-long/2addr v2, p1

    or-long/2addr v7, v2

    aput-wide v7, v6, v5

    aget-object p1, v4, v1

    aget-wide v0, p1, v5

    or-long/2addr v0, v2

    aput-wide v0, p1, v5

    const/4 p1, 0x3

    aget-object p1, v4, p1

    aget-wide v0, p1, v5

    not-long v2, v2

    and-long/2addr v0, v2

    aput-wide v0, p1, v5

    const/4 p1, 0x5

    aget-object p1, v4, p1

    aget-wide v0, p1, v5

    and-long/2addr v0, v2

    aput-wide v0, p1, v5

    const/4 p1, 0x6

    aget-object p1, v4, p1

    aget-wide v0, p1, v5

    and-long/2addr v0, v2

    aput-wide v0, p1, v5

    const/4 p1, 0x7

    aget-object p1, v4, p1

    aget-wide v0, p1, v5

    and-long/2addr v0, v2

    aput-wide v0, p1, v5

    :cond_4
    :goto_2
    return-void
.end method

.method public markAsDefinitelyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
    .locals 12

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    if-eq p0, v0, :cond_4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    const/4 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->maxFieldCount:I

    add-int/2addr p1, v0

    const-wide/16 v2, 0x1

    const/16 v0, 0x40

    if-ge p1, v0, :cond_0

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    shl-long/2addr v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    not-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNBit:J

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNBit:J

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNNBit:J

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNNBit:J

    goto :goto_2

    :cond_0
    div-int/lit8 v4, p1, 0x40

    add-int/lit8 v5, v4, -0x1

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-nez v6, :cond_1

    invoke-direct {p0, v4}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->createExtraSpace(I)V

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    aget-object v6, v6, v7

    array-length v6, v6

    if-lt v5, v6, :cond_3

    move v8, v7

    :goto_0
    const/16 v9, 0x8

    if-lt v8, v9, :cond_2

    goto :goto_1

    :cond_2
    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v10, v9, v8

    new-array v11, v4, [J

    aput-object v11, v9, v8

    invoke-static {v10, v7, v11, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const/4 v6, 0x2

    aget-object v6, v4, v6

    aget-wide v7, v6, v5

    rem-int/2addr p1, v0

    shl-long/2addr v2, p1

    or-long/2addr v7, v2

    aput-wide v7, v6, v5

    const/4 p1, 0x3

    aget-object p1, v4, p1

    aget-wide v6, p1, v5

    or-long/2addr v6, v2

    aput-wide v6, p1, v5

    aget-object p1, v4, v1

    aget-wide v0, p1, v5

    not-long v2, v2

    and-long/2addr v0, v2

    aput-wide v0, p1, v5

    const/4 p1, 0x5

    aget-object p1, v4, p1

    aget-wide v0, p1, v5

    and-long/2addr v0, v2

    aput-wide v0, p1, v5

    const/4 p1, 0x6

    aget-object p1, v4, p1

    aget-wide v0, p1, v5

    and-long/2addr v0, v2

    aput-wide v0, p1, v5

    const/4 p1, 0x7

    aget-object p1, v4, p1

    aget-wide v0, p1, v5

    and-long/2addr v0, v2

    aput-wide v0, p1, v5

    :cond_4
    :goto_2
    return-void
.end method

.method public markAsDefinitelyUnknown(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
    .locals 12

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    if-eq p0, v0, :cond_4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    const/4 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->maxFieldCount:I

    add-int/2addr p1, v0

    const-wide/16 v2, 0x1

    const/16 v0, 0x40

    if-ge p1, v0, :cond_0

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    shl-long/2addr v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    not-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNBit:J

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNBit:J

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNNBit:J

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNNBit:J

    goto :goto_2

    :cond_0
    div-int/lit8 v4, p1, 0x40

    add-int/lit8 v5, v4, -0x1

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-nez v6, :cond_1

    invoke-direct {p0, v4}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->createExtraSpace(I)V

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    aget-object v6, v6, v7

    array-length v6, v6

    if-lt v5, v6, :cond_3

    move v8, v7

    :goto_0
    const/16 v9, 0x8

    if-lt v8, v9, :cond_2

    goto :goto_1

    :cond_2
    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v10, v9, v8

    new-array v11, v4, [J

    aput-object v11, v9, v8

    invoke-static {v10, v7, v11, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const/4 v6, 0x2

    aget-object v6, v4, v6

    aget-wide v7, v6, v5

    rem-int/2addr p1, v0

    shl-long/2addr v2, p1

    or-long/2addr v7, v2

    aput-wide v7, v6, v5

    const/4 p1, 0x5

    aget-object p1, v4, p1

    aget-wide v6, p1, v5

    or-long/2addr v6, v2

    aput-wide v6, p1, v5

    const/4 p1, 0x3

    aget-object p1, v4, p1

    aget-wide v6, p1, v5

    not-long v2, v2

    and-long/2addr v6, v2

    aput-wide v6, p1, v5

    aget-object p1, v4, v1

    aget-wide v0, p1, v5

    and-long/2addr v0, v2

    aput-wide v0, p1, v5

    const/4 p1, 0x6

    aget-object p1, v4, p1

    aget-wide v0, p1, v5

    and-long/2addr v0, v2

    aput-wide v0, p1, v5

    const/4 p1, 0x7

    aget-object p1, v4, p1

    aget-wide v0, p1, v5

    and-long/2addr v0, v2

    aput-wide v0, p1, v5

    :cond_4
    :goto_2
    return-void
.end method

.method public markPotentiallyNonNullBit(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
    .locals 16

    move-object/from16 v0, p0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    if-eq v0, v1, :cond_6

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    const/4 v2, 0x4

    or-int/2addr v1, v2

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    move-object/from16 v1, p1

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->maxFieldCount:I

    add-int/2addr v1, v3

    const-string v3, "Adding \'potentially non-null\' mark in unexpected state"

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1

    const/16 v8, 0x40

    const/4 v10, 0x0

    if-ge v1, v8, :cond_1

    shl-long v1, v6, v1

    iget-wide v6, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    and-long/2addr v6, v1

    cmp-long v4, v6, v4

    if-nez v4, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    move v9, v10

    :goto_0
    invoke-static {v9, v3}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->isTrue(ZLjava/lang/String;)Z

    iget-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    or-long/2addr v1, v3

    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    goto :goto_4

    :cond_1
    div-int/lit8 v11, v1, 0x40

    add-int/lit8 v12, v11, -0x1

    iget-object v13, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-nez v13, :cond_2

    invoke-direct {v0, v11}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->createExtraSpace(I)V

    goto :goto_2

    :cond_2
    aget-object v13, v13, v10

    array-length v13, v13

    if-lt v12, v13, :cond_4

    move v14, v10

    :goto_1
    const/16 v15, 0x8

    if-lt v14, v15, :cond_3

    goto :goto_2

    :cond_3
    iget-object v15, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v9, v15, v14

    new-array v2, v11, [J

    aput-object v2, v15, v14

    invoke-static {v9, v10, v2, v10, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x4

    goto :goto_1

    :cond_4
    :goto_2
    rem-int/2addr v1, v8

    shl-long v1, v6, v1

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const/4 v7, 0x2

    aget-object v6, v6, v7

    aget-wide v7, v6, v12

    and-long v6, v7, v1

    cmp-long v4, v6, v4

    if-nez v4, :cond_5

    const/4 v9, 0x1

    goto :goto_3

    :cond_5
    move v9, v10

    :goto_3
    invoke-static {v9, v3}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->isTrue(ZLjava/lang/String;)Z

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const/4 v4, 0x4

    aget-object v3, v3, v4

    aget-wide v4, v3, v12

    or-long/2addr v1, v4

    aput-wide v1, v3, v12

    :cond_6
    :goto_4
    return-void
.end method

.method public markPotentiallyNullBit(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
    .locals 16

    move-object/from16 v0, p0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    if-eq v0, v1, :cond_6

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    move-object/from16 v1, p1

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->maxFieldCount:I

    add-int/2addr v1, v2

    const-string v2, "Adding \'potentially null\' mark in unexpected state"

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1

    const/16 v7, 0x40

    const/4 v9, 0x0

    if-ge v1, v7, :cond_1

    shl-long/2addr v5, v1

    iget-wide v10, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    and-long/2addr v10, v5

    cmp-long v1, v10, v3

    if-nez v1, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    move v8, v9

    :goto_0
    invoke-static {v8, v2}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->isTrue(ZLjava/lang/String;)Z

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    or-long/2addr v1, v5

    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    goto :goto_4

    :cond_1
    div-int/lit8 v10, v1, 0x40

    add-int/lit8 v11, v10, -0x1

    iget-object v12, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-nez v12, :cond_2

    invoke-direct {v0, v10}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->createExtraSpace(I)V

    goto :goto_2

    :cond_2
    aget-object v12, v12, v9

    array-length v12, v12

    if-lt v11, v12, :cond_4

    move v13, v9

    :goto_1
    const/16 v14, 0x8

    if-lt v13, v14, :cond_3

    goto :goto_2

    :cond_3
    iget-object v14, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v15, v14, v13

    new-array v8, v10, [J

    aput-object v8, v14, v13

    invoke-static {v15, v9, v8, v9, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    rem-int/2addr v1, v7

    shl-long/2addr v5, v1

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const/4 v7, 0x3

    aget-object v7, v1, v7

    aget-wide v12, v7, v11

    or-long/2addr v12, v5

    aput-wide v12, v7, v11

    const/4 v7, 0x2

    aget-object v1, v1, v7

    aget-wide v7, v1, v11

    and-long/2addr v5, v7

    cmp-long v1, v5, v3

    if-nez v1, :cond_5

    const/4 v8, 0x1

    goto :goto_3

    :cond_5
    move v8, v9

    :goto_3
    invoke-static {v8, v2}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->isTrue(ZLjava/lang/String;)Z

    :cond_6
    :goto_4
    return-void
.end method

.method public markPotentiallyUnknownBit(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
    .locals 16

    move-object/from16 v0, p0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    if-eq v0, v1, :cond_6

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    move-object/from16 v1, p1

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->maxFieldCount:I

    add-int/2addr v1, v2

    const-string v2, "Adding \'unknown\' mark in unexpected state"

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1

    const/16 v7, 0x40

    const/4 v9, 0x0

    if-ge v1, v7, :cond_1

    shl-long/2addr v5, v1

    iget-wide v10, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    and-long/2addr v10, v5

    cmp-long v1, v10, v3

    if-nez v1, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    move v8, v9

    :goto_0
    invoke-static {v8, v2}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->isTrue(ZLjava/lang/String;)Z

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    or-long/2addr v1, v5

    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    goto :goto_4

    :cond_1
    div-int/lit8 v10, v1, 0x40

    add-int/lit8 v11, v10, -0x1

    iget-object v12, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-nez v12, :cond_2

    invoke-direct {v0, v10}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->createExtraSpace(I)V

    goto :goto_2

    :cond_2
    aget-object v12, v12, v9

    array-length v12, v12

    if-lt v11, v12, :cond_4

    move v13, v9

    :goto_1
    const/16 v14, 0x8

    if-lt v13, v14, :cond_3

    goto :goto_2

    :cond_3
    iget-object v14, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v15, v14, v13

    new-array v8, v10, [J

    aput-object v8, v14, v13

    invoke-static {v15, v9, v8, v9, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    rem-int/2addr v1, v7

    shl-long/2addr v5, v1

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const/4 v7, 0x2

    aget-object v1, v1, v7

    aget-wide v7, v1, v11

    and-long/2addr v7, v5

    cmp-long v1, v7, v3

    if-nez v1, :cond_5

    const/4 v8, 0x1

    goto :goto_3

    :cond_5
    move v8, v9

    :goto_3
    invoke-static {v8, v2}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->isTrue(ZLjava/lang/String;)Z

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const/4 v2, 0x5

    aget-object v1, v1, v2

    aget-wide v2, v1, v11

    or-long/2addr v2, v5

    aput-wide v2, v1, v11

    :cond_6
    :goto_4
    return-void
.end method

.method public mergeDefiniteInitsWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;
    .locals 10

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    if-eq p0, v0, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->copy()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    return-object p1

    :cond_1
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->definiteInits:J

    iget-wide v2, p1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->definiteInits:J

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->definiteInits:J

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-eqz v2, :cond_7

    aget-object v0, v0, v1

    array-length v0, v0

    aget-object v2, v2, v1

    array-length v2, v2

    if-ge v0, v2, :cond_5

    move v3, v1

    :goto_0
    const/16 v4, 0x8

    if-lt v3, v4, :cond_4

    move v3, v1

    :goto_1
    if-lt v3, v0, :cond_3

    :goto_2
    if-lt v3, v2, :cond_2

    goto/16 :goto_5

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v0, v0, v1

    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v4, v4, v1

    aget-wide v5, v4, v3

    aput-wide v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v4, v4, v1

    aget-wide v5, v4, v3

    iget-object v7, p1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v7, v7, v1

    aget-wide v8, v7, v3

    and-long/2addr v5, v8

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v5, v4, v3

    new-array v6, v2, [J

    aput-object v6, v4, v3

    invoke-static {v5, v1, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_3
    if-lt v0, v2, :cond_6

    goto :goto_5

    :cond_6
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v3, v3, v1

    aget-wide v4, v3, v0

    iget-object v6, p1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v6, v6, v1

    aget-wide v7, v6, v0

    and-long/2addr v4, v7

    aput-wide v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    move p1, v1

    :goto_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v0, v0, v1

    array-length v2, v0

    if-lt p1, v2, :cond_8

    goto :goto_5

    :cond_8
    const-wide/16 v2, 0x0

    aput-wide v2, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_9
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-eqz v0, :cond_a

    aget-object v0, v0, v1

    array-length v0, v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->createExtraSpace(I)V

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object p1, p1, v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v2, v2, v1

    invoke-static {p1, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_5
    return-object p0
.end method

.method public mergedWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;
    .locals 64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_0

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    if-eq v0, v3, :cond_0

    return-object v0

    :cond_0
    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->copy()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    return-object v1

    :cond_1
    iget-wide v4, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->definiteInits:J

    iget-wide v6, v1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->definiteInits:J

    and-long/2addr v4, v6

    iput-wide v4, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->definiteInits:J

    iget-wide v4, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->potentialInits:J

    iget-wide v6, v1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->potentialInits:J

    or-long/2addr v4, v6

    iput-wide v4, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->potentialInits:J

    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    and-int/lit8 v7, v2, 0x4

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    and-int/lit8 v8, v2, 0x2

    const/4 v9, 0x2

    if-eqz v8, :cond_4

    move-object v7, v1

    move/from16 v36, v4

    const/16 v34, 0x0

    move-object v4, v0

    :goto_2
    move/from16 v0, v36

    goto/16 :goto_5

    :cond_4
    and-int/2addr v3, v9

    if-eqz v3, :cond_5

    iget-wide v3, v1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    iput-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    iget-wide v3, v1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    iput-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    iget-wide v3, v1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    iput-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    iget-wide v3, v1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    iput-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    iget-wide v3, v1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNBit:J

    iput-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNBit:J

    iget-wide v3, v1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNNBit:J

    iput-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNNBit:J

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    move-object v4, v0

    move v0, v7

    move/from16 v34, v0

    const/16 v36, 0x0

    move-object v7, v1

    goto/16 :goto_5

    :cond_5
    if-eqz v4, :cond_8

    if-eqz v7, :cond_6

    iget-wide v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    iget-wide v12, v1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    and-long v14, v2, v12

    iget-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    iget-wide v8, v1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    iget-wide v10, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    move-wide/from16 v20, v2

    iget-wide v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    and-long v22, v10, v2

    move-wide/from16 v24, v2

    iget-wide v2, v1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    move-wide/from16 v26, v12

    iget-wide v12, v1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    and-long v28, v2, v12

    xor-long v0, v22, v28

    not-long v0, v0

    and-long/2addr v0, v8

    move-wide/from16 v30, v14

    not-long v14, v8

    and-long v32, v22, v14

    or-long v0, v0, v32

    and-long/2addr v0, v5

    move-wide/from16 v32, v0

    not-long v0, v5

    and-long v34, v8, v2

    and-long v34, v34, v12

    move/from16 v36, v4

    move-wide/from16 v37, v5

    not-long v4, v10

    xor-long v39, v4, v2

    and-long v39, v14, v39

    or-long v34, v34, v39

    and-long v34, v0, v34

    or-long v32, v32, v34

    move/from16 v34, v7

    and-long v6, v30, v32

    move-wide/from16 v30, v14

    move-object/from16 v14, p0

    iput-wide v6, v14, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    not-long v6, v2

    move-wide/from16 v32, v0

    move-wide/from16 v0, v26

    not-long v14, v0

    or-long v26, v6, v14

    move-wide/from16 v39, v6

    move-wide/from16 v6, v20

    move-wide/from16 v20, v0

    not-long v0, v6

    or-long v41, v24, v0

    and-long v41, v10, v41

    move-wide/from16 v43, v10

    not-long v10, v12

    and-long v41, v41, v10

    or-long v26, v26, v41

    and-long v26, v8, v26

    move-wide/from16 v41, v10

    move-wide/from16 v10, v24

    move-wide/from16 v24, v6

    not-long v6, v10

    and-long v45, v6, v2

    or-long v47, v12, v14

    and-long v45, v45, v47

    or-long v45, v8, v45

    or-long v45, v45, v4

    or-long v45, v45, v0

    and-long v45, v37, v45

    move-wide/from16 v47, v14

    or-long v14, v26, v45

    move-wide/from16 v26, v4

    move-wide/from16 v45, v47

    move-object/from16 v4, p0

    iput-wide v14, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    and-long v14, v24, v32

    or-long/2addr v14, v0

    xor-long v47, v6, v12

    and-long v47, v2, v47

    or-long v14, v14, v47

    and-long v14, v43, v14

    and-long v47, v20, v30

    or-long v49, v45, v47

    and-long v49, v2, v49

    or-long v14, v14, v49

    iput-wide v14, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    and-long v14, v45, v39

    and-long/2addr v14, v12

    and-long v49, v30, v39

    and-long v51, v10, v8

    and-long v51, v51, v41

    or-long v49, v49, v51

    and-long v49, v20, v49

    or-long v14, v14, v49

    and-long/2addr v10, v0

    and-long v49, v20, v8

    or-long v51, v39, v49

    and-long v51, v10, v51

    or-long v14, v14, v51

    and-long v14, v26, v14

    or-long v28, v28, v47

    and-long v0, v0, v37

    or-long v0, v28, v0

    and-long v0, v22, v0

    or-long/2addr v0, v14

    and-long v14, v45, v12

    and-long v22, v20, v39

    or-long v22, v14, v22

    or-long v10, v22, v10

    and-long v10, v32, v10

    and-long v10, v10, v30

    or-long/2addr v0, v10

    and-long v10, v39, v12

    and-long v22, v49, v2

    and-long v22, v22, v41

    or-long v10, v10, v22

    or-long v22, v39, v30

    and-long v22, v32, v22

    or-long v10, v10, v22

    and-long v10, v26, v10

    and-long v22, v32, v2

    and-long v22, v22, v12

    or-long v10, v10, v22

    and-long v5, v43, v6

    and-long v5, v5, v20

    or-long/2addr v5, v14

    and-long v5, v37, v5

    and-long v5, v5, v39

    or-long/2addr v5, v10

    and-long v5, v24, v5

    or-long/2addr v0, v5

    and-long v5, v45, v8

    and-long/2addr v2, v5

    and-long/2addr v2, v12

    or-long/2addr v0, v2

    iput-wide v0, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    goto :goto_3

    :cond_6
    move/from16 v36, v4

    move/from16 v34, v7

    move-object v4, v0

    iget-wide v0, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    const-wide/16 v2, 0x0

    iput-wide v2, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    iget-wide v2, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    iget-wide v5, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    not-long v7, v5

    not-long v9, v0

    or-long/2addr v7, v9

    and-long v11, v2, v7

    iput-wide v11, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    not-long v2, v2

    iget-wide v11, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    and-long v13, v2, v11

    or-long/2addr v13, v9

    and-long/2addr v5, v13

    and-long v13, v0, v2

    move-wide/from16 v20, v0

    not-long v0, v11

    and-long/2addr v0, v13

    or-long/2addr v0, v5

    iput-wide v0, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    or-long v0, v7, v2

    and-long/2addr v0, v9

    and-long/2addr v0, v11

    and-long v5, v20, v7

    and-long/2addr v2, v5

    or-long/2addr v0, v2

    iput-wide v0, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    :goto_3
    iget-wide v0, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNBit:J

    move-object/from16 v2, p1

    iget-wide v5, v2, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNBit:J

    or-long/2addr v0, v5

    iput-wide v0, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNBit:J

    iget-wide v0, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNNBit:J

    iget-wide v5, v2, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNNBit:J

    or-long/2addr v0, v5

    iput-wide v0, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNNBit:J

    :cond_7
    move-object v7, v2

    goto/16 :goto_2

    :cond_8
    move-object v2, v1

    move/from16 v36, v4

    move/from16 v34, v7

    move-object v4, v0

    if-eqz v34, :cond_7

    const-wide/16 v0, 0x0

    iput-wide v0, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    iget-wide v0, v2, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    iget-wide v5, v2, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    not-long v7, v5

    iget-wide v9, v2, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    not-long v11, v9

    or-long/2addr v7, v11

    and-long v13, v0, v7

    iput-wide v13, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    not-long v0, v0

    move-wide/from16 v20, v13

    iget-wide v13, v2, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    and-long v22, v0, v13

    or-long v22, v22, v11

    and-long v5, v5, v22

    and-long v22, v9, v0

    not-long v2, v13

    and-long v2, v22, v2

    or-long/2addr v2, v5

    iput-wide v2, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    or-long v5, v7, v0

    and-long/2addr v5, v11

    and-long/2addr v5, v13

    and-long/2addr v7, v9

    and-long/2addr v0, v7

    or-long/2addr v0, v5

    iput-wide v0, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    iget-wide v5, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNBit:J

    move-object/from16 v7, p1

    iget-wide v8, v7, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNBit:J

    or-long/2addr v5, v8

    iput-wide v5, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNBit:J

    iget-wide v5, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNNBit:J

    iget-wide v8, v7, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNNBit:J

    or-long/2addr v5, v8

    iput-wide v5, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNNBit:J

    const-wide/16 v5, 0x0

    cmp-long v8, v20, v5

    if-nez v8, :cond_9

    cmp-long v2, v2, v5

    if-nez v2, :cond_9

    cmp-long v0, v0, v5

    if-nez v0, :cond_9

    const/4 v8, 0x0

    goto :goto_4

    :cond_9
    const/4 v8, 0x1

    :goto_4
    move v0, v8

    :goto_5
    iget-object v1, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const/4 v2, 0x4

    if-nez v1, :cond_a

    iget-object v3, v7, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-eqz v3, :cond_14

    :cond_a
    const/16 v3, 0x8

    const/4 v5, 0x7

    const/4 v6, 0x6

    if-eqz v1, :cond_e

    iget-object v8, v7, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-eqz v8, :cond_d

    const/4 v9, 0x0

    aget-object v1, v1, v9

    array-length v1, v1

    aget-object v8, v8, v9

    array-length v8, v8

    if-ge v1, v8, :cond_c

    move v10, v9

    :goto_6
    if-lt v10, v3, :cond_b

    move v3, v9

    move v9, v8

    goto :goto_8

    :cond_b
    iget-object v11, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v12, v11, v10

    new-array v13, v8, [J

    aput-object v13, v11, v10

    invoke-static {v12, v9, v13, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_c
    move v3, v1

    move v1, v8

    goto :goto_8

    :cond_d
    const/4 v9, 0x0

    aget-object v1, v1, v9

    array-length v8, v1

    move v3, v8

    move v1, v9

    goto :goto_8

    :cond_e
    const/4 v9, 0x0

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-eqz v1, :cond_10

    aget-object v1, v1, v9

    array-length v1, v1

    new-array v8, v3, [[J

    iput-object v8, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    move v10, v9

    :goto_7
    if-lt v10, v3, :cond_f

    iget-object v3, v7, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const/4 v8, 0x1

    aget-object v3, v3, v8

    iget-object v10, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v10, v10, v8

    invoke-static {v3, v9, v10, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v7, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v3, v3, v6

    iget-object v8, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v8, v8, v6

    invoke-static {v3, v9, v8, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v7, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v3, v3, v5

    iget-object v8, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v8, v8, v5

    invoke-static {v3, v9, v8, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v9, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    goto :goto_8

    :cond_f
    iget-object v9, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    new-array v11, v1, [J

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    const/4 v9, 0x0

    goto :goto_7

    :cond_10
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_8
    const/4 v10, 0x0

    :goto_9
    if-lt v10, v1, :cond_1e

    :goto_a
    if-lt v10, v9, :cond_1d

    :goto_b
    if-lt v10, v3, :cond_1c

    if-nez v34, :cond_12

    if-ge v3, v1, :cond_11

    goto :goto_c

    :cond_11
    move v1, v3

    :goto_c
    const/4 v11, 0x0

    const/4 v12, 0x0

    goto :goto_d

    :cond_12
    move v11, v1

    move v1, v3

    move v12, v9

    :goto_d
    if-nez v36, :cond_13

    const/4 v13, 0x0

    goto :goto_e

    :cond_13
    move v13, v1

    :goto_e
    const/4 v1, 0x0

    :goto_f
    const/4 v9, 0x3

    if-lt v1, v11, :cond_1a

    :goto_10
    if-lt v1, v12, :cond_18

    :goto_11
    if-lt v1, v13, :cond_16

    :cond_14
    if-eqz v0, :cond_15

    iget v0, v4, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    or-int/2addr v0, v2

    iput v0, v4, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    goto :goto_12

    :cond_15
    iget v0, v4, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 v0, v0, -0x5

    iput v0, v4, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    :goto_12
    return-object v4

    :cond_16
    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const/4 v6, 0x2

    aget-object v7, v5, v6

    aget-wide v10, v7, v1

    const-wide/16 v14, 0x0

    aput-wide v14, v7, v1

    aget-object v6, v5, v9

    aget-wide v14, v6, v1

    aget-object v7, v5, v2

    aget-wide v8, v7, v1

    not-long v2, v8

    move/from16 v23, v13

    not-long v12, v10

    or-long/2addr v2, v12

    and-long v24, v14, v2

    aput-wide v24, v6, v1

    not-long v14, v14

    const/16 v21, 0x5

    aget-object v5, v5, v21

    move-wide/from16 v24, v2

    aget-wide v2, v5, v1

    and-long v26, v14, v2

    or-long v26, v26, v12

    and-long v8, v8, v26

    and-long v26, v10, v14

    move-object/from16 p1, v5

    not-long v4, v2

    and-long v4, v26, v4

    or-long/2addr v4, v8

    aput-wide v4, v7, v1

    or-long v4, v24, v14

    and-long/2addr v4, v12

    and-long/2addr v2, v4

    and-long v4, v10, v24

    and-long/2addr v4, v14

    or-long/2addr v2, v4

    aput-wide v2, p1, v1

    if-nez v0, :cond_17

    aget-wide v4, v6, v1

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-nez v0, :cond_17

    aget-wide v4, v7, v1

    cmp-long v0, v4, v8

    if-nez v0, :cond_17

    cmp-long v0, v2, v8

    if-nez v0, :cond_17

    const/4 v0, 0x0

    goto :goto_13

    :cond_17
    const/4 v0, 0x1

    :goto_13
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v4, p0

    move/from16 v13, v23

    const/4 v2, 0x4

    const/4 v9, 0x3

    goto :goto_11

    :cond_18
    move-object v2, v4

    move/from16 v23, v13

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const/4 v4, 0x2

    aget-object v8, v3, v4

    const-wide/16 v9, 0x0

    aput-wide v9, v8, v1

    const/4 v8, 0x3

    aget-object v9, v3, v8

    iget-object v10, v7, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v11, v10, v8

    aget-wide v13, v11, v1

    const/4 v8, 0x4

    aget-object v11, v10, v8

    aget-wide v5, v11, v1

    move-object v11, v9

    not-long v8, v5

    aget-object v25, v10, v4

    move-wide/from16 v26, v5

    aget-wide v4, v25, v1

    not-long v6, v4

    or-long/2addr v8, v6

    and-long v28, v13, v8

    aput-wide v28, v11, v1

    const/16 v22, 0x4

    aget-object v25, v3, v22

    not-long v13, v13

    const/16 v21, 0x5

    aget-object v28, v10, v21

    move-object/from16 v30, v11

    move/from16 v29, v12

    aget-wide v11, v28, v1

    and-long v31, v13, v11

    or-long v31, v31, v6

    and-long v26, v26, v31

    and-long v31, v4, v13

    move-wide/from16 v33, v4

    not-long v4, v11

    and-long v4, v31, v4

    or-long v4, v26, v4

    aput-wide v4, v25, v1

    aget-object v4, v3, v21

    or-long v26, v8, v13

    and-long v5, v26, v6

    and-long/2addr v5, v11

    and-long v7, v33, v8

    and-long/2addr v7, v13

    or-long/2addr v5, v7

    aput-wide v5, v4, v1

    const/4 v5, 0x6

    aget-object v6, v3, v5

    aget-wide v7, v6, v1

    aget-object v9, v10, v5

    aget-wide v11, v9, v1

    or-long/2addr v7, v11

    aput-wide v7, v6, v1

    const/4 v5, 0x7

    aget-object v3, v3, v5

    aget-wide v6, v3, v1

    aget-object v8, v10, v5

    aget-wide v9, v8, v1

    or-long v5, v6, v9

    aput-wide v5, v3, v1

    if-nez v0, :cond_19

    aget-wide v5, v30, v1

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-nez v0, :cond_19

    aget-wide v5, v25, v1

    cmp-long v0, v5, v7

    if-nez v0, :cond_19

    aget-wide v3, v4, v1

    cmp-long v0, v3, v7

    if-nez v0, :cond_19

    const/4 v0, 0x0

    goto :goto_14

    :cond_19
    const/4 v0, 0x1

    :goto_14
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v7, p1

    move-object v4, v2

    move/from16 v13, v23

    move/from16 v12, v29

    const/4 v2, 0x4

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v9, 0x3

    goto/16 :goto_10

    :cond_1a
    move-object v2, v4

    move/from16 v29, v12

    move/from16 v23, v13

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const/4 v4, 0x2

    aget-object v5, v3, v4

    aget-wide v6, v5, v1

    move-object/from16 v12, p1

    iget-object v8, v12, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v9, v8, v4

    aget-wide v13, v9, v1

    and-long v9, v6, v13

    const/16 v16, 0x3

    aget-object v20, v3, v16

    move-object/from16 v26, v5

    aget-wide v4, v20, v1

    aget-object v16, v8, v16

    move/from16 v27, v11

    aget-wide v11, v16, v1

    const/16 v16, 0x4

    aget-object v22, v3, v16

    move-wide/from16 v30, v6

    aget-wide v6, v22, v1

    const/16 v21, 0x5

    aget-object v28, v3, v21

    move-object/from16 v32, v3

    aget-wide v2, v28, v1

    and-long v33, v6, v2

    aget-object v35, v8, v16

    move-wide/from16 v36, v2

    aget-wide v2, v35, v1

    aget-object v21, v8, v21

    move-wide/from16 v38, v13

    aget-wide v13, v21, v1

    and-long v40, v2, v13

    move/from16 v21, v0

    move/from16 v35, v1

    xor-long v0, v33, v40

    not-long v0, v0

    and-long/2addr v0, v11

    move-object/from16 v42, v8

    move-wide/from16 v43, v9

    not-long v8, v11

    and-long v45, v33, v8

    or-long v0, v0, v45

    and-long/2addr v0, v4

    move-wide/from16 v45, v0

    not-long v0, v4

    and-long v47, v11, v2

    and-long v47, v47, v13

    move-wide/from16 v49, v4

    not-long v4, v6

    xor-long v51, v4, v2

    and-long v51, v8, v51

    or-long v47, v47, v51

    and-long v47, v0, v47

    or-long v45, v45, v47

    and-long v43, v43, v45

    aput-wide v43, v26, v35

    move-wide/from16 v43, v8

    not-long v8, v2

    move-wide/from16 v45, v0

    move-wide/from16 v0, v38

    move-wide/from16 v38, v4

    not-long v4, v0

    or-long v47, v8, v4

    move-wide/from16 v51, v8

    move-wide/from16 v8, v30

    move-wide/from16 v30, v0

    not-long v0, v8

    or-long v53, v36, v0

    and-long v53, v6, v53

    move-wide/from16 v55, v6

    not-long v6, v13

    and-long v53, v53, v6

    or-long v47, v47, v53

    and-long v47, v11, v47

    move-wide/from16 v53, v6

    move-wide/from16 v6, v36

    move-wide/from16 v36, v8

    not-long v8, v6

    and-long v57, v8, v2

    or-long v59, v13, v4

    and-long v57, v57, v59

    or-long v57, v11, v57

    or-long v57, v57, v38

    or-long v57, v57, v0

    and-long v57, v49, v57

    or-long v47, v47, v57

    aput-wide v47, v20, v35

    and-long v47, v36, v45

    or-long v47, v0, v47

    xor-long v57, v8, v13

    and-long v57, v2, v57

    or-long v47, v47, v57

    and-long v47, v55, v47

    and-long v57, v30, v43

    or-long v59, v4, v57

    and-long v59, v2, v59

    or-long v47, v47, v59

    aput-wide v47, v22, v35

    and-long v47, v4, v51

    and-long v47, v47, v13

    and-long v59, v43, v51

    and-long v61, v6, v11

    and-long v61, v61, v53

    or-long v59, v59, v61

    and-long v59, v30, v59

    or-long v47, v47, v59

    and-long/2addr v6, v0

    and-long v59, v30, v11

    or-long v61, v51, v59

    and-long v61, v6, v61

    or-long v47, v47, v61

    and-long v47, v38, v47

    or-long v40, v40, v57

    and-long v0, v0, v49

    or-long v0, v40, v0

    and-long v0, v33, v0

    or-long v0, v47, v0

    and-long v33, v4, v13

    and-long v40, v30, v51

    or-long v40, v33, v40

    or-long v6, v40, v6

    and-long v6, v45, v6

    and-long v6, v6, v43

    or-long/2addr v0, v6

    and-long v6, v51, v13

    and-long v40, v59, v2

    and-long v40, v40, v53

    or-long v6, v6, v40

    or-long v40, v51, v43

    and-long v40, v45, v40

    or-long v6, v6, v40

    and-long v6, v38, v6

    and-long v38, v45, v2

    and-long v38, v38, v13

    or-long v6, v6, v38

    and-long v8, v55, v8

    and-long v8, v8, v30

    or-long v8, v33, v8

    and-long v8, v49, v8

    and-long v8, v8, v51

    or-long/2addr v6, v8

    and-long v6, v36, v6

    or-long/2addr v0, v6

    and-long/2addr v4, v11

    and-long/2addr v2, v4

    and-long/2addr v2, v13

    or-long/2addr v0, v2

    aput-wide v0, v28, v35

    const/4 v2, 0x6

    aget-object v0, v32, v2

    aget-wide v3, v0, v35

    aget-object v1, v42, v2

    aget-wide v5, v1, v35

    or-long/2addr v3, v5

    aput-wide v3, v0, v35

    const/4 v4, 0x7

    aget-object v0, v32, v4

    aget-wide v5, v0, v35

    aget-object v1, v42, v4

    aget-wide v7, v1, v35

    or-long/2addr v5, v7

    aput-wide v5, v0, v35

    if-nez v21, :cond_1b

    aget-wide v0, v20, v35

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-nez v0, :cond_1b

    aget-wide v0, v22, v35

    cmp-long v0, v0, v5

    if-nez v0, :cond_1b

    aget-wide v0, v28, v35

    cmp-long v0, v0, v5

    if-nez v0, :cond_1b

    const/4 v0, 0x0

    goto :goto_15

    :cond_1b
    const/4 v0, 0x1

    :goto_15
    add-int/lit8 v1, v35, 0x1

    move-object/from16 v7, p1

    move v6, v2

    move v5, v4

    move/from16 v2, v16

    move/from16 v13, v23

    move/from16 v11, v27

    move/from16 v12, v29

    move-object/from16 v4, p0

    goto/16 :goto_f

    :cond_1c
    move/from16 v16, v2

    move v2, v6

    move/from16 v63, v5

    move-object v5, v4

    move/from16 v4, v63

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const-wide/16 v11, 0x0

    aput-wide v11, v6, v10

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v7, p1

    move v6, v2

    move/from16 v2, v16

    move-object/from16 v63, v5

    move v5, v4

    move-object/from16 v4, v63

    goto/16 :goto_b

    :cond_1d
    move/from16 v16, v2

    move v2, v6

    const-wide/16 v11, 0x0

    move/from16 v63, v5

    move-object v5, v4

    move/from16 v4, v63

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const/4 v7, 0x1

    aget-object v6, v6, v7

    move-object/from16 v13, p1

    iget-object v14, v13, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v14, v14, v7

    aget-wide v17, v14, v10

    aput-wide v17, v6, v10

    add-int/lit8 v10, v10, 0x1

    move v6, v2

    move-object v7, v13

    move/from16 v2, v16

    move-object/from16 v63, v5

    move v5, v4

    move-object/from16 v4, v63

    goto/16 :goto_a

    :cond_1e
    move/from16 v16, v2

    move v2, v6

    move-object v13, v7

    const-wide/16 v11, 0x0

    move/from16 v63, v5

    move-object v5, v4

    move/from16 v4, v63

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const/4 v7, 0x0

    aget-object v8, v6, v7

    aget-wide v14, v8, v10

    iget-object v2, v13, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v17, v2, v7

    aget-wide v18, v17, v10

    and-long v14, v14, v18

    aput-wide v14, v8, v10

    const/4 v8, 0x1

    aget-object v6, v6, v8

    aget-wide v14, v6, v10

    aget-object v2, v2, v8

    aget-wide v17, v2, v10

    or-long v14, v14, v17

    aput-wide v14, v6, v10

    add-int/lit8 v10, v10, 0x1

    move-object v7, v13

    move/from16 v2, v16

    const/4 v6, 0x6

    move-object/from16 v63, v5

    move v5, v4

    move-object/from16 v4, v63

    goto/16 :goto_9
.end method

.method public nullInfoLessUnconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;
    .locals 10

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    if-ne p0, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;-><init>()V

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->definiteInits:J

    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->definiteInits:J

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->potentialInits:J

    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->potentialInits:J

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNBit:J

    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNNBit:J

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 v3, v3, -0x5

    or-int/lit8 v3, v3, 0x40

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->maxFieldCount:I

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->maxFieldCount:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-eqz v3, :cond_2

    const/16 v3, 0x8

    new-array v4, v3, [[J

    iput-object v4, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const/4 v6, 0x0

    aget-object v5, v5, v6

    array-length v7, v5

    new-array v8, v7, [J

    aput-object v8, v4, v6

    invoke-static {v5, v6, v8, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const/4 v5, 0x1

    aget-object v4, v4, v5

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    new-array v9, v7, [J

    aput-object v9, v8, v5

    invoke-static {v4, v6, v9, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x2

    :goto_0
    if-lt v4, v3, :cond_1

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-static {v3, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-static {v3, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    goto :goto_1

    :cond_1
    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    new-array v6, v7, [J

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public resetAssignmentInfo(I)V
    .locals 9

    .line 2
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    if-eq p0, v0, :cond_2

    const-wide/16 v0, 0x1

    const/16 v2, 0x40

    if-ge p1, v2, :cond_0

    .line 3
    iget-wide v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->definiteInits:J

    shl-long/2addr v0, p1

    not-long v0, v0

    and-long/2addr v2, v0

    iput-wide v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->definiteInits:J

    .line 4
    iget-wide v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->potentialInits:J

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->potentialInits:J

    goto :goto_0

    .line 5
    :cond_0
    div-int/lit8 v3, p1, 0x40

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 6
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-eqz v5, :cond_2

    const/4 v6, 0x0

    aget-object v6, v5, v6

    array-length v7, v6

    if-lt v3, v7, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    aget-wide v7, v6, v3

    .line 8
    rem-int/2addr p1, v2

    shl-long/2addr v0, p1

    not-long v0, v0

    and-long/2addr v7, v0

    .line 9
    aput-wide v7, v6, v3

    .line 10
    aget-object p1, v5, v4

    aget-wide v4, p1, v3

    and-long/2addr v0, v4

    aput-wide v0, p1, v3

    nop

    :cond_2
    :goto_0
    return-void
.end method

.method public resetAssignmentInfo(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
    .locals 1

    .line 1
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->maxFieldCount:I

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->resetAssignmentInfo(I)V

    return-void
.end method

.method public resetNullInfo(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
    .locals 9

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    if-eq p0, v0, :cond_2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    const/4 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->maxFieldCount:I

    add-int/2addr p1, v0

    const-wide/16 v2, 0x1

    const/16 v0, 0x40

    if-ge p1, v0, :cond_0

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    shl-long/2addr v2, p1

    not-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNBit:J

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNBit:J

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNNBit:J

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNNBit:J

    goto :goto_0

    :cond_0
    div-int/lit8 v4, p1, 0x40

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-eqz v5, :cond_2

    const/4 v6, 0x2

    aget-object v6, v5, v6

    array-length v7, v6

    if-lt v4, v7, :cond_1

    goto :goto_0

    :cond_1
    aget-wide v7, v6, v4

    rem-int/2addr p1, v0

    shl-long/2addr v2, p1

    not-long v2, v2

    and-long/2addr v7, v2

    aput-wide v7, v6, v4

    const/4 p1, 0x3

    aget-object p1, v5, p1

    aget-wide v6, p1, v4

    and-long/2addr v6, v2

    aput-wide v6, p1, v4

    aget-object p1, v5, v1

    aget-wide v0, p1, v4

    and-long/2addr v0, v2

    aput-wide v0, p1, v4

    const/4 p1, 0x5

    aget-object p1, v5, p1

    aget-wide v0, p1, v4

    and-long/2addr v0, v2

    aput-wide v0, p1, v4

    const/4 p1, 0x6

    aget-object p1, v5, p1

    aget-wide v0, p1, v4

    and-long/2addr v0, v2

    aput-wide v0, p1, v4

    const/4 p1, 0x7

    aget-object p1, v5, p1

    aget-wide v0, p1, v4

    and-long/2addr v0, v2

    aput-wide v0, p1, v4

    nop

    :cond_2
    :goto_0
    return-void
.end method

.method public safeInitsWhenTrue()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->copy()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v0

    return-object v0
.end method

.method public setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 6

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    if-ne p0, v0, :cond_0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 p1, p1, -0x4

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    goto :goto_2

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    or-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    goto :goto_2

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->potentialInits:J

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    :goto_0
    if-lt v3, v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const/4 v5, 0x1

    aget-object v4, v4, v5

    aput-wide v0, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    or-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    :goto_2
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    if-ne v0, v1, :cond_0

    const-string v1, "FlowInfo.DEAD_END"

    return-object v1

    :cond_0
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    const-string v3, "], reachable:"

    const-string v4, "], pot:["

    const-string v5, "FlowInfo<def:["

    const-string v6, ", reachable:"

    const-string v7, ", pot: "

    const-string v8, "FlowInfo<def: "

    const-string v9, ","

    const-string v10, ",..."

    const/4 v11, 0x1

    const/4 v12, 0x3

    const/4 v13, 0x0

    if-eqz v1, :cond_7

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const-string v14, ", incoming: "

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->definiteInits:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->potentialInits:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/2addr v2, v12

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v11, v13

    :goto_0
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", null: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNBit:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNNBit:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->definiteInits:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->potentialInits:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ", null:["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-wide v6, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-wide v6, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-wide v6, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v6, v6, v13

    array-length v7, v6

    if-le v7, v12, :cond_3

    move v15, v12

    goto :goto_1

    :cond_3
    array-length v6, v6

    move v15, v6

    :goto_1
    move v6, v13

    :goto_2
    if-lt v6, v15, :cond_6

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v2, v2, v13

    array-length v2, v2

    if-ge v15, v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/2addr v1, v12

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    move v11, v13

    :goto_3
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]>"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v1, v1, v13

    move-object/from16 v16, v14

    aget-wide v13, v1, v6

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v4, v4, v11

    aget-wide v13, v4, v6

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const/4 v8, 0x2

    aget-object v5, v5, v8

    aget-wide v13, v5, v6

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v5, v5, v12

    aget-wide v13, v5, v6

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v5, v5, v2

    aget-wide v13, v5, v6

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const/4 v8, 0x5

    aget-object v5, v5, v8

    aget-wide v13, v5, v6

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v13, v16

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const/4 v8, 0x6

    aget-object v5, v5, v8

    move-object/from16 v16, v3

    aget-wide v2, v5, v6

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v6, 0x1

    move-object v14, v13

    move-object/from16 v3, v16

    const/4 v2, 0x4

    const/4 v13, 0x0

    goto/16 :goto_2

    :cond_7
    move-object/from16 v16, v3

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const-string v2, ", no null info>"

    if-nez v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->definiteInits:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->potentialInits:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/2addr v3, v12

    if-nez v3, :cond_8

    goto :goto_4

    :cond_8
    const/4 v11, 0x0

    :goto_4
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->definiteInits:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->potentialInits:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const/16 v17, 0x0

    aget-object v4, v4, v17

    array-length v5, v4

    if-le v5, v12, :cond_a

    move v4, v12

    goto :goto_5

    :cond_a
    array-length v4, v4

    :goto_5
    move/from16 v5, v17

    :goto_6
    if-lt v5, v4, :cond_d

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v5, v5, v17

    array-length v5, v5

    if-ge v4, v5, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v16

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/2addr v1, v12

    if-nez v1, :cond_c

    goto :goto_7

    :cond_c
    const/4 v11, 0x0

    :goto_7
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_d
    move-object/from16 v6, v16

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    const/4 v8, 0x0

    aget-object v1, v1, v8

    aget-wide v13, v1, v5

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v3, v3, v11

    aget-wide v13, v3, v5

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v5, v5, 0x1

    move/from16 v17, v8

    goto/16 :goto_6
.end method

.method public unconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->copy()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    return-object v0
.end method

.method public unconditionalFieldLessCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;
    .locals 15

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;-><init>()V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->maxFieldCount:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->maxFieldCount:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->maxFieldCount:I

    const-wide/16 v2, 0x1

    const/16 v4, 0x40

    if-ge v1, v4, :cond_0

    iget-wide v5, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->definiteInits:J

    shl-long v7, v2, v1

    sub-long/2addr v7, v2

    not-long v7, v7

    and-long/2addr v5, v7

    iput-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->definiteInits:J

    iget-wide v5, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->potentialInits:J

    and-long/2addr v5, v7

    iput-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->potentialInits:J

    iget-wide v5, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    and-long/2addr v5, v7

    iput-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit1:J

    iget-wide v5, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    and-long/2addr v5, v7

    iput-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit2:J

    iget-wide v5, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    and-long/2addr v5, v7

    iput-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit3:J

    iget-wide v5, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    and-long/2addr v5, v7

    iput-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullBit4:J

    iget-wide v5, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNBit:J

    and-long/2addr v5, v7

    iput-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNBit:J

    iget-wide v5, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNNBit:J

    and-long/2addr v5, v7

    iput-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNNBit:J

    :cond_0
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-nez v5, :cond_1

    return-object v0

    :cond_1
    div-int/lit8 v6, v1, 0x40

    add-int/lit8 v7, v6, -0x1

    const/4 v8, 0x0

    aget-object v5, v5, v8

    array-length v5, v5

    if-lt v7, v5, :cond_2

    return-object v0

    :cond_2
    const/16 v9, 0x8

    new-array v10, v9, [[J

    iput-object v10, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    if-ge v6, v5, :cond_4

    sub-int v10, v5, v6

    move v11, v8

    :goto_0
    if-lt v11, v9, :cond_3

    goto :goto_1

    :cond_3
    iget-object v12, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v12, v12, v11

    iget-object v13, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    new-array v14, v5, [J

    aput-object v14, v13, v11

    invoke-static {v12, v6, v14, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_4
    if-ltz v7, :cond_5

    invoke-direct {v0, v5}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->createExtraSpace(I)V

    :cond_5
    :goto_1
    if-ltz v7, :cond_7

    rem-int/2addr v1, v4

    shl-long v4, v2, v1

    sub-long/2addr v4, v2

    not-long v1, v4

    :goto_2
    if-lt v8, v9, :cond_6

    goto :goto_3

    :cond_6
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v3, v3, v8

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->extra:[[J

    aget-object v4, v4, v8

    aget-wide v5, v4, v7

    and-long v4, v5, v1

    aput-wide v4, v3, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    return-object v0
.end method

.method public unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;
    .locals 0

    return-object p0
.end method

.method public unconditionalInitsWithoutSideEffect()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;
    .locals 0

    return-object p0
.end method
