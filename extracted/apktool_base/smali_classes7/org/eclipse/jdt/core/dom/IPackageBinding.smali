.class public interface abstract Lorg/eclipse/jdt/core/dom/IPackageBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/dom/IBinding;


# virtual methods
.method public getModule()Lorg/eclipse/jdt/core/dom/IModuleBinding;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNameComponents()[Ljava/lang/String;
.end method

.method public abstract isUnnamed()Z
.end method
