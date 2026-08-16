.class public Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;
.super Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
.source "SourceFile"


# instance fields
.field public annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

.field public declarationEnd:I

.field public declarationSourceEnd:I

.field public declarationSourceStart:I

.field public modifiers:I

.field public sourcePositions:[J

.field public tokens:[[C

.field public trailingStarPosition:I


# direct methods
.method public constructor <init>([[C[JZI)V
    .locals 2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->sourcePositions:[J

    if-eqz p3, :cond_0

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 p3, 0x20000

    or-int/2addr p1, p3

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_0
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    aget-wide v0, p2, p1

    long-to-int p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    const/4 p1, 0x0

    aget-wide p1, p2, p1

    const/16 p3, 0x20

    ushr-long/2addr p1, p3

    long-to-int p1, p1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->modifiers:I

    return-void
.end method


# virtual methods
.method public checkPackageConflict(Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V
    .locals 5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->module()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getVisiblePackage([[C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v1

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->incarnations:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->enableJdtDebugCompileMode:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->conflictingPackagesFromOtherModules(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;Ljava/util/Set;)V

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    if-eq v4, v0, :cond_0

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->canAccess(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public getImportName()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    return-object v0
.end method

.method public isStatic()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->modifiers:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->print(ILjava/lang/StringBuffer;Z)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public print(ILjava/lang/StringBuffer;Z)Ljava/lang/StringBuffer;
    .locals 1

    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    array-length v0, v0

    if-lt p1, v0, :cond_1

    if-eqz p3, :cond_0

    .line 3
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 p3, 0x20000

    and-int/2addr p1, p3

    if-eqz p1, :cond_0

    .line 4
    const-string p1, ".*"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-object p2

    :cond_1
    if-lez p1, :cond_2

    const/16 v0, 0x2e

    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 6
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    aget-object v0, v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V
    .locals 0

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)Z

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V

    return-void
.end method
