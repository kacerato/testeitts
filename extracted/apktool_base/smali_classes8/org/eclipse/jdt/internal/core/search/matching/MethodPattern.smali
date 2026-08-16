.class public Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;
.super Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;
.source "SourceFile"


# static fields
.field protected static DECL_CATEGORIES:[[C = null

.field public static final FINE_GRAIN_MASK:I = 0x1f000000

.field protected static REF_AND_DECL_CATEGORIES:[[C

.field protected static REF_CATEGORIES:[[C


# instance fields
.field public declaringPackageName:[C

.field public declaringQualification:[C

.field public declaringSimpleName:[C

.field protected declaringType:Lorg/eclipse/jdt/core/IType;

.field protected findDeclarations:Z

.field protected findReferences:Z

.field methodArguments:[[C

.field methodParameters:Z

.field public parameterCount:I

.field public parameterQualifications:[[C

.field public parameterSimpleNames:[[C

.field parametersTypeArguments:[[[[C

.field parametersTypeSignatures:[[[C

.field public returnQualification:[C

.field public returnSimpleName:[C

.field returnTypeSignatures:[[C

.field public selector:[C

.field public varargs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->METHOD_REF:[C

    filled-new-array {v0}, [[C

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->REF_CATEGORIES:[[C

    sget-object v1, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->METHOD_DECL:[C

    filled-new-array {v0, v1}, [[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->REF_AND_DECL_CATEGORIES:[[C

    filled-new-array {v1}, [[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->DECL_CATEGORIES:[[C

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x80

    .line 1
    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;-><init>(II)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->findDeclarations:Z

    .line 3
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->findReferences:Z

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->varargs:Z

    .line 5
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->methodParameters:Z

    return-void
.end method

.method public constructor <init>([C[C[CLjava/lang/String;[C[CLjava/lang/String;[[C[[C[Ljava/lang/String;[[CII)V
    .locals 13

    move-object v11, p0

    move-object/from16 v12, p10

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move/from16 v9, p12

    move/from16 v10, p13

    .line 46
    invoke-direct/range {v0 .. v10}, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;-><init>([C[C[C[C[C[[C[[CLorg/eclipse/jdt/core/IType;II)V

    if-eqz p4, :cond_0

    .line 47
    invoke-static/range {p4 .. p4}, Lorg/eclipse/jdt/internal/core/util/Util;->splitTypeLevelsSignature(Ljava/lang/String;)[[C

    move-result-object v0

    iput-object v0, v11, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->typeSignatures:[[C

    .line 48
    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getAllTypeArguments([[C)[[[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->setTypeArguments([[[C)V

    :cond_0
    if-eqz p7, :cond_1

    .line 49
    invoke-static/range {p7 .. p7}, Lorg/eclipse/jdt/internal/core/util/Util;->splitTypeLevelsSignature(Ljava/lang/String;)[[C

    move-result-object v0

    iput-object v0, v11, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->returnTypeSignatures:[[C

    :cond_1
    if-eqz v12, :cond_2

    .line 50
    array-length v0, v12

    if-lez v0, :cond_2

    .line 51
    new-array v1, v0, [[[C

    iput-object v1, v11, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parametersTypeSignatures:[[[C

    .line 52
    new-array v1, v0, [[[[C

    iput-object v1, v11, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parametersTypeArguments:[[[[C

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_3

    :cond_2
    move-object/from16 v0, p11

    goto :goto_1

    .line 53
    :cond_3
    iget-object v2, v11, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parametersTypeSignatures:[[[C

    aget-object v3, v12, v1

    invoke-static {v3}, Lorg/eclipse/jdt/internal/core/util/Util;->splitTypeLevelsSignature(Ljava/lang/String;)[[C

    move-result-object v3

    aput-object v3, v2, v1

    .line 54
    iget-object v2, v11, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parametersTypeArguments:[[[[C

    iget-object v3, v11, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parametersTypeSignatures:[[[C

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/eclipse/jdt/internal/core/util/Util;->getAllTypeArguments([[C)[[[C

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    :goto_1
    iput-object v0, v11, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->methodArguments:[[C

    .line 56
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->hasMethodArguments()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, v11, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    :cond_4
    return-void
.end method

.method public constructor <init>([C[C[C[C[CLjava/lang/String;[[C[[C[Ljava/lang/String;Lorg/eclipse/jdt/core/IMethod;II)V
    .locals 13

    move-object v11, p0

    move-object/from16 v12, p9

    .line 26
    invoke-interface/range {p10 .. p10}, Lorg/eclipse/jdt/core/IMember;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v9, p11

    move/from16 v10, p12

    .line 27
    invoke-direct/range {v0 .. v10}, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;-><init>([C[C[C[C[C[[C[[CLorg/eclipse/jdt/core/IType;II)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 28
    :try_start_0
    invoke-interface/range {p10 .. p10}, Lorg/eclipse/jdt/core/IMember;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, v11, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->varargs:Z
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :catch_0
    invoke-interface/range {p10 .. p10}, Lorg/eclipse/jdt/core/IMethod;->isResolved()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    invoke-interface/range {p10 .. p10}, Lorg/eclipse/jdt/core/IMethod;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 31
    new-instance v3, Lorg/eclipse/jdt/core/BindingKey;

    invoke-direct {v3, v2}, Lorg/eclipse/jdt/core/BindingKey;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v3}, Lorg/eclipse/jdt/core/BindingKey;->isParameterizedType()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 33
    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/util/Util;->getDeclaringTypeSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 34
    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/util/Util;->splitTypeLevelsSignature(Ljava/lang/String;)[[C

    move-result-object v2

    iput-object v2, v11, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->typeSignatures:[[C

    .line 35
    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/util/Util;->getAllTypeArguments([[C)[[[C

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->setTypeArguments([[[C)V

    goto :goto_1

    .line 36
    :cond_1
    iput-boolean v1, v11, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->methodParameters:Z

    .line 37
    iget-object v2, v11, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringType:Lorg/eclipse/jdt/core/IType;

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->storeTypeSignaturesAndArguments(Lorg/eclipse/jdt/core/IType;)V

    :cond_2
    :goto_1
    if-eqz p6, :cond_3

    .line 38
    invoke-static/range {p6 .. p6}, Lorg/eclipse/jdt/internal/core/util/Util;->splitTypeLevelsSignature(Ljava/lang/String;)[[C

    move-result-object v2

    iput-object v2, v11, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->returnTypeSignatures:[[C

    :cond_3
    if-eqz v12, :cond_4

    .line 39
    array-length v2, v12

    if-lez v2, :cond_4

    .line 40
    new-array v3, v2, [[[C

    iput-object v3, v11, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parametersTypeSignatures:[[[C

    .line 41
    new-array v3, v2, [[[[C

    iput-object v3, v11, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parametersTypeArguments:[[[[C

    :goto_2
    if-lt v0, v2, :cond_5

    :cond_4
    move-object/from16 v0, p10

    goto :goto_3

    .line 42
    :cond_5
    iget-object v3, v11, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parametersTypeSignatures:[[[C

    aget-object v4, v12, v0

    invoke-static {v4}, Lorg/eclipse/jdt/internal/core/util/Util;->splitTypeLevelsSignature(Ljava/lang/String;)[[C

    move-result-object v4

    aput-object v4, v3, v0

    .line 43
    iget-object v3, v11, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parametersTypeArguments:[[[[C

    iget-object v4, v11, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parametersTypeSignatures:[[[C

    aget-object v4, v4, v0

    invoke-static {v4}, Lorg/eclipse/jdt/internal/core/util/Util;->getAllTypeArguments([[C)[[[C

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 44
    :goto_3
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->extractMethodArguments(Lorg/eclipse/jdt/core/IMethod;)[[C

    move-result-object v0

    iput-object v0, v11, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->methodArguments:[[C

    .line 45
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->hasMethodArguments()Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v1, v11, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    :cond_6
    return-void
.end method

.method public constructor <init>([C[C[C[C[C[[C[[CLorg/eclipse/jdt/core/IType;II)V
    .locals 1

    .line 6
    invoke-direct {p0, p10}, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;-><init>(I)V

    const/high16 p10, 0x1f000000

    and-int/2addr p10, p9

    .line 7
    iput p10, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->fineGrain:I

    const/4 v0, 0x0

    if-nez p10, :cond_2

    and-int/lit8 p9, p9, 0xf

    if-eqz p9, :cond_1

    const/4 p10, 0x2

    if-eq p9, p10, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->findDeclarations:Z

    goto :goto_0

    .line 9
    :cond_1
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->findReferences:Z

    goto :goto_0

    .line 10
    :cond_2
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->findDeclarations:Z

    .line 11
    :goto_0
    iget-boolean p9, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive:Z

    if-nez p9, :cond_4

    iget-boolean p9, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCamelCase:Z

    if-eqz p9, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toLowerCase([C)[C

    move-result-object p1

    :cond_4
    :goto_1
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->selector:[C

    .line 12
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive:Z

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toLowerCase([C)[C

    move-result-object p2

    :goto_2
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringQualification:[C

    .line 13
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive:Z

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {p3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toLowerCase([C)[C

    move-result-object p3

    :goto_3
    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringSimpleName:[C

    .line 14
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive:Z

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {p4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toLowerCase([C)[C

    move-result-object p4

    :goto_4
    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->returnQualification:[C

    .line 15
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive:Z

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    invoke-static {p5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toLowerCase([C)[C

    move-result-object p5

    :goto_5
    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->returnSimpleName:[C

    if-eqz p7, :cond_c

    .line 16
    array-length p1, p7

    iput p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterCount:I

    .line 17
    new-array p2, p1, [[C

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterQualifications:[[C

    .line 18
    new-array p1, p1, [[C

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterSimpleNames:[[C

    .line 19
    :goto_6
    iget p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterCount:I

    if-lt v0, p1, :cond_9

    goto :goto_9

    .line 20
    :cond_9
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterQualifications:[[C

    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive:Z

    if-eqz p2, :cond_a

    aget-object p2, p6, v0

    goto :goto_7

    :cond_a
    aget-object p2, p6, v0

    invoke-static {p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toLowerCase([C)[C

    move-result-object p2

    :goto_7
    aput-object p2, p1, v0

    .line 21
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterSimpleNames:[[C

    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive:Z

    if-eqz p2, :cond_b

    aget-object p2, p7, v0

    goto :goto_8

    :cond_b
    aget-object p2, p7, v0

    invoke-static {p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toLowerCase([C)[C

    move-result-object p2

    :goto_8
    aput-object p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_c
    const/4 p1, -0x1

    .line 22
    iput p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterCount:I

    .line 23
    :goto_9
    iput-object p8, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringType:Lorg/eclipse/jdt/core/IType;

    if-eqz p8, :cond_d

    .line 24
    invoke-interface {p8}, Lorg/eclipse/jdt/core/IType;->getPackageFragment()Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IPackageFragment;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringPackageName:[C

    .line 25
    :cond_d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->mustResolve()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    return-void
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


# virtual methods
.method public decodeIndexKey([C)V
    .locals 6

    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    iput v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterCount:I

    const/4 v3, 0x0

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->selector:[C

    move v3, v0

    :goto_0
    if-gez v3, :cond_0

    goto :goto_1

    :cond_0
    aget-char v4, p1, v3

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_1

    new-array v0, v3, [C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->selector:[C

    invoke-static {p1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    return-void

    :cond_1
    if-ne v3, v0, :cond_2

    add-int/lit8 v4, v4, -0x30

    iput v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterCount:I

    goto :goto_2

    :cond_2
    mul-int/lit8 v1, v1, 0xa

    iget v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterCount:I

    add-int/lit8 v4, v4, -0x30

    mul-int/2addr v4, v1

    add-int/2addr v5, v4

    iput v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterCount:I

    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method

.method public getBlankPattern()Lorg/eclipse/jdt/core/search/SearchPattern;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;-><init>(I)V

    return-object v0
.end method

.method public getIndexCategories()[[C
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->findReferences:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->findDeclarations:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->REF_AND_DECL_CATEGORIES:[[C

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->REF_CATEGORIES:[[C

    :goto_0
    return-object v0

    :cond_1
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->findDeclarations:Z

    if-eqz v0, :cond_2

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->DECL_CATEGORIES:[[C

    return-object v0

    :cond_2
    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    return-object v0
.end method

.method public hasMethodArguments()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->methodArguments:[[C

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasMethodParameters()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->methodParameters:Z

    return v0
.end method

.method public isPolymorphicSearch()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->findReferences:Z

    return v0
.end method

.method public matchesDecodedKey(Lorg/eclipse/jdt/core/search/SearchPattern;)Z
    .locals 2

    check-cast p1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterCount:I

    iget v1, p1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterCount:I

    if-eq v0, v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->varargs:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->selector:[C

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->selector:[C

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
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringSimpleName:[C

    const/4 v1, 0x1

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringQualification:[C

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->returnSimpleName:[C

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->returnQualification:[C

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterSimpleNames:[[C

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    array-length v0, v0

    move v3, v2

    :goto_0
    if-lt v3, v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterQualifications:[[C

    aget-object v4, v4, v3

    if-eqz v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v2

    :cond_5
    :goto_2
    return v1
.end method

.method public print(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 5

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->findDeclarations:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->findReferences:Z

    if-eqz v0, :cond_0

    const-string v0, "MethodCombinedPattern: "

    goto :goto_0

    :cond_0
    const-string v0, "MethodDeclarationPattern: "

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const-string v0, "MethodReferencePattern: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringQualification:[C

    const/16 v1, 0x2e

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringSimpleName:[C

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringQualification:[C

    if-eqz v0, :cond_4

    const-string v0, "*."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->selector:[C

    const-string v2, "*"

    if-eqz v0, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_5
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterSimpleNames:[[C

    if-nez v0, :cond_6

    const-string v0, "..."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_6
    array-length v0, v0

    const/4 v3, 0x0

    :goto_4
    if-lt v3, v0, :cond_b

    :goto_5
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->returnQualification:[C

    const-string v3, " --> "

    if-eqz v0, :cond_7

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->returnQualification:[C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->returnSimpleName:[C

    if-eqz v0, :cond_8

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    :goto_6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->returnSimpleName:[C

    if-eqz v0, :cond_9

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_7

    :cond_9
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->returnQualification:[C

    if-eqz v0, :cond_a

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    :goto_7
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->print(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1

    :cond_b
    if-lez v3, :cond_c

    const-string v4, ", "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterQualifications:[[C

    aget-object v4, v4, v3

    if-eqz v4, :cond_d

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_d
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterSimpleNames:[[C

    aget-object v4, v4, v3

    if-nez v4, :cond_e

    const/16 v4, 0x2a

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_8

    :cond_e
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4
.end method

.method public queryIn(Lorg/eclipse/jdt/internal/core/index/Index;)[Lorg/eclipse/jdt/internal/core/index/EntryResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->selector:[C

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/search/SearchPattern;->getMatchRule()I

    move-result v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->getMatchMode()I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterCount:I

    if-ltz v2, :cond_2

    iget-boolean v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->varargs:Z

    if-nez v3, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->selector:[C

    if-nez v0, :cond_1

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ONE_STAR:[C

    :cond_1
    invoke-static {v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->createIndexKey([CI)[C

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->selector:[C

    if-eqz v2, :cond_5

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-char v3, v2, v3

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_5

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ONE_STAR:[C

    const/16 v3, 0x2f

    invoke-static {v2, v0, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->selector:[C

    if-eqz v2, :cond_4

    iget v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterCount:I

    if-ltz v3, :cond_4

    iget-boolean v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->varargs:Z

    if-nez v4, :cond_4

    invoke-static {v2, v3}, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->createIndexKey([CI)[C

    move-result-object v0

    goto :goto_0

    :cond_4
    or-int/lit8 v1, v1, 0x1

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->getIndexCategories()[[C

    move-result-object v2

    invoke-virtual {p1, v2, v0, v1}, Lorg/eclipse/jdt/internal/core/index/Index;->query([[C[CI)[Lorg/eclipse/jdt/internal/core/index/EntryResult;

    move-result-object p1

    return-object p1
.end method
