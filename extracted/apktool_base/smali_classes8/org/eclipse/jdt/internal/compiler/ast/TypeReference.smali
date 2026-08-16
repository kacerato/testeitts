.class public abstract Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
.super Lorg/eclipse/jdt/internal/compiler/ast/Expression;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;,
        Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;
    }
.end annotation


# static fields
.field public static final NO_TYPE_ARGUMENTS:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;


# instance fields
.field public annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->NO_TYPE_ARGUMENTS:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    return-void
.end method

.method public static final baseTypeReference(II)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-static {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->baseTypeReference(II[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object p0

    return-object p0
.end method

.method public static final baseTypeReference(II[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 13

    if-nez p1, :cond_0

    const-wide/16 p1, 0x0

    packed-switch p0, :pswitch_data_0

    .line 1
    :pswitch_0
    new-instance p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->LONG:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    invoke-direct {p0, v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;-><init>([CJ)V

    return-object p0

    .line 2
    :pswitch_1
    new-instance p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    invoke-direct {p0, v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;-><init>([CJ)V

    return-object p0

    .line 3
    :pswitch_2
    new-instance p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->FLOAT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    invoke-direct {p0, v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;-><init>([CJ)V

    return-object p0

    .line 4
    :pswitch_3
    new-instance p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->DOUBLE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    invoke-direct {p0, v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;-><init>([CJ)V

    return-object p0

    .line 5
    :pswitch_4
    new-instance p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    invoke-direct {p0, v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;-><init>([CJ)V

    return-object p0

    .line 6
    :pswitch_5
    new-instance p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BOOLEAN:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    invoke-direct {p0, v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;-><init>([CJ)V

    return-object p0

    .line 7
    :pswitch_6
    new-instance p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->SHORT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    invoke-direct {p0, v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;-><init>([CJ)V

    return-object p0

    .line 8
    :pswitch_7
    new-instance p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BYTE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    invoke-direct {p0, v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;-><init>([CJ)V

    return-object p0

    .line 9
    :pswitch_8
    new-instance p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->CHAR:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    invoke-direct {p0, v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;-><init>([CJ)V

    return-object p0

    :cond_0
    packed-switch p0, :pswitch_data_1

    .line 10
    :pswitch_9
    new-instance p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->LONG:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    const-wide/16 v5, 0x0

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;-><init>([CI[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;J)V

    return-object p0

    .line 11
    :pswitch_a
    new-instance p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    const-wide/16 v11, 0x0

    move-object v7, p0

    move v9, p1

    move-object v10, p2

    invoke-direct/range {v7 .. v12}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;-><init>([CI[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;J)V

    return-object p0

    .line 12
    :pswitch_b
    new-instance p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->FLOAT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;-><init>([CI[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;J)V

    return-object p0

    .line 13
    :pswitch_c
    new-instance p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->DOUBLE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    const-wide/16 v10, 0x0

    move-object v6, p0

    move v8, p1

    move-object v9, p2

    invoke-direct/range {v6 .. v11}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;-><init>([CI[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;J)V

    return-object p0

    .line 14
    :pswitch_d
    new-instance p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;-><init>([CI[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;J)V

    return-object p0

    .line 15
    :pswitch_e
    new-instance p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BOOLEAN:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    const-wide/16 v10, 0x0

    move-object v6, p0

    move v8, p1

    move-object v9, p2

    invoke-direct/range {v6 .. v11}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;-><init>([CI[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;J)V

    return-object p0

    .line 16
    :pswitch_f
    new-instance p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->SHORT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;-><init>([CI[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;J)V

    return-object p0

    .line 17
    :pswitch_10
    new-instance p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BYTE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    const-wide/16 v10, 0x0

    move-object v6, p0

    move v8, p1

    move-object v9, p2

    invoke-direct/range {v6 .. v11}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;-><init>([CI[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;J)V

    return-object p0

    .line 18
    :pswitch_11
    new-instance p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->CHAR:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;-><init>([CI[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;J)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_9
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public static containsNullAnnotation([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    move v1, v0

    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, p0, v1

    if-eqz v2, :cond_1

    const/16 v3, 0x60

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->hasNullBit(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method


# virtual methods
.method public aboutToResolve(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
    .locals 0

    return-void
.end method

.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 0

    return-object p3
.end method

.method public abstract augmentTypeWithAdditionalDimensions(I[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Z)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
.end method

.method public checkBounds(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
    .locals 0

    return-void
.end method

.method public checkIllegalNullAnnotation(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;->LEAF_TYPE:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->hasNullTypeAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v3, 0x180000000000000L

    and-long/2addr v1, v3

    invoke-virtual {p1, p0, v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalAnnotationForBaseType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;J)V

    :cond_0
    return-void
.end method

.method public checkIllegalNullAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V
    .locals 3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->usesNullTypeAnnotations()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v1, p2, v0

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->checkIllegalNullAnnotation(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public checkNullConstraints(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V
    .locals 8

    if-eqz p3, :cond_0

    array-length v0, p3

    if-le v0, p4, :cond_0

    aget-object p3, p3, p4

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasNullTypeAnnotations()Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v6, 0x0

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;->BOUND_CHECK:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

    const/4 v3, 0x0

    const/4 v5, -0x1

    move-object v1, p3

    move-object v4, p2

    invoke-static/range {v1 .. v7}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->analyse(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;ILorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;)Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

    move-result-object p2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->isAnyMismatch()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p2

    iget-object p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2, p3, p4, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->nullityMismatchTypeArgument(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->checkIllegalNullAnnotation(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    return-void
.end method

.method public dimensions()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public extraDimensions()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public findAnnotation(J)Lorg/eclipse/jdt/internal/compiler/ast/Annotation;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v0, :cond_3

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    const-wide/high16 v1, 0x100000000000000L

    cmp-long p1, p1, v1

    if-nez p1, :cond_0

    const/16 p1, 0x20

    goto :goto_0

    :cond_0
    const/16 p1, 0x40

    :goto_0
    const/4 p2, 0x0

    :goto_1
    array-length v1, v0

    if-lt p2, v1, :cond_1

    goto :goto_2

    :cond_1
    aget-object v1, v0, p2

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->hasNullBit(I)Z

    move-result v1

    if-eqz v1, :cond_2

    aget-object p1, v0, p2

    return-object p1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAllAnnotationContexts(IIILjava/util/List;)V
    .locals 7

    .line 18
    new-instance v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;IIILjava/util/List;)V

    const/4 p1, 0x0

    .line 19
    invoke-virtual {p0, v6, p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method

.method public getAllAnnotationContexts(IILjava/util/List;)V
    .locals 1

    .line 5
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;IILjava/util/List;)V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method

.method public getAllAnnotationContexts(IILjava/util/List;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V
    .locals 2

    .line 7
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;IILjava/util/List;)V

    const/4 p1, 0x0

    if-nez p4, :cond_0

    move p2, p1

    goto :goto_0

    .line 8
    :cond_0
    array-length p2, p4

    :goto_0
    const/4 p3, 0x0

    if-lt p1, p2, :cond_1

    .line 9
    invoke-virtual {p0, v0, p3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void

    .line 10
    :cond_1
    aget-object v1, p4, p1

    .line 11
    invoke-virtual {v1, v0, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public getAllAnnotationContexts(IILjava/util/List;[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;I)V
    .locals 8

    .line 12
    new-instance v7, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;IILjava/util/List;[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;I)V

    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, v7, p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    if-eqz p4, :cond_3

    .line 14
    array-length p2, p4

    const/4 p3, 0x0

    move p5, p3

    :goto_0
    if-lt p5, p2, :cond_0

    goto :goto_3

    .line 15
    :cond_0
    aget-object v0, p4, p5

    if-eqz v0, :cond_2

    .line 16
    array-length v1, v0

    move v2, p3

    :goto_1
    if-lt v2, v1, :cond_1

    goto :goto_2

    .line 17
    :cond_1
    aget-object v3, v0, v2

    invoke-virtual {v3, v7, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    return-void
.end method

.method public getAllAnnotationContexts(ILjava/util/List;)V
    .locals 1

    .line 20
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;

    invoke-direct {v0, p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;ILjava/util/List;)V

    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method

.method public getAllAnnotationContexts(I)[Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;

    invoke-direct {v1, p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;ILjava/util/List;)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/eclipse/jdt/internal/compiler/codegen/AnnotationContext;

    return-object p1
.end method

.method public getAnnotatableLevels()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAnnotationsOnDimensions()[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getAnnotationsOnDimensions(Z)[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotationsOnDimensions(Z)[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract getLastToken()[C
.end method

.method public getMergedAnnotationsOnDimensions(I[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;
    .locals 7

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getAnnotationsOnDimensions(Z)[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->dimensions()I

    move-result v2

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    add-int/2addr p1, v2

    new-array v3, p1, [[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    move v5, v4

    :goto_0
    if-lt v5, v2, :cond_1

    goto :goto_1

    :cond_1
    aget-object v6, v1, v5

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p2, :cond_4

    :goto_2
    if-lt v2, p1, :cond_3

    goto :goto_3

    :cond_3
    aget-object v1, p2, v4

    aput-object v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v4, v0

    goto :goto_2

    :cond_4
    :goto_3
    return-object v3
.end method

.method public getParameterizedTypeName()[[C
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object v0

    return-object v0
.end method

.method public getTypeArguments()[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
.end method

.method public abstract getTypeName()[[C
.end method

.method public getTypeReferences()[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 1

    filled-new-array {p0}, [Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v0

    return-object v0
.end method

.method public hasNullTypeAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;)Z
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;->MAIN_TYPE:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;

    const/4 v3, 0x1

    if-ne p1, v2, :cond_0

    array-length p1, v0

    sub-int/2addr p1, v3

    aget-object p1, v0, p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->containsNullAnnotation([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Z

    move-result p1

    return p1

    :cond_0
    array-length p1, v0

    move v2, v1

    :goto_0
    if-lt v2, p1, :cond_1

    goto :goto_1

    :cond_1
    aget-object v4, v0, v2

    invoke-static {v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->containsNullAnnotation([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public internalResolveType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 8

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1

    :cond_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result p2

    if-eq p2, v3, :cond_1

    if-eq p2, v2, :cond_1

    if-eq p2, v1, :cond_1

    return-object v5

    :cond_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->closestMatch()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    if-nez p2, :cond_2

    return-object v5

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

    invoke-virtual {p1, p2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v0, :cond_4

    return-object v5

    :cond_4
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->isTypeNameVar(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->reportVarIsNotAllowedHere(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->reportInvalidType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    :goto_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v7

    if-eq v7, v3, :cond_6

    if-eq v7, v2, :cond_6

    if-eq v7, v1, :cond_6

    return-object v5

    :cond_6
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->closestMatch()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-nez v0, :cond_7

    return-object v5

    :cond_7
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    if-ne v1, v2, :cond_8

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->cannotAllocateVoidArray(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    return-object v5

    :cond_8
    instance-of v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    if-nez v1, :cond_9

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isTypeUseDeprecated(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->reportDeprecatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    :cond_9
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v1

    if-eqz v1, :cond_a

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-nez v1, :cond_a

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v1

    const/high16 v2, 0x20010000

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->getSeverity(I)I

    move-result v1

    const/16 v2, 0x100

    if-eq v1, v2, :cond_a

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->rawTypeReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_a
    if-nez v6, :cond_b

    invoke-virtual {p0, p1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    return-object v0

    :cond_b
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1
.end method

.method public isBaseTypeReference()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isParameterizedTypeReference()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTypeNameVar(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-wide v1, p1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v3, 0x360000

    cmp-long p1, v1, v3

    if-gez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    aget-object p1, p1, v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->VAR:[C

    invoke-static {p1, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public isTypeReference()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isUnionType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVarargs()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isWildcard()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public reportDeprecatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
    .locals 1

    .line 2
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p2

    const v0, 0x7fffffff

    invoke-virtual {p2, p1, p0, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->deprecatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)V

    return-void
.end method

.method public reportDeprecatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p2

    invoke-virtual {p2, p1, p0, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->deprecatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)V

    return-void
.end method

.method public reportInvalidType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
    .locals 1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, p0, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidType(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-void
.end method

.method public reportVarIsNotAllowedHere(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
    .locals 0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->varIsNotAllowedHere(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void
.end method

.method public resolveAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V
    .locals 10

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getAnnotationsOnDimensions()[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x180000000000000L

    if-nez v1, :cond_0

    if-eqz v0, :cond_5

    :cond_0
    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->typeAnnotationsResolutionScope(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->dimensions()I

    move-result v6

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-static {v1, v8, v7}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->resolveAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    if-lez v6, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v8

    invoke-virtual {v8, v7, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object v7

    :cond_1
    iput-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_2
    if-eqz v0, :cond_5

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v1, v0, v7}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->resolveAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v7, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    if-eqz v7, :cond_5

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->nullTagBitsPerDimension:[J

    if-eqz v1, :cond_5

    const/4 v7, 0x0

    :goto_0
    if-lt v7, v6, :cond_3

    goto :goto_1

    :cond_3
    aget-wide v8, v1, v7

    and-long/2addr v8, v4

    cmp-long v8, v8, v4

    if-nez v8, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v8

    aget-object v9, v0, v7

    invoke-virtual {v8, v9}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->contradictoryNullAnnotations([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    aput-wide v2, v1, v7

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_7

    iget-wide v6, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v4, v6

    cmp-long v1, v4, v2

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isWildcard()Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz p2, :cond_7

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->hasDefaultNullnessFor(II)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x100

    if-ne p2, v0, :cond_6

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->implicitObjectBoundNoNullDefault(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNonNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p2

    filled-new-array {p2}, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_7
    :goto_2
    return-void
.end method

.method public resolveSuperType(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 5

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/16 v4, 0x9

    invoke-direct {v0, v2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->reportInvalidType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    :cond_1
    return-object v1

    :cond_2
    return-object v0
.end method

.method public final resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;ZI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;ZI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->internalResolveType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->internalResolveType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public resolveTypeArgument(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    const/4 p2, 0x1

    const/16 p3, 0x40

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;ZI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public resolveTypeArgument(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 10

    .line 2
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    const-wide/32 v0, -0x80001

    const/4 p3, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isHierarchyBeingConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iget-wide v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v4, 0x80000

    and-long v6, v2, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    const/4 p3, 0x1

    :cond_0
    or-long/2addr v2, v4

    .line 5
    iput-wide v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v2, 0x40

    .line 6
    invoke-virtual {p0, p1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_2

    .line 7
    iget-wide v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v0, v2

    iput-wide v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_2
    return-object p1

    :goto_1
    if-eqz p3, :cond_3

    iget-wide v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v0, v2

    iput-wide v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    .line 8
    :cond_3
    throw p1
.end method

.method public setAnnotationsOnDimensions([[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V
    .locals 0

    return-void
.end method

.method public abstract traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
.end method

.method public abstract traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
.end method
