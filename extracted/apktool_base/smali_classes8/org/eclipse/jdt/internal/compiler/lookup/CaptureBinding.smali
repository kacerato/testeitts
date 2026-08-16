.class public Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;
.source "SourceFile"


# instance fields
.field public captureID:I

.field public cud:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

.field public end:I

.field public lowerBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field pendingSubstitute:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field public sourceType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

.field public start:I

.field public wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;)V
    .locals 6

    .line 29
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)V

    .line 30
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    .line 31
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->sourceType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->sourceType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 32
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->start:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->start:I

    .line 33
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->end:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->end:I

    .line 34
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->captureID:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->captureID:I

    .line 35
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->lowerBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->lowerBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 36
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-wide v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v4, 0x2000000000000000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    .line 37
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->cud:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->cud:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CIIILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0, p2, v0, v1, p6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    const p2, 0x40000001    # 2.0000002f

    .line 24
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    .line 25
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->sourceType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 26
    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->start:I

    .line 27
    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->end:I

    .line 28
    iput p5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->captureID:I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;IILorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)V
    .locals 2

    .line 1
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_CAPTURE_NAME_PREFIX:[C

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    .line 2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    const v0, 0x40000001    # 2.0000002f

    .line 3
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    .line 4
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    .line 5
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->sourceType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 6
    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->start:I

    .line 7
    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->end:I

    .line 8
    iput p6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->captureID:I

    .line 9
    iget-wide p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v0, 0x2000000000000000L

    or-long/2addr p2, v0

    iput-wide p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    .line 10
    iput-object p5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->cud:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    .line 11
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeAnnotations()Z

    move-result p2

    const-wide/32 p3, 0x100000

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 12
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->clone(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;

    .line 13
    iget-object p5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    invoke-virtual {p5}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->unannotated()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p5

    check-cast p5, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iput-object p5, p2, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    .line 14
    iget-object p5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {p5, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getUnannotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 15
    iget p5, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    iput p5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    .line 16
    iget-object p5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object p5, p5, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeSystem:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    invoke-virtual {p5, p0, p2, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->cacheDerivedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 17
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p2

    iget-object p5, p1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object p5, p5, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean p5, p5, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    invoke-super {p0, p2, p5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setTypeAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Z)V

    .line 18
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasNullTypeAnnotations()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 19
    iget-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr p1, p3

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    goto :goto_0

    .line 20
    :cond_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->computeId(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    .line 21
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasNullTypeAnnotations()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 22
    iget-wide p5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-wide p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v0, 0x180000000000000L

    and-long/2addr p1, v0

    or-long/2addr p1, p3

    or-long/2addr p1, p5

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public clone(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;)V

    return-object p1
.end method

.method public computeUniqueKey(Z)[C
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->sourceType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->computeUniqueKey(Z)[C

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 p1, 0x26

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_CAPTURE:[C

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->computeUniqueKey(Z)[C

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->end:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 p1, 0x3b

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    new-array v2, p1, [C

    invoke-virtual {v0, v1, p1, v2, v1}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    return-object v2
.end method

.method public debugName()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    array-length v3, v1

    :goto_0
    if-lt v2, v3, :cond_1

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_CAPTURE_NAME_PREFIX:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->captureID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_CAPTURE_NAME_SUFFIX:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->debugName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    aget-object v4, v1, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->debugName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public downwardsProjection(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->enterRecursiveProjectionFunction()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 3
    :goto_0
    array-length v2, p2

    if-lt v0, v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    aget-object v2, p2, v0

    invoke-static {p0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->lowerBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->downwardsProjection(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 7
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->exitRecursiveProjectionFunction()V

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v1
.end method

.method public bridge synthetic downwardsProjection(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->downwardsProjection(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    return-object p1
.end method

.method public genericTypeSignature()[C
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    if-eqz v2, :cond_0

    new-array v2, v1, [C

    const/16 v3, 0x4c

    aput-char v3, v2, v0

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_OBJECT:[[C

    const/16 v4, 0x2e

    invoke-static {v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v3

    new-array v1, v1, [C

    const/16 v4, 0x3b

    aput-char v4, v1, v0

    invoke-static {v2, v3, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C[C)[C

    move-result-object v0

    return-object v0

    :cond_0
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->genericTypeSignature()[C

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    return-object v1

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    throw v1
.end method

.method public getDerivedTypesForDeferredInitialization()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeSystem:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getDerivedTypes(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_2

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    array-length v4, v0

    if-lt v2, v4, :cond_0

    array-length v2, v0

    if-ge v3, v2, :cond_2

    new-array v2, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    goto :goto_1

    :cond_0
    aget-object v4, v0, v2

    if-eqz v4, :cond_1

    iget v5, v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v5, v6, :cond_1

    add-int/lit8 v5, v3, 0x1

    aput-object v4, v0, v3

    move v3, v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public initializeBounds(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v3

    iget-wide v3, v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v5, 0x340000

    cmp-long v3, v3, v5

    const/4 v5, 0x1

    if-ltz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->typeVariable()Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v6

    const/4 v7, 0x2

    const-wide/16 v8, 0x0

    const-wide/32 v10, 0x20000000

    const-wide/32 v12, -0x20000001

    if-nez v6, :cond_9

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-eqz v2, :cond_7

    if-eq v2, v5, :cond_2

    if-eq v2, v7, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperInterfaces([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->lowerBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v1, v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v1, v10

    cmp-long v1, v1, v8

    if-nez v1, :cond_8

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v1, v12

    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    goto :goto_5

    :cond_2
    if-eqz v3, :cond_3

    move-object v2, v4

    goto :goto_1

    :cond_3
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->start:I

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->end:I

    invoke-virtual {v4, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->capture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;II)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    :goto_1
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-object v1, v2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    filled-new-array {v1}, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperInterfaces([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move-object v1, v2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_3

    :cond_6
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :goto_3
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperInterfaces([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :goto_4
    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setFirstBound(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v1, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v1, v10

    cmp-long v1, v1, v8

    if-nez v1, :cond_8

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v1, v12

    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    goto :goto_5

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperInterfaces([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v1, v12

    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_8
    :goto_5
    return-void

    :cond_9
    iget-object v14, v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v2, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v15

    check-cast v15, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v15, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v16

    if-eqz v16, :cond_a

    goto :goto_6

    :cond_a
    move-object v14, v15

    :goto_6
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v15

    invoke-static {v2, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    if-eq v2, v15, :cond_d

    array-length v4, v2

    const/4 v12, 0x0

    :goto_7
    if-lt v12, v4, :cond_b

    goto :goto_8

    :cond_b
    aget-object v13, v2, v12

    invoke-static {v13, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v13

    if-eqz v13, :cond_c

    aget-object v13, v15, v12

    aput-object v13, v2, v12

    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_d
    :goto_8
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget-object v12, v4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-eqz v4, :cond_18

    if-eq v4, v5, :cond_11

    if-eq v4, v7, :cond_e

    goto/16 :goto_d

    :cond_e
    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v3, v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v3, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-static {v12, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_f
    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setFirstBound(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_10
    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperInterfaces([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v12, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->lowerBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v2, v12, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v2, v10

    cmp-long v2, v2, v8

    if-nez v2, :cond_19

    iget-wide v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v4, -0x20000001

    and-long/2addr v2, v4

    iput-wide v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    goto/16 :goto_d

    :cond_11
    if-eqz v3, :cond_12

    move-object v3, v12

    goto :goto_9

    :cond_12
    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->start:I

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->end:I

    invoke-virtual {v12, v1, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->capture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;II)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    :goto_9
    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-ne v2, v4, :cond_13

    move-object v2, v3

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    filled-new-array {v2}, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperInterfaces([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_c

    :cond_13
    array-length v4, v2

    add-int/lit8 v6, v4, 0x1

    new-array v6, v6, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v7, 0x0

    invoke-static {v2, v7, v6, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v3

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aput-object v2, v6, v7

    invoke-static {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->greaterLowerBound([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperInterfaces([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_c

    :cond_14
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v4

    if-nez v4, :cond_16

    invoke-static {v3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_15

    goto :goto_a

    :cond_15
    move-object v4, v3

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v4, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isSuperclassOf(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_b

    :cond_16
    :goto_a
    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_17
    :goto_b
    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperInterfaces([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :goto_c
    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setFirstBound(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v2, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v2, v10

    cmp-long v2, v2, v8

    if-nez v2, :cond_19

    iget-wide v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v4, -0x20000001

    and-long/2addr v2, v4

    iput-wide v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    goto :goto_d

    :cond_18
    const-wide/32 v4, -0x20000001

    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperInterfaces([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-wide v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v2, v4

    iput-wide v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_19
    :goto_d
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->usesNullTypeAnnotations()Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->evaluateNullAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;)V

    :cond_1a
    return-void
.end method

.method public isCapture()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEquivalentTo(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z
    .locals 3

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v1

    const/16 v2, 0x204

    if-eq v1, v2, :cond_3

    const/16 v2, 0x2004

    if-eq v1, v2, :cond_3

    return v0

    :cond_3
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundCheck(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    return p1
.end method

.method public isProperType(Z)Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->lowerBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->isProperType(Z)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->isProperType(Z)Z

    move-result p1

    return p1
.end method

.method public nullAnnotatedReadableName(Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Z)[C
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->appendNullAnnotation(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    const/4 v2, 0x0

    if-nez v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    if-eqz v1, :cond_0

    const-string v1, "of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->withoutToplevelNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->nullAnnotatedReadableName(Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Z)[C

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->lowerBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_1

    const-string v1, " super "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->lowerBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->nullAnnotatedReadableName(Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Z)[C

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_2

    const-string v1, " extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->nullAnnotatedReadableName(Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Z)[C

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->otherUpperBounds()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    sget-object p2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eq p1, p2, :cond_2

    const-string p1, " & ..."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    goto :goto_2

    :goto_1
    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    throw p1

    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    new-array p2, p1, [C

    invoke-virtual {v0, v2, p1, p2, v2}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    return-object p2
.end method

.method public readableName()[C
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_CAPTURE_NAME_PREFIX:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->captureID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_CAPTURE_NAME_SUFFIX:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->readableName()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    new-array v2, v1, [C

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2, v3}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    return-object v2

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->readableName()[C

    move-result-object v0

    return-object v0
.end method

.method public setTypeAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Z)V
    .locals 1

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setTypeAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Z)V

    sget-object p2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    if-eq p1, p2, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    if-eqz p2, :cond_0

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    :cond_0
    return-void
.end method

.method public shortReadableName()[C
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_CAPTURE_NAME_PREFIX:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->captureID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_CAPTURE_NAME_SUFFIX:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->shortReadableName()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    new-array v2, v1, [C

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2, v3}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    return-object v2

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->shortReadableName()[C

    move-result-object v0

    return-object v0
.end method

.method public signableName()[C
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_CAPTURE_SIGNABLE_NAME_SUFFIX:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->readableName()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    new-array v2, v1, [C

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2, v3}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    return-object v2

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->readableName()[C

    move-result-object v0

    return-object v0
.end method

.method public substituteInferenceVariable(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->pendingSubstitute:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->substituteInferenceVariable(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    if-eq v1, v2, :cond_6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->clone(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iput-object v1, v2, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->pendingSubstitute:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->lowerBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->substituteInferenceVariable(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    iput-object v1, v2, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->lowerBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->substituteInferenceVariable(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    iput-object v1, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->substituteInferenceVariable(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v1, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_5

    array-length v1, v1

    new-array v3, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v5, v5, v3

    invoke-virtual {v5, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->substituteInferenceVariable(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aput-object v5, v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->pendingSubstitute:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v2

    :cond_6
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->pendingSubstitute:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p0

    :goto_3
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->pendingSubstitute:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    array-length v3, v1

    :goto_0
    if-lt v2, v3, :cond_1

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_CAPTURE_NAME_PREFIX:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->captureID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_CAPTURE_NAME_SUFFIX:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    aget-object v4, v1, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uncapture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    return-object p1
.end method

.method public upperBoundForProjection()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_3

    array-length v1, v0

    if-lez v1, :cond_2

    array-length v1, v0

    add-int/2addr v1, v4

    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v5, v0

    invoke-static {v0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->greaterLowerBound([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    const/16 v1, 0xa

    invoke-direct {v0, v2, v2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    goto :goto_0

    :cond_0
    array-length v1, v0

    if-ne v1, v4, :cond_1

    aget-object v0, v0, v3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createIntersectionType18([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_OBJECT:[[C

    invoke-virtual {v5, v6, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getResolvedJavaBaseType([[CLorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    array-length v2, v0

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    goto :goto_0

    :cond_4
    array-length v2, v0

    if-ne v2, v4, :cond_6

    if-eqz v1, :cond_5

    aget-object v0, v0, v3

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    aget-object v0, v0, v3

    filled-new-array {v2, v0}, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createIntersectionType18([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createIntersectionType18([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    goto :goto_0

    :cond_7
    array-length v1, v0

    add-int/2addr v1, v4

    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v2, v0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    aput-object v0, v1, v3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createIntersectionType18([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    goto :goto_0

    :cond_8
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->upperBound()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public upwardsProjection(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->enterRecursiveProjectionFunction()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 3
    :goto_0
    :try_start_0
    array-length v1, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->exitRecursiveProjectionFunction()V

    return-object p0

    .line 5
    :cond_0
    :try_start_1
    aget-object v1, p2, v0

    invoke-static {p0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->upperBoundForProjection()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    .line 7
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->upwardsProjection(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->exitRecursiveProjectionFunction()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->exitRecursiveProjectionFunction()V

    .line 9
    throw p1

    .line 10
    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic upwardsProjection(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->upwardsProjection(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    return-object p1
.end method

.method public withoutToplevelNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasNullTypeAnnotations()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasNullTypeAnnotations()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->withoutToplevelNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getUnannotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->clone(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeAnnotations()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v4, 0x200000

    or-long/2addr v2, v4

    iput-wide v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_1
    iput-object v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->filterNullTypeAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v2, v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->withoutToplevelNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    return-object v0
.end method
