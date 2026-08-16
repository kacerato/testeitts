.class public abstract Lorg/eclipse/jdt/internal/compiler/ast/Annotation;
.super Lorg/eclipse/jdt/internal/compiler/ast/Expression;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;
    }
.end annotation


# static fields
.field static final NoValuePairs:[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

.field static final TYPE_PATH_ANNOTATION_ON_WILDCARD_BOUND:[I

.field static final TYPE_PATH_ELEMENT_ARRAY:[I

.field static final TYPE_PATH_INNER_TYPE:[I


# instance fields
.field protected compilerAnnotation:Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

.field public declarationSourceEnd:I

.field persistibleAnnotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

.field public recipient:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

.field public type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->NoValuePairs:[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    const/4 v1, 0x2

    new-array v2, v1, [I

    sput-object v2, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->TYPE_PATH_ELEMENT_ARRAY:[I

    new-array v2, v1, [I

    const/4 v3, 0x1

    aput v3, v2, v0

    sput-object v2, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->TYPE_PATH_INNER_TYPE:[I

    new-array v2, v1, [I

    aput v1, v2, v0

    sput-object v2, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->TYPE_PATH_ANNOTATION_ON_WILDCARD_BOUND:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;-><init>()V

    iput-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->persistibleAnnotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->compilerAnnotation:Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    return-void
.end method

.method public static checkAnnotationTarget(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/Binding;J)V
    .locals 1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->isAnnotationTargetAllowed(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    move-result-object p2

    sget-object p3, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;->YES:Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    if-eq p2, p3, :cond_2

    sget-object p3, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;->TYPE_ANNOTATION_ON_QUALIFIED_NAME:Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    if-ne p2, p3, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->typeAnnotationAtQualifiedName(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->disallowedTargetForAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    :goto_0
    instance-of p0, p4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p0, :cond_2

    check-cast p4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide p0, p4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    not-long p2, p5

    and-long/2addr p0, p2

    iput-wide p0, p4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_2
    return-void
.end method

.method public static checkContainerAnnotationType(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)V
    .locals 10

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->methods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v2, v1, :cond_5

    if-nez v3, :cond_0

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->tagAsHavingDefectiveContainerType()V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->containerAnnotationTypeMustHaveValue(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    :cond_0
    if-eqz p4, :cond_1

    move-object p4, p0

    check-cast p4, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-static {p4, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->checkContainingAnnotationTargetAtUse(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_1

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->checkContainerAnnotationTypeTarget(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    :goto_1
    invoke-static {p3}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->getAnnotationRetention(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)J

    move-result-wide v0

    invoke-static {p2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->getAnnotationRetention(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)J

    move-result-wide v2

    cmp-long p4, v2, v0

    if-gez p4, :cond_2

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->tagAsHavingDefectiveContainerType()V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->getRetentionName(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->getRetentionName(J)Ljava/lang/String;

    move-result-object v9

    move-object v5, p0

    move-object v6, p3

    move-object v8, p2

    invoke-virtual/range {v4 .. v9}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->containerAnnotationTypeHasShorterRetention(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getAnnotationTagBits()J

    move-result-wide v0

    const-wide v2, 0x800000000000L

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long p4, v0, v4

    if-eqz p4, :cond_3

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getAnnotationTagBits()J

    move-result-wide v0

    and-long/2addr v0, v2

    cmp-long p4, v0, v4

    if-nez p4, :cond_3

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->tagAsHavingDefectiveContainerType()V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p4

    invoke-virtual {p4, p0, p3, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->repeatableAnnotationTypeIsDocumented(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    :cond_3
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getAnnotationTagBits()J

    move-result-wide v0

    const-wide/high16 v2, 0x1000000000000L

    and-long/2addr v0, v2

    cmp-long p4, v0, v4

    if-eqz p4, :cond_4

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getAnnotationTagBits()J

    move-result-wide v0

    and-long/2addr v0, v2

    cmp-long p4, v0, v4

    if-nez p4, :cond_4

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->tagAsHavingDefectiveContainerType()V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0, p3, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->repeatableAnnotationTypeIsInherited(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    :cond_4
    return-void

    :cond_5
    aget-object v4, v0, v2

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->VALUE:[C

    invoke-static {v5, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v3, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_6

    iget-object v3, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result v3

    if-ne v3, v5, :cond_6

    iget-object v3, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->elementsType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    invoke-static {v3, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->tagAsHavingDefectiveContainerType()V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v3, p0, p2, p3, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->containerAnnotationTypeHasWrongValueType(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :goto_2
    move v3, v5

    goto :goto_3

    :cond_7
    iget v5, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    const/high16 v6, 0x20000

    and-int/2addr v5, v6

    if-nez v5, :cond_8

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->tagAsHavingDefectiveContainerType()V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-virtual {v5, p0, p2, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->containerAnnotationTypeHasNonDefaultMembers(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C)V

    :cond_8
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method private static checkContainerAnnotationTypeTarget(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 12

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getAnnotationTagBits()J

    move-result-wide v0

    const-wide v2, 0x20600ff800000000L    # 9.583895004233563E-153

    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const-wide v8, 0xff000000000L

    if-nez v4, :cond_0

    move-wide v0, v8

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getAnnotationTagBits()J

    move-result-wide v4

    and-long v10, v4, v2

    cmp-long v10, v10, v6

    if-nez v10, :cond_1

    goto :goto_0

    :cond_1
    move-wide v8, v4

    :goto_0
    and-long/2addr v0, v2

    and-long/2addr v2, v8

    not-long v4, v0

    and-long/2addr v4, v2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1MissingTargetBuilder;

    invoke-direct {v4, v2, v3, v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1MissingTargetBuilder;-><init>(JJ)V

    const-wide v0, 0x1000000000L

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->TYPE:[C

    invoke-virtual {v4, v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1MissingTargetBuilder;->check(J[C)V

    const-wide v0, 0x2000000000L

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_FIELD:[C

    invoke-virtual {v4, v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1MissingTargetBuilder;->check(J[C)V

    const-wide v0, 0x4000000000L

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_METHOD:[C

    invoke-virtual {v4, v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1MissingTargetBuilder;->check(J[C)V

    const-wide v0, 0x8000000000L

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_PARAMETER:[C

    invoke-virtual {v4, v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1MissingTargetBuilder;->check(J[C)V

    const-wide v0, 0x10000000000L

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_CONSTRUCTOR:[C

    invoke-virtual {v4, v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1MissingTargetBuilder;->check(J[C)V

    const-wide v0, 0x20000000000L

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_LOCAL_VARIABLE:[C

    invoke-virtual {v4, v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1MissingTargetBuilder;->check(J[C)V

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_ANNOTATION_TYPE:[C

    invoke-virtual {v4, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1MissingTargetBuilder;->checkAnnotationType([C)V

    const-wide v0, 0x80000000000L

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_PACKAGE:[C

    invoke-virtual {v4, v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1MissingTargetBuilder;->check(J[C)V

    const-wide/high16 v0, 0x40000000000000L

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->TYPE_PARAMETER_TARGET:[C

    invoke-virtual {v4, v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1MissingTargetBuilder;->check(J[C)V

    const-wide/high16 v0, 0x20000000000000L

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->TYPE_USE_TARGET:[C

    invoke-virtual {v4, v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1MissingTargetBuilder;->check(J[C)V

    const-wide/high16 v0, 0x2000000000000000L

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_MODULE:[C

    invoke-virtual {v4, v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1MissingTargetBuilder;->check(J[C)V

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1MissingTargetBuilder;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->tagAsHavingDefectiveContainerType()V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1MissingTargetBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, p3, p2, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->repeatableAnnotationTypeTargetMismatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static checkContainingAnnotationTargetAtUse(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 1

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->recipient:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->kind()I

    move-result p3

    invoke-static {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->isAnnotationTargetAllowed(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    move-result-object p3

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;->YES:Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    if-eq p3, v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->disallowedTargetForContainerAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_1
    return-void
.end method

.method public static checkForInstancesOfRepeatableWithRepeatingContainerAnnotation(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->VALUE:[C

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getMethods([C)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result v3

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->elementsType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRepeatableAnnotationType()Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    :goto_0
    array-length v2, p2

    if-lt v1, v2, :cond_3

    return-void

    :cond_3
    aget-object v2, p2, v1

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p0

    invoke-virtual {p0, v2, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->repeatableAnnotationWithRepeatingContainer(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    return-void

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method private detectStandardAnnotation(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;)J
    .locals 16

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_b

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_a

    const/16 v3, 0x4d

    if-eq v2, v3, :cond_9

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_8

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    const-wide v7, 0x800000000L

    if-eqz v1, :cond_0

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v9, v2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    const/16 v10, 0x34

    if-eqz v9, :cond_4

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->expressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v2, :cond_0

    array-length v9, v2

    :goto_0
    if-lt v3, v9, :cond_1

    :cond_0
    move-wide v5, v7

    goto/16 :goto_4

    :cond_1
    aget-object v11, v2, v3

    iget v12, v11, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v12, v12, 0x3

    if-ne v12, v4, :cond_3

    move-object v12, v11

    check-cast v12, Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/ast/Reference;->fieldBinding()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v12

    if-eqz v12, :cond_3

    iget-object v13, v12, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget v13, v13, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v13, v10, :cond_3

    iget-object v12, v12, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-static {v12}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->getTargetElementType([C)J

    move-result-wide v12

    and-long v14, v7, v12

    cmp-long v14, v14, v5

    if-eqz v14, :cond_2

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v12

    check-cast v11, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    invoke-virtual {v12, v0, v11}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateTargetInTargetAnnotation(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/NameReference;)V

    goto :goto_1

    :cond_2
    or-long/2addr v7, v12

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v3, v3, 0x3

    if-ne v3, v4, :cond_0

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/Reference;->fieldBinding()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v3, v10, :cond_0

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->getTargetElementType([C)J

    move-result-wide v2

    or-long v5, v7, v2

    goto/16 :goto_4

    :pswitch_1
    const-wide/high16 v5, 0x4000000000000L

    goto/16 :goto_4

    :pswitch_2
    if-eqz v1, :cond_c

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v3, v3, 0x3

    if-ne v3, v4, :cond_c

    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    if-eqz v3, :cond_c

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/Reference;->fieldBinding()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v2

    if-eqz v2, :cond_c

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/16 v4, 0x33

    if-ne v3, v4, :cond_c

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->getRetentionPolicy([C)J

    move-result-wide v5

    goto :goto_4

    :pswitch_3
    const-wide/high16 v5, 0x2000000000000L

    goto :goto_4

    :pswitch_4
    const-wide/high16 v5, 0x1000000000000L

    goto :goto_4

    :pswitch_5
    const-wide v5, 0x800000000000L

    goto :goto_4

    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v2

    iget-wide v4, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v6, 0x350000

    cmp-long v2, v4, v6

    if-ltz v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->memberValuePairs()[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    move-result-object v2

    array-length v4, v2

    :goto_2
    if-lt v3, v4, :cond_5

    goto :goto_3

    :cond_5
    aget-object v5, v2, v3

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->name:[C

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->FOR_REMOVAL:[C

    invoke-static {v6, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v2, v5, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/TrueLiteral;

    if-eqz v2, :cond_7

    const-wide v5, 0x4000400000000000L    # 2.03125

    goto :goto_4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    const-wide v5, 0x400000000000L

    goto :goto_4

    :cond_8
    const-wide/high16 v5, 0x1000000000000000L

    goto :goto_4

    :cond_9
    const-wide/high16 v5, 0x800000000000000L

    goto :goto_4

    :cond_a
    const-wide/high16 v5, 0x10000000000000L

    goto :goto_4

    :cond_b
    const-wide/high16 v5, 0x8000000000000L

    :cond_c
    :goto_4
    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasNullBit(I)Z

    move-result v2

    if-eqz v2, :cond_e

    const-wide/high16 v0, 0x80000000000000L

    :goto_5
    or-long/2addr v5, v0

    :cond_d
    move-object/from16 v2, p0

    goto :goto_6

    :cond_e
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasNullBit(I)Z

    move-result v2

    if-eqz v2, :cond_f

    const-wide/high16 v0, 0x100000000000000L

    goto :goto_5

    :cond_f
    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasNullBit(I)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v2, p0

    invoke-direct {v2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->determineNonNullByDefaultTagBits(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;)J

    move-result-wide v0

    or-long/2addr v5, v0

    :goto_6
    return-wide v5

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private determineNonNullByDefaultTagBits(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;)J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->compilerElementPair:Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    if-eqz p2, :cond_2

    iget-object v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->methods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p2

    if-eqz p2, :cond_1

    array-length v3, p2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v2, 0x0

    aget-object p2, p2, v2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->getDefaultValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x38

    :cond_2
    :goto_0
    instance-of p2, v2, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;

    if-eqz p2, :cond_4

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x38

    goto :goto_1

    :cond_3
    const/4 p1, 0x2

    :goto_1
    int-to-long p1, p1

    or-long/2addr v0, p1

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->nullLocationBitsFromAnnotationValue(Ljava/lang/Object;)I

    move-result p1

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->evaluateTypeQualifierDefault(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)I

    move-result p1

    if-eqz p1, :cond_6

    int-to-long p1, p1

    return-wide p1

    :cond_6
    :goto_2
    return-wide v0
.end method

.method private static evaluateDefaultNullnessLocation(Ljava/lang/Object;)I
    .locals 2

    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    goto :goto_1

    :cond_0
    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/env/EnumConstantSignature;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/env/EnumConstantSignature;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/env/EnumConstantSignature;->getEnumConstantName()[C

    move-result-object p0

    goto :goto_1

    :cond_1
    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair$UnresolvedEnumConstant;

    if-eqz v0, :cond_2

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair$UnresolvedEnumConstant;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair$UnresolvedEnumConstant;->getEnumConstantName()[C

    move-result-object p0

    goto :goto_1

    :cond_2
    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;

    if-eqz v0, :cond_4

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 p0, 0x38

    goto :goto_0

    :cond_3
    const/4 p0, 0x2

    :goto_0
    return p0

    :cond_4
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_9

    array-length v0, p0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_8

    const/16 v1, 0xd

    if-eq v0, v1, :cond_7

    const/16 v1, 0xe

    if-eq v0, v1, :cond_5

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->DEFAULT_LOCATION__RETURN_TYPE:[C

    invoke-static {p0, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p0

    if-eqz p0, :cond_9

    const/16 p0, 0x10

    return p0

    :pswitch_1
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->DEFAULT_LOCATION__TYPE_BOUND:[C

    invoke-static {p0, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p0

    if-eqz p0, :cond_9

    const/16 p0, 0x100

    return p0

    :pswitch_2
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->DEFAULT_LOCATION__PARAMETER:[C

    invoke-static {p0, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p0

    if-eqz p0, :cond_9

    const/16 p0, 0x8

    return p0

    :cond_5
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->DEFAULT_LOCATION__TYPE_PARAMETER:[C

    invoke-static {p0, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 p0, 0x80

    return p0

    :cond_6
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->DEFAULT_LOCATION__ARRAY_CONTENTS:[C

    invoke-static {p0, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p0

    if-eqz p0, :cond_9

    const/16 p0, 0x200

    return p0

    :cond_7
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->DEFAULT_LOCATION__TYPE_ARGUMENT:[C

    invoke-static {p0, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p0

    if-eqz p0, :cond_9

    const/16 p0, 0x40

    return p0

    :cond_8
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->DEFAULT_LOCATION__FIELD:[C

    invoke-static {p0, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p0

    if-eqz p0, :cond_9

    const/16 p0, 0x20

    return p0

    :cond_9
    :goto_2
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static evaluateElementTypeNullnessLocation(Ljava/lang/Object;)I
    .locals 2

    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/env/EnumConstantSignature;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/env/EnumConstantSignature;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/env/EnumConstantSignature;->getEnumConstantName()[C

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair$UnresolvedEnumConstant;

    if-eqz v0, :cond_2

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair$UnresolvedEnumConstant;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair$UnresolvedEnumConstant;->getEnumConstantName()[C

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_6

    array-length v0, p0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    goto :goto_1

    :cond_3
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_PARAMETER:[C

    invoke-static {p0, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p0

    if-eqz p0, :cond_6

    const/16 p0, 0x8

    return p0

    :cond_4
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_METHOD:[C

    invoke-static {p0, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p0

    if-eqz p0, :cond_6

    const/16 p0, 0x10

    return p0

    :cond_5
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_FIELD:[C

    invoke-static {p0, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p0

    if-eqz p0, :cond_6

    const/16 p0, 0x20

    return p0

    :cond_6
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method private static getAnnotationRetention(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)J
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getAnnotationTagBits()J

    move-result-wide v0

    const-wide v2, 0x300000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-wide v0, 0x200000000000L

    :goto_0
    return-wide v0
.end method

.method public static getLocations(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)[I
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;

    invoke-direct {v1, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-object p0, v1, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->typePathEntries:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    iget-object p0, v1, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->typePathEntries:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    mul-int/lit8 p1, p0, 0x2

    new-array p1, p1, [I

    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    :goto_0
    if-lt v2, p0, :cond_2

    return-object p1

    :cond_2
    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1LocationCollector;->typePathEntries:Ljava/util/Stack;

    invoke-virtual {v4, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    add-int/lit8 v5, v3, 0x1

    aget v6, v4, v0

    aput v6, p1, v3

    add-int/lit8 v3, v3, 0x2

    const/4 v6, 0x1

    aget v4, v4, v6

    aput v4, p1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getRetentionName(J)Ljava/lang/String;
    .locals 4

    const-wide v0, 0x300000000000L

    and-long v2, p0, v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/String;

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_RUNTIME:[C

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_0
    const-wide v0, 0x100000000000L

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/String;

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_SOURCE:[C

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/String;

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_CLASS:[C

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static getRetentionPolicy([C)J
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_4

    array-length v2, p0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    aget-char v2, p0, v2

    const/16 v3, 0x43

    if-eq v2, v3, :cond_3

    const/16 v3, 0x52

    if-eq v2, v3, :cond_2

    const/16 v3, 0x53

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_SOURCE:[C

    invoke-static {p0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p0

    if-eqz p0, :cond_4

    const-wide v0, 0x100000000000L

    return-wide v0

    :cond_2
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_RUNTIME:[C

    invoke-static {p0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p0

    if-eqz p0, :cond_4

    const-wide v0, 0x300000000000L

    return-wide v0

    :cond_3
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_CLASS:[C

    invoke-static {p0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p0

    if-eqz p0, :cond_4

    const-wide v0, 0x200000000000L

    :cond_4
    :goto_0
    return-wide v0
.end method

.method public static getTargetElementType([C)J
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_c

    array-length v2, p0

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x0

    aget-char v2, p0, v2

    const/16 v3, 0x41

    if-eq v2, v3, :cond_b

    const/16 v3, 0x43

    if-eq v2, v3, :cond_a

    const/16 v3, 0x46

    if-eq v2, v3, :cond_9

    const/16 v3, 0x50

    if-eq v2, v3, :cond_7

    const/16 v3, 0x54

    if-eq v2, v3, :cond_4

    const/16 v3, 0x4c

    if-eq v2, v3, :cond_3

    const/16 v3, 0x4d

    if-eq v2, v3, :cond_1

    goto/16 :goto_0

    :cond_1
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_METHOD:[C

    invoke-static {p0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide v0, 0x4000000000L

    return-wide v0

    :cond_2
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_MODULE:[C

    invoke-static {p0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p0

    if-eqz p0, :cond_c

    const-wide/high16 v0, 0x2000000000000000L

    return-wide v0

    :cond_3
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_LOCAL_VARIABLE:[C

    invoke-static {p0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p0

    if-eqz p0, :cond_c

    const-wide v0, 0x20000000000L

    return-wide v0

    :cond_4
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->TYPE:[C

    invoke-static {p0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_5

    const-wide v0, 0x1000000000L

    return-wide v0

    :cond_5
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->TYPE_USE_TARGET:[C

    invoke-static {p0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_6

    const-wide/high16 v0, 0x20000000000000L

    return-wide v0

    :cond_6
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->TYPE_PARAMETER_TARGET:[C

    invoke-static {p0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p0

    if-eqz p0, :cond_c

    const-wide/high16 v0, 0x40000000000000L

    return-wide v0

    :cond_7
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_PARAMETER:[C

    invoke-static {p0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_8

    const-wide v0, 0x8000000000L

    return-wide v0

    :cond_8
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_PACKAGE:[C

    invoke-static {p0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p0

    if-eqz p0, :cond_c

    const-wide v0, 0x80000000000L

    return-wide v0

    :cond_9
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_FIELD:[C

    invoke-static {p0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p0

    if-eqz p0, :cond_c

    const-wide v0, 0x2000000000L

    return-wide v0

    :cond_a
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_CONSTRUCTOR:[C

    invoke-static {p0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p0

    if-eqz p0, :cond_c

    const-wide v0, 0x10000000000L

    return-wide v0

    :cond_b
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_ANNOTATION_TYPE:[C

    invoke-static {p0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p0

    if-eqz p0, :cond_c

    const-wide v0, 0x40000000000L

    :cond_c
    :goto_0
    return-wide v0
.end method

.method public static isAnnotationTargetAllowed(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;
    .locals 6

    .line 48
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->getAnnotationTagBits()J

    move-result-wide v4

    const-wide v0, 0x20600ff800000000L    # 9.583895004233563E-153

    and-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/16 p2, 0x1004

    if-eq p3, p2, :cond_0

    const/16 p2, 0x4004

    if-ne p3, p2, :cond_1

    .line 49
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->explitAnnotationTargetRequired(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    .line 50
    :cond_1
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;->YES:Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    return-object p0

    :cond_2
    const-wide v0, 0xff000000000L

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const-wide/high16 v0, 0x60000000000000L

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 51
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v2, 0x340000

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    const/4 v0, 0x1

    if-eq p3, v0, :cond_3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_3

    const/4 v0, 0x4

    if-eq p3, v0, :cond_3

    const/16 v0, 0x8

    if-eq p3, v0, :cond_3

    const/16 v0, 0x10

    if-eq p3, v0, :cond_3

    const/16 v0, 0x804

    if-eq p3, v0, :cond_3

    goto :goto_0

    .line 52
    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidUsageOfTypeAnnotations(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    .line 53
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->recipient:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->isAnnotationTargetAllowed(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IJ)Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    move-result-object p0

    return-object p0
.end method

.method private static isAnnotationTargetAllowed(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IJ)Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;
    .locals 9

    const/4 v0, 0x1

    const-wide/high16 v1, 0x20000000000000L

    const-wide/16 v3, 0x0

    if-eq p3, v0, :cond_14

    const/4 v0, 0x2

    if-eq p3, v0, :cond_d

    const/4 p2, 0x4

    const-wide v5, 0x80000000000L

    if-eq p3, p2, :cond_a

    const/16 p2, 0x8

    if-eq p3, p2, :cond_6

    const/16 p2, 0x10

    if-eq p3, p2, :cond_4

    const/16 p2, 0x40

    if-eq p3, p2, :cond_3

    const/16 p2, 0x804

    if-eq p3, p2, :cond_a

    const/16 p0, 0x1004

    if-eq p3, p0, :cond_2

    const/16 p0, 0x4004

    if-eq p3, p0, :cond_0

    goto/16 :goto_0

    :cond_0
    and-long p2, p4, v1

    cmp-long p0, p2, v3

    if-eqz p0, :cond_1

    .line 1
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;->YES:Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    return-object p0

    .line 2
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object p0

    iget-wide p0, p0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 p2, 0x340000

    cmp-long p0, p0, p2

    if-gez p0, :cond_17

    .line 3
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;->YES:Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    return-object p0

    :cond_2
    const-wide/high16 p0, 0x60000000000000L

    and-long/2addr p0, p4

    cmp-long p0, p0, v3

    if-eqz p0, :cond_17

    .line 4
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;->YES:Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    return-object p0

    :cond_3
    const-wide/high16 p0, 0x2000000000000000L

    and-long/2addr p0, p4

    cmp-long p0, p0, v3

    if-eqz p0, :cond_17

    .line 5
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;->YES:Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    return-object p0

    :cond_4
    and-long p2, p4, v5

    cmp-long p2, p2, v3

    if-eqz p2, :cond_5

    .line 6
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;->YES:Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    return-object p0

    .line 7
    :cond_5
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object p1

    iget-wide p1, p1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 p3, 0x320000

    cmp-long p1, p1, p3

    if-gtz p1, :cond_17

    .line 8
    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    .line 9
    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->PACKAGE_INFO_NAME:[C

    invoke-static {p0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p0

    if-eqz p0, :cond_17

    .line 10
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;->YES:Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    return-object p0

    .line 11
    :cond_6
    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    .line 12
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result p2

    if-eqz p2, :cond_7

    const-wide p0, 0x20010000000000L

    and-long/2addr p0, p4

    cmp-long p0, p0, v3

    if-eqz p0, :cond_17

    .line 13
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;->YES:Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    return-object p0

    :cond_7
    const-wide p2, 0x4000000000L

    and-long/2addr p2, p4

    cmp-long p2, p2, v3

    if-eqz p2, :cond_8

    .line 14
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;->YES:Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    return-object p0

    :cond_8
    and-long p2, p4, v1

    cmp-long p2, p2, v3

    if-eqz p2, :cond_17

    .line 15
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    .line 16
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    invoke-virtual {p2, p0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationOf(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    .line 17
    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->returnType:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->isTypeUseCompatible(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 18
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;->YES:Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    return-object p0

    .line 19
    :cond_9
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;->TYPE_ANNOTATION_ON_QUALIFIED_NAME:Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    return-object p0

    .line 20
    :cond_a
    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isAnnotationType()Z

    move-result p1

    if-eqz p1, :cond_b

    const-wide p0, 0x20041000000000L

    and-long/2addr p0, p4

    cmp-long p0, p0, v3

    if-eqz p0, :cond_17

    .line 21
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;->YES:Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    return-object p0

    :cond_b
    const-wide p1, 0x20001000000000L

    and-long/2addr p1, p4

    cmp-long p1, p1, v3

    if-eqz p1, :cond_c

    .line 22
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;->YES:Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    return-object p0

    :cond_c
    and-long p1, p4, v5

    cmp-long p1, p1, v3

    if-eqz p1, :cond_17

    .line 23
    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->PACKAGE_INFO_NAME:[C

    invoke-static {p0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p0

    if-eqz p0, :cond_17

    .line 24
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;->YES:Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    return-object p0

    .line 25
    :cond_d
    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    .line 26
    iget-wide v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    const-wide/16 v7, 0x400

    and-long/2addr v5, v7

    cmp-long p3, v5, v3

    if-eqz p3, :cond_10

    const-wide p2, 0x8000000000L

    and-long/2addr p2, p4

    cmp-long p2, p2, v3

    if-eqz p2, :cond_e

    .line 27
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;->YES:Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    return-object p0

    :cond_e
    and-long p2, p4, v1

    cmp-long p2, p2, v3

    if-eqz p2, :cond_17

    .line 28
    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->isTypeUseCompatible(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 29
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;->YES:Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    return-object p0

    .line 30
    :cond_f
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;->TYPE_ANNOTATION_ON_QUALIFIED_NAME:Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    return-object p0

    .line 31
    :cond_10
    iget-wide p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide v5, 0x20000000000L

    and-long/2addr p2, v5

    cmp-long p2, p2, v3

    if-eqz p2, :cond_11

    .line 32
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;->YES:Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    return-object p0

    :cond_11
    and-long p2, p4, v1

    cmp-long p2, p2, v3

    if-eqz p2, :cond_17

    .line 33
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->isTypeNameVar(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 34
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;->NO:Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    return-object p0

    .line 35
    :cond_12
    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->isTypeUseCompatible(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 36
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;->YES:Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    return-object p0

    .line 37
    :cond_13
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;->TYPE_ANNOTATION_ON_QUALIFIED_NAME:Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    return-object p0

    :cond_14
    const-wide p2, 0x2000000000L

    and-long/2addr p2, p4

    cmp-long p2, p2, v3

    if-eqz p2, :cond_15

    .line 38
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;->YES:Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    return-object p0

    :cond_15
    and-long p2, p4, v1

    cmp-long p2, p2, v3

    if-eqz p2, :cond_17

    .line 39
    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    .line 40
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    .line 41
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    invoke-virtual {p2, p0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationOf(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    move-result-object p0

    .line 42
    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->isTypeUseCompatible(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 43
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;->YES:Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    return-object p0

    .line 44
    :cond_16
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;->TYPE_ANNOTATION_ON_QUALIFIED_NAME:Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    return-object p0

    .line 45
    :cond_17
    :goto_0
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;->NO:Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    return-object p0
.end method

.method public static isAnnotationTargetAllowed(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Z
    .locals 7

    .line 46
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->getAnnotationTagBits()J

    move-result-wide v4

    const-wide v0, 0x20600ff800000000L    # 9.583895004233563E-153

    and-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v6, 0x1

    if-nez v0, :cond_0

    return v6

    .line 47
    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->kind()I

    move-result v3

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->isAnnotationTargetAllowed(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IJ)Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    move-result-object p0

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;->YES:Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    if-ne p0, p1, :cond_1

    return v6

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isTypeUseCompatible(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V
    .locals 9

    if-eqz p2, :cond_9

    if-eqz p0, :cond_9

    .line 4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getAnnotatableLevels()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_4

    .line 5
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v2, 0x340000

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez p0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_9

    .line 7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_4

    .line 8
    :cond_3
    array-length v0, p2

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v0, :cond_4

    return-void

    .line 9
    :cond_4
    aget-object v2, p2, v1

    .line 10
    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->getAnnotationTagBits()J

    move-result-wide v3

    const-wide/high16 v5, 0x20000000000000L

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_8

    const-wide v5, 0xff000000000L

    and-long/2addr v3, v5

    cmp-long v3, v3, v7

    if-nez v3, :cond_8

    .line 11
    move-object v3, p0

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 12
    :goto_2
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    .line 13
    :cond_5
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 14
    filled-new-array {v2}, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v2

    invoke-static {p1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->rejectAnnotationsOnStaticMemberQualififer(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    goto :goto_3

    :cond_6
    const/16 v4, 0x60

    .line 15
    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->hasNullBit(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 16
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->nullAnnotationAtQualifyingType(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    goto :goto_3

    .line 17
    :cond_7
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    goto :goto_2

    :cond_8
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    :goto_4
    return-void
.end method

.method public static isTypeUseCompatible(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getPackage([[C)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object p0

    .line 3
    instance-of p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static nullLocationBitsFromAnnotationValue(Ljava/lang/Object;)I
    .locals 4

    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    array-length p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    array-length v1, v0

    const/4 p0, 0x0

    move v2, p0

    :goto_0
    if-lt p0, v1, :cond_1

    return v2

    :cond_1
    aget-object v3, v0, p0

    invoke-static {v3}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->evaluateDefaultNullnessLocation(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->evaluateDefaultNullnessLocation(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static nullLocationBitsFromElementTypeAnnotationValue(Ljava/lang/Object;)I
    .locals 4

    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    array-length p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    array-length v1, v0

    const/4 p0, 0x0

    move v2, p0

    :goto_0
    if-lt p0, v1, :cond_1

    return v2

    :cond_1
    aget-object v3, v0, p0

    invoke-static {v3}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->evaluateElementTypeNullnessLocation(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->evaluateElementTypeNullnessLocation(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public checkRepeatableMetaAnnotation(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->recipient:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->memberValuePairs()[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    move-result-object v1

    if-eqz v1, :cond_3

    array-length v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    aget-object v3, v1, v2

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->compilerElementPair:Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;->value:Ljava/lang/Object;

    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v4, :cond_1

    return-void

    :cond_1
    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isAnnotationType()Z

    move-result v4

    if-nez v4, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->setContainerAnnotationType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    aget-object v1, v1, v2

    invoke-static {v1, p1, v3, v0, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->checkContainerAnnotationType(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public computeElementValuePairs()[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ELEMENT_VALUE_PAIRS:[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    return-object v0
.end method

.method public getCompilerAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->compilerAnnotation:Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    return-object v0
.end method

.method public getPersistibleAnnotation()Lorg/eclipse/jdt/internal/compiler/ast/Annotation;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->persistibleAnnotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    return-object v0
.end method

.method public handleNonNullByDefault(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)J
    .locals 14

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isAnnotationType()Z

    move-result v3

    if-nez v3, :cond_2

    return-wide v1

    :cond_2
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/16 v3, 0x80

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasNullBit(I)Z

    move-result v3

    if-nez v3, :cond_3

    return-wide v1

    :cond_3
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->methods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->memberValuePairs()[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    move-result-object v2

    array-length v3, v2

    array-length v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v5

    :goto_0
    if-lt v7, v4, :cond_4

    invoke-direct {p0, v0, v6}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->determineNonNullByDefaultTagBits(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;)J

    move-result-wide v0

    const-wide/16 v2, 0x3fa

    and-long/2addr v0, v2

    long-to-int p1, v0

    int-to-long v0, p1

    return-wide v0

    :cond_4
    aget-object v8, v1, v7

    iget-object v9, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    move v10, v5

    :goto_1
    if-lt v10, v3, :cond_5

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    aget-object v11, v2, v10

    if-nez v11, :cond_6

    goto :goto_2

    :cond_6
    iget-object v12, v11, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->name:[C

    invoke-static {v12, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v13

    if-eqz v13, :cond_7

    if-nez v6, :cond_7

    sget-object v13, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->VALUE:[C

    invoke-static {v12, v13}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v12

    if-eqz v12, :cond_7

    iput-object v8, v11, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v6, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v11, p1, v6}, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->resolveTypeExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    move-object v6, v11

    :cond_7
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method

.method public hasNullBit(I)Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasNullBit(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isRuntimeInvisible()Z
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->getAnnotationTagBits()J

    move-result-wide v2

    const-wide/high16 v4, 0x60000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    const-wide v4, 0xff000000000L

    and-long/2addr v4, v2

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    return v1

    :cond_1
    const-wide v4, 0x300000000000L

    and-long/2addr v2, v4

    cmp-long v0, v2, v6

    const/4 v4, 0x1

    if-nez v0, :cond_2

    return v4

    :cond_2
    const-wide v5, 0x200000000000L

    cmp-long v0, v2, v5

    if-nez v0, :cond_3

    return v4

    :cond_3
    return v1
.end method

.method public isRuntimeTypeInvisible()Z
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->getAnnotationTagBits()J

    move-result-wide v2

    const-wide v4, 0x20600ff800000000L    # 9.583895004233563E-153

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    return v1

    :cond_1
    const-wide/high16 v4, 0x60000000000000L

    and-long/2addr v4, v2

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    return v1

    :cond_2
    const-wide v4, 0x300000000000L

    and-long/2addr v2, v4

    cmp-long v0, v2, v6

    const/4 v4, 0x1

    if-nez v0, :cond_3

    return v4

    :cond_3
    const-wide v5, 0x200000000000L

    cmp-long v0, v2, v5

    if-nez v0, :cond_4

    return v4

    :cond_4
    return v1
.end method

.method public isRuntimeTypeVisible()Z
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->getAnnotationTagBits()J

    move-result-wide v2

    const-wide v4, 0x20600ff800000000L    # 9.583895004233563E-153

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    return v1

    :cond_1
    const-wide/high16 v4, 0x60000000000000L

    and-long/2addr v4, v2

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    return v1

    :cond_2
    const-wide v4, 0x300000000000L

    and-long/2addr v2, v4

    cmp-long v0, v2, v6

    if-nez v0, :cond_3

    return v1

    :cond_3
    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    return v1
.end method

.method public isRuntimeVisible()Z
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->getAnnotationTagBits()J

    move-result-wide v2

    const-wide/high16 v4, 0x60000000000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    const-wide v4, 0xff000000000L

    and-long/2addr v4, v2

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    return v1

    :cond_1
    const-wide v4, 0x300000000000L

    and-long/2addr v2, v4

    cmp-long v0, v2, v6

    if-nez v0, :cond_2

    return v1

    :cond_2
    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    return v1
.end method

.method public abstract memberValuePairs()[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;
.end method

.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    const/16 p1, 0x40

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public recordSuppressWarnings(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;IIZ)V
    .locals 11

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->memberValuePairs()[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-lt v3, v1, :cond_0

    goto :goto_2

    :cond_0
    aget-object v5, v0, v3

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->name:[C

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->VALUE:[C

    invoke-static {v6, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v0, v5, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    const/16 v3, 0xb

    if-eqz v1, :cond_6

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->expressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_1

    array-length v1, v0

    :goto_1
    if-lt v2, v1, :cond_2

    :cond_1
    :goto_2
    move-object v6, v4

    goto :goto_4

    :cond_2
    aget-object v5, v0, v2

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v5, v6, :cond_5

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->typeID()I

    move-result v6

    if-ne v6, v3, :cond_5

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->warningTokenToIrritants(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    move-result-object v5

    if-eqz v5, :cond_4

    if-nez v4, :cond_3

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    invoke-direct {v4, v5}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;-><init>(Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->set(Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    move-result-object v5

    if-nez v5, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unusedWarningToken(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unhandledWarningToken(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v1, v2, :cond_1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->typeID()I

    move-result v2

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->warningTokenToIrritants(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    invoke-direct {v4, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;-><init>(Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unhandledWarningToken(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    goto :goto_2

    :goto_4
    if-eqz p4, :cond_8

    if-eqz v6, :cond_8

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceContext()Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    move-result-object v10

    move-object v7, p0

    move v8, p2

    move v9, p3

    invoke-virtual/range {v5 .. v10}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->recordSuppressWarnings(Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;Lorg/eclipse/jdt/internal/compiler/ast/Annotation;IILorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;)V

    :cond_8
    return-void

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 23

    move-object/from16 v7, p0

    move-object/from16 v6, p1

    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->compilerAnnotation:Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    if-eqz v0, :cond_0

    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v0, v6}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    iget-object v3, v7, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    iput-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v1

    :cond_1
    iput-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isAnnotationType()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    iget-object v3, v7, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v2, v0, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->notAnnotationType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-object v1

    :cond_3
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-object v8, v0

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->methods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->memberValuePairs()[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    if-lez v4, :cond_4

    new-array v9, v4, [Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    invoke-static {v3, v5, v9, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v9

    :cond_4
    array-length v9, v0

    move-object v11, v1

    move v10, v5

    :goto_0
    if-lt v10, v9, :cond_22

    move v0, v5

    :goto_1
    if-lt v0, v4, :cond_1f

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->computeElementValuePairs()[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotation(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v0

    iput-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->compilerAnnotation:Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    invoke-direct {v7, v6, v8, v11}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->detectStandardAnnotation(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;)J

    move-result-wide v9

    const-wide/16 v0, 0x3fa

    and-long/2addr v0, v9

    long-to-int v3, v0

    const-wide/16 v0, -0x3fb

    and-long/2addr v0, v9

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v4

    const-wide v11, 0x400000000000L

    and-long/2addr v11, v9

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-eqz v11, :cond_5

    iget-wide v11, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v15, 0x350000

    cmp-long v11, v11, v15

    if-ltz v11, :cond_5

    iget-boolean v11, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->storeAnnotations:Z

    if-nez v11, :cond_5

    iget-object v11, v7, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->recipient:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    iget-object v12, v7, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->compilerAnnotation:Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    filled-new-array {v12}, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v12

    invoke-virtual {v11, v12, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->setAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Z)V

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v15

    sget-object v16, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->NLS:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    iget v11, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v12, v7, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->declarationSourceEnd:I

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceContext()Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    move-result-object v20

    const/16 v17, 0x0

    move/from16 v18, v11

    move/from16 v19, v12

    invoke-virtual/range {v15 .. v20}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->recordSuppressWarnings(Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;Lorg/eclipse/jdt/internal/compiler/ast/Annotation;IILorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;)V

    iget-object v11, v7, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->recipient:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    if-eqz v11, :cond_1e

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->kind()I

    move-result v11

    cmp-long v12, v0, v13

    const/16 v15, 0x10

    const/4 v5, 0x4

    const-wide/high16 v17, 0x180000000000000L

    if-nez v12, :cond_7

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    move v15, v5

    goto/16 :goto_8

    :cond_7
    :goto_3
    const-wide v19, -0x180000000000001L

    const-wide/high16 v21, 0x4000000000000L

    if-eq v11, v2, :cond_18

    const/4 v2, 0x2

    if-eq v11, v2, :cond_16

    if-eq v11, v5, :cond_11

    const/16 v2, 0x8

    if-eq v11, v2, :cond_c

    if-eq v11, v15, :cond_b

    const/16 v2, 0x40

    if-eq v11, v2, :cond_8

    const/16 v2, 0x804

    if-eq v11, v2, :cond_11

    goto :goto_2

    :cond_8
    iget-object v2, v7, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->recipient:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;

    iget-wide v5, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->tagBits:J

    or-long/2addr v0, v5

    iput-wide v0, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->tagBits:J

    and-long v0, v9, v21

    cmp-long v0, v0, v13

    if-eqz v0, :cond_9

    iget-object v0, v2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->declarationSourceEnd:I

    iget-boolean v1, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->suppressWarnings:Z

    move-object/from16 v6, p1

    const/4 v4, 0x0

    invoke-virtual {v7, v6, v4, v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->recordSuppressWarnings(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;IIZ)V

    goto :goto_4

    :cond_9
    move-object/from16 v6, p1

    :goto_4
    iget v0, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->defaultNullness:I

    or-int/2addr v0, v3

    iput v0, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->defaultNullness:I

    :cond_a
    :goto_5
    const/4 v15, 0x4

    goto/16 :goto_8

    :cond_b
    iget-object v2, v7, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->recipient:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-wide v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->tagBits:J

    or-long/2addr v0, v3

    iput-wide v0, v2, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->tagBits:J

    goto :goto_5

    :cond_c
    iget-object v2, v7, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->recipient:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-wide v12, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    or-long/2addr v0, v12

    iput-wide v0, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    and-long v0, v9, v21

    const-wide/16 v12, 0x0

    cmp-long v0, v0, v12

    if-eqz v0, :cond_d

    iget-object v0, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationOf(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v0

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    iget-boolean v12, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->suppressWarnings:Z

    invoke-virtual {v7, v6, v1, v0, v12}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->recordSuppressWarnings(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;IIZ)V

    :cond_d
    iget-wide v0, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    and-long v0, v0, v17

    cmp-long v12, v0, v17

    if-nez v12, :cond_e

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v12

    invoke-virtual {v12, v7}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->contradictoryNullAnnotations(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    iget-wide v12, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    and-long v12, v12, v19

    iput-wide v12, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    :cond_e
    const-wide/16 v12, 0x0

    cmp-long v0, v0, v12

    if-eqz v0, :cond_10

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-wide v0, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v12, 0x340000

    cmp-long v0, v0, v12

    if-ltz v0, :cond_f

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->nullAnnotationUnsupportedLocation(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    :cond_f
    iget-wide v0, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    and-long v0, v0, v19

    iput-wide v0, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    :cond_10
    iget v0, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->defaultNullness:I

    or-int/2addr v0, v3

    iput v0, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->defaultNullness:I

    goto :goto_5

    :cond_11
    iget-object v2, v7, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->recipient:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    const-wide/high16 v12, 0x1000000000000000L

    and-long/2addr v12, v9

    const-wide/16 v19, 0x0

    cmp-long v12, v12, v19

    if-eqz v12, :cond_12

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isAnnotationType()Z

    move-result v12

    if-eqz v12, :cond_13

    :cond_12
    iget-wide v12, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v0, v12

    iput-wide v0, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_13
    and-long v0, v9, v21

    const-wide/16 v12, 0x0

    cmp-long v0, v0, v12

    if-eqz v0, :cond_15

    iget-object v0, v2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    const/4 v12, 0x0

    aget-object v1, v1, v12

    if-ne v1, v0, :cond_14

    move v1, v12

    goto :goto_6

    :cond_14
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    :goto_6
    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    iget-boolean v4, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->suppressWarnings:Z

    invoke-virtual {v7, v6, v1, v0, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->recordSuppressWarnings(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;IIZ)V

    :cond_15
    iget v0, v2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->defaultNullness:I

    or-int/2addr v0, v3

    iput v0, v2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->defaultNullness:I

    goto/16 :goto_5

    :cond_16
    iget-object v2, v7, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->recipient:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-wide v12, v2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    or-long/2addr v0, v12

    iput-wide v0, v2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    and-long v0, v0, v17

    cmp-long v0, v0, v17

    if-nez v0, :cond_17

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->contradictoryNullAnnotations(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    iget-wide v0, v2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    and-long v0, v0, v19

    iput-wide v0, v2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    :cond_17
    and-long v0, v9, v21

    const-wide/16 v12, 0x0

    cmp-long v0, v0, v12

    if-eqz v0, :cond_a

    iget-object v0, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    iget-boolean v2, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->suppressWarnings:Z

    invoke-virtual {v7, v6, v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->recordSuppressWarnings(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;IIZ)V

    goto/16 :goto_5

    :cond_18
    iget-object v2, v7, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->recipient:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-object v12, v2

    check-cast v12, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget-wide v13, v12, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    or-long/2addr v0, v13

    iput-wide v0, v12, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    and-long v0, v9, v21

    const-wide/16 v13, 0x0

    cmp-long v0, v0, v13

    if-eqz v0, :cond_19

    iget-object v0, v12, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    invoke-virtual {v0, v12}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationOf(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    move-result-object v0

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    iget-boolean v2, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->suppressWarnings:Z

    invoke-virtual {v7, v6, v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->recordSuppressWarnings(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;IIZ)V

    :cond_19
    if-eqz v3, :cond_1a

    iget-object v0, v12, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    invoke-virtual {v0, v12}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationOf(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    move-result-object v13

    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    iget v1, v13, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v6, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->localNonNullByDefaultValue(I)I

    move-result v1

    or-int/2addr v1, v3

    iget v2, v13, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->checkRedundantDefaultNullness(II)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v14

    iget-object v1, v13, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget v4, v13, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iget v2, v13, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    move-object/from16 v0, p1

    move/from16 v16, v2

    move v2, v3

    move-object/from16 v3, p0

    const/4 v15, 0x4

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->recordNonNullByDefault(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/compiler/ast/Annotation;II)Z

    if-eqz v14, :cond_1b

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    filled-new-array/range {p0 .. p0}, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v1

    invoke-virtual {v0, v13, v1, v14}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->nullDefaultAnnotationIsRedundant(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    goto :goto_7

    :cond_1a
    const/4 v15, 0x4

    :cond_1b
    :goto_7
    iget-wide v0, v12, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    and-long v0, v0, v17

    cmp-long v0, v0, v17

    if-nez v0, :cond_1c

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->contradictoryNullAnnotations(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    iget-wide v0, v12, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    and-long v0, v0, v19

    iput-wide v0, v12, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    :cond_1c
    :goto_8
    if-ne v11, v15, :cond_1d

    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->recipient:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->PACKAGE_INFO_NAME:[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/16 v3, 0x10

    goto :goto_9

    :cond_1d
    move v3, v11

    :goto_9
    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->recipient:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    and-long v9, v9, v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move-wide v5, v9

    invoke-static/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->checkAnnotationTarget(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/Binding;J)V

    :cond_1e
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0

    :cond_1f
    move v12, v5

    aget-object v5, v3, v0

    if-eqz v5, :cond_21

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    aget-object v9, v3, v0

    invoke-virtual {v5, v8, v9}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->undefinedAnnotationValue(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;)V

    :cond_20
    aget-object v5, v3, v0

    invoke-virtual {v5, v6, v1}, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->resolveTypeExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_21
    add-int/lit8 v0, v0, 0x1

    move v5, v12

    goto/16 :goto_1

    :cond_22
    move v12, v5

    aget-object v5, v0, v10

    iget-object v13, v5, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    move-object v15, v11

    move v11, v12

    move v14, v11

    :goto_a
    if-lt v11, v4, :cond_24

    if-nez v14, :cond_23

    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    const/high16 v11, 0x20000

    and-int/2addr v5, v11

    if-nez v5, :cond_23

    iget v5, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v5, v5, 0x20

    if-nez v5, :cond_23

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    invoke-virtual {v5, v7, v13}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->missingValueForAnnotationMember(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;[C)V

    :cond_23
    move-object v11, v15

    goto :goto_d

    :cond_24
    aget-object v2, v3, v11

    if-nez v2, :cond_26

    :cond_25
    move-object/from16 v19, v0

    move-object v0, v1

    goto/16 :goto_f

    :cond_26
    iget-object v12, v2, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->name:[C

    invoke-static {v12, v13}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v18

    if-eqz v18, :cond_25

    if-nez v15, :cond_27

    sget-object v14, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->VALUE:[C

    invoke-static {v12, v14}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v12

    if-eqz v12, :cond_27

    move-object v12, v2

    goto :goto_b

    :cond_27
    move-object v12, v15

    :goto_b
    iput-object v5, v2, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v14, v5, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2, v6, v14}, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->resolveTypeExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    aput-object v1, v3, v11

    add-int/lit8 v14, v11, 0x1

    move v15, v14

    const/4 v14, 0x0

    :goto_c
    if-lt v15, v4, :cond_29

    if-eqz v14, :cond_28

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    invoke-virtual {v5, v8, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateAnnotationValue(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;)V

    move-object v11, v12

    :goto_d
    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_28
    move-object/from16 v19, v0

    move-object v0, v1

    move-object v15, v12

    const/4 v14, 0x1

    goto :goto_f

    :cond_29
    aget-object v1, v3, v15

    if-nez v1, :cond_2b

    move-object/from16 v19, v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_e

    :cond_2b
    move-object/from16 v19, v0

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->name:[C

    invoke-static {v0, v13}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, v8, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateAnnotationValue(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;)V

    iput-object v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v5, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1, v6, v0}, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->resolveTypeExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    const/4 v0, 0x0

    aput-object v0, v3, v15

    const/4 v14, 0x1

    :goto_e
    add-int/lit8 v15, v15, 0x1

    move-object v1, v0

    move-object/from16 v0, v19

    goto :goto_c

    :goto_f
    add-int/lit8 v11, v11, 0x1

    move-object v1, v0

    move-object/from16 v0, v19

    const/4 v2, 0x1

    const/4 v12, 0x0

    goto/16 :goto_a
.end method

.method public setPersistibleAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/ContainerAnnotation;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->persistibleAnnotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    return-void
.end method

.method public abstract traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
.end method

.method public abstract traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
.end method
