.class public abstract Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected isOnModulePath:Z

.field protected limitModuleNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

.field protected patchModuleName:Ljava/lang/String;

.field protected updates:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->limitModuleNames:Ljava/util/Set;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->patchModuleName:Ljava/lang/String;

    return-void
.end method

.method public static forBinaryFolder(Lorg/eclipse/core/resources/IContainer;ZLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;Z)Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;
    .locals 7

    new-instance v6, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;-><init>(Lorg/eclipse/core/resources/IContainer;ZLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;Z)V

    return-object v6
.end method

.method public static forJrtSystem(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    if-eqz p3, :cond_1

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrtWithReleaseOption;-><init>(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;

    invoke-direct {v0, p0, p1, p2}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJrt;-><init>(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;)V

    :goto_1
    return-object v0
.end method

.method public static forLibrary(Ljava/lang/String;JLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;ZLjava/lang/String;)Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;
    .locals 9

    .line 1
    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/util/Util;->archiveFormat(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    new-instance p5, Lorg/eclipse/jdt/internal/core/builder/ClasspathJMod;

    move-object v2, p5

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJMod;-><init>(Ljava/lang/String;JLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;)V

    goto :goto_1

    :cond_0
    if-eqz p6, :cond_2

    .line 3
    invoke-static {p6}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x350000

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiReleaseJar;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiReleaseJar;-><init>(Ljava/lang/String;JLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;ZLjava/lang/String;)V

    move-object p5, v0

    goto :goto_1

    .line 5
    :cond_2
    :goto_0
    new-instance p6, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;

    move-object v1, p6

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;-><init>(Ljava/lang/String;JLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;Z)V

    move-object p5, p6

    :goto_1
    return-object p5
.end method

.method public static forLibrary(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;ZLjava/lang/String;)Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;
    .locals 7

    const-wide/16 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    .line 6
    invoke-static/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->forLibrary(Ljava/lang/String;JLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;ZLjava/lang/String;)Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;

    move-result-object p0

    return-object p0
.end method

.method public static forLibrary(Ljava/util/zip/ZipFile;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;ZLjava/lang/String;)Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;
    .locals 7

    .line 10
    invoke-static {p4}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x350000

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 11
    new-instance p4, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;

    invoke-direct {p4, p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;-><init>(Ljava/util/zip/ZipFile;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;Z)V

    goto :goto_0

    .line 12
    :cond_0
    new-instance v6, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiReleaseJar;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiReleaseJar;-><init>(Ljava/util/zip/ZipFile;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;ZLjava/lang/String;)V

    move-object p4, v6

    :goto_0
    return-object p4
.end method

.method public static forLibrary(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;ZLjava/lang/String;)Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;
    .locals 7

    .line 7
    invoke-static {p4}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x350000

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 8
    new-instance p4, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;

    invoke-direct {p4, p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;-><init>(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;Z)V

    goto :goto_0

    .line 9
    :cond_0
    new-instance v6, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiReleaseJar;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiReleaseJar;-><init>(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;ZLjava/lang/String;)V

    move-object p4, v6

    :goto_0
    return-object p4
.end method

.method public static forSourceFolder(Lorg/eclipse/core/resources/IContainer;Lorg/eclipse/core/resources/IContainer;[[C[[CZ)Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;
    .locals 7

    new-instance v6, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;-><init>(Lorg/eclipse/core/resources/IContainer;Lorg/eclipse/core/resources/IContainer;[[C[[CZ)V

    return-object v6
.end method


# virtual methods
.method public areAllModuleOptionsEqual(Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;)Z
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->patchModuleName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->patchModuleName:Ljava/lang/String;

    if-nez v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->patchModuleName:Ljava/lang/String;

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->limitModuleNames:Ljava/util/Set;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->limitModuleNames:Ljava/util/Set;

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->limitModuleNames:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-eq v0, v2, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->limitModuleNames:Ljava/util/Set;

    iget-object v2, p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->limitModuleNames:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    :cond_5
    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->limitModuleNames:Ljava/util/Set;

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->updates:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;

    if-eqz v0, :cond_f

    iget-object v2, p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->updates:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;

    if-nez v2, :cond_7

    return v1

    :cond_7
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;->PACKAGE:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;->getList(Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;Z)Ljava/util/List;

    move-result-object v0

    iget-object v3, p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->updates:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;

    invoke-virtual {v3, v2, v1}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;->getList(Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;Z)Ljava/util/List;

    move-result-object v2

    if-eqz v0, :cond_a

    if-nez v2, :cond_8

    return v1

    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_9

    return v1

    :cond_9
    invoke-interface {v0, v2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_b

    return v1

    :cond_a
    if-eqz v2, :cond_b

    return v1

    :cond_b
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->updates:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;->MODULE:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;->getList(Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;Z)Ljava/util/List;

    move-result-object v0

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->updates:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;

    invoke-virtual {p1, v2, v1}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;->getList(Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;Z)Ljava/util/List;

    move-result-object p1

    if-eqz v0, :cond_e

    if-nez p1, :cond_c

    return v1

    :cond_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_d

    return v1

    :cond_d
    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_10

    return v1

    :cond_e
    if-eqz p1, :cond_10

    return v1

    :cond_f
    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->updates:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdatesByKind;

    if-eqz p1, :cond_10

    return v1

    :cond_10
    const/4 p1, 0x1

    return p1
.end method

.method public cleanup()V
    .locals 0

    return-void
.end method

.method public abstract debugPathString()Ljava/lang/String;
.end method

.method public abstract findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
.end method

.method public abstract findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/function/Predicate;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;"
        }
    .end annotation
.end method

.method public findClass([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/function/Predicate;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;"
        }
    .end annotation

    .line 1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 2
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/function/Predicate;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p1

    return-object p1
.end method

.method public getModule()Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    return-object v0
.end method

.method public getModulesDeclaringPackage(Ljava/lang/String;Ljava/lang/String;)[[C
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->isPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->singletonModuleNameIf(Z)[[C

    move-result-object p1

    return-object p1
.end method

.method public abstract getProjectRelativePath()Lorg/eclipse/core/runtime/IPath;
.end method

.method public abstract hasCompilationUnit(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public hasModule()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->getModule()Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOutputFolder()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isPackage(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public setModule(Lorg/eclipse/jdt/internal/compiler/env/IModule;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    return-void
.end method

.method public singletonModuleNameIf(Z)[[C
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object p1

    filled-new-array {p1}, [[C

    move-result-object p1

    return-object p1

    :cond_1
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->UNNAMED:[C

    filled-new-array {p1}, [[C

    move-result-object p1

    return-object p1
.end method
