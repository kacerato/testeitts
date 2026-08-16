.class public interface abstract Lorg/eclipse/jdt/internal/compiler/impl/ITypeRequestor;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract accept(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
.end method

.method public abstract accept(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
.end method

.method public accept(Lorg/eclipse/jdt/internal/compiler/env/IModule;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/env/ISourceModule;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/ISourceModule;

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/ISourceModule;->getCompilationUnit()Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 3
    invoke-interface {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/impl/ITypeRequestor;->accept(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryModuleBinding;->create(Lorg/eclipse/jdt/internal/compiler/env/IModule;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public abstract accept([Lorg/eclipse/jdt/internal/compiler/env/ISourceType;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
.end method
