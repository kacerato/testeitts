.class public Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;
.source "SourceFile"


# instance fields
.field public final scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;


# direct methods
.method public constructor <init>([CLorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;-><init>([C)V

    iget-object v0, p3, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->knownModules:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;

    invoke-virtual {v0, p1, p0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;->put([CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {p1, p3, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    iput-object p1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    return-void
.end method

.method public static synthetic i(I)[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;->lambda$0(I)[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(I)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;->lambda$2(I)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$0(I)[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;
    .locals 0

    new-array p0, p0, [Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    return-object p0
.end method

.method private static synthetic lambda$2(I)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    new-array p0, p0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p0
.end method

.method private merge([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;TT;",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    array-length v0, p1

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    array-length p3, p2

    if-lez p3, :cond_0

    return-object p2

    :cond_0
    return-object p1

    :cond_1
    const/4 v0, 0x0

    if-nez p3, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    array-length v2, p1

    array-length v3, p2

    add-int v4, v1, v2

    add-int v5, v4, v3

    invoke-interface {p4, v5}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Ljava/lang/Object;

    if-eqz p3, :cond_3

    aput-object p3, p4, v0

    :cond_3
    invoke-static {p1, v0, p4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2, v0, p4, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p4
.end method

.method private resolveTypes()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->resolveTypeDirectives(Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public ensureAnnotationsResolved()V
    .locals 8

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->tagBits:J

    const-wide v2, 0x200000000L

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-static {v1, v0, p0}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->resolveAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->tagBits:J

    const-wide v6, 0x400000000000L

    and-long/2addr v6, v0

    cmp-long v4, v6, v4

    if-eqz v4, :cond_0

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->modifiers:I

    const/high16 v5, 0x100000

    or-int/2addr v4, v5

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->modifiers:I

    const-wide v4, 0x400000000L

    or-long/2addr v0, v4

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->tagBits:J

    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->tagBits:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->tagBits:J

    :cond_1
    return-void
.end method

.method public getAllRequiredModules()[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->resolveModuleDirectives(Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getAllRequiredModules()[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotationTagBits()J
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;->ensureAnnotationsResolved()V

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->tagBits:J

    return-wide v0
.end method

.method public getAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;->ensureAnnotationsResolved()V

    invoke-virtual {p0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->retrieveAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v0

    return-object v0
.end method

.method public getExports()[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->resolvePackageDirectives(Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getExports()[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    return-object v0
.end method

.method public getImplementations(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;->resolveTypes()V

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getImplementations(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public getOpens()[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->resolvePackageDirectives(Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getOpens()[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    return-object v0
.end method

.method public getRequiredModules(Z)Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/stream/Stream<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->resolveModuleDirectives(Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getRequiredModules(Z)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public getServices()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;->resolveTypes()V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getServices()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    return-object v0
.end method

.method public getUses()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;->resolveTypes()V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getUses()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    return-object v0
.end method

.method public setImplementations(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->implementations:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->implementations:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->implementations:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-interface {p2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setRequires([Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->javaBaseModule()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->requires:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/y;

    invoke-direct {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/y;-><init>()V

    invoke-direct {p0, v1, p1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;->merge([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->requires:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->requiresTransitive:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/y;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/y;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;->merge([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->requiresTransitive:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    return-void
.end method

.method public setServices([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->services:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/x;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/x;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;->merge([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->services:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-void
.end method

.method public setUses([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->uses:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/x;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/x;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;->merge([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->uses:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-void
.end method

.method public storedAnnotations(ZZ)Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    if-eqz v0, :cond_1

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->storedAnnotations(ZZ)Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->hasAnnotations:Z

    :cond_0
    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
