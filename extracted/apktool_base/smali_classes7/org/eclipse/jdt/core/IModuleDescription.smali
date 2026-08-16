.class public interface abstract Lorg/eclipse/jdt/core/IModuleDescription;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IMember;
.implements Lorg/eclipse/jdt/core/IAnnotatable;


# virtual methods
.method public abstract getExportedPackageNames(Lorg/eclipse/jdt/core/IModuleDescription;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getOpenedPackageNames(Lorg/eclipse/jdt/core/IModuleDescription;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getProvidedServiceNames()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getRequiredModuleNames()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public abstract getUsedServiceNames()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public isAutoModule()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
