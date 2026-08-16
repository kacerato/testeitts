.class public Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/impl/ITypeRequestor;


# static fields
.field private static final FakeUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;


# instance fields
.field private basicParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

.field private bindingMap:Lorg/eclipse/jdt/internal/core/hierarchy/BindingMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/hierarchy/BindingMap<",
            "Lorg/eclipse/jdt/internal/compiler/env/IGenericType;",
            ">;"
        }
    .end annotation
.end field

.field builder:Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;

.field private focusType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

.field private hasMissingSuperClass:Z

.field lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

.field private options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

.field private superTypesOnly:Z

.field private typeBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

.field private typeIndex:I

.field private typeModels:[Lorg/eclipse/jdt/internal/compiler/env/IGenericType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/DefaultErrorHandlingPolicies;->exitAfterAllProblems()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    invoke-direct {v2}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;-><init>()V

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;

    invoke-direct {v3}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;-><init>()V

    invoke-direct {v1, v0, v2, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;-><init>(Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    sget-object v2, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3, v3}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>([CIII)V

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-direct {v2, v1, v0, v3}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/compiler/CompilationResult;I)V

    sput-object v2, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->FakeUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Ljava/util/Map;Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/eclipse/jdt/internal/core/hierarchy/BindingMap;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/hierarchy/BindingMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->bindingMap:Lorg/eclipse/jdt/internal/core/hierarchy/BindingMap;

    .line 3
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    invoke-direct {v0, p2}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    .line 4
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/DefaultErrorHandlingPolicies;->exitAfterAllProblems()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    move-result-object p2

    .line 5
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    invoke-direct {v0, p2, v1, p4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;-><init>(Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V

    .line 6
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object p4, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    invoke-direct {p2, p0, p4, v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;-><init>(Lorg/eclipse/jdt/internal/compiler/impl/ITypeRequestor;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;)V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->mayTolerateMissingType:Z

    .line 8
    invoke-direct {p0, p2, p3}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->setEnvironment(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lorg/eclipse/jdt/internal/core/hierarchy/BindingMap;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/hierarchy/BindingMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->bindingMap:Lorg/eclipse/jdt/internal/core/hierarchy/BindingMap;

    .line 11
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->setEnvironment(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;)V

    return-void
.end method

.method private basicParser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->basicParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/DefaultErrorHandlingPolicies;->proceedWithAllProblems()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;

    invoke-direct {v3}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;-><init>(Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Z)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->basicParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->reportOnlyOneSyntaxError:Z

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->basicParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    return-object v0
.end method

.method private findAssociatedModuleName(Lorg/eclipse/jdt/internal/core/Openable;)[C
    .locals 3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/Openable;->getPackageFragmentRoot()Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->getKind()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaProject;->getModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->getModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object p1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method private findSuperClass(Lorg/eclipse/jdt/internal/compiler/env/IGenericType;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/core/IType;
    .locals 4

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isHierarchyInconsistent()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->hasMissingSuperClass:Z

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->builder:Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->missingTypes:Ljava/util/ArrayList;

    new-instance p2, Ljava/lang/String;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-direct {p2, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_0
    iget p2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne p2, v2, :cond_5

    instance-of p2, p1, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    if-eqz p2, :cond_1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getSuperclassName()[C

    move-result-object p1

    const/16 p2, 0x2f

    goto :goto_1

    :cond_1
    instance-of p2, p1, Lorg/eclipse/jdt/internal/compiler/env/ISourceType;

    const/16 v3, 0x2e

    if-eqz p2, :cond_2

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/ISourceType;

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/ISourceType;->getSuperclassName()[C

    move-result-object p1

    :goto_0
    move p2, v3

    goto :goto_1

    :cond_2
    instance-of p2, p1, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyType;

    if-eqz p2, :cond_4

    check-cast p1, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyType;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyType;->superclassName:[C

    goto :goto_0

    :goto_1
    if-eqz p1, :cond_5

    invoke-static {p2, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result p2

    const/4 v3, -0x1

    if-ne p2, v3, :cond_3

    goto :goto_2

    :cond_3
    add-int/2addr p2, v2

    array-length v3, p1

    invoke-static {p1, p2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object p1

    :goto_2
    sget-object p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->OBJECT:[C

    invoke-static {p1, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p2

    if-nez p2, :cond_5

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->hasMissingSuperClass:Z

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->builder:Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->missingTypes:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v1

    :cond_5
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->bindingMap:Lorg/eclipse/jdt/internal/core/hierarchy/BindingMap;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/hierarchy/BindingMap;->get(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/IGenericType;

    if-eqz p1, :cond_6

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->builder:Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;

    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->getHandle(Lorg/eclipse/jdt/internal/compiler/env/IGenericType;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v1
.end method

.method private findSuperInterfaces(Lorg/eclipse/jdt/internal/compiler/env/IGenericType;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/core/IType;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getInterfaceNames()[[C

    move-result-object v1

    const/16 v2, 0x2f

    goto/16 :goto_2

    :cond_0
    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/env/ISourceType;

    const/16 v5, 0x2e

    if-eqz v2, :cond_4

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/env/ISourceType;

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/compiler/env/ISourceType;->isAnonymous()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_1

    new-array v2, v3, [[C

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/compiler/env/ISourceType;->getSuperclassName()[C

    move-result-object v1

    aput-object v1, v2, v4

    :goto_0
    move-object v1, v2

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Lorg/eclipse/jdt/internal/compiler/env/ISourceType;->getInterfaceNames()[[C

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Lorg/eclipse/jdt/internal/compiler/env/IGenericType;->getModifiers()I

    move-result v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->kind(I)I

    move-result v2

    const/4 v6, 0x4

    if-ne v2, v6, :cond_3

    new-array v1, v3, [[C

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->CharArray_JAVA_LANG_ANNOTATION_ANNOTATION:[C

    aput-object v2, v1, v4

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Lorg/eclipse/jdt/internal/compiler/env/ISourceType;->getInterfaceNames()[[C

    move-result-object v1

    :goto_1
    move v2, v5

    goto :goto_2

    :cond_4
    instance-of v2, v1, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyType;

    if-eqz v2, :cond_e

    check-cast v1, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyType;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyType;->isAnonymous()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_5

    new-array v2, v3, [[C

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyType;->superclassName:[C

    aput-object v1, v2, v4

    goto :goto_0

    :cond_5
    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyType;->superInterfaceNames:[[C

    goto :goto_1

    :cond_6
    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyType;->superInterfaceNames:[[C

    goto :goto_1

    :goto_2
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v5

    if-nez v5, :cond_7

    move v6, v4

    goto :goto_3

    :cond_7
    array-length v6, v5

    :goto_3
    if-nez v1, :cond_8

    move v7, v4

    goto :goto_4

    :cond_8
    array-length v7, v1

    :goto_4
    new-array v8, v7, [Lorg/eclipse/jdt/core/IType;

    move v9, v4

    move v10, v9

    move v11, v10

    :goto_5
    if-lt v9, v7, :cond_a

    if-eq v10, v7, :cond_9

    new-array v1, v10, [Lorg/eclipse/jdt/core/IType;

    invoke-static {v8, v4, v1, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v1

    :cond_9
    return-object v8

    :cond_a
    aget-object v12, v1, v9

    array-length v13, v12

    const/16 v14, 0x3c

    invoke-static {v14, v12}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_b

    move v13, v14

    :cond_b
    invoke-static {v2, v12, v4, v13}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[CII)I

    move-result v14

    add-int/2addr v14, v3

    const/16 v3, 0x24

    invoke-static {v3, v12, v14}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[CI)I

    move-result v3

    if-eq v3, v15, :cond_c

    add-int/lit8 v14, v3, 0x1

    :cond_c
    invoke-static {v12, v14, v13}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v3

    if-ge v11, v6, :cond_d

    aget-object v12, v5, v11

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v12

    check-cast v12, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v13, v12, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-static {v3, v13}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v13

    if-eqz v13, :cond_d

    add-int/lit8 v11, v11, 0x1

    iget-object v13, v0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->bindingMap:Lorg/eclipse/jdt/internal/core/hierarchy/BindingMap;

    invoke-virtual {v13, v12}, Lorg/eclipse/jdt/internal/core/hierarchy/BindingMap;->get(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/eclipse/jdt/internal/compiler/env/IGenericType;

    if-eqz v13, :cond_d

    iget-object v14, v0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->builder:Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;

    invoke-virtual {v14, v13, v12}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->getHandle(Lorg/eclipse/jdt/internal/compiler/env/IGenericType;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/core/IType;

    move-result-object v12

    if-eqz v12, :cond_d

    add-int/lit8 v3, v10, 0x1

    aput-object v12, v8, v10

    move v10, v3

    goto :goto_6

    :cond_d
    iget-object v12, v0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->builder:Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;

    iget-object v12, v12, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    iget-object v12, v12, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->missingTypes:Ljava/util/ArrayList;

    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x1

    goto :goto_5

    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method private fixSupertypeBindings()V
    .locals 11

    iget v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->typeIndex:I

    :goto_0
    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->typeBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v1, v1, v0

    iget-wide v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v4, 0x20000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto/16 :goto_7

    :cond_1
    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v2, :cond_d

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->allocation:Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v3, :cond_2

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto/16 :goto_7

    :cond_2
    move-object v2, v1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    if-eqz v3, :cond_e

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    const/4 v4, 0x0

    if-nez v3, :cond_3

    move-object v5, v4

    goto :goto_1

    :cond_3
    iget-object v5, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superclass:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    :goto_1
    if-nez v5, :cond_4

    move-object v5, v4

    goto :goto_2

    :cond_4
    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_2
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->closestMatch()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    :cond_5
    instance-of v6, v5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v6, :cond_6

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-direct {p0, v5, v1}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->subTypeOfType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v2, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_6
    if-nez v3, :cond_7

    goto :goto_3

    :cond_7
    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    :goto_3
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    if-eqz v4, :cond_e

    array-length v5, v4

    const/4 v6, 0x0

    if-nez v3, :cond_8

    move v3, v6

    goto :goto_4

    :cond_8
    array-length v3, v3

    :goto_4
    if-le v5, v3, :cond_e

    new-array v3, v5, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move v7, v6

    move v8, v7

    :goto_5
    if-lt v7, v5, :cond_a

    if-ge v8, v5, :cond_9

    new-array v1, v8, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v3, v6, v1, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v1

    :cond_9
    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setSuperInterfaces([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_7

    :cond_a
    aget-object v9, v4, v7

    iget-object v9, v9, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v9, :cond_b

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->closestMatch()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v9

    :cond_b
    instance-of v10, v9, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v10, :cond_c

    check-cast v9, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-direct {p0, v9, v1}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->subTypeOfType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v10

    if-nez v10, :cond_c

    add-int/lit8 v10, v8, 0x1

    aput-object v9, v3, v8

    move v8, v10

    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_d
    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    if-eqz v2, :cond_e

    :try_start_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-object v2, v1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    iget-wide v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v5, -0x2000001

    and-long/2addr v3, v5

    iput-wide v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->builder:Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->missingTypes:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName()[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->hasMissingSuperClass:Z

    :goto_6
    :try_start_1
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    :try_end_1
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    iget-wide v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v4, -0x4000001

    and-long/2addr v2, v4

    iput-wide v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_e
    :goto_7
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0
.end method

.method private remember(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 9

    .line 7
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/Openable;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    :try_start_0
    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/IGenericType;

    .line 9
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->remember(Lorg/eclipse/jdt/internal/compiler/env/IGenericType;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :catch_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 10
    :try_start_1
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->isAnonymous()Z

    move-result v1
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_1

    move v8, v1

    goto :goto_0

    :catch_1
    move v8, v0

    .line 11
    :goto_0
    instance-of v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v1, :cond_7

    .line 12
    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object p2

    .line 13
    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_2

    .line 14
    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->allocation:Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    goto :goto_1

    .line 15
    :cond_2
    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superclass:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 16
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object v1

    if-nez v1, :cond_3

    move-object v1, v2

    goto :goto_2

    .line 17
    :cond_3
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v1, v3

    :goto_2
    move-object v6, v1

    goto :goto_3

    :cond_4
    move-object v6, v2

    .line 18
    :goto_3
    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v1, :cond_6

    .line 19
    array-length v3, v1

    .line 20
    new-array v4, v3, [[C

    :goto_4
    if-lt v0, v3, :cond_5

    move-object v7, v4

    goto :goto_5

    .line 21
    :cond_5
    aget-object v2, v1, v0

    .line 22
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object v2

    .line 23
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    aget-object v2, v2, v5

    aput-object v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    move-object v7, v2

    .line 24
    :goto_5
    new-instance v0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyType;

    .line 25
    iget-object v4, p2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    .line 26
    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    move-object v2, v0

    move-object v3, p1

    .line 27
    invoke-direct/range {v2 .. v8}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyType;-><init>(Lorg/eclipse/jdt/core/IType;[CI[C[[CZ)V

    .line 28
    iget-object p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->remember(Lorg/eclipse/jdt/internal/compiler/env/IGenericType;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    goto :goto_6

    .line 29
    :cond_7
    new-instance v1, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyType;

    .line 30
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName()[C

    move-result-object v4

    .line 31
    iget v5, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    .line 32
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName()[C

    move-result-object v6

    .line 33
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName()[C

    move-result-object v0

    filled-new-array {v0}, [[C

    move-result-object v7

    move-object v2, v1

    move-object v3, p1

    .line 34
    invoke-direct/range {v2 .. v8}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyType;-><init>(Lorg/eclipse/jdt/core/IType;[CI[C[[CZ)V

    .line 35
    invoke-direct {p0, v1, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->remember(Lorg/eclipse/jdt/internal/compiler/env/IGenericType;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    :goto_6
    return-void
.end method

.method private remember(Lorg/eclipse/jdt/internal/compiler/env/IGenericType;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->typeIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->typeIndex:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->typeModels:[Lorg/eclipse/jdt/internal/compiler/env/IGenericType;

    array-length v2, v1

    if-ne v0, v2, :cond_1

    mul-int/lit8 v2, v0, 0x2

    .line 2
    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/env/IGenericType;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->typeModels:[Lorg/eclipse/jdt/internal/compiler/env/IGenericType;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->typeBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->typeIndex:I

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->typeBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->typeModels:[Lorg/eclipse/jdt/internal/compiler/env/IGenericType;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->typeIndex:I

    aput-object p1, v0, v1

    .line 5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->typeBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aput-object p2, v0, v1

    .line 6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->bindingMap:Lorg/eclipse/jdt/internal/core/hierarchy/BindingMap;

    invoke-virtual {v0, p2, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/BindingMap;->put(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/lang/Object;)V

    return-void
.end method

.method private rememberAllTypes(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/core/ICompilationUnit;Z)V
    .locals 7

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    move v3, v1

    :goto_0
    if-lt v3, v2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v4, v0, v3

    new-instance v5, Ljava/lang/String;

    iget-object v6, v4, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p2, v5}, Lorg/eclipse/jdt/core/ICompilationUnit;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->rememberWithMemberTypes(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/core/IType;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz p3, :cond_7

    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->localTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    if-nez p3, :cond_2

    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->functionalExpressions:[Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;

    if-nez p3, :cond_2

    goto :goto_5

    :cond_2
    new-instance p3, Lorg/eclipse/jdt/internal/core/util/HandleFactory;

    invoke-direct {p3}, Lorg/eclipse/jdt/internal/core/util/HandleFactory;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->localTypeCount:I

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->functionalExpressionsCount:I

    add-int/2addr v2, v3

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    new-instance v2, Ljava/util/HashMap;

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->localTypeCount:I

    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->functionalExpressionsCount:I

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->localTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    if-eqz v3, :cond_4

    move v3, v1

    :goto_2
    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->localTypeCount:I

    if-lt v3, v4, :cond_3

    goto :goto_3

    :cond_3
    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->localTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    aget-object v4, v4, v3

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v5

    invoke-virtual {p3, v4, p2, v0, v2}, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->createElement(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;Lorg/eclipse/jdt/core/ICompilationUnit;Ljava/util/HashSet;Ljava/util/HashMap;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/core/IType;

    invoke-direct {p0, v5, v4}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->rememberWithMemberTypes(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/core/IType;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->functionalExpressions:[Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;

    if-eqz v3, :cond_7

    :goto_4
    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->functionalExpressionsCount:I

    if-lt v1, v3, :cond_5

    goto :goto_5

    :cond_5
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->functionalExpressions:[Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;

    aget-object v3, v3, v1

    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    if-eqz v4, :cond_6

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p3, v3, p2, v0, v2}, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->createLambdaTypeElement(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;Lorg/eclipse/jdt/core/ICompilationUnit;Ljava/util/HashSet;Ljava/util/HashMap;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/core/IType;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->getTypeBinding()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    invoke-direct {p0, v4, v3}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->remember(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    return-void
.end method

.method private rememberWithMemberTypes(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/core/IType;)V
    .locals 5

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-direct {p0, p2, v0}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->remember(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, p1, v1

    new-instance v3, Ljava/lang/String;

    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p2, v3}, Lorg/eclipse/jdt/core/IType;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->rememberWithMemberTypes(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/core/IType;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private reportHierarchy(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 6

    if-eqz p1, :cond_2

    if-eqz p3, :cond_0

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->focusType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->focusType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/16 p2, 0x2e

    invoke-static {p2, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->setFocusType([[C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->fixSupertypeBindings()V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->builder:Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    iget p2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->typeIndex:I

    const/4 p3, -0x1

    move v0, p3

    :goto_1
    const/4 v1, 0x0

    if-gez p2, :cond_5

    if-le v0, p3, :cond_4

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->hasMissingSuperClass:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->focusType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez p1, :cond_4

    :cond_3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->typeModels:[Lorg/eclipse/jdt/internal/compiler/env/IGenericType;

    aget-object p1, p1, v0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->builder:Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->typeBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object p3, p3, v0

    invoke-virtual {p2, p1, p3}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->getHandle(Lorg/eclipse/jdt/internal/compiler/env/IGenericType;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/core/IType;

    move-result-object p3

    invoke-virtual {p2, p1, p3, v1, v1}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->connect(Lorg/eclipse/jdt/internal/compiler/env/IGenericType;Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/core/IType;[Lorg/eclipse/jdt/core/IType;)V

    :cond_4
    return-void

    :cond_5
    if-eqz p1, :cond_7

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {p1}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw p1

    :cond_7
    :goto_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->typeBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v2, v2, p2

    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    move v0, p2

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->typeModels:[Lorg/eclipse/jdt/internal/compiler/env/IGenericType;

    aget-object v3, v3, p2

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->subOrSuperOfFocus(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_3

    :cond_a
    invoke-direct {p0, v3, v2}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->findSuperClass(Lorg/eclipse/jdt/internal/compiler/env/IGenericType;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/core/IType;

    move-result-object v1

    :goto_3
    invoke-direct {p0, v3, v2}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->findSuperInterfaces(Lorg/eclipse/jdt/internal/compiler/env/IGenericType;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/core/IType;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->builder:Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;

    invoke-virtual {v5, v3, v2}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->getHandle(Lorg/eclipse/jdt/internal/compiler/env/IGenericType;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/core/IType;

    move-result-object v2

    invoke-virtual {v5, v3, v2, v1, v4}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->connect(Lorg/eclipse/jdt/internal/compiler/env/IGenericType;Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/core/IType;[Lorg/eclipse/jdt/core/IType;)V

    :goto_4
    add-int/lit8 p2, p2, -0x1

    goto :goto_1
.end method

.method private reset()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->focusType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->superTypesOnly:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->typeIndex:I

    const/4 v0, 0x5

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/env/IGenericType;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->typeModels:[Lorg/eclipse/jdt/internal/compiler/env/IGenericType;

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->typeBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->bindingMap:Lorg/eclipse/jdt/internal/core/hierarchy/BindingMap;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/hierarchy/BindingMap;->clear()V

    return-void
.end method

.method private sanitizeBinaryType(Lorg/eclipse/jdt/internal/compiler/env/IGenericType;)V
    .locals 2

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->getSuperclassName()[C

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_OBJECT:[[C

    const/16 v1, 0x2f

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->recordSuperclass([C)V

    :cond_0
    return-void
.end method

.method private setEnvironment(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->builder:Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;

    const/4 p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->typeIndex:I

    const/4 p1, 0x5

    new-array p2, p1, [Lorg/eclipse/jdt/internal/compiler/env/IGenericType;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->typeModels:[Lorg/eclipse/jdt/internal/compiler/env/IGenericType;

    new-array p1, p1, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->typeBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->bindingMap:Lorg/eclipse/jdt/internal/core/hierarchy/BindingMap;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/hierarchy/BindingMap;->clear()V

    return-void
.end method

.method private subTypeOfType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_2
    invoke-direct {p0, v1, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->subTypeOfType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    if-eqz p1, :cond_6

    array-length v1, p1

    move v3, v0

    :goto_0
    if-lt v3, v1, :cond_4

    goto :goto_1

    :cond_4
    aget-object v4, p1, v3

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-direct {p0, v4, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->subTypeOfType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v4

    if-eqz v4, :cond_5

    return v2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return v0
.end method


# virtual methods
.method public accept(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->builder:Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {p1}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->sanitizeBinaryType(Lorg/eclipse/jdt/internal/compiler/env/IGenericType;)V

    .line 5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createBinaryTypeFrom(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    move-result-object p2

    .line 6
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->remember(Lorg/eclipse/jdt/internal/compiler/env/IGenericType;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public accept(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
    .locals 3

    .line 7
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->MODULE_INFO_NAME:[C

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;->getMainTypeName()[C

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->maxProblemsPerUnit:I

    const/4 v2, 0x1

    invoke-direct {v0, p1, v2, v2, v1}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;III)V

    .line 9
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->basicParser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->dietParse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->buildTypeBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    .line 11
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {p2, p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->completeTypeBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Z)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    .line 13
    new-instance v0, Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/util/Messages;->accept_cannot:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IDependent;->getFileName()[C

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->abortDueToInternalError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public accept([Lorg/eclipse/jdt/internal/compiler/env/ISourceType;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 17
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->builder:Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    if-eqz v2, :cond_1

    .line 18
    invoke-interface {v2}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {p1}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw p1

    .line 20
    :cond_1
    :goto_0
    aget-object p1, p1, v1

    .line 21
    :goto_1
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/ISourceType;->getEnclosingType()Lorg/eclipse/jdt/internal/compiler/env/ISourceType;

    move-result-object v2

    if-nez v2, :cond_5

    .line 22
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IDependent;->getFileName()[C

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->maxProblemsPerUnit:I

    invoke-direct {v2, v3, v0, v0, v4}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>([CIII)V

    .line 23
    new-array v3, v0, [Lorg/eclipse/jdt/internal/compiler/env/ISourceType;

    aput-object p1, v3, v1

    .line 24
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-wide v5, v5, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v7, 0x340000

    cmp-long v5, v5, v7

    if-ltz v5, :cond_2

    const/4 v5, 0x4

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_2
    or-int/lit8 v5, v5, 0x8

    .line 25
    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    .line 26
    invoke-static {v3, v5, v4, v2}, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->buildCompilationUnit([Lorg/eclipse/jdt/internal/compiler/env/ISourceType;ILorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 27
    :try_start_0
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    if-nez p2, :cond_3

    .line 28
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    .line 29
    :cond_3
    invoke-virtual {p2, v2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->buildTypeBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    .line 30
    check-cast p1, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->getHandle()Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p1

    .line 31
    invoke-direct {p0, v2, p1, v1}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->rememberAllTypes(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/core/ICompilationUnit;Z)V

    .line 32
    invoke-virtual {p2, v2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->completeTypeBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Z)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void

    .line 33
    :cond_5
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/ISourceType;->getEnclosingType()Lorg/eclipse/jdt/internal/compiler/env/ISourceType;

    move-result-object p1

    goto :goto_1
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/env/IGenericType;)V
    .locals 6

    .line 1
    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IGenericType;->isBinaryType()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->sanitizeBinaryType(Lorg/eclipse/jdt/internal/compiler/env/IGenericType;)V

    .line 3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-object v3, p1

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->cacheBinaryType(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;ZLorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    move-result-object v0

    .line 4
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->remember(Lorg/eclipse/jdt/internal/compiler/env/IGenericType;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    .line 5
    iget p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->typeIndex:I

    .line 6
    :goto_0
    iget v3, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->typeIndex:I

    if-le p1, v3, :cond_0

    .line 7
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->superTypesOnly:Z

    .line 8
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->builder:Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    invoke-direct {p0, p1, v2, v0}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->reportHierarchy(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_6

    .line 9
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->typeModels:[Lorg/eclipse/jdt/internal/compiler/env/IGenericType;

    aget-object v3, v3, p1

    if-eqz v3, :cond_2

    .line 10
    invoke-interface {v3}, Lorg/eclipse/jdt/internal/compiler/env/IGenericType;->isBinaryType()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 11
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 12
    :try_start_1
    sget-object v5, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->FakeUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iput-object v5, v3, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    .line 13
    :cond_1
    :goto_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->typeBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v3, v3, p1

    .line 14
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 15
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    :try_end_1
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    :try_start_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    :goto_2
    iput-object v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    goto :goto_4

    :goto_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-object v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    .line 17
    throw p1

    .line 18
    :catch_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    goto :goto_2

    :cond_2
    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 19
    :cond_3
    check-cast p1, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->getHandle()Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 21
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 22
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->superTypesOnly:Z

    .line 23
    check-cast p1, Lorg/eclipse/jdt/internal/core/Openable;

    filled-new-array {p1}, [Lorg/eclipse/jdt/internal/core/Openable;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v2}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->resolve([Lorg/eclipse/jdt/internal/core/Openable;Ljava/util/HashSet;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_2
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    :catch_1
    :cond_4
    :goto_5
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->reset()V

    goto :goto_7

    :goto_6
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->reset()V

    .line 25
    throw p1

    :goto_7
    return-void
.end method

.method public resolve([Lorg/eclipse/jdt/internal/core/Openable;Ljava/util/HashSet;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const/4 v3, 0x3

    move-object/from16 v4, p3

    .line 26
    invoke-static {v4, v3}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v3

    .line 27
    :try_start_0
    array-length v4, v0

    .line 28
    new-array v5, v4, [Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    .line 29
    new-array v6, v4, [Z

    .line 30
    new-array v7, v4, [Lorg/eclipse/jdt/core/ICompilationUnit;

    .line 31
    iget-object v8, v1, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->builder:Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 32
    invoke-interface {v8}, Lorg/eclipse/jdt/core/IMember;->isBinary()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 33
    invoke-interface {v8}, Lorg/eclipse/jdt/core/IType;->getClassFile()Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    move-result-object v10

    check-cast v10, Lorg/eclipse/jdt/internal/core/Openable;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_1c

    :catch_0
    move-exception v0

    goto/16 :goto_1b

    .line 34
    :cond_0
    invoke-interface {v8}, Lorg/eclipse/jdt/core/IMember;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v10

    check-cast v10, Lorg/eclipse/jdt/internal/core/Openable;

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x1

    .line 35
    invoke-virtual {v3, v11}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    .line 36
    new-instance v12, Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget-object v13, v1, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v13, v13, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    invoke-direct {v12, v13, v11}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Z)V

    .line 37
    iget-object v13, v1, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-wide v13, v13, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v15, 0x340000

    cmp-long v13, v13, v15

    if-ltz v13, :cond_2

    move v13, v11

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    :goto_1
    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_2
    if-lt v15, v4, :cond_10

    if-eqz v8, :cond_3

    if-nez v16, :cond_3

    if-eqz v9, :cond_3

    .line 38
    move-object v0, v8

    check-cast v0, Lorg/eclipse/jdt/internal/core/Member;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/Member;->getOuterMostLocalContext()Lorg/eclipse/jdt/internal/core/Member;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 39
    new-instance v0, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder;

    invoke-direct {v0, v9}, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    invoke-virtual {v0, v8}, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder;->findType(Lorg/eclipse/jdt/core/IType;)Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v9

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    const/4 v0, 0x0

    .line 40
    :goto_4
    iget v2, v1, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->typeIndex:I

    if-le v0, v2, :cond_d

    .line 41
    invoke-virtual {v3, v11}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v0

    invoke-virtual {v0, v14}, Lorg/eclipse/core/runtime/SubMonitor;->setWorkRemaining(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_5
    if-lt v2, v14, :cond_b

    .line 42
    :try_start_1
    invoke-virtual {v3, v11}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v0

    invoke-virtual {v0, v14}, Lorg/eclipse/core/runtime/SubMonitor;->setWorkRemaining(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v0

    .line 43
    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v2, v5, v6, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->completeTypeBindings([Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;[ZI)V

    const/4 v2, 0x0

    :goto_6
    if-lt v2, v14, :cond_4

    goto :goto_7

    .line 44
    :cond_4
    invoke-virtual {v0, v11}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    .line 45
    aget-object v3, v5, v2

    if-eqz v3, :cond_6

    .line 46
    aget-boolean v4, v6, v2

    if-eqz v4, :cond_5

    .line 47
    iget-object v10, v3, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->faultInTypes()V

    .line 48
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->resolve()V

    .line 49
    :cond_5
    aget-object v10, v7, v2

    invoke-direct {v1, v3, v10, v4}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->rememberAllTypes(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/core/ICompilationUnit;Z)V
    :try_end_1
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :catch_1
    :goto_7
    if-nez v16, :cond_8

    if-eqz v8, :cond_8

    .line 50
    :try_start_2
    invoke-interface {v8}, Lorg/eclipse/jdt/core/IMember;->isBinary()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 51
    invoke-interface {v8}, Lorg/eclipse/jdt/core/IType;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 52
    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/16 v3, 0x2e

    invoke-static {v3, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getCachedType([[C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 53
    iget-wide v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/32 v4, 0x2000000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    .line 54
    :cond_7
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->reset()V

    return-void

    :cond_8
    move-object/from16 v0, v16

    .line 55
    :cond_9
    :try_start_3
    invoke-direct {v1, v8, v9, v0}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->reportHierarchy(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 56
    :catch_2
    :cond_a
    :goto_8
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->reset()V

    goto/16 :goto_1d

    .line 57
    :cond_b
    :try_start_4
    invoke-virtual {v0, v11}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    .line 58
    aget-object v4, v5, v2
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_c

    .line 59
    :try_start_5
    aget-boolean v10, v6, v2

    if-eqz v10, :cond_c

    .line 60
    invoke-virtual {v12, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getMethodBodies(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V
    :try_end_5
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_9

    :catch_3
    const/4 v4, 0x0

    .line 61
    :try_start_6
    aput-boolean v4, v6, v2

    :cond_c
    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 62
    :cond_d
    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->typeModels:[Lorg/eclipse/jdt/internal/compiler/env/IGenericType;

    aget-object v2, v2, v0

    if-eqz v2, :cond_f

    .line 63
    invoke-interface {v2}, Lorg/eclipse/jdt/internal/compiler/env/IGenericType;->isBinaryType()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 64
    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v4, :cond_e

    .line 65
    :try_start_7
    sget-object v10, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->FakeUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iput-object v10, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    goto :goto_a

    :catchall_1
    move-exception v0

    goto :goto_c

    .line 66
    :cond_e
    :goto_a
    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->typeBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v2, v2, v0

    .line 67
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 68
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    :try_end_7
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 69
    :try_start_8
    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    :goto_b
    iput-object v4, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    goto :goto_d

    :goto_c
    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-object v4, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    .line 70
    throw v0

    .line 71
    :catch_4
    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    goto :goto_b

    :cond_f
    :goto_d
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 72
    :cond_10
    aget-object v11, v0, v15

    .line 73
    instance-of v0, v11, Lorg/eclipse/jdt/core/ICompilationUnit;

    if-eqz v0, :cond_1c

    .line 74
    move-object v0, v11

    check-cast v0, Lorg/eclipse/jdt/core/ICompilationUnit;

    if-nez v2, :cond_11

    :goto_e
    move-object/from16 v18, v3

    const/4 v3, 0x1

    goto :goto_f

    .line 75
    :cond_11
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v17

    .line 76
    invoke-interface {v0}, Lorg/eclipse/jdt/core/ICompilationUnit;->isWorkingCopy()Z

    move-result v18

    if-eqz v18, :cond_12

    goto :goto_e

    :cond_12
    move-object/from16 v18, v3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 77
    :goto_f
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IOpenable;->isOpen()Z

    move-result v17

    if-eqz v17, :cond_18

    .line 78
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    move-object/from16 v17, v8

    move-object v8, v0

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    move-object/from16 v19, v9

    iget-object v9, v1, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget v9, v9, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->maxProblemsPerUnit:I

    invoke-direct {v2, v8, v15, v4, v9}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;III)V
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 79
    :try_start_9
    invoke-interface {v0}, Lorg/eclipse/jdt/core/ICompilationUnit;->getTypes()[Lorg/eclipse/jdt/core/IType;

    move-result-object v8

    .line 80
    array-length v9, v8
    :try_end_9
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-nez v9, :cond_14

    move-object/from16 v21, v5

    :catch_5
    :cond_13
    :goto_10
    const/4 v3, 0x0

    const/4 v5, 0x0

    goto/16 :goto_19

    :cond_14
    move-object/from16 v20, v10

    .line 81
    :try_start_a
    new-array v10, v9, [Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;
    :try_end_a
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object/from16 v21, v5

    const/4 v5, 0x0

    :goto_11
    if-lt v5, v9, :cond_15

    goto :goto_13

    .line 82
    :cond_15
    :try_start_b
    aget-object v22, v8, v5

    .line 83
    check-cast v22, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual/range {v22 .. v22}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;

    aput-object v22, v10, v5
    :try_end_b
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_2
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :catch_6
    move-object/from16 v21, v5

    goto :goto_12

    :catch_7
    move-object/from16 v21, v5

    move-object/from16 v20, v10

    :goto_12
    const/4 v10, 0x0

    :catch_8
    :goto_13
    if-nez v3, :cond_17

    if-eqz v13, :cond_16

    const/4 v5, 0x4

    goto :goto_14

    :cond_16
    const/4 v5, 0x0

    :goto_14
    or-int/lit8 v5, v5, 0x8

    goto :goto_15

    :cond_17
    const/16 v5, 0x2f

    .line 84
    :goto_15
    :try_start_c
    iget-object v8, v1, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    .line 85
    invoke-static {v10, v5, v8, v2}, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->buildCompilationUnit([Lorg/eclipse/jdt/internal/compiler/env/ISourceType;ILorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v2

    if-eqz v3, :cond_19

    if-eqz v2, :cond_19

    .line 86
    iget v5, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    goto :goto_16

    :cond_18
    move-object/from16 v21, v5

    move-object/from16 v17, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    .line 87
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v2

    check-cast v2, Lorg/eclipse/core/resources/IFile;

    .line 88
    iget-object v5, v1, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->builder:Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;

    invoke-direct {v1, v11}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->findAssociatedModuleName(Lorg/eclipse/jdt/internal/core/Openable;)[C

    move-result-object v8

    invoke-virtual {v5, v11, v2, v8}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->createCompilationUnitFromPath(Lorg/eclipse/jdt/internal/core/Openable;Lorg/eclipse/core/resources/IFile;[C)Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    move-result-object v2

    .line 89
    new-instance v5, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-object v8, v1, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget v8, v8, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->maxProblemsPerUnit:I

    invoke-direct {v5, v2, v15, v4, v8}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;III)V

    .line 90
    invoke-virtual {v12, v2, v5}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->dietParse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v2

    :cond_19
    :goto_16
    if-eqz v2, :cond_1b

    .line 91
    aput-boolean v3, v6, v14

    .line 92
    aput-object v0, v7, v14

    add-int/lit8 v0, v14, 0x1

    .line 93
    aput-object v2, v21, v14
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_c} :catch_2
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 94
    :try_start_d
    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->buildTypeBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
    :try_end_d
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-object/from16 v10, v20

    .line 95
    :try_start_e
    invoke-virtual {v11, v10}, Lorg/eclipse/jdt/internal/core/JavaElement;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_e
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v3, :cond_1a

    move v14, v0

    move-object v9, v2

    :goto_17
    const/4 v3, 0x0

    const/4 v5, 0x0

    goto :goto_1a

    :catch_9
    move-object/from16 v10, v20

    :catch_a
    :cond_1a
    move v14, v0

    move-object/from16 v9, v19

    goto :goto_17

    :cond_1b
    move-object/from16 v10, v20

    goto/16 :goto_10

    :cond_1c
    move-object/from16 v18, v3

    move-object/from16 v21, v5

    move-object/from16 v17, v8

    move-object/from16 v19, v9

    .line 96
    :try_start_f
    move-object v0, v11

    check-cast v0, Lorg/eclipse/jdt/internal/core/ClassFile;

    .line 97
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/ClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getInfo(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    if-nez v2, :cond_1e

    .line 98
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/Openable;->getPackageFragmentRoot()Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->isArchive()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 99
    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->builder:Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->createInfoFromClassFileInJar(Lorg/eclipse/jdt/internal/core/Openable;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    move-result-object v2

    goto :goto_18

    .line 100
    :cond_1d
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/Openable;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v2

    .line 101
    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->builder:Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;

    invoke-virtual {v3, v0, v2}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->createInfoFromClassFile(Lorg/eclipse/jdt/internal/core/Openable;Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    move-result-object v2
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_f} :catch_2
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_1e
    :goto_18
    if-eqz v2, :cond_13

    .line 102
    :try_start_10
    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->sanitizeBinaryType(Lorg/eclipse/jdt/internal/compiler/env/IGenericType;)V

    .line 103
    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;
    :try_end_10
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    const/4 v3, 0x0

    const/4 v5, 0x0

    :try_start_11
    invoke-virtual {v0, v2, v5, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->cacheBinaryType(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;ZLorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    move-result-object v0

    .line 104
    invoke-direct {v1, v2, v0}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->remember(Lorg/eclipse/jdt/internal/compiler/env/IGenericType;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    .line 105
    invoke-virtual {v11, v10}, Lorg/eclipse/jdt/internal/core/JavaElement;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_11
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_11 .. :try_end_11} :catch_b
    .catch Ljava/lang/ClassCastException; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    if-eqz v2, :cond_1f

    move-object/from16 v16, v0

    :catch_b
    :cond_1f
    :goto_19
    move-object/from16 v9, v19

    :goto_1a
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v8, v17

    move-object/from16 v3, v18

    move-object/from16 v5, v21

    const/4 v11, 0x1

    goto/16 :goto_2

    .line 106
    :goto_1b
    :try_start_12
    sget-boolean v2, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->DEBUG:Z

    if-eqz v2, :cond_a

    .line 107
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_8

    .line 108
    :goto_1c
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->reset()V

    .line 109
    throw v0

    :goto_1d
    return-void
.end method

.method public setFocusType([[C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getCachedType([[C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->focusType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->UnNamedModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {v1, p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->askForType([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->focusType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v1, :cond_3

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object v2, p1, v1

    const/16 v3, 0x24

    invoke-static {v3, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x0

    invoke-static {v2, v5, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v6

    aput-object v6, p1, v1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->UnNamedModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {v1, p1, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->askForType([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->focusType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz p1, :cond_3

    add-int/lit8 v4, v4, 0x1

    array-length p1, v2

    invoke-static {v3, v2, v4, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[CII)[[C

    move-result-object p1

    :goto_0
    array-length v1, p1

    if-lt v5, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->focusType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v2, p1, v5

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getMemberType([C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->focusType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->focusType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object p1

    :cond_4
    :goto_2
    return-object v0
.end method

.method public subOrSuperOfFocus(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->focusType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->subTypeOfType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->superTypesOnly:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->focusType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->subTypeOfType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result p1
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    return v1

    :catch_0
    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public worked(Lorg/eclipse/core/runtime/IProgressMonitor;I)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Lorg/eclipse/core/runtime/IProgressMonitor;->worked(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {p1}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
