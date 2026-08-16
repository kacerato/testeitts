.class public Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;
.super Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;
.source "SourceFile"


# static fields
.field protected static DECL_CATEGORIES:[[C = null

.field public static final FINE_GRAIN_MASK:I = 0x1f000000

.field protected static REF_AND_DECL_CATEGORIES:[[C

.field protected static REF_CATEGORIES:[[C


# instance fields
.field constructorArguments:[[C

.field constructorParameters:Z

.field public declaringQualification:[C

.field public declaringSimpleName:[C

.field protected findDeclarations:Z

.field protected findReferences:Z

.field public parameterCount:I

.field public parameterQualifications:[[C

.field public parameterSimpleNames:[[C

.field parametersTypeArguments:[[[[C

.field parametersTypeSignatures:[[[C

.field public varargs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->CONSTRUCTOR_REF:[C

    filled-new-array {v0}, [[C

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->REF_CATEGORIES:[[C

    sget-object v1, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->CONSTRUCTOR_DECL:[C

    filled-new-array {v0, v1}, [[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->REF_AND_DECL_CATEGORIES:[[C

    filled-new-array {v1}, [[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->DECL_CATEGORIES:[[C

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x20

    .line 1
    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;-><init>(II)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->findDeclarations:Z

    .line 3
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->findReferences:Z

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->varargs:Z

    .line 5
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->constructorParameters:Z

    return-void
.end method

.method public constructor <init>([C[CLjava/lang/String;[[C[[C[Ljava/lang/String;[[CII)V
    .locals 10

    move-object v7, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move/from16 v5, p8

    move/from16 v6, p9

    .line 41
    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;-><init>([C[C[[C[[CII)V

    if-eqz p3, :cond_0

    .line 42
    invoke-static {p3}, Lorg/eclipse/jdt/internal/core/util/Util;->splitTypeLevelsSignature(Ljava/lang/String;)[[C

    move-result-object v0

    iput-object v0, v7, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->typeSignatures:[[C

    .line 43
    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getAllTypeArguments([[C)[[[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->setTypeArguments([[[C)V

    :cond_0
    const/4 v0, 0x0

    if-eqz v8, :cond_2

    .line 44
    array-length v1, v8

    if-lez v1, :cond_2

    .line 45
    new-array v2, v1, [[[C

    iput-object v2, v7, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parametersTypeSignatures:[[[C

    .line 46
    new-array v2, v1, [[[[C

    iput-object v2, v7, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parametersTypeArguments:[[[[C

    move v2, v0

    :goto_0
    if-lt v2, v1, :cond_1

    goto :goto_1

    .line 47
    :cond_1
    iget-object v3, v7, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parametersTypeSignatures:[[[C

    aget-object v4, v8, v2

    invoke-static {v4}, Lorg/eclipse/jdt/internal/core/util/Util;->splitTypeLevelsSignature(Ljava/lang/String;)[[C

    move-result-object v4

    aput-object v4, v3, v2

    .line 48
    iget-object v3, v7, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parametersTypeArguments:[[[[C

    iget-object v4, v7, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parametersTypeSignatures:[[[C

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/eclipse/jdt/internal/core/util/Util;->getAllTypeArguments([[C)[[[C

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    :cond_2
    :goto_1
    iput-object v9, v7, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->constructorArguments:[[C

    if-eqz v9, :cond_3

    .line 50
    array-length v1, v9

    if-nez v1, :cond_4

    .line 51
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->getTypeArguments()[[[C

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->getTypeArguments()[[[C

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_4

    .line 52
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->getTypeArguments()[[[C

    move-result-object v1

    aget-object v0, v1, v0

    iput-object v0, v7, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->constructorArguments:[[C

    .line 53
    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->hasConstructorArguments()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, v7, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    :cond_5
    return-void
.end method

.method public constructor <init>([C[C[[C[[CII)V
    .locals 2

    .line 6
    invoke-direct {p0, p6}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;-><init>(I)V

    const/high16 p6, 0x1f000000

    and-int/2addr p6, p5

    .line 7
    iput p6, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->fineGrain:I

    const/4 v0, 0x0

    if-nez p6, :cond_2

    if-eqz p5, :cond_1

    const/4 p6, 0x2

    if-eq p5, p6, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->findDeclarations:Z

    goto :goto_0

    .line 9
    :cond_1
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->findReferences:Z

    goto :goto_0

    .line 10
    :cond_2
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->findDeclarations:Z

    .line 11
    :goto_0
    iget-boolean p5, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive:Z

    if-eqz p5, :cond_3

    move-object p5, p2

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toLowerCase([C)[C

    move-result-object p5

    :goto_1
    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->declaringQualification:[C

    .line 12
    iget-boolean p5, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive:Z

    if-nez p5, :cond_5

    iget-boolean p5, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCamelCase:Z

    if-eqz p5, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toLowerCase([C)[C

    move-result-object p1

    :cond_5
    :goto_2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->declaringSimpleName:[C

    if-eqz p4, :cond_b

    .line 13
    array-length p1, p4

    iput p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterCount:I

    const/4 p5, 0x1

    if-lez p1, :cond_6

    if-eqz p2, :cond_6

    .line 14
    aget-object p1, p3, v0

    aget-object p6, p4, v0

    const/16 v1, 0x2e

    invoke-static {p1, p6, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object p1

    invoke-static {p1, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, p5

    goto :goto_3

    :cond_6
    move p1, v0

    :goto_3
    if-eqz p1, :cond_7

    .line 15
    iget p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterCount:I

    sub-int/2addr p1, p5

    iput p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterCount:I

    goto :goto_4

    :cond_7
    move p5, v0

    .line 16
    :goto_4
    iget p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterCount:I

    new-array p2, p1, [[C

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterQualifications:[[C

    .line 17
    new-array p1, p1, [[C

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterSimpleNames:[[C

    .line 18
    :goto_5
    iget p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterCount:I

    if-lt v0, p1, :cond_8

    goto :goto_8

    .line 19
    :cond_8
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterQualifications:[[C

    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive:Z

    if-eqz p2, :cond_9

    add-int p2, v0, p5

    aget-object p2, p3, p2

    goto :goto_6

    :cond_9
    add-int p2, v0, p5

    aget-object p2, p3, p2

    invoke-static {p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toLowerCase([C)[C

    move-result-object p2

    :goto_6
    aput-object p2, p1, v0

    .line 20
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterSimpleNames:[[C

    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive:Z

    if-eqz p2, :cond_a

    add-int p2, v0, p5

    aget-object p2, p4, p2

    goto :goto_7

    :cond_a
    add-int p2, v0, p5

    aget-object p2, p4, p2

    invoke-static {p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toLowerCase([C)[C

    move-result-object p2

    :goto_7
    aput-object p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_b
    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterCount:I

    .line 22
    :goto_8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->mustResolve()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    return-void
.end method

.method public constructor <init>([C[C[[C[[C[Ljava/lang/String;Lorg/eclipse/jdt/core/IMethod;II)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p7

    move v6, p8

    .line 23
    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;-><init>([C[C[[C[[CII)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 24
    :try_start_0
    invoke-interface {p6}, Lorg/eclipse/jdt/core/IMember;->getFlags()I

    move-result p3

    and-int/lit16 p3, p3, 0x80

    if-eqz p3, :cond_0

    move p3, p2

    goto :goto_0

    :cond_0
    move p3, p1

    :goto_0
    iput-boolean p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->varargs:Z
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :catch_0
    invoke-interface {p6}, Lorg/eclipse/jdt/core/IMethod;->isResolved()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 26
    invoke-interface {p6}, Lorg/eclipse/jdt/core/IMethod;->getKey()Ljava/lang/String;

    move-result-object p3

    .line 27
    new-instance p4, Lorg/eclipse/jdt/core/BindingKey;

    invoke-direct {p4, p3}, Lorg/eclipse/jdt/core/BindingKey;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p4}, Lorg/eclipse/jdt/core/BindingKey;->isParameterizedType()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 29
    invoke-static {p3}, Lorg/eclipse/jdt/internal/core/util/Util;->getDeclaringTypeSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 30
    invoke-static {p3}, Lorg/eclipse/jdt/internal/core/util/Util;->splitTypeLevelsSignature(Ljava/lang/String;)[[C

    move-result-object p3

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->typeSignatures:[[C

    .line 31
    invoke-static {p3}, Lorg/eclipse/jdt/internal/core/util/Util;->getAllTypeArguments([[C)[[[C

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->setTypeArguments([[[C)V

    goto :goto_1

    .line 32
    :cond_1
    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->constructorParameters:Z

    .line 33
    invoke-interface {p6}, Lorg/eclipse/jdt/core/IMember;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->storeTypeSignaturesAndArguments(Lorg/eclipse/jdt/core/IType;)V

    :cond_2
    :goto_1
    if-eqz p5, :cond_4

    .line 34
    array-length p3, p5

    if-lez p3, :cond_4

    .line 35
    new-array p4, p3, [[[C

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parametersTypeSignatures:[[[C

    .line 36
    new-array p4, p3, [[[[C

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parametersTypeArguments:[[[[C

    :goto_2
    if-lt p1, p3, :cond_3

    goto :goto_3

    .line 37
    :cond_3
    iget-object p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parametersTypeSignatures:[[[C

    aget-object p7, p5, p1

    invoke-static {p7}, Lorg/eclipse/jdt/internal/core/util/Util;->splitTypeLevelsSignature(Ljava/lang/String;)[[C

    move-result-object p7

    aput-object p7, p4, p1

    .line 38
    iget-object p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parametersTypeArguments:[[[[C

    iget-object p7, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parametersTypeSignatures:[[[C

    aget-object p7, p7, p1

    invoke-static {p7}, Lorg/eclipse/jdt/internal/core/util/Util;->getAllTypeArguments([[C)[[[C

    move-result-object p7

    aput-object p7, p4, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 39
    :cond_4
    :goto_3
    invoke-virtual {p0, p6}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->extractMethodArguments(Lorg/eclipse/jdt/core/IMethod;)[[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->constructorArguments:[[C

    .line 40
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->hasConstructorArguments()Z

    move-result p1

    if-eqz p1, :cond_5

    iput-boolean p2, p0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    :cond_5
    return-void
.end method

.method public static createDeclarationIndexKey([CI[C[[C[[CI[CII)[C
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    const/4 v8, 0x0

    if-gez v1, :cond_0

    sget-object v3, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->DEFAULT_CONSTRUCTOR:[C

    move-object v9, v3

    move-object v4, v8

    move/from16 v3, p8

    goto :goto_4

    :cond_0
    const/16 v9, 0xa

    if-ge v1, v9, :cond_1

    sget-object v9, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->COUNTS:[[C

    aget-object v9, v9, v1

    goto :goto_0

    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    :goto_0
    if-lez v1, :cond_6

    const/16 v10, 0x2c

    if-nez v2, :cond_4

    if-eqz v3, :cond_3

    array-length v11, v3

    if-ne v11, v1, :cond_3

    new-array v11, v1, [[C

    const/4 v12, 0x0

    :goto_1
    array-length v13, v3

    if-lt v12, v13, :cond_2

    invoke-static {v11, v10}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v3

    move-object v11, v3

    move/from16 v3, p8

    goto :goto_3

    :cond_2
    aget-object v13, v3, v12

    invoke-static {v13}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->getTypeErasure([C)[C

    move-result-object v13

    aput-object v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_3
    move/from16 v3, p8

    :goto_2
    move-object v11, v8

    goto :goto_3

    :cond_4
    or-int/lit8 v3, p8, 0x10

    goto :goto_2

    :goto_3
    if-eqz v4, :cond_5

    array-length v12, v4

    if-ne v12, v1, :cond_5

    invoke-static {v4, v10}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v8

    :cond_5
    move-object v4, v8

    move-object v8, v11

    goto :goto_4

    :cond_6
    move/from16 v3, p8

    move-object v4, v8

    :goto_4
    and-int/lit8 v10, v3, 0x2

    if-eqz v10, :cond_7

    const/4 v10, 0x1

    goto :goto_5

    :cond_7
    const/4 v10, 0x0

    :goto_5
    if-nez v0, :cond_8

    const/4 v11, 0x0

    goto :goto_6

    :cond_8
    array-length v11, v0

    :goto_6
    if-nez v6, :cond_9

    const/4 v12, 0x0

    goto :goto_7

    :cond_9
    array-length v12, v6

    :goto_7
    array-length v13, v9

    if-nez v2, :cond_b

    if-nez v8, :cond_a

    const/4 v14, 0x0

    goto :goto_8

    :cond_a
    array-length v14, v8

    goto :goto_8

    :cond_b
    array-length v14, v2

    :goto_8
    if-nez v4, :cond_c

    const/4 v15, 0x0

    goto :goto_9

    :cond_c
    array-length v15, v4

    :goto_9
    add-int v16, v11, v13

    add-int/lit8 v16, v16, 0x3

    if-nez v10, :cond_e

    add-int/lit8 v17, v12, 0x1

    add-int v16, v16, v17

    if-ltz v1, :cond_d

    add-int/lit8 v16, v16, 0x3

    :cond_d
    if-lez v1, :cond_e

    add-int v17, v14, v15

    add-int/lit8 v17, v17, 0x2

    add-int v16, v16, v17

    :cond_e
    move/from16 v7, v16

    new-array v7, v7, [C

    move-object/from16 p3, v4

    const/4 v4, 0x0

    if-lez v11, :cond_f

    invoke-static {v0, v4, v7, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_a

    :cond_f
    move v11, v4

    :goto_a
    if-lez v13, :cond_10

    invoke-static {v9, v4, v7, v11, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v11, v13

    :cond_10
    invoke-static {v3}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->encodeExtraFlags(I)I

    move-result v0

    or-int v0, p7, v0

    add-int/lit8 v3, v11, 0x1

    const/16 v4, 0x2f

    aput-char v4, v7, v11

    add-int/lit8 v9, v11, 0x2

    int-to-char v13, v0

    aput-char v13, v7, v3

    add-int/lit8 v3, v11, 0x3

    shr-int/lit8 v0, v0, 0x10

    int-to-char v0, v0

    aput-char v0, v7, v9

    if-nez v10, :cond_16

    add-int/lit8 v11, v11, 0x4

    aput-char v4, v7, v3

    if-lez v12, :cond_11

    const/4 v0, 0x0

    invoke-static {v6, v0, v7, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v11, v12

    :cond_11
    if-nez v1, :cond_12

    add-int/lit8 v0, v11, 0x1

    aput-char v4, v7, v11

    add-int/lit8 v11, v11, 0x2

    int-to-char v1, v5

    aput-char v1, v7, v0

    shr-int/lit8 v0, v5, 0x10

    int-to-char v0, v0

    aput-char v0, v7, v11

    goto :goto_d

    :cond_12
    if-lez v1, :cond_16

    add-int/lit8 v0, v11, 0x1

    aput-char v4, v7, v11

    if-lez v14, :cond_14

    if-nez v2, :cond_13

    const/4 v1, 0x0

    invoke-static {v8, v1, v7, v0, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b

    :cond_13
    const/4 v1, 0x0

    const/16 v3, 0x5c

    invoke-static {v2, v4, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object v2

    invoke-static {v2, v1, v7, v0, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_b
    add-int/2addr v0, v14

    goto :goto_c

    :cond_14
    const/4 v1, 0x0

    :goto_c
    add-int/lit8 v2, v0, 0x1

    aput-char v4, v7, v0

    if-lez v15, :cond_15

    move-object/from16 v8, p3

    invoke-static {v8, v1, v7, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v15

    :cond_15
    add-int/lit8 v0, v2, 0x1

    aput-char v4, v7, v2

    add-int/lit8 v2, v2, 0x2

    int-to-char v1, v5

    aput-char v1, v7, v0

    shr-int/lit8 v0, v5, 0x10

    int-to-char v0, v0

    aput-char v0, v7, v2

    :cond_16
    :goto_d
    return-object v7
.end method

.method public static createDefaultDeclarationIndexKey([C[CII)[C
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-static/range {v0 .. v8}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->createDeclarationIndexKey([CI[C[[C[[CI[CII)[C

    move-result-object p0

    return-object p0
.end method

.method public static createIndexKey([CI)[C
    .locals 2

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->COUNTS:[[C

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :goto_0
    invoke-static {p0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object p0

    return-object p0
.end method

.method public static decodeExtraFlags(I)I
    .locals 2

    const/high16 v0, 0x8000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/high16 v1, 0x10000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    const/high16 v1, 0x20000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr p0, v1

    if-eqz p0, :cond_3

    or-int/lit8 v0, v0, 0x1

    :cond_3
    return v0
.end method

.method public static decodeModifers(I)I
    .locals 1

    const v0, -0x78000001

    and-int/2addr p0, v0

    return p0
.end method

.method private static encodeExtraFlags(I)I
    .locals 2

    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_0

    const/high16 v0, 0x8000000

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_1

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    :cond_1
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_2

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    :cond_2
    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_3

    const/high16 p0, 0x40000000    # 2.0f

    or-int/2addr v0, p0

    :cond_3
    return v0
.end method

.method private static getTypeErasure([C)[C
    .locals 9

    const/16 v0, 0x3c

    invoke-static {v0, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-object p0

    :cond_0
    array-length v2, p0

    add-int/lit8 v3, v2, -0x2

    new-array v3, v3, [C

    const/4 v4, 0x0

    invoke-static {p0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v1, 0x1

    const/4 v6, 0x1

    :goto_0
    if-lt v5, v2, :cond_1

    new-array p0, v1, [C

    invoke-static {v3, v4, p0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_1
    aget-char v7, p0, v5

    if-eq v7, v0, :cond_3

    const/16 v8, 0x3e

    if-eq v7, v8, :cond_2

    if-nez v6, :cond_4

    add-int/lit8 v8, v1, 0x1

    aput-char v7, v3, v1

    move v1, v8

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method


# virtual methods
.method public decodeIndexKey([C)V
    .locals 7

    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/16 v2, 0x2f

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v4

    invoke-static {p1, v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->declaringSimpleName:[C

    add-int/2addr v4, v1

    invoke-static {v2, p1, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    add-int/lit8 v0, v2, -0x1

    :cond_0
    aget-char v2, p1, v0

    const/16 v6, 0x23

    if-ne v2, v6, :cond_1

    iput v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterCount:I

    goto :goto_1

    :cond_1
    iput v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterCount:I

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    :goto_1
    return-void

    :cond_2
    if-ne v2, v0, :cond_3

    aget-char v3, p1, v2

    add-int/lit8 v3, v3, -0x30

    iput v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterCount:I

    goto :goto_2

    :cond_3
    mul-int/lit8 v1, v1, 0xa

    iget v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterCount:I

    aget-char v5, p1, v2

    add-int/lit8 v5, v5, -0x30

    mul-int/2addr v5, v1

    add-int/2addr v3, v5

    iput v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterCount:I

    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public getBlankPattern()Lorg/eclipse/jdt/core/search/SearchPattern;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;-><init>(I)V

    return-object v0
.end method

.method public getIndexCategories()[[C
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->findReferences:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->findDeclarations:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->REF_AND_DECL_CATEGORIES:[[C

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->REF_CATEGORIES:[[C

    :goto_0
    return-object v0

    :cond_1
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->findDeclarations:Z

    if-eqz v0, :cond_2

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->DECL_CATEGORIES:[[C

    return-object v0

    :cond_2
    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    return-object v0
.end method

.method public hasConstructorArguments()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->constructorArguments:[[C

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasConstructorParameters()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->constructorParameters:Z

    return v0
.end method

.method public matchesDecodedKey(Lorg/eclipse/jdt/core/search/SearchPattern;)Z
    .locals 3

    check-cast p1, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    iget v0, p1, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterCount:I

    if-eq v2, v0, :cond_0

    if-eq v2, v1, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->varargs:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->declaringSimpleName:[C

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->declaringSimpleName:[C

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/search/SearchPattern;->matchesName([C[C)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public mustResolve()Z
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->declaringQualification:[C

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterSimpleNames:[[C

    if-eqz v0, :cond_3

    array-length v0, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterQualifications:[[C

    aget-object v3, v3, v2

    if-eqz v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->findReferences:Z

    return v0
.end method

.method public print(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 4

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->findDeclarations:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->findReferences:Z

    if-eqz v0, :cond_0

    const-string v0, "ConstructorCombinedPattern: "

    goto :goto_0

    :cond_0
    const-string v0, "ConstructorDeclarationPattern: "

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const-string v0, "ConstructorReferencePattern: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->declaringQualification:[C

    const/16 v1, 0x2e

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->declaringSimpleName:[C

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->declaringQualification:[C

    if-eqz v0, :cond_4

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    :goto_2
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterSimpleNames:[[C

    if-nez v0, :cond_5

    const-string v0, "..."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_5
    array-length v0, v0

    const/4 v2, 0x0

    :goto_3
    if-lt v2, v0, :cond_6

    :goto_4
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->print(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1

    :cond_6
    if-lez v2, :cond_7

    const-string v3, ", "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterQualifications:[[C

    aget-object v3, v3, v2

    if-eqz v3, :cond_8

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_8
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterSimpleNames:[[C

    aget-object v3, v3, v2

    if-nez v3, :cond_9

    const/16 v3, 0x2a

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_9
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public queryIn(Lorg/eclipse/jdt/internal/core/index/Index;)[Lorg/eclipse/jdt/internal/core/index/EntryResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->declaringSimpleName:[C

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/search/SearchPattern;->getMatchRule()I

    move-result v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->getMatchMode()I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterCount:I

    if-ltz v2, :cond_2

    iget-boolean v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->varargs:Z

    if-nez v3, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->declaringSimpleName:[C

    if-nez v0, :cond_1

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ONE_STAR:[C

    :cond_1
    invoke-static {v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->createIndexKey([CI)[C

    move-result-object v0

    sget-object v2, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ONE_STAR:[C

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->declaringSimpleName:[C

    if-eqz v2, :cond_3

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-char v3, v2, v3

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_3

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ONE_STAR:[C

    const/16 v3, 0x2f

    invoke-static {v2, v0, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object v0

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_6

    sget-object v2, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ONE_STAR:[C

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->declaringSimpleName:[C

    if-eqz v2, :cond_5

    iget v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterCount:I

    if-ltz v3, :cond_5

    iget-boolean v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->varargs:Z

    if-nez v4, :cond_5

    invoke-static {v2, v3}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->createIndexKey([CI)[C

    move-result-object v0

    :cond_5
    or-int/lit8 v1, v1, 0x1

    :cond_6
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->getIndexCategories()[[C

    move-result-object v2

    invoke-virtual {p1, v2, v0, v1}, Lorg/eclipse/jdt/internal/core/index/Index;->query([[C[CI)[Lorg/eclipse/jdt/internal/core/index/EntryResult;

    move-result-object p1

    return-object p1
.end method
