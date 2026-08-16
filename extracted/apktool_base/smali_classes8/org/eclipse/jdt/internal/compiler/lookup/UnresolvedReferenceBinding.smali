.class public Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
.source "SourceFile"


# instance fields
.field prototype:Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

.field resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

.field wrappers:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;)V
    .locals 1

    .line 8
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    .line 9
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->wrappers:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 11
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    return-void
.end method

.method public constructor <init>([[CLorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    .line 3
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    .line 4
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->wrappers:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 6
    iput-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    .line 7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->computeId()V

    return-void
.end method


# virtual methods
.method public addWrapper(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0, v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->swapUnresolved(Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    return-void

    :cond_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->wrappers:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez p2, :cond_1

    filled-new-array {p1}, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->wrappers:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_0

    :cond_1
    array-length v0, p2

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->wrappers:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v2, 0x0

    invoke-static {p2, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->wrappers:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aput-object p1, p2, v0

    :goto_0
    return-void
.end method

.method public clone(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->clone(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->addWrapper(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    return-object p1
.end method

.method public debugName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public depth()I
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/16 v3, 0x24

    aget-object v0, v0, v1

    invoke-static {v3, v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->occurencesOf(C[CI)I

    move-result v0

    return v0
.end method

.method public hasTypeBit(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isUnresolvedType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public prototype()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    return-object v0
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    if-eq p0, v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :goto_0
    return-object p1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getType0([C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    if-eq v1, p0, :cond_2

    if-nez v1, :cond_4

    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    if-eqz v3, :cond_3

    iget-object v1, v2, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {p1, v2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->askForType(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    goto :goto_1

    :cond_3
    if-ne v1, p0, :cond_4

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {p1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->askForType([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    if-ne v1, p0, :cond_6

    :cond_5
    const/16 v2, 0x2e

    invoke-static {v2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->contains(C[C)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    const/16 v3, 0x24

    invoke-static {v0, v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {p1, v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->askForType(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    :cond_6
    if-eqz v1, :cond_8

    if-ne v1, p0, :cond_7

    goto :goto_2

    :cond_7
    move-object v0, v1

    goto :goto_3

    :cond_8
    :goto_2
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v2, 0x80

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    iget-boolean v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->mayTolerateMissingType:Z

    if-nez v0, :cond_9

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->root:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->isClassPathCorrect([[CLorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Ljava/lang/Object;)V

    :cond_9
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createMissingType(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[[C)Lorg/eclipse/jdt/internal/compiler/lookup/MissingTypeBinding;

    move-result-object v0

    :goto_3
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->setResolvedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    :cond_a
    if-eqz p2, :cond_b

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertUnresolvedBinaryToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_b
    return-object v0
.end method

.method public setResolvedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p2, p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->updateCaches(Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->wrappers:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_2

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->wrappers:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v2, v2, v1

    invoke-virtual {v2, p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->swapUnresolved(Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public swapUnresolved(Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->clone(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p2

    iget-object v0, p3, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    invoke-virtual {p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->setTypeAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Z)V

    invoke-virtual {p3, p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->updateCaches(Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->wrappers:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p2, :cond_2

    array-length p2, p2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->wrappers:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->swapUnresolved(Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeAnnotations()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->annotatedDebugName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "(unresolved)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unresolved type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    if-eqz v1, :cond_1

    invoke-static {v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toString([[C)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "UNNAMED"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
