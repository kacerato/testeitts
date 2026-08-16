.class public Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector$TypeDeclarationVisitor;
    }
.end annotation


# instance fields
.field locator:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;

.field pattern:Lorg/eclipse/jdt/core/search/SearchPattern;

.field progressMonitor:Lorg/eclipse/core/runtime/IProgressMonitor;

.field result:[[[C

.field resultIndex:I

.field samePackageIndex:I

.field samePackageSuperTypeName:[[[C

.field type:Lorg/eclipse/jdt/core/IType;

.field typeQualification:[C

.field typeSimpleName:[C


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/search/SearchPattern;[C[CLorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/core/IType;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->pattern:Lorg/eclipse/jdt/core/search/SearchPattern;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->typeSimpleName:[C

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->typeQualification:[C

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->locator:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;

    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->type:Lorg/eclipse/jdt/core/IType;

    iput-object p6, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->progressMonitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    return-void
.end method

.method private addIfSamePackage([[C[[C)Z
    .locals 7

    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->samePackageSuperTypeName:[[[C

    array-length v0, v0

    move v1, v2

    :goto_0
    if-lt v1, v0, :cond_4

    array-length v1, p1

    const/4 v3, 0x1

    add-int/lit8 v4, v1, -0x1

    move v1, v2

    :goto_1
    if-lt v1, v4, :cond_2

    iget p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->samePackageIndex:I

    if-ne v0, p2, :cond_1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->samePackageSuperTypeName:[[[C

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [[[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->samePackageSuperTypeName:[[[C

    invoke-static {p2, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->samePackageSuperTypeName:[[[C

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->samePackageIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->samePackageIndex:I

    aput-object p1, p2, v0

    return v3

    :cond_2
    aget-object v5, p1, v1

    aget-object v6, p2, v1

    invoke-static {v5, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v5

    if-nez v5, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->samePackageSuperTypeName:[[[C

    aget-object v3, v3, v1

    invoke-static {v3, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v3

    if-eqz v3, :cond_5

    return v2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addToResult([[C)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->result:[[[C

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->resultIndex:I

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->result:[[[C

    mul-int/lit8 v3, v0, 0x2

    new-array v3, v3, [[[C

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->result:[[[C

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->result:[[[C

    iget v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->resultIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->resultIndex:I

    aput-object p1, v0, v1

    return-void

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->result:[[[C

    aget-object v3, v3, v2

    invoke-static {v3, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public buildBindings(Lorg/eclipse/jdt/core/ICompilationUnit;Z)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;III)V

    if-eqz p2, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->locator:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->basicParser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->dietParse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->locator:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->basicParser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->parse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->locator:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->buildTypeBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->locator:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->completeTypeBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Z)V

    if-nez p2, :cond_2

    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->faultInTypes()V

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->resolve()V

    :cond_2
    return-object p1
.end method

.method public collect()[[[C
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->type:Lorg/eclipse/jdt/core/IType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    new-array v4, v1, [[[C

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->result:[[[C

    iput v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->resultIndex:I

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaProject;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->locator:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;

    invoke-virtual {v4, v0, v3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->initialize(Lorg/eclipse/jdt/internal/core/JavaProject;I)V

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->type:Lorg/eclipse/jdt/core/IType;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IMember;->isBinary()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->locator:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->type:Lorg/eclipse/jdt/core/IType;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->cacheBinaryType(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->collectSuperTypeNames(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[[C)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->type:Lorg/eclipse/jdt/core/IType;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IMember;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v0

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->type:Lorg/eclipse/jdt/core/IType;

    check-cast v4, Lorg/eclipse/jdt/internal/core/SourceType;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/Member;->getOuterMostLocalContext()Lorg/eclipse/jdt/internal/core/Member;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->buildBindings(Lorg/eclipse/jdt/core/ICompilationUnit;Z)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder;

    invoke-direct {v1, v0}, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->type:Lorg/eclipse/jdt/core/IType;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder;->findType(Lorg/eclipse/jdt/core/IType;)Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->collectSuperTypeNames(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[[C)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->result:[[[C

    array-length v1, v0

    iget v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->resultIndex:I

    if-le v1, v2, :cond_3

    new-array v1, v2, [[[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->result:[[[C

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->result:[[[C

    return-object v0

    :catch_0
    return-object v2

    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->getPathsOfDeclaringType()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    return-object v2

    :cond_5
    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->sort([Ljava/lang/String;)V

    new-array v4, v1, [[[C

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->result:[[[C

    new-array v4, v1, [[[C

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->samePackageSuperTypeName:[[[C

    iput v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->resultIndex:I

    array-length v4, v0

    move-object v6, v2

    move v5, v3

    :goto_2
    if-lt v5, v4, :cond_7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->result:[[[C

    array-length v1, v0

    iget v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->resultIndex:I

    if-le v1, v2, :cond_6

    new-array v1, v2, [[[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->result:[[[C

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->result:[[[C

    return-object v0

    :cond_7
    :try_start_1
    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->locator:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;

    iget-object v8, v7, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->handleFactory:Lorg/eclipse/jdt/internal/core/util/HandleFactory;

    aget-object v9, v0, v5

    iget-object v7, v7, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->scope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    invoke-virtual {v8, v9, v7}, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->createOpenable(Ljava/lang/String;Lorg/eclipse/jdt/core/search/IJavaSearchScope;)Lorg/eclipse/jdt/internal/core/Openable;

    move-result-object v7

    if-nez v7, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    check-cast v8, Lorg/eclipse/jdt/internal/core/JavaProject;
    :try_end_1
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->locator:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;

    invoke-virtual {v6, v8, v3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->initialize(Lorg/eclipse/jdt/internal/core/JavaProject;I)V
    :try_end_2
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v6, v8

    goto :goto_3

    :catch_1
    move-object v6, v8

    goto :goto_4

    :cond_9
    :goto_3
    :try_start_3
    instance-of v8, v7, Lorg/eclipse/jdt/core/ICompilationUnit;

    if-eqz v8, :cond_a

    check-cast v7, Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-virtual {p0, v7, v1}, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->buildBindings(Lorg/eclipse/jdt/core/ICompilationUnit;Z)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v7

    if-eqz v7, :cond_b

    new-instance v8, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector$TypeDeclarationVisitor;

    invoke-direct {v8, p0}, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector$TypeDeclarationVisitor;-><init>(Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;)V

    iget-object v9, v7, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V

    goto :goto_4

    :cond_a
    instance-of v8, v7, Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    if-eqz v8, :cond_b

    check-cast v7, Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    iget-object v8, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->locator:Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;

    invoke-interface {v7}, Lorg/eclipse/jdt/core/IOrdinaryClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v7

    invoke-virtual {v8, v7, v2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->cacheBinaryType(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->matches(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, v7, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    invoke-virtual {p0, v7, v8}, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->collectSuperTypeNames(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[[C)V
    :try_end_3
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_b
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method public collectSuperTypeNames(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[[C)V
    .locals 3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    invoke-direct {p0, v1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->addIfSamePackage([[C[[C)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p2, 0x0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->addToResult([[C)V

    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->collectSuperTypeNames(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[[C)V

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_2

    goto :goto_1

    :cond_2
    aget-object v1, p1, v0

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->addToResult([[C)V

    invoke-virtual {p0, v1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->collectSuperTypeNames(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[[C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public getPathsOfDeclaringType()[Ljava/lang/String;
    .locals 11

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->typeQualification:[C

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->typeSimpleName:[C

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/search/PathCollector;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/search/PathCollector;-><init>()V

    invoke-static {}, Lorg/eclipse/jdt/core/search/SearchEngine;->createWorkspaceScope()Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    move-result-object v2

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getIndexManager()Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    move-result-object v3

    new-instance v10, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->typeSimpleName:[C

    if-eqz v7, :cond_1

    :goto_0
    move-object v5, v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->typeQualification:[C

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->pattern:Lorg/eclipse/jdt/core/search/SearchPattern;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/search/SearchPattern;->getMatchRule()I

    move-result v9

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;-><init>([C[[C[CCI)V

    new-instance v1, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector$1;

    invoke-direct {v1, p0, v0}, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector$1;-><init>(Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;Lorg/eclipse/jdt/internal/core/search/PathCollector;)V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->progressMonitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    const/16 v5, 0x64

    invoke-static {v4, v5}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v4

    new-instance v6, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;

    new-instance v7, Lorg/eclipse/jdt/internal/core/search/JavaSearchParticipant;

    invoke-direct {v7}, Lorg/eclipse/jdt/internal/core/search/JavaSearchParticipant;-><init>()V

    invoke-direct {v6, v10, v7, v2, v1}, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;-><init>(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;)V

    const/4 v1, 0x3

    invoke-virtual {v4, v5}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v2

    invoke-virtual {v3, v6, v1, v2}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->performConcurrentJob(Lorg/eclipse/jdt/internal/core/search/processing/IJob;ILorg/eclipse/core/runtime/IProgressMonitor;)Z

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/PathCollector;->getPaths()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSamePackageSuperTypeNames()[[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->samePackageSuperTypeName:[[[C

    return-object v0
.end method

.method public matches(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 13
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->matches([[C)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public matches([[C)Z
    .locals 6

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v0, -0x1

    .line 2
    aget-object v3, p1, v2

    .line 3
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->typeSimpleName:[C

    if-eqz v4, :cond_4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->pattern:Lorg/eclipse/jdt/core/search/SearchPattern;

    invoke-virtual {v5, v3, v4}, Lorg/eclipse/jdt/core/search/SearchPattern;->matchesName([C[C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->typeSimpleName:[C

    invoke-static {v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->endsWith([C[C)Z

    move-result v4

    if-nez v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v4, v0, 0x1

    .line 5
    new-array v4, v4, [[C

    invoke-static {p1, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p1, 0x24

    .line 6
    invoke-static {p1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result p1

    const/4 v5, -0x1

    if-ne p1, v5, :cond_3

    return v1

    .line 7
    :cond_3
    invoke-static {v3, v1, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v1

    aput-object v1, v4, v2

    add-int/lit8 p1, p1, 0x1

    .line 8
    array-length v1, v3

    invoke-static {v3, p1, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object p1

    aput-object p1, v4, v0

    .line 9
    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->matches([[C)Z

    move-result p1

    return p1

    .line 10
    :cond_4
    :goto_0
    new-array v0, v2, [[C

    .line 11
    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->pattern:Lorg/eclipse/jdt/core/search/SearchPattern;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeNamesCollector;->typeQualification:[C

    const/16 v2, 0x2e

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/eclipse/jdt/core/search/SearchPattern;->matchesName([C[C)Z

    move-result p1

    return p1
.end method
