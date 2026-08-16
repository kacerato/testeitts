.class Lorg/eclipse/jdt/core/dom/ModuleBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/dom/IModuleBinding;


# static fields
.field protected static final NO_TYPE_BINDINGS:[Lorg/eclipse/jdt/core/dom/ITypeBinding;


# instance fields
.field private annotations:[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

.field private binding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

.field private exports:[Lorg/eclipse/jdt/core/dom/IPackageBinding;

.field private isOpen:Z

.field private volatile key:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private opens:[Lorg/eclipse/jdt/core/dom/IPackageBinding;

.field private requiredModules:[Lorg/eclipse/jdt/core/dom/IModuleBinding;

.field protected resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

.field private services:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

.field private uses:[Lorg/eclipse/jdt/core/dom/ITypeBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/eclipse/jdt/core/dom/ITypeBinding;

    sput-object v0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->NO_TYPE_BINDINGS:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/dom/BindingResolver;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->name:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->isOpen:Z

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    iput-object p2, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->isOpen()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->isOpen:Z

    return-void
.end method

.method public static synthetic a(I)[Lorg/eclipse/jdt/core/dom/IPackageBinding;
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/core/dom/ModuleBinding;->lambda$1(I)[Lorg/eclipse/jdt/core/dom/IPackageBinding;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/eclipse/jdt/core/dom/ModuleBinding;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/core/dom/IPackageBinding;
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/ModuleBinding;->lambda$2(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/core/dom/IPackageBinding;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/eclipse/jdt/core/dom/ModuleBinding;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/core/dom/IPackageBinding;
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/ModuleBinding;->lambda$0(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/core/dom/IPackageBinding;

    move-result-object p0

    return-object p0
.end method

.method private getTypes([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    new-array v2, v1, [Lorg/eclipse/jdt/core/dom/TypeBinding;

    :goto_1
    if-lt v0, v1, :cond_1

    return-object v2

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/dom/TypeBinding;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private synthetic lambda$0(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/core/dom/IPackageBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getPackageBinding(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/core/dom/IPackageBinding;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$1(I)[Lorg/eclipse/jdt/core/dom/IPackageBinding;
    .locals 0

    new-array p0, p0, [Lorg/eclipse/jdt/core/dom/IPackageBinding;

    return-object p0
.end method

.method private synthetic lambda$2(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/core/dom/IPackageBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getPackageBinding(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/core/dom/IPackageBinding;

    move-result-object p1

    return-object p1
.end method

.method private resolveAnnotationBindings([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    if-eqz v1, :cond_6

    new-array v2, v1, [Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    move v3, v0

    move v4, v3

    :goto_1
    if-lt v3, v1, :cond_1

    goto :goto_2

    :cond_1
    aget-object v5, p1, v3

    if-nez v5, :cond_4

    :goto_2
    if-eq v4, v1, :cond_3

    if-nez v4, :cond_2

    sget-object p1, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->NoAnnotations:[Lorg/eclipse/jdt/core/dom/AnnotationBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->annotations:[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    return-object p1

    :cond_2
    new-array p1, v4, [Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    invoke-static {v2, v0, p1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, p1

    :cond_3
    return-object v2

    :cond_4
    iget-object v6, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-virtual {v6, v5}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getAnnotationInstance(Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    move-result-object v5

    if-nez v5, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v6, v4, 0x1

    aput-object v5, v2, v4

    move v4, v6

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    sget-object p1, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->NoAnnotations:[Lorg/eclipse/jdt/core/dom/AnnotationBinding;

    return-object p1
.end method


# virtual methods
.method public getAnnotations()[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->annotations:[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/core/dom/ModuleBinding;->resolveAnnotationBindings([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->annotations:[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->annotations:[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    return-object v0
.end method

.method public getExportedPackages()[Lorg/eclipse/jdt/core/dom/IPackageBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->exports:[Lorg/eclipse/jdt/core/dom/IPackageBinding;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getExports()[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/core/dom/i;

    invoke-direct {v1, p0}, Lorg/eclipse/jdt/core/dom/i;-><init>(Lorg/eclipse/jdt/core/dom/ModuleBinding;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/core/dom/h;

    invoke-direct {v1}, Lorg/eclipse/jdt/core/dom/h;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jdt/core/dom/IPackageBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->exports:[Lorg/eclipse/jdt/core/dom/IPackageBinding;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->exports:[Lorg/eclipse/jdt/core/dom/IPackageBinding;

    return-object v0
.end method

.method public getExportedTo(Lorg/eclipse/jdt/core/dom/IPackageBinding;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    check-cast p1, Lorg/eclipse/jdt/core/dom/PackageBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/PackageBinding;->getCompilerBinding()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getExportRestrictions(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getImplementations(Lorg/eclipse/jdt/core/dom/ITypeBinding;)[Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    check-cast p1, Lorg/eclipse/jdt/core/dom/TypeBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getImplementations(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/ModuleBinding;->getTypes([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public getJavaElement()Lorg/eclipse/jdt/core/IJavaElement;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nameEnvironment:Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    check-cast v0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ModuleBinding;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/NameLookup;->findModule([C)Lorg/eclipse/jdt/internal/core/NameLookup$Answer;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v2

    :cond_2
    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;->module:Lorg/eclipse/jdt/core/IModuleDescription;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->key:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->computeUniqueKey()[C

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    :goto_1
    iput-object v1, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->key:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->name:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->moduleName:[C

    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_1
    return-object v0
.end method

.method public getOpenedPackages()[Lorg/eclipse/jdt/core/dom/IPackageBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->opens:[Lorg/eclipse/jdt/core/dom/IPackageBinding;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getOpens()[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/core/dom/g;

    invoke-direct {v1, p0}, Lorg/eclipse/jdt/core/dom/g;-><init>(Lorg/eclipse/jdt/core/dom/ModuleBinding;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/core/dom/h;

    invoke-direct {v1}, Lorg/eclipse/jdt/core/dom/h;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jdt/core/dom/IPackageBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->opens:[Lorg/eclipse/jdt/core/dom/IPackageBinding;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->opens:[Lorg/eclipse/jdt/core/dom/IPackageBinding;

    return-object v0
.end method

.method public getOpenedTo(Lorg/eclipse/jdt/core/dom/IPackageBinding;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    check-cast p1, Lorg/eclipse/jdt/core/dom/PackageBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/PackageBinding;->getCompilerBinding()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getOpenRestrictions(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRequiredModules()[Lorg/eclipse/jdt/core/dom/IModuleBinding;
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->requiredModules:[Lorg/eclipse/jdt/core/dom/IModuleBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getRequires()[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    new-array v3, v2, [Lorg/eclipse/jdt/core/dom/IModuleBinding;

    :goto_1
    if-lt v1, v2, :cond_2

    iput-object v3, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->requiredModules:[Lorg/eclipse/jdt/core/dom/IModuleBinding;

    return-object v3

    :cond_2
    aget-object v4, v0, v1

    if-eqz v4, :cond_3

    iget-object v5, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-virtual {v5, v4}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getModuleBinding(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/core/dom/IModuleBinding;

    move-result-object v4

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getServices()[Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->services:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getServices()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/core/dom/ModuleBinding;->getTypes([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->services:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->services:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v0
.end method

.method public getUses()[Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->uses:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getUses()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/core/dom/ModuleBinding;->getTypes([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->uses:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->uses:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v0
.end method

.method public isDeprecated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEqualTo(Lorg/eclipse/jdt/core/dom/IBinding;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    instance-of v1, p1, Lorg/eclipse/jdt/core/dom/ModuleBinding;

    if-nez v1, :cond_2

    return v0

    :cond_2
    check-cast p1, Lorg/eclipse/jdt/core/dom/ModuleBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/core/dom/ModuleBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/dom/BindingComparator;->isEqual(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Z

    move-result p1

    return p1
.end method

.method public isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->isOpen:Z

    return v0
.end method

.method public isRecovered()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSynthetic()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ModuleBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
