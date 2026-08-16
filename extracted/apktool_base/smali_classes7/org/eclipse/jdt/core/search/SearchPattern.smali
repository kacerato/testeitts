.class public abstract Lorg/eclipse/jdt/core/search/SearchPattern;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MODE_MASK:I = 0x187

.field public static final R_CAMELCASE_MATCH:I = 0x80

.field public static final R_CAMELCASE_SAME_PART_COUNT_MATCH:I = 0x100

.field public static final R_CASE_SENSITIVE:I = 0x8

.field public static final R_EQUIVALENT_MATCH:I = 0x20

.field public static final R_ERASURE_MATCH:I = 0x10

.field public static final R_EXACT_MATCH:I = 0x0

.field public static final R_FULL_MATCH:I = 0x40

.field public static final R_PATTERN_MATCH:I = 0x2

.field public static final R_PREFIX_MATCH:I = 0x1

.field public static final R_REGEXP_MATCH:I = 0x4

.field public static final R_SUBSTRING_MATCH:I = 0x200


# instance fields
.field public focus:Lorg/eclipse/jdt/core/IJavaElement;

.field public kind:I

.field private matchRule:I

.field public mustResolve:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    iput p1, p0, Lorg/eclipse/jdt/core/search/SearchPattern;->matchRule:I

    and-int/lit8 v0, p1, 0x30

    if-nez v0, :cond_0

    or-int/lit8 v0, p1, 0x40

    iput v0, p0, Lorg/eclipse/jdt/core/search/SearchPattern;->matchRule:I

    :cond_0
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_1

    iget p1, p0, Lorg/eclipse/jdt/core/search/SearchPattern;->matchRule:I

    and-int/lit16 p1, p1, -0x102

    iput p1, p0, Lorg/eclipse/jdt/core/search/SearchPattern;->matchRule:I

    goto :goto_0

    :cond_1
    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_2

    iget p1, p0, Lorg/eclipse/jdt/core/search/SearchPattern;->matchRule:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Lorg/eclipse/jdt/core/search/SearchPattern;->matchRule:I

    :cond_2
    :goto_0
    return-void
.end method

.method public static final camelCaseMatch(Ljava/lang/String;IILjava/lang/String;II)Z
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 3
    invoke-static/range {v0 .. v6}, Lorg/eclipse/jdt/core/search/SearchPattern;->camelCaseMatch(Ljava/lang/String;IILjava/lang/String;IIZ)Z

    move-result p0

    return p0
.end method

.method public static final camelCaseMatch(Ljava/lang/String;IILjava/lang/String;IIZ)Z
    .locals 0

    .line 4
    invoke-static/range {p0 .. p6}, Lorg/eclipse/jdt/internal/core/search/StringOperation;->getCamelCaseMatchingRegions(Ljava/lang/String;IILjava/lang/String;IIZ)[I

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final camelCaseMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Lorg/eclipse/jdt/core/search/SearchPattern;->camelCaseMatch(Ljava/lang/String;IILjava/lang/String;IIZ)Z

    move-result p0

    return p0
.end method

.method public static final camelCaseMatch(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lorg/eclipse/jdt/core/search/SearchPattern;->camelCaseMatch(Ljava/lang/String;IILjava/lang/String;IIZ)Z

    move-result p0

    return p0
.end method

.method public static createAndPattern(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchPattern;)Lorg/eclipse/jdt/core/search/SearchPattern;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/AndPattern;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/AndPattern;-><init>(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchPattern;)V

    return-object v0
.end method

.method private static createFieldPattern(Ljava/lang/String;II)Lorg/eclipse/jdt/core/search/SearchPattern;
    .locals 17

    new-instance v9, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/32 v4, 0x330000

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;-><init>(ZZZJ[[C[[CZ)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, -0x1

    const/4 v3, 0x1

    move-object v5, v0

    move-object v6, v5

    move-object v7, v6

    move v4, v3

    :goto_0
    const/16 v8, 0x3d

    if-ne v1, v8, :cond_a

    if-nez v5, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/16 v4, 0x2a

    const/4 v5, 0x0

    if-ne v2, v3, :cond_1

    aget-char v2, v1, v5

    if-ne v2, v4, :cond_1

    move-object v9, v0

    goto :goto_1

    :cond_1
    move-object v9, v1

    :goto_1
    const/16 v1, 0x2e

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v6

    if-ltz v6, :cond_3

    invoke-static {v2, v5, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v8

    array-length v10, v8

    if-ne v10, v3, :cond_2

    aget-char v10, v8, v5

    if-ne v10, v4, :cond_2

    move-object v8, v0

    :cond_2
    add-int/2addr v6, v3

    array-length v10, v2

    invoke-static {v2, v6, v10}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v8, v0

    :goto_2
    array-length v6, v2

    if-ne v6, v3, :cond_4

    aget-char v6, v2, v5

    if-ne v6, v4, :cond_4

    move-object v11, v0

    :goto_3
    move-object v10, v8

    goto :goto_4

    :cond_4
    move-object v11, v2

    goto :goto_3

    :cond_5
    move-object v10, v0

    move-object v11, v10

    :goto_4
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v1

    if-ltz v1, :cond_7

    invoke-static {v2, v5, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v6

    array-length v7, v6

    if-ne v7, v3, :cond_6

    aget-char v7, v6, v5

    if-ne v7, v4, :cond_6

    move-object v6, v0

    goto :goto_5

    :cond_6
    sget-object v7, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ONE_STAR:[C

    invoke-static {v7, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v6

    :goto_5
    add-int/2addr v1, v3

    array-length v7, v2

    invoke-static {v2, v1, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v2

    goto :goto_6

    :cond_7
    move-object v6, v0

    :goto_6
    array-length v1, v2

    if-ne v1, v3, :cond_8

    aget-char v1, v2, v5

    if-ne v1, v4, :cond_8

    move-object v13, v0

    :goto_7
    move-object v12, v6

    goto :goto_8

    :cond_8
    move-object v13, v2

    goto :goto_7

    :cond_9
    move-object v12, v0

    move-object v13, v12

    :goto_8
    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;

    move-object v8, v0

    move/from16 v14, p1

    move/from16 v15, p2

    invoke-direct/range {v8 .. v15}, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;-><init>([C[C[C[C[CII)V

    return-object v0

    :cond_a
    const/4 v8, 0x2

    const/16 v10, 0x3e8

    if-eq v4, v3, :cond_d

    if-eq v4, v8, :cond_b

    goto :goto_9

    :cond_b
    if-eq v1, v10, :cond_13

    if-nez v7, :cond_c

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenString()Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    :cond_d
    if-eq v1, v3, :cond_10

    if-eq v1, v10, :cond_f

    if-nez v5, :cond_e

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenString()Ljava/lang/String;

    move-result-object v5

    goto :goto_9

    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_9

    :cond_f
    if-eq v10, v2, :cond_13

    if-eq v3, v2, :cond_13

    move v4, v8

    goto :goto_9

    :cond_10
    if-nez v6, :cond_11

    if-nez v5, :cond_12

    return-object v0

    :cond_11
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenString()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_12
    move-object v6, v5

    move-object v5, v0

    :cond_13
    :goto_9
    :try_start_1
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v2
    :try_end_1
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v16, v2

    move v2, v1

    move/from16 v1, v16

    goto/16 :goto_0

    :catch_0
    return-object v0
.end method

.method private static createMethodOrConstructorPattern(Ljava/lang/String;IIZ)Lorg/eclipse/jdt/core/search/SearchPattern;
    .locals 30

    new-instance v9, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/32 v4, 0x330000

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;-><init>(ZZZJ[[C[[CZ)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_4

    move-object v2, v0

    move-object v8, v2

    move-object v11, v8

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v27, v14

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v15, -0x1

    :goto_0
    const/16 v3, 0x3d

    const/16 v4, 0x2e

    if-ne v1, v3, :cond_1c

    if-lez v6, :cond_0

    if-nez v10, :cond_0

    return-object v0

    :cond_0
    if-lez v7, :cond_1

    return-object v0

    :cond_1
    const/16 v1, 0x2a

    if-eqz p3, :cond_5

    if-nez v11, :cond_3

    move-object v3, v0

    move-object v11, v14

    :cond_2
    :goto_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    if-eqz v14, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_4
    move-object v3, v0

    goto :goto_1

    :cond_5
    if-nez v14, :cond_6

    return-object v0

    :cond_6
    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v5, v3

    const/4 v7, 0x1

    if-ne v5, v7, :cond_2

    const/4 v5, 0x0

    aget-char v7, v3, v5

    if-ne v7, v1, :cond_7

    move-object v3, v0

    :cond_7
    :goto_2
    const/16 v7, 0x3c

    if-eqz v11, :cond_c

    :try_start_1
    invoke-static {v11, v5}, Lorg/eclipse/jdt/core/Signature;->createTypeSignature(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_8

    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    goto :goto_3

    :cond_8
    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-static {v5}, Lorg/eclipse/jdt/core/Signature;->getTypeErasure([C)[C

    move-result-object v5

    invoke-static {v5}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    invoke-static {v4, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v9

    if-ltz v9, :cond_a

    const/4 v10, 0x0

    invoke-static {v5, v10, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v11

    array-length v12, v11

    const/4 v14, 0x1

    if-ne v12, v14, :cond_9

    aget-char v12, v11, v10

    if-ne v12, v1, :cond_9

    move-object v11, v0

    :cond_9
    add-int/2addr v9, v14

    array-length v10, v5

    invoke-static {v5, v9, v10}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v5

    goto :goto_4

    :cond_a
    const/4 v14, 0x1

    move-object v11, v0

    :goto_4
    array-length v9, v5

    if-ne v9, v14, :cond_b

    const/4 v9, 0x0

    aget-char v10, v5, v9

    if-ne v10, v1, :cond_b

    move-object/from16 v19, v0

    :goto_5
    move-object/from16 v20, v8

    move-object/from16 v18, v11

    goto :goto_6

    :cond_b
    move-object/from16 v19, v5

    goto :goto_5

    :catch_0
    return-object v0

    :cond_c
    move-object/from16 v18, v0

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    :goto_6
    if-ltz v6, :cond_15

    new-array v5, v6, [[C

    new-array v8, v6, [[C

    new-array v9, v6, [Ljava/lang/String;

    const/4 v10, 0x0

    :goto_7
    if-lt v10, v6, :cond_d

    move-object/from16 v24, v5

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    const/4 v7, 0x0

    goto/16 :goto_d

    :cond_d
    if-eqz v2, :cond_f

    :try_start_2
    aget-object v11, v2, v10

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lorg/eclipse/jdt/core/Signature;->createTypeSignature(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v11, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-gez v11, :cond_e

    aget-object v11, v2, v10

    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    goto :goto_8

    :cond_e
    aget-object v11, v9, v10

    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    invoke-static {v11}, Lorg/eclipse/jdt/core/Signature;->getTypeErasure([C)[C

    move-result-object v11

    invoke-static {v11}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object v11
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_8

    :catch_1
    return-object v0

    :cond_f
    move-object v11, v0

    :goto_8
    if-nez v11, :cond_10

    const/4 v12, -0x1

    goto :goto_9

    :cond_10
    invoke-static {v4, v11}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v12

    :goto_9
    if-eqz v11, :cond_12

    if-ltz v12, :cond_12

    const/4 v14, 0x0

    invoke-static {v11, v14, v12}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v15

    aput-object v15, v5, v10

    array-length v4, v15

    const/4 v7, 0x1

    if-ne v4, v7, :cond_11

    aget-char v4, v15, v14

    if-ne v4, v1, :cond_11

    aput-object v0, v5, v10

    goto :goto_a

    :cond_11
    sget-object v4, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ONE_STAR:[C

    invoke-static {v4, v15}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v4

    aput-object v4, v5, v10

    :goto_a
    add-int/lit8 v12, v12, 0x1

    array-length v4, v11

    invoke-static {v11, v12, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v4

    aput-object v4, v8, v10

    goto :goto_b

    :cond_12
    aput-object v0, v5, v10

    aput-object v11, v8, v10

    :goto_b
    aget-object v4, v8, v10

    array-length v7, v4

    const/4 v11, 0x1

    if-ne v7, v11, :cond_13

    const/4 v7, 0x0

    aget-char v4, v4, v7

    if-ne v4, v1, :cond_14

    aput-object v0, v8, v10

    goto :goto_c

    :cond_13
    const/4 v7, 0x0

    :cond_14
    :goto_c
    add-int/lit8 v10, v10, 0x1

    const/16 v4, 0x2e

    const/16 v7, 0x3c

    goto :goto_7

    :cond_15
    const/4 v7, 0x0

    move-object/from16 v24, v0

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    :goto_d
    if-eqz v13, :cond_1a

    :try_start_3
    invoke-static {v13, v7}, Lorg/eclipse/jdt/core/Signature;->createTypeSignature(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x3c

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_16

    invoke-virtual {v13}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    :goto_e
    const/16 v5, 0x2e

    goto :goto_f

    :cond_16
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/jdt/core/Signature;->getTypeErasure([C)[C

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_e

    :goto_f
    invoke-static {v5, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v5

    if-ltz v5, :cond_18

    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x1

    if-ne v8, v9, :cond_17

    aget-char v8, v7, v6

    if-ne v8, v1, :cond_17

    move-object v6, v0

    goto :goto_10

    :cond_17
    sget-object v6, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ONE_STAR:[C

    invoke-static {v6, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v6

    :goto_10
    add-int/2addr v5, v9

    array-length v7, v4

    invoke-static {v4, v5, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v4

    goto :goto_11

    :cond_18
    const/4 v9, 0x1

    move-object v6, v0

    :goto_11
    array-length v5, v4

    if-ne v5, v9, :cond_19

    const/4 v5, 0x0

    aget-char v5, v4, v5

    if-ne v5, v1, :cond_19

    move-object/from16 v22, v0

    move-object/from16 v23, v2

    :goto_12
    move-object/from16 v21, v6

    goto :goto_13

    :cond_19
    move-object/from16 v23, v2

    move-object/from16 v22, v4

    goto :goto_12

    :catch_2
    return-object v0

    :cond_1a
    move-object/from16 v21, v0

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    :goto_13
    if-eqz p3, :cond_1b

    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    move-object/from16 v16, v0

    move-object/from16 v17, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v25

    move-object/from16 v22, v26

    move-object/from16 v23, v27

    move/from16 v24, p1

    move/from16 v25, p2

    invoke-direct/range {v16 .. v25}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;-><init>([C[CLjava/lang/String;[[C[[C[Ljava/lang/String;[[CII)V

    return-object v0

    :cond_1b
    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move/from16 v28, p1

    move/from16 v29, p2

    invoke-direct/range {v16 .. v29}, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;-><init>([C[C[CLjava/lang/String;[C[CLjava/lang/String;[[C[[C[Ljava/lang/String;[[CII)V

    return-object v0

    :cond_1c
    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x1

    if-eq v5, v0, :cond_3a

    if-eq v5, v4, :cond_36

    if-eq v5, v3, :cond_27

    const/4 v0, 0x4

    if-eq v5, v0, :cond_1e

    :cond_1d
    const/16 v16, 0x0

    goto/16 :goto_1c

    :cond_1e
    if-nez v7, :cond_24

    const/16 v0, 0xb

    if-eq v1, v0, :cond_20

    const/16 v0, 0x17

    if-eq v1, v0, :cond_1f

    const/16 v0, 0x3e8

    if-eq v1, v0, :cond_1d

    goto :goto_15

    :cond_1f
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    move v5, v3

    const/4 v0, 0x1

    const/4 v6, 0x0

    :goto_14
    const/16 v16, 0x0

    goto/16 :goto_21

    :cond_20
    add-int/lit8 v7, v7, 0x1

    if-nez v13, :cond_21

    const/4 v0, 0x0

    return-object v0

    :cond_21
    :goto_15
    if-nez v13, :cond_23

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenString()Ljava/lang/String;

    move-result-object v13

    :cond_22
    :goto_16
    const/4 v0, 0x1

    goto :goto_14

    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_16

    :cond_24
    if-nez v13, :cond_25

    const/4 v0, 0x0

    return-object v0

    :cond_25
    const/16 v0, 0xb

    if-eq v1, v0, :cond_26

    packed-switch v1, :pswitch_data_0

    goto :goto_17

    :pswitch_0
    add-int/lit8 v7, v7, -0x1

    goto :goto_17

    :cond_26
    add-int/lit8 v7, v7, 0x1

    :goto_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_16

    :cond_27
    const/4 v0, 0x4

    if-nez v7, :cond_33

    const/16 v3, 0xb

    if-eq v1, v3, :cond_30

    const/16 v3, 0x19

    if-eq v1, v3, :cond_2c

    const/16 v0, 0x20

    if-eq v1, v0, :cond_28

    const/16 v0, 0x3e8

    if-eq v1, v0, :cond_1d

    goto :goto_19

    :cond_28
    if-nez v12, :cond_29

    const/4 v0, 0x0

    return-object v0

    :cond_29
    if-eqz v2, :cond_2b

    array-length v0, v2

    if-ne v0, v6, :cond_2a

    mul-int/lit8 v0, v6, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v0

    :cond_2a
    add-int/lit8 v0, v6, 0x1

    aput-object v12, v2, v6

    move v6, v0

    :cond_2b
    const/4 v0, 0x1

    const/4 v12, 0x0

    goto :goto_14

    :cond_2c
    if-eqz v12, :cond_2e

    if-eqz v2, :cond_2e

    array-length v3, v2

    if-ne v3, v6, :cond_2d

    mul-int/lit8 v3, v6, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v3

    :cond_2d
    add-int/lit8 v3, v6, 0x1

    aput-object v12, v2, v6

    move v6, v3

    :cond_2e
    if-eqz p3, :cond_2f

    move v5, v4

    goto :goto_18

    :cond_2f
    move v5, v0

    :goto_18
    const/4 v0, 0x1

    const/4 v10, 0x1

    goto/16 :goto_14

    :cond_30
    add-int/lit8 v7, v7, 0x1

    if-nez v12, :cond_31

    const/4 v0, 0x0

    return-object v0

    :cond_31
    :goto_19
    if-nez v12, :cond_32

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_16

    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_16

    :cond_33
    if-nez v12, :cond_34

    const/4 v0, 0x0

    return-object v0

    :cond_34
    const/16 v0, 0xb

    if-eq v1, v0, :cond_35

    packed-switch v1, :pswitch_data_1

    goto :goto_1a

    :pswitch_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_1a

    :cond_35
    add-int/lit8 v7, v7, 0x1

    :goto_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_16

    :cond_36
    if-nez v8, :cond_37

    const/4 v0, 0x0

    return-object v0

    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v0, 0xb

    if-eq v1, v0, :cond_38

    packed-switch v1, :pswitch_data_2

    const/4 v3, 0x0

    goto :goto_1b

    :pswitch_2
    add-int/lit8 v7, v7, -0x1

    if-nez v7, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Type"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lorg/eclipse/jdt/core/Signature;->createTypeSignature(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/core/Signature;->getTypeArguments([C)[[C

    move-result-object v27

    move/from16 v16, v3

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto/16 :goto_21

    :cond_38
    const/4 v3, 0x0

    add-int/lit8 v7, v7, 0x1

    :goto_1b
    move/from16 v16, v3

    :cond_39
    :goto_1c
    :pswitch_3
    const/4 v0, 0x1

    goto/16 :goto_21

    :cond_3a
    const/4 v0, 0x4

    const/16 v16, 0x0

    if-nez v7, :cond_47

    const/4 v0, 0x1

    if-eq v1, v0, :cond_43

    const/16 v0, 0xb

    if-eq v1, v0, :cond_3e

    const/16 v0, 0x17

    if-eq v1, v0, :cond_3d

    const/16 v0, 0x3e8

    if-eq v1, v0, :cond_3c

    if-nez v14, :cond_3b

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenString()Ljava/lang/String;

    move-result-object v14

    goto :goto_1c

    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_1c

    :cond_3c
    const/4 v3, 0x1

    if-eq v15, v3, :cond_39

    if-eq v15, v0, :cond_39

    packed-switch v15, :pswitch_data_3

    const/4 v0, 0x1

    const/4 v5, 0x4

    goto/16 :goto_21

    :cond_3d
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    move v5, v3

    move/from16 v6, v16

    goto :goto_1c

    :cond_3e
    add-int/lit8 v7, v7, 0x1

    const/4 v0, 0x1

    if-eqz v14, :cond_42

    if-ne v15, v0, :cond_3f

    goto :goto_1f

    :cond_3f
    if-nez v11, :cond_40

    goto :goto_1d

    :cond_40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_1d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_41
    :goto_1e
    const/4 v14, 0x0

    goto :goto_21

    :cond_42
    :goto_1f
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenString()Ljava/lang/String;

    move-result-object v8

    move v5, v4

    goto :goto_21

    :cond_43
    if-nez p3, :cond_44

    if-eqz v8, :cond_44

    const/4 v3, 0x0

    return-object v3

    :cond_44
    const/4 v3, 0x0

    if-nez v11, :cond_46

    if-nez v14, :cond_45

    return-object v3

    :cond_45
    move-object v11, v14

    goto :goto_1e

    :cond_46
    if-eqz v14, :cond_41

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_1e

    :cond_47
    const/4 v0, 0x1

    if-nez v11, :cond_48

    const/4 v3, 0x0

    return-object v3

    :cond_48
    const/16 v3, 0xb

    if-eq v1, v3, :cond_49

    packed-switch v1, :pswitch_data_4

    goto :goto_20

    :pswitch_4
    add-int/lit8 v7, v7, -0x1

    goto :goto_20

    :cond_49
    add-int/lit8 v7, v7, 0x1

    :goto_20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_21
    :try_start_4
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v3
    :try_end_4
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_4 .. :try_end_4} :catch_3

    move v15, v1

    move v1, v3

    const/4 v0, 0x0

    goto/16 :goto_0

    :catch_3
    const/4 v1, 0x0

    return-object v1

    :catch_4
    move-object v1, v0

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xe
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xe
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xe
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private static createModulePattern(Ljava/lang/String;II)Lorg/eclipse/jdt/core/search/SearchPattern;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-direct {v0, p0, p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;-><init>([CII)V

    return-object v0
.end method

.method public static createOrPattern(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchPattern;)Lorg/eclipse/jdt/core/search/SearchPattern;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;-><init>(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchPattern;)V

    return-object v0
.end method

.method private static createPackagePattern(Ljava/lang/String;II)Lorg/eclipse/jdt/core/search/SearchPattern;
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;

    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/PackageDeclarationPattern;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/PackageDeclarationPattern;-><init>([CI)V

    new-instance v1, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-direct {v1, p0, p2}, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;-><init>([CI)V

    invoke-direct {p1, v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;-><init>(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchPattern;)V

    return-object p1

    :cond_1
    new-instance p1, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-direct {p1, p0, p2}, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;-><init>([CI)V

    return-object p1

    :cond_2
    new-instance p1, Lorg/eclipse/jdt/internal/core/search/matching/PackageDeclarationPattern;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-direct {p1, p0, p2}, Lorg/eclipse/jdt/internal/core/search/matching/PackageDeclarationPattern;-><init>([CI)V

    return-object p1
.end method

.method public static createPattern(Ljava/lang/String;III)Lorg/eclipse/jdt/core/search/SearchPattern;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/search/SearchPattern;->validateMatchRule(Ljava/lang/String;III)I

    move-result p3

    const/4 v1, -0x1

    if-ne p3, v1, :cond_1

    return-object v0

    :cond_1
    and-int/lit8 p2, p2, -0x31

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return-object v0

    .line 3
    :pswitch_0
    invoke-static {p0, p2, p3}, Lorg/eclipse/jdt/core/search/SearchPattern;->createModulePattern(Ljava/lang/String;II)Lorg/eclipse/jdt/core/search/SearchPattern;

    move-result-object p0

    return-object p0

    :pswitch_1
    const/16 p1, 0xb

    .line 4
    invoke-static {p0, p2, p3, p1}, Lorg/eclipse/jdt/core/search/SearchPattern;->createTypePattern(Ljava/lang/String;IIC)Lorg/eclipse/jdt/core/search/SearchPattern;

    move-result-object p0

    return-object p0

    :pswitch_2
    const/16 p1, 0xa

    .line 5
    invoke-static {p0, p2, p3, p1}, Lorg/eclipse/jdt/core/search/SearchPattern;->createTypePattern(Ljava/lang/String;IIC)Lorg/eclipse/jdt/core/search/SearchPattern;

    move-result-object p0

    return-object p0

    :pswitch_3
    const/16 p1, 0x9

    .line 6
    invoke-static {p0, p2, p3, p1}, Lorg/eclipse/jdt/core/search/SearchPattern;->createTypePattern(Ljava/lang/String;IIC)Lorg/eclipse/jdt/core/search/SearchPattern;

    move-result-object p0

    return-object p0

    :pswitch_4
    const/16 p1, 0x41

    .line 7
    invoke-static {p0, p2, p3, p1}, Lorg/eclipse/jdt/core/search/SearchPattern;->createTypePattern(Ljava/lang/String;IIC)Lorg/eclipse/jdt/core/search/SearchPattern;

    move-result-object p0

    return-object p0

    :pswitch_5
    const/16 p1, 0x45

    .line 8
    invoke-static {p0, p2, p3, p1}, Lorg/eclipse/jdt/core/search/SearchPattern;->createTypePattern(Ljava/lang/String;IIC)Lorg/eclipse/jdt/core/search/SearchPattern;

    move-result-object p0

    return-object p0

    :pswitch_6
    const/16 p1, 0x49

    .line 9
    invoke-static {p0, p2, p3, p1}, Lorg/eclipse/jdt/core/search/SearchPattern;->createTypePattern(Ljava/lang/String;IIC)Lorg/eclipse/jdt/core/search/SearchPattern;

    move-result-object p0

    return-object p0

    :pswitch_7
    const/16 p1, 0x43

    .line 10
    invoke-static {p0, p2, p3, p1}, Lorg/eclipse/jdt/core/search/SearchPattern;->createTypePattern(Ljava/lang/String;IIC)Lorg/eclipse/jdt/core/search/SearchPattern;

    move-result-object p0

    return-object p0

    .line 11
    :pswitch_8
    invoke-static {p0, p2, p3}, Lorg/eclipse/jdt/core/search/SearchPattern;->createFieldPattern(Ljava/lang/String;II)Lorg/eclipse/jdt/core/search/SearchPattern;

    move-result-object p0

    return-object p0

    :pswitch_9
    const/4 p1, 0x1

    .line 12
    invoke-static {p0, p2, p3, p1}, Lorg/eclipse/jdt/core/search/SearchPattern;->createMethodOrConstructorPattern(Ljava/lang/String;IIZ)Lorg/eclipse/jdt/core/search/SearchPattern;

    move-result-object p0

    return-object p0

    .line 13
    :pswitch_a
    invoke-static {p0, p2, p3}, Lorg/eclipse/jdt/core/search/SearchPattern;->createPackagePattern(Ljava/lang/String;II)Lorg/eclipse/jdt/core/search/SearchPattern;

    move-result-object p0

    return-object p0

    .line 14
    :pswitch_b
    invoke-static {p0, p2, p3, v1}, Lorg/eclipse/jdt/core/search/SearchPattern;->createMethodOrConstructorPattern(Ljava/lang/String;IIZ)Lorg/eclipse/jdt/core/search/SearchPattern;

    move-result-object p0

    return-object p0

    .line 15
    :pswitch_c
    invoke-static {p0, p2, p3, v1}, Lorg/eclipse/jdt/core/search/SearchPattern;->createTypePattern(Ljava/lang/String;IIC)Lorg/eclipse/jdt/core/search/SearchPattern;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static createPattern(Lorg/eclipse/jdt/core/IJavaElement;I)Lorg/eclipse/jdt/core/search/SearchPattern;
    .locals 1

    const/16 v0, 0x18

    .line 16
    invoke-static {p0, p1, v0}, Lorg/eclipse/jdt/core/search/SearchPattern;->createPattern(Lorg/eclipse/jdt/core/IJavaElement;II)Lorg/eclipse/jdt/core/search/SearchPattern;

    move-result-object p0

    return-object p0
.end method

.method public static createPattern(Lorg/eclipse/jdt/core/IJavaElement;II)Lorg/eclipse/jdt/core/search/SearchPattern;
    .locals 21

    move-object/from16 v0, p0

    move/from16 v12, p1

    and-int/lit8 v6, v12, -0x31

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v6, :cond_1

    const/4 v3, 0x3

    if-ne v6, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    move v4, v3

    goto :goto_2

    :cond_1
    :goto_0
    and-int/lit8 v3, v12, 0x10

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    and-int/lit8 v4, v12, 0x20

    if-eqz v4, :cond_3

    move v4, v1

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    const/4 v5, 0x0

    move/from16 v7, p2

    .line 17
    invoke-static {v5, v7}, Lorg/eclipse/jdt/core/search/SearchPattern;->validateMatchRule(Ljava/lang/String;I)I

    move-result v13

    const/4 v7, -0x1

    if-ne v13, v7, :cond_4

    return-object v5

    .line 18
    :cond_4
    invoke-interface/range {p0 .. p0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v8

    const/16 v9, 0x24

    const/16 v10, 0x2e

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_e

    .line 19
    :pswitch_1
    invoke-interface/range {p0 .. p0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6, v13}, Lorg/eclipse/jdt/core/search/SearchPattern;->createModulePattern(Ljava/lang/String;II)Lorg/eclipse/jdt/core/search/SearchPattern;

    move-result-object v5

    goto/16 :goto_e

    .line 20
    :pswitch_2
    move-object v3, v0

    check-cast v3, Lorg/eclipse/jdt/core/ITypeParameter;

    if-eqz v6, :cond_6

    const/4 v4, 0x2

    if-eq v6, v4, :cond_5

    move v2, v1

    goto :goto_3

    :cond_5
    move/from16 v20, v2

    move v2, v1

    move/from16 v1, v20

    .line 21
    :cond_6
    :goto_3
    new-instance v5, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;

    invoke-direct {v5, v1, v2, v3, v13}, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;-><init>(ZZLorg/eclipse/jdt/core/ITypeParameter;I)V

    goto/16 :goto_e

    .line 22
    :pswitch_3
    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/core/LocalVariable;

    .line 23
    new-instance v5, Lorg/eclipse/jdt/internal/core/search/matching/LocalVariablePattern;

    invoke-direct {v5, v1, v12, v13}, Lorg/eclipse/jdt/internal/core/search/matching/LocalVariablePattern;-><init>(Lorg/eclipse/jdt/internal/core/LocalVariable;II)V

    goto/16 :goto_e

    .line 24
    :pswitch_4
    invoke-interface/range {p0 .. p0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {v1, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-ne v3, v7, :cond_7

    return-object v5

    .line 26
    :cond_7
    move-object v4, v0

    check-cast v4, Lorg/eclipse/jdt/core/IImportDeclaration;

    .line 27
    invoke-interface {v4}, Lorg/eclipse/jdt/core/IImportDeclaration;->isOnDemand()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 28
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6, v13}, Lorg/eclipse/jdt/core/search/SearchPattern;->createPackagePattern(Ljava/lang/String;II)Lorg/eclipse/jdt/core/search/SearchPattern;

    move-result-object v5

    goto/16 :goto_e

    :cond_8
    add-int/lit8 v4, v3, 0x1

    .line 29
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 30
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v1, v4

    move-object v4, v5

    move-object v5, v7

    move v7, v13

    .line 31
    invoke-static/range {v1 .. v7}, Lorg/eclipse/jdt/core/search/SearchPattern;->createTypePattern([C[C[[CLjava/lang/String;Lorg/eclipse/jdt/core/IType;II)Lorg/eclipse/jdt/core/search/SearchPattern;

    move-result-object v5

    goto/16 :goto_e

    .line 32
    :pswitch_5
    move-object v11, v0

    check-cast v11, Lorg/eclipse/jdt/core/IMethod;

    .line 33
    :try_start_0
    invoke-interface {v11}, Lorg/eclipse/jdt/core/IMethod;->isConstructor()Z

    move-result v1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_1

    .line 34
    invoke-interface {v11}, Lorg/eclipse/jdt/core/IMember;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object v6

    if-eqz v3, :cond_a

    if-eqz v1, :cond_9

    .line 35
    invoke-interface {v6}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    move-object v6, v3

    move-object v3, v5

    goto :goto_4

    :cond_9
    move-object v3, v5

    move-object v6, v3

    goto :goto_4

    .line 36
    :cond_a
    invoke-interface {v6}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 37
    invoke-interface {v6}, Lorg/eclipse/jdt/core/IType;->getPackageFragment()Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object v8

    invoke-interface {v8}, Lorg/eclipse/jdt/core/IPackageFragment;->getElementName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    .line 38
    invoke-static {v6}, Lorg/eclipse/jdt/core/search/SearchPattern;->enclosingTypeNames(Lorg/eclipse/jdt/core/IType;)[[C

    move-result-object v6

    .line 39
    array-length v14, v6

    if-lez v14, :cond_b

    .line 40
    invoke-static {v6, v10}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v6

    invoke-static {v8, v6, v10}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object v6

    move-object/from16 v20, v6

    move-object v6, v3

    move-object/from16 v3, v20

    goto :goto_4

    :cond_b
    move-object v6, v3

    move-object v3, v8

    .line 41
    :goto_4
    invoke-interface {v11}, Lorg/eclipse/jdt/core/IMethod;->getElementName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    if-nez v4, :cond_e

    .line 42
    :try_start_1
    invoke-interface {v11}, Lorg/eclipse/jdt/core/IMethod;->getReturnType()Ljava/lang/String;

    move-result-object v4

    .line 43
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    .line 44
    invoke-static {v14}, Lorg/eclipse/jdt/core/Signature;->getTypeErasure([C)[C

    move-result-object v14

    invoke-static {v14}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object v14

    .line 45
    invoke-static {v14, v9, v10}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    .line 46
    invoke-static {v10, v14}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v15

    if-ne v15, v7, :cond_c

    move-object v7, v4

    move-object v9, v5

    goto :goto_5

    :cond_c
    add-int/lit8 v7, v15, 0x1

    .line 47
    array-length v9, v14

    invoke-static {v14, v7, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v7

    .line 48
    invoke-static {v14, v2, v15}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v9

    .line 49
    invoke-interface {v11}, Lorg/eclipse/jdt/core/IMember;->isBinary()Z

    move-result v14

    if-nez v14, :cond_d

    .line 50
    sget-object v14, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ONE_STAR:[C

    invoke-static {v14, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_d
    move-object v14, v7

    move-object v7, v4

    goto :goto_5

    :catch_0
    return-object v5

    :cond_e
    move-object v7, v5

    move-object v9, v7

    move-object v14, v9

    .line 51
    :goto_5
    invoke-interface {v11}, Lorg/eclipse/jdt/core/IMethod;->getParameterTypes()[Ljava/lang/String;

    move-result-object v4

    .line 52
    array-length v15, v4

    .line 53
    new-array v10, v15, [[C

    .line 54
    new-array v12, v15, [[C

    .line 55
    new-array v0, v15, [Ljava/lang/String;

    :goto_6
    if-lt v2, v15, :cond_10

    if-eqz v1, :cond_f

    .line 56
    new-instance v14, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    move-object v1, v14

    move-object v2, v6

    move-object v4, v12

    move-object v5, v10

    move-object v6, v0

    move-object v7, v11

    move/from16 v8, p1

    move v9, v13

    invoke-direct/range {v1 .. v9}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;-><init>([C[C[[C[[C[Ljava/lang/String;Lorg/eclipse/jdt/core/IMethod;II)V

    move-object/from16 v0, p0

    move-object v5, v14

    goto/16 :goto_e

    .line 57
    :cond_f
    new-instance v15, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    move-object v1, v15

    move-object v2, v8

    move-object v4, v6

    move-object v5, v9

    move-object v6, v14

    move-object v8, v12

    move-object v9, v10

    move-object v10, v0

    move/from16 v12, p1

    invoke-direct/range {v1 .. v13}, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;-><init>([C[C[C[C[CLjava/lang/String;[[C[[C[Ljava/lang/String;Lorg/eclipse/jdt/core/IMethod;II)V

    move-object/from16 v0, p0

    move-object v5, v15

    goto/16 :goto_e

    .line 58
    :cond_10
    aget-object v16, v4, v2

    aput-object v16, v0, v2

    .line 59
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toCharArray()[C

    move-result-object v16

    .line 60
    invoke-static/range {v16 .. v16}, Lorg/eclipse/jdt/core/Signature;->getTypeErasure([C)[C

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object v5

    move-object/from16 v16, v0

    move/from16 v18, v1

    const/16 v0, 0x24

    const/16 v1, 0x2e

    .line 61
    invoke-static {v5, v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    .line 62
    invoke-static {v1, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 63
    aput-object v5, v10, v2

    const/4 v0, 0x0

    .line 64
    aput-object v0, v12, v2

    move-object/from16 v19, v3

    goto :goto_7

    :cond_11
    add-int/lit8 v1, v0, 0x1

    move-object/from16 v19, v3

    .line 65
    array-length v3, v5

    invoke-static {v5, v1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v1

    aput-object v1, v10, v2

    const/4 v1, 0x0

    .line 66
    invoke-static {v5, v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v0

    aput-object v0, v12, v2

    .line 67
    invoke-interface {v11}, Lorg/eclipse/jdt/core/IMember;->isBinary()Z

    move-result v0

    if-nez v0, :cond_12

    .line 68
    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ONE_STAR:[C

    aget-object v1, v12, v2

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    :cond_12
    :goto_7
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    move-object/from16 v3, v19

    const/4 v5, 0x0

    goto :goto_6

    :catch_1
    move-object v0, v5

    return-object v0

    .line 69
    :pswitch_6
    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/core/IField;

    if-nez v3, :cond_14

    .line 70
    invoke-interface {v1}, Lorg/eclipse/jdt/core/IMember;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object v2

    .line 71
    invoke-interface {v2}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 72
    invoke-interface {v2}, Lorg/eclipse/jdt/core/IType;->getPackageFragment()Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object v5

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IPackageFragment;->getElementName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 73
    invoke-static {v2}, Lorg/eclipse/jdt/core/search/SearchPattern;->enclosingTypeNames(Lorg/eclipse/jdt/core/IType;)[[C

    move-result-object v2

    .line 74
    array-length v6, v2

    if-lez v6, :cond_13

    const/16 v6, 0x2e

    .line 75
    invoke-static {v2, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v2

    invoke-static {v5, v2, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object v2

    move-object v5, v3

    move-object v3, v2

    goto :goto_8

    :cond_13
    move-object/from16 v20, v5

    move-object v5, v3

    move-object/from16 v3, v20

    goto :goto_8

    :cond_14
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 76
    :goto_8
    invoke-interface {v1}, Lorg/eclipse/jdt/core/IField;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    if-nez v4, :cond_17

    .line 77
    :try_start_2
    invoke-interface {v1}, Lorg/eclipse/jdt/core/IField;->getTypeSignature()Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 79
    invoke-static {v6}, Lorg/eclipse/jdt/core/Signature;->getTypeErasure([C)[C

    move-result-object v6

    invoke-static {v6}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object v6

    const/16 v7, 0x24

    const/16 v8, 0x2e

    .line 80
    invoke-static {v6, v7, v8}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    .line 81
    invoke-static {v8, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_15

    move-object v7, v4

    const/16 v17, 0x0

    goto :goto_b

    :cond_15
    add-int/lit8 v8, v7, 0x1

    .line 82
    array-length v9, v6

    invoke-static {v6, v8, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v8

    const/4 v9, 0x0

    .line 83
    invoke-static {v6, v9, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v6

    .line 84
    invoke-interface {v1}, Lorg/eclipse/jdt/core/IMember;->isBinary()Z

    move-result v1

    if-nez v1, :cond_16

    .line 85
    sget-object v1, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ONE_STAR:[C

    invoke-static {v1, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v1
    :try_end_2
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v17, v1

    move-object v7, v4

    :goto_9
    move-object v6, v8

    goto :goto_b

    :catch_2
    const/4 v1, 0x0

    goto :goto_a

    :cond_16
    move-object v7, v4

    move-object/from16 v17, v6

    goto :goto_9

    :goto_a
    return-object v1

    :cond_17
    const/4 v1, 0x0

    move-object v6, v1

    move-object v7, v6

    move-object/from16 v17, v7

    .line 86
    :goto_b
    new-instance v10, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;

    move-object v1, v10

    move-object v4, v5

    move-object/from16 v5, v17

    move/from16 v8, p1

    move v9, v13

    invoke-direct/range {v1 .. v9}, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;-><init>([C[C[C[C[CLjava/lang/String;II)V

    move-object v5, v10

    goto :goto_e

    :pswitch_7
    move-object v1, v5

    .line 87
    move-object v5, v0

    check-cast v5, Lorg/eclipse/jdt/core/IType;

    .line 88
    invoke-interface {v5}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 89
    invoke-interface {v5}, Lorg/eclipse/jdt/core/IType;->getPackageFragment()Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IPackageFragment;->getElementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    if-eqz v3, :cond_18

    :goto_c
    move-object v3, v1

    goto :goto_d

    .line 90
    :cond_18
    invoke-static {v5}, Lorg/eclipse/jdt/core/search/SearchPattern;->enclosingTypeNames(Lorg/eclipse/jdt/core/IType;)[[C

    move-result-object v1

    goto :goto_c

    :goto_d
    const/4 v7, 0x0

    move-object v1, v2

    move-object v2, v4

    move-object v4, v7

    move v7, v13

    .line 91
    invoke-static/range {v1 .. v7}, Lorg/eclipse/jdt/core/search/SearchPattern;->createTypePattern([C[C[[CLjava/lang/String;Lorg/eclipse/jdt/core/IType;II)Lorg/eclipse/jdt/core/search/SearchPattern;

    move-result-object v5

    goto :goto_e

    .line 92
    :pswitch_8
    invoke-interface/range {p0 .. p0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6, v13}, Lorg/eclipse/jdt/core/search/SearchPattern;->createPackagePattern(Ljava/lang/String;II)Lorg/eclipse/jdt/core/search/SearchPattern;

    move-result-object v5

    :goto_e
    if-eqz v5, :cond_19

    .line 93
    invoke-static {v5, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->setFocus(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/IJavaElement;)V

    :cond_19
    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static createTypePattern(Ljava/lang/String;IIC)Lorg/eclipse/jdt/core/search/SearchPattern;
    .locals 21

    move/from16 v4, p1

    const/16 v0, 0x2f

    .line 23
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 24
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-ne v2, v7, :cond_0

    .line 25
    aget-object v1, v0, v3

    .line 26
    aget-object v0, v0, v5

    goto :goto_0

    :cond_0
    move-object v0, v1

    move-object v1, v6

    :goto_0
    if-eqz v1, :cond_1

    .line 27
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    move-object v9, v1

    goto :goto_1

    :cond_1
    move-object v9, v6

    .line 28
    :goto_1
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const-wide/32 v14, 0x330000

    const/16 v16, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v18}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;-><init>(ZZZJ[[C[[CZ)V

    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    .line 30
    :try_start_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_1

    move v2, v3

    move-object v8, v6

    :goto_2
    const/16 v10, 0x3d

    if-ne v0, v10, :cond_c

    if-nez v8, :cond_2

    return-object v6

    .line 31
    :cond_2
    :try_start_1
    invoke-static {v8, v3}, Lorg/eclipse/jdt/core/Signature;->createTypeSignature(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v14

    const/16 v0, 0x3c

    .line 32
    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_3

    .line 33
    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_3

    .line 34
    :cond_3
    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/core/Signature;->getTypeErasure([C)[C

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    const/16 v1, 0x2e

    .line 35
    invoke-static {v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v1

    const/16 v2, 0x2a

    if-ltz v1, :cond_5

    .line 36
    invoke-static {v0, v3, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v8

    .line 37
    array-length v10, v8

    if-ne v10, v5, :cond_4

    aget-char v10, v8, v3

    if-ne v10, v2, :cond_4

    move-object v8, v6

    :cond_4
    add-int/2addr v1, v5

    .line 38
    array-length v10, v0

    invoke-static {v0, v1, v10}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v0

    move-object/from16 v16, v8

    goto :goto_4

    :cond_5
    move-object/from16 v16, v6

    .line 39
    :goto_4
    array-length v1, v0

    if-ne v1, v5, :cond_6

    aget-char v1, v0, v3

    if-ne v1, v2, :cond_6

    move-object/from16 v17, v6

    goto :goto_5

    :cond_6
    move-object/from16 v17, v0

    :goto_5
    if-eqz v4, :cond_b

    if-eq v4, v5, :cond_a

    if-eq v4, v7, :cond_9

    const/4 v0, 0x3

    if-eq v4, v0, :cond_8

    const/4 v0, 0x6

    if-eq v4, v0, :cond_7

    .line 40
    new-instance v7, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    move-object v0, v7

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object v3, v14

    move/from16 v4, p1

    move/from16 v5, p3

    move/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;-><init>([C[CLjava/lang/String;ICI)V

    return-object v7

    :cond_7
    move v3, v5

    goto :goto_6

    .line 41
    :cond_8
    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;

    .line 42
    new-instance v1, Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;

    move-object v8, v1

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    move/from16 v12, p3

    move/from16 v13, p2

    invoke-direct/range {v8 .. v13}, Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;-><init>([C[C[CCI)V

    .line 43
    new-instance v2, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    move-object v11, v2

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move/from16 v15, p3

    move/from16 v16, p2

    invoke-direct/range {v11 .. v16}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;-><init>([C[CLjava/lang/String;CI)V

    .line 44
    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;-><init>(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchPattern;)V

    return-object v0

    .line 45
    :cond_9
    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    move-object v11, v0

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move/from16 v15, p3

    move/from16 v16, p2

    invoke-direct/range {v11 .. v16}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;-><init>([C[CLjava/lang/String;CI)V

    return-object v0

    .line 46
    :cond_a
    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;

    const/16 v18, 0x1

    move-object v15, v0

    move/from16 v19, p3

    move/from16 v20, p2

    invoke-direct/range {v15 .. v20}, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;-><init>([C[CICI)V

    return-object v0

    .line 47
    :cond_b
    :goto_6
    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;

    move-object v8, v0

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    move/from16 v12, p3

    move/from16 v13, p2

    invoke-direct/range {v8 .. v13}, Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;-><init>([C[C[CCI)V

    .line 48
    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->moduleGraph:Z

    return-object v0

    :catch_0
    return-object v6

    :cond_c
    const/16 v10, 0xb

    if-nez v2, :cond_f

    if-eq v0, v10, :cond_d

    const/16 v10, 0x3e8

    if-eq v0, v10, :cond_12

    goto :goto_7

    :cond_d
    add-int/lit8 v2, v2, 0x1

    :goto_7
    if-nez v8, :cond_e

    .line 49
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenString()Ljava/lang/String;

    move-result-object v8

    goto :goto_9

    .line 50
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_9

    :cond_f
    if-eq v0, v10, :cond_10

    packed-switch v0, :pswitch_data_0

    goto :goto_8

    :pswitch_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    :cond_10
    add-int/lit8 v2, v2, 0x1

    :goto_8
    if-nez v8, :cond_11

    return-object v6

    .line 51
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 52
    :cond_12
    :goto_9
    :try_start_2
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v0
    :try_end_2
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    :catch_1
    return-object v6

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static createTypePattern([C[C[[CLjava/lang/String;Lorg/eclipse/jdt/core/IType;II)Lorg/eclipse/jdt/core/search/SearchPattern;
    .locals 8

    if-eqz p5, :cond_6

    const/4 v0, 0x1

    const/16 v1, 0x2e

    if-eq p5, v0, :cond_5

    const/4 v0, 0x2

    if-eq p5, v0, :cond_3

    const/4 v0, 0x3

    if-eq p5, v0, :cond_1

    if-eqz p4, :cond_0

    .line 1
    new-instance p3, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    .line 2
    invoke-static {p1, p2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([C[[CC)[C

    move-result-object v3

    move-object v2, p3

    move-object v4, p0

    move-object v5, p4

    move v6, p5

    move v7, p6

    .line 3
    invoke-direct/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;-><init>([C[CLorg/eclipse/jdt/core/IType;II)V

    return-object p3

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_1
    new-instance p5, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;

    .line 5
    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;

    const/4 v6, 0x0

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    move v7, p6

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;-><init>([C[[C[CCI)V

    if-eqz p4, :cond_2

    .line 6
    new-instance p3, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    .line 7
    invoke-static {p1, p2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([C[[CC)[C

    move-result-object p1

    .line 8
    invoke-direct {p3, p1, p0, p4, p6}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;-><init>([C[CLorg/eclipse/jdt/core/IType;I)V

    goto :goto_0

    .line 9
    :cond_2
    new-instance p4, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    .line 10
    invoke-static {p1, p2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([C[[CC)[C

    move-result-object p1

    .line 11
    invoke-direct {p4, p1, p0, p3, p6}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;-><init>([C[CLjava/lang/String;I)V

    move-object p3, p4

    .line 12
    :goto_0
    invoke-direct {p5, v0, p3}, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;-><init>(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchPattern;)V

    return-object p5

    :cond_3
    if-eqz p4, :cond_4

    .line 13
    new-instance p3, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    .line 14
    invoke-static {p1, p2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([C[[CC)[C

    move-result-object p1

    .line 15
    invoke-direct {p3, p1, p0, p4, p6}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;-><init>([C[CLorg/eclipse/jdt/core/IType;I)V

    return-object p3

    .line 16
    :cond_4
    new-instance p4, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    .line 17
    invoke-static {p1, p2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([C[[CC)[C

    move-result-object p1

    .line 18
    invoke-direct {p4, p1, p0, p3, p6}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;-><init>([C[CLjava/lang/String;I)V

    return-object p4

    .line 19
    :cond_5
    new-instance p3, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;

    .line 20
    invoke-static {p1, p2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([C[[CC)[C

    move-result-object p1

    .line 21
    invoke-direct {p3, p1, p0, v0, p6}, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;-><init>([C[CII)V

    return-object p3

    .line 22
    :cond_6
    new-instance p3, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;

    const/4 v5, 0x0

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move v6, p6

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;-><init>([C[[C[CCI)V

    return-object p3
.end method

.method private static enclosingTypeNames(Lorg/eclipse/jdt/core/IType;)[[C
    .locals 3

    invoke-interface {p0}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    return-object v2

    :pswitch_0
    check-cast v0, Lorg/eclipse/jdt/core/IMember;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IMember;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/core/search/SearchPattern;->enclosingTypeNames(Lorg/eclipse/jdt/core/IType;)[[C

    move-result-object v0

    invoke-interface {p0}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    sget-object v1, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ONE_STAR:[C

    filled-new-array {p0, v1}, [[C

    move-result-object p0

    invoke-static {v0, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->arrayConcat([[C[[C)[[C

    move-result-object p0

    return-object p0

    :pswitch_1
    move-object p0, v0

    check-cast p0, Lorg/eclipse/jdt/core/IType;

    invoke-static {p0}, Lorg/eclipse/jdt/core/search/SearchPattern;->enclosingTypeNames(Lorg/eclipse/jdt/core/IType;)[[C

    move-result-object p0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->arrayConcat([[C[C)[[C

    move-result-object p0

    return-object p0

    :pswitch_2
    instance-of v0, v0, Lorg/eclipse/jdt/core/IModularClassFile;

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    invoke-interface {p0}, Lorg/eclipse/jdt/core/IMember;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    return-object p0

    :cond_1
    invoke-static {p0}, Lorg/eclipse/jdt/core/search/SearchPattern;->enclosingTypeNames(Lorg/eclipse/jdt/core/IType;)[[C

    move-result-object v0

    invoke-interface {p0}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {v0, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->arrayConcat([[C[C)[[C

    move-result-object p0

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    return-object p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static final getMatchingRegions(Ljava/lang/String;Ljava/lang/String;I)[I
    .locals 12

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-nez p0, :cond_1

    new-array p0, v8, [I

    aput v6, p0, v9

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz p2, :cond_b

    const/4 v11, 0x0

    if-eq p2, v9, :cond_a

    if-eq p2, v8, :cond_9

    const/16 v1, 0x80

    if-eq p2, v1, :cond_7

    const/16 v1, 0x88

    if-eq p2, v1, :cond_6

    const/16 v1, 0x100

    if-eq p2, v1, :cond_5

    const/16 v1, 0x108

    if-eq p2, v1, :cond_4

    const/16 v1, 0x200

    if-eq p2, v1, :cond_2

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    move-object v1, p0

    move v3, v10

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Lorg/eclipse/jdt/internal/core/search/StringOperation;->getPatternMatchingRegions(Ljava/lang/String;IILjava/lang/String;IIZ)[I

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    new-array p0, v8, [I

    aput v10, p0, v9

    return-object p0

    :pswitch_2
    if-ne v10, v6, :cond_c

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    new-array p0, v8, [I

    aput v10, p0, v9

    return-object p0

    :cond_2
    if-gt v10, v6, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p0, p1, v11}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf([C[CZ)I

    move-result p0

    if-ltz p0, :cond_3

    new-array v0, v8, [I

    aput p0, v0, v11

    aput v10, v0, v9

    :cond_3
    return-object v0

    :cond_4
    move v7, v9

    goto :goto_0

    :cond_5
    move v7, v9

    goto :goto_1

    :cond_6
    move v7, v11

    :goto_0
    if-gt v10, v6, :cond_c

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v3, v10

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Lorg/eclipse/jdt/internal/core/search/StringOperation;->getCamelCaseMatchingRegions(Ljava/lang/String;IILjava/lang/String;IIZ)[I

    move-result-object p0

    return-object p0

    :cond_7
    move v7, v11

    :goto_1
    if-gt v10, v6, :cond_c

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v3, v10

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Lorg/eclipse/jdt/internal/core/search/StringOperation;->getCamelCaseMatchingRegions(Ljava/lang/String;IILjava/lang/String;IIZ)[I

    move-result-object p2

    if-eqz p2, :cond_8

    return-object p2

    :cond_8
    invoke-virtual {p1, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    new-array p0, v8, [I

    aput v10, p0, v9

    return-object p0

    :cond_9
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    move v3, v10

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Lorg/eclipse/jdt/internal/core/search/StringOperation;->getPatternMatchingRegions(Ljava/lang/String;IILjava/lang/String;IIZ)[I

    move-result-object p0

    return-object p0

    :cond_a
    if-gt v10, v6, :cond_c

    invoke-virtual {p1, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    new-array p0, v8, [I

    aput v10, p0, v9

    return-object p0

    :cond_b
    if-ne v10, v6, :cond_c

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    new-array p0, v8, [I

    aput v10, p0, v9

    return-object p0

    :cond_c
    :goto_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static validateCamelCasePattern(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v4, v0

    move v3, v2

    move v5, v3

    move v6, v5

    :goto_0
    if-ge v3, v1, :cond_6

    if-nez v4, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-nez v3, :cond_2

    invoke-static {v4}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierStart(C)Z

    move-result v7

    goto :goto_1

    :cond_2
    invoke-static {v4}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierPart(C)Z

    move-result v7

    :goto_1
    invoke-static {v4}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v6, v6, 0x1

    :cond_3
    if-nez v3, :cond_5

    if-nez v6, :cond_4

    move v5, v0

    goto :goto_2

    :cond_4
    move v5, v2

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_0

    :cond_6
    :goto_3
    if-eqz v4, :cond_9

    if-eqz v5, :cond_8

    if-lez v6, :cond_7

    goto :goto_4

    :cond_7
    move v0, v2

    goto :goto_4

    :cond_8
    if-le v6, v0, :cond_7

    :goto_4
    move v4, v0

    :cond_9
    return v4
.end method

.method public static validateMatchRule(Ljava/lang/String;I)I
    .locals 2

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-eqz p0, :cond_2

    const/16 v0, 0x2a

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x3f

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v0, :cond_1

    if-gez v1, :cond_1

    and-int/lit8 p1, p1, -0x3

    goto :goto_0

    :cond_1
    or-int/lit8 p1, p1, 0x2

    :cond_2
    :goto_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_3

    and-int/lit16 p0, p1, -0x182

    return p0

    :cond_3
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_5

    and-int/lit16 v0, p1, -0x102

    .line 3
    invoke-static {p0}, Lorg/eclipse/jdt/core/search/SearchPattern;->validateCamelCasePattern(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    and-int/lit16 p0, p1, -0x182

    or-int/lit8 v0, p0, 0x1

    :cond_4
    return v0

    :cond_5
    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_7

    and-int/lit8 v0, p1, -0x2

    .line 4
    invoke-static {p0}, Lorg/eclipse/jdt/core/search/SearchPattern;->validateCamelCasePattern(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_6

    and-int/lit16 v0, p1, -0x102

    :cond_6
    return v0

    :cond_7
    return p1
.end method

.method private static validateMatchRule(Ljava/lang/String;III)I
    .locals 1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x4

    if-ne p3, p1, :cond_0

    return p3

    .line 5
    :cond_0
    invoke-static {p0, p3}, Lorg/eclipse/jdt/core/search/SearchPattern;->validateMatchRule(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public acceptMatch(Ljava/lang/String;Ljava/lang/String;CLorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/core/search/IJavaSearchScope;)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 1
    invoke-virtual/range {v0 .. v8}, Lorg/eclipse/jdt/core/search/SearchPattern;->acceptMatch(Ljava/lang/String;Ljava/lang/String;CLorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public acceptMatch(Ljava/lang/String;Ljava/lang/String;CLorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 3

    .line 2
    instance-of v0, p7, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;

    if-eqz v0, :cond_1

    .line 3
    check-cast p7, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;

    .line 4
    invoke-virtual {p7, p1, p2}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->getAccessRuleSet(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    move-result-object p7

    .line 5
    sget-object p8, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->NOT_ENCLOSED:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    if-eq p7, p8, :cond_4

    .line 6
    new-instance p8, Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p8, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 7
    invoke-virtual {p8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    invoke-virtual {p8, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 9
    invoke-virtual {p8, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10
    invoke-virtual {p8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1, p4, p6, p7}, Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;->acceptIndexMatch(Ljava/lang/String;Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    new-instance p1, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {p1}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw p1

    .line 12
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 14
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    instance-of p2, p7, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;

    if-eqz p2, :cond_2

    check-cast p7, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;

    invoke-virtual {p7, p1, p8}, Lorg/eclipse/jdt/internal/core/search/HierarchyScope;->encloses(Ljava/lang/String;Lorg/eclipse/core/runtime/IProgressMonitor;)Z

    move-result p2

    goto :goto_0

    .line 18
    :cond_2
    invoke-interface {p7, p1}, Lorg/eclipse/jdt/core/search/IJavaSearchScope;->encloses(Ljava/lang/String;)Z

    move-result p2

    :goto_0
    if-eqz p2, :cond_4

    const/4 p2, 0x0

    .line 19
    invoke-virtual {p5, p1, p4, p6, p2}, Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;->acceptIndexMatch(Ljava/lang/String;Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 20
    :cond_3
    new-instance p1, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {p1}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method public currentPattern()Lorg/eclipse/jdt/core/search/SearchPattern;
    .locals 0

    return-object p0
.end method

.method public decodeIndexKey([C)V
    .locals 0

    return-void
.end method

.method public findIndexMatches(Lorg/eclipse/jdt/internal/core/index/Index;Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p1

    if-eqz p5, :cond_1

    invoke-interface/range {p5 .. p5}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {v0}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/index/Index;->startQuery()V

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/core/search/SearchPattern;->currentPattern()Lorg/eclipse/jdt/core/search/SearchPattern;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/search/SearchPattern;->queryIn(Lorg/eclipse/jdt/internal/core/index/Index;)[Lorg/eclipse/jdt/internal/core/index/EntryResult;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v11, :cond_2

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/index/Index;->stopQuery()V

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/search/SearchPattern;->getBlankPattern()Lorg/eclipse/jdt/core/search/SearchPattern;

    move-result-object v12

    iget-object v13, v1, Lorg/eclipse/jdt/internal/core/index/Index;->containerPath:Ljava/lang/String;

    iget-char v14, v1, Lorg/eclipse/jdt/internal/core/index/Index;->separator:C

    array-length v15, v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v16, 0x0

    move/from16 v10, v16

    :goto_1
    if-lt v10, v15, :cond_3

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/index/Index;->stopQuery()V

    return-void

    :cond_3
    if-eqz p5, :cond_5

    :try_start_2
    invoke-interface/range {p5 .. p5}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {v0}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_5
    :goto_2
    aget-object v2, v11, v10

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/index/EntryResult;->getWord()[C

    move-result-object v3

    invoke-virtual {v12, v3}, Lorg/eclipse/jdt/core/search/SearchPattern;->decodeIndexKey([C)V

    invoke-virtual {v0, v12}, Lorg/eclipse/jdt/core/search/SearchPattern;->matchesDecodedKey(Lorg/eclipse/jdt/core/search/SearchPattern;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/core/index/EntryResult;->getDocumentNames(Lorg/eclipse/jdt/internal/core/index/Index;)[Ljava/lang/String;

    move-result-object v9

    array-length v8, v9

    move/from16 v7, v16

    :goto_3
    if-lt v7, v8, :cond_7

    :cond_6
    move/from16 v20, v10

    goto :goto_4

    :cond_7
    aget-object v3, v9, v7

    move-object/from16 v2, p0

    move-object v4, v13

    move v5, v14

    move-object v6, v12

    move/from16 v17, v7

    move-object/from16 v7, p2

    move/from16 v18, v8

    move-object/from16 v8, p3

    move-object/from16 v19, v9

    move-object/from16 v9, p4

    move/from16 v20, v10

    move-object/from16 v10, p5

    invoke-virtual/range {v2 .. v10}, Lorg/eclipse/jdt/core/search/SearchPattern;->acceptMatch(Ljava/lang/String;Ljava/lang/String;CLorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v7, v17, 0x1

    move/from16 v8, v18

    move-object/from16 v9, v19

    move/from16 v10, v20

    goto :goto_3

    :goto_4
    add-int/lit8 v10, v20, 0x1

    goto :goto_1

    :goto_5
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/index/Index;->stopQuery()V

    throw v0
.end method

.method public abstract getBlankPattern()Lorg/eclipse/jdt/core/search/SearchPattern;
.end method

.method public getIndexCategories()[[C
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    return-object v0
.end method

.method public getIndexKey()[C
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMatchRule()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/core/search/SearchPattern;->matchRule:I

    return v0
.end method

.method public isPolymorphicSearch()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public matchesDecodedKey(Lorg/eclipse/jdt/core/search/SearchPattern;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public matchesName([C[C)Z
    .locals 8

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_11

    iget v2, p0, Lorg/eclipse/jdt/core/search/SearchPattern;->matchRule:I

    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    and-int/lit16 v4, v2, 0x187

    array-length v5, p1

    if-nez v5, :cond_2

    move v5, v0

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    if-eqz v5, :cond_3

    and-int/2addr v2, v0

    if-eqz v2, :cond_3

    return v0

    :cond_3
    array-length v2, p1

    array-length v6, p2

    if-ne v2, v6, :cond_4

    move v2, v0

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    array-length v6, p2

    array-length v7, p1

    if-lt v6, v7, :cond_5

    move v6, v0

    goto :goto_3

    :cond_5
    move v6, v1

    :goto_3
    if-eqz v3, :cond_7

    if-nez v5, :cond_7

    array-length v5, p2

    if-lez v5, :cond_6

    aget-char v5, p1, v1

    aget-char v7, p2, v1

    if-eq v5, v7, :cond_7

    :cond_6
    move v5, v1

    goto :goto_4

    :cond_7
    move v5, v0

    :goto_4
    if-eqz v4, :cond_10

    if-eq v4, v0, :cond_f

    const/4 v2, 0x2

    if-eq v4, v2, :cond_d

    const/4 v2, 0x4

    if-eq v4, v2, :cond_c

    const/16 v2, 0x80

    if-eq v4, v2, :cond_a

    const/16 v2, 0x100

    if-eq v4, v2, :cond_8

    goto :goto_5

    :cond_8
    if-eqz v5, :cond_9

    invoke-static {p1, p2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->camelCaseMatch([C[CZ)Z

    move-result p1

    if-eqz p1, :cond_9

    return v0

    :cond_9
    return v1

    :cond_a
    if-eqz v5, :cond_b

    invoke-static {p1, p2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->camelCaseMatch([C[CZ)Z

    move-result v2

    if-eqz v2, :cond_b

    return v0

    :cond_b
    if-nez v3, :cond_11

    if-eqz v5, :cond_11

    invoke-static {p1, p2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->prefixEquals([C[CZ)Z

    move-result p1

    if-eqz p1, :cond_11

    return v0

    :cond_c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_d
    if-nez v3, :cond_e

    invoke-static {p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toLowerCase([C)[C

    move-result-object p1

    :cond_e
    invoke-static {p1, p2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->match([C[CZ)Z

    move-result p1

    return p1

    :cond_f
    if-eqz v6, :cond_11

    if-eqz v5, :cond_11

    invoke-static {p1, p2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->prefixEquals([C[CZ)Z

    move-result p1

    return p1

    :cond_10
    if-eqz v2, :cond_11

    if-eqz v5, :cond_11

    invoke-static {p1, p2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CZ)Z

    move-result p1

    return p1

    :cond_11
    :goto_5
    return v1
.end method

.method public queryIn(Lorg/eclipse/jdt/internal/core/index/Index;)[Lorg/eclipse/jdt/internal/core/index/EntryResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/search/SearchPattern;->getIndexCategories()[[C

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/search/SearchPattern;->getIndexKey()[C

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/search/SearchPattern;->getMatchRule()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lorg/eclipse/jdt/internal/core/index/Index;->query([[C[CI)[Lorg/eclipse/jdt/internal/core/index/EntryResult;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "SearchPattern"

    return-object v0
.end method
