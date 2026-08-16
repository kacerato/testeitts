.class public final Lorg/eclipse/jdt/internal/core/search/StringOperation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EMPTY_REGIONS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/StringOperation;->EMPTY_REGIONS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCamelCaseMatchingRegions(Ljava/lang/String;IILjava/lang/String;IIZ)[I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    const/4 v4, 0x0

    if-nez v2, :cond_0

    return-object v4

    :cond_0
    if-nez v0, :cond_1

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/StringOperation;->EMPTY_REGIONS:[I

    return-object v0

    :cond_1
    if-gez p2, :cond_2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_0

    :cond_2
    move/from16 v5, p2

    :goto_0
    if-gez p5, :cond_3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v6

    goto :goto_1

    :cond_3
    move/from16 v6, p5

    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-gt v5, v1, :cond_5

    if-gt v6, v3, :cond_4

    new-array v4, v8, [I

    aput v1, v4, v7

    sub-int/2addr v5, v1

    aput v5, v4, v9

    :cond_4
    return-object v4

    :cond_5
    if-gt v6, v3, :cond_6

    return-object v4

    :cond_6
    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual/range {p0 .. p1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v10, v11, :cond_7

    return-object v4

    :cond_7
    add-int/lit8 v10, v1, 0x1

    move v11, v9

    :goto_2
    const/16 v12, 0x80

    if-lt v10, v5, :cond_20

    move v10, v3

    move-object v13, v4

    move v14, v7

    :goto_3
    add-int/2addr v1, v9

    add-int/2addr v3, v9

    if-ne v1, v5, :cond_12

    if-eqz p6, :cond_f

    if-ne v3, v6, :cond_8

    goto :goto_6

    :cond_8
    move v0, v3

    :goto_4
    if-ne v0, v6, :cond_b

    if-nez v13, :cond_9

    new-array v13, v8, [I

    :cond_9
    add-int/lit8 v0, v14, 0x1

    aput v10, v13, v14

    add-int/2addr v14, v8

    sub-int/2addr v3, v10

    aput v3, v13, v0

    array-length v0, v13

    if-ge v14, v0, :cond_a

    new-array v0, v14, [I

    invoke-static {v13, v7, v0, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v13, v0

    :cond_a
    return-object v13

    :cond_b
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ge v1, v12, :cond_c

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->OBVIOUS_IDENT_CHAR_NATURES:[I

    aget v1, v5, v1

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_d

    return-object v4

    :cond_c
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_5

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    :goto_5
    return-object v4

    :cond_f
    :goto_6
    if-nez v13, :cond_10

    new-array v13, v8, [I

    :cond_10
    add-int/lit8 v0, v14, 0x1

    aput v10, v13, v14

    add-int/2addr v14, v8

    sub-int/2addr v3, v10

    aput v3, v13, v0

    array-length v0, v13

    if-ge v14, v0, :cond_11

    new-array v0, v14, [I

    invoke-static {v13, v7, v0, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v13, v0

    :cond_11
    return-object v13

    :cond_12
    if-ne v3, v6, :cond_13

    return-object v4

    :cond_13
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v15, v7, :cond_14

    const/4 v7, 0x0

    goto :goto_3

    :cond_14
    if-ge v15, v12, :cond_15

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->OBVIOUS_IDENT_CHAR_NATURES:[I

    aget v7, v7, v15

    and-int/lit8 v7, v7, 0x24

    if-nez v7, :cond_16

    return-object v4

    :cond_15
    invoke-static {v15}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-static {v15}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v7

    if-nez v7, :cond_16

    invoke-static {v15}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_16

    return-object v4

    :cond_16
    move v7, v3

    :goto_7
    if-ne v7, v6, :cond_17

    return-object v4

    :cond_17
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ge v9, v12, :cond_1b

    sget-object v16, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->OBVIOUS_IDENT_CHAR_NATURES:[I

    aget v12, v16, v9

    and-int/lit16 v8, v12, 0x90

    if-eqz v8, :cond_19

    :cond_18
    :goto_8
    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/16 v12, 0x80

    goto :goto_7

    :cond_19
    and-int/lit8 v8, v12, 0x4

    if-eqz v8, :cond_1a

    if-ne v15, v9, :cond_18

    goto :goto_9

    :cond_1a
    if-eq v15, v9, :cond_1e

    return-object v4

    :cond_1b
    invoke-static {v9}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v8

    if-eqz v8, :cond_1c

    invoke-static {v9}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v8

    if-nez v8, :cond_1c

    goto :goto_8

    :cond_1c
    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_1d

    if-ne v15, v9, :cond_18

    goto :goto_9

    :cond_1d
    if-eq v15, v9, :cond_1e

    return-object v4

    :cond_1e
    :goto_9
    const/4 v8, 0x2

    if-nez v13, :cond_1f

    mul-int/lit8 v9, v11, 0x2

    new-array v9, v9, [I

    move-object v13, v9

    :cond_1f
    add-int/lit8 v9, v14, 0x1

    aput v10, v13, v14

    add-int/lit8 v14, v14, 0x2

    sub-int/2addr v3, v10

    aput v3, v13, v9

    move v3, v7

    move v10, v3

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/16 v12, 0x80

    goto/16 :goto_3

    :cond_20
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x80

    if-ge v7, v9, :cond_22

    sget-object v9, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->OBVIOUS_IDENT_CHAR_NATURES:[I

    aget v7, v9, v7

    and-int/lit8 v7, v7, 0x24

    if-eqz v7, :cond_23

    :cond_21
    :goto_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_22
    invoke-static {v7}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v9

    if-eqz v9, :cond_23

    invoke-static {v7}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v9

    if-nez v9, :cond_21

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_23

    goto :goto_a

    :cond_23
    :goto_b
    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x1

    goto/16 :goto_2
.end method

.method public static final getPatternMatchingRegions(Ljava/lang/String;IILjava/lang/String;IIZ)[I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    if-nez v0, :cond_1

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/StringOperation;->EMPTY_REGIONS:[I

    return-object v0

    :cond_1
    if-gez p2, :cond_2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_0

    :cond_2
    move/from16 v4, p2

    :goto_0
    if-gez p5, :cond_3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_1

    :cond_3
    move/from16 v5, p5

    :goto_1
    const/4 v6, 0x0

    move v7, v1

    move v8, v6

    move v9, v8

    move v10, v9

    :goto_2
    const/16 v11, 0x2a

    const/16 v12, 0x3f

    if-lt v7, v4, :cond_24

    if-nez v8, :cond_5

    sub-int v5, v5, p4

    if-gt v9, v5, :cond_4

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/StringOperation;->EMPTY_REGIONS:[I

    return-object v0

    :cond_4
    return-object v3

    :cond_5
    mul-int/lit8 v8, v8, 0x2

    new-array v7, v8, [I

    move/from16 v9, p4

    move v15, v1

    move v10, v6

    move v13, v10

    move v14, v13

    move v6, v9

    :goto_3
    if-ge v15, v4, :cond_d

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v11, :cond_6

    goto :goto_5

    :cond_6
    if-ne v6, v5, :cond_7

    return-object v3

    :cond_7
    if-ne v10, v12, :cond_8

    if-eqz v14, :cond_c

    if-eq v14, v12, :cond_c

    add-int/lit8 v14, v13, 0x1

    aput v9, v7, v13

    add-int/lit8 v13, v13, 0x2

    sub-int v16, v15, v9

    aput v16, v7, v14

    goto :goto_4

    :cond_8
    if-eqz p6, :cond_9

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v10, v11, :cond_a

    return-object v3

    :cond_9
    invoke-static {v10}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->toLowerCase(C)C

    move-result v11

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v16

    invoke-static/range {v16 .. v16}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->toLowerCase(C)C

    move-result v12

    if-eq v11, v12, :cond_a

    return-object v3

    :cond_a
    if-eqz v14, :cond_b

    const/16 v11, 0x3f

    if-eq v14, v11, :cond_b

    goto :goto_4

    :cond_b
    move v9, v15

    :cond_c
    :goto_4
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v15, v15, 0x1

    move v14, v10

    const/16 v11, 0x2a

    const/16 v12, 0x3f

    goto :goto_3

    :cond_d
    :goto_5
    if-ne v10, v11, :cond_1e

    if-lez v15, :cond_e

    const/16 v1, 0x3f

    if-eq v14, v1, :cond_e

    add-int/lit8 v1, v13, 0x1

    aput v9, v7, v13

    add-int/lit8 v13, v13, 0x2

    sub-int v9, v6, v9

    aput v9, v7, v1

    move v9, v6

    :cond_e
    add-int/lit8 v15, v15, 0x1

    move v1, v6

    move v11, v10

    move v12, v15

    :goto_6
    if-lt v6, v5, :cond_13

    if-eq v12, v4, :cond_11

    if-ne v6, v5, :cond_f

    if-eq v15, v4, :cond_11

    :cond_f
    add-int/lit8 v4, v4, -0x1

    if-ne v15, v4, :cond_10

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_10

    goto :goto_7

    :cond_10
    return-object v3

    :cond_11
    :goto_7
    if-ge v13, v8, :cond_12

    add-int/lit8 v0, v13, 0x1

    aput v9, v7, v13

    sub-int/2addr v6, v9

    aput v6, v7, v0

    :cond_12
    return-object v7

    :cond_13
    if-ne v15, v4, :cond_14

    add-int/lit8 v1, v1, 0x1

    move v6, v1

    move v11, v10

    move v15, v12

    goto :goto_6

    :cond_14
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v3, 0x2a

    if-ne v14, v3, :cond_18

    add-int/lit8 v12, v15, 0x1

    if-ne v12, v4, :cond_16

    if-ge v13, v8, :cond_15

    add-int/lit8 v0, v13, 0x1

    aput v9, v7, v13

    sub-int/2addr v6, v9

    aput v6, v7, v0

    :cond_15
    return-object v7

    :cond_16
    const/16 v1, 0x2a

    if-eq v11, v1, :cond_17

    const/16 v1, 0x3f

    if-eq v11, v1, :cond_17

    add-int/lit8 v1, v13, 0x1

    aput v9, v7, v13

    add-int/lit8 v13, v13, 0x2

    sub-int v3, v6, v9

    aput v3, v7, v1

    :cond_17
    move v1, v6

    move v9, v1

    move v15, v12

    move v10, v14

    move v11, v10

    :goto_8
    const/4 v3, 0x0

    goto :goto_6

    :cond_18
    const/16 v3, 0x3f

    if-ne v14, v3, :cond_19

    move/from16 p1, v10

    const/16 v10, 0x2a

    if-eq v11, v10, :cond_1d

    if-eq v11, v3, :cond_1d

    add-int/lit8 v3, v13, 0x1

    aput v9, v7, v13

    add-int/lit8 v13, v13, 0x2

    sub-int v10, v6, v9

    aput v10, v7, v3

    goto :goto_b

    :cond_19
    move/from16 p1, v10

    if-eqz p6, :cond_1b

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v14, :cond_1a

    goto :goto_9

    :cond_1a
    const/16 v3, 0x3f

    goto :goto_a

    :cond_1b
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->toLowerCase(C)C

    move-result v3

    invoke-static {v14}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->toLowerCase(C)C

    move-result v10

    if-eq v3, v10, :cond_1a

    :goto_9
    add-int/lit8 v9, v1, 0x1

    move/from16 v10, p1

    move v11, v10

    move v1, v9

    move v6, v1

    move v15, v12

    goto :goto_8

    :goto_a
    if-eq v11, v3, :cond_1c

    goto :goto_b

    :cond_1c
    move v9, v6

    :cond_1d
    :goto_b
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v15, v15, 0x1

    move/from16 v10, p1

    move v11, v14

    goto :goto_8

    :cond_1e
    if-ne v6, v5, :cond_23

    if-ne v13, v8, :cond_1f

    return-object v7

    :cond_1f
    const/16 v2, 0x3f

    if-ne v14, v2, :cond_22

    move v3, v4

    :goto_c
    add-int/lit8 v5, v3, -0x1

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v2, :cond_20

    move v4, v5

    goto :goto_d

    :cond_20
    if-ne v5, v9, :cond_21

    sub-int/2addr v4, v1

    filled-new-array {v1, v4}, [I

    move-result-object v0

    return-object v0

    :cond_21
    move v3, v5

    const/16 v2, 0x3f

    goto :goto_c

    :cond_22
    :goto_d
    sub-int/2addr v4, v9

    filled-new-array {v9, v4}, [I

    move-result-object v0

    return-object v0

    :cond_23
    const/4 v3, 0x0

    return-object v3

    :cond_24
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2a

    if-eq v11, v12, :cond_27

    const/16 v13, 0x3f

    if-eq v11, v13, :cond_26

    if-eqz v10, :cond_25

    if-eq v10, v12, :cond_25

    if-eq v10, v13, :cond_25

    goto :goto_e

    :cond_25
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_26
    add-int/lit8 v9, v9, 0x1

    :cond_27
    :goto_e
    add-int/lit8 v7, v7, 0x1

    move v10, v11

    goto/16 :goto_2
.end method
