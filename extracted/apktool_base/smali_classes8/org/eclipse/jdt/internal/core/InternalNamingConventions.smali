.class public Lorg/eclipse/jdt/internal/core/InternalNamingConventions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BK_SIMPLE_NAME:I = 0x1

.field public static final BK_SIMPLE_TYPE_NAME:I = 0x2

.field private static final DEFAULT_NAME:[C

.field public static final VK_INSTANCE_FIELD:I = 0x2

.field public static final VK_LOCAL:I = 0x5

.field public static final VK_PARAMETER:I = 0x4

.field public static final VK_STATIC_FIELD:I = 0x1

.field public static final VK_STATIC_FINAL_FIELD:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "name"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/InternalNamingConventions;->DEFAULT_NAME:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static acceptName([C[C[CZZILorg/eclipse/jdt/internal/core/INamingRequestor;)V
    .locals 1

    array-length v0, p1

    if-lez v0, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    invoke-interface {p6, p0, p3, p4, p5}, Lorg/eclipse/jdt/internal/core/INamingRequestor;->acceptNameWithPrefixAndSuffix([CZZI)V

    goto :goto_0

    :cond_0
    array-length p1, p1

    if-lez p1, :cond_1

    invoke-interface {p6, p0, p3, p5}, Lorg/eclipse/jdt/internal/core/INamingRequestor;->acceptNameWithPrefix([CZI)V

    goto :goto_0

    :cond_1
    array-length p1, p2

    if-lez p1, :cond_2

    invoke-interface {p6, p0, p4, p5}, Lorg/eclipse/jdt/internal/core/INamingRequestor;->acceptNameWithSuffix([CZI)V

    goto :goto_0

    :cond_2
    invoke-interface {p6, p0, p5}, Lorg/eclipse/jdt/internal/core/INamingRequestor;->acceptNameWithoutPrefixAndSuffix([CI)V

    :goto_0
    return-void
.end method

.method private static computeBaseTypeNames(C[[C)[C
    .locals 5

    const/4 v0, 0x1

    .line 5
    new-array v1, v0, [C

    const/4 v2, 0x0

    aput-char p0, v1, v2

    move v3, v2

    .line 6
    :goto_0
    array-length v4, p1

    if-lt v3, v4, :cond_0

    return-object v1

    .line 7
    :cond_0
    aget-object v4, p1, v3

    invoke-static {v1, v4, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CZ)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 8
    aget-char v3, v1, v2

    add-int/2addr v3, v0

    int-to-char v3, v3

    aput-char v3, v1, v2

    const/16 v4, 0x7a

    if-le v3, v4, :cond_1

    const/16 v3, 0x61

    .line 9
    aput-char v3, v1, v2

    .line 10
    :cond_1
    aget-char v3, v1, v2

    if-ne v3, p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    move v3, v2

    :cond_3
    add-int/2addr v3, v0

    goto :goto_0
.end method

.method private static computeBaseTypeNames([CZ[[C)[[C
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/InternalNamingConventions;->computeNonBaseTypeNames([CZZ)[[C

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    aget-char v1, p0, v0

    invoke-static {v1, p2}, Lorg/eclipse/jdt/internal/core/InternalNamingConventions;->computeBaseTypeNames(C[[C)[C

    move-result-object p2

    if-eqz p2, :cond_1

    .line 3
    filled-new-array {p2}, [[C

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    invoke-static {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/InternalNamingConventions;->computeNonBaseTypeNames([CZZ)[[C

    move-result-object p0

    return-object p0
.end method

.method private static computeNonBaseTypeNames([CZZ)[[C
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    array-length v2, v0

    if-nez v2, :cond_0

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    return-object v0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    if-eqz p1, :cond_1

    invoke-static/range {p0 .. p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toLowerCase([C)[C

    move-result-object v0

    filled-new-array {v0}, [[C

    move-result-object v0

    invoke-static {v0, v3, v1}, Lorg/eclipse/jdt/internal/core/InternalNamingConventions;->generateConstantName([[CIZ)[[C

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static/range {p0 .. p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toLowerCase([C)[C

    move-result-object v0

    filled-new-array {v0}, [[C

    move-result-object v0

    invoke-static {v0, v3, v1}, Lorg/eclipse/jdt/internal/core/InternalNamingConventions;->generateNonConstantName([[CIZ)[[C

    move-result-object v0

    return-object v0

    :cond_2
    new-array v5, v2, [[C

    add-int/lit8 v6, v2, -0x1

    aget-char v7, v0, v6

    invoke-static {v7}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isLowerCase(C)Z

    move-result v8

    const/16 v9, 0x5f

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-eqz v8, :cond_3

    move v7, v4

    goto :goto_0

    :cond_3
    invoke-static {v7}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isUpperCase(C)Z

    move-result v8

    if-eqz v8, :cond_4

    move v7, v12

    goto :goto_0

    :cond_4
    if-ne v7, v9, :cond_5

    move v7, v11

    goto :goto_0

    :cond_5
    move v7, v10

    :goto_0
    const/4 v8, -0x1

    move v13, v8

    :goto_1
    if-gez v6, :cond_9

    if-lez v2, :cond_6

    add-int/lit8 v13, v13, 0x1

    invoke-static {v0, v3, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v2

    aput-object v2, v5, v13

    :cond_6
    if-ne v13, v8, :cond_7

    filled-new-array/range {p0 .. p0}, [[C

    move-result-object v0

    return-object v0

    :cond_7
    if-eqz p1, :cond_8

    invoke-static {v5, v13, v1}, Lorg/eclipse/jdt/internal/core/InternalNamingConventions;->generateConstantName([[CIZ)[[C

    move-result-object v0

    return-object v0

    :cond_8
    invoke-static {v5, v13, v1}, Lorg/eclipse/jdt/internal/core/InternalNamingConventions;->generateNonConstantName([[CIZ)[[C

    move-result-object v0

    return-object v0

    :cond_9
    aget-char v14, v0, v6

    invoke-static {v14}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isLowerCase(C)Z

    move-result v15

    if-eqz v15, :cond_a

    move v14, v4

    goto :goto_2

    :cond_a
    invoke-static {v14}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isUpperCase(C)Z

    move-result v15

    if-eqz v15, :cond_b

    move v14, v12

    goto :goto_2

    :cond_b
    if-ne v14, v9, :cond_c

    move v14, v11

    goto :goto_2

    :cond_c
    move v14, v10

    :goto_2
    if-eq v14, v4, :cond_1c

    if-eq v14, v12, :cond_18

    if-eq v14, v11, :cond_d

    move v7, v10

    goto/16 :goto_8

    :cond_d
    if-eq v7, v4, :cond_13

    if-eq v7, v12, :cond_13

    if-eq v7, v11, :cond_e

    move v7, v11

    goto/16 :goto_8

    :cond_e
    if-eqz p1, :cond_1e

    if-lez v6, :cond_12

    add-int/lit8 v2, v6, -0x1

    aget-char v2, v0, v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isLowerCase(C)Z

    move-result v7

    if-eqz v7, :cond_f

    :goto_3
    move v7, v4

    goto :goto_6

    :cond_f
    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isUpperCase(C)Z

    move-result v7

    if-eqz v7, :cond_10

    :goto_4
    move v7, v12

    goto :goto_6

    :cond_10
    if-ne v2, v9, :cond_11

    :goto_5
    move v7, v11

    goto :goto_6

    :cond_11
    move v7, v10

    :cond_12
    :goto_6
    move v2, v6

    goto/16 :goto_8

    :cond_13
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v14, v6, 0x1

    invoke-static {v0, v14, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v2

    aput-object v2, v5, v13

    if-lez v6, :cond_17

    add-int/lit8 v2, v6, -0x1

    aget-char v2, v0, v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isLowerCase(C)Z

    move-result v7

    if-eqz v7, :cond_14

    move v7, v4

    goto :goto_7

    :cond_14
    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isUpperCase(C)Z

    move-result v7

    if-eqz v7, :cond_15

    move v7, v12

    goto :goto_7

    :cond_15
    if-ne v2, v9, :cond_16

    move v7, v11

    goto :goto_7

    :cond_16
    move v7, v10

    :cond_17
    :goto_7
    move v2, v14

    goto :goto_8

    :cond_18
    if-ne v7, v4, :cond_1b

    add-int/lit8 v13, v13, 0x1

    invoke-static {v0, v6, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v2

    aput-object v2, v5, v13

    if-lez v6, :cond_12

    add-int/lit8 v2, v6, -0x1

    aget-char v2, v0, v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isLowerCase(C)Z

    move-result v7

    if-eqz v7, :cond_19

    goto :goto_3

    :cond_19
    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isUpperCase(C)Z

    move-result v7

    if-eqz v7, :cond_1a

    goto :goto_4

    :cond_1a
    if-ne v2, v9, :cond_11

    goto :goto_5

    :cond_1b
    move v7, v12

    goto :goto_8

    :cond_1c
    if-ne v7, v12, :cond_1d

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v7, v6, 0x1

    invoke-static {v0, v7, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v2

    aput-object v2, v5, v13

    move v2, v7

    :cond_1d
    move v7, v4

    :cond_1e
    :goto_8
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_1
.end method

.method private static excludeNames([C[C[C[[C)[C
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p3

    if-lt v2, v3, :cond_0

    return-object p0

    :cond_0
    aget-object v3, p3, v2

    invoke-static {p0, v3, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CZ)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 p0, v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p1, v0, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C[C)[C

    move-result-object v0

    move v2, v1

    move-object v4, v0

    move v0, p0

    move-object p0, v4

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static generateConstantName([[CIZ)[[C
    .locals 8

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    new-array v1, v0, [[C

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [[C

    :goto_0
    const/4 v2, 0x0

    aget-object v3, p0, v2

    invoke-static {v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toUpperCase([C)[C

    move-result-object v3

    array-length v4, v3

    invoke-static {v3, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez p2, :cond_1

    aput-object v3, v1, p1

    :cond_1
    move v4, v0

    :goto_1
    if-le v4, p1, :cond_3

    if-eqz p2, :cond_2

    aput-object v3, v1, v2

    :cond_2
    return-object v1

    :cond_3
    aget-object v5, p0, v4

    invoke-static {v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toUpperCase([C)[C

    move-result-object v5

    array-length v6, v5

    sub-int/2addr v6, v0

    aget-char v6, v5, v6

    const/16 v7, 0x5f

    if-eq v6, v7, :cond_4

    invoke-static {v5, v3, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object v3

    goto :goto_2

    :cond_4
    invoke-static {v5, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v3

    :goto_2
    if-nez p2, :cond_5

    sub-int v5, p1, v4

    aput-object v3, v1, v5

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private static generateNonConstantName([[CIZ)[[C
    .locals 7

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    new-array v1, v0, [[C

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [[C

    :goto_0
    const/4 v2, 0x0

    aget-object v3, p0, v2

    invoke-static {v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toLowerCase([C)[C

    move-result-object v4

    if-nez p2, :cond_1

    aput-object v4, v1, p1

    :cond_1
    :goto_1
    if-le v0, p1, :cond_3

    if-eqz p2, :cond_2

    aput-object v4, v1, v2

    :cond_2
    return-object v1

    :cond_3
    aget-object v4, p0, v0

    invoke-static {v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toLowerCase([C)[C

    move-result-object v5

    invoke-static {v5, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v5

    if-nez p2, :cond_4

    sub-int v6, p1, v0

    aput-object v5, v1, v6

    :cond_4
    invoke-static {v4, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    move-object v4, v5

    goto :goto_1
.end method

.method public static getBaseName(ILorg/eclipse/jdt/core/IJavaProject;[CZ)[C
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1
    new-instance v1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;

    invoke-interface {p1, v0}, Lorg/eclipse/jdt/core/IJavaProject;->getOptions(Z)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;-><init>(Ljava/util/Map;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;

    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getOptions()Ljava/util/Hashtable;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;-><init>(Ljava/util/Map;)V

    :goto_0
    const/4 p1, 0x3

    if-eq p0, v0, :cond_5

    const/4 v2, 0x2

    if-eq p0, v2, :cond_4

    if-eq p0, p1, :cond_3

    const/4 v2, 0x4

    if-eq p0, v2, :cond_2

    const/4 v2, 0x5

    if-eq p0, v2, :cond_1

    const/4 v1, 0x0

    move-object v2, v1

    goto :goto_2

    .line 3
    :cond_1
    iget-object v2, v1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->localPrefixes:[[C

    .line 4
    iget-object v1, v1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->localSuffixes:[[C

    :goto_1
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    goto :goto_2

    .line 5
    :cond_2
    iget-object v2, v1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->argumentPrefixes:[[C

    .line 6
    iget-object v1, v1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->argumentSuffixes:[[C

    goto :goto_1

    .line 7
    :cond_3
    iget-object v2, v1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->staticFinalFieldPrefixes:[[C

    .line 8
    iget-object v1, v1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->staticFinalFieldSuffixes:[[C

    goto :goto_1

    .line 9
    :cond_4
    iget-object v2, v1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->fieldPrefixes:[[C

    .line 10
    iget-object v1, v1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->fieldSuffixes:[[C

    goto :goto_1

    .line 11
    :cond_5
    iget-object v2, v1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->staticFieldPrefixes:[[C

    .line 12
    iget-object v1, v1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->staticFieldSuffixes:[[C

    goto :goto_1

    :goto_2
    if-ne p0, p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    .line 13
    :goto_3
    invoke-static {p2, v1, v2, v0, p3}, Lorg/eclipse/jdt/internal/core/InternalNamingConventions;->getBaseName([C[[C[[CZZ)[C

    move-result-object p0

    return-object p0
.end method

.method private static getBaseName([C[[C[[CZZ)[C
    .locals 5

    .line 14
    invoke-static {p0, p1, p2, p4}, Lorg/eclipse/jdt/internal/core/InternalNamingConventions;->removeVariablePrefixAndSuffix([C[[C[[CZ)[C

    move-result-object p0

    if-eqz p3, :cond_3

    .line 15
    array-length p1, p0

    .line 16
    new-array p2, p1, [C

    const/4 p3, 0x0

    const/4 p4, -0x1

    move v0, p3

    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-lt v0, p1, :cond_0

    add-int/2addr p4, v2

    .line 17
    new-array p0, p4, [C

    invoke-static {p2, p3, p0, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 18
    :cond_0
    aget-char v3, p0, v0

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_2

    if-eqz v1, :cond_1

    add-int/lit8 p4, p4, 0x1

    .line 19
    invoke-static {v3}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->toUpperCase(C)C

    move-result v1

    aput-char v1, p2, p4

    move v1, p3

    goto :goto_1

    :cond_1
    add-int/lit8 p4, p4, 0x1

    .line 20
    invoke-static {v3}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->toLowerCase(C)C

    move-result v2

    aput-char v2, p2, p4

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object p0
.end method

.method private static getNameScanner(Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;)Lorg/eclipse/jdt/internal/compiler/parser/Scanner;
    .locals 10

    new-instance v9, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-wide v4, p0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;-><init>(ZZZJ[[C[[CZ)V

    return-object v9
.end method

.method private static removePrefix([C[[C)[C
    .locals 8

    if-eqz p1, :cond_7

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    array-length v4, p1

    if-lt v2, v4, :cond_1

    if-lez v3, :cond_7

    if-ne v3, v0, :cond_0

    sget-object p0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    goto :goto_5

    :cond_0
    invoke-static {p0, v3, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object p0

    goto :goto_5

    :cond_1
    aget-object v4, p1, v2

    array-length v5, v4

    if-gt v5, v0, :cond_2

    invoke-static {v4, p0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->prefixEquals([C[CZ)Z

    move-result v4

    if-eqz v4, :cond_5

    if-le v5, v3, :cond_5

    :goto_1
    move v3, v5

    goto :goto_4

    :cond_2
    move v5, v1

    :goto_2
    if-lt v5, v0, :cond_3

    goto :goto_3

    :cond_3
    aget-char v6, v4, v5

    invoke-static {v6}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->toLowerCase(C)C

    move-result v6

    aget-char v7, p0, v5

    invoke-static {v7}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->toLowerCase(C)C

    move-result v7

    if-eq v6, v7, :cond_6

    if-le v5, v3, :cond_4

    move v3, v5

    :cond_4
    :goto_3
    if-ne v5, v0, :cond_5

    if-le v5, v3, :cond_5

    goto :goto_1

    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    :goto_5
    return-object p0
.end method

.method public static removeVariablePrefixAndSuffix(ILorg/eclipse/jdt/core/IJavaProject;[C)[C
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1
    new-instance v1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;

    invoke-interface {p1, v0}, Lorg/eclipse/jdt/core/IJavaProject;->getOptions(Z)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;-><init>(Ljava/util/Map;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;

    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getOptions()Ljava/util/Hashtable;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;-><init>(Ljava/util/Map;)V

    :goto_0
    if-eq p0, v0, :cond_5

    const/4 p1, 0x2

    if-eq p0, p1, :cond_4

    const/4 p1, 0x3

    if-eq p0, p1, :cond_3

    const/4 p1, 0x4

    if-eq p0, p1, :cond_2

    const/4 p1, 0x5

    if-eq p0, p1, :cond_1

    const/4 p0, 0x0

    move-object p1, p0

    goto :goto_1

    .line 3
    :cond_1
    iget-object p0, v1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->localPrefixes:[[C

    .line 4
    iget-object p1, v1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->localSuffixes:[[C

    goto :goto_1

    .line 5
    :cond_2
    iget-object p0, v1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->argumentPrefixes:[[C

    .line 6
    iget-object p1, v1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->argumentSuffixes:[[C

    goto :goto_1

    .line 7
    :cond_3
    iget-object p0, v1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->staticFinalFieldPrefixes:[[C

    .line 8
    iget-object p1, v1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->staticFinalFieldSuffixes:[[C

    goto :goto_1

    .line 9
    :cond_4
    iget-object p0, v1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->fieldPrefixes:[[C

    .line 10
    iget-object p1, v1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->fieldSuffixes:[[C

    goto :goto_1

    .line 11
    :cond_5
    iget-object p0, v1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->staticFieldPrefixes:[[C

    .line 12
    iget-object p1, v1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->staticFieldSuffixes:[[C

    .line 13
    :goto_1
    invoke-static {p2, p0, p1, v0}, Lorg/eclipse/jdt/internal/core/InternalNamingConventions;->removeVariablePrefixAndSuffix([C[[C[[CZ)[C

    move-result-object p0

    return-object p0
.end method

.method private static removeVariablePrefixAndSuffix([C[[C[[CZ)[C
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    move-object v2, p0

    move v1, v0

    move v3, v1

    .line 14
    :goto_0
    array-length v4, p1

    if-lt v1, v4, :cond_0

    move-object p0, v2

    goto :goto_1

    .line 15
    :cond_0
    aget-object v4, p1, v1

    .line 16
    invoke-static {v4, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->prefixEquals([C[C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 17
    array-length v5, v4

    add-int/lit8 v6, v5, -0x1

    .line 18
    aget-char v4, v4, v6

    invoke-static {v4}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v4, :cond_2

    .line 19
    array-length v4, p0

    if-le v4, v5, :cond_2

    aget-char v4, p0, v5

    invoke-static {v4}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    if-ge v3, v5, :cond_2

    .line 20
    array-length v4, p0

    if-eq v4, v5, :cond_2

    .line 21
    array-length v2, p0

    invoke-static {p0, v5, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v2

    move v3, v5

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz p2, :cond_6

    move-object v1, p0

    move p1, v0

    move v2, p1

    .line 22
    :goto_2
    array-length v3, p2

    if-lt p1, v3, :cond_4

    move-object p0, v1

    goto :goto_3

    .line 23
    :cond_4
    aget-object v3, p2, p1

    .line 24
    invoke-static {p0, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->endsWith([C[C)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 25
    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 26
    array-length v4, p0

    if-eq v4, v3, :cond_5

    .line 27
    array-length v1, p0

    sub-int/2addr v1, v3

    invoke-static {p0, v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v1

    move v2, v3

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    if-eqz p3, :cond_7

    .line 28
    aget-char p1, p0, v0

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->toLowerCase(C)C

    move-result p1

    aput-char p1, p0, v0

    :cond_7
    return-object p0
.end method

.method public static suggestVariableNames(II[CLorg/eclipse/jdt/core/IJavaProject;I[C[[CZLorg/eclipse/jdt/internal/core/INamingRequestor;)V
    .locals 22

    move/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    if-eqz v1, :cond_36

    array-length v5, v1

    if-nez v5, :cond_0

    goto/16 :goto_29

    :cond_0
    const/4 v5, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v2, v5}, Lorg/eclipse/jdt/core/IJavaProject;->getOptions(Z)Ljava/util/Map;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getOptions()Ljava/util/Hashtable;

    move-result-object v2

    :goto_0
    new-instance v6, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    invoke-direct {v6, v2}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;-><init>(Ljava/util/Map;)V

    new-instance v7, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;

    invoke-direct {v7, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;-><init>(Ljava/util/Map;)V

    const/4 v2, 0x2

    const/4 v8, 0x0

    if-eq v0, v5, :cond_6

    if-eq v0, v2, :cond_5

    const/4 v9, 0x3

    if-eq v0, v9, :cond_4

    const/4 v9, 0x4

    if-eq v0, v9, :cond_3

    const/4 v9, 0x5

    if-eq v0, v9, :cond_2

    const/4 v0, 0x0

    move-object v7, v0

    :goto_1
    move v9, v8

    goto :goto_2

    :cond_2
    iget-object v0, v7, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->localPrefixes:[[C

    iget-object v7, v7, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->localSuffixes:[[C

    goto :goto_1

    :cond_3
    iget-object v0, v7, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->argumentPrefixes:[[C

    iget-object v7, v7, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->argumentSuffixes:[[C

    goto :goto_1

    :cond_4
    iget-object v0, v7, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->staticFinalFieldPrefixes:[[C

    iget-object v7, v7, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->staticFinalFieldSuffixes:[[C

    move v9, v5

    goto :goto_2

    :cond_5
    iget-object v0, v7, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->fieldPrefixes:[[C

    iget-object v7, v7, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->fieldSuffixes:[[C

    goto :goto_1

    :cond_6
    iget-object v0, v7, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->staticFieldPrefixes:[[C

    iget-object v7, v7, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->staticFieldSuffixes:[[C

    goto :goto_1

    :goto_2
    if-eqz v0, :cond_8

    array-length v10, v0

    if-nez v10, :cond_7

    goto :goto_3

    :cond_7
    array-length v10, v0

    add-int/lit8 v11, v10, 0x1

    new-array v11, v11, [[C

    invoke-static {v0, v8, v11, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    aput-object v0, v11, v10

    goto :goto_4

    :cond_8
    :goto_3
    new-array v0, v2, [I

    aput v8, v0, v5

    aput v5, v0, v8

    sget-object v10, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, [[C

    :goto_4
    if-eqz v7, :cond_a

    array-length v0, v7

    if-nez v0, :cond_9

    goto :goto_5

    :cond_9
    array-length v0, v7

    add-int/lit8 v10, v0, 0x1

    new-array v10, v10, [[C

    invoke-static {v7, v8, v10, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v7, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    aput-object v7, v10, v0

    goto :goto_6

    :cond_a
    :goto_5
    new-array v0, v2, [I

    aput v8, v0, v5

    aput v5, v0, v8

    sget-object v7, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, [[C

    :goto_6
    if-nez v3, :cond_b

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    goto :goto_7

    :cond_b
    invoke-static {v3, v11}, Lorg/eclipse/jdt/internal/core/InternalNamingConventions;->removePrefix([C[[C)[C

    move-result-object v0

    :goto_7
    invoke-static {v6}, Lorg/eclipse/jdt/internal/core/InternalNamingConventions;->getNameScanner(Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;)Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    move-result-object v3

    move/from16 v6, p1

    if-ne v6, v2, :cond_d

    :try_start_0
    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v2
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_8

    :pswitch_1
    array-length v2, v0

    if-lez v2, :cond_c

    return-void

    :cond_c
    invoke-static {v1, v9, v4}, Lorg/eclipse/jdt/internal/core/InternalNamingConventions;->computeBaseTypeNames([CZ[[C)[[C

    move-result-object v1

    goto :goto_9

    :catch_0
    :goto_8
    invoke-static {v1, v9, v8}, Lorg/eclipse/jdt/internal/core/InternalNamingConventions;->computeNonBaseTypeNames([CZZ)[[C

    move-result-object v1

    goto :goto_9

    :cond_d
    invoke-static {v1, v9, v5}, Lorg/eclipse/jdt/internal/core/InternalNamingConventions;->computeNonBaseTypeNames([CZZ)[[C

    move-result-object v1

    :goto_9
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;

    invoke-direct {v2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;-><init>()V

    move v7, v5

    move v6, v8

    :goto_a
    array-length v12, v1

    if-lt v6, v12, :cond_f

    if-eqz p7, :cond_e

    if-eqz v7, :cond_e

    sget-object v0, Lorg/eclipse/jdt/internal/core/InternalNamingConventions;->DEFAULT_NAME:[C

    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    invoke-static {v0, v0, v1, v4}, Lorg/eclipse/jdt/internal/core/InternalNamingConventions;->excludeNames([C[C[C[[C)[C

    move-result-object v0

    move-object/from16 v15, p8

    invoke-interface {v15, v0, v8}, Lorg/eclipse/jdt/internal/core/INamingRequestor;->acceptNameWithoutPrefixAndSuffix([CI)V

    :cond_e
    return-void

    :cond_f
    move-object/from16 v15, p8

    aget-object v12, v1, v6

    if-lez p4, :cond_1a

    array-length v13, v12

    if-eqz v9, :cond_15

    add-int/lit8 v14, v13, -0x1

    aget-char v8, v12, v14

    const/16 v5, 0x53

    if-ne v8, v5, :cond_11

    array-length v8, v12

    const/4 v14, 0x1

    if-le v8, v14, :cond_10

    add-int/lit8 v8, v13, -0x2

    aget-char v8, v12, v8

    if-ne v8, v5, :cond_10

    add-int/lit8 v8, v13, 0x2

    new-array v8, v8, [C

    const/4 v14, 0x0

    invoke-static {v12, v14, v8, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v12, 0x45

    aput-char v12, v8, v13

    add-int/lit8 v13, v13, 0x1

    aput-char v5, v8, v13

    move-object v12, v8

    :cond_10
    :goto_b
    const/4 v8, 0x0

    goto/16 :goto_11

    :cond_11
    const/16 v5, 0x59

    if-ne v8, v5, :cond_14

    array-length v5, v12

    const/4 v8, 0x1

    if-le v5, v8, :cond_12

    add-int/lit8 v5, v13, -0x2

    aget-char v5, v12, v5

    const/16 v8, 0x41

    if-eq v5, v8, :cond_13

    const/16 v8, 0x45

    if-eq v5, v8, :cond_13

    const/16 v8, 0x49

    if-eq v5, v8, :cond_13

    const/16 v8, 0x4f

    if-eq v5, v8, :cond_13

    const/16 v8, 0x55

    if-eq v5, v8, :cond_13

    :cond_12
    const/4 v8, 0x0

    const/16 v16, 0x53

    goto :goto_d

    :cond_13
    add-int/lit8 v5, v13, 0x1

    new-array v5, v5, [C

    const/4 v8, 0x0

    invoke-static {v12, v8, v5, v8, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v16, 0x53

    aput-char v16, v5, v13

    :goto_c
    move-object v12, v5

    goto/16 :goto_11

    :goto_d
    add-int/lit8 v5, v13, 0x2

    new-array v5, v5, [C

    invoke-static {v12, v8, v5, v8, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v12, 0x49

    aput-char v12, v5, v14

    const/16 v12, 0x45

    aput-char v12, v5, v13

    add-int/lit8 v13, v13, 0x1

    aput-char v16, v5, v13

    goto :goto_c

    :cond_14
    const/4 v8, 0x0

    const/16 v16, 0x53

    add-int/lit8 v5, v13, 0x1

    new-array v5, v5, [C

    invoke-static {v12, v8, v5, v8, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-char v16, v5, v13

    :goto_e
    move-object v12, v5

    goto :goto_b

    :cond_15
    add-int/lit8 v5, v13, -0x1

    aget-char v8, v12, v5

    const/16 v14, 0x73

    if-ne v8, v14, :cond_16

    array-length v5, v12

    const/4 v8, 0x1

    if-le v5, v8, :cond_10

    add-int/lit8 v5, v13, -0x2

    aget-char v5, v12, v5

    if-ne v5, v14, :cond_10

    add-int/lit8 v5, v13, 0x2

    new-array v5, v5, [C

    const/4 v8, 0x0

    invoke-static {v12, v8, v5, v8, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v8, 0x65

    aput-char v8, v5, v13

    add-int/lit8 v13, v13, 0x1

    aput-char v14, v5, v13

    goto :goto_e

    :cond_16
    const/16 v14, 0x79

    if-ne v8, v14, :cond_19

    array-length v8, v12

    const/4 v14, 0x1

    if-le v8, v14, :cond_17

    add-int/lit8 v8, v13, -0x2

    aget-char v8, v12, v8

    const/16 v14, 0x61

    if-eq v8, v14, :cond_18

    const/16 v14, 0x65

    if-eq v8, v14, :cond_18

    const/16 v14, 0x69

    if-eq v8, v14, :cond_18

    const/16 v14, 0x6f

    if-eq v8, v14, :cond_18

    const/16 v14, 0x75

    if-eq v8, v14, :cond_18

    :cond_17
    const/4 v8, 0x0

    const/16 v14, 0x73

    goto :goto_f

    :cond_18
    add-int/lit8 v5, v13, 0x1

    new-array v5, v5, [C

    const/4 v8, 0x0

    invoke-static {v12, v8, v5, v8, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v14, 0x73

    aput-char v14, v5, v13

    goto :goto_c

    :goto_f
    add-int/lit8 v14, v13, 0x2

    new-array v14, v14, [C

    invoke-static {v12, v8, v14, v8, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v12, 0x69

    aput-char v12, v14, v5

    const/16 v5, 0x65

    aput-char v5, v14, v13

    add-int/lit8 v13, v13, 0x1

    const/16 v5, 0x73

    aput-char v5, v14, v13

    :goto_10
    move-object v12, v14

    goto :goto_11

    :cond_19
    const/16 v5, 0x73

    const/4 v8, 0x0

    add-int/lit8 v14, v13, 0x1

    new-array v14, v14, [C

    invoke-static {v12, v8, v14, v8, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-char v5, v14, v13

    goto :goto_10

    :cond_1a
    :goto_11
    const/4 v13, -0x1

    if-nez v9, :cond_1e

    aget-char v14, v12, v8

    invoke-static {v14}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->toUpperCase(C)C

    move-result v14

    aput-char v14, v12, v8

    const/4 v8, 0x0

    :goto_12
    array-length v14, v0

    if-le v8, v14, :cond_1b

    goto :goto_15

    :cond_1b
    array-length v14, v0

    if-eq v8, v14, :cond_24

    invoke-static {v0, v8, v13}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v14

    if-eqz v8, :cond_1c

    const/4 v5, 0x1

    goto :goto_13

    :cond_1c
    const/4 v5, 0x0

    :goto_13
    invoke-static {v14, v12, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->prefixEquals([C[CZ)Z

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_19

    :cond_1d
    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    :cond_1e
    const/4 v14, 0x0

    :goto_14
    array-length v5, v0

    if-le v14, v5, :cond_1f

    :goto_15
    move v8, v13

    goto :goto_19

    :cond_1f
    array-length v5, v0

    if-ne v14, v5, :cond_20

    goto :goto_18

    :cond_20
    invoke-static {v0, v14, v13}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v5

    if-eqz v14, :cond_21

    const/4 v8, 0x1

    goto :goto_16

    :cond_21
    const/4 v8, 0x0

    :goto_16
    invoke-static {v5, v12, v8}, Lorg/eclipse/jdt/core/compiler/CharOperation;->prefixEquals([C[CZ)Z

    move-result v5

    if-eqz v5, :cond_35

    if-eqz v14, :cond_23

    add-int/lit8 v5, v14, -0x1

    aget-char v5, v0, v5

    const/16 v8, 0x5f

    if-ne v5, v8, :cond_22

    goto :goto_18

    :cond_22
    move-object/from16 p0, v1

    move v1, v8

    :goto_17
    const/16 v19, 0x0

    goto/16 :goto_28

    :cond_23
    :goto_18
    move v8, v14

    :cond_24
    :goto_19
    if-le v8, v13, :cond_28

    if-nez v9, :cond_26

    const/4 v5, 0x0

    invoke-static {v0, v5, v8}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v13

    invoke-static {v13, v12}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v12

    if-nez v8, :cond_25

    aget-char v13, v12, v5

    invoke-static {v13}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->toLowerCase(C)C

    move-result v13

    aput-char v13, v12, v5

    :cond_25
    :goto_1a
    move-object v5, v12

    goto :goto_1b

    :cond_26
    const/4 v5, 0x0

    if-eqz v8, :cond_27

    aget-char v13, v12, v5

    const/16 v14, 0x5f

    if-eq v13, v14, :cond_27

    add-int/lit8 v13, v8, -0x1

    aget-char v13, v0, v13

    if-eq v13, v14, :cond_27

    invoke-static {v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toUpperCase([C)[C

    move-result-object v13

    invoke-static {v13, v5, v8}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v13

    invoke-static {v13, v12, v14}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object v12

    goto :goto_1a

    :cond_27
    invoke-static {v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toUpperCase([C)[C

    move-result-object v13

    invoke-static {v13, v5, v8}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v13

    invoke-static {v13, v12}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v12

    goto :goto_1a

    :goto_1b
    const/4 v14, 0x0

    :goto_1c
    array-length v12, v11

    if-lt v14, v12, :cond_29

    :cond_28
    move-object/from16 p0, v1

    const/16 v19, 0x0

    goto/16 :goto_27

    :cond_29
    if-nez v9, :cond_2b

    aget-object v12, v11, v14

    array-length v13, v12

    if-lez v13, :cond_2a

    array-length v13, v12

    const/16 v16, 0x1

    add-int/lit8 v13, v13, -0x1

    aget-char v12, v12, v13

    invoke-static {v12}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isLetterOrDigit(C)Z

    move-result v12

    if-eqz v12, :cond_2a

    const/16 v19, 0x0

    aget-char v12, v5, v19

    invoke-static {v12}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->toUpperCase(C)C

    move-result v12

    aput-char v12, v5, v19

    goto :goto_1d

    :cond_2a
    const/16 v19, 0x0

    aget-char v12, v5, v19

    invoke-static {v12}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->toLowerCase(C)C

    move-result v12

    aput-char v12, v5, v19

    goto :goto_1d

    :cond_2b
    const/16 v19, 0x0

    :goto_1d
    aget-object v12, v11, v14

    invoke-static {v12, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v13

    move-object/from16 p0, v1

    move/from16 v12, v19

    :goto_1e
    array-length v1, v10

    if-lt v12, v1, :cond_2c

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    goto :goto_1c

    :cond_2c
    aget-object v1, v10, v12

    invoke-static {v13, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v1

    move-object/from16 p1, v5

    aget-object v5, v10, v12

    invoke-static {v1, v13, v5, v4}, Lorg/eclipse/jdt/internal/core/InternalNamingConventions;->excludeNames([C[C[C[[C)[C

    move-result-object v1

    :try_start_1
    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v5
    :try_end_1
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_1 .. :try_end_1} :catch_2

    move/from16 p2, v7

    const/16 v7, 0x16

    if-eq v5, v7, :cond_31

    const/4 v5, 0x1

    :try_start_2
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    aget-object v5, v10, v12

    invoke-static {v13, v1, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C[C)[C

    move-result-object v1

    aget-object v5, v10, v12

    invoke-static {v1, v13, v5, v4}, Lorg/eclipse/jdt/internal/core/InternalNamingConventions;->excludeNames([C[C[C[[C)[C

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v5

    if-eq v5, v7, :cond_2d

    move/from16 v20, v12

    move-object/from16 v21, v13

    move v5, v14

    move/from16 v14, p2

    goto :goto_21

    :cond_2d
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v5

    const/16 v7, 0x3d

    if-ne v5, v7, :cond_30

    iget v5, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    array-length v7, v1

    if-ne v5, v7, :cond_30

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;->includes([C)Z

    move-result v5

    if-nez v5, :cond_30

    aget-object v5, v11, v14

    aget-object v7, v10, v12

    if-nez v14, :cond_2e

    const/16 v16, 0x1

    goto :goto_1f

    :cond_2e
    move/from16 v16, v19

    :goto_1f
    if-nez v12, :cond_2f

    const/16 v17, 0x1

    goto :goto_20

    :cond_2f
    move/from16 v17, v19

    :goto_20
    array-length v4, v0
    :try_end_2
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_2 .. :try_end_2} :catch_1

    sub-int/2addr v4, v8

    move/from16 v20, v12

    move-object v12, v1

    move-object/from16 v21, v13

    move-object v13, v5

    move v5, v14

    move-object v14, v7

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v4

    move-object/from16 v18, p8

    :try_start_3
    invoke-static/range {v12 .. v18}, Lorg/eclipse/jdt/internal/core/InternalNamingConventions;->acceptName([C[C[CZZILorg/eclipse/jdt/internal/core/INamingRequestor;)V

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;->add([C)Ljava/lang/Object;

    move/from16 v14, v19

    :goto_21
    move v7, v14

    goto :goto_26

    :catch_1
    :cond_30
    :goto_22
    move/from16 v20, v12

    move-object/from16 v21, v13

    move v5, v14

    goto :goto_25

    :cond_31
    move/from16 v20, v12

    move-object/from16 v21, v13

    move v5, v14

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v4

    const/16 v7, 0x3d

    if-ne v4, v7, :cond_34

    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    array-length v7, v1

    if-ne v4, v7, :cond_34

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;->includes([C)Z

    move-result v4

    if-nez v4, :cond_34

    aget-object v13, v11, v5

    aget-object v14, v10, v20

    if-nez v5, :cond_32

    const/4 v15, 0x1

    goto :goto_23

    :cond_32
    move/from16 v15, v19

    :goto_23
    if-nez v20, :cond_33

    const/16 v16, 0x1

    goto :goto_24

    :cond_33
    move/from16 v16, v19

    :goto_24
    array-length v4, v0

    sub-int v17, v4, v8

    move-object v12, v1

    move-object/from16 v18, p8

    invoke-static/range {v12 .. v18}, Lorg/eclipse/jdt/internal/core/InternalNamingConventions;->acceptName([C[C[CZZILorg/eclipse/jdt/internal/core/INamingRequestor;)V

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;->add([C)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_3 .. :try_end_3} :catch_3

    move/from16 v7, v19

    goto :goto_26

    :catch_2
    move/from16 p2, v7

    goto :goto_22

    :catch_3
    :cond_34
    :goto_25
    move/from16 v7, p2

    :goto_26
    add-int/lit8 v12, v20, 0x1

    move-object/from16 v4, p6

    move-object/from16 v15, p8

    move v14, v5

    move-object/from16 v13, v21

    move-object/from16 v5, p1

    goto/16 :goto_1e

    :goto_27
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, p6

    move/from16 v8, v19

    const/4 v5, 0x1

    goto/16 :goto_a

    :cond_35
    move-object/from16 p0, v1

    const/16 v1, 0x5f

    goto/16 :goto_17

    :goto_28
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, p6

    move-object/from16 v15, p8

    goto/16 :goto_14

    :cond_36
    :goto_29
    return-void

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
