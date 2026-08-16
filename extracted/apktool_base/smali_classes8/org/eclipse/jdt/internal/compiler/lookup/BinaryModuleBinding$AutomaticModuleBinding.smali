.class Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding$AutomaticModuleBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutomaticModuleBinding"
.end annotation


# instance fields
.field autoNameFromManifest:Z


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/env/IModule;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 1

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->root:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->knownModules:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->moduleName:[C

    invoke-virtual {p2, v0, p0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;->put([CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->isAuto:Z

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->isAutoNameFromManifest()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding$AutomaticModuleBinding;->autoNameFromManifest:Z

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_MODULES:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->requires:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->requiresTransitive:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PACKAGES:[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->exportedPackages:[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    return-void
.end method

.method public static synthetic i(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Z
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding$AutomaticModuleBinding;->lambda$2(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(I)[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding$AutomaticModuleBinding;->lambda$3(I)[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding$AutomaticModuleBinding;[C)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding$AutomaticModuleBinding;->lambda$0([C)Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding$AutomaticModuleBinding;[C)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding$AutomaticModuleBinding;->lambda$1([C)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$0([C)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->moduleName:[C

    invoke-static {p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private synthetic lambda$1([C)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getModule([C)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$2(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$3(I)[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;
    .locals 0

    new-array p0, p0, [Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    return-object p0
.end method


# virtual methods
.method public getRequiresTransitive()[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->requiresTransitive:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_MODULES:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nameEnvironment:Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;->getAllAutomaticModules()[[C

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/a;

    invoke-direct {v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/a;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding$AutomaticModuleBinding;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/b;

    invoke-direct {v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/b;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding$AutomaticModuleBinding;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/c;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/c;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/d;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/d;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->requiresTransitive:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->requiresTransitive:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    return-object v0
.end method

.method public hasUnstableAutoName()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding$AutomaticModuleBinding;->autoNameFromManifest:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public nameForCUCheck()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->moduleName:[C

    return-object v0
.end method

.method public nameForLookup()[C
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->ANY_NAMED:[C

    return-object v0
.end method
