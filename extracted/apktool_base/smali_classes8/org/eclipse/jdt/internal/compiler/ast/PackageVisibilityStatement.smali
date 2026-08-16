.class public abstract Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;
.super Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;
.source "SourceFile"


# instance fields
.field public pkgName:[C

.field public pkgRef:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

.field public resolvedPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

.field public targets:[Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;[Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->pkgRef:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    const/16 v0, 0x2e

    invoke-static {p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->pkgName:[C

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->targets:[Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    return-void
.end method


# virtual methods
.method public computeSeverity(I)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getTargetedModules()[Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->targets:[Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    return-object v0
.end method

.method public isQualified()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->targets:[Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->pkgRef:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->isQualified()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, " to "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->targets:[Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    if-lez v0, :cond_1

    const-string v1, ", "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->targets:[Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p2
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 6

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->resolvePackageReference(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->isQualified()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->targets:[Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    array-length v4, v4

    invoke-direct {v3, v4}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;-><init>(I)V

    :goto_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->targets:[Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    array-length v5, v4

    if-lt v1, v5, :cond_1

    goto :goto_3

    :cond_1
    aget-object v4, v4, v1

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;->moduleName:[C

    invoke-virtual {v3, v5}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->containsKey([C)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    const v5, 0x800522

    invoke-virtual {v0, v5, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateModuleReference(ILorg/eclipse/jdt/internal/compiler/ast/ModuleReference;)V

    move v0, v2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;->moduleName:[C

    invoke-virtual {v3, v5, v4}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    xor-int/lit8 p1, v0, 0x1

    return p1
.end method

.method public resolvePackageReference(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->resolvedPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->pkgRef:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getVisiblePackage([[C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->resolvedPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    const v3, 0x80051f

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->computeSeverity(I)I

    move-result v0

    invoke-virtual {p1, v3, p0, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidPackageReference(ILorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->isDeclaredIn(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->resolvedPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->computeSeverity(I)I

    move-result v0

    invoke-virtual {p1, v3, p0, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidPackageReference(ILorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;I)V

    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->resolvedPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    return-object p1
.end method
