.class public interface abstract Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IDependent;


# virtual methods
.method public abstract getContents()[C
.end method

.method public getDestinationPath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getMainTypeName()[C
.end method

.method public getModuleName()[C
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getPackageName()[[C
.end method

.method public ignoreOptionalProblems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public module(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;
    .locals 1

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;->getModuleName()[C

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getModule([C)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object p1

    return-object p1
.end method
