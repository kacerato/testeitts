.class public Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;
.super Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;


# static fields
.field private static final BOOLEAN:[C

.field private static final BYTE:[C

.field private static final CHAR:[C

.field private static final DOUBLE:[C

.field private static final FLOAT:[C

.field private static final INIT:[C

.field private static final INT:[C

.field private static final LONG:[C

.field private static final SHORT:[C

.field private static final VOID:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "byte"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->BYTE:[C

    const-string v0, "char"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->CHAR:[C

    const-string v0, "double"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->DOUBLE:[C

    const-string v0, "float"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->FLOAT:[C

    const-string v0, "int"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->INT:[C

    const-string v0, "long"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->LONG:[C

    const-string v0, "short"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->SHORT:[C

    const-string v0, "boolean"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->BOOLEAN:[C

    const-string v0, "void"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->VOID:[C

    const-string v0, "<init>"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->INIT:[C

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/search/SearchDocument;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;-><init>(Lorg/eclipse/jdt/core/search/SearchDocument;)V

    return-void
.end method

.method private addBinaryAnnotation(Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)V
    .locals 5

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;->getTypeName()[C

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-direct {p0, v1, v2, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->replace(CC[C)[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addAnnotationTypeReference([C)V

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;->getElementValuePairs()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;

    move-result-object p1

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_1

    :cond_0
    aget-object v3, p1, v2

    invoke-interface {v3}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;->getName()[C

    move-result-object v4

    invoke-virtual {p0, v4, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addMethodReference([CI)V

    invoke-interface {v3}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->addPairValue(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private addBinaryRetentionAnnotation(J)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_RETENTIONPOLICY:[[C

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->addTypeReference([C)V

    const-wide v0, 0x300000000000L

    and-long v2, p1, v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_RUNTIME:[C

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addFieldReference([C)V

    goto :goto_0

    :cond_0
    const-wide v0, 0x200000000000L

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_CLASS:[C

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addFieldReference([C)V

    goto :goto_0

    :cond_1
    const-wide v0, 0x100000000000L

    and-long/2addr p1, v0

    cmp-long p1, p1, v2

    if-eqz p1, :cond_2

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_SOURCE:[C

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addFieldReference([C)V

    :cond_2
    :goto_0
    return-void
.end method

.method private addBinaryStandardAnnotations(J)V
    .locals 4

    const-wide v0, 0x77fffff800000000L    # 1.0565850317039238E270

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide v0, 0x20600ff800000000L    # 9.583895004233563E-153

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_TARGET:[[C

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addAnnotationTypeReference([C)V

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->addBinaryTargetAnnotation(J)V

    :cond_1
    const-wide v0, 0x300000000000L

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_RETENTION:[[C

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addAnnotationTypeReference([C)V

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->addBinaryRetentionAnnotation(J)V

    :cond_2
    const-wide v0, 0x400000000000L

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_DEPRECATED:[[C

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addAnnotationTypeReference([C)V

    :cond_3
    const-wide v0, 0x800000000000L

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_DOCUMENTED:[[C

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addAnnotationTypeReference([C)V

    :cond_4
    const-wide/high16 v0, 0x1000000000000L

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_INHERITED:[[C

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addAnnotationTypeReference([C)V

    :cond_5
    const-wide/high16 v0, 0x2000000000000L

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_OVERRIDE:[[C

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addAnnotationTypeReference([C)V

    :cond_6
    const-wide/high16 v0, 0x4000000000000L

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_SUPPRESSWARNINGS:[[C

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addAnnotationTypeReference([C)V

    :cond_7
    const-wide/high16 v0, 0x8000000000000L

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_SAFEVARARGS:[[C

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addAnnotationTypeReference([C)V

    :cond_8
    const-wide/high16 v0, 0x10000000000000L

    and-long/2addr p1, v0

    cmp-long p1, p1, v2

    if-eqz p1, :cond_9

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_INVOKE_METHODHANDLE_$_POLYMORPHICSIGNATURE:[[C

    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    aget-object p1, p1, p2

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addAnnotationTypeReference([C)V

    :cond_9
    return-void
.end method

.method private addBinaryTargetAnnotation(J)V
    .locals 6

    const-wide v0, 0x40000000000L

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_ELEMENTTYPE:[[C

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->addTypeReference([C)V

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_ANNOTATION_TYPE:[C

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addFieldReference([C)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide v4, 0x10000000000L

    and-long/2addr v4, p1

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_ELEMENTTYPE:[[C

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->addTypeReference([C)V

    :cond_1
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_CONSTRUCTOR:[C

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addFieldReference([C)V

    :cond_2
    const-wide v4, 0x2000000000L

    and-long/2addr v4, p1

    cmp-long v1, v4, v2

    if-eqz v1, :cond_4

    if-nez v0, :cond_3

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_ELEMENTTYPE:[[C

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->addTypeReference([C)V

    :cond_3
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_FIELD:[C

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addFieldReference([C)V

    :cond_4
    const-wide v4, 0x20000000000L

    and-long/2addr v4, p1

    cmp-long v1, v4, v2

    if-eqz v1, :cond_6

    if-nez v0, :cond_5

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_ELEMENTTYPE:[[C

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->addTypeReference([C)V

    :cond_5
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_LOCAL_VARIABLE:[C

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addFieldReference([C)V

    :cond_6
    const-wide v4, 0x4000000000L

    and-long/2addr v4, p1

    cmp-long v1, v4, v2

    if-eqz v1, :cond_8

    if-nez v0, :cond_7

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_ELEMENTTYPE:[[C

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->addTypeReference([C)V

    :cond_7
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_METHOD:[C

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addFieldReference([C)V

    :cond_8
    const-wide v4, 0x80000000000L

    and-long/2addr v4, p1

    cmp-long v1, v4, v2

    if-eqz v1, :cond_a

    if-nez v0, :cond_9

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_ELEMENTTYPE:[[C

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->addTypeReference([C)V

    :cond_9
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_PACKAGE:[C

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addFieldReference([C)V

    :cond_a
    const-wide v4, 0x8000000000L

    and-long/2addr v4, p1

    cmp-long v1, v4, v2

    if-eqz v1, :cond_c

    if-nez v0, :cond_b

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_ELEMENTTYPE:[[C

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->addTypeReference([C)V

    :cond_b
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_PARAMETER:[C

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addFieldReference([C)V

    :cond_c
    const-wide v4, 0x1000000000L

    and-long/2addr v4, p1

    cmp-long v1, v4, v2

    if-eqz v1, :cond_e

    if-nez v0, :cond_d

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_ELEMENTTYPE:[[C

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->addTypeReference([C)V

    :cond_d
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->TYPE:[C

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addFieldReference([C)V

    :cond_e
    const-wide/high16 v4, 0x2000000000000000L

    and-long/2addr p1, v4

    cmp-long p1, p1, v2

    if-eqz p1, :cond_10

    if-nez v0, :cond_f

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_ELEMENTTYPE:[[C

    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    aget-object p1, p1, p2

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->addTypeReference([C)V

    :cond_f
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_MODULE:[C

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addFieldReference([C)V

    :cond_10
    return-void
.end method

.method private addPairValue(Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/env/EnumConstantSignature;

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    if-eqz v0, :cond_0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/EnumConstantSignature;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/env/EnumConstantSignature;->getTypeName()[C

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object v0

    invoke-direct {p0, v2, v1, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->replace(CC[C)[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->addTypeReference([C)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/env/EnumConstantSignature;->getEnumConstantName()[C

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addNameReference([C)V

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/env/ClassSignature;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/ClassSignature;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/env/ClassSignature;->getTypeName()[C

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object p1

    invoke-direct {p0, v2, v1, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->replace(CC[C)[C

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->addTypeReference([C)V

    goto :goto_1

    :cond_1
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->addBinaryAnnotation(Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)V

    goto :goto_1

    :cond_2
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_4

    check-cast p1, [Ljava/lang/Object;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_3

    goto :goto_1

    :cond_3
    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->addPairValue(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method private convertToArrayType([[CII)V
    .locals 5

    .line 1
    aget-object v0, p1, p2

    array-length v1, v0

    mul-int/lit8 v2, p3, 0x2

    add-int/2addr v2, v1

    .line 2
    new-array v2, v2, [C

    const/4 v3, 0x0

    .line 3
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-lt v3, p3, :cond_0

    .line 4
    aput-object v2, p1, p2

    return-void

    :cond_0
    mul-int/lit8 v0, v3, 0x2

    add-int/2addr v0, v1

    const/16 v4, 0x5b

    .line 5
    aput-char v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v4, 0x5d

    .line 6
    aput-char v4, v2, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private convertToArrayType([CI)[C
    .locals 4

    .line 7
    array-length v0, p1

    mul-int/lit8 v1, p2, 0x2

    add-int/2addr v1, v0

    .line 8
    new-array v1, v1, [C

    const/4 v2, 0x0

    .line 9
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-lt v2, p2, :cond_0

    return-object v1

    :cond_0
    mul-int/lit8 p1, v2, 0x2

    add-int/2addr p1, v0

    const/16 v3, 0x5b

    .line 10
    aput-char v3, v1, p1

    add-int/lit8 p1, p1, 0x1

    const/16 v3, 0x5d

    .line 11
    aput-char v3, v1, p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private decodeFieldType([C)[C
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v2, v1, :cond_1

    return-object v0

    :cond_1
    aget-char v4, p1, v2

    const/16 v5, 0x46

    if-eq v4, v5, :cond_12

    const/16 v5, 0x4c

    const/16 v6, 0x1c

    if-eq v4, v5, :cond_f

    const/16 v5, 0x53

    if-eq v4, v5, :cond_d

    const/16 v5, 0x56

    if-eq v4, v5, :cond_c

    const/16 v5, 0x49

    if-eq v4, v5, :cond_a

    const/16 v5, 0x4a

    if-eq v4, v5, :cond_8

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_6

    const/16 v5, 0x5b

    if-eq v4, v5, :cond_5

    packed-switch v4, :pswitch_data_0

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;

    invoke-direct {p1, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;-><init>(I)V

    throw p1

    :pswitch_0
    if-lez v3, :cond_2

    sget-object p1, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->DOUBLE:[C

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->convertToArrayType([CI)[C

    move-result-object p1

    return-object p1

    :cond_2
    sget-object p1, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->DOUBLE:[C

    return-object p1

    :pswitch_1
    if-lez v3, :cond_3

    sget-object p1, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->CHAR:[C

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->convertToArrayType([CI)[C

    move-result-object p1

    return-object p1

    :cond_3
    sget-object p1, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->CHAR:[C

    return-object p1

    :pswitch_2
    if-lez v3, :cond_4

    sget-object p1, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->BYTE:[C

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->convertToArrayType([CI)[C

    move-result-object p1

    return-object p1

    :cond_4
    sget-object p1, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->BYTE:[C

    return-object p1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    if-lez v3, :cond_7

    sget-object p1, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->BOOLEAN:[C

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->convertToArrayType([CI)[C

    move-result-object p1

    return-object p1

    :cond_7
    sget-object p1, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->BOOLEAN:[C

    return-object p1

    :cond_8
    if-lez v3, :cond_9

    sget-object p1, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->LONG:[C

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->convertToArrayType([CI)[C

    move-result-object p1

    return-object p1

    :cond_9
    sget-object p1, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->LONG:[C

    return-object p1

    :cond_a
    if-lez v3, :cond_b

    sget-object p1, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->INT:[C

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->convertToArrayType([CI)[C

    move-result-object p1

    return-object p1

    :cond_b
    sget-object p1, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->INT:[C

    return-object p1

    :cond_c
    sget-object p1, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->VOID:[C

    return-object p1

    :cond_d
    if-lez v3, :cond_e

    sget-object p1, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->SHORT:[C

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->convertToArrayType([CI)[C

    move-result-object p1

    return-object p1

    :cond_e
    sget-object p1, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->SHORT:[C

    return-object p1

    :cond_f
    add-int/lit8 v2, v2, 0x1

    const/16 v0, 0x3b

    invoke-static {v0, p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    const/16 v1, 0x2e

    const/16 v4, 0x2f

    if-lez v3, :cond_10

    invoke-static {p1, v2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object p1

    invoke-direct {p0, v4, v1, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->replace(CC[C)[C

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->convertToArrayType([CI)[C

    move-result-object p1

    return-object p1

    :cond_10
    invoke-static {p1, v2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object p1

    invoke-direct {p0, v4, v1, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->replace(CC[C)[C

    move-result-object p1

    return-object p1

    :cond_11
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;

    invoke-direct {p1, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;-><init>(I)V

    throw p1

    :cond_12
    if-lez v3, :cond_13

    sget-object p1, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->FLOAT:[C

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->convertToArrayType([CI)[C

    move-result-object p1

    return-object p1

    :cond_13
    sget-object p1, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->FLOAT:[C

    return-object p1

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private decodeParameterTypes([CZ)[[C
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0x29

    invoke-static {v1, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_1
    const/4 v0, -0x1

    const/16 v3, 0x1c

    if-eq v1, v0, :cond_10

    const/4 v4, 0x3

    new-array v4, v4, [[C

    const/4 v5, 0x0

    move v6, v2

    move v7, v5

    move v8, v7

    :goto_0
    if-lt v6, v1, :cond_3

    array-length p1, v4

    if-eq p1, v7, :cond_2

    new-array p1, v7, [[C

    invoke-static {v4, v5, p1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, p1

    :cond_2
    return-object v4

    :cond_3
    array-length v9, v4

    if-ne v7, v9, :cond_4

    mul-int/lit8 v9, v7, 0x2

    new-array v9, v9, [[C

    invoke-static {v4, v5, v9, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v9

    :cond_4
    aget-char v9, p1, v6

    const/16 v10, 0x46

    if-eq v9, v10, :cond_f

    const/16 v10, 0x4c

    if-eq v9, v10, :cond_b

    const/16 v10, 0x53

    if-eq v9, v10, :cond_a

    const/16 v10, 0x49

    if-eq v9, v10, :cond_9

    const/16 v10, 0x4a

    if-eq v9, v10, :cond_8

    const/16 v10, 0x5a

    if-eq v9, v10, :cond_7

    const/16 v10, 0x5b

    if-eq v9, v10, :cond_6

    packed-switch v9, :pswitch_data_0

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;

    invoke-direct {p1, v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;-><init>(I)V

    throw p1

    :pswitch_0
    add-int/lit8 v9, v7, 0x1

    sget-object v10, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->DOUBLE:[C

    aput-object v10, v4, v7

    if-lez v8, :cond_5

    invoke-direct {p0, v4, v7, v8}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->convertToArrayType([[CII)V

    :cond_5
    :goto_1
    move v8, v5

    move v7, v9

    goto/16 :goto_3

    :pswitch_1
    add-int/lit8 v9, v7, 0x1

    sget-object v10, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->CHAR:[C

    aput-object v10, v4, v7

    if-lez v8, :cond_5

    invoke-direct {p0, v4, v7, v8}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->convertToArrayType([[CII)V

    goto :goto_1

    :pswitch_2
    add-int/lit8 v9, v7, 0x1

    sget-object v10, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->BYTE:[C

    aput-object v10, v4, v7

    if-lez v8, :cond_5

    invoke-direct {p0, v4, v7, v8}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->convertToArrayType([[CII)V

    goto :goto_1

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    :cond_7
    add-int/lit8 v9, v7, 0x1

    sget-object v10, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->BOOLEAN:[C

    aput-object v10, v4, v7

    if-lez v8, :cond_5

    invoke-direct {p0, v4, v7, v8}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->convertToArrayType([[CII)V

    goto :goto_1

    :cond_8
    add-int/lit8 v9, v7, 0x1

    sget-object v10, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->LONG:[C

    aput-object v10, v4, v7

    if-lez v8, :cond_5

    invoke-direct {p0, v4, v7, v8}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->convertToArrayType([[CII)V

    goto :goto_1

    :cond_9
    add-int/lit8 v9, v7, 0x1

    sget-object v10, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->INT:[C

    aput-object v10, v4, v7

    if-lez v8, :cond_5

    invoke-direct {p0, v4, v7, v8}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->convertToArrayType([[CII)V

    goto :goto_1

    :cond_a
    add-int/lit8 v9, v7, 0x1

    sget-object v10, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->SHORT:[C

    aput-object v10, v4, v7

    if-lez v8, :cond_5

    invoke-direct {p0, v4, v7, v8}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->convertToArrayType([[CII)V

    goto :goto_1

    :cond_b
    add-int/lit8 v6, v6, 0x1

    const/16 v9, 0x3b

    invoke-static {v9, p1, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v9

    if-eq v9, v0, :cond_e

    if-eqz p2, :cond_c

    if-nez v7, :cond_c

    move p2, v5

    goto :goto_2

    :cond_c
    add-int/lit8 v10, v7, 0x1

    const/16 v11, 0x2e

    invoke-static {p1, v6, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v6

    const/16 v12, 0x2f

    invoke-direct {p0, v12, v11, v6}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->replace(CC[C)[C

    move-result-object v6

    aput-object v6, v4, v7

    if-lez v8, :cond_d

    invoke-direct {p0, v4, v7, v8}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->convertToArrayType([[CII)V

    :cond_d
    move v7, v10

    :goto_2
    move v8, v5

    move v6, v9

    goto :goto_3

    :cond_e
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;

    invoke-direct {p1, v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;-><init>(I)V

    throw p1

    :cond_f
    add-int/lit8 v9, v7, 0x1

    sget-object v10, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->FLOAT:[C

    aput-object v10, v4, v7

    if-lez v8, :cond_5

    invoke-direct {p0, v4, v7, v8}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->convertToArrayType([[CII)V

    goto/16 :goto_1

    :goto_3
    add-int/2addr v6, v2

    goto/16 :goto_0

    :cond_10
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;

    invoke-direct {p1, v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;-><init>(I)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private decodeReturnType([C)[C
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0x29

    invoke-static {v1, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v1

    const/4 v2, -0x1

    const/16 v3, 0x1c

    if-eq v1, v2, :cond_14

    add-int/lit8 v1, v1, 0x1

    array-length v4, p1

    const/4 v5, 0x0

    :goto_0
    if-lt v1, v4, :cond_1

    return-object v0

    :cond_1
    aget-char v6, p1, v1

    const/16 v7, 0x46

    if-eq v6, v7, :cond_12

    const/16 v7, 0x4c

    if-eq v6, v7, :cond_f

    const/16 v7, 0x53

    if-eq v6, v7, :cond_d

    const/16 v7, 0x56

    if-eq v6, v7, :cond_c

    const/16 v7, 0x49

    if-eq v6, v7, :cond_a

    const/16 v7, 0x4a

    if-eq v6, v7, :cond_8

    const/16 v7, 0x5a

    if-eq v6, v7, :cond_6

    const/16 v7, 0x5b

    if-eq v6, v7, :cond_5

    packed-switch v6, :pswitch_data_0

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;

    invoke-direct {p1, v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;-><init>(I)V

    throw p1

    :pswitch_0
    if-lez v5, :cond_2

    sget-object p1, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->DOUBLE:[C

    invoke-direct {p0, p1, v5}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->convertToArrayType([CI)[C

    move-result-object p1

    return-object p1

    :cond_2
    sget-object p1, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->DOUBLE:[C

    return-object p1

    :pswitch_1
    if-lez v5, :cond_3

    sget-object p1, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->CHAR:[C

    invoke-direct {p0, p1, v5}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->convertToArrayType([CI)[C

    move-result-object p1

    return-object p1

    :cond_3
    sget-object p1, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->CHAR:[C

    return-object p1

    :pswitch_2
    if-lez v5, :cond_4

    sget-object p1, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->BYTE:[C

    invoke-direct {p0, p1, v5}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->convertToArrayType([CI)[C

    move-result-object p1

    return-object p1

    :cond_4
    sget-object p1, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->BYTE:[C

    return-object p1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    if-lez v5, :cond_7

    sget-object p1, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->BOOLEAN:[C

    invoke-direct {p0, p1, v5}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->convertToArrayType([CI)[C

    move-result-object p1

    return-object p1

    :cond_7
    sget-object p1, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->BOOLEAN:[C

    return-object p1

    :cond_8
    if-lez v5, :cond_9

    sget-object p1, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->LONG:[C

    invoke-direct {p0, p1, v5}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->convertToArrayType([CI)[C

    move-result-object p1

    return-object p1

    :cond_9
    sget-object p1, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->LONG:[C

    return-object p1

    :cond_a
    if-lez v5, :cond_b

    sget-object p1, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->INT:[C

    invoke-direct {p0, p1, v5}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->convertToArrayType([CI)[C

    move-result-object p1

    return-object p1

    :cond_b
    sget-object p1, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->INT:[C

    return-object p1

    :cond_c
    sget-object p1, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->VOID:[C

    return-object p1

    :cond_d
    if-lez v5, :cond_e

    sget-object p1, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->SHORT:[C

    invoke-direct {p0, p1, v5}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->convertToArrayType([CI)[C

    move-result-object p1

    return-object p1

    :cond_e
    sget-object p1, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->SHORT:[C

    return-object p1

    :cond_f
    add-int/lit8 v1, v1, 0x1

    const/16 v0, 0x3b

    invoke-static {v0, p1, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v0

    if-eq v0, v2, :cond_11

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    if-lez v5, :cond_10

    invoke-static {p1, v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object p1

    invoke-direct {p0, v3, v2, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->replace(CC[C)[C

    move-result-object p1

    invoke-direct {p0, p1, v5}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->convertToArrayType([CI)[C

    move-result-object p1

    return-object p1

    :cond_10
    invoke-static {p1, v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object p1

    invoke-direct {p0, v3, v2, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->replace(CC[C)[C

    move-result-object p1

    return-object p1

    :cond_11
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;

    invoke-direct {p1, v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;-><init>(I)V

    throw p1

    :cond_12
    if-lez v5, :cond_13

    sget-object p1, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->FLOAT:[C

    invoke-direct {p0, p1, v5}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->convertToArrayType([CI)[C

    move-result-object p1

    return-object p1

    :cond_13
    sget-object p1, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->FLOAT:[C

    return-object p1

    :cond_14
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;

    invoke-direct {p1, v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;-><init>(I)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private extractArgCount([C[C)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;
        }
    .end annotation

    const/16 v0, 0x29

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v3, -0x1

    const/16 v4, 0x1c

    if-eq v0, v3, :cond_a

    move v6, v1

    move v5, v2

    :goto_0
    if-lt v5, v0, :cond_1

    return v6

    :cond_1
    aget-char v7, p1, v5

    const/16 v8, 0x46

    if-eq v7, v8, :cond_8

    const/16 v8, 0x4c

    if-eq v7, v8, :cond_2

    const/16 v8, 0x53

    if-eq v7, v8, :cond_8

    const/16 v8, 0x49

    if-eq v7, v8, :cond_8

    const/16 v8, 0x4a

    if-eq v7, v8, :cond_8

    const/16 v8, 0x5a

    if-eq v7, v8, :cond_8

    const/16 v8, 0x5b

    if-eq v7, v8, :cond_9

    packed-switch v7, :pswitch_data_0

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;

    invoke-direct {p1, v4}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;-><init>(I)V

    throw p1

    :cond_2
    add-int/lit8 v7, v5, 0x1

    const/16 v8, 0x3b

    invoke-static {v8, p1, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v7

    if-eq v7, v3, :cond_7

    if-eqz p2, :cond_6

    if-nez v6, :cond_6

    invoke-static {p2, v2}, Lorg/eclipse/jdt/core/Signature;->createCharArrayTypeSignature([CZ)[C

    move-result-object p2

    sub-int v8, v7, v5

    array-length v9, p2

    add-int/lit8 v8, v8, 0x2

    if-le v9, v8, :cond_4

    move v8, v1

    :goto_1
    if-lt v5, v7, :cond_3

    goto :goto_2

    :cond_3
    aget-char v9, p1, v5

    aget-char v10, p2, v8

    if-eq v9, v10, :cond_5

    const/16 v11, 0x2f

    if-ne v9, v11, :cond_4

    const/16 v9, 0x2e

    if-eq v10, v9, :cond_5

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :goto_2
    const/4 p2, 0x0

    goto :goto_3

    :cond_6
    add-int/lit8 v6, v6, 0x1

    :goto_3
    move v5, v7

    goto :goto_4

    :cond_7
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;

    invoke-direct {p1, v4}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;-><init>(I)V

    throw p1

    :cond_8
    :pswitch_0
    add-int/lit8 v6, v6, 0x1

    :cond_9
    :goto_4
    add-int/2addr v5, v2

    goto :goto_0

    :cond_a
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;

    invoke-direct {p1, v4}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;-><init>(I)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private extractClassName([ILorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;I)[C
    .locals 0

    aget p3, p1, p3

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result p3

    aget p3, p1, p3

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result p3

    aget p1, p1, p3

    add-int/lit8 p3, p1, 0x3

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result p1

    invoke-virtual {p2, p3, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object p1

    return-object p1
.end method

.method private extractClassReference([ILorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;I)[C
    .locals 0

    aget p3, p1, p3

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result p3

    aget p1, p1, p3

    add-int/lit8 p3, p1, 0x3

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result p1

    invoke-virtual {p2, p3, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object p1

    return-object p1
.end method

.method private extractName([ILorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;I)[C
    .locals 0

    aget p3, p1, p3

    add-int/lit8 p3, p3, 0x3

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result p3

    aget p3, p1, p3

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result p3

    aget p1, p1, p3

    add-int/lit8 p3, p1, 0x3

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result p1

    invoke-virtual {p2, p3, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object p1

    return-object p1
.end method

.method private extractReferenceFromConstantPool([BLorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;
        }
    .end annotation

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getConstantPoolOffsets()[I

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return-void

    :cond_0
    aget v3, p1, v2

    invoke-virtual {p2, v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u1At(I)I

    move-result v3

    const/16 v4, 0x2f

    const/16 v5, 0x2e

    const/4 v6, 0x0

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    :pswitch_1
    invoke-direct {p0, p1, p2, v2}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->extractName([ILorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;I)[C

    move-result-object v3

    invoke-direct {p0, p1, p2, v2}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->extractType([ILorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;I)[C

    move-result-object v7

    sget-object v8, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->INIT:[C

    invoke-static {v8, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_6

    invoke-direct {p0, p1, p2, v2}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->extractClassName([ILorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;I)[C

    move-result-object v3

    if-eqz v3, :cond_4

    array-length v8, v3

    move v10, v6

    :goto_1
    if-lt v6, v8, :cond_1

    move v6, v10

    goto :goto_3

    :cond_1
    aget-char v11, v3, v6

    const/16 v12, 0x24

    if-eq v11, v12, :cond_3

    if-eq v11, v4, :cond_2

    goto :goto_2

    :cond_2
    aput-char v5, v3, v6

    goto :goto_2

    :cond_3
    move v10, v1

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    if-eqz v6, :cond_5

    move-object v9, v3

    :cond_5
    invoke-direct {p0, v7, v9}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->extractArgCount([C[C)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addConstructorReference([CI)V

    goto :goto_5

    :cond_6
    invoke-direct {p0, v7, v9}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->extractArgCount([C[C)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addMethodReference([CI)V

    goto :goto_5

    :pswitch_2
    invoke-direct {p0, p1, p2, v2}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->extractName([ILorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;I)[C

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addFieldReference([C)V

    goto :goto_5

    :pswitch_3
    invoke-direct {p0, p1, p2, v2}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->extractClassReference([ILorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;I)[C

    move-result-object v3

    array-length v7, v3

    if-lez v7, :cond_7

    aget-char v7, v3, v6

    const/16 v8, 0x5b

    if-ne v7, v8, :cond_7

    goto :goto_5

    :cond_7
    invoke-direct {p0, v4, v5, v3}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->replace(CC[C)[C

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->addTypeReference([C)V

    invoke-static {v5, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v3

    array-length v4, v3

    :goto_4
    if-lt v6, v4, :cond_8

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    aget-object v5, v3, v6

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addNameReference([C)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private extractType([ILorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;I)[C
    .locals 0

    aget p3, p1, p3

    add-int/lit8 p3, p3, 0x3

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result p3

    aget p3, p1, p3

    add-int/lit8 p3, p3, 0x3

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result p3

    aget p1, p1, p3

    add-int/lit8 p3, p1, 0x3

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result p1

    invoke-virtual {p2, p3, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object p1

    return-object p1
.end method

.method private indexModule(Lorg/eclipse/jdt/internal/compiler/env/IModule;)V
    .locals 5

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addModuleDeclaration([C)V

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->requires()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    move v3, v1

    :goto_0
    if-lt v3, v2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v4, v0, v3

    invoke-interface {v4}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;->name()[C

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addModuleReference([C)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->exports()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->indexPackageVisibilityDirective([Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;)V

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->opens()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->indexPackageVisibilityDirective([Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;)V

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->uses()[[C

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v2, v0

    move v3, v1

    :goto_2
    if-lt v3, v2, :cond_2

    goto :goto_3

    :cond_2
    aget-object v4, v0, v3

    invoke-direct {p0, v4}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->indexTypeReference([C)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->provides()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IService;

    move-result-object p1

    if-eqz p1, :cond_5

    array-length v0, p1

    :goto_4
    if-lt v1, v0, :cond_4

    goto :goto_5

    :cond_4
    aget-object v2, p1, v1

    invoke-interface {v2}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IService;->name()[C

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->indexTypeReference([C)V

    invoke-interface {v2}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IService;->with()[[C

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->indexTypeReferences([[C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    return-void
.end method

.method private indexPackageVisibilityDirective([Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;)V
    .locals 8

    if-eqz p1, :cond_5

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_3

    :cond_0
    aget-object v3, p1, v2

    invoke-interface {v3}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;->name()[C

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addModuleExportedPackages([C)V

    invoke-interface {v3}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;->targets()[[C

    move-result-object v3

    if-eqz v3, :cond_4

    sget-object v4, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    if-ne v3, v4, :cond_1

    goto :goto_2

    :cond_1
    array-length v4, v3

    move v5, v1

    :goto_1
    if-lt v5, v4, :cond_2

    goto :goto_2

    :cond_2
    aget-object v6, v3, v5

    if-eqz v6, :cond_3

    sget-object v7, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    if-eq v6, v7, :cond_3

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addModuleReference([C)V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    return-void
.end method

.method private indexTypeReference([C)V
    .locals 1

    if-eqz p1, :cond_1

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->addTypeReference([C)V

    :cond_1
    :goto_0
    return-void
.end method

.method private indexTypeReferences([[C)V
    .locals 2

    if-eqz p1, :cond_2

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->addTypeReference([C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private removeFirstSyntheticParameter([C)[C
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    return-object p1

    :cond_1
    const/4 v0, 0x0

    aget-char v1, p1, v0

    const/16 v2, 0x28

    if-eq v1, v2, :cond_2

    return-object p1

    :cond_2
    const/4 v1, 0x1

    aget-char v2, p1, v1

    const/16 v3, 0x29

    if-eq v2, v3, :cond_3

    invoke-static {p1, v1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->scanTypeSignature([CI)I

    move-result v2

    add-int/2addr v2, v1

    array-length v3, p1

    sub-int/2addr v3, v2

    add-int/lit8 v4, v3, 0x1

    new-array v4, v4, [C

    aget-char v5, p1, v0

    aput-char v5, v4, v0

    invoke-static {p1, v2, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4

    :cond_3
    return-object p1
.end method

.method private replace(CC[C)[C
    .locals 3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    return-object p3

    .line 4
    :cond_1
    aget-char v2, p3, v1

    if-ne v2, p1, :cond_2

    .line 5
    aput-char p2, p3, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private replace(CC[[C)[[C
    .locals 3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    return-object p3

    .line 2
    :cond_1
    aget-object v2, p3, v1

    invoke-direct {p0, p1, p2, v2}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->replace(CC[C)[C

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addTypeReference([C)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x2

    const/16 v2, 0x24

    if-le v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x2

    aget-char v1, p1, v1

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    aget-char v0, p1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-void

    :cond_0
    :goto_0
    const/16 v0, 0x2e

    invoke-static {p1, v2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object p1

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addTypeReference([C)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public indexDocument()V
    .locals 41

    move-object/from16 v15, p0

    const-string v14, ". This .class file doesn\'t follow the class file format specification. Please report this issue against the .class file vendor"

    const-string v13, "The Java indexing could not index "

    const-string v12, "org.eclipse.jdt.core"

    :try_start_0
    iget-object v0, v15, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->document:Lorg/eclipse/jdt/core/search/SearchDocument;
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/search/SearchDocument;->getByteContents()[B

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v15, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->document:Lorg/eclipse/jdt/core/search/SearchDocument;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/search/SearchDocument;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v10, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    :goto_0
    invoke-direct {v10, v0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;-><init>([B[C)V

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getModuleDeclaration()Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;

    move-result-object v1
    :try_end_1
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_2

    :try_start_2
    invoke-direct {v15, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->indexModule(Lorg/eclipse/jdt/internal/compiler/env/IModule;)V
    :try_end_2
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object/from16 v38, v12

    move-object/from16 v39, v13

    move-object/from16 v40, v14

    goto/16 :goto_21

    :catch_1
    move-exception v0

    move-object v5, v12

    move-object v3, v13

    move-object v4, v14

    :goto_1
    const/4 v6, 0x2

    goto/16 :goto_22

    :cond_2
    :try_start_3
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getName()[C

    move-result-object v1

    const/16 v9, 0x2f

    const/16 v8, 0x2e

    invoke-direct {v15, v9, v8, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->replace(CC[C)[C

    move-result-object v7

    invoke-static {v8, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v1
    :try_end_3
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v6, 0x0

    if-ltz v1, :cond_3

    :try_start_4
    invoke-static {v7, v6, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    array-length v5, v7

    invoke-static {v7, v4, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v4
    :try_end_4
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v5, v3

    goto :goto_2

    :cond_3
    :try_start_5
    sget-object v3, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    move-object v5, v3

    move-object v4, v7

    :goto_2
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->isNestedType()Z

    move-result v16
    :try_end_5
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    const/4 v3, 0x1

    if-eqz v16, :cond_8

    :try_start_6
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->isAnonymous()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    goto :goto_3

    :cond_4
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getInnerSourceName()[C

    move-result-object v4

    :goto_3
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->isLocal()Z

    move-result v17

    if-nez v17, :cond_7

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->isAnonymous()Z

    move-result v17

    if-eqz v17, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getEnclosingTypeName()[C

    move-result-object v2

    array-length v11, v2

    sub-int/2addr v11, v1

    sub-int/2addr v11, v3

    if-gtz v11, :cond_6

    return-void

    :cond_6
    new-array v8, v11, [C

    add-int/2addr v1, v3

    invoke-static {v2, v1, v8, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_4
    move-object v11, v4

    goto :goto_6

    :cond_7
    :goto_5
    sget-object v8, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ONE_ZERO:[C
    :try_end_6
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_4

    :cond_8
    move-object v11, v4

    const/4 v8, 0x0

    :goto_6
    :try_start_7
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getGenericSignature()[C

    move-result-object v1
    :try_end_7
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    if-eqz v1, :cond_9

    const/16 v2, 0x2e

    :try_start_8
    invoke-static {v1, v9, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    invoke-static {v1}, Lorg/eclipse/jdt/core/Signature;->getTypeParameters([C)[[C

    move-result-object v1
    :try_end_8
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    move-object/from16 v20, v1

    goto :goto_7

    :cond_9
    const/16 v20, 0x0

    :goto_7
    if-nez v11, :cond_a

    return-void

    :cond_a
    :try_start_9
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getInterfaceNames()[[C

    move-result-object v1

    const/16 v2, 0x2e

    invoke-direct {v15, v9, v2, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->replace(CC[[C)[[C

    move-result-object v21

    if-nez v8, :cond_b

    const/16 v17, 0x0

    goto :goto_8

    :cond_b
    filled-new-array {v8}, [[C

    move-result-object v1

    move-object/from16 v17, v1

    :goto_8
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getModifiers()I

    move-result v8

    invoke-static {v8}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->kind(I)I

    move-result v1
    :try_end_9
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    if-eq v1, v3, :cond_f

    const/4 v4, 0x2

    if-eq v1, v4, :cond_e

    const/4 v2, 0x3

    if-eq v1, v2, :cond_d

    const/4 v2, 0x4

    if-eq v1, v2, :cond_c

    move-object/from16 v18, v0

    move/from16 v22, v3

    move/from16 v23, v4

    move-object/from16 v24, v5

    move/from16 v25, v6

    :goto_9
    move-object/from16 v26, v7

    move/from16 v27, v8

    move-object/from16 v17, v14

    const/16 v0, 0x2e

    :goto_a
    move v14, v9

    goto/16 :goto_d

    :cond_c
    const/16 v18, 0x0

    move-object/from16 v1, p0

    move v2, v8

    move/from16 v22, v3

    move-object v3, v5

    move/from16 v23, v4

    move-object v4, v11

    move-object/from16 v24, v5

    move-object/from16 v5, v17

    move/from16 v25, v6

    move/from16 v6, v18

    :try_start_a
    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addAnnotationTypeDeclaration(I[C[C[[CZ)V

    move-object/from16 v18, v0

    goto :goto_9

    :catch_2
    move-exception v0

    move-object v5, v12

    move-object v3, v13

    move-object v4, v14

    :goto_b
    move/from16 v6, v23

    goto/16 :goto_22

    :cond_d
    move/from16 v22, v3

    move/from16 v23, v4

    move-object/from16 v24, v5

    move/from16 v25, v6

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getSuperclassName()[C

    move-result-object v1

    const/16 v6, 0x2e

    invoke-direct {v15, v9, v6, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->replace(CC[C)[C

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v1, p0

    move v2, v8

    move-object/from16 v3, v24

    move-object v4, v11

    move-object/from16 v5, v17

    move/from16 v17, v6

    move-object/from16 v6, v18

    move-object/from16 v26, v7

    move-object/from16 v7, v21

    move-object/from16 v18, v0

    move/from16 v27, v8

    move/from16 v0, v17

    move/from16 v8, v19

    invoke-virtual/range {v1 .. v8}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addEnumDeclaration(I[C[C[[C[C[[CZ)V

    :goto_c
    move-object/from16 v17, v14

    goto :goto_a

    :cond_e
    move-object/from16 v18, v0

    move/from16 v22, v3

    move/from16 v23, v4

    move-object/from16 v24, v5

    move/from16 v25, v6

    move-object/from16 v26, v7

    move/from16 v27, v8

    const/16 v0, 0x2e

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move/from16 v2, v27

    move-object/from16 v3, v24

    move-object v4, v11

    move-object/from16 v5, v17

    move-object/from16 v6, v21

    move-object/from16 v7, v20

    invoke-virtual/range {v1 .. v8}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addInterfaceDeclaration(I[C[C[[C[[C[[CZ)V
    :try_end_a
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_c

    :cond_f
    move-object/from16 v18, v0

    move/from16 v22, v3

    move-object/from16 v24, v5

    move/from16 v25, v6

    move-object/from16 v26, v7

    move/from16 v27, v8

    const/16 v0, 0x2e

    const/16 v23, 0x2

    :try_start_b
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getSuperclassName()[C

    move-result-object v1

    invoke-direct {v15, v9, v0, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->replace(CC[C)[C

    move-result-object v6
    :try_end_b
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0

    const/16 v19, 0x0

    move-object/from16 v1, p0

    move/from16 v2, v27

    move-object/from16 v3, v24

    move-object v4, v11

    move-object/from16 v5, v17

    move-object/from16 v7, v21

    move-object/from16 v8, v20

    move-object/from16 v17, v14

    move v14, v9

    move/from16 v9, v19

    :try_start_c
    invoke-virtual/range {v1 .. v9}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addClassDeclaration(I[C[C[[C[C[[C[[CZ)V

    :goto_d
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v1
    :try_end_c
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_3

    if-eqz v1, :cond_11

    :try_start_d
    array-length v2, v1

    move/from16 v6, v25

    :goto_e
    if-lt v6, v2, :cond_10

    goto :goto_f

    :cond_10
    aget-object v3, v1, v6

    invoke-direct {v15, v3}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->addBinaryAnnotation(Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)V
    :try_end_d
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_3

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :catch_3
    move-exception v0

    move-object/from16 v38, v12

    move-object/from16 v39, v13

    move-object/from16 v40, v17

    goto/16 :goto_21

    :catch_4
    move-exception v0

    move-object v5, v12

    move-object v3, v13

    move-object/from16 v4, v17

    goto/16 :goto_b

    :cond_11
    :goto_f
    :try_start_e
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getTagBits()J

    move-result-wide v1
    :try_end_e
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_3

    const-wide v19, 0x77fffff800000000L    # 1.0565850317039238E270

    and-long v1, v1, v19

    const-wide/16 v28, 0x0

    cmp-long v3, v1, v28

    if-eqz v3, :cond_12

    :try_start_f
    invoke-direct {v15, v1, v2}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->addBinaryStandardAnnotations(J)V
    :try_end_f
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_3

    :cond_12
    :try_start_10
    invoke-static {v10}, Lorg/eclipse/jdt/internal/compiler/ExtraFlags;->getExtraFlags(Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;)I

    move-result v9

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getMethods()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

    move-result-object v1

    move-object v8, v1

    check-cast v8, [Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;

    if-eqz v8, :cond_20

    array-length v7, v8

    move/from16 v21, v22

    move/from16 v6, v25

    :goto_10
    if-lt v6, v7, :cond_13

    move/from16 v35, v9

    move-object/from16 v36, v10

    move-object/from16 v38, v12

    move-object/from16 v39, v13

    move v0, v14

    move-object/from16 v40, v17

    move/from16 v3, v21

    goto/16 :goto_1c

    :cond_13
    aget-object v30, v8, v6

    invoke-virtual/range {v30 .. v30}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->isConstructor()Z

    move-result v1

    invoke-virtual/range {v30 .. v30}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getMethodDescriptor()[C

    move-result-object v2

    if-eqz v1, :cond_14

    if-eqz v16, :cond_14

    move/from16 v3, v22

    goto :goto_11

    :cond_14
    move/from16 v3, v25

    :goto_11
    invoke-direct {v15, v2, v3}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->decodeParameterTypes([CZ)[[C

    move-result-object v5

    invoke-direct {v15, v2}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->decodeReturnType([C)[C

    move-result-object v4

    invoke-virtual/range {v30 .. v30}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getExceptionTypeNames()[[C

    move-result-object v3

    invoke-direct {v15, v14, v0, v3}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->replace(CC[[C)[[C

    move-result-object v3
    :try_end_10
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_3

    if-eqz v1, :cond_19

    :try_start_11
    invoke-virtual/range {v30 .. v30}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getGenericSignature()[C

    move-result-object v1
    :try_end_11
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_3

    if-nez v1, :cond_17

    :try_start_12
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->isNestedType()Z

    move-result v1

    if-eqz v1, :cond_15

    move/from16 v4, v27

    and-int/lit8 v1, v4, 0x8

    if-nez v1, :cond_16

    invoke-direct {v15, v2}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->removeFirstSyntheticParameter([C)[C

    move-result-object v1
    :try_end_12
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_12 .. :try_end_12} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_3

    :goto_12
    move-object/from16 v21, v1

    goto :goto_13

    :cond_15
    move/from16 v4, v27

    :cond_16
    move-object/from16 v21, v2

    goto :goto_13

    :cond_17
    move/from16 v4, v27

    goto :goto_12

    :goto_13
    if-nez v5, :cond_18

    move/from16 v27, v25

    goto :goto_14

    :cond_18
    :try_start_13
    array-length v1, v5

    move/from16 v27, v1

    :goto_14
    invoke-virtual/range {v30 .. v30}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getArgumentNames()[[C

    move-result-object v31

    invoke-virtual/range {v30 .. v30}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getModifiers()I

    move-result v32

    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v33, v3

    move/from16 v3, v27

    move/from16 v27, v4

    move-object/from16 v4, v21

    move/from16 v34, v6

    move-object/from16 v6, v31

    move/from16 v31, v7

    move/from16 v7, v32

    move-object/from16 v32, v8

    move-object/from16 v8, v24

    move/from16 v35, v9

    move/from16 v9, v27

    move-object/from16 v36, v10

    move-object/from16 v10, v33

    move-object v0, v11

    move/from16 v11, v35

    invoke-virtual/range {v1 .. v11}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addConstructorDeclaration([CI[C[[C[[CI[CI[[CI)V
    :try_end_13
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_3

    move-object/from16 v38, v12

    move-object/from16 v39, v13

    move-object/from16 v40, v17

    move/from16 v21, v25

    :goto_15
    move-object/from16 v17, v0

    move v0, v14

    goto/16 :goto_19

    :catch_5
    move-exception v0

    move-object v5, v12

    move-object v3, v13

    move-object/from16 v4, v17

    goto/16 :goto_1

    :cond_19
    move-object/from16 v33, v3

    move/from16 v34, v6

    move/from16 v31, v7

    move-object/from16 v32, v8

    move/from16 v35, v9

    move-object/from16 v36, v10

    move-object v0, v11

    :try_start_14
    invoke-virtual/range {v30 .. v30}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->isClinit()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual/range {v30 .. v30}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getSelector()[C

    move-result-object v6

    move-object/from16 v11, v33

    invoke-virtual {v15, v6, v5, v4, v11}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addMethodDeclaration([C[[C[C[[C)V

    invoke-virtual/range {v30 .. v30}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getGenericSignature()[C

    move-result-object v1

    if-nez v1, :cond_1a

    move-object v7, v2

    goto :goto_16

    :cond_1a
    move-object v7, v1

    :goto_16
    array-length v1, v0

    if-lez v1, :cond_1c

    if-nez v5, :cond_1b

    move/from16 v8, v25

    goto :goto_17

    :cond_1b
    array-length v1, v5

    move v8, v1

    :goto_17
    invoke-virtual/range {v30 .. v30}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getArgumentNames()[[C

    move-result-object v9

    invoke-virtual/range {v30 .. v30}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getModifiers()I

    move-result v10
    :try_end_14
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_14 .. :try_end_14} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_3

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object v2, v0

    move-object/from16 v33, v4

    move-object v4, v6

    move-object/from16 v37, v5

    move v5, v8

    move-object v6, v7

    move-object/from16 v7, v37

    move-object v8, v9

    move-object/from16 v9, v33

    move-object/from16 v33, v11

    move-object/from16 v11, v24

    move-object/from16 v38, v12

    move/from16 v12, v27

    move-object/from16 v39, v13

    move-object/from16 v13, v33

    move-object/from16 v40, v17

    move-object/from16 v17, v0

    move v0, v14

    move/from16 v14, v35

    :try_start_15
    invoke-virtual/range {v1 .. v14}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addMethodDeclaration([C[C[CI[C[[C[[C[CI[CI[[CI)V

    goto :goto_19

    :catch_6
    move-exception v0

    goto/16 :goto_21

    :catch_7
    move-exception v0

    :goto_18
    move-object/from16 v5, v38

    move-object/from16 v3, v39

    move-object/from16 v4, v40

    goto/16 :goto_1

    :catch_8
    move-exception v0

    move-object/from16 v38, v12

    move-object/from16 v39, v13

    move-object/from16 v40, v17

    goto :goto_18

    :cond_1c
    move-object/from16 v38, v12

    move-object/from16 v39, v13

    move-object/from16 v40, v17

    goto/16 :goto_15

    :goto_19
    invoke-virtual/range {v30 .. v30}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v1

    if-eqz v1, :cond_1e

    array-length v2, v1

    move/from16 v6, v25

    :goto_1a
    if-lt v6, v2, :cond_1d

    goto :goto_1b

    :cond_1d
    aget-object v3, v1, v6

    invoke-direct {v15, v3}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->addBinaryAnnotation(Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_1e
    :goto_1b
    invoke-virtual/range {v30 .. v30}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getTagBits()J

    move-result-wide v1

    and-long v1, v1, v19

    cmp-long v3, v1, v28

    if-eqz v3, :cond_1f

    invoke-direct {v15, v1, v2}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->addBinaryStandardAnnotations(J)V

    :cond_1f
    add-int/lit8 v6, v34, 0x1

    move v14, v0

    move-object/from16 v11, v17

    move/from16 v7, v31

    move-object/from16 v8, v32

    move/from16 v9, v35

    move-object/from16 v10, v36

    move-object/from16 v12, v38

    move-object/from16 v13, v39

    move-object/from16 v17, v40

    const/16 v0, 0x2e

    const/16 v23, 0x2

    goto/16 :goto_10

    :cond_20
    move/from16 v35, v9

    move-object/from16 v36, v10

    move-object/from16 v38, v12

    move-object/from16 v39, v13

    move v0, v14

    move-object/from16 v40, v17

    move/from16 v3, v22

    :goto_1c
    if-eqz v3, :cond_21

    move-object/from16 v3, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v4, v35

    invoke-virtual {v15, v1, v3, v2, v4}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addDefaultConstructorDeclaration([C[CII)V

    :cond_21
    invoke-virtual/range {v36 .. v36}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getFields()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;

    move-result-object v1

    check-cast v1, [Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;

    if-eqz v1, :cond_22

    array-length v2, v1

    move/from16 v6, v25

    :goto_1d
    if-lt v6, v2, :cond_23

    :cond_22
    move-object/from16 v0, v18

    move-object/from16 v1, v36

    goto :goto_20

    :cond_23
    aget-object v3, v1, v6

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->getName()[C

    move-result-object v4

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->getTypeName()[C

    move-result-object v5

    const/16 v7, 0x2e

    invoke-direct {v15, v0, v7, v5}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->replace(CC[C)[C

    move-result-object v5

    invoke-direct {v15, v5}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->decodeFieldType([C)[C

    move-result-object v5

    invoke-virtual {v15, v5, v4}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addFieldDeclaration([C[C)V

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v4

    if-eqz v4, :cond_25

    array-length v5, v4

    move/from16 v8, v25

    :goto_1e
    if-lt v8, v5, :cond_24

    goto :goto_1f

    :cond_24
    aget-object v9, v4, v8

    invoke-direct {v15, v9}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->addBinaryAnnotation(Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1e

    :cond_25
    :goto_1f
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->getTagBits()J

    move-result-wide v3

    and-long v3, v3, v19

    cmp-long v5, v3, v28

    if-eqz v5, :cond_26

    invoke-direct {v15, v3, v4}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->addBinaryStandardAnnotations(J)V

    :cond_26
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :goto_20
    invoke-direct {v15, v0, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->extractReferenceFromConstantPool([BLorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;)V
    :try_end_15
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_15 .. :try_end_15} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_6

    goto :goto_23

    :catch_9
    move-exception v0

    move-object/from16 v38, v12

    move-object/from16 v39, v13

    move-object/from16 v40, v14

    goto/16 :goto_18

    :goto_21
    iget-object v1, v15, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->document:Lorg/eclipse/jdt/core/search/SearchDocument;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/search/SearchDocument;->removeAllIndexEntries()V

    new-instance v1, Lorg/eclipse/core/runtime/Status;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v39

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v15, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->document:Lorg/eclipse/jdt/core/search/SearchDocument;

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/search/SearchDocument;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v40

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v5, v38

    const/4 v6, 0x2

    invoke-direct {v1, v6, v5, v2, v0}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Lorg/eclipse/core/runtime/IStatus;)V

    goto :goto_23

    :goto_22
    iget-object v1, v15, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->document:Lorg/eclipse/jdt/core/search/SearchDocument;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/search/SearchDocument;->removeAllIndexEntries()V

    new-instance v1, Lorg/eclipse/core/runtime/Status;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v15, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->document:Lorg/eclipse/jdt/core/search/SearchDocument;

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/search/SearchDocument;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v6, v5, v2, v0}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Lorg/eclipse/core/runtime/IStatus;)V

    :goto_23
    return-void
.end method
