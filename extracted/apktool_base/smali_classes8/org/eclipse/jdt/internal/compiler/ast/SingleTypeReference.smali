.class public Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;
.super Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
.source "SourceFile"


# instance fields
.field public token:[C


# direct methods
.method public constructor <init>([CJ)V
    .locals 2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    const/16 p1, 0x20

    ushr-long v0, p2, p1

    long-to-int p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    const-wide v0, 0xffffffffL

    and-long p1, p2, v0

    long-to-int p1, p1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-void
.end method


# virtual methods
.method public augmentTypeWithAdditionalDimensions(I[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Z)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->dimensions()I

    move-result v0

    add-int v3, v0, p1

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getMergedAnnotationsOnDimensions(I[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v4

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    int-to-long v0, v0

    const/16 v5, 0x20

    shl-long/2addr v0, v5

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    int-to-long v5, v5

    add-long/2addr v5, v0

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;-><init>([CI[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;J)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iput-object v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    if-nez p3, :cond_0

    iput p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->extendedDimensions:I

    :cond_0
    return-object p2
.end method

.method public getLastToken()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    return-object v0
.end method

.method public getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getType([C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->declaringElement:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->tagAsAccessingEnclosingInstanceStateOf(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)V

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isStatic:Z

    if-nez v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->tagAsAccessingEnclosingInstanceStateOf(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)V

    :cond_2
    :goto_0
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->detectHierarchyCycle(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    return-object p1

    :cond_3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1
.end method

.method public getTypeName()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    filled-new-array {v0}, [[C

    move-result-object v0

    return-object v0
.end method

.method public isBaseTypeReference()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->BYTE:[C

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->SHORT:[C

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->INT:[C

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->LONG:[C

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->FLOAT:[C

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->DOUBLE:[C

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->CHAR:[C

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->BOOLEAN:[C

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->NULL:[C

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->VOID:[C

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    aget-object p1, p1, v0

    if-eqz p1, :cond_0

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printAnnotations([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const/16 p1, 0x20

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public resolveTypeEnclosing(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getMemberType([CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, p0, v1, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidEnclosingType(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->closestMatch()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isTypeUseDeprecated(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->reportDeprecatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v1

    const/high16 v2, 0x20010000

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->getSeverity(I)I

    move-result v1

    const/16 v2, 0x100

    if-eq v1, v2, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->rawTypeReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_3
    if-eqz p2, :cond_4

    return-object v0

    :cond_4
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 4

    .line 1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 3
    aget-object v0, v0, v1

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    .line 4
    :cond_0
    array-length v2, v0

    :goto_0
    if-lt v1, v2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    aget-object v3, v0, v1

    invoke-virtual {v3, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_2
    :goto_1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 4

    .line 7
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 9
    aget-object v0, v0, v1

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    .line 10
    :cond_0
    array-length v2, v0

    :goto_0
    if-lt v1, v2, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    aget-object v3, v0, v1

    invoke-virtual {v3, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_2
    :goto_1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    return-void
.end method
