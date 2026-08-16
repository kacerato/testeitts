.class Lorg/eclipse/jdt/internal/core/SearchableEnvironmentRequestor;
.super Lorg/eclipse/jdt/internal/core/JavaElementRequestor;
.source "SourceFile"


# instance fields
.field protected checkAccessRestrictions:Z

.field protected nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

.field protected project:Lorg/eclipse/jdt/core/IJavaProject;

.field protected requestor:Lorg/eclipse/jdt/internal/codeassist/ISearchRequestor;

.field protected unitToSkip:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/codeassist/ISearchRequestor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironmentRequestor;->requestor:Lorg/eclipse/jdt/internal/codeassist/ISearchRequestor;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironmentRequestor;->unitToSkip:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    .line 4
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironmentRequestor;->project:Lorg/eclipse/jdt/core/IJavaProject;

    .line 5
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironmentRequestor;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironmentRequestor;->checkAccessRestrictions:Z

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/codeassist/ISearchRequestor;Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/internal/core/NameLookup;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;-><init>()V

    .line 8
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironmentRequestor;->requestor:Lorg/eclipse/jdt/internal/codeassist/ISearchRequestor;

    .line 9
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironmentRequestor;->unitToSkip:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    .line 10
    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironmentRequestor;->project:Lorg/eclipse/jdt/core/IJavaProject;

    .line 11
    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironmentRequestor;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    .line 12
    const-string p1, "org.eclipse.jdt.core.compiler.problem.forbiddenReference"

    const/4 p2, 0x1

    invoke-interface {p3, p1, p2}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string p4, "ignore"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 13
    const-string p1, "org.eclipse.jdt.core.compiler.problem.discouragedReference"

    invoke-interface {p3, p1, p2}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 14
    :cond_0
    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironmentRequestor;->checkAccessRestrictions:Z

    return-void
.end method


# virtual methods
.method public acceptInitializer(Lorg/eclipse/jdt/core/IInitializer;)V
    .locals 0

    return-void
.end method

.method public acceptModule(Lorg/eclipse/jdt/core/IModuleDescription;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironmentRequestor;->requestor:Lorg/eclipse/jdt/internal/codeassist/ISearchRequestor;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/eclipse/jdt/internal/codeassist/ISearchRequestor;->acceptModule([C)V

    return-void
.end method

.method public acceptPackageFragment(Lorg/eclipse/jdt/core/IPackageFragment;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironmentRequestor;->requestor:Lorg/eclipse/jdt/internal/codeassist/ISearchRequestor;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IPackageFragment;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/eclipse/jdt/internal/codeassist/ISearchRequestor;->acceptPackage([C)V

    return-void
.end method

.method public acceptType(Lorg/eclipse/jdt/core/IType;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironmentRequestor;->unitToSkip:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getPackageFragment()Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IPackageFragment;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/BinaryType;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironmentRequestor;->checkAccessRestrictions:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironmentRequestor;->project:Lorg/eclipse/jdt/core/IJavaProject;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lorg/eclipse/jdt/core/IJavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironmentRequestor;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/NameLookup;->rootToResolvedEntries:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getAccessRuleSet()Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0x2e

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const/16 v4, 0x2f

    invoke-static {v1, v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[C[CC)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->getViolatedRestriction([C)Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    move-result-object v0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironmentRequestor;->requestor:Lorg/eclipse/jdt/internal/codeassist/ISearchRequestor;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->getFlags()I

    move-result v5

    const/4 v4, 0x0

    invoke-interface/range {v1 .. v6}, Lorg/eclipse/jdt/internal/codeassist/ISearchRequestor;->acceptType([C[C[[CILorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
