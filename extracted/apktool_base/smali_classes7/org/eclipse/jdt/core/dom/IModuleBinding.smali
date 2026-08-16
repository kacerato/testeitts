.class public interface abstract Lorg/eclipse/jdt/core/dom/IModuleBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/dom/IBinding;


# virtual methods
.method public abstract getExportedPackages()[Lorg/eclipse/jdt/core/dom/IPackageBinding;
.end method

.method public abstract getExportedTo(Lorg/eclipse/jdt/core/dom/IPackageBinding;)[Ljava/lang/String;
.end method

.method public abstract getImplementations(Lorg/eclipse/jdt/core/dom/ITypeBinding;)[Lorg/eclipse/jdt/core/dom/ITypeBinding;
.end method

.method public getKind()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public abstract getOpenedPackages()[Lorg/eclipse/jdt/core/dom/IPackageBinding;
.end method

.method public abstract getOpenedTo(Lorg/eclipse/jdt/core/dom/IPackageBinding;)[Ljava/lang/String;
.end method

.method public abstract getRequiredModules()[Lorg/eclipse/jdt/core/dom/IModuleBinding;
.end method

.method public abstract getServices()[Lorg/eclipse/jdt/core/dom/ITypeBinding;
.end method

.method public abstract getUses()[Lorg/eclipse/jdt/core/dom/ITypeBinding;
.end method

.method public abstract isOpen()Z
.end method
