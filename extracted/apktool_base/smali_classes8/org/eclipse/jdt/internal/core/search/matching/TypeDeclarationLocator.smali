.class public Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationLocator;
.super Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;
.source "SourceFile"


# instance fields
.field protected pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;-><init>(Lorg/eclipse/jdt/core/search/SearchPattern;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;

    return-void
.end method

.method private getModuleGraph(Ljava/lang/String;Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/search/SearchPattern;->getMatchRule()I

    move-result p2

    const/16 v1, 0xc

    invoke-static {p1, v1, v0, p2}, Lorg/eclipse/jdt/core/search/SearchPattern;->createPattern(Ljava/lang/String;III)Lorg/eclipse/jdt/core/search/SearchPattern;

    move-result-object v3

    if-nez v3, :cond_0

    return-object p3

    :cond_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    new-instance p2, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationLocator$1;

    invoke-direct {p2, p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationLocator$1;-><init>(Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationLocator;Ljava/util/HashSet;)V

    new-instance v6, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationLocator$2;

    invoke-direct {v6, p0}, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationLocator$2;-><init>(Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationLocator;)V

    :try_start_0
    new-instance v2, Lorg/eclipse/jdt/core/search/SearchEngine;

    invoke-direct {v2}, Lorg/eclipse/jdt/core/search/SearchEngine;-><init>()V

    const/4 v1, 0x1

    new-array v4, v1, [Lorg/eclipse/jdt/core/search/SearchParticipant;

    aput-object p2, v4, v0

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object p2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getWorkspaceScope()Lorg/eclipse/jdt/internal/core/search/JavaWorkspaceScope;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/core/search/SearchEngine;->search(Lorg/eclipse/jdt/core/search/SearchPattern;[Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/core/search/SearchRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p3, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-object p3
.end method

.method private getModuleList(Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;)[[C
    .locals 6

    iget-boolean v0, p1, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->moduleGraph:Z

    if-nez v0, :cond_0

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->moduleNames:[[C

    return-object p1

    :cond_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->moduleGraphElements:[[C

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    iput-object v0, p1, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->moduleGraphElements:[[C

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->moduleNames:[[C

    invoke-static {v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toStrings([[C)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v1, :cond_4

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    new-array v2, v0, [[C

    :goto_1
    if-lt v3, v0, :cond_2

    iput-object v2, p1, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->moduleGraphElements:[[C

    goto :goto_2

    :cond_2
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->moduleGraphElements:[[C

    return-object p1

    :cond_4
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2}, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationLocator;->getModuleGraph(Ljava/lang/String;Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private matchModule(Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I
    .locals 5

    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->module()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object p2

    if-eqz p2, :cond_7

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->moduleName:[C

    if-eqz v0, :cond_7

    iget-object v1, p1, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->moduleNames:[[C

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->modulePatterns:[Ljava/util/regex/Pattern;

    const/4 v2, 0x0

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationLocator;->getModuleList(Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;)[[C

    move-result-object p1

    array-length v3, p1

    move v0, v2

    :goto_0
    if-lt v0, v3, :cond_2

    goto :goto_2

    :cond_2
    aget-object v1, p1, v0

    iget-object v4, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->moduleName:[C

    invoke-virtual {p0, v1, v4}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchNameValue([C[C)I

    move-result v1

    if-eqz v1, :cond_3

    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    array-length p1, v0

    move p2, v2

    :goto_1
    if-lt p2, p1, :cond_5

    :goto_2
    return v2

    :cond_5
    aget-object v3, v0, p2

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 p1, 0x3

    return p1

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    const/4 p1, 0x2

    return p1
.end method


# virtual methods
.method public match(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->simpleName:[C

    if-eqz v0, :cond_1

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;

    iget-boolean v0, v0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    :goto_1
    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result p1

    return p1
.end method

.method public resolveLevel(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I

    move-result p1

    return p1
.end method

.method public resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 4
    :cond_1
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;

    iget-char v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->typeSuffix:C

    const/16 v2, 0x41

    if-eq v0, v2, :cond_7

    const/16 v2, 0x43

    if-eq v0, v2, :cond_6

    const/16 v2, 0x45

    if-eq v0, v2, :cond_5

    const/16 v2, 0x49

    if-eq v0, v2, :cond_3

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 6
    :pswitch_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isAnnotationType()Z

    move-result v0

    if-nez v0, :cond_8

    return v1

    .line 7
    :pswitch_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isClass()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isAnnotationType()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_2
    return v1

    .line 8
    :pswitch_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isClass()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isEnum()Z

    move-result v0

    if-nez v0, :cond_8

    return v1

    .line 9
    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isAnnotationType()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_4
    return v1

    .line 10
    :cond_5
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isEnum()Z

    move-result v0

    if-nez v0, :cond_8

    return v1

    .line 11
    :cond_6
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isClass()Z

    move-result v0

    if-nez v0, :cond_8

    return v1

    .line 12
    :cond_7
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isAnnotationType()Z

    move-result v0

    if-nez v0, :cond_8

    return v1

    .line 13
    :cond_8
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationLocator;->matchModule(Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v0

    if-nez v0, :cond_9

    return v1

    .line 14
    :cond_9
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;

    if-eqz v1, :cond_a

    .line 15
    check-cast v0, Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;

    .line 16
    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->simpleName:[C

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/QualifiedTypeDeclarationPattern;->qualification:[C

    invoke-virtual {p0, v1, v0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->resolveLevelForType([C[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result p1

    return p1

    .line 17
    :cond_a
    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->enclosingTypeNames:[[C

    if-nez v0, :cond_b

    const/4 v0, 0x0

    goto :goto_1

    :cond_b
    const/16 v1, 0x2e

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    .line 18
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->simpleName:[C

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->pkg:[C

    invoke-virtual {p0, v2, v1, v0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationLocator;->resolveLevelForType([C[C[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public resolveLevelForType([C[C[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I
    .locals 3

    if-nez p3, :cond_0

    invoke-virtual {p0, p1, p2, p4}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->resolveLevelForType([C[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result p1

    return p1

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0, p1, p3, p4}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->resolveLevelForType([C[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result p1

    return p1

    :cond_1
    instance-of v0, p4, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/16 v0, 0x2e

    invoke-static {p2, p3, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object p2

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;

    iget-object p3, p3, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->pkg:[C

    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getPackage()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    invoke-static {v2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    invoke-static {p3, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p0, p1, p2, p4}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->resolveLevelForType([C[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Locator for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
