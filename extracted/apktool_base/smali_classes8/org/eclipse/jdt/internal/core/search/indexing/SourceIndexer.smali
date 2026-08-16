.class public Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;
.super Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/impl/ITypeRequestor;
.implements Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field private basicParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

.field private compilationUnit:Lorg/eclipse/jdt/internal/core/jdom/CompilationUnit;

.field private cud:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

.field private lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

.field private options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

.field public requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/search/SearchDocument;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;-><init>(Lorg/eclipse/jdt/core/search/SearchDocument;)V

    new-instance p1, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexerRequestor;-><init>(Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    return-void
.end method

.method private purgeMethodStatements(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V
    .locals 7

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    array-length v2, v0

    :goto_0
    move v3, v1

    :goto_1
    if-lt v3, v2, :cond_3

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz p1, :cond_2

    array-length v0, p1

    :goto_2
    if-lt v1, v0, :cond_1

    goto :goto_3

    :cond_1
    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;->purgeMethodStatements(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    return-void

    :cond_3
    aget-object v4, v0, v3

    if-eqz v4, :cond_4

    iget v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v6, 0x200000

    and-int/2addr v5, v6

    if-nez v5, :cond_4

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iput-object v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private reduceParseTree(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V
    .locals 3

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    aget-object v2, p1, v0

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;->purgeMethodStatements(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public accept(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createBinaryTypeFrom(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    return-void
.end method

.method public accept(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
    .locals 3

    .line 2
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->maxProblemsPerUnit:I

    const/4 v2, 0x1

    invoke-direct {v0, p1, v2, v2, v1}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;III)V

    .line 3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;->basicParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v1, p1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->dietParse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->buildTypeBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    .line 5
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {p2, p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->completeTypeBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Z)V

    return-void
.end method

.method public accept([Lorg/eclipse/jdt/internal/compiler/env/ISourceType;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
    .locals 0

    const/4 p2, 0x0

    .line 6
    aget-object p1, p1, p2

    .line 7
    :goto_0
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/ISourceType;->getEnclosingType()Lorg/eclipse/jdt/internal/compiler/env/ISourceType;

    move-result-object p2

    if-nez p2, :cond_0

    .line 8
    check-cast p1, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;

    .line 9
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->getHandle()Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    .line 10
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    .line 11
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;->accept(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    return-void

    .line 12
    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/ISourceType;->getEnclosingType()Lorg/eclipse/jdt/internal/compiler/env/ISourceType;

    move-result-object p1

    goto :goto_0
.end method

.method public indexDocument()V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->document:Lorg/eclipse/jdt/core/search/SearchDocument;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/search/SearchDocument;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->document:Lorg/eclipse/jdt/core/search/SearchDocument;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/search/SearchDocument;->getParser()Lorg/eclipse/jdt/internal/compiler/SourceElementParser;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/eclipse/core/runtime/Path;

    invoke-direct {v1, v0}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getProject(Ljava/lang/String;)Lorg/eclipse/core/resources/IProject;

    move-result-object v1

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/JavaModelManager;->indexManager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    invoke-static {v1}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    invoke-virtual {v2, v1, v3}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getSourceElementParser(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;)Lorg/eclipse/jdt/internal/compiler/SourceElementParser;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;->requestor:Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->setRequestor(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;)V

    :goto_0
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->document:Lorg/eclipse/jdt/core/search/SearchDocument;

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/search/SearchDocument;->getCharContents()[C

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-object v3, v2

    :catch_1
    move-object v0, v2

    :goto_1
    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    new-instance v4, Lorg/eclipse/jdt/internal/core/jdom/CompilationUnit;

    invoke-direct {v4, v3, v0}, Lorg/eclipse/jdt/internal/core/jdom/CompilationUnit;-><init>([C[C)V

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;->compilationUnit:Lorg/eclipse/jdt/internal/core/jdom/CompilationUnit;

    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {v1, v4, v0, v2}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->parseCompilationUnit(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;ZLorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->hasFunctionalTypes()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->document:Lorg/eclipse/jdt/core/search/SearchDocument;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/search/SearchDocument;->requireIndexingResolvedDocument()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method public indexResolvedDocument()V
    .locals 14

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;->cud:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->functionalExpressionsCount:I

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;->cud:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->functionalExpressions:[Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;

    aget-object v2, v2, v1

    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->sourceName()[C

    move-result-object v3

    sget-object v4, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->METHOD_DECL:[C

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v5, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v2, v2

    invoke-static {v5, v2}, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->createIndexKey([CI)[C

    move-result-object v2

    invoke-virtual {p0, v4, v2}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addIndexEntry([C[C)V

    sget-object v10, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    sget-object v8, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ONE_ZERO:[C

    sget-object v9, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ONE_ZERO_CHAR:[[C

    filled-new-array {v3}, [[C

    move-result-object v11

    sget-object v12, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    const/4 v13, 0x1

    const/4 v6, 0x0

    move-object v5, p0

    move-object v7, v10

    invoke-virtual/range {v5 .. v13}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addClassDeclaration(I[C[C[[C[C[[C[[CZ)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->isArrayConstructorReference()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->getMethodBinding()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->isMethodReference()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v3, v3

    invoke-virtual {p0, v2, v3}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addMethodReference([CI)V

    goto :goto_1

    :cond_3
    iget-object v2, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName()[C

    move-result-object v2

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v3, v3

    invoke-virtual {p0, v2, v3}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addConstructorReference([CI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_2
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_3
    return-void
.end method

.method public resolveDocument()V
    .locals 10

    :try_start_0
    new-instance v0, Lorg/eclipse/core/runtime/Path;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->document:Lorg/eclipse/jdt/core/search/SearchDocument;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/search/SearchDocument;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getProject(Ljava/lang/String;)Lorg/eclipse/core/resources/IProject;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModel()Lorg/eclipse/jdt/internal/core/JavaModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/JavaModel;->getJavaProject(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaProject;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOptions(Z)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/DefaultErrorHandlingPolicies;->proceedWithAllProblems()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    new-instance v6, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;

    invoke-direct {v6}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;-><init>()V

    invoke-direct {v1, v4, v5, v6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;-><init>(Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-direct {v4, v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Z)V

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;->basicParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iput-boolean v3, v4, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->reportOnlyOneSyntaxError:Z

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    const/4 v6, 0x0

    iput-object v6, v5, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->taskTags:[[C

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;->compilationUnit:Lorg/eclipse/jdt/internal/core/jdom/CompilationUnit;

    new-instance v7, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-object v8, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;->compilationUnit:Lorg/eclipse/jdt/internal/core/jdom/CompilationUnit;

    iget-object v9, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget v9, v9, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->maxProblemsPerUnit:I

    invoke-direct {v7, v8, v2, v2, v9}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;III)V

    invoke-virtual {v4, v5, v7}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->parse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;->cud:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->cacheZipFiles(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v2

    sget-object v4, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    invoke-virtual {v2, v4, v3}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getWorkingCopies(Lorg/eclipse/jdt/core/WorkingCopyOwner;Z)[Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/IndexBasedJavaSearchEnvironment;->create(Ljava/util/List;[Lorg/eclipse/jdt/core/ICompilationUnit;)Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

    move-result-object v0

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    invoke-direct {v2, p0, v3, v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;-><init>(Lorg/eclipse/jdt/internal/compiler/impl/ITypeRequestor;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;)V

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;->cud:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;->reduceParseTree(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;->cud:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {v0, v1, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->buildTypeBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->completeTypeBindings()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;->cud:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->faultInTypes()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;->cud:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->resolve()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->flushZipFiles(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->flushZipFiles(Ljava/lang/Object;)V

    throw v0
.end method
