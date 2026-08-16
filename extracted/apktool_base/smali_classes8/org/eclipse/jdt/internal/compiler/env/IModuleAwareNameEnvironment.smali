.class public interface abstract Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;
    }
.end annotation


# virtual methods
.method public applyModuleUpdates(Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;)V
    .locals 0

    return-void
.end method

.method public findType([C[[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 1

    .line 2
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->ANY:[C

    invoke-interface {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;->findType([C[[C[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p1

    return-object p1
.end method

.method public abstract findType([C[[C[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
.end method

.method public findType([[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 1

    .line 1
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->ANY:[C

    invoke-interface {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;->findType([[C[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p1

    return-object p1
.end method

.method public abstract findType([[C[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
.end method

.method public abstract getAllAutomaticModules()[[C
.end method

.method public abstract getModule([C)Lorg/eclipse/jdt/internal/compiler/env/IModule;
.end method

.method public abstract getModulesDeclaringPackage([[C[C[C)[[C
.end method

.method public getUniqueModulesDeclaringPackage([[C[C[C)[[C
    .locals 2

    invoke-interface {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;->getModulesDeclaringPackage([[C[C[C)[[C

    move-result-object p1

    if-eqz p1, :cond_1

    array-length p2, p1

    const/4 p3, 0x1

    if-le p2, p3, :cond_1

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;

    array-length p3, p1

    invoke-direct {p2, p3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;-><init>(I)V

    array-length p3, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p3, :cond_0

    iget p1, p2, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;->elementSize:I

    new-array p1, p1, [[C

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;->asArray([Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    aget-object v1, p1, v0

    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;->add([C)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p1
.end method

.method public abstract hasCompilationUnit([[C[CZ)Z
.end method

.method public isPackage([[C[C)Z
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->ANY:[C

    invoke-interface {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;->getModulesDeclaringPackage([[C[C[C)[[C

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
