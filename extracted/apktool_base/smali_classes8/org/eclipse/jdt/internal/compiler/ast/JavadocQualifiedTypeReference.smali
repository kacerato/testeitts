.class public Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;
.super Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;
.source "SourceFile"


# instance fields
.field public packageBinding:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

.field public tagSourceEnd:I

.field public tagSourceStart:I


# direct methods
.method public constructor <init>([[C[JII)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;-><init>([[C[J)V

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;->tagSourceStart:I

    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;->tagSourceEnd:I

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const p2, 0x8000

    or-int/2addr p1, p2

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    return-void
.end method

.method private internalResolveType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 2

    sget-object p2, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->closestMatch()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v0, 0x0

    if-nez p2, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getTypeOrPackage([[C)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object p2

    instance-of v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz v1, :cond_3

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;->packageBinding:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;->reportInvalidType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    :goto_1
    return-object v0

    :cond_4
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isGenericType()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_6
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1
.end method


# virtual methods
.method public reportDeprecatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getDeclarationModifiers()I

    move-result p2

    invoke-virtual {v0, p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocDeprecatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)V

    return-void
.end method

.method public reportDeprecatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V
    .locals 1

    .line 2
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getDeclarationModifiers()I

    move-result p2

    invoke-virtual {v0, p1, p0, p2, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocDeprecatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;II)V

    return-void
.end method

.method public reportInvalidType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
    .locals 2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getDeclarationModifiers()I

    move-result p1

    invoke-virtual {v0, p0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocInvalidType(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    return-void
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;ZI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;->internalResolveType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    const/4 p2, 0x0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;->internalResolveType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    .line 2
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 0

    .line 3
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z

    .line 4
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    return-void
.end method
