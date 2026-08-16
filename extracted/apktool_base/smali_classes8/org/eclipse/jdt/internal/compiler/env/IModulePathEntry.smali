.class public interface abstract Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public getModule()Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getModule([C)Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 2

    .line 2
    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;->getModule()Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object v1

    invoke-static {p1, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract getModulesDeclaringPackage(Ljava/lang/String;Ljava/lang/String;)[[C
.end method

.method public abstract hasCompilationUnit(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public isAutomaticModule()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public servesModule([C)Z
    .locals 0

    invoke-interface {p0, p1}, Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;->getModule([C)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
