.class public Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;


# static fields
.field private static final JAVA_LANG_ANNOTATION_ELEMENTTYPE:[C

.field private static final TARGET_ANNOTATION_BITS:J = 0x20000ff000000000L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_ELEMENTTYPE:[[C

    const/16 v1, 0x2e

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->JAVA_LANG_ANNOTATION_ELEMENTTYPE:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkAnnotation(Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;)Z
    .locals 6

    iget-object v1, p2, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->simpleName:[C

    iget-object v2, p2, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->qualification:[C

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;->getTypeName()[C

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->convertClassFileFormat([C)[C

    move-result-object v3

    iget-boolean v4, p2, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive:Z

    iget-boolean v5, p2, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCamelCase:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->checkTypeName([C[C[CZZ)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;->getElementValuePairs()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    array-length v2, p1

    move v3, v0

    :goto_0
    if-lt v3, v2, :cond_1

    goto :goto_1

    :cond_1
    aget-object v4, p1, v3

    invoke-interface {v4}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    if-eqz v5, :cond_2

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    invoke-direct {p0, v4, p2}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->checkAnnotation(Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method private checkAnnotationTypeReference([CLorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;)Z
    .locals 6

    iget-object v1, p2, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->simpleName:[C

    iget-object v2, p2, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->qualification:[C

    iget-boolean v4, p2, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive:Z

    iget-boolean v5, p2, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCamelCase:Z

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->checkTypeName([C[C[CZZ)Z

    move-result p1

    return p1
.end method

.method private checkAnnotations(Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;J)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    array-length v2, p2

    move v3, v0

    :goto_0
    if-lt v3, v2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v4, p2, v3

    invoke-direct {p0, v4, p1}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->checkAnnotation(Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const-wide v2, 0x77fffff800000000L    # 1.0565850317039238E270

    and-long/2addr v2, p3

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-eqz p2, :cond_3

    invoke-direct {p0, p3, p4, p1}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->checkStandardAnnotations(JLorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method private checkDeclaringType(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;[C[CZZ)Z
    .locals 6

    const/4 v0, 0x1

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getName()[C

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->convertClassFileFormat([C)[C

    move-result-object v3

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->checkTypeName([C[C[CZZ)Z

    move-result p1

    return p1
.end method

.method private checkParameters([C[[C[[CZZ)Z
    .locals 9

    invoke-static {p1}, Lorg/eclipse/jdt/core/Signature;->getParameterTypes([C)[[C

    move-result-object p1

    array-length v0, p2

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    if-lt v1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    aget-object v4, p2, v1

    aget-object v5, p3, v1

    aget-object v3, p1, v1

    invoke-static {v3}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object v6

    move-object v3, p0

    move v7, p4

    move v8, p5

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->checkTypeName([C[C[CZZ)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private checkStandardAnnotations(JLorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;)Z
    .locals 8

    const-wide v0, 0x77fffff800000000L    # 1.0565850317039238E270

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-wide v4, 0x20600ff800000000L    # 9.583895004233563E-153

    and-long/2addr v4, p1

    cmp-long v0, v4, v2

    const/4 v4, 0x1

    const/16 v5, 0x2e

    if-eqz v0, :cond_2

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_TARGET:[[C

    invoke-static {v0, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->checkAnnotationTypeReference([CLorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;)Z

    move-result v0

    if-nez v0, :cond_1

    const-wide v6, 0x20000ff000000000L

    and-long/2addr v6, p1

    cmp-long v0, v6, v2

    if-eqz v0, :cond_2

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->JAVA_LANG_ANNOTATION_ELEMENTTYPE:[C

    invoke-direct {p0, v0, p3}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->checkAnnotationTypeReference([CLorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v4

    :cond_2
    const-wide v6, 0x300000000000L

    and-long/2addr v6, p1

    cmp-long v0, v6, v2

    if-eqz v0, :cond_4

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_RETENTION:[[C

    invoke-static {v0, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->checkAnnotationTypeReference([CLorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_RETENTIONPOLICY:[[C

    invoke-static {v0, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->checkAnnotationTypeReference([CLorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    return v4

    :cond_4
    const-wide v6, 0x400000000000L

    and-long/2addr v6, p1

    cmp-long v0, v6, v2

    if-eqz v0, :cond_5

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_DEPRECATED:[[C

    invoke-static {v0, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->checkAnnotationTypeReference([CLorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v4

    :cond_5
    const-wide v6, 0x800000000000L

    and-long/2addr v6, p1

    cmp-long v0, v6, v2

    if-eqz v0, :cond_6

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_DOCUMENTED:[[C

    invoke-static {v0, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->checkAnnotationTypeReference([CLorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v4

    :cond_6
    const-wide/high16 v6, 0x1000000000000L

    and-long/2addr v6, p1

    cmp-long v0, v6, v2

    if-eqz v0, :cond_7

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_INHERITED:[[C

    invoke-static {v0, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->checkAnnotationTypeReference([CLorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v4

    :cond_7
    const-wide/high16 v6, 0x2000000000000L

    and-long/2addr v6, p1

    cmp-long v0, v6, v2

    if-eqz v0, :cond_8

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_OVERRIDE:[[C

    invoke-static {v0, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->checkAnnotationTypeReference([CLorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;)Z

    move-result v0

    if-eqz v0, :cond_8

    return v4

    :cond_8
    const-wide/high16 v6, 0x4000000000000L

    and-long/2addr v6, p1

    cmp-long v0, v6, v2

    if-eqz v0, :cond_9

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_SUPPRESSWARNINGS:[[C

    invoke-static {v0, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->checkAnnotationTypeReference([CLorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v4

    :cond_9
    const-wide/high16 v6, 0x8000000000000L

    and-long/2addr v6, p1

    cmp-long v0, v6, v2

    if-eqz v0, :cond_a

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_SAFEVARARGS:[[C

    invoke-static {v0, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->checkAnnotationTypeReference([CLorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;)Z

    move-result v0

    if-eqz v0, :cond_a

    return v4

    :cond_a
    const-wide/high16 v6, 0x10000000000000L

    and-long/2addr p1, v6

    cmp-long p1, p1, v2

    if-eqz p1, :cond_b

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_INVOKE_METHODHANDLE_$_POLYMORPHICSIGNATURE:[[C

    invoke-static {p1, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->checkAnnotationTypeReference([CLorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;)Z

    move-result p1

    if-eqz p1, :cond_b

    return v4

    :cond_b
    return v1
.end method

.method private checkTypeName([C[C[CZZ)Z
    .locals 0

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->qualifiedPattern([C[C)[C

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-static {p1, p3, p4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->match([C[CZ)Z

    move-result p1

    return p1
.end method

.method public static convertClassFileFormat([C)[C
    .locals 2

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-static {p0, v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object p0

    return-object p0
.end method

.method private matchAnnotations(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/internal/core/ClassFile;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    iget v4, v1, Lorg/eclipse/jdt/core/search/SearchPattern;->kind:I

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eq v4, v5, :cond_2

    const/16 v5, 0x100

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    check-cast v1, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;

    iget-object v4, v1, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;->patterns:[Lorg/eclipse/jdt/core/search/SearchPattern;

    array-length v5, v4

    :goto_0
    if-lt v6, v5, :cond_1

    :goto_1
    return-void

    :cond_1
    aget-object v1, v4, v6

    move-object/from16 v7, p3

    invoke-direct {v0, v1, v2, v7, v3}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->matchAnnotations(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/internal/core/ClassFile;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v7, p3

    check-cast v1, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    invoke-interface/range {p4 .. p4}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/core/ClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/internal/core/BinaryType;

    invoke-interface/range {p4 .. p4}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getTagBits()J

    move-result-wide v7

    invoke-direct {v0, v1, v4, v7, v8}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->checkAnnotations(Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;J)Z

    move-result v4

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    new-instance v4, Lorg/eclipse/jdt/internal/core/ResolvedBinaryType;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v8

    check-cast v8, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/NamedMember;->getElementName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/BinaryMember;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v8, v9, v5}, Lorg/eclipse/jdt/internal/core/ResolvedBinaryType;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lorg/eclipse/jdt/core/search/TypeReferenceMatch;

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->getParticipant()Lorg/eclipse/jdt/core/search/SearchParticipant;

    move-result-object v14

    iget-object v8, v2, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->currentPossibleMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    iget-object v15, v8, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->resource:Lorg/eclipse/core/resources/IResource;

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v5

    move-object v9, v4

    invoke-direct/range {v8 .. v15}, Lorg/eclipse/jdt/core/search/TypeReferenceMatch;-><init>(Lorg/eclipse/jdt/core/IJavaElement;IIIZLorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/core/resources/IResource;)V

    invoke-virtual {v5, v7}, Lorg/eclipse/jdt/core/search/ReferenceMatch;->setLocalElement(Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-virtual {v2, v5}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    move-object v5, v4

    :cond_3
    invoke-interface/range {p4 .. p4}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getMethods()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

    move-result-object v4

    if-eqz v4, :cond_7

    array-length v8, v4

    move v9, v6

    :goto_2
    if-lt v9, v8, :cond_4

    goto :goto_4

    :cond_4
    aget-object v10, v4, v9

    invoke-interface {v10}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v11

    invoke-interface {v10}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getTagBits()J

    move-result-wide v12

    invoke-direct {v0, v1, v11, v12, v13}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->checkAnnotations(Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;J)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v2, v5, v3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->cacheBinaryType(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    move-result-object v11

    new-instance v12, Ljava/lang/String;

    invoke-interface {v10}, Lorg/eclipse/jdt/internal/compiler/env/IGenericMethod;->isConstructor()Z

    move-result v13

    if-eqz v13, :cond_5

    iget-object v11, v11, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    array-length v13, v11

    add-int/lit8 v13, v13, -0x1

    aget-object v11, v11, v13

    goto :goto_3

    :cond_5
    invoke-interface {v10}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getSelector()[C

    move-result-object v11

    :goto_3
    invoke-direct {v12, v11}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v10}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getMethodDescriptor()[C

    move-result-object v10

    invoke-static {v10}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->convertClassFileFormat([C)[C

    move-result-object v10

    invoke-static {v10}, Lorg/eclipse/jdt/core/Signature;->getParameterTypes([C)[[C

    move-result-object v10

    invoke-static {v10}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toStrings([[C)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v12, v10}, Lorg/eclipse/jdt/internal/core/BinaryType;->getMethod(Ljava/lang/String;[Ljava/lang/String;)Lorg/eclipse/jdt/core/IMethod;

    move-result-object v14

    new-instance v10, Lorg/eclipse/jdt/core/search/TypeReferenceMatch;

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->getParticipant()Lorg/eclipse/jdt/core/search/SearchParticipant;

    move-result-object v19

    iget-object v11, v2, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->currentPossibleMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    iget-object v11, v11, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->resource:Lorg/eclipse/core/resources/IResource;

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v13, v10

    move-object/from16 v20, v11

    invoke-direct/range {v13 .. v20}, Lorg/eclipse/jdt/core/search/TypeReferenceMatch;-><init>(Lorg/eclipse/jdt/core/IJavaElement;IIIZLorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/core/resources/IResource;)V

    invoke-virtual {v10, v7}, Lorg/eclipse/jdt/core/search/ReferenceMatch;->setLocalElement(Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-virtual {v2, v10}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_7
    :goto_4
    invoke-interface/range {p4 .. p4}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getFields()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;

    move-result-object v3

    if-eqz v3, :cond_a

    array-length v4, v3

    :goto_5
    if-lt v6, v4, :cond_8

    goto :goto_6

    :cond_8
    aget-object v8, v3, v6

    invoke-interface {v8}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v9

    invoke-interface {v8}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getTagBits()J

    move-result-wide v10

    invoke-direct {v0, v1, v9, v10, v11}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->checkAnnotations(Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;J)Z

    move-result v9

    if-eqz v9, :cond_9

    new-instance v9, Ljava/lang/String;

    invoke-interface {v8}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getName()[C

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5, v9}, Lorg/eclipse/jdt/internal/core/BinaryType;->getField(Ljava/lang/String;)Lorg/eclipse/jdt/core/IField;

    move-result-object v11

    new-instance v8, Lorg/eclipse/jdt/core/search/TypeReferenceMatch;

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->getParticipant()Lorg/eclipse/jdt/core/search/SearchParticipant;

    move-result-object v16

    iget-object v9, v2, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->currentPossibleMatch:Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    iget-object v9, v9, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->resource:Lorg/eclipse/core/resources/IResource;

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v8

    move-object/from16 v17, v9

    invoke-direct/range {v10 .. v17}, Lorg/eclipse/jdt/core/search/TypeReferenceMatch;-><init>(Lorg/eclipse/jdt/core/IJavaElement;IIIZLorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/core/resources/IResource;)V

    invoke-virtual {v8, v7}, Lorg/eclipse/jdt/core/search/ReferenceMatch;->setLocalElement(Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-virtual {v2, v8}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    return-void
.end method


# virtual methods
.method public locateMatches(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/internal/core/ClassFile;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    iget-object v9, v7, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->pattern:Lorg/eclipse/jdt/core/search/SearchPattern;

    move-object/from16 v1, p2

    invoke-direct {v0, v9, v7, v1, v8}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->matchAnnotations(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/internal/core/ClassFile;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)V

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/core/ClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lorg/eclipse/jdt/internal/core/BinaryType;

    const/4 v11, 0x0

    invoke-virtual {v0, v9, v8, v11}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->matchBinary(Lorg/eclipse/jdt/core/search/SearchPattern;Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v3, Lorg/eclipse/jdt/internal/core/ResolvedBinaryType;

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/core/NamedMember;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/core/BinaryMember;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4}, Lorg/eclipse/jdt/internal/core/ResolvedBinaryType;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object/from16 v1, p1

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportBinaryMemberDeclaration(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/core/IMember;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;I)V

    return-void

    :cond_0
    invoke-interface/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getMethods()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

    move-result-object v12

    if-nez v12, :cond_1

    const/4 v14, 0x0

    goto :goto_0

    :cond_1
    array-length v1, v12

    move v14, v1

    :goto_0
    invoke-interface/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getFields()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;

    move-result-object v15

    if-nez v15, :cond_2

    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    array-length v1, v15

    move v6, v1

    :goto_1
    iget-boolean v5, v9, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    if-eqz v5, :cond_1d

    invoke-virtual {v7, v10, v8}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->cacheBinaryType(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    move-result-object v4

    const/16 v16, 0x1

    if-eqz v4, :cond_1c

    invoke-virtual {v7, v4}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->typeInHierarchy(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->availableMethods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v3

    if-nez v3, :cond_4

    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    array-length v1, v3

    move v2, v1

    :goto_2
    if-eq v14, v2, :cond_5

    move/from16 v17, v16

    goto :goto_3

    :cond_5
    const/16 v17, 0x0

    :goto_3
    move-object/from16 v18, v11

    move-object/from16 v19, v18

    const/4 v1, 0x0

    :goto_4
    if-lt v1, v2, :cond_10

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->availableFields()[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v14

    if-nez v14, :cond_6

    const/4 v4, 0x0

    goto :goto_5

    :cond_6
    array-length v1, v14

    move v4, v1

    :goto_5
    if-eq v6, v4, :cond_7

    move/from16 v20, v16

    goto :goto_6

    :cond_7
    const/16 v20, 0x0

    :goto_6
    const/4 v3, 0x0

    const/16 v21, 0x0

    :goto_7
    if-lt v3, v4, :cond_9

    if-nez v17, :cond_8

    if-nez v20, :cond_8

    return-void

    :cond_8
    move/from16 v26, v5

    const/4 v6, 0x0

    const/16 v22, 0x0

    goto/16 :goto_15

    :cond_9
    aget-object v2, v14, v3

    iget-object v1, v7, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I

    move-result v1

    if-eqz v1, :cond_b

    new-instance v13, Ljava/lang/String;

    iget-object v11, v2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-direct {v13, v11}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v10, v13}, Lorg/eclipse/jdt/internal/core/BinaryType;->getField(Ljava/lang/String;)Lorg/eclipse/jdt/core/IField;

    move-result-object v11

    const/4 v13, 0x3

    if-ne v1, v13, :cond_a

    const/4 v13, 0x0

    goto :goto_8

    :cond_a
    move/from16 v13, v16

    :goto_8
    const/16 v24, 0x0

    move-object/from16 v1, p1

    move-object/from16 v25, v2

    move-object/from16 v2, v24

    move/from16 v24, v3

    move-object v3, v11

    move v11, v4

    move-object/from16 v4, v25

    move/from16 v26, v5

    move-object/from16 v5, p3

    move/from16 v27, v11

    move v11, v6

    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportBinaryMemberDeclaration(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/core/IMember;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;I)V

    goto :goto_9

    :cond_b
    move-object/from16 v25, v2

    move/from16 v24, v3

    move/from16 v27, v4

    move/from16 v26, v5

    move v11, v6

    :goto_9
    if-eqz v20, :cond_f

    const/4 v1, 0x0

    :goto_a
    if-lt v1, v11, :cond_c

    goto :goto_b

    :cond_c
    aget-object v2, v15, v1

    invoke-interface {v2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getName()[C

    move-result-object v2

    move-object/from16 v3, v25

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-static {v2, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_e

    if-nez v21, :cond_d

    new-array v2, v11, [Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;

    const/4 v3, 0x0

    invoke-static {v15, v3, v2, v3, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v21, v2

    :cond_d
    const/4 v2, 0x0

    aput-object v2, v21, v1

    goto :goto_b

    :cond_e
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v25, v3

    goto :goto_a

    :cond_f
    :goto_b
    add-int/lit8 v3, v24, 0x1

    move v6, v11

    move/from16 v5, v26

    move/from16 v4, v27

    goto :goto_7

    :cond_10
    move/from16 v26, v5

    move v11, v6

    aget-object v13, v3, v1

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->genericSignature()[C

    move-result-object v5

    if-nez v5, :cond_11

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->signature()[C

    move-result-object v5

    :cond_11
    move-object v6, v5

    iget-object v5, v7, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    invoke-virtual {v5, v13}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I

    move-result v5

    move/from16 v20, v1

    if-eqz v5, :cond_14

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v21

    if-eqz v21, :cond_12

    move/from16 v21, v2

    iget-object v2, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    move-object/from16 v24, v3

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    goto :goto_c

    :cond_12
    move/from16 v21, v2

    move-object/from16 v24, v3

    iget-object v2, v13, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    :goto_c
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-static {v6}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->convertClassFileFormat([C)[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->getParameterTypes([C)[[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toStrings([[C)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Lorg/eclipse/jdt/internal/core/BinaryType;->getMethod(Ljava/lang/String;[Ljava/lang/String;)Lorg/eclipse/jdt/core/IMethod;

    move-result-object v3

    const/4 v1, 0x3

    if-ne v5, v1, :cond_13

    const/16 v23, 0x0

    goto :goto_d

    :cond_13
    move/from16 v23, v16

    :goto_d
    const/4 v2, 0x0

    move-object/from16 v1, p1

    move-object/from16 v25, v4

    move-object v4, v13

    move-object/from16 v5, p3

    move-object v7, v6

    move/from16 v6, v23

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportBinaryMemberDeclaration(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/core/IMember;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;I)V

    goto :goto_e

    :cond_14
    move/from16 v21, v2

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-object v7, v6

    :goto_e
    if-eqz v17, :cond_18

    if-nez v18, :cond_17

    new-array v1, v14, [[C

    const/4 v3, 0x0

    :goto_f
    if-lt v3, v14, :cond_15

    goto :goto_10

    :cond_15
    aget-object v2, v12, v3

    invoke-interface {v2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getGenericSignature()[C

    move-result-object v4

    if-nez v4, :cond_16

    invoke-interface {v2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getMethodDescriptor()[C

    move-result-object v4

    :cond_16
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_17
    move-object/from16 v1, v18

    :goto_10
    const/4 v3, 0x0

    :goto_11
    if-lt v3, v14, :cond_19

    move-object/from16 v18, v1

    :cond_18
    const/4 v6, 0x0

    const/16 v22, 0x0

    goto :goto_14

    :cond_19
    aget-object v2, v12, v3

    invoke-interface {v2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getSelector()[C

    move-result-object v2

    iget-object v4, v13, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-static {v2, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_1b

    aget-object v2, v1, v3

    invoke-static {v2, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_1b

    if-nez v19, :cond_1a

    new-array v2, v14, [Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

    const/4 v6, 0x0

    invoke-static {v12, v6, v2, v6, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v19, v2

    :goto_12
    const/16 v22, 0x0

    goto :goto_13

    :cond_1a
    const/4 v6, 0x0

    goto :goto_12

    :goto_13
    aput-object v22, v19, v3

    move-object/from16 v18, v1

    goto :goto_14

    :cond_1b
    const/4 v6, 0x0

    const/16 v22, 0x0

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :goto_14
    add-int/lit8 v1, v20, 0x1

    move-object/from16 v7, p1

    move v6, v11

    move/from16 v2, v21

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    move/from16 v5, v26

    goto/16 :goto_4

    :cond_1c
    move/from16 v26, v5

    move-object/from16 v22, v11

    const/4 v6, 0x0

    move-object/from16 v18, v22

    move-object/from16 v19, v18

    move-object/from16 v21, v19

    :goto_15
    move-object/from16 v2, v19

    goto :goto_16

    :cond_1d
    move/from16 v26, v5

    move-object/from16 v22, v11

    const/4 v6, 0x0

    move/from16 v16, v6

    move-object/from16 v2, v22

    move-object/from16 v18, v2

    move-object/from16 v21, v18

    :goto_16
    if-eqz v26, :cond_1e

    move-object v12, v2

    :cond_1e
    if-nez v12, :cond_1f

    move v7, v6

    goto :goto_17

    :cond_1f
    array-length v3, v12

    move v7, v3

    :goto_17
    move v11, v6

    :goto_18
    if-lt v11, v7, :cond_25

    if-eqz v26, :cond_20

    move-object/from16 v13, v21

    goto :goto_19

    :cond_20
    move-object v13, v15

    :goto_19
    if-nez v13, :cond_21

    move v14, v6

    goto :goto_1a

    :cond_21
    array-length v3, v13

    move v14, v3

    :goto_1a
    move v7, v6

    :goto_1b
    if-lt v7, v14, :cond_22

    return-void

    :cond_22
    aget-object v1, v13, v7

    if-nez v1, :cond_23

    goto :goto_1c

    :cond_23
    invoke-virtual {v0, v9, v1, v8}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->matchBinary(Lorg/eclipse/jdt/core/search/SearchPattern;Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)Z

    move-result v2

    if-eqz v2, :cond_24

    new-instance v2, Ljava/lang/String;

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getName()[C

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v10, v2}, Lorg/eclipse/jdt/internal/core/BinaryType;->getField(Ljava/lang/String;)Lorg/eclipse/jdt/core/IField;

    move-result-object v1

    new-instance v3, Lorg/eclipse/jdt/internal/core/ResolvedBinaryField;

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IField;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v10, v2, v1}, Lorg/eclipse/jdt/internal/core/ResolvedBinaryField;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v5, p3

    move/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportBinaryMemberDeclaration(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/core/IMember;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;I)V

    :cond_24
    :goto_1c
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    :cond_25
    aget-object v1, v12, v11

    if-nez v1, :cond_27

    :cond_26
    move v13, v6

    goto :goto_1f

    :cond_27
    invoke-virtual {v0, v9, v1, v8}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->matchBinary(Lorg/eclipse/jdt/core/search/SearchPattern;Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/compiler/env/IGenericMethod;->isConstructor()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getSourceName()[C

    move-result-object v2

    goto :goto_1d

    :cond_28
    invoke-interface {v1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getSelector()[C

    move-result-object v2

    :goto_1d
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    if-nez v18, :cond_29

    move-object/from16 v2, v22

    goto :goto_1e

    :cond_29
    aget-object v2, v18, v11

    :goto_1e
    if-nez v2, :cond_2a

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getGenericSignature()[C

    move-result-object v2

    if-nez v2, :cond_2a

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getMethodDescriptor()[C

    move-result-object v2

    :cond_2a
    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->convertClassFileFormat([C)[C

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/core/Signature;->getParameterTypes([C)[[C

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toStrings([[C)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v3, v1}, Lorg/eclipse/jdt/internal/core/BinaryType;->getMethod(Ljava/lang/String;[Ljava/lang/String;)Lorg/eclipse/jdt/core/IMethod;

    move-result-object v2

    new-instance v4, Lorg/eclipse/jdt/internal/core/ResolvedBinaryMethod;

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IMethod;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v10, v3, v1, v2}, Lorg/eclipse/jdt/internal/core/ResolvedBinaryMethod;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object v3, v4

    move-object v4, v5

    move-object/from16 v5, p3

    move v13, v6

    move/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportBinaryMemberDeclaration(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/core/IMember;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;I)V

    :goto_1f
    add-int/lit8 v11, v11, 0x1

    move v6, v13

    goto/16 :goto_18
.end method

.method public matchBinary(Lorg/eclipse/jdt/core/search/SearchPattern;Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)Z
    .locals 4

    iget v0, p1, Lorg/eclipse/jdt/core/search/SearchPattern;->kind:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7

    const/16 v1, 0x10

    if-eq v0, v1, :cond_6

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5

    const/16 v1, 0x40

    if-eq v0, v1, :cond_4

    const/16 v1, 0x80

    if-eq v0, v1, :cond_3

    const/16 v1, 0x100

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    check-cast p1, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;->patterns:[Lorg/eclipse/jdt/core/search/SearchPattern;

    array-length v1, v0

    move p1, v2

    :goto_0
    if-lt p1, v1, :cond_1

    :goto_1
    return v2

    :cond_1
    aget-object v3, v0, p1

    invoke-virtual {p0, v3, p2, p3}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->matchBinary(Lorg/eclipse/jdt/core/search/SearchPattern;Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    check-cast p1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->matchMethod(Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)Z

    move-result p1

    return p1

    :cond_4
    check-cast p1, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->matchField(Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)Z

    move-result p1

    return p1

    :cond_5
    check-cast p1, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->matchConstructor(Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)Z

    move-result p1

    return p1

    :cond_6
    check-cast p1, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->matchSuperTypeReference(Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)Z

    move-result p1

    return p1

    :cond_7
    check-cast p1, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->matchTypeDeclaration(Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)Z

    move-result p1

    return p1
.end method

.method public matchConstructor(Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)Z
    .locals 8

    iget-boolean v0, p1, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->findDeclarations:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p2, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IGenericMethod;->isConstructor()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v4, p1, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->declaringSimpleName:[C

    iget-object v5, p1, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->declaringQualification:[C

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive()Z

    move-result v6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCamelCase()Z

    move-result v7

    move-object v2, p0

    move-object v3, p3

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->checkDeclaringType(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;[C[CZZ)Z

    move-result p3

    if-nez p3, :cond_3

    return v1

    :cond_3
    iget-object p3, p1, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterSimpleNames:[[C

    if-eqz p3, :cond_4

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getMethodDescriptor()[C

    move-result-object p2

    invoke-static {p2}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->convertClassFileFormat([C)[C

    move-result-object v3

    iget-object v4, p1, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterSimpleNames:[[C

    iget-object v5, p1, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterQualifications:[[C

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive()Z

    move-result v6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCamelCase()Z

    move-result v7

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->checkParameters([C[[C[[CZZ)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public matchField(Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)Z
    .locals 8

    iget-boolean v0, p1, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->findDeclarations:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p2, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->name:[C

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getName()[C

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/eclipse/jdt/core/search/SearchPattern;->matchesName([C[C)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v4, p1, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;->declaringSimpleName:[C

    iget-object v5, p1, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;->declaringQualification:[C

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive()Z

    move-result v6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCamelCase()Z

    move-result v7

    move-object v2, p0

    move-object v3, p3

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->checkDeclaringType(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;[C[CZZ)Z

    move-result p3

    if-nez p3, :cond_3

    return v1

    :cond_3
    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getTypeName()[C

    move-result-object p2

    invoke-static {p2}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->convertClassFileFormat([C)[C

    move-result-object p2

    invoke-static {p2}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object v3

    iget-object v1, p1, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;->typeSimpleName:[C

    iget-object v2, p1, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;->typeQualification:[C

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive()Z

    move-result v4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCamelCase()Z

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->checkTypeName([C[C[CZZ)Z

    move-result p1

    return p1
.end method

.method public matchMethod(Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)Z
    .locals 11

    iget-boolean v0, p1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->findDeclarations:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p2, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->selector:[C

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getSelector()[C

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/eclipse/jdt/core/search/SearchPattern;->matchesName([C[C)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v4, p1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringSimpleName:[C

    iget-object v5, p1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringQualification:[C

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive()Z

    move-result v6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCamelCase()Z

    move-result v7

    move-object v2, p0

    move-object v3, p3

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->checkDeclaringType(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;[C[CZZ)Z

    move-result p3

    if-nez p3, :cond_3

    return v1

    :cond_3
    iget-object p3, p1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringSimpleName:[C

    const/4 v0, 0x1

    if-nez p3, :cond_5

    iget-object p3, p1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->returnSimpleName:[C

    if-nez p3, :cond_4

    iget-object p3, p1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->returnQualification:[C

    if-eqz p3, :cond_5

    :cond_4
    move p3, v0

    goto :goto_0

    :cond_5
    move p3, v1

    :goto_0
    iget-object v2, p1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterSimpleNames:[[C

    if-eqz v2, :cond_6

    move v2, v0

    goto :goto_1

    :cond_6
    move v2, v1

    :goto_1
    if-nez p3, :cond_7

    if-eqz v2, :cond_9

    :cond_7
    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getMethodDescriptor()[C

    move-result-object p2

    invoke-static {p2}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->convertClassFileFormat([C)[C

    move-result-object v4

    if-eqz p3, :cond_8

    invoke-static {v4}, Lorg/eclipse/jdt/core/Signature;->getReturnType([C)[C

    move-result-object p2

    invoke-static {p2}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object v8

    iget-object v6, p1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->returnSimpleName:[C

    iget-object v7, p1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->returnQualification:[C

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive()Z

    move-result v9

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCamelCase()Z

    move-result v10

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->checkTypeName([C[C[CZZ)Z

    move-result p2

    if-nez p2, :cond_8

    return v1

    :cond_8
    if-eqz v2, :cond_9

    iget-object v5, p1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterSimpleNames:[[C

    iget-object v6, p1, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterQualifications:[[C

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive()Z

    move-result v7

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCamelCase()Z

    move-result v8

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->checkParameters([C[[C[[CZZ)Z

    move-result p1

    if-nez p1, :cond_9

    return v1

    :cond_9
    return v0
.end method

.method public matchSuperTypeReference(Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)Z
    .locals 10

    instance-of p3, p2, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    check-cast p2, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    iget p3, p1, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->superRefKind:I

    const/4 v1, 0x1

    if-eq p3, v1, :cond_1

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getSuperclassName()[C

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-static {p3}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->convertClassFileFormat([C)[C

    move-result-object v5

    iget-object v3, p1, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->superSimpleName:[C

    iget-object v4, p1, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->superQualification:[C

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive()Z

    move-result v6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCamelCase()Z

    move-result v7

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->checkTypeName([C[C[CZZ)Z

    move-result p3

    if-eqz p3, :cond_1

    return v1

    :cond_1
    iget p3, p1, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->superRefKind:I

    const/4 v2, 0x2

    if-eq p3, v2, :cond_4

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getInterfaceNames()[[C

    move-result-object p2

    if-eqz p2, :cond_4

    array-length p3, p2

    move v2, v0

    :goto_0
    if-lt v2, p3, :cond_2

    goto :goto_1

    :cond_2
    aget-object v3, p2, v2

    invoke-static {v3}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->convertClassFileFormat([C)[C

    move-result-object v7

    iget-object v5, p1, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->superSimpleName:[C

    iget-object v6, p1, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->superQualification:[C

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive()Z

    move-result v8

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCamelCase()Z

    move-result v9

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->checkTypeName([C[C[CZZ)Z

    move-result v3

    if-eqz v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v0
.end method

.method public matchTypeDeclaration(Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)Z
    .locals 8

    instance-of p3, p2, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    check-cast p2, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getName()[C

    move-result-object p3

    invoke-static {p3}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->convertClassFileFormat([C)[C

    move-result-object v4

    instance-of p3, p1, Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->enclosingTypeNames:[[C

    const/4 v7, 0x1

    if-eqz v1, :cond_3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    const/16 p3, 0x2e

    invoke-static {v1, p3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v1

    iget-object v2, p1, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->pkg:[C

    if-nez v2, :cond_2

    move-object v3, v1

    goto :goto_0

    :cond_2
    invoke-static {v2, v1, p3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object p3

    move-object v3, p3

    :goto_0
    iget-object v2, p1, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->simpleName:[C

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive()Z

    move-result v5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCamelCase()Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->checkTypeName([C[C[CZZ)Z

    move-result p3

    if-nez p3, :cond_6

    return v0

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->getMatchMode()I

    move-result v1

    if-ne v1, v7, :cond_4

    iget-object v1, p1, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->simpleName:[C

    sget-object v2, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ONE_STAR:[C

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v1

    :goto_2
    move-object v2, v1

    goto :goto_3

    :cond_4
    iget-object v1, p1, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->simpleName:[C

    goto :goto_2

    :goto_3
    if-eqz p3, :cond_5

    move-object p3, p1

    check-cast p3, Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;

    iget-object p3, p3, Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;->qualification:[C

    :goto_4
    move-object v3, p3

    goto :goto_5

    :cond_5
    iget-object p3, p1, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->pkg:[C

    goto :goto_4

    :goto_5
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive()Z

    move-result v5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCamelCase()Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/search/matching/ClassFileMatchLocator;->checkTypeName([C[C[CZZ)Z

    move-result p3

    if-nez p3, :cond_6

    return v0

    :cond_6
    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IGenericType;->getModifiers()I

    move-result p2

    invoke-static {p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->kind(I)I

    move-result p2

    iget-char p1, p1, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->typeSuffix:C

    const/16 p3, 0x41

    const/4 v1, 0x4

    if-eq p1, p3, :cond_10

    const/16 p3, 0x43

    if-eq p1, p3, :cond_e

    const/16 p3, 0x45

    const/4 v2, 0x3

    if-eq p1, p3, :cond_c

    const/16 p3, 0x49

    const/4 v3, 0x2

    if-eq p1, p3, :cond_a

    packed-switch p1, :pswitch_data_0

    return v7

    :pswitch_0
    if-eq p2, v3, :cond_7

    if-eq p2, v1, :cond_7

    return v0

    :cond_7
    return v7

    :pswitch_1
    if-eq p2, v7, :cond_8

    if-eq p2, v3, :cond_8

    return v0

    :cond_8
    return v7

    :pswitch_2
    if-eq p2, v7, :cond_9

    if-eq p2, v2, :cond_9

    return v0

    :cond_9
    return v7

    :cond_a
    if-ne p2, v3, :cond_b

    return v7

    :cond_b
    return v0

    :cond_c
    if-ne p2, v2, :cond_d

    return v7

    :cond_d
    return v0

    :cond_e
    if-ne p2, v7, :cond_f

    return v7

    :cond_f
    return v0

    :cond_10
    if-ne p2, v1, :cond_11

    return v7

    :cond_11
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
