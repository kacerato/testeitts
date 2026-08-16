.class public Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field pairs:[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

.field type:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V
    .locals 1

    .line 4
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->computeElementValuePairs()[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 3
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->pairs:[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    return-void
.end method

.method public static addStandardAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;JLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-wide v2, 0x77fffff800000000L    # 1.0565850317039238E270

    and-long v2, p1, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    move v6, v3

    :goto_0
    const/4 v7, 0x1

    if-lt v6, v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    aget-object v8, v0, v6

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->getAnnotationType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v8

    iget v8, v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/16 v9, 0x2c

    if-ne v8, v9, :cond_15

    move v2, v7

    :goto_1
    const-wide v8, 0x20600ff800000000L    # 9.583895004233563E-153

    and-long v8, p1, v8

    cmp-long v6, v8, v4

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    move v7, v3

    :goto_2
    const-wide v8, 0x300000000000L

    and-long v8, p1, v8

    cmp-long v8, v8, v4

    if-eqz v8, :cond_3

    add-int/lit8 v7, v7, 0x1

    :cond_3
    const-wide v9, 0x400000000000L

    if-nez v2, :cond_4

    and-long v11, p1, v9

    cmp-long v11, v11, v4

    if-eqz v11, :cond_4

    add-int/lit8 v7, v7, 0x1

    :cond_4
    const-wide v11, 0x800000000000L

    and-long v11, p1, v11

    cmp-long v11, v11, v4

    if-eqz v11, :cond_5

    add-int/lit8 v7, v7, 0x1

    :cond_5
    const-wide/high16 v12, 0x1000000000000L

    and-long v12, p1, v12

    cmp-long v12, v12, v4

    if-eqz v12, :cond_6

    add-int/lit8 v7, v7, 0x1

    :cond_6
    const-wide/high16 v13, 0x2000000000000L

    and-long v13, p1, v13

    cmp-long v13, v13, v4

    if-eqz v13, :cond_7

    add-int/lit8 v7, v7, 0x1

    :cond_7
    const-wide/high16 v14, 0x4000000000000L

    and-long v14, p1, v14

    cmp-long v14, v14, v4

    if-eqz v14, :cond_8

    add-int/lit8 v7, v7, 0x1

    :cond_8
    const-wide/high16 v15, 0x10000000000000L

    and-long v15, p1, v15

    cmp-long v15, v15, v4

    if-eqz v15, :cond_9

    add-int/lit8 v7, v7, 0x1

    :cond_9
    const-wide/high16 v16, 0x8000000000000L

    and-long v16, p1, v16

    cmp-long v16, v16, v4

    if-eqz v16, :cond_a

    add-int/lit8 v7, v7, 0x1

    :cond_a
    if-nez v7, :cond_b

    return-object v0

    :cond_b
    array-length v4, v0

    add-int/2addr v7, v4

    new-array v5, v7, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    invoke-static {v0, v3, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v6, :cond_c

    add-int/lit8 v0, v4, 0x1

    invoke-static/range {p1 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->buildTargetAnnotation(JLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v3

    aput-object v3, v5, v4

    move v4, v0

    :cond_c
    if-eqz v8, :cond_d

    add-int/lit8 v0, v4, 0x1

    invoke-static/range {p1 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->buildRetentionAnnotation(JLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v3

    aput-object v3, v5, v4

    move v4, v0

    :cond_d
    if-nez v2, :cond_e

    and-long v2, p1, v9

    const-wide/16 v7, 0x0

    cmp-long v0, v2, v7

    if-eqz v0, :cond_e

    add-int/lit8 v0, v4, 0x1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_DEPRECATED:[[C

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->javaBaseModule()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->buildMarkerAnnotation([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v2

    aput-object v2, v5, v4

    move v4, v0

    :cond_e
    if-eqz v11, :cond_f

    add-int/lit8 v0, v4, 0x1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_DOCUMENTED:[[C

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->javaBaseModule()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->buildMarkerAnnotation([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v2

    aput-object v2, v5, v4

    move v4, v0

    :cond_f
    if-eqz v12, :cond_10

    add-int/lit8 v0, v4, 0x1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_INHERITED:[[C

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->javaBaseModule()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->buildMarkerAnnotation([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v2

    aput-object v2, v5, v4

    move v4, v0

    :cond_10
    if-eqz v13, :cond_11

    add-int/lit8 v0, v4, 0x1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_OVERRIDE:[[C

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->javaBaseModule()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->buildMarkerAnnotation([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v2

    aput-object v2, v5, v4

    move v4, v0

    :cond_11
    if-eqz v14, :cond_12

    add-int/lit8 v0, v4, 0x1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_SUPPRESSWARNINGS:[[C

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->javaBaseModule()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->buildMarkerAnnotation([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v2

    aput-object v2, v5, v4

    move v4, v0

    :cond_12
    if-eqz v15, :cond_13

    add-int/lit8 v0, v4, 0x1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_INVOKE_METHODHANDLE_$_POLYMORPHICSIGNATURE:[[C

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->javaBaseModule()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->buildMarkerAnnotationForMemberType([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v2

    aput-object v2, v5, v4

    move v4, v0

    :cond_13
    if-eqz v16, :cond_14

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_SAFEVARARGS:[[C

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->javaBaseModule()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->buildMarkerAnnotation([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v0

    aput-object v0, v5, v4

    :cond_14
    return-object v5

    :cond_15
    move-wide v7, v4

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method

.method private static buildMarkerAnnotation([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p2, p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getResolvedType([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p0

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ELEMENT_VALUE_PAIRS:[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    invoke-virtual {p2, p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotation(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p0

    return-object p0
.end method

.method private static buildMarkerAnnotationForMemberType([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p2, p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getResolvedType([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result p1

    if-nez p1, :cond_0

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;->closestMatch:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_0
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ELEMENT_VALUE_PAIRS:[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    invoke-virtual {p2, p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotation(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p0

    return-object p0
.end method

.method private static buildRetentionAnnotation(JLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;
    .locals 8

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_RETENTIONPOLICY:[[C

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getResolvedJavaBaseType([[CLorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    const-wide v2, 0x300000000000L

    and-long v4, p0, v2

    cmp-long v2, v4, v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    sget-object p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_RUNTIME:[C

    invoke-virtual {v0, p0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getField([CZ)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-wide v4, 0x200000000000L

    and-long/2addr v4, p0

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_1

    sget-object p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_CLASS:[C

    invoke-virtual {v0, p0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getField([CZ)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-wide v4, 0x100000000000L

    and-long/2addr p0, v4

    cmp-long p0, p0, v6

    if-eqz p0, :cond_2

    sget-object p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_SOURCE:[C

    invoke-virtual {v0, p0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getField([CZ)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object p0

    goto :goto_0

    :cond_2
    move-object p0, v1

    :goto_0
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_RETENTION:[[C

    invoke-virtual {p2, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getResolvedJavaBaseType([[CLorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->VALUE:[C

    invoke-direct {v0, v2, p0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;-><init>([CLjava/lang/Object;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    filled-new-array {v0}, [Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotation(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p0

    return-object p0
.end method

.method private static buildTargetAnnotation(JLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;
    .locals 20

    move-object/from16 v0, p2

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_TARGET:[[C

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getResolvedJavaBaseType([[CLorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    const-wide v3, 0x800000000L

    and-long v3, p0, v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ELEMENT_VALUE_PAIRS:[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;)V

    return-object v0

    :cond_0
    const-wide v3, 0x40000000000L

    and-long v3, p0, v3

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_1

    move v8, v7

    goto :goto_0

    :cond_1
    move v8, v4

    :goto_0
    const-wide v9, 0x10000000000L

    and-long v9, p0, v9

    cmp-long v9, v9, v5

    if-eqz v9, :cond_2

    add-int/lit8 v8, v8, 0x1

    :cond_2
    const-wide v10, 0x2000000000L

    and-long v10, p0, v10

    cmp-long v10, v10, v5

    if-eqz v10, :cond_3

    add-int/lit8 v8, v8, 0x1

    :cond_3
    const-wide v11, 0x20000000000L

    and-long v11, p0, v11

    cmp-long v11, v11, v5

    if-eqz v11, :cond_4

    add-int/lit8 v8, v8, 0x1

    :cond_4
    const-wide v12, 0x4000000000L

    and-long v12, p0, v12

    cmp-long v12, v12, v5

    if-eqz v12, :cond_5

    add-int/lit8 v8, v8, 0x1

    :cond_5
    const-wide v13, 0x80000000000L

    and-long v13, p0, v13

    cmp-long v13, v13, v5

    if-eqz v13, :cond_6

    add-int/lit8 v8, v8, 0x1

    :cond_6
    const-wide v14, 0x8000000000L

    and-long v14, p0, v14

    cmp-long v14, v14, v5

    if-eqz v14, :cond_7

    add-int/lit8 v8, v8, 0x1

    :cond_7
    const-wide v15, 0x1000000000L

    and-long v15, p0, v15

    cmp-long v15, v15, v5

    if-eqz v15, :cond_8

    add-int/lit8 v8, v8, 0x1

    :cond_8
    const-wide/high16 v16, 0x20000000000000L

    and-long v16, p0, v16

    cmp-long v16, v16, v5

    if-eqz v16, :cond_9

    add-int/lit8 v8, v8, 0x1

    :cond_9
    const-wide/high16 v17, 0x40000000000000L

    and-long v17, p0, v17

    cmp-long v17, v17, v5

    if-eqz v17, :cond_a

    add-int/lit8 v8, v8, 0x1

    :cond_a
    const-wide/high16 v18, 0x2000000000000000L

    and-long v18, p0, v18

    cmp-long v5, v18, v5

    if-eqz v5, :cond_b

    add-int/lit8 v8, v8, 0x1

    :cond_b
    new-array v5, v8, [Ljava/lang/Object;

    if-lez v8, :cond_15

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_ELEMENTTYPE:[[C

    invoke-virtual {v0, v6, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getResolvedType([[CLorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v6

    if-eqz v16, :cond_c

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->TYPE_USE_TARGET:[C

    invoke-virtual {v6, v8, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getField([CZ)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v8

    aput-object v8, v5, v4

    move v4, v7

    :cond_c
    if-eqz v3, :cond_d

    add-int/lit8 v3, v4, 0x1

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_ANNOTATION_TYPE:[C

    invoke-virtual {v6, v8, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getField([CZ)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v8

    aput-object v8, v5, v4

    move v4, v3

    :cond_d
    if-eqz v9, :cond_e

    add-int/lit8 v3, v4, 0x1

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_CONSTRUCTOR:[C

    invoke-virtual {v6, v8, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getField([CZ)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v8

    aput-object v8, v5, v4

    move v4, v3

    :cond_e
    if-eqz v10, :cond_f

    add-int/lit8 v3, v4, 0x1

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_FIELD:[C

    invoke-virtual {v6, v8, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getField([CZ)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v8

    aput-object v8, v5, v4

    move v4, v3

    :cond_f
    if-eqz v12, :cond_10

    add-int/lit8 v3, v4, 0x1

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_METHOD:[C

    invoke-virtual {v6, v8, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getField([CZ)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v8

    aput-object v8, v5, v4

    move v4, v3

    :cond_10
    if-eqz v13, :cond_11

    add-int/lit8 v3, v4, 0x1

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_PACKAGE:[C

    invoke-virtual {v6, v8, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getField([CZ)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v8

    aput-object v8, v5, v4

    move v4, v3

    :cond_11
    if-eqz v14, :cond_12

    add-int/lit8 v3, v4, 0x1

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_PARAMETER:[C

    invoke-virtual {v6, v8, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getField([CZ)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v8

    aput-object v8, v5, v4

    move v4, v3

    :cond_12
    if-eqz v17, :cond_13

    add-int/lit8 v3, v4, 0x1

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->TYPE_PARAMETER_TARGET:[C

    invoke-virtual {v6, v8, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getField([CZ)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v8

    aput-object v8, v5, v4

    move v4, v3

    :cond_13
    if-eqz v15, :cond_14

    add-int/lit8 v3, v4, 0x1

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->TYPE:[C

    invoke-virtual {v6, v8, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getField([CZ)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v8

    aput-object v8, v5, v4

    move v4, v3

    :cond_14
    if-eqz v11, :cond_15

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_LOCAL_VARIABLE:[C

    invoke-virtual {v6, v3, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getField([CZ)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v3

    aput-object v3, v5, v4

    :cond_15
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->VALUE:[C

    invoke-direct {v3, v4, v5, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;-><init>([CLjava/lang/Object;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    filled-new-array {v3}, [Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotation(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v0

    return-object v0
.end method

.method public static setMethodBindings(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;)V
    .locals 5

    array-length v0, p1

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    return-void

    :cond_1
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;->getName()[C

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getMethods([C)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;->setMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    goto :goto_0
.end method


# virtual methods
.method public computeUniqueKey([C)[C
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->computeUniqueKey(Z)[C

    move-result-object v0

    array-length v2, p1

    add-int/lit8 v3, v2, 0x1

    array-length v4, v0

    add-int/2addr v4, v3

    new-array v4, v4, [C

    invoke-static {p1, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p1, 0x40

    aput-char p1, v4, v2

    array-length p1, v0

    invoke-static {v0, v1, v4, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->getAnnotationType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->getAnnotationType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->getElementValuePairs()[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->getElementValuePairs()[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    move-result-object p1

    array-length v3, v1

    array-length v4, p1

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    move v4, v2

    :goto_0
    if-lt v4, v3, :cond_4

    return v0

    :cond_4
    aget-object v5, v1, v4

    move v6, v2

    :goto_1
    if-lt v6, v3, :cond_5

    return v2

    :cond_5
    aget-object v7, p1, v6

    iget-object v8, v5, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v9, v7, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-ne v8, v9, :cond_b

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;->value:Ljava/lang/Object;

    if-nez v5, :cond_7

    iget-object v5, v7, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;->value:Ljava/lang/Object;

    if-nez v5, :cond_6

    goto :goto_2

    :cond_6
    return v2

    :cond_7
    iget-object v6, v7, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;->value:Ljava/lang/Object;

    if-nez v6, :cond_8

    return v2

    :cond_8
    instance-of v7, v6, [Ljava/lang/Object;

    if-eqz v7, :cond_9

    instance-of v7, v5, [Ljava/lang/Object;

    if-eqz v7, :cond_9

    check-cast v5, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    return v2

    :cond_9
    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    return v2

    :cond_a
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public getAnnotationType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0
.end method

.method public getElementValuePairs()[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->pairs:[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->getAnnotationType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->getElementValuePairs()[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public resolve()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->pairs:[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    if-eqz v1, :cond_3

    array-length v1, v1

    if-lez v1, :cond_3

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->pairs:[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    array-length v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;->getName()[C

    move-result-object v1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->VALUE:[C

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->pairs:[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    aget-object v1, v1, v4

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->pairs:[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    array-length v1, v1

    :goto_0
    if-lt v4, v1, :cond_1

    :goto_1
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_1
    if-lez v4, :cond_2

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->pairs:[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    aget-object v2, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
