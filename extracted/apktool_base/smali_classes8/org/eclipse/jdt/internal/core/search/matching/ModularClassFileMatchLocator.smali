.class public Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;


# instance fields
.field private binaryModule:Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;

.field private modularClassFile:Lorg/eclipse/jdt/internal/core/ModularClassFile;

.field private module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

.field private moduleDesc:Lorg/eclipse/jdt/core/IModuleDescription;

.field private moduleName:[C


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private matchModuleDeclaration(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    iget v0, p1, Lorg/eclipse/jdt/core/search/SearchPattern;->kind:I

    const/16 v1, 0x100

    const/4 v2, 0x0

    const/16 v3, 0x2000

    if-eq v0, v1, :cond_5

    if-eq v0, v3, :cond_0

    goto :goto_4

    :cond_0
    check-cast p1, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;

    iget-object v0, p2, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->name:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->moduleName:[C

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p2, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->mustResolve:Z

    const/4 v0, 0x3

    if-eqz p1, :cond_2

    iget-object p1, p2, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->moduleName:[C

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getModule([C)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object p1

    iget-object v1, p2, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I

    move-result v1

    move-object v5, p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    move-object v5, p1

    move v1, v0

    :goto_0
    if-nez v1, :cond_3

    return-void

    :cond_3
    if-ne v1, v0, :cond_4

    :goto_1
    move v6, v2

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    goto :goto_1

    :goto_2
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->moduleDesc:Lorg/eclipse/jdt/core/IModuleDescription;

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->newDeclarationMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;III)Lorg/eclipse/jdt/core/search/SearchMatch;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    return-void

    :cond_5
    check-cast p1, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;->patterns:[Lorg/eclipse/jdt/core/search/SearchPattern;

    array-length v0, p1

    :goto_3
    if-lt v2, v0, :cond_6

    :goto_4
    return-void

    :cond_6
    aget-object v1, p1, v2

    iget v4, v1, Lorg/eclipse/jdt/core/search/SearchPattern;->kind:I

    if-ne v4, v3, :cond_7

    invoke-direct {p0, v1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->matchModuleReferences(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private matchModuleReference(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;[[CZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    :cond_0
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    return-void

    :cond_1
    aget-object v2, p3, v1

    if-eqz v2, :cond_4

    array-length v3, v2

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, p1, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v4, p2, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->name:[C

    invoke-virtual {v3, v4, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->moduleDesc:Lorg/eclipse/jdt/core/IModuleDescription;

    xor-int/lit8 v6, p4, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v7, -0x1

    move-object v3, p1

    invoke-virtual/range {v3 .. v9}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->newModuleReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IIILorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/ModuleReferenceMatch;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private matchModuleReferences(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    .line 1
    iget v0, p1, Lorg/eclipse/jdt/core/search/SearchPattern;->kind:I

    const/16 v1, 0x100

    const/16 v2, 0x2000

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    check-cast p1, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;

    .line 3
    iget-boolean v0, p1, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->findReferences:Z

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->binaryModule:Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->exports()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->matchModuleReferences(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;)V

    .line 5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->binaryModule:Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->opens()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->matchModuleReferences(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;)V

    .line 6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getAllRequiredModules()[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->matchModuleReferences(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V

    :cond_2
    return-void

    .line 8
    :cond_3
    check-cast p1, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;->patterns:[Lorg/eclipse/jdt/core/search/SearchPattern;

    .line 9
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_4

    :goto_1
    return-void

    .line 10
    :cond_4
    aget-object v3, p1, v1

    .line 11
    iget v4, v3, Lorg/eclipse/jdt/core/search/SearchPattern;->kind:I

    if-ne v4, v2, :cond_5

    .line 12
    invoke-direct {p0, v3, p2}, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->matchModuleReferences(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private matchModuleReferences(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    .line 13
    :cond_0
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    return-void

    :cond_1
    aget-object v2, p3, v1

    .line 14
    invoke-interface {v2}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;->targets()[[C

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->matchModuleReference(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;[[CZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private matchModuleReferences(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    .line 15
    :cond_0
    array-length p2, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, p2, :cond_1

    return-void

    :cond_1
    aget-object v2, p3, v1

    .line 16
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->name()[C

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_2

    .line 17
    :cond_2
    iget-object v3, p1, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    move v6, v0

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    move v6, v2

    .line 18
    :goto_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->moduleDesc:Lorg/eclipse/jdt/core/IModuleDescription;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v7, -0x1

    move-object v3, p1

    invoke-virtual/range {v3 .. v9}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->newModuleReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IIILorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/ModuleReferenceMatch;

    move-result-object v2

    .line 19
    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private matchPackReferences(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    .line 1
    :cond_0
    array-length p2, p3

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p2, :cond_1

    return-void

    :cond_1
    aget-object v1, p3, v0

    .line 2
    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->reportPackageMatch(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private matchPackReferences(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    .line 3
    :cond_0
    array-length p2, p3

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p2, :cond_1

    return-void

    :cond_1
    aget-object v1, p3, v0

    .line 4
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getPackage()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->reportPackageMatch(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private matchPackageReferences(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    iget v0, p1, Lorg/eclipse/jdt/core/search/SearchPattern;->kind:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/16 v3, 0x100

    if-eq v0, v3, :cond_0

    goto :goto_1

    :cond_0
    check-cast p1, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;->patterns:[Lorg/eclipse/jdt/core/search/SearchPattern;

    array-length v3, v0

    :goto_0
    if-lt v1, v3, :cond_1

    :goto_1
    return-void

    :cond_1
    aget-object p1, v0, v1

    iget v4, p1, Lorg/eclipse/jdt/core/search/SearchPattern;->kind:I

    if-ne v4, v2, :cond_2

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->matchPackageReferences(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    check-cast p1, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getExports()[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->matchPackReferences(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getOpens()[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->matchPackReferences(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getUses()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->matchPackReferences(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getServices()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p2, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->matchPackReferences(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    array-length v2, v0

    :goto_2
    if-lt v1, v2, :cond_4

    goto :goto_3

    :cond_4
    aget-object v3, v0, v1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getImplementations(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    invoke-direct {p0, p2, p1, v3}, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->matchPackReferences(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method private matchTypeReferences(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    .line 1
    iget v0, p1, Lorg/eclipse/jdt/core/search/SearchPattern;->kind:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    const/16 v3, 0x100

    if-eq v0, v3, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    check-cast p1, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;->patterns:[Lorg/eclipse/jdt/core/search/SearchPattern;

    .line 3
    array-length v3, v0

    :goto_0
    if-lt v1, v3, :cond_1

    :goto_1
    return-void

    .line 4
    :cond_1
    aget-object p1, v0, v1

    .line 5
    iget v4, p1, Lorg/eclipse/jdt/core/search/SearchPattern;->kind:I

    if-ne v4, v2, :cond_2

    .line 6
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->matchTypeReferences(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_3
    check-cast p1, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getUses()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->matchTypeReferences(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    .line 8
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getServices()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 9
    invoke-direct {p0, p2, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->matchTypeReferences(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    .line 10
    array-length v2, v0

    :goto_2
    if-lt v1, v2, :cond_4

    goto :goto_3

    :cond_4
    aget-object v3, v0, v1

    .line 11
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getImplementations(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    invoke-direct {p0, p2, p1, v3}, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->matchTypeReferences(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method private matchTypeReferences(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    .line 12
    :cond_0
    array-length p2, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, p2, :cond_1

    return-void

    :cond_1
    aget-object v2, p3, v1

    .line 13
    iget-object v3, p1, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    move v6, v0

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    move v6, v2

    .line 14
    :goto_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->moduleDesc:Lorg/eclipse/jdt/core/IModuleDescription;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v7, -0x1

    move-object v3, p1

    invoke-virtual/range {v3 .. v9}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->newTypeReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IIILorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/TypeReferenceMatch;

    move-result-object v2

    .line 15
    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private reportPackageMatch(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    const/4 p2, 0x0

    :goto_0
    move v2, p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->moduleDesc:Lorg/eclipse/jdt/core/IModuleDescription;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, -0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->newPackageReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;IIILorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/PackageReferenceMatch;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    return-void
.end method


# virtual methods
.method public locateMatches(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/internal/core/ModularClassFile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->pattern:Lorg/eclipse/jdt/core/search/SearchPattern;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->modularClassFile:Lorg/eclipse/jdt/internal/core/ModularClassFile;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/ModularClassFile;->getBinaryModuleInfo()Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->binaryModule:Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/ModularClassFile;->getModule()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->moduleDesc:Lorg/eclipse/jdt/core/IModuleDescription;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->binaryModule:Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->moduleName:[C

    iget-object v1, p1, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getModule([C)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->matchModuleDeclaration(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->matchModuleReferences(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->matchPackageReferences(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/ModularClassFileMatchLocator;->matchTypeReferences(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    return-void
.end method
