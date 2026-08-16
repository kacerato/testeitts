.class public Lorg/eclipse/jdt/internal/codeassist/CompletionUnitStructureRequestor;
.super Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;
.source "SourceFile"


# instance fields
.field private assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

.field private bindingCache:Ljava/util/Map;

.field private elementCache:Ljava/util/Map;

.field private elementWithProblemCache:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;Lorg/eclipse/jdt/internal/compiler/parser/Parser;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2, p8}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;-><init>(Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;Ljava/util/Map;)V

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionUnitStructureRequestor;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iput-object p5, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionUnitStructureRequestor;->bindingCache:Ljava/util/Map;

    iput-object p6, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionUnitStructureRequestor;->elementCache:Ljava/util/Map;

    iput-object p7, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionUnitStructureRequestor;->elementWithProblemCache:Ljava/util/Map;

    return-void
.end method

.method public static hasEmptyName(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eq p0, p1, :cond_1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-gt v1, v2, :cond_1

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-gt v1, v2, :cond_1

    return v0

    :cond_1
    instance-of v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    instance-of v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnQualifiedTypeReference;

    if-nez v1, :cond_2

    instance-of v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnParameterizedQualifiedTypeReference;

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object v1

    array-length v3, v1

    sub-int/2addr v3, v2

    aget-object v1, v1, v3

    array-length v1, v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    instance-of v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;

    if-eqz v1, :cond_6

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz p0, :cond_b

    move v1, v0

    :goto_0
    array-length v3, p0

    if-lt v1, v3, :cond_4

    goto :goto_4

    :cond_4
    aget-object v3, p0, v1

    invoke-static {v3, p1}, Lorg/eclipse/jdt/internal/codeassist/CompletionUnitStructureRequestor;->hasEmptyName(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result v3

    if-eqz v3, :cond_5

    return v2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    instance-of v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;

    if-eqz v1, :cond_b

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typeArguments:[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz p0, :cond_b

    move v1, v0

    :goto_1
    array-length v3, p0

    if-lt v1, v3, :cond_7

    goto :goto_4

    :cond_7
    aget-object v3, p0, v1

    if-eqz v3, :cond_a

    move v3, v0

    :goto_2
    aget-object v4, p0, v1

    array-length v5, v4

    if-lt v3, v5, :cond_8

    goto :goto_3

    :cond_8
    aget-object v4, v4, v3

    invoke-static {v4, p1}, Lorg/eclipse/jdt/internal/codeassist/CompletionUnitStructureRequestor;->hasEmptyName(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result v4

    if-eqz v4, :cond_9

    return v2

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_a
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_b
    :goto_4
    return v0
.end method


# virtual methods
.method public acceptAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/core/AnnotatableInfo;Lorg/eclipse/jdt/internal/core/JavaElement;)Lorg/eclipse/jdt/core/IAnnotation;
    .locals 2

    instance-of v0, p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnMarkerAnnotationName;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionUnitStructureRequestor;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/codeassist/CompletionUnitStructureRequestor;->hasEmptyName(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->acceptAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/core/AnnotatableInfo;Lorg/eclipse/jdt/internal/core/JavaElement;)Lorg/eclipse/jdt/core/IAnnotation;

    return-object p2

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->acceptAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/core/AnnotatableInfo;Lorg/eclipse/jdt/internal/core/JavaElement;)Lorg/eclipse/jdt/core/IAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public createAnnotation(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/Annotation;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistAnnotation;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->newElements:Ljava/util/Map;

    invoke-direct {v0, p1, p2, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistAnnotation;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public createField(Lorg/eclipse/jdt/internal/core/JavaElement;Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;)Lorg/eclipse/jdt/internal/core/SourceField;
    .locals 4

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p2, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;->name:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceField;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionUnitStructureRequestor;->bindingCache:Ljava/util/Map;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->newElements:Ljava/util/Map;

    invoke-direct {v1, p1, v0, v2, v3}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceField;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    iget-object p1, p2, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;->node:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionUnitStructureRequestor;->bindingCache:Ljava/util/Map;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionUnitStructureRequestor;->elementCache:Ljava/util/Map;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;->node:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionUnitStructureRequestor;->elementWithProblemCache:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v1
.end method

.method public createImportContainer(Lorg/eclipse/jdt/core/ICompilationUnit;)Lorg/eclipse/jdt/internal/core/ImportContainer;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistImportContainer;

    check-cast p1, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->newElements:Ljava/util/Map;

    invoke-direct {v0, p1, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistImportContainer;-><init>(Lorg/eclipse/jdt/internal/core/CompilationUnit;Ljava/util/Map;)V

    return-object v0
.end method

.method public createImportDeclaration(Lorg/eclipse/jdt/internal/core/ImportContainer;Ljava/lang/String;Z)Lorg/eclipse/jdt/internal/core/ImportDeclaration;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistImportDeclaration;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->newElements:Ljava/util/Map;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistImportDeclaration;-><init>(Lorg/eclipse/jdt/internal/core/ImportContainer;Ljava/lang/String;ZLjava/util/Map;)V

    return-object v0
.end method

.method public createInitializer(Lorg/eclipse/jdt/internal/core/JavaElement;)Lorg/eclipse/jdt/internal/core/Initializer;
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistInitializer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionUnitStructureRequestor;->bindingCache:Ljava/util/Map;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->newElements:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-direct {v0, p1, v3, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistInitializer;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;ILjava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method public createMethodHandle(Lorg/eclipse/jdt/internal/core/JavaElement;Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;)Lorg/eclipse/jdt/internal/core/SourceMethod;
    .locals 9

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p2, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->name:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->parameterTypes:[[C

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->convertTypeNamesToSigs([[C)[Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceMethod;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionUnitStructureRequestor;->bindingCache:Ljava/util/Map;

    iget-object v8, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->newElements:Ljava/util/Map;

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceMethod;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    iget-object p1, p2, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->node:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionUnitStructureRequestor;->bindingCache:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionUnitStructureRequestor;->elementCache:Ljava/util/Map;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->node:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionUnitStructureRequestor;->elementWithProblemCache:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public createPackageDeclaration(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageDeclaration;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistPackageDeclaration;

    check-cast p1, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->newElements:Ljava/util/Map;

    invoke-direct {v0, p1, p2, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistPackageDeclaration;-><init>(Lorg/eclipse/jdt/internal/core/CompilationUnit;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public createTypeHandle(Lorg/eclipse/jdt/internal/core/JavaElement;Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;)Lorg/eclipse/jdt/internal/core/SourceType;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->name:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    new-instance v1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceType;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionUnitStructureRequestor;->bindingCache:Ljava/util/Map;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->newElements:Ljava/util/Map;

    invoke-direct {v1, p1, v0, v2, v3}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceType;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    iget-object p1, p2, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->node:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionUnitStructureRequestor;->bindingCache:Ljava/util/Map;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionUnitStructureRequestor;->elementCache:Ljava/util/Map;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->node:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionUnitStructureRequestor;->elementWithProblemCache:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v1
.end method

.method public createTypeParameter(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/TypeParameter;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistTypeParameter;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->newElements:Ljava/util/Map;

    invoke-direct {v0, p1, p2, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistTypeParameter;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public getMemberValue(Lorg/eclipse/jdt/internal/core/MemberValuePair;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Ljava/lang/Object;
    .locals 3

    instance-of v0, p2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleNameReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleNameReference;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->token:[C

    array-length v0, v0

    if-nez v0, :cond_1

    return-object v1

    :cond_0
    instance-of v0, p2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnQualifiedNameReference;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnQualifiedNameReference;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    array-length v0, v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->getMemberValue(Lorg/eclipse/jdt/internal/core/MemberValuePair;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMemberValuePairs([Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;)[Lorg/eclipse/jdt/core/IMemberValuePair;
    .locals 7

    array-length v0, p1

    new-array v1, v0, [Lorg/eclipse/jdt/core/IMemberValuePair;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-lt v3, v0, :cond_1

    if-le v4, v0, :cond_0

    invoke-static {v1, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v1

    :cond_1
    aget-object v5, p1, v3

    instance-of v6, v5, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnMemberValueName;

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->getMemberValuePair(Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;)Lorg/eclipse/jdt/core/IMemberValuePair;

    move-result-object v5

    aput-object v5, v1, v4

    move v4, v6

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
