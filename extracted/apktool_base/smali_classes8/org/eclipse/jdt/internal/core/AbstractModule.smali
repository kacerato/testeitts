.class public interface abstract Lorg/eclipse/jdt/internal/core/AbstractModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IModuleDescription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/AbstractModule$AutoModule;
    }
.end annotation


# direct methods
.method public static synthetic a(Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/AbstractModule;->lambda$0(Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(I)[Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/AbstractModule;->lambda$1(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$0(Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;)Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;->name()[C

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$1(I)[Ljava/lang/String;
    .locals 0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public abstract getElementInfo()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public getElementType()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public getExportedPackageNames(Lorg/eclipse/jdt/core/IModuleDescription;)[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/core/AbstractModule;->getModuleInfo()Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->exports()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    move-result-object v0

    array-length v3, v0

    :goto_0
    if-lt v1, v3, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_0
    aget-object v4, v0, v1

    if-eqz p1, :cond_1

    invoke-interface {v4}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;->isQualified()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;->targets()[[C

    move-result-object v5

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-static {v5, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->containsEqual([[C[C)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    new-instance v5, Ljava/lang/String;

    invoke-interface {v4}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;->name()[C

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-array p1, v1, [Ljava/lang/String;

    return-object p1
.end method

.method public getExportedPackages()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/core/AbstractModule;->getModuleInfo()Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->exports()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    move-result-object v0

    return-object v0
.end method

.method public getModuleInfo()Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/core/AbstractModule;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IModule;

    return-object v0
.end method

.method public getOpenedPackageNames(Lorg/eclipse/jdt/core/IModuleDescription;)[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/core/AbstractModule;->getModuleInfo()Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->opens()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    move-result-object v0

    array-length v3, v0

    :goto_0
    if-lt v1, v3, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_0
    aget-object v4, v0, v1

    if-eqz p1, :cond_1

    invoke-interface {v4}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;->isQualified()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;->targets()[[C

    move-result-object v5

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-static {v5, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->containsEqual([[C[C)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    new-instance v5, Ljava/lang/String;

    invoke-interface {v4}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;->name()[C

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-array p1, v1, [Ljava/lang/String;

    return-object p1
.end method

.method public getOpenedPackages()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/core/AbstractModule;->getModuleInfo()Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->opens()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    move-result-object v0

    return-object v0
.end method

.method public getProvidedServiceNames()[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/core/AbstractModule;->getProvidedServices()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IService;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_0

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_0
    aget-object v5, v1, v4

    new-instance v6, Ljava/lang/String;

    invoke-interface {v5}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IService;->name()[C

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public getProvidedServices()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IService;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/core/AbstractModule;->getModuleInfo()Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->provides()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IService;

    move-result-object v0

    return-object v0
.end method

.method public getRequiredModuleNames()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/core/AbstractModule;->getRequiredModules()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/core/a;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/core/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/core/b;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/core/b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRequiredModules()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/core/AbstractModule;->getModuleInfo()Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->requires()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;

    move-result-object v0

    return-object v0
.end method

.method public getUsedServiceNames()[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/core/AbstractModule;->getUsedServices()[[C

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-lt v3, v4, :cond_0

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_0
    aget-object v4, v1, v3

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getUsedServices()[[C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/core/AbstractModule;->getModuleInfo()Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->uses()[[C

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    invoke-interface {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/AbstractModule;->toStringContent(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/JavaModelException;->printStackTrace()V

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toStringContent(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/core/AbstractModule;->getExportedPackages()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;

    move-result-object v0

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/core/AbstractModule;->getRequiredModules()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;

    move-result-object v1

    const-string v2, "module "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v2, 0x7b

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v3, v2

    :goto_0
    array-length v4, v0

    if-lt v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "\texports "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v1, :cond_4

    :goto_2
    array-length v0, v1

    if-lt v2, v0, :cond_2

    goto :goto_3

    :cond_2
    const-string v0, "\trequires "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v0, v1, v2

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;->isTransitive()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, " public "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    aget-object v0, v1, v2

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;->name()[C

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p2, 0x7d

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method
