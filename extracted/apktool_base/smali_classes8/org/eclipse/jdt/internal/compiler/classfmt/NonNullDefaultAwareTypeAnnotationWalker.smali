.class public Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;
.super Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;
.source "SourceFile"


# instance fields
.field private final atDefaultLocation:Z

.field private final atTypeBound:Z

.field private final currentArrayContentIsNonNull:Z

.field private final defaultNullness:I

.field private final environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

.field private final isEmpty:Z

.field private nextArrayContentIsNonNull:Z

.field private nextIsDefaultLocation:Z

.field private nextIsTypeBound:Z

.field private final nonNullAnnotation:Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;


# direct methods
.method public constructor <init>(ILorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;ZZLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)V
    .locals 4

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 18
    invoke-direct {p0, v3, v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;-><init>([Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;JI)V

    .line 19
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nonNullAnnotation:Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    .line 20
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->defaultNullness:I

    .line 21
    iput-boolean p3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->atDefaultLocation:Z

    .line 22
    iput-boolean p4, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->atTypeBound:Z

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->isEmpty:Z

    .line 24
    iput-object p5, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    .line 25
    iput-boolean p6, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nextArrayContentIsNonNull:Z

    iput-boolean p6, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->currentArrayContentIsNonNull:Z

    return-void
.end method

.method public constructor <init>(ILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 7

    .line 9
    invoke-static {p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->getNonNullAnnotation(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;-><init>(ILorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;ZZLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)V

    return-void
.end method

.method public constructor <init>([Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;ILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;-><init>([Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;)V

    .line 2
    invoke-static {p3}, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->getNonNullAnnotation(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nonNullAnnotation:Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    .line 3
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->defaultNullness:I

    .line 4
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->atDefaultLocation:Z

    .line 6
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->atTypeBound:Z

    .line 7
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->isEmpty:Z

    .line 8
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->currentArrayContentIsNonNull:Z

    return-void
.end method

.method public constructor <init>([Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;JIILorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;ZZLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;-><init>([Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;JI)V

    .line 11
    iput p5, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->defaultNullness:I

    .line 12
    iput-object p6, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nonNullAnnotation:Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    .line 13
    iput-boolean p7, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->atDefaultLocation:Z

    .line 14
    iput-boolean p8, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->atTypeBound:Z

    .line 15
    iput-object p9, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    .line 16
    iput-boolean p10, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nextArrayContentIsNonNull:Z

    iput-boolean p10, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->currentArrayContentIsNonNull:Z

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->isEmpty:Z

    return-void
.end method

.method private static getNonNullAnnotation(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNonNullAnnotationName()[[C

    move-result-object p0

    const/16 v0, 0x2f

    invoke-static {p0, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p0

    const/16 v0, 0x3b

    const/16 v1, 0x4c

    invoke-static {v1, p0, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat(C[CC)[C

    move-result-object p0

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker$1;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker$1;-><init>([C)V

    return-object v0
.end method

.method public static updateWalkerForParamNonNullDefault(Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;ILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 12

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    instance-of p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;

    if-eqz p1, :cond_0

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->matches:J

    iget p0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->pathPtr:I

    invoke-direct {p1, p2, v0, v1, p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;-><init>([Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;JI)V

    return-object p1

    :cond_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;

    instance-of v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;

    if-eqz v1, :cond_3

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->isEmpty:Z

    if-eqz v1, :cond_2

    new-instance p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;-><init>(ILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    return-object p0

    :cond_2
    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nonNullAnnotation:Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    :goto_0
    move-object v7, p0

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->getNonNullAnnotation(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object p0

    goto :goto_0

    :goto_1
    new-instance p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    iget-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->matches:J

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->pathPtr:I

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move v6, p1

    move-object v10, p2

    invoke-direct/range {v1 .. v11}, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;-><init>([Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;JIILorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;ZZLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)V

    return-object p0

    :cond_4
    new-instance p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;-><init>(ILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    :cond_5
    return-object p0
.end method


# virtual methods
.method public getAnnotationsAtCursor(IZ)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->isEmpty:Z

    if-eqz v2, :cond_0

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->getAnnotationsAtCursor(IZ)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v2

    :goto_0
    iget-boolean v3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->atDefaultLocation:Z

    if-nez v3, :cond_1

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->currentArrayContentIsNonNull:Z

    if-eqz p2, :cond_6

    :cond_1
    const/4 p2, -0x1

    if-eq p1, p2, :cond_6

    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->atTypeBound:Z

    if-eqz p2, :cond_2

    if-eq p1, v1, :cond_6

    :cond_2
    if-eqz v2, :cond_5

    array-length p1, v2

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->containsNullTypeAnnotation([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v2

    :cond_4
    array-length p1, v2

    add-int/2addr v1, p1

    new-array p2, v1, [Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    invoke-static {v2, v0, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nonNullAnnotation:Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    aput-object v0, p2, p1

    return-object p2

    :cond_5
    :goto_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nonNullAnnotation:Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    new-array p2, v1, [Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    aput-object p1, p2, v0

    return-object p2

    :cond_6
    return-object v2
.end method

.method public restrict(JI)Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;
    .locals 14

    move-object v1, p0

    const/4 v13, 0x0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->matches:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_0

    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->pathPtr:I

    move/from16 v6, p3

    if-ne v0, v6, :cond_1

    .line 3
    iget-boolean v0, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->atDefaultLocation:Z

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nextIsDefaultLocation:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->atTypeBound:Z

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nextIsTypeBound:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->currentArrayContentIsNonNull:Z

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nextArrayContentIsNonNull:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_1

    .line 4
    iput-boolean v13, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nextIsDefaultLocation:Z

    .line 5
    iput-boolean v13, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nextIsTypeBound:Z

    .line 6
    iput-boolean v0, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nextArrayContentIsNonNull:Z

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    move/from16 v6, p3

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3

    .line 7
    :try_start_1
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    if-eqz v3, :cond_3

    array-length v0, v3

    if-nez v0, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;

    .line 9
    iget v7, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->defaultNullness:I

    iget-object v8, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nonNullAnnotation:Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    iget-boolean v9, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nextIsDefaultLocation:Z

    .line 10
    iget-boolean v10, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nextIsTypeBound:Z

    iget-object v11, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-boolean v12, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nextArrayContentIsNonNull:Z

    move-object v2, v0

    move-wide v4, p1

    move/from16 v6, p3

    .line 11
    invoke-direct/range {v2 .. v12}, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;-><init>([Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;JIILorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;ZZLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :goto_0
    iput-boolean v13, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nextIsDefaultLocation:Z

    .line 13
    iput-boolean v13, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nextIsTypeBound:Z

    .line 14
    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->currentArrayContentIsNonNull:Z

    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nextArrayContentIsNonNull:Z

    return-object v0

    .line 15
    :cond_3
    :goto_1
    :try_start_2
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;

    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->defaultNullness:I

    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nonNullAnnotation:Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    .line 16
    iget-boolean v6, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nextIsDefaultLocation:Z

    iget-boolean v7, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nextIsTypeBound:Z

    iget-object v8, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-boolean v9, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nextArrayContentIsNonNull:Z

    move-object v3, v0

    .line 17
    invoke-direct/range {v3 .. v9}, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;-><init>(ILorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;ZZLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 18
    :goto_2
    iput-boolean v13, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nextIsDefaultLocation:Z

    .line 19
    iput-boolean v13, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nextIsTypeBound:Z

    .line 20
    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->currentArrayContentIsNonNull:Z

    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nextArrayContentIsNonNull:Z

    .line 21
    throw v0
.end method

.method public bridge synthetic restrict(JI)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->restrict(JI)Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;

    move-result-object p1

    return-object p1
.end method

.method public toField()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 3

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->isEmpty:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->matches:J

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->pathPtr:I

    invoke-virtual {p0, v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->restrict(JI)Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->toField()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v0

    return-object v0
.end method

.method public toMethodParameter(S)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 2

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->isEmpty:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->matches:J

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->pathPtr:I

    invoke-virtual {p0, v0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->restrict(JI)Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->toMethodParameter(S)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object p1

    return-object p1
.end method

.method public toMethodReturn()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 3

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->isEmpty:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->matches:J

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->pathPtr:I

    invoke-virtual {p0, v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->restrict(JI)Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->toMethodReturn()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v0

    return-object v0
.end method

.method public toNextArrayDimension()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->defaultNullness:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nextArrayContentIsNonNull:Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nextIsDefaultLocation:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nextIsTypeBound:Z

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->isEmpty:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->matches:J

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->pathPtr:I

    invoke-virtual {p0, v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->restrict(JI)Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->toNextArrayDimension()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v0

    return-object v0
.end method

.method public toNextDetail(I)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 2

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->isEmpty:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->matches:J

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->pathPtr:I

    invoke-virtual {p0, v0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->restrict(JI)Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->toNextDetail(I)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object p1

    return-object p1
.end method

.method public toSupertype(S[C)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->isEmpty:Z

    if-eqz v0, :cond_0

    iget-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->matches:J

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->pathPtr:I

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->restrict(JI)Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->toSupertype(S[C)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object p1

    return-object p1
.end method

.method public toTypeArgument(I)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->defaultNullness:I

    and-int/lit8 v0, v0, 0x40

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nextIsDefaultLocation:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nextIsTypeBound:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nextArrayContentIsNonNull:Z

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->isEmpty:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->matches:J

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->pathPtr:I

    invoke-virtual {p0, v0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->restrict(JI)Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->toTypeArgument(I)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object p1

    return-object p1
.end method

.method public toTypeBound(S)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->defaultNullness:I

    and-int/lit16 v0, v0, 0x100

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nextIsDefaultLocation:Z

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nextIsTypeBound:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nextArrayContentIsNonNull:Z

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->isEmpty:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->matches:J

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->pathPtr:I

    invoke-virtual {p0, v0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->restrict(JI)Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->toTypeBound(S)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object p1

    return-object p1
.end method

.method public toTypeParameter(ZI)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->defaultNullness:I

    and-int/lit16 v0, v0, 0x80

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nextIsDefaultLocation:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nextIsTypeBound:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nextArrayContentIsNonNull:Z

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->isEmpty:Z

    if-eqz v0, :cond_1

    iget-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->matches:J

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->pathPtr:I

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->restrict(JI)Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->toTypeParameter(ZI)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object p1

    return-object p1
.end method

.method public toTypeParameterBounds(ZI)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->defaultNullness:I

    and-int/lit16 v0, v0, 0x100

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nextIsDefaultLocation:Z

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nextIsTypeBound:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nextArrayContentIsNonNull:Z

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->isEmpty:Z

    if-eqz v0, :cond_1

    iget-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->matches:J

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->pathPtr:I

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->restrict(JI)Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->toTypeParameterBounds(ZI)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object p1

    return-object p1
.end method

.method public toWildcardBound()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->defaultNullness:I

    and-int/lit16 v0, v0, 0x100

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nextIsDefaultLocation:Z

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nextIsTypeBound:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->nextArrayContentIsNonNull:Z

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->isEmpty:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->matches:J

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->pathPtr:I

    invoke-virtual {p0, v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->restrict(JI)Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;->toWildcardBound()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v0

    return-object v0
.end method
