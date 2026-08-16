.class public Lorg/eclipse/jdt/internal/compiler/ast/ContainerAnnotation;
.super Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;
.source "SourceFile"


# instance fields
.field private containees:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

.field private memberValues:Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 5

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;-><init>()V

    iget-object p3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    array-length v0, p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    aget-object p3, p3, v2

    const-wide/16 v3, 0x0

    invoke-direct {v0, p3, v3, v4}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;-><init>([CJ)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    array-length v1, p3

    new-array v1, v1, [J

    invoke-direct {v0, p3, v1}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;-><init>([[C[J)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    :goto_0
    iget p3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->recipient:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->recipient:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    new-array p2, v2, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ContainerAnnotation;->containees:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    invoke-direct {p2}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;-><init>()V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ContainerAnnotation;->memberValues:Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;->memberValue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/ContainerAnnotation;->addContainee(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    return-void
.end method


# virtual methods
.method public addContainee(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ContainerAnnotation;->containees:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    array-length v1, v0

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ContainerAnnotation;->containees:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ContainerAnnotation;->containees:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aput-object p1, v0, v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ContainerAnnotation;->memberValues:Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    iput-object v0, v2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->expressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->setPersistibleAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/ContainerAnnotation;)V

    return-void
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->compilerAnnotation:Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->closestMatch()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ContainerAnnotation;->containees:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isDeprecated()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isTypeUseDeprecated(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->deprecatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_2
    const/4 v4, 0x1

    invoke-static {v1, p1, v0, v3, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->checkContainerAnnotationType(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)V

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->containerAnnotationType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1

    :cond_3
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->methods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;->memberValuePairs()[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    move-result-object v1

    aget-object v1, v1, v2

    array-length v3, v0

    :goto_0
    if-lt v2, v3, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;->computeElementValuePairs()[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotation(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->compilerAnnotation:Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1

    :cond_4
    aget-object v4, v0, v2

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->VALUE:[C

    invoke-static {v5, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v5

    if-eqz v5, :cond_5

    iput-object v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1, p1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->resolveTypeExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
