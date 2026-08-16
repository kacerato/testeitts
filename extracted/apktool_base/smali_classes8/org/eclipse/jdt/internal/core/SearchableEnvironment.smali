.class public Lorg/eclipse/jdt/internal/core/SearchableEnvironment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;
.implements Lorg/eclipse/jdt/core/search/IJavaSearchConstants;


# static fields
.field private static synthetic $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IModuleAwareNameEnvironment$LookupStrategy:[I


# instance fields
.field protected checkAccessRestrictions:Z

.field private excludeTestCode:Z

.field private knownModuleLocations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Lorg/eclipse/jdt/core/IPackageFragmentRoot;",
            ">;"
        }
    .end annotation
.end field

.field private moduleUpdater:Lorg/eclipse/jdt/internal/core/ModuleUpdater;

.field public nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

.field protected owner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

.field protected project:Lorg/eclipse/jdt/internal/core/JavaProject;

.field private rootToModule:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/core/IPackageFragmentRoot;",
            "Lorg/eclipse/jdt/core/IModuleDescription;",
            ">;"
        }
    .end annotation
.end field

.field protected searchScope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

.field protected unitToSkip:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

.field protected workingCopies:[Lorg/eclipse/jdt/core/ICompilationUnit;


# direct methods
.method public static synthetic $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IModuleAwareNameEnvironment$LookupStrategy()[I
    .locals 3

    sget-object v0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->$SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IModuleAwareNameEnvironment$LookupStrategy:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->values()[Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->Any:Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->AnyNamed:Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->Named:Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->Unnamed:Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    sput-object v0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->$SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IModuleAwareNameEnvironment$LookupStrategy:[I

    return-object v0
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;-><init>(Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/jdt/core/WorkingCopyOwner;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/jdt/core/WorkingCopyOwner;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 21
    :cond_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getWorkingCopies(Lorg/eclipse/jdt/core/WorkingCopyOwner;Z)[Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;-><init>(Lorg/eclipse/jdt/internal/core/JavaProject;[Lorg/eclipse/jdt/core/ICompilationUnit;Z)V

    .line 22
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->owner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaProject;[Lorg/eclipse/jdt/core/ICompilationUnit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;-><init>(Lorg/eclipse/jdt/internal/core/JavaProject;[Lorg/eclipse/jdt/core/ICompilationUnit;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaProject;[Lorg/eclipse/jdt/core/ICompilationUnit;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    .line 4
    iput-boolean p3, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->excludeTestCode:Z

    .line 5
    const-string v0, "org.eclipse.jdt.core.compiler.problem.forbiddenReference"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ignore"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 6
    const-string v0, "org.eclipse.jdt.core.compiler.problem.discouragedReference"

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    .line 7
    :goto_0
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->checkAccessRestrictions:Z

    .line 8
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->workingCopies:[Lorg/eclipse/jdt/core/ICompilationUnit;

    .line 9
    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/core/JavaProject;->newNameLookup([Lorg/eclipse/jdt/core/ICompilationUnit;Z)Lorg/eclipse/jdt/internal/core/NameLookup;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    .line 10
    const-string p2, "org.eclipse.jdt.core.compiler.compliance"

    invoke-virtual {p1, p2, v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/32 v6, 0x350000

    cmp-long v0, v4, v6

    if-ltz v0, :cond_1

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->knownModuleLocations:Ljava/util/Map;

    .line 12
    :cond_1
    invoke-virtual {p1, p2, v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long p2, v0, v6

    if-ltz p2, :cond_6

    .line 13
    new-instance p2, Lorg/eclipse/jdt/internal/core/ModuleUpdater;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/internal/core/ModuleUpdater;-><init>(Lorg/eclipse/jdt/internal/core/JavaProject;)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->moduleUpdater:Lorg/eclipse/jdt/internal/core/ModuleUpdater;

    if-nez p3, :cond_2

    .line 14
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getExpandedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p2

    .line 15
    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/core/z;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/core/z;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->moduleUpdater:Lorg/eclipse/jdt/internal/core/ModuleUpdater;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/ModuleUpdater;->addReadUnnamedForNonEmptyClasspath(Lorg/eclipse/jdt/internal/core/JavaProject;[Lorg/eclipse/jdt/core/IClasspathEntry;)V

    .line 17
    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getRawClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p1

    array-length p2, p1

    :goto_1
    if-lt v3, p2, :cond_3

    goto :goto_2

    :cond_3
    aget-object v0, p1, v3

    if-eqz p3, :cond_4

    .line 18
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IClasspathEntry;->isTest()Z

    move-result v1

    if-nez v1, :cond_5

    .line 19
    :cond_4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->moduleUpdater:Lorg/eclipse/jdt/internal/core/ModuleUpdater;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/ModuleUpdater;->computeModuleUpdates(Lorg/eclipse/jdt/core/IClasspathEntry;)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    return-void
.end method

.method public static synthetic a(Lorg/eclipse/jdt/core/IClasspathEntry;)Z
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->lambda$0(Lorg/eclipse/jdt/core/IClasspathEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lorg/eclipse/jdt/internal/core/SearchableEnvironment;[Lorg/eclipse/jdt/core/IPackageFragmentRoot;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->lambda$1([Lorg/eclipse/jdt/core/IPackageFragmentRoot;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lorg/eclipse/jdt/internal/core/SearchableEnvironment;[Lorg/eclipse/jdt/core/IPackageFragmentRoot;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->lambda$2([Lorg/eclipse/jdt/core/IPackageFragmentRoot;)Z

    move-result p0

    return p0
.end method

.method private static convertSearchFilterToModelFilter(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x1e

    return p0

    :pswitch_0
    const/4 p0, 0x6

    return p0

    :pswitch_1
    const/16 p0, 0xa

    return p0

    :pswitch_2
    const/16 p0, 0x10

    return p0

    :pswitch_3
    const/16 p0, 0x8

    return p0

    :pswitch_4
    const/4 p0, 0x4

    return p0

    :pswitch_5
    const/4 p0, 0x2

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private findExactTypes(Ljava/lang/String;Lorg/eclipse/jdt/internal/codeassist/ISearchRequestor;I)V
    .locals 6

    .line 18
    new-instance v5, Lorg/eclipse/jdt/internal/core/SearchableEnvironmentRequestor;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->unitToSkip:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    invoke-direct {v5, p2, v0, v1, v2}, Lorg/eclipse/jdt/internal/core/SearchableEnvironmentRequestor;-><init>(Lorg/eclipse/jdt/internal/codeassist/ISearchRequestor;Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/internal/core/NameLookup;)V

    .line 19
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/NameLookup;->seekTypes(Ljava/lang/String;Lorg/eclipse/jdt/core/IPackageFragment;ZILorg/eclipse/jdt/internal/core/IJavaElementRequestor;)V

    return-void
.end method

.method private findModuleContext([C)[Lorg/eclipse/jdt/core/IPackageFragmentRoot;
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->knownModuleLocations:Ljava/util/Map;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    array-length v1, p1

    if-lez v1, :cond_6

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    if-nez v0, :cond_7

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/NameLookup;->findModule([C)Lorg/eclipse/jdt/internal/core/NameLookup$Answer;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;->module:Lorg/eclipse/jdt/core/IModuleDescription;

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v2

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;->module:Lorg/eclipse/jdt/core/IModuleDescription;

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    :catch_0
    :cond_0
    :goto_0
    if-nez v0, :cond_5

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getUnderlyingResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/eclipse/core/resources/IResource;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v4, v3}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->getRootsForOutputLocation(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/resources/IResource;)[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to find package fragment root for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v3, v1

    check-cast v3, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->isExternal()Z

    move-result v4

    if-nez v4, :cond_3

    instance-of v4, v1, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;

    if-nez v4, :cond_3

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    goto :goto_0

    :cond_4
    :goto_1
    :try_start_1
    move-object v3, v1

    check-cast v3, Lorg/eclipse/jdt/core/IJavaProject;

    invoke-static {v3}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->getOwnedPackageFragmentRoots(Lorg/eclipse/jdt/core/IJavaProject;)[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v0
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_5
    :goto_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->knownModuleLocations:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :cond_7
    :goto_3
    return-object v0
.end method

.method private findPackagesFromRequires([CZLorg/eclipse/jdt/internal/codeassist/ISearchRequestor;Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;[C)V
    .locals 14

    invoke-interface/range {p4 .. p4}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;->name()[C

    move-result-object v0

    move-object v7, p0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->findModuleContext([C)[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v8, v0

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-lt v10, v8, :cond_1

    return-void

    :cond_1
    aget-object v1, v0, v10

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaProject;->getModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v1

    instance-of v2, v1, Lorg/eclipse/jdt/internal/core/AbstractModule;

    if-eqz v2, :cond_2

    check-cast v1, Lorg/eclipse/jdt/internal/core/AbstractModule;

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/AbstractModule;->getExportedPackages()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    move-result-object v2

    array-length v3, v2

    move v4, v9

    :goto_1
    if-lt v4, v3, :cond_5

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/AbstractModule;->getRequiredModules()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;

    move-result-object v11

    array-length v12, v11

    move v13, v9

    :goto_2
    if-lt v13, v12, :cond_3

    :catch_0
    :cond_2
    move-object v6, p1

    move-object/from16 v12, p3

    move-object/from16 v11, p5

    goto :goto_8

    :cond_3
    aget-object v5, v11, v13

    invoke-interface {v5}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;->isTransitive()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->findPackagesFromRequires([CZLorg/eclipse/jdt/internal/codeassist/ISearchRequestor;Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;[C)V

    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_5
    aget-object v5, v2, v4

    invoke-interface {v5}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;->isQualified()Z

    move-result v6
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_8

    :try_start_1
    invoke-interface {v5}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;->targets()[[C

    move-result-object v6
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_3

    move-object/from16 v11, p5

    :try_start_2
    invoke-static {v6, v11}, Lorg/eclipse/jdt/core/compiler/CharOperation;->containsEqual([[C[C)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_4

    :cond_6
    move-object v6, p1

    :cond_7
    move-object/from16 v12, p3

    goto :goto_7

    :catch_1
    :goto_3
    move-object v6, p1

    :catch_2
    move-object/from16 v12, p3

    goto :goto_8

    :catch_3
    move-object/from16 v11, p5

    goto :goto_3

    :cond_8
    move-object/from16 v11, p5

    :goto_4
    invoke-interface {v5}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;->name()[C

    move-result-object v5
    :try_end_2
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_2 .. :try_end_2} :catch_1

    if-nez p2, :cond_9

    move-object v6, p1

    :try_start_3
    invoke-static {p1, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->prefixEquals([C[C)Z

    move-result v12
    :try_end_3
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v12, :cond_7

    :goto_5
    move-object/from16 v12, p3

    goto :goto_6

    :cond_9
    move-object v6, p1

    goto :goto_5

    :goto_6
    :try_start_4
    invoke-interface {v12, v5}, Lorg/eclipse/jdt/internal/codeassist/ISearchRequestor;->acceptPackage([C)V
    :try_end_4
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_4
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method

.method private findTypes(Ljava/lang/String;Lorg/eclipse/jdt/internal/codeassist/ISearchRequestor;I)V
    .locals 9

    .line 40
    new-instance v6, Lorg/eclipse/jdt/internal/core/SearchableEnvironmentRequestor;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->unitToSkip:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    invoke-direct {v6, p2, v0, v1, v2}, Lorg/eclipse/jdt/internal/core/SearchableEnvironmentRequestor;-><init>(Lorg/eclipse/jdt/internal/codeassist/ISearchRequestor;Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/internal/core/NameLookup;)V

    const/16 p2, 0x2e

    .line 41
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 42
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v1, p1

    move v4, p3

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/NameLookup;->seekTypes(Ljava/lang/String;Lorg/eclipse/jdt/core/IPackageFragment;ZILorg/eclipse/jdt/internal/core/IJavaElementRequestor;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 44
    new-instance v2, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;

    invoke-direct {v2}, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;-><init>()V

    .line 45
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    invoke-virtual {v3, v1, v0, v2}, Lorg/eclipse/jdt/internal/core/NameLookup;->seekPackageFragments(Ljava/lang/String;ZLorg/eclipse/jdt/internal/core/IJavaElementRequestor;)V

    .line 46
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->getPackageFragments()[Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object v7

    if-eqz v7, :cond_3

    add-int/lit8 p2, p2, 0x1

    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 48
    array-length p2, v7

    move v8, v0

    :goto_0
    if-lt v8, p2, :cond_1

    goto :goto_1

    .line 49
    :cond_1
    aget-object v2, v7, v8

    if-eqz v2, :cond_2

    .line 50
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    const/4 v3, 0x1

    move-object v1, p1

    move v4, p3

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/NameLookup;->seekTypes(Ljava/lang/String;Lorg/eclipse/jdt/core/IPackageFragment;ZILorg/eclipse/jdt/internal/core/IJavaElementRequestor;)V

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private getExternalAnnotationPath(Lorg/eclipse/jdt/core/IClasspathEntry;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getExternalAnnotationPath(Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/resources/IProject;Z)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getModuleDescription([Lorg/eclipse/jdt/core/IPackageFragmentRoot;)Lorg/eclipse/jdt/core/IModuleDescription;
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->rootToModule:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->rootToModule:Ljava/util/Map;

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    aget-object v2, p1, v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->rootToModule:Ljava/util/Map;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/core/NameLookup;->rootToResolvedEntries:Ljava/util/Map;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lorg/eclipse/jdt/internal/core/y;

    invoke-direct {v6, v5}, Lorg/eclipse/jdt/internal/core/y;-><init>(Ljava/util/Map;)V

    invoke-static {v3, v2, v4, v6}, Lorg/eclipse/jdt/internal/core/NameLookup;->getModuleDescription(Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/jdt/core/IPackageFragmentRoot;Ljava/util/Map;Ljava/util/function/Function;)Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getOwnedPackageFragmentRoots(Lorg/eclipse/jdt/core/IJavaProject;)[Lorg/eclipse/jdt/core/IPackageFragmentRoot;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/eclipse/jdt/core/IJavaProject;->getPackageFragmentRoots()[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v0

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v0

    if-lt v2, v4, :cond_1

    array-length p0, v0

    if-ge v3, p0, :cond_0

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    return-object p0

    :cond_0
    return-object v1

    :cond_1
    aget-object v4, v0, v2

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->getKind()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    instance-of v5, v4, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Lorg/eclipse/jdt/core/IJavaElement;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-interface {v5}, Lorg/eclipse/core/resources/IResource;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v5

    invoke-interface {p0}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v3, 0x1

    aput-object v4, v1, v3

    move v3, v5

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getRootsForOutputLocation(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/resources/IResource;)[Lorg/eclipse/jdt/core/IPackageFragmentRoot;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-interface {p2}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaProject;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaProject;->getRawClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v1

    array-length v3, v1

    move v4, v2

    :goto_0
    if-lt v4, v3, :cond_0

    goto :goto_4

    :cond_0
    aget-object v5, v1, v4

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IClasspathEntry;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v6

    if-nez v6, :cond_4

    invoke-interface {p1, v5}, Lorg/eclipse/jdt/core/IJavaProject;->findPackageFragmentRoots(Lorg/eclipse/jdt/core/IClasspathEntry;)[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v5

    array-length v6, v5

    move v7, v2

    :goto_1
    if-lt v7, v6, :cond_1

    goto :goto_3

    :cond_1
    aget-object v8, v5, v7

    invoke-interface {v8}, Lorg/eclipse/jdt/core/IJavaElement;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-interface {v9}, Lorg/eclipse/core/resources/IResource;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v9

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    return-object p1

    :cond_6
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaProject;->getRawClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    array-length v1, v0

    :goto_5
    if-lt v2, v1, :cond_7

    const/4 p1, 0x0

    return-object p1

    :cond_7
    aget-object v3, v0, v2

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IClasspathEntry;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p1, v3}, Lorg/eclipse/jdt/core/IJavaProject;->findPackageFragmentRoots(Lorg/eclipse/jdt/core/IClasspathEntry;)[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p1

    return-object p1

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method private getSearchScope()Lorg/eclipse/jdt/core/search/IJavaSearchScope;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->searchScope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->checkAccessRestrictions:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->excludeTestCode:Z

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->createJavaSearchScope(Z[Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->searchScope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->excludeTestCode:Z

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/NameLookup;->packageFragmentRoots:[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->createJavaSearchScope(Z[Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->searchScope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->searchScope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    return-object v0
.end method

.method private static synthetic lambda$0(Lorg/eclipse/jdt/core/IClasspathEntry;)Z
    .locals 0

    invoke-interface {p0}, Lorg/eclipse/jdt/core/IClasspathEntry;->isTest()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$1([Lorg/eclipse/jdt/core/IPackageFragmentRoot;)Z
    .locals 2

    const/4 v0, 0x0

    aget-object v1, p1, v0

    instance-of v1, v1, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->getModuleDescription([Lorg/eclipse/jdt/core/IPackageFragmentRoot;)Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private synthetic lambda$2([Lorg/eclipse/jdt/core/IPackageFragmentRoot;)Z
    .locals 2

    const/4 v0, 0x0

    aget-object v1, p1, v0

    instance-of v1, v1, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->getModuleDescription([Lorg/eclipse/jdt/core/IPackageFragmentRoot;)Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method


# virtual methods
.method public applyModuleUpdates(Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->moduleUpdater:Lorg/eclipse/jdt/internal/core/ModuleUpdater;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/ModuleUpdater;->applyModuleUpdates(Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;)V

    :cond_0
    return-void
.end method

.method public cleanup()V
    .locals 0

    return-void
.end method

.method public find(Ljava/lang/String;Ljava/lang/String;[Lorg/eclipse/jdt/core/IPackageFragmentRoot;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 9

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    move-object v2, p2

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->owner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1, v2}, Lorg/eclipse/jdt/core/WorkingCopyOwner;->findSource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    array-length v0, p3

    if-lez v0, :cond_1

    aget-object p3, p3, v7

    goto :goto_0

    :cond_1
    move-object p3, v8

    :goto_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    const/16 v1, 0x2e

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/eclipse/jdt/internal/core/util/Util;->defaultJavaExtension()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, v1, p1, p3}, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;-><init>([C[[CLjava/lang/String;Lorg/eclipse/jdt/core/IJavaElement;)V

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    invoke-direct {p1, v0, v8}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    return-object p1

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    const/16 v4, 0x1e

    iget-boolean v5, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->checkAccessRestrictions:Z

    const/4 v3, 0x0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/NameLookup;->findType(Ljava/lang/String;Ljava/lang/String;ZIZ[Lorg/eclipse/jdt/core/IPackageFragmentRoot;)Lorg/eclipse/jdt/internal/core/NameLookup$Answer;

    move-result-object p2

    if-eqz p2, :cond_9

    iget-object p3, p2, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;->type:Lorg/eclipse/jdt/core/IType;

    instance-of v0, p3, Lorg/eclipse/jdt/internal/core/BinaryType;

    if-eqz v0, :cond_4

    :try_start_0
    iget-object p1, p2, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;->module:Lorg/eclipse/jdt/core/IModuleDescription;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, v8

    :goto_1
    new-instance p3, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    iget-object v0, p2, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;->type:Lorg/eclipse/jdt/core/IType;

    check-cast v0, Lorg/eclipse/jdt/internal/core/BinaryType;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;->restriction:Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    invoke-direct {p3, v0, p2, p1}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;-><init>(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;[C)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_1

    return-object p3

    :cond_4
    :try_start_1
    check-cast p3, Lorg/eclipse/jdt/internal/core/SourceType;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;

    move-object v0, p3

    :goto_2
    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/ISourceType;->getEnclosingType()Lorg/eclipse/jdt/internal/compiler/env/ISourceType;

    move-result-object v1

    if-nez v1, :cond_8

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->getHandle()Lorg/eclipse/jdt/core/IType;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IMember;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/ICompilationUnit;->getTypes()[Lorg/eclipse/jdt/core/IType;

    move-result-object v1

    array-length v2, v1

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/env/ISourceType;

    aput-object p3, v2, v7

    array-length p3, v1

    const/4 v3, 0x1

    :goto_3
    if-lt v7, p3, :cond_6

    iget-object p3, p2, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;->module:Lorg/eclipse/jdt/core/IModuleDescription;

    if-eqz p3, :cond_5

    invoke-interface {p3}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p3

    goto :goto_4

    :catch_0
    move-exception p3

    goto :goto_5

    :cond_5
    move-object p3, v8

    :goto_4
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    iget-object v1, p2, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;->restriction:Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    iget-object v3, p2, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;->entry:Lorg/eclipse/jdt/core/IClasspathEntry;

    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->getExternalAnnotationPath(Lorg/eclipse/jdt/core/IClasspathEntry;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3, p3}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;-><init>([Lorg/eclipse/jdt/internal/compiler/env/ISourceType;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;Ljava/lang/String;[C)V

    return-object v0

    :cond_6
    aget-object v4, v1, v7

    check-cast v4, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/env/ISourceType;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    if-ge v3, p3, :cond_7

    add-int/lit8 v5, v3, 0x1

    aput-object v4, v2, v3

    move v3, v5

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_8
    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/ISourceType;->getEnclosingType()Lorg/eclipse/jdt/internal/compiler/env/ISourceType;

    move-result-object v0
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_5
    invoke-virtual {p3}, Lorg/eclipse/jdt/core/JavaModelException;->isDoesNotExist()Z

    move-result p3

    if-eqz p3, :cond_9

    sget-object p3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->PACKAGE_INFO_NAME:[C

    invoke-static {p3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    iget-object p3, p2, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;->type:Lorg/eclipse/jdt/core/IType;

    invoke-interface {p3}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p3

    check-cast p3, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;->restriction:Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    invoke-direct {p1, p3, p2}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    return-object p1

    :catch_1
    :cond_9
    return-object v8
.end method

.method public findConstructorDeclarations([CZLorg/eclipse/jdt/internal/codeassist/ISearchRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    :try_start_0
    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->unitToSkip:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    instance-of v5, v3, Lorg/eclipse/jdt/core/IJavaElement;

    if-eqz v5, :cond_0

    check-cast v3, Lorg/eclipse/jdt/core/IJavaElement;

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    const/16 v5, 0x2e

    invoke-static {v5, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v5

    const/4 v6, 0x1

    if-gez v5, :cond_2

    if-eqz p2, :cond_1

    :goto_1
    move-object v9, v1

    move-object v8, v4

    goto :goto_2

    :cond_1
    invoke-static/range {p1 .. p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toLowerCase([C)[C

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    invoke-static {v1, v4, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v4

    if-eqz p2, :cond_3

    add-int/2addr v5, v6

    array-length v7, v1

    invoke-static {v1, v5, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v1

    goto :goto_1

    :cond_3
    add-int/2addr v5, v6

    array-length v7, v1

    invoke-static {v1, v5, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toLowerCase([C)[C

    move-result-object v1

    goto :goto_1

    :goto_2
    new-instance v14, Lorg/eclipse/jdt/internal/core/SearchableEnvironment$5;

    invoke-direct {v14, p0}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment$5;-><init>(Lorg/eclipse/jdt/internal/core/SearchableEnvironment;)V

    new-instance v12, Lorg/eclipse/jdt/internal/core/SearchableEnvironment$6;

    move-object/from16 v1, p3

    invoke-direct {v12, p0, v3, v1}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment$6;-><init>(Lorg/eclipse/jdt/internal/core/SearchableEnvironment;Ljava/lang/String;Lorg/eclipse/jdt/internal/codeassist/ISearchRequestor;)V

    if-eqz p2, :cond_4

    const/16 v6, 0x81

    :cond_4
    move v10, v6

    if-eqz v2, :cond_5

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getIndexManager()Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    move-result-object v1

    new-instance v3, Lorg/eclipse/jdt/internal/core/SearchableEnvironment$7;

    invoke-direct {v3, p0}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment$7;-><init>(Lorg/eclipse/jdt/internal/core/SearchableEnvironment;)V

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4, v2}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->performConcurrentJob(Lorg/eclipse/jdt/internal/core/search/processing/IJob;ILorg/eclipse/core/runtime/IProgressMonitor;)Z

    new-instance v7, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->workingCopies:[Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-direct {v7, v1}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;-><init>([Lorg/eclipse/jdt/core/ICompilationUnit;)V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->getSearchScope()Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    move-result-object v11

    const/4 v13, 0x1

    invoke-virtual/range {v7 .. v14}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->searchAllConstructorDeclarations([C[CILorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessConstructorRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_5
    :try_start_1
    new-instance v7, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->workingCopies:[Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-direct {v7, v1}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;-><init>([Lorg/eclipse/jdt/core/ICompilationUnit;)V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->getSearchScope()Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    move-result-object v11

    const/4 v13, 0x2

    invoke-virtual/range {v7 .. v14}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->searchAllConstructorDeclarations([C[CILorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessConstructorRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_1
    .catch Lorg/eclipse/core/runtime/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_3
    return-void
.end method

.method public findExactTypes([CZILorg/eclipse/jdt/internal/codeassist/ISearchRequestor;)V
    .locals 11

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->unitToSkip:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lorg/eclipse/jdt/core/IJavaElement;

    if-nez v1, :cond_0

    .line 3
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([C)V

    .line 4
    invoke-static {p3}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->convertSearchFilterToModelFilter(I)I

    move-result v0

    .line 5
    invoke-direct {p0, p2, p4, v0}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->findExactTypes(Ljava/lang/String;Lorg/eclipse/jdt/internal/codeassist/ISearchRequestor;I)V

    return-void

    .line 6
    :cond_0
    check-cast v0, Lorg/eclipse/jdt/core/IJavaElement;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 7
    :goto_0
    new-instance v10, Lorg/eclipse/jdt/internal/core/SearchableEnvironment$1;

    invoke-direct {v10, p0}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment$1;-><init>(Lorg/eclipse/jdt/internal/core/SearchableEnvironment;)V

    .line 8
    new-instance v8, Lorg/eclipse/jdt/internal/core/SearchableEnvironment$2;

    invoke-direct {v8, p0, v0, p2, p4}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment$2;-><init>(Lorg/eclipse/jdt/internal/core/SearchableEnvironment;Ljava/lang/String;ZLorg/eclipse/jdt/internal/codeassist/ISearchRequestor;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    :try_start_1
    new-instance v1, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->workingCopies:[Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-direct {v1, p2}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;-><init>([Lorg/eclipse/jdt/core/ICompilationUnit;)V

    .line 10
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->getSearchScope()Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    move-result-object v7

    const/4 v9, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p1

    move v6, p3

    .line 11
    invoke-virtual/range {v1 .. v10}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->searchAllTypeNames([CI[CIILorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_1
    .catch Lorg/eclipse/core/runtime/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 12
    :catch_0
    :try_start_2
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([C)V

    .line 13
    invoke-static {p3}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->convertSearchFilterToModelFilter(I)I

    move-result v0

    .line 14
    invoke-direct {p0, p2, p4, v0}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->findExactTypes(Ljava/lang/String;Lorg/eclipse/jdt/internal/codeassist/ISearchRequestor;I)V
    :try_end_2
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 15
    :catch_1
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([C)V

    .line 16
    invoke-static {p3}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->convertSearchFilterToModelFilter(I)I

    move-result p1

    .line 17
    invoke-direct {p0, p2, p4, p1}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->findExactTypes(Ljava/lang/String;Lorg/eclipse/jdt/internal/codeassist/ISearchRequestor;I)V

    :goto_1
    return-void
.end method

.method public findModules([CLorg/eclipse/jdt/internal/codeassist/ISearchRequestor;Lorg/eclipse/jdt/core/IJavaProject;)V
    .locals 1

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    new-instance v0, Lorg/eclipse/jdt/internal/core/SearchableEnvironmentRequestor;

    invoke-direct {v0, p2}, Lorg/eclipse/jdt/internal/core/SearchableEnvironmentRequestor;-><init>(Lorg/eclipse/jdt/internal/codeassist/ISearchRequestor;)V

    const/4 p2, 0x1

    invoke-virtual {p3, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/NameLookup;->seekModule([CZLorg/eclipse/jdt/internal/core/IJavaElementRequestor;)V

    return-void
.end method

.method public findPackages([CLorg/eclipse/jdt/internal/codeassist/ISearchRequestor;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    .line 2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    .line 3
    new-instance p1, Lorg/eclipse/jdt/internal/core/SearchableEnvironmentRequestor;

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/internal/core/SearchableEnvironmentRequestor;-><init>(Lorg/eclipse/jdt/internal/codeassist/ISearchRequestor;)V

    const/4 p2, 0x1

    .line 4
    invoke-virtual {v0, v1, p2, p1}, Lorg/eclipse/jdt/internal/core/NameLookup;->seekPackageFragments(Ljava/lang/String;ZLorg/eclipse/jdt/internal/core/IJavaElementRequestor;)V

    return-void
.end method

.method public findPackages([CLorg/eclipse/jdt/internal/codeassist/ISearchRequestor;[Lorg/eclipse/jdt/core/IPackageFragmentRoot;Z)V
    .locals 11

    .line 5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    .line 6
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    .line 7
    new-instance v2, Lorg/eclipse/jdt/internal/core/SearchableEnvironmentRequestor;

    invoke-direct {v2, p2}, Lorg/eclipse/jdt/internal/core/SearchableEnvironmentRequestor;-><init>(Lorg/eclipse/jdt/internal/codeassist/ISearchRequestor;)V

    const/4 v3, 0x1

    .line 8
    invoke-virtual {v0, v1, v3, v2, p3}, Lorg/eclipse/jdt/internal/core/NameLookup;->seekPackageFragments(Ljava/lang/String;ZLorg/eclipse/jdt/internal/core/IJavaElementRequestor;[Lorg/eclipse/jdt/core/IPackageFragmentRoot;)V

    if-eqz p4, :cond_4

    .line 9
    iget-object p4, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->knownModuleLocations:Ljava/util/Map;

    if-eqz p4, :cond_4

    .line 10
    :try_start_0
    sget-object p4, Lorg/eclipse/jdt/core/compiler/CharOperation;->ALL_PREFIX:[C

    invoke-static {p4, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p4

    .line 11
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 12
    array-length v1, p3

    const/4 v6, 0x0

    move v2, v6

    :goto_0
    if-lt v2, v1, :cond_2

    .line 13
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IModuleDescription;

    .line 14
    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/core/AbstractModule;

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/AbstractModule;->getRequiredModules()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;

    move-result-object v7

    .line 15
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    .line 16
    array-length v9, v7

    move v10, v6

    :goto_2
    if-lt v10, v9, :cond_1

    goto :goto_1

    :cond_1
    aget-object v4, v7, v10

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move-object v3, p2

    move-object v5, v8

    .line 17
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->findPackagesFromRequires([CZLorg/eclipse/jdt/internal/codeassist/ISearchRequestor;Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;[C)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 18
    :cond_2
    aget-object v3, p3, v2

    .line 19
    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaProject;->getModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v3

    .line 20
    instance-of v4, v3, Lorg/eclipse/jdt/internal/core/AbstractModule;

    if-eqz v4, :cond_3

    .line 21
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_4
    :goto_3
    return-void
.end method

.method public findType([C[[C[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 10
    :cond_0
    invoke-static {p3}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->get([C)Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;

    move-result-object v1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->Named:Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;

    if-ne v1, v2, :cond_1

    .line 11
    invoke-direct {p0, p3}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->findModuleContext([C)[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p3

    goto :goto_0

    :cond_1
    move-object p3, v0

    .line 12
    :goto_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    if-eqz p2, :cond_3

    .line 13
    array-length p1, p2

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toString([[C)Ljava/lang/String;

    move-result-object v0

    .line 14
    :cond_3
    :goto_1
    invoke-virtual {p0, v1, v0, p3}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->find(Ljava/lang/String;Ljava/lang/String;[Lorg/eclipse/jdt/core/IPackageFragmentRoot;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p1

    return-object p1
.end method

.method public findType([[C[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-static {p2}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->get([C)Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;

    move-result-object v1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->Named:Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;

    if-ne v1, v2, :cond_1

    .line 2
    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->findModuleContext([C)[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v0

    .line 3
    :goto_0
    array-length v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v1, v2, :cond_3

    if-nez v1, :cond_2

    return-object v0

    .line 4
    :cond_2
    new-instance v1, Ljava/lang/String;

    aget-object p1, p1, v3

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v1, v0, p2}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->find(Ljava/lang/String;Ljava/lang/String;[Lorg/eclipse/jdt/core/IPackageFragmentRoot;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p1

    return-object p1

    :cond_3
    sub-int/2addr v1, v2

    .line 5
    new-array v0, v1, [[C

    .line 6
    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    new-instance v2, Ljava/lang/String;

    aget-object p1, p1, v1

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([C)V

    .line 8
    invoke-static {v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toString([[C)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {p0, v2, p1, p2}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->find(Ljava/lang/String;Ljava/lang/String;[Lorg/eclipse/jdt/core/IPackageFragmentRoot;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p1

    return-object p1
.end method

.method public findTypeInModules([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 3

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->nameForLookup()[C

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->findType([[C[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->get([C)Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->Named:Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;

    if-ne v0, v1, :cond_3

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getAllRequiredModules()[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    goto :goto_1

    :cond_1
    aget-object v2, p2, v1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->nameForLookup()[C

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->findType([[C[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findTypes([CZZILorg/eclipse/jdt/internal/codeassist/ISearchRequestor;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->findTypes([CZZILorg/eclipse/jdt/internal/codeassist/ISearchRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public findTypes([CZZILorg/eclipse/jdt/internal/codeassist/ISearchRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    .line 2
    :try_start_0
    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->unitToSkip:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 3
    instance-of v5, v3, Lorg/eclipse/jdt/core/IJavaElement;

    if-nez v5, :cond_0

    .line 4
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    .line 5
    invoke-static/range {p4 .. p4}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->convertSearchFilterToModelFilter(I)I

    move-result v4

    .line 6
    invoke-direct {v0, v3, v2, v4}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->findTypes(Ljava/lang/String;Lorg/eclipse/jdt/internal/codeassist/ISearchRequestor;I)V

    return-void

    .line 7
    :cond_0
    check-cast v3, Lorg/eclipse/jdt/core/IJavaElement;

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    const/16 v5, 0x2e

    .line 8
    invoke-static {v5, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v5

    const/4 v6, 0x1

    if-gez v5, :cond_3

    if-eqz p3, :cond_2

    move-object v10, v1

    move-object v8, v4

    goto :goto_2

    .line 9
    :cond_2
    invoke-static/range {p1 .. p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toLowerCase([C)[C

    move-result-object v5

    :goto_1
    move-object v8, v4

    move-object v10, v5

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 10
    invoke-static {v1, v4, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v4

    if-eqz p3, :cond_4

    add-int/2addr v5, v6

    .line 11
    array-length v7, v1

    invoke-static {v1, v5, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v5

    goto :goto_1

    :cond_4
    add-int/2addr v5, v6

    .line 12
    array-length v7, v1

    invoke-static {v1, v5, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v5

    .line 13
    invoke-static {v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toLowerCase([C)[C

    move-result-object v5

    goto :goto_1

    .line 14
    :goto_2
    new-instance v4, Lorg/eclipse/jdt/internal/core/SearchableEnvironment$3;

    invoke-direct {v4, v0}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment$3;-><init>(Lorg/eclipse/jdt/internal/core/SearchableEnvironment;)V

    .line 15
    new-instance v14, Lorg/eclipse/jdt/internal/core/SearchableEnvironment$4;

    move/from16 v5, p2

    invoke-direct {v14, v0, v3, v5, v2}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment$4;-><init>(Lorg/eclipse/jdt/internal/core/SearchableEnvironment;Ljava/lang/String;ZLorg/eclipse/jdt/internal/codeassist/ISearchRequestor;)V

    if-eqz p3, :cond_5

    const/16 v6, 0x81

    :cond_5
    move v11, v6

    if-eqz p6, :cond_9

    .line 16
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getIndexManager()Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    move-result-object v3

    .line 17
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->awaitingJobsCount()I

    move-result v5

    if-nez v5, :cond_6

    .line 18
    new-instance v7, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->workingCopies:[Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-direct {v7, v3}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;-><init>([Lorg/eclipse/jdt/core/ICompilationUnit;)V

    .line 19
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->getSearchScope()Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    move-result-object v13

    const/4 v15, 0x1

    const/4 v9, 0x0

    move/from16 v12, p4

    move-object/from16 v16, v4

    .line 20
    invoke-virtual/range {v7 .. v16}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->searchAllTypeNames([CI[CIILorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_3

    :cond_6
    const-wide/16 v5, 0x64

    .line 21
    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_2

    .line 22
    :catch_0
    :try_start_2
    invoke-interface/range {p6 .. p6}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result v5

    if-nez v5, :cond_8

    .line 23
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->awaitingJobsCount()I

    move-result v3

    if-nez v3, :cond_7

    .line 24
    new-instance v7, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->workingCopies:[Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-direct {v7, v3}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;-><init>([Lorg/eclipse/jdt/core/ICompilationUnit;)V

    .line 25
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->getSearchScope()Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    move-result-object v13

    const/4 v15, 0x1

    const/4 v9, 0x0

    move/from16 v12, p4

    move-object/from16 v16, v4

    .line 26
    invoke-virtual/range {v7 .. v16}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->searchAllTypeNames([CI[CIILorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V

    goto :goto_3

    .line 27
    :cond_7
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    .line 28
    invoke-static/range {p4 .. p4}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->convertSearchFilterToModelFilter(I)I

    move-result v4

    .line 29
    invoke-direct {v0, v3, v2, v4}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->findTypes(Ljava/lang/String;Lorg/eclipse/jdt/internal/codeassist/ISearchRequestor;I)V

    goto :goto_3

    .line 30
    :cond_8
    new-instance v3, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {v3}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw v3
    :try_end_2
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_2 .. :try_end_2} :catch_2

    .line 31
    :cond_9
    :try_start_3
    new-instance v7, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->workingCopies:[Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-direct {v7, v3}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;-><init>([Lorg/eclipse/jdt/core/ICompilationUnit;)V

    .line 32
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->getSearchScope()Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    move-result-object v13

    const/4 v15, 0x2

    const/4 v9, 0x0

    move/from16 v12, p4

    move-object/from16 v16, v4

    .line 33
    invoke-virtual/range {v7 .. v16}, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->searchAllTypeNames([CI[CIILorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_3
    .catch Lorg/eclipse/core/runtime/OperationCanceledException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 34
    :catch_1
    :try_start_4
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    .line 35
    invoke-static/range {p4 .. p4}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->convertSearchFilterToModelFilter(I)I

    move-result v4

    .line 36
    invoke-direct {v0, v3, v2, v4}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->findTypes(Ljava/lang/String;Lorg/eclipse/jdt/internal/codeassist/ISearchRequestor;I)V
    :try_end_4
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 37
    :catch_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    .line 38
    invoke-static/range {p4 .. p4}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->convertSearchFilterToModelFilter(I)I

    move-result v1

    .line 39
    invoke-direct {v0, v3, v2, v1}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->findTypes(Ljava/lang/String;Lorg/eclipse/jdt/internal/codeassist/ISearchRequestor;I)V

    :goto_3
    return-void
.end method

.method public getAllAutomaticModules()[[C
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    return-object v0
.end method

.method public getModule([C)Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/NameLookup;->findModule([C)Lorg/eclipse/jdt/internal/core/NameLookup$Answer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;->module:Lorg/eclipse/jdt/core/IModuleDescription;

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/NameLookup;->getModuleDescriptionInfo(Lorg/eclipse/jdt/core/IModuleDescription;)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getModulesDeclaringPackage([[C[C[C)[[C
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    new-array p1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([C)V

    aput-object v2, p1, v0

    goto :goto_1

    :cond_0
    array-length v2, p1

    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move v4, v0

    :goto_0
    if-lt v4, v2, :cond_e

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([C)V

    aput-object p1, v3, v2

    move-object p1, v3

    :goto_1
    invoke-static {p3}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->get([C)Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;

    move-result-object p2

    invoke-static {}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->$SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IModuleAwareNameEnvironment$LookupStrategy()[I

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x0

    if-eq v2, v1, :cond_c

    const/4 p3, 0x2

    if-eq v2, p3, :cond_6

    const/4 p3, 0x3

    if-eq v2, p3, :cond_2

    const/4 p3, 0x4

    if-ne v2, p3, :cond_1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected LookupStrategy "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_2
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->knownModuleLocations:Ljava/util/Map;

    if-nez p3, :cond_6

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->owner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    if-eqz p2, :cond_3

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/core/WorkingCopyOwner;->isPackage([Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    :cond_3
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/core/NameLookup;->isPackage([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->UNNAMED:[C

    filled-new-array {p1}, [[C

    move-result-object p1

    return-object p1

    :cond_5
    return-object v3

    :cond_6
    sget-object p3, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/NameLookup;->packageFragmentRoots:[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    array-length v4, v2

    move v5, v0

    move v6, v5

    :goto_3
    if-lt v5, v4, :cond_8

    sget-object p1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    if-ne p3, p1, :cond_7

    goto :goto_4

    :cond_7
    move-object v3, p3

    :goto_4
    return-object v3

    :cond_8
    aget-object v7, v2, v5

    new-array v8, v1, [Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    aput-object v7, v8, v0

    new-instance v7, Lorg/eclipse/jdt/internal/core/B;

    invoke-direct {v7, p0}, Lorg/eclipse/jdt/internal/core/B;-><init>(Lorg/eclipse/jdt/internal/core/SearchableEnvironment;)V

    invoke-virtual {p2, v8, v7}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->matches(Ljava/lang/Object;Ljava/util/function/Predicate;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    invoke-virtual {v7, p1, v8}, Lorg/eclipse/jdt/internal/core/NameLookup;->isPackage([Ljava/lang/String;[Lorg/eclipse/jdt/core/IPackageFragmentRoot;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-direct {p0, v8}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->getModuleDescription([Lorg/eclipse/jdt/core/IPackageFragmentRoot;)Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-interface {v7}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    goto :goto_5

    :cond_9
    if-eqz v6, :cond_a

    goto :goto_6

    :cond_a
    sget-object v7, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->UNNAMED:[C

    move v6, v1

    :goto_5
    invoke-static {p3, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->arrayConcat([[C[C)[[C

    move-result-object p3

    :cond_b
    :goto_6
    add-int/2addr v5, v1

    goto :goto_3

    :cond_c
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->knownModuleLocations:Ljava/util/Map;

    if-eqz p2, :cond_d

    invoke-direct {p0, p3}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->findModuleContext([C)[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p2

    if-eqz p2, :cond_d

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/NameLookup;->isPackage([Ljava/lang/String;[Lorg/eclipse/jdt/core/IPackageFragmentRoot;)Z

    move-result p1

    if-eqz p1, :cond_d

    filled-new-array {p3}, [[C

    move-result-object p1

    return-object p1

    :cond_d
    return-object v3

    :cond_e
    new-instance v5, Ljava/lang/String;

    aget-object v6, p1, v4

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    aput-object v5, v3, v4

    add-int/2addr v4, v1

    goto/16 :goto_0
.end method

.method public hasCompilationUnit([[C[CZ)Z
    .locals 6

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-static {p2}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->get([C)Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;

    move-result-object v1

    invoke-static {}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->$SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IModuleAwareNameEnvironment$LookupStrategy()[I

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_5

    const/4 p2, 0x2

    if-eq v2, p2, :cond_2

    const/4 p2, 0x3

    if-eq v2, p2, :cond_1

    const/4 p2, 0x4

    if-ne v2, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unexpected LookupStrategy "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->knownModuleLocations:Ljava/util/Map;

    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v2}, Lorg/eclipse/jdt/internal/core/NameLookup;->hasCompilationUnit([[C[Lorg/eclipse/jdt/core/IPackageFragmentRoot;)Z

    move-result p2

    if-eqz p2, :cond_2

    return v0

    :cond_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    iget-object v2, p2, Lorg/eclipse/jdt/internal/core/NameLookup;->packageFragmentRoots:[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    array-length v3, v2

    move p2, p3

    :goto_1
    if-lt p2, v3, :cond_3

    return p3

    :cond_3
    aget-object v4, v2, p2

    new-array v5, v0, [Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    aput-object v4, v5, p3

    new-instance v4, Lorg/eclipse/jdt/internal/core/A;

    invoke-direct {v4, p0}, Lorg/eclipse/jdt/internal/core/A;-><init>(Lorg/eclipse/jdt/internal/core/SearchableEnvironment;)V

    invoke-virtual {v1, v5, v4}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->matches(Ljava/lang/Object;Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    invoke-virtual {v4, p1, v5}, Lorg/eclipse/jdt/internal/core/NameLookup;->hasCompilationUnit([[C[Lorg/eclipse/jdt/core/IPackageFragmentRoot;)Z

    move-result v4

    if-eqz v4, :cond_4

    return v0

    :cond_4
    add-int/2addr p2, v0

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->knownModuleLocations:Ljava/util/Map;

    if-eqz v1, :cond_6

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->findModuleContext([C)[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/jdt/internal/core/NameLookup;->hasCompilationUnit([[C[Lorg/eclipse/jdt/core/IPackageFragmentRoot;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v0

    :cond_6
    return p3
.end method

.method public toStringChar([C)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toStringCharChar([[C)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->toStringChar([C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
