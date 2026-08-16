.class public Lorg/eclipse/jdt/internal/core/util/HandleFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private javaModel:Lorg/eclipse/jdt/internal/core/JavaModel;

.field private lastPkgFragmentRoot:Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

.field private lastPkgFragmentRootPath:Ljava/lang/String;

.field private localOccurrenceCounts:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

.field private packageHandles:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->localOccurrenceCounts:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModel()Lorg/eclipse/jdt/internal/core/JavaModel;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->javaModel:Lorg/eclipse/jdt/internal/core/JavaModel;

    return-void
.end method

.method private getJarPkgFragmentRoot(Ljava/lang/String;ILjava/lang/String;Lorg/eclipse/jdt/core/search/IJavaSearchScope;)Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;
    .locals 7

    .line 1
    new-instance v0, Lorg/eclipse/core/runtime/Path;

    invoke-direct {v0, p3}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModel;->getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v2

    .line 3
    instance-of v3, v2, Lorg/eclipse/core/resources/IFile;

    if-eqz v3, :cond_0

    .line 4
    move-object v3, v2

    check-cast v3, Lorg/eclipse/core/resources/IFile;

    .line 5
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->javaModel:Lorg/eclipse/jdt/internal/core/JavaModel;

    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/core/JavaModel;->getJavaProject(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/core/JavaProject;

    .line 6
    :try_start_0
    invoke-virtual {v4, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getClasspathEntryFor(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 7
    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPackageFragmentRoot(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    :cond_0
    if-eqz p4, :cond_5

    .line 8
    instance-of v3, p4, Lorg/eclipse/jdt/internal/core/search/AbstractJavaSearchScope;

    if-eqz v3, :cond_1

    .line 9
    check-cast p4, Lorg/eclipse/jdt/internal/core/search/AbstractJavaSearchScope;

    invoke-virtual {p4, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/search/AbstractJavaSearchScope;->packageFragmentRoot(Ljava/lang/String;ILjava/lang/String;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    if-eqz p1, :cond_5

    return-object p1

    .line 10
    :cond_1
    invoke-interface {p4}, Lorg/eclipse/jdt/core/search/IJavaSearchScope;->enclosingProjectsAndJars()[Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    .line 11
    array-length p2, p1

    .line 12
    new-array p3, p2, [Lorg/eclipse/jdt/core/IJavaProject;

    move p4, v1

    move v3, p4

    :goto_0
    if-lt p4, p2, :cond_3

    if-ge v3, p2, :cond_2

    .line 13
    new-array p1, v3, [Lorg/eclipse/jdt/core/IJavaProject;

    invoke-static {p3, v1, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p3, p1

    .line 14
    :cond_2
    invoke-direct {p0, v0, v2, p3}, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->getJarPkgFragmentRoot(Lorg/eclipse/core/runtime/IPath;Ljava/lang/Object;[Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    move-result-object p1

    if-eqz p1, :cond_5

    return-object p1

    .line 15
    :cond_3
    aget-object v4, p1, p4

    .line 16
    invoke-interface {v4}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    add-int/lit8 v5, v3, 0x1

    .line 17
    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->javaModel:Lorg/eclipse/jdt/internal/core/JavaModel;

    invoke-interface {v4, v1}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/eclipse/jdt/internal/core/JavaModel;->getJavaProject(Ljava/lang/String;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v4

    aput-object v4, p3, v3

    move v3, v5

    :cond_4
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 18
    :cond_5
    :try_start_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->javaModel:Lorg/eclipse/jdt/internal/core/JavaModel;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaModel;->getJavaProjects()[Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_1

    .line 19
    invoke-direct {p0, v0, v2, p1}, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->getJarPkgFragmentRoot(Lorg/eclipse/core/runtime/IPath;Ljava/lang/Object;[Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    move-result-object p1

    return-object p1

    :catch_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getJarPkgFragmentRoot(Lorg/eclipse/core/runtime/IPath;Ljava/lang/Object;[Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;
    .locals 4

    .line 20
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 21
    :cond_0
    :try_start_0
    aget-object v2, p3, v1

    check-cast v2, Lorg/eclipse/jdt/internal/core/JavaProject;

    .line 22
    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getClasspathEntryFor(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 23
    instance-of v3, p2, Lorg/eclipse/core/resources/IFile;

    if-eqz v3, :cond_1

    .line 24
    move-object v3, p2

    check-cast v3, Lorg/eclipse/core/resources/IFile;

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPackageFragmentRoot(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    return-object v2

    .line 25
    :cond_1
    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPackageFragmentRoot0(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getPkgFragmentRoot(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;
    .locals 10

    new-instance v0, Lorg/eclipse/core/runtime/Path;

    invoke-direct {v0, p1}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getProjects()[Lorg/eclipse/core/resources/IProject;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :try_start_0
    aget-object v4, p1, v3

    invoke-interface {v4}, Lorg/eclipse/core/resources/IProject;->isAccessible()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "org.eclipse.jdt.core.javanature"

    invoke-interface {v4, v5}, Lorg/eclipse/core/resources/IProject;->hasNature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->javaModel:Lorg/eclipse/jdt/internal/core/JavaModel;

    invoke-virtual {v5, v4}, Lorg/eclipse/jdt/internal/core/JavaModel;->getJavaProject(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IJavaProject;->getPackageFragmentRoots()[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_1
    if-lt v6, v5, :cond_2

    goto :goto_2

    :cond_2
    aget-object v7, v4, v6

    check-cast v7, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->internalPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v8

    invoke-interface {v8, v0}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->fullInclusionPatternChars()[[C

    move-result-object v8

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->fullExclusionPatternChars()[[C

    move-result-object v9

    invoke-static {v0, v8, v9, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/core/runtime/IPath;[[C[[CZ)Z

    move-result v8
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v8, :cond_3

    return-object v7

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_0
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public createElement(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;Lorg/eclipse/jdt/core/ICompilationUnit;Ljava/util/HashSet;Ljava/util/HashMap;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 7

    .line 1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->createElement(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ILorg/eclipse/jdt/core/ICompilationUnit;Ljava/util/HashSet;Ljava/util/HashMap;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1
.end method

.method public createElement(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ILorg/eclipse/jdt/core/ICompilationUnit;Ljava/util/HashSet;Ljava/util/HashMap;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 13

    move-object v0, p1

    move v7, p2

    move-object/from16 v8, p5

    .line 2
    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lorg/eclipse/jdt/core/IJavaElement;

    if-eqz v9, :cond_0

    return-object v9

    .line 3
    :cond_0
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    const/4 v10, 0x1

    if-eq v1, v10, :cond_11

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-eq v1, v12, :cond_7

    if-eq v1, v11, :cond_2

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    goto/16 :goto_6

    :cond_1
    move-object v1, p0

    move-object/from16 v0, p3

    goto/16 :goto_7

    .line 4
    :cond_2
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    move-object v1, p0

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->createElement(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ILorg/eclipse/jdt/core/ICompilationUnit;Ljava/util/HashSet;Ljava/util/HashMap;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move-object v1, v9

    goto :goto_1

    .line 6
    :pswitch_1
    check-cast v1, Lorg/eclipse/jdt/core/IMember;

    .line 7
    invoke-interface {v1}, Lorg/eclipse/jdt/core/IMember;->isBinary()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    return-object v0

    .line 8
    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v1, v2, v10}, Lorg/eclipse/jdt/core/IMember;->getType(Ljava/lang/String;I)Lorg/eclipse/jdt/core/IType;

    move-result-object v1

    if-eqz v1, :cond_5

    move-object/from16 v5, p4

    .line 9
    :goto_0
    invoke-virtual {v5, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move-object v2, v1

    check-cast v2, Lorg/eclipse/jdt/internal/core/SourceRefElement;

    iget v3, v2, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    add-int/2addr v3, v10

    iput v3, v2, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    goto :goto_0

    .line 10
    :pswitch_2
    check-cast v1, Lorg/eclipse/jdt/core/IType;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v1, v2}, Lorg/eclipse/jdt/core/IType;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object v1

    goto :goto_1

    .line 11
    :pswitch_3
    check-cast v1, Lorg/eclipse/jdt/core/ICompilationUnit;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v1, v2}, Lorg/eclipse/jdt/core/ICompilationUnit;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object v1

    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    .line 12
    invoke-virtual {v8, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_2
    move-object v0, v1

    :goto_3
    move-object v1, p0

    goto/16 :goto_7

    :cond_7
    move-object/from16 v5, p4

    .line 13
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->isLambdaScope()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 14
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    move-object v1, p0

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->createElement(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ILorg/eclipse/jdt/core/ICompilationUnit;Ljava/util/HashSet;Ljava/util/HashMap;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->originalReferenceContext()Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    .line 16
    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 17
    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    instance-of v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    if-nez v3, :cond_8

    .line 18
    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/LambdaFactory;->createLambdaExpression(Lorg/eclipse/jdt/internal/core/JavaElement;Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;)Lorg/eclipse/jdt/internal/core/LambdaExpression;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/LambdaExpression;->getMethod()Lorg/eclipse/jdt/core/IMethod;

    move-result-object v1

    .line 19
    invoke-virtual {v8, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-object v1

    .line 20
    :cond_9
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    move-object v1, p0

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->createElement(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ILorg/eclipse/jdt/core/ICompilationUnit;Ljava/util/HashSet;Ljava/util/HashMap;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/IType;

    .line 21
    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    .line 22
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isInsideInitializer()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 23
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v3

    .line 24
    iget-object v0, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    const/4 v2, 0x0

    if-nez v0, :cond_a

    move v4, v2

    goto :goto_4

    :cond_a
    array-length v0, v0

    move v4, v0

    :goto_4
    move v0, v10

    :goto_5
    if-lt v2, v4, :cond_b

    :goto_6
    move-object v1, p0

    move-object v0, v9

    goto :goto_7

    .line 25
    :cond_b
    iget-object v5, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    aget-object v5, v5, v2

    .line 26
    iget v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    if-gt v6, v7, :cond_e

    iget v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    if-gt v7, v6, :cond_e

    .line 27
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->getKind()I

    move-result v2

    if-eq v2, v10, :cond_d

    if-eq v2, v12, :cond_c

    if-eq v2, v11, :cond_d

    move-object v0, v9

    goto/16 :goto_3

    .line 28
    :cond_c
    invoke-interface {v1, v0}, Lorg/eclipse/jdt/core/IType;->getInitializer(I)Lorg/eclipse/jdt/core/IInitializer;

    move-result-object v0

    goto/16 :goto_3

    .line 29
    :cond_d
    new-instance v0, Ljava/lang/String;

    iget-object v2, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v1, v0}, Lorg/eclipse/jdt/core/IType;->getField(Ljava/lang/String;)Lorg/eclipse/jdt/core/IField;

    move-result-object v0

    goto/16 :goto_3

    .line 30
    :cond_e
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->getKind()I

    move-result v5

    if-ne v5, v12, :cond_f

    add-int/lit8 v0, v0, 0x1

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 31
    :cond_10
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v2

    .line 32
    new-instance v3, Ljava/lang/String;

    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/util/Util;->typeParameterSignatures(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lorg/eclipse/jdt/core/IType;->getMethod(Ljava/lang/String;[Ljava/lang/String;)Lorg/eclipse/jdt/core/IMethod;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 33
    invoke-virtual {v8, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_11
    move-object/from16 v5, p4

    .line 34
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    move-object v0, p0

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->createElement(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ILorg/eclipse/jdt/core/ICompilationUnit;Ljava/util/HashSet;Ljava/util/HashMap;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    goto/16 :goto_3

    .line 35
    :goto_7
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->resolveDuplicates(Lorg/eclipse/jdt/core/IJavaElement;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public createLambdaTypeElement(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;Lorg/eclipse/jdt/core/ICompilationUnit;Ljava/util/HashSet;Ljava/util/HashMap;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 6

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart()I

    move-result v2

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->createElement(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ILorg/eclipse/jdt/core/ICompilationUnit;Ljava/util/HashSet;Ljava/util/HashMap;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1
.end method

.method public createOpenable(Ljava/lang/String;Lorg/eclipse/jdt/core/search/IJavaSearchScope;)Lorg/eclipse/jdt/internal/core/Openable;
    .locals 7

    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-le v1, v2, :cond_7

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->lastPkgFragmentRootPath:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v2, v6, :cond_1

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->lastPkgFragmentRootPath:Ljava/lang/String;

    invoke-virtual {p1, v5, v6, v5, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v4

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2, p2}, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->getJarPkgFragmentRoot(Ljava/lang/String;ILjava/lang/String;Lorg/eclipse/jdt/core/search/IJavaSearchScope;)Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    move-result-object p2

    if-nez p2, :cond_2

    return-object v4

    :cond_2
    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->lastPkgFragmentRootPath:Ljava/lang/String;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->lastPkgFragmentRoot:Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    new-instance v2, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    invoke-direct {v2, v3}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;-><init>(I)V

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->packageHandles:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    :goto_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->lastPkgFragmentRoot:Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isJrt(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move v1, v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Automatic-Module-Name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object p2

    :cond_4
    new-instance p2, Lorg/eclipse/core/runtime/Path;

    invoke-direct {p2, p1}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/eclipse/core/runtime/Path;->segments()[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_5

    new-array v0, p2, [Ljava/lang/String;

    invoke-static {p1, v5, v0, v5, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_5
    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    :goto_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->packageHandles:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->get([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/IPackageFragment;

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->lastPkgFragmentRoot:Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    invoke-virtual {v1, v0, v4}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment([Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->packageHandles:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    invoke-virtual {v2, v0, v1}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->put([Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    aget-object p1, p1, p2

    invoke-interface {v1, p1}, Lorg/eclipse/jdt/core/IPackageFragment;->getClassFile(Ljava/lang/String;)Lorg/eclipse/jdt/core/IClassFile;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/Openable;

    return-object p1

    :cond_7
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->lastPkgFragmentRootPath:Ljava/lang/String;

    if-eqz p2, :cond_8

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->lastPkgFragmentRoot:Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->fullInclusionPatternChars()[[C

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->lastPkgFragmentRoot:Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->fullExclusionPatternChars()[[C

    move-result-object v1

    invoke-static {p2, v0, v1, v5}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isExcluded([C[[C[[CZ)Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->lastPkgFragmentRootPath:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_8

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v0, 0x2f

    if-eq p2, v0, :cond_a

    :cond_8
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->getPkgFragmentRoot(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    move-result-object p2

    if-nez p2, :cond_9

    return-object v4

    :cond_9
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->lastPkgFragmentRoot:Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->internalPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->lastPkgFragmentRootPath:Ljava/lang/String;

    new-instance p2, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    invoke-direct {p2, v3}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;-><init>(I)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->packageHandles:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    :cond_a
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->lastPkgFragmentRootPath:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lorg/eclipse/core/runtime/Path;

    invoke-direct {p2, p1}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/eclipse/core/runtime/Path;->segments()[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_b

    new-array v0, p2, [Ljava/lang/String;

    invoke-static {p1, v5, v0, v5, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_b
    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    :goto_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->packageHandles:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->get([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/IPackageFragment;

    if-nez v1, :cond_c

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->lastPkgFragmentRoot:Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->packageHandles:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    invoke-virtual {v2, v0, v1}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->put([Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    aget-object p1, p1, p2

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->isJavaLikeFileName(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {v1, p1}, Lorg/eclipse/jdt/core/IPackageFragment;->getCompilationUnit(Ljava/lang/String;)Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/Openable;

    return-object p1

    :cond_d
    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isClassFileName(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {v1, p1}, Lorg/eclipse/jdt/core/IPackageFragment;->getClassFile(Ljava/lang/String;)Lorg/eclipse/jdt/core/IClassFile;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/Openable;

    return-object p1

    :cond_e
    return-object v4
.end method

.method public resolveDuplicates(Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 4

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/SourceType;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/core/SourceType;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/SourceType;->isAnonymous()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    const/4 v1, 0x7

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/IJavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->localOccurrenceCounts:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->get(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->localOccurrenceCounts:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    invoke-virtual {v0, p1, v3}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->put(Ljava/lang/Object;I)I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->localOccurrenceCounts:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    add-int/2addr v1, v3

    invoke-virtual {v2, p1, v1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->put(Ljava/lang/Object;I)I

    iput v1, v0, Lorg/eclipse/jdt/internal/core/SourceType;->localOccurrenceCount:I

    :cond_1
    :goto_0
    return-void
.end method
